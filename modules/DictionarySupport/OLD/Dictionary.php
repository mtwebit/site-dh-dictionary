<?php namespace ProcessWire;
// DEBUG disable file compiler for this file
// FileCompiler=0

/**
 * Dictionary page class
 *
 * Provides support for handling and executing dictionary jobs.
 *
 */
 
require_once __DIR__.'/DictionarySupport.module';
require_once __DIR__.'/DictionaryJob.php';


class Dictionary {
  // ProcessWire page storing the dictionary
  private $page;
  // DictionarySupport module reference (config variables)
  private $config;
  // Pending jobset (textarea)
  private $jobset;
  // Options set by the user
  private $options;
  // Number of processed records
  public $xcount;

  /**
   * Construct a dictionary object from a page
   * 
   * @param $page ProcessWire page
   * @param $config the environment (i.e. the module)
   * TODO rename config to environment
   */
  function __construct(\ProcessWire\Page $page, $config) {
    $this->page = $page;
    $this->config = $config;
    $this->options = $config->getOptions($page);
    $this->xcount = 0;
    $this->jobset = $this->page->{$this->config->jobfield};
  }


  /**
   * Return the ProcessWire Page object
   * 
   */
  public function getPage() {
    return ($this->page);
  }

  /**
   * Check whether we have a source
   * 
   */
  public function hasSource() {
    // check if source filefield exists and has any content
    return ($this->page->hasField($this->config->sourcefield)
        && trim($this->page->{$this->config->sourcefield}) != '');
  }


  /**
   * Get a given file from a source filefield
   *
   * @param $selector for the source file
   */
  public function getSource($selector) {
    return ($this->page->{$this->config->sourcefield}->get($selector));
  }

  /**
   * Get the current options
   *
   */
  public function getOptions() {
    return $this->options;
  }


  /**
   * Set an option
   *
   * @param $key option key (DictionarySupport::OPT_...)
   * @param @value option value
   */
  public function setOption($key, $value) {
    $this->options[$key] = $value;
  }


  /**
   * Check whether we have a job (not) matching a filter.
   * Default option is to return the number of all active (not DONE) jobs.
   * 
   * @param $filter regexp pattern for jobs
   * @param $preg_options 0 or PREG_GREP_INVERT
   * @return number of jobs matching the filter
   */
  public function hasJob($filter=DictionaryJob::CMD_DONE, $preg_options=PREG_GREP_INVERT) {
    return count($this->findJobs($filter, $preg_options));
  }

  /**
   * Check whether we have a job (not) matching a filter.
   * Default option is to return all active (not DONE) jobs.
   * 
   * @param $filter regexp pattern for jobs
   * @param $preg_options 0 or PREG_GREP_INVERT
   * @returns array of job entries
   */
  public function findJobs($filter=DictionaryJob::CMD_DONE, $preg_options=PREG_GREP_INVERT) {
    return DictionaryJob::jobSet2Array(
        DictionaryJob::filterJobs($filter, $this->jobset, $preg_options)
      );
  }


  /**
   * Add a job to the dictionary (and save it to the PW Page)
   * 
   * @param $job Job definition as string
   * @param $save should we save the page?
   */
  public function addJob($jobEntry, $save=true) {
    if (!$this->page->hasField($this->config->jobfield)) return;
    // wire()->message("Adding a job entry to {$this->page->title}: {$jobEntry}", Notice::debug);
    $this->jobset .= $jobEntry."\n";
    $this->page->{$this->config->jobfield} = $this->jobset;
    if ($save) $this->page->save($this->config->jobfield);
  }

  /**
   * Remove a job from the dictionary
   * 
   * @param $job Job definition as string
   */
  public function removeJob($job) {
    if (!$this->page->hasField($this->config->jobfield)) return;
    // wire()->message("Removing job '{$job}' from {$this->page->title}.", Notice::debug);
    //wire()->message('REMOVE JOB: jobfield before = '.$this->page->{$this->config->jobfield}, Notice::debug);
    $this->jobset = DictionaryJob::removeJobs($job, $this->jobset);
    $this->page->{$this->config->jobfield} = $this->jobset;
    $this->page->save($this->config->jobfield);
    //wire()->message('REMOVE JOB: jobfield after = '.$this->page->{$this->config->jobfield}, Notice::debug);
  }

/***********************************************************************
 * DICTIONARY IMPORT
 **********************************************************************/

  /**
   * Import a dictionary from all its source files
   * 
   * returns false on fatal error
   */
  public function import($options=NULL) {
    
    // check if source exists and has any content
    if (!$this->hasSource()) {
      wire()->warning("[DICT] No files found in '{$this->page->title}' in the field '{$this->config->sourcefield}'.");
      return true;
    }

    /************ PERFORMANCE DEBUGGING ********************************/
    if (class_exists('\Zarganwar\PerformancePanel\Register'))
      \Zarganwar\PerformancePanel\Register::add('dict_import_start');
    /*******************************************************************/

    if (is_null($options)) $options = $this->options;

    // process all source files
    foreach ($this->page->{$this->config->sourcefield} as $fileKey => $file) {
      // check if we have time to process this file
      if ((!isset($options[DictionarySupport::OPT_DRYRUN]) || !$options[DictionarySupport::OPT_DRYRUN])
         && !$this->config->getMaxExecTime($options)) {
        wire()->warning("Skipping {$file->name} as maximum execution time is too close. Remaining entries were added to a new job.");
        // add a job to process the entire file later
        require_once __DIR__.'/DictionaryJob.php';
        $args = array('file' => $fileKey, 'pos' => 0);
        $this->addJob(DictionaryJob::constructJob(DictionaryJob::CMD_PROCESS_FILE, $args, "Process data from file {$file->name}."));
        continue;
      }

      wire()->message("Processing {$file->name}.", Notice::debug);
      // TODO check file mime type and support other file types than XML
      if (!$this->processXMLDictionaryFile($file, $options)) return false;
    }
    /************ PERFORMANCE DEBUGGING ********************************/
    if (class_exists('\Zarganwar\PerformancePanel\Register'))
      \Zarganwar\PerformancePanel\Register::add('dict_import_end');
    /*******************************************************************/
    
    return true;
  }


  /**
   * Import data from the XML file and add/update child nodes @$page
   * 
   * @param $file filefield entry to process
   * @param $options optional options array (overwrites self::options)
   * returns false on fatal error
   */
  public function processXMLDictionaryFile($file, $options=NULL) {
/***************** Performance debugging ******************************/
    if (class_exists('\Zarganwar\PerformancePanel\Register'))
      \Zarganwar\PerformancePanel\Register::add('dict_read_xml');
/**********************************************************************/
    if (is_null($options)) $options = $this->options;
    
    // $this->config->printOptions($options);

    // create a new XML pull parser
    $xml = new \XMLReader();

    // open the file
    if (!$xml->open($file->filename)) {
      wire()->error("Unable to open {$file->name}.");
      return false;
    }

/* TODO skip validation as we don't specify a DTD atm.
    $xml->setParserProperty(\XMLReader::VALIDATE, false);
    if (!$xml->isValid()) {
      wire()->error("Invalid XML file {$file->name}.");
      return false;
    }
*/

    // count the manipulated records (headword entries and XML entries)
    $entriesProcessed = 0;
    $xmlProcessed = 0;
    // store a few names
    $headwords = array();
    // XML record number from the beginning of the file
    $xcount = 0;
    // this is also used to create unique debug messages to avoid message loss

    // check if we need to skip a few records
    if (isset($options[DictionarySupport::OPT_SKIP])) {
      wire()->message('Skipping '.$options[DictionarySupport::OPT_SKIP].' records.', Notice::debug);
      while ($xml->read()) {
        // skip the specified number of entries
        if ($xcount++ < $options[DictionarySupport::OPT_SKIP]) continue;
         // skipping to the next entry
        if (($xml->nodeType == \XMLReader::END_ELEMENT)
           && ($xml->localName == $this->config->getTagName('entry'))) break;
      }
      // wire()->message('Reading data from name:'.$xml->localName.' type:'.$xml->nodeType.' value:'.htmlspecialchars($xml->readString()), Notice::debug);
    }

    // read the XML nodes one by one
    while ($xml->read()) {
      $xcount++; $xmlProcessed++;
      // wire()->message("[{$xcount}] INPUT: {$xml->localName}");
      // processing elements
      if ($xml->nodeType == \XMLReader::ELEMENT) {
        if ($options[DictionarySupport::OPT_DRYRUN]) continue;
        switch($xml->localName) {
        case $this->config->getTagName('entry'):
          break;
        case $this->config->getTagName('related'):
          //$this->config->message("[{$xcount}] Adding related {$xml->readString()} to {$hwp->title}.", Notice::debug);
          if (isset($hwp)) $hwp->{$this->config->getFieldName('related')} = $xml->readString();
          break;
        case $this->config->getTagName('comment'):
          //$this->config->message("[{$xcount}] Adding comment {$xml->readString()} to {$hwp->title}.", Notice::debug);
          if (isset($hwp)) $hwp->{$this->config->getFieldName('comment')} = $xml->readString();
          break;
        case $this->config->getTagName('meaning'):
          //$this->config->message("[{$xcount}] Adding meaning {$xml->readString()} to {$hwp->title}.", Notice::debug);
          if (isset($hwp)) $hwp->{$this->config->getFieldName('meaning')} = $xml->readString();
          break;
        case $this->config->getTagName('headword'):
          // Create/update a headword. The array of file tags contains options/commands.
          $hwp = $this->addHeadword($xml->readString(), $file->tags(true));
          if (is_null($hwp)) $xml->next($this->config->getTagName('entry')); // moving to closing </entry>
          break;
        case $this->config->getTagName('variant'):
          //$this->config->message("[{$xcount}] Adding variant {$xml->readString()} to {$hwp->title}.", Notice::debug);
          if (!isset($hwp)) { // skipping this record if no headword found
            $this->config->errorLog($this->page, "Headword is missing when storing new variant {$xml->readString()}.");
            $xml->next($this->config->getTagName('entry')); // moving to closing </entry>
            continue 2; // skip this record
          }
          if (isset($varip)) { $varip->save(); } // save the previous variant
          $varip = $this->config->createPage($hwp, $this->config->variant_template, $xml->readString());
          $hwp->{$this->config->getFieldName('variants')}->add($varip);
          break;
        case $this->config->getTagName('wordform'):
          //$this->config->message("[{$xcount}] Adding wordform {$xml->readString()} to {$varip->title}.", Notice::debug);
          if (!isset($varip)) {
            $this->config->errorLog($this->page, "Variant is missing when storing new wordform {$xml->readString()}.");
            continue 2; // skip this record
          }
          if (isset($wordformp)) { $wordformp->save(); } // save the previous wordform
          $wordformp = $this->config->createPage($varip, $this->config->wordform_template, $xml->readString());
          $varip->{$this->config->getFieldName('wordforms')}->add($wordformp);
          $varip->save();
          break;
        case $this->config->getTagName('wordform_example'):
          if (!isset($wordformp)) {
            $this->config->errorLog($this->page, "Wordform is missing when storing new wordform example {$xml->readString()}.");
            continue 2; // skip this record
          }
          //$this->config->message("[{$xcount}] Adding wordform_example {$xml->readString()} to {$wordformp->title}.", Notice::debug);
          $wordformp->{$this->config->getFieldName('wordform_examples')} .= $xml->readString()."\n";
          $wordformp->save();
          break;
        }
      } // if node is an element

      // processing end elements
      if ($xml->nodeType == \XMLReader::END_ELEMENT) {
        if ($options[DictionarySupport::OPT_DRYRUN]) continue;
        switch($xml->localName) {
        case $this->config->getTagName('entry'):
          if (!isset($hwp) || !is_object($hwp)) break; // we're skipping the entry
          if ($entriesProcessed++ < 10) $headwords[] = $hwp->title;
          if ($file->hasTag(DictionarySupport::TAG_UPDATE) || $file->hasTag(DictionarySupport::TAG_IMPORT)) {
            $hwp->save();
          }
          unset($wordformp);
          unset($varip);
          unset($hwp);
          // stop processing records before the max_execution_time is reached
          if ((!isset($options[DictionarySupport::OPT_DRYRUN]) || !$options[DictionarySupport::OPT_DRYRUN])
              && !$this->config->getMaxExecTime($options)) {
            $this->config->warning("After processed {$xmlProcessed} XML records maximum execution time is close. Creating a job to finish the rest.");
            $fileKey = $this->page->{$this->config->sourcefield}->getItemKey($file);
            $jobEntry = DictionaryJob::constructJobEntry(
              DictionaryJob::CMD_PROCESS_FILE,
              array('file'=>$fileKey, 'pos'=>$xcount),
              "Process file {$file->name} starting at XML entry#{$xcount}."
            );
            $this->addJob($jobEntry);
            break 2;
          }
          break;
        } // switch
      } // if END_ELEMENT

    } // while reading the file

/***************** Performance debugging ******************************/
    if (class_exists('\Zarganwar\PerformancePanel\Register'))
      \Zarganwar\PerformancePanel\Register::add('dict_end_xml', 'dict_read_xml');
/**********************************************************************/

    // close the XML input
    $xml->close();

    // print out some info for the user
    $this->config->message("Read and processed ".number_format($xmlProcessed)." XML records from file {$file->name}.", Notice::debug);
    if ($entriesProcessed > 10) {
      $this->config->message(implode(',', $headwords).' and '.($entriesProcessed-10).' other records have been processed.');
    } else if ($entriesProcessed > 1) {
      $this->config->message(implode(',', $headwords).' have been processed.');
    } else if ($entriesProcessed == 1) {
      $this->config->message(implode(',', $headwords).' has been processed.');
    }

    // record the number of processed records
    $this->xcount += $xmlProcessed;

    return true;
  }


/***********************************************************************
 * DICTIONARY MANAGEMENT
 **********************************************************************/

  /**
   * Purge the dictionary removing all its child nodes
   * 
   * @param $options optional options array (overwrites self::options)
   */
  public function purgeDictionary($options=NULL) {
    /************ PERFORMANCE DEBUGGING ********************************/
    if (class_exists('\Zarganwar\PerformancePanel\Register'))
      \Zarganwar\PerformancePanel\Register::add('dict_purge_start');
    /*******************************************************************/    // set max execution time
    if (is_null($options)) $options = $this->options;

    $return = true; // optimistic return status
    $count = 0; $deleted = array();
    wire()->message('Deleting children of '.$this->page->title.' with template='.$this->config->headword_template.',include=all');
    $children = $this->page->children('template='.$this->config->headword_template.',include=all');
    foreach ($children as $child) {
      if ($count++ < 10) $deleted[] = $child->title;
      // do not delete if dryrun is set (also do not stop the script)
      if (!$options[DictionarySupport::OPT_DRYRUN]) {
        $child->delete(true);
        // estimation also sets the dryrun opt so we only stop the script if we actually delete pages
        if (!$this->config->getMaxExecTime($options)) {
          wire()->warning('Dictionary is not purged entirely since maximum execution time is too close.');
          // this should not happen
          if (!$this->hasJob(DictionaryJob::CMD_PURGE)) {
            $job = DictionaryJob::constructJob(DictionaryJob::CMD_PURGE, '', 'Purge this dictionary');
            $this->addJob($job);
          }
          $return = false; // not all record has been deleted
          break;  // the foreach loop
        }
      }
    }

    if (!$options[DictionarySupport::OPT_DRYRUN]) {
      if ($count > 10) {
        wire()->message('Deleted pages: '.implode(',', $deleted).' and '.($count-10).' other.');
      } else if ($count > 0) {
        wire()->message('Deleted pages: '.implode(',', $deleted).'.');
      }
    }

    // record the number of processed records
    $this->xcount += $count;

    /************ PERFORMANCE DEBUGGING ********************************/
    if (class_exists('\Zarganwar\PerformancePanel\Register'))
      \Zarganwar\PerformancePanel\Register::add('dict_purge_end');
    /*******************************************************************/

    return $return;
  }


  /**
   * Process headword data
   * 
   * @param $headword headword string
   * @param $tags command options: IMPORT, UPDATE, DELETE old version first
   * returns PW Page object
   */
  public function addHeadword($headword, $tags = array()) {
/***************** Performance debugging ******************************/
    if (class_exists('\Zarganwar\PerformancePanel\Register'))
      \Zarganwar\PerformancePanel\Register::add('dict_headword_'.$headword, 'dict_read_xml');
/**********************************************************************/
    $hwp=$this->page->child('title="'.$headword.'", template='.$this->config->headword_template.", include=all");
    if ($hwp->id) { // found a page with the same title
      if (isset($tags[DictionarySupport::TAG_UPDATE])) { // update the existing headword
        $this->config->messageLog($this->page, "Updating headword '{$headword}' page '{$hwp->title}'[{$hwp->id}]");
        // TODO cleanup hwp's children?
        return $hwp;
      } else if (isset($tags[DictionarySupport::TAG_DELETE])) { // delete existing headwords
        $this->config->messageLog($this->page, "Deleting OLD headword page '{$hwp->title}'[{$hwp->id}]");
        $hwp->delete(true);
      } else {
        $this->config->messageLog($this->page, "Skipping already existing headword {$headword}.");
        return NULL;
      }
    }

    if (isset($tags[DictionarySupport::TAG_IMPORT]) || isset($tags[DictionarySupport::TAG_DELETE])) {
      // $this->config->message("Creating headword page '{$headword}'.", Notice::debug);
      $hwp = $this->config->createPage($this->page, $this->config->headword_template, $headword);
    } else {
      return NULL;
    }
    return $hwp;
  }

}
