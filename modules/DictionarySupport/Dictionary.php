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
  // DictionarySupport module reference (config variables)
  public $module;
  // ProcessWire page storing the dictionary
  public $page;
  // Pending jobset (textarea)
  private $jobset;
  // Dictionary options set by the user
  private $options;
  // the number of processed records
  public $recordsProcessed;


/***********************************************************************
 * BASIC FUNCTIONS for dictionary pages
 **********************************************************************/

  /**
   * Construct a dictionary object from a page
   * 
   * @param $page ProcessWire page
   * @param $config the environment (i.e. the module)
   * TODO rename config to environment
   */
  function __construct(Page $page, Module $module ) {
    $this->page = $page;
    $this->module = $module;
    $this->options = $module->getOptions($page);
    $this->recordsProcessed = 0;
    $this->jobset = $this->page->{$this->module->jobfield};
  }


  /**
   * Return the ProcessWire Page object
   * 
   */
  public function getPage() {
    return ($this->page);
  }


  /**
   * Check whether we have a non-empty source
   * 
   * @param $selector for the source file
   */
  public function hasSource($selector='') {
    // check if source filefield exists and has any content
    return ($this->page->hasField($this->module->sourcefield)
        && ($this->findSource($selector)->count()>0) );
  }

  /**
   * Find files matching a selector
   *
   * @param $selector for file properties, e.g. tags=import|delete|update
   */
  public function findSource($selector) {
    return ($this->page->{$this->module->sourcefield}->find($selector));
  }

  /**
   * Gets the first file matching a selector
   *
   * @param $selector for the source file
   */
  public function getSource($selector) {
    return ($this->page->{$this->module->sourcefield}->get($selector));
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


/***********************************************************************
 * JOB MANAGEMENT
 **********************************************************************/

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
   * Check whether we have a job (not) matching a filter.
   * Default option is to return all active (not DONE) jobs.
   * 
   * @param $filter regexp pattern for jobs
   * @param $preg_options 0 or PREG_GREP_INVERT
   * @returns array of job entries
   */
  public function findJobsLoose($filter=DictionaryJob::CMD_DONE) {
    if ($this->hasJob($filter, 0)) { // job found
      return $filter;
    }

    if (!$this->hasJob('', 0)) { // do we have any jobs at all?
      return false;
    }

    // deconstruct the filter
    list ($job, $command, $arguments, $description) = DictionaryJob::deconstructJobEntry($filter);

    // check the command alone
    if ($this->hasJob($command, 0)) { // match by command name
      return $command;
    }

    // try to rewrite the command

    // when process all is finished it is broken down into process file jobs
    // get the first process file job
    if (($command == DictionaryJob::CMD_PROCESS_ALL)
        && $this->hasJob(DictionaryJob::CMD_PROCESS_FILE, 0)) {
      return DictionaryJob::CMD_PROCESS_FILE;
    }

    return false;
  }

  /**
   * Add all necessary jobs to the dictionary when saving the dictionary page
   * 
   * @param $job Job definition as string
   * @param $save should we save the field?
   * 
   * @returns true if any job has been added
   */
  public function addJobsOnPageSave() {
    // check if any file needs to be handled
    if (!$this->hasSource('tags=import')) return false;

    // check if any job is active for this page and stop creating a new one if yes
    if ($this->hasJob()) {
      $this->module->warning('Skipping creating new import job since pending jobs found for this dictionary. '
        .'Please visit the <a href="'.$this->module->adminUrl
        .'">Dictionary Admin Page</a> for more details.', Notice::allowMarkup);
      return false;
    }

    // constructing dictionary jobs
    // (these could be long running progs so we can't execute them right now)

    if ($this->options[DictionarySupport::OPT_PURGE]) { // purge is required before import
      $jobEntry = DictionaryJob::constructJobEntry(DictionaryJob::CMD_PURGE, '', 'Purge the dictionary.');
      $this->addJob($jobEntry, false);
      // start the purge job after saving this page
    } else {
      // start the process_all job after saving this page
    }

    // add the process_all sources job to the dictionary
    $jobEntry = DictionaryJob::constructJobEntry(DictionaryJob::CMD_PROCESS_ALL, '', 'Process data from all input files.');
    $this->addJob($jobEntry, false);

    return true;
  }
    
  /**
   * Add a job to the dictionary (and save it to the PW Page)
   * 
   * @param $job Job definition as string
   * @param $save should we save the field?
   */
  public function addJob($jobEntry, $save=true) {
    if (!$this->page->hasField($this->module->jobfield)) return;
    // $this->module->message("Adding a job entry to {$this->page->title}: {$jobEntry}", Notice::debug);
    $this->jobset .= $jobEntry."\n";
    $this->page->{$this->module->jobfield} = $this->jobset;
    if ($save) $this->page->save($this->module->jobfield);
  }

  /**
   * Remove a job from the dictionary
   * 
   * @param $job Job definition as string
   * @param $save should we save the field?
   */
  public function removeJob($job, $save=true) {
    if (!$this->page->hasField($this->module->jobfield)) return;
    //$this->module->message("Removing job '{$job}' from {$this->page->title}.", Notice::debug);
    //$this->module->message('REMOVE JOB: jobfield before = '.$this->page->{$this->module->jobfield}, Notice::debug);
    $this->jobset = DictionaryJob::removeJobs($job, $this->jobset);
    $this->page->{$this->module->jobfield} = $this->jobset;
    $this->page->save($this->module->jobfield);
    //$this->module->message('REMOVE JOB: jobfield after = '.$this->page->{$this->module->jobfield}, Notice::debug);
  }

  /**
   * Execute a job matching a filter
   * 
   * @param $filter regexp pattern for jobs
   * @param $verbose print out some html stuff during execution
   * @param $estimate estimate the job instead of executing it
   * 
   * @return string results of the job execution
   */
  public function executeJob($filter='', $verbose = false, $estimate = false) {
    if (!$this->hasJob($filter, 0)) {
      // handle built-in functions
      switch($filter) {
      case 'countHeadwords':
        if ($estimate) return false; // estimation is not supported
        $this->recordsProcessed = $this->page->numChildren('template='.$this->module->headword_template);
        return $this->recordsProcessed;
      case DictionaryJob::CMD_PURGE:
        if ($estimate) {
          $this->recordsProcessed = $this->page->numChildren('template='.$this->module->headword_template);
          return $this->recordsProcessed;
        }
        return $this->purgeDictionary();
      default:
        // try to find a similar job (e.g. CMD_PROCESS_ALL => CMD_PROCESS_FILE)
        $res = $this->findJobsLoose($filter);
        if (false===$res) {
          if ($estimate) return false;
          return 'Job not found.';
        }
        $filter = $res; // we have a new filter
      }
    }

    // select the first job and execute it
    $job = new DictionaryJob($this, $filter);

    if ($estimate) return $job->estimate();

    $ret = '';
    if ($verbose) $ret .= '<h2>Executing job '.$job->description.'</h2>';
    $ret .= $job->execute();

    return $ret;
  }

  /**
   * Estimate a job's size
   * 
   * @param $filter regexp pattern for jobs
   * 
   * @return false or number of records to be processed
   */
  public function estimateJob($filter='') {
    return $this->executeJob($filter, false, true);
  }

  /**
   * Return the number of processed records
   * 
   */
  public function getNumberOfProcessedRecords() {
    return $this->recordsProcessed;
  }


/***********************************************************************
 * DICTIONARY IMPORT
 **********************************************************************/

  /**
   * Import a dictionary from all its sources
   * 
   * returns false on fatal error
   */
  public function import($file, $options=NULL) {
    
    // check if source exists and has any content
    if (!$this->hasSource()) {
      $this->module->warning("No dictionary source found in '{$this->page->title}' in the field '{$this->module->sourcefield}'.");
      return true; // the import did not fail
    }

    /************ PERFORMANCE DEBUGGING ********************************/
    if (class_exists('\Zarganwar\PerformancePanel\Register'))
      \Zarganwar\PerformancePanel\Register::add('dict_import_start');
    /*******************************************************************/

    // load the default options
    if (is_null($options)) $options = $this->options;

    require_once __DIR__.'/DictionaryXmlProcessor.php';
    $xmlproc = new DictionaryXMLProcessor($this->module);

    if (is_null($file)) { // process all source files
      foreach ($this->page->{$this->module->sourcefield} as $fileKey => $file) {
        // check if we have time to process this file
        if (!$options[DictionarySupport::OPT_DRYRUN] && !$this->module->getMaxExecTime($options)) {
          wire()->warning("Skipping {$file->name} as maximum execution time is too close. Remaining entries were added to a new job.");
          // add a job to process the entire file later
          $args = array('file' => $fileKey, 'pos' => 0);
          $this->addJob(DictionaryJob::constructJob(DictionaryJob::CMD_PROCESS_FILE, $args, "Process data from file {$file->name}."));
          continue;
        }

        $this->module->message("Processing {$file->name}.", Notice::debug);
        // TODO check file mime type and support other file types than XML
        $ret = $xmlproc->importFromFile($this, $file, $options);
        $this->recordsProcessed += $xmlproc->recordsProcessed;
        if ($ret === false) return false;
      }
    } else { // process a single file
      
      $this->module->message("Processing {$file->name}.", Notice::debug);
      // TODO check file mime type and support other file types than XML
      $ret = $xmlproc->importFromFile($this, $file, $options);
      $this->recordsProcessed += $xmlproc->recordsProcessed;
      if ($ret === false) return false;
    }

    /************ PERFORMANCE DEBUGGING ********************************/
    if (class_exists('\Zarganwar\PerformancePanel\Register'))
      \Zarganwar\PerformancePanel\Register::add('dict_import_end');
    /*******************************************************************/
    
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
    wire()->message('Deleting children of '.$this->page->title.' with template='.$this->module->headword_template.',include=all');

//    $children = wire('pages')->find('parent='.$this->page->id.',template='.$this->module->headword_template.',include=all');
    $childIDs = wire('pages')->findIDs('parent='.$this->page->id.',template='.$this->module->headword_template.',include=all');

//    foreach ($children as $child) {
    foreach ($childIDs as $childID) {
      $child = wire('pages')->get($childID);
      if ($count++ < 10) $deleted[] = $child->title;
      // do not delete if dryrun is set (also do not stop the script)
      if (!$options[DictionarySupport::OPT_DRYRUN]) {
        $child->delete(true);
        // estimation also sets the dryrun opt so we only stop the script if we actually delete pages
        if (!$this->module->getMaxExecTime($options)) {
          wire()->warning('Dictionary is not purged entirely since maximum execution time is too close.');
          // this should not happen
          if (!$this->hasJob(DictionaryJob::CMD_PURGE)) {
            $job = DictionaryJob::constructJobEntry(DictionaryJob::CMD_PURGE, '', 'Purge this dictionary');
            $this->addJob($job);
          }
          $return = false; // not all record has been deleted
          break;  // the while loop
        }
      }
    } // foreach pages to delete

    if (!$options[DictionarySupport::OPT_DRYRUN]) {
      if ($count > 10) {
        wire()->message('Deleted pages: '.implode(',', $deleted).' and '.($count-10).' other.');
      } else if ($count > 0) {
        wire()->message('Deleted pages: '.implode(',', $deleted).'.');
      }
    }

    // record the number of processed records
    $this->recordsProcessed += $count;

    /************ PERFORMANCE DEBUGGING ********************************/
    if (class_exists('\Zarganwar\PerformancePanel\Register'))
      \Zarganwar\PerformancePanel\Register::add('dict_purge_end');
    /*******************************************************************/

    return $return;
  }


  /**
   * Create a headword page from an XML source and store its XML data in a field named xml_data
   * 
   * @param $headwordEntry array containing headword data
   * @param $xml_data headword data in XML form
   * @param $tags command options: IMPORT, UPDATE, DELETE old version first
   * returns PW Page object
   */
  public function addHeadwordXML($headword, $xml_data, $tags = array()) {
/***************** Performance debugging ******************************/
    if (class_exists('\Zarganwar\PerformancePanel\Register'))
      \Zarganwar\PerformancePanel\Register::add('dict_headword_'.$headword);
/**********************************************************************/

    if (strlen($xml_data)<10) {
      $this->module->error("Invalid headword data found for '{$headword}' in the input.");
      return NULL;
    }

    if (false !== strpos($headword, '&')) { // entities present...
      $headword = html_entity_decode($headword, 0,
                  isset(wire('config')->dbCharset) ? isset(wire('config')->dbCharset) : '');
    }

    if (strlen($headword)<1) {
      $this->module->error("Invalid headword '{$headword}' found in the input.");
      return NULL;
    }
    
    $name = wire('sanitizer')->pageNameUTF8($headword);

    // find headwords already present
    $selector = 'title='.$this->module->sanitizer->selectorValue($headword)
               .', template='.$this->module->headword_template.', include=all';
    $hwp=$this->page->child($selector);
//    $this->module->message("Selector: '{$selector}'.", Notice::debug);

    if ($hwp->id) { // found a page with the same title
      if (isset($tags[DictionarySupport::TAG_UPDATE])) { // update the existing headword
        $this->module->messageLog($this->page, "Updating headword '{$headword}' page '{$hwp->title}'[{$hwp->id}]");
        // TODO cleanup hwp's children?
        return $hwp;
      } else if (isset($tags[DictionarySupport::TAG_DELETE])) { // delete existing headwords
        $this->module->messageLog($this->page, "Deleting OLD headword page '{$hwp->title}'[{$hwp->id}]");
        $hwp->delete(true);
      } else {
        $this->module->messageLog($this->page, "Skipping already existing headword {$headword}.");
        return NULL;
      }
    }

    if (isset($tags[DictionarySupport::TAG_IMPORT]) || isset($tags[DictionarySupport::TAG_DELETE])) {
      //$this->module->message("Creating headword page '{$headword}'.", Notice::debug);
      $hwp = $this->module->createPage($this->page, $this->module->headword_template, $headword, array('xml_data' => $xml_data));
//      $hwp = $this->module->createPage($this->page, $this->module->headword_template, $headword, array('name' => $name, 'xml_data' => $xml_data));
    } else {
      return NULL;
    }
    return $hwp;
  }


  /**
   * Create a headword page from an array and store its data in a JSON field called json_data
   * 
   * @param $headwordEntry array containing headword data
   * @param $tags command options: IMPORT, UPDATE, DELETE old version first
   * returns PW Page object
   */
  public function addHeadwordJSON($headwordEntry, $tags = array()) {
/***************** Performance debugging ******************************/
    if (class_exists('\Zarganwar\PerformancePanel\Register'))
      \Zarganwar\PerformancePanel\Register::add('dict_headword_'.$headword['headword']);
/**********************************************************************/

    if (!is_array($headwordEntry) || !isset($headwordEntry['headword'])) {
      $this->module->error("Invalid headword '{$headword}' found in the input.");
      return NULL;
    }

    $headword = $headwordEntry['headword'];
    $json_data = json_encode($headwordEntry); // put the data into the body field (for now)

    // find headwords already present
    $selector = 'title='.$this->module->sanitizer->selectorValue($headword)
               .', template='.$this->module->headword_template.', include=all';
    $hwp=$this->page->child($selector);

    if ($hwp->id) { // found a page with the same title
      if (isset($tags[DictionarySupport::TAG_UPDATE])) { // update the existing headword
        $this->module->messageLog($this->page, "Updating headword '{$headword}' page '{$hwp->title}'[{$hwp->id}]");
        // TODO cleanup hwp's children?
        return $hwp;
      } else if (isset($tags[DictionarySupport::TAG_DELETE])) { // delete existing headwords
        $this->module->messageLog($this->page, "Deleting OLD headword page '{$hwp->title}'[{$hwp->id}]");
        $hwp->delete(true);
      } else {
        $this->module->messageLog($this->page, "Skipping already existing headword {$headword}.");
        return NULL;
      }
    }

    if (isset($tags[DictionarySupport::TAG_IMPORT]) || isset($tags[DictionarySupport::TAG_DELETE])) {
      //$this->module->message("Creating headword page '{$headword}'.", Notice::debug);
      $hwp = $this->module->createPage($this->page, $this->module->headword_template, $headword, array('json_data' => $json_data));
    } else {
      return NULL;
    }
    return $hwp;
  }

}
