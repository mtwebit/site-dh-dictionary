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
require_once __DIR__.'/Dictionary.php';


class DictionaryXmlProcessor {
  // input XML tag names
  private $tagNames;
  // DictionarySupport module reference (config variables)
  public $module;
  // the number of processed records
  public $recordsProcessed;

  /**
   * Construct an importer
   * 
   * @param $source the resource where the XML content can be found
   * @param $module the environment (i.e. configuration)
   * TODO rename config to environment
   */
  function __construct(Module $module) {
    $this->module = $module;
    // decode the XML tag <-> dictionary field name mappings module configuration
    $this->tagNames = json_decode(trim($module->tagmappings), true);
    if (!is_array($this->tagNames)) {
      $this->module->error("Invalid XML name mappings. Check the module's configuration.");
      return;
    }
  }

  /**
   * Get custom input XML tagname for $tagname
   * 
   * @param $cname canonical input name
   */
  public function getTagName($cname) {
    return (isset($this->tagNames[$cname]) ? $this->tagNames[$cname] : $cname);
  }

  /**
   * Import data from the XML file and add/update child nodes @$page
   * 
   * @param $file filefield entry to process
   * @param $options optional options array (overwrites self::options)
   * returns false on fatal error
   */
  public function importFromFile($dictionary, $file, $options) {
/***************** Performance debugging ******************************/
    if (class_exists('\Zarganwar\PerformancePanel\Register'))
      \Zarganwar\PerformancePanel\Register::add('dict_read_xml');
/**********************************************************************/
    // $this->module->printOptions($options);

    // create a new XML pull parser
    $xml = new \XMLReader();

    // open the file
    if (!$xml->open($file->filename)) {
      $this->module->error("Unable to open {$file->name}.");
      $this->recordsProcessed = 0;
      return false;
    }

/* TODO skip validation as we don't specify a DTD atm.
    $xml->setParserProperty(\XMLReader::VALIDATE, false);
    if (!$xml->isValid()) {
      $this->module->error("Invalid XML file {$file->name}.");
      return false;
    }
*/

    // count the manipulated records (headword entries and XML entries)
    $headwordCounter = 0;
    $entryCounter = 0;
    // store a few headword names
    $headwords = array();
    // Entry record number from the beginning of the input
    $entrySerial = 0;
    // this is also used to create unique debug messages to avoid message loss

    // find the first <entry> tag
    while ($xml->read() && $xml->localName != $this->getTagName('entry'));

    // check if we need to skip a few records
    if (isset($options[DictionarySupport::OPT_SKIP])) {
      $this->module->message('Skipping '.$options[DictionarySupport::OPT_SKIP].' entries.', Notice::debug);
      while ($xml->next($this->getTagName('entry'))) {
        // skip the end elements
        if ($xml->nodeType != \XMLReader::ELEMENT) continue;
        // skip the specified number of entries
        if (++$entrySerial == $options[DictionarySupport::OPT_SKIP]) break;
      }
    }

    do {
      // skip the element if it is empty
      if ($xml->isEmptyElement) continue;

      $entrySerial++; $entryCounter++;
      // $this->module->message("[{$entryCounter}] INPUT: {$xml->localName}");

      if ($xml->nodeType != \XMLReader::ELEMENT || $xml->localName != $this->getTagName('entry')) {
        // this should not happen
        $this->module->message("[{$entryCounter}] XML parsing error at {$xml->localName}");
        // skip to the next <entry> tag
        continue;
      }

      if ($options[DictionarySupport::OPT_DRYRUN]) continue;

      $headword = $dictionary->addHeadwordXML($xml->getAttribute('headword'), $xml->readOuterXML(), $file->tags(true));
      /* OLD version:
      $headword = $dictionary->addHeadwordJSON(
                    $this->XML2HeadwordEntry($xml->expand()),
                    $file->tags(true)
                  );
      */


      if (false===$headword) { // error
        $this->recordsProcessed = $entryCounter;
        return false;
      } else if ($headword instanceof Page) { // page created
        if ($headwordCounter++ < 10) $headwords[] = $headword->title;
      }

      // stop processing records before the max_execution_time is reached
      if (!$options[DictionarySupport::OPT_DRYRUN] && !$this->module->getMaxExecTime($options)) {
        $this->module->warning("After processed {$entryCounter} entries maximum execution time is close. Creating a job to finish the rest.");
        $fileKey = $dictionary->page->{$this->module->sourcefield}->getItemKey($file);
        $jobEntry = DictionaryJob::constructJobEntry(
          DictionaryJob::CMD_PROCESS_FILE,
          array('file'=>$fileKey, 'pos'=>$entrySerial),
          "Process file {$file->name} starting at entry#{$entrySerial}."
        );
        $dictionary->addJob($jobEntry);
        break; // the while loop
      }
    } while ($xml->next($this->getTagName('entry')));
    
     // while reading the file

/***************** Performance debugging ******************************/
    if (class_exists('\Zarganwar\PerformancePanel\Register'))
      \Zarganwar\PerformancePanel\Register::add('dict_end_xml', 'dict_read_xml');
/**********************************************************************/

    // close the XML input
    $xml->close();

    // print out some info for the user
    $this->module->message("Read and processed ".number_format($entryCounter)." entries and found ".number_format($headwordCounter)." headwords in file {$file->name}.", Notice::debug);
    if ($headwordCounter > 10) {
      $this->module->message(implode(',', $headwords).' and '.($headwordCounter-10).' other entries have been processed.');
    } else if ($headwordCounter > 1) {
      $this->module->message(implode(',', $headwords).' have been processed.');
    } else if ($headwordCounter == 1) {
      $this->module->message(implode(',', $headwords).' has been processed.');
    }

    // record the number of processed records
    $this->recordsProcessed = $entryCounter;

    return true;
  }

  /**
   * Construct a job entry given a command, a file + options and a description
   * 
   * @param $xml the headword as a DOMNode xml object
   * 
   * TODO removed because
   * TODO this is slow and does not store the order of tags
   */
  public function XML2HeadwordEntry(\DOMNode $xml) {
    if (!is_object($xml) || is_null($xml)) return array();
    $headwordEntry = array();
    foreach ($this->tagNames as $part => $tagName) {
      $nodeList = $xml->getElementsByTagName($tagName);
      switch ($nodeList->length) {
      case 0: // no items found
        break;
      case 1: // a single item found
        $headwordEntry[$part] = trim($nodeList->item(0)->nodeValue);
        break;
      default: // several items found, let's merge them into a single text value
        $headwordEntry[$part] = implode("\n", iterator_to_array($nodeList));
        //foreach ($nodeList as $node) $headwordEntry[$part] .= trim($node->nodeValue)."\n";
        break;
      }
    }
    //$this->printHeadwordEntry($headwordEntry);
    return $headwordEntry;
  }

  /**
   * Dump a headword entry to the debug channel
   * 
   * @param $options array of options to print
   */
  public function printHeadwordEntry($headwordEntry) {
    $this->module->message(print_r($headwordEntry, true), Notice::debug);
  }

}
