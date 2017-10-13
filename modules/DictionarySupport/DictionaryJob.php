<?php namespace ProcessWire;
// DEBUG disable file compiler for this file
// FileCompiler=0

/**
 * Dictionary page class
 *
 * Provides support for handling and executing dictionary jobs.
 *
 */

class DictionaryJob {
  // DictionarySupport module reference (config variables)
  public $module;
  // Dictionary object
  public $dict;
  // job command
  public $command;
  // command tags
  const CMD_UNKNOWN='UNKNOWN_COMMAND'; // unknown command
  const CMD_PROCESS_ALL='PROCESS_ALL'; // process and import dictionary entries from all files
  const CMD_PROCESS_FILE='PROCESS_FILE'; // process and import dictionary entries from a file
  const CMD_PURGE='PURGE'; // purge the dictionary (delete all child nodes)
  const CMD_DONE='DONE'; // this job is done with success
  const CMD_FAILED='FAILED'; // the execution of this job has failed
  // array of command arguments: e.g. filename and file position
  public $arguments;
  // string representation of a job: "command(argumentsJSON)"
  public $job;
  // job description for humans
  public $description;
  // entire job entry as string (may contain JSON encoded arguments)
  public $jobEntry;
  // index entries for job entry arrays
  const JOB_IDX_JOB=0;
  // separator string for job descriptions
  const JOB_DESC_SEP=' - ';
  // job options
  private $options;

  /**
   * Construct a job given a page and a job description
   * 
   * @param $dict a dictionary page
   * @param $job a job string (see constructjob below)
   */
  function __construct (Dictionary $dict, string $jobEntry = '') {
    $this->dict = $dict;
    // get matching job entries from the dictionary
    $jobset = $dict->findJobs($jobEntry, 0);
    // select the first matching job entry
    $this->jobEntry = $jobset[0];
    // default job options come from the dictionary
    $this->options = $dict->getOptions();
    // module
    $this->module = $dict->module;
    // fill other properties from the job entry
    list ($this->job, $this->command, $this->arguments, $this->description) = 
      self::deconstructJobEntry($this->jobEntry);
  }


  /**
   * Construct a job entry given a command, a file + options and a description
   * 
   * @param $command string one from the above CMD_ commands
   * @param $args arguments to the command (assoc array)
   * @param $description string human-readable description of the job
   */
  static public function constructJobEntry(string $command, $arguments, string $description='') {
    // TODO check and sanitize
    if ((is_string($arguments) && strlen($arguments)>0)
        || (is_array($arguments) && count($arguments)>0)
        || (is_object($arguments))) {
      $arguments = json_encode($arguments);
    } else {
      $arguments = '';
    }
    return $command
      . (strlen($arguments) ? '('.$arguments.')' : '')
      . (strlen($description) ? self::JOB_DESC_SEP.$description : '');
  }


  /**
   * Get the an array of (command, arguments, job definition and description) from a job entry
   * 
   */
  static public function deconstructJobEntry($jobEntry) {
    // TODO sanitizing, validation
    // TODO better command and argument interpreter
    // TODO move jobs to PW?
    $cpos1 = strpos($jobEntry, '(');
    $cpos2 = strpos($jobEntry, ')');
    $cpos3 = strpos($jobEntry, self::JOB_DESC_SEP, $cpos2);

    //wire()->message("JOBINFO processing entry: ".$jobEntry, Notice::debug);
    
    if ($cpos1 !== false) { // arguments present
      if ($cpos2 === false || ($cpos2 <= $cpos1)) { // no ) character found after )
        $this->module->warning('Invalid job found: '.$jobEntry);
        return array(self::CMD_UNKNOWN, '', '', '');
      }
      // anything before '(' is the command
      $command = substr($jobEntry, 0, $cpos1);
      // arguments are between ( and )
      $args = substr($jobEntry, $cpos1+1, $cpos2-$cpos1-1);
      //wire()->message("JOBINFO ARGS: ".print_r($args, true), Notice::debug);
      // check for JSON-encoded arguments
      if (strlen(trim($args)) && strpos($args, '}')) {
        $args = json_decode($args, true); // decode the args into an assoc array
      }
    } else { // no arguments present
      $args = '';
      if ($cpos3 !== false) { // description present
        $command = substr($jobEntry, 0, $cpos3);
      } else {
        $command = $jobEntry;
      }
    }

    // reconstruct the job entry withouth user description
    $job = self::constructJobEntry($command, $args);

    // get the description
    if ($cpos3 !== false) {
      $description = substr($jobEntry, $cpos3 + strlen(self::JOB_DESC_SEP));
    } else {
      $description = '';
    }

    //sscanf($jobEntry, '%[^(](%[^)]'.self::JOB_DESC_SEP.'%[^$]', $command, $args, $description);
    // %[^(] any text until a ( character: the command
    // %[^)] any text until a ) character: the arguments
    // the rest of the string is the job description

    //wire()->message("JOBINFO: $job | $command | ".print_r($args, true)." | $description", Notice::debug);

    return array($job, $command, $args, $description);
  }

  /**
   * Removes all matching jobs from a jobset
   * 
   * @param $filter a regexp string match to search for jobs
   * @param $jobset string (textarea) containing jobs separated by \n
   * @param $preg_flags optional preg_grep flag like PREG_GREP_INVERT
   */
  static public function filterJobs($filter, $jobset, $preg_flags=0) {
    if (!is_string($jobset) || !strlen(trim($jobset))) return '';
    if (!is_string($filter) || !strlen(trim($filter))) return $jobset; // TODO handle grep_flags
    // sanitizing filter for regular expression search
    $filter = preg_quote($filter);
    // TODO rewrite this to preg_filter and preg_replace
    //wire()->message('JOBFILTER: '.$filter.' in jobset '.$jobset, Notice::debug);
    return implode("\n", preg_grep('/^'.$filter.'.*$/', explode("\n", trim($jobset)), $preg_flags))."\n";
  }

  /**
   * Remove a job from a jobset (textarea)
   * 
   * @param $filter a regexp string match to search for jobs
   * @param $jobset a textarea of newline separated job entries
   * @returns a textarea of newline separated job entries excluding matching jobs
   */
  static public function removeJobs($filter, $jobset) {
    return self::filterJobs($filter, $jobset, PREG_GREP_INVERT);
  }


  /**
   * Get the array of jobs from a text
   * 
   * @param $input textarea value with jobs separated by \n
   * @param $filter optional filter by command (see above)
   * @param $preg_flags optional preg_grep flag like PREG_GREP_INVERT
   * @returns array of job strings
   */
  static public function jobSet2Array(string $jobset) {
    if (!is_string($jobset) || !strlen(trim($jobset))) return array();
    return explode("\n", trim($jobset));
  }


  /**
   * Check whether we have any command at all
   * 
   */
  public function isEmpty() {
    return !strlen($command);
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
   * Return the number of processed records
   * 
   */
  public function getNumberOfProcessedRecords() {
    return $this->dict->recordsProcessed;
  }


  /**
   * Estimate a job execution time (in number of processed records).
   * 
   */
  public function estimate() {
    $this->options[DictionarySupport::OPT_DRYRUN] = true;
    $timeSpent = $this->options[DictionarySupport::OPT_MAX_TIME];
    $this->options[DictionarySupport::OPT_MAX_TIME] = 0;

// TODO subtract the time spent on estimation
    if (($ret = $this->execute())!==false) {
      $this->options[DictionarySupport::OPT_DRYRUN] = false;
      $this->options[DictionarySupport::OPT_MAX_TIME] = $timeSpent;
      return $this->getNumberOfProcessedRecords();
    } else {
      $this->options[DictionarySupport::OPT_DRYRUN] = false;
      $this->options[DictionarySupport::OPT_MAX_TIME] = $timeSpent;
      return $ret;
    }
  }

  /**
   * Execute the job
   * 
   * @return returns false on fatal error and status string on (partial) success
   */
  public function execute() {
    switch($this->command) {
    case self::CMD_PROCESS_ALL:
      if (!$this->dict->import(null, $this->options)) {
        $this->module->error("Failed processing job '{$this->description}'.");
        return false;
      } else {
        // remove the job
        if (!$this->options[DictionarySupport::OPT_DRYRUN])
          $this->dict->removeJob($this->job);
      }
      return "Finished processing job '{$this->description}'.";

    case self::CMD_PROCESS_FILE:
      // check if source file exists
      if (!$this->dict->hasSource()) {
        $this->module->warning("[JOB] No files found at '{$this->dict->page->title}' in field '{$this->dict->config->sourcefield}'.");
        break;
      }
      $file = $this->dict->getSource($this->arguments['file']);
      if (is_null($file)) {
        $this->module->error('File not found: '.$this->arguments['file']);
        return false;
      }

      // skip the specified number of records
      $this->options[DictionarySupport::OPT_SKIP] = $this->arguments['pos'];

      if (!$this->dict->import($file, $this->options)) {
        $this->module->error("Failed processing {$file->name}.");
        return false;
      } else {
        if (!$this->options[DictionarySupport::OPT_DRYRUN])
          $this->dict->removeJob($this->job);
      }
      return 'Finished processing data from '.$file->name.' starting at record '.$this->arguments['pos'].'.';
      
    case self::CMD_PURGE:
      if (!$this->dict->purgeDictionary($this->options)) {
        return "Partially finished deleting dictionary entries";
      }
      if (!$this->options[DictionarySupport::OPT_DRYRUN])
        $this->dict->removeJob($this->job);
      return "Finished deleting dictionary entries ({$this->command}).";
    }

    return false;
  }

  /**
   * Print some info to the debug channel
   * 
   * @param $dict a dictionary page
   * @param $job a job string (see constructjob below)
   */
  public function printDebugInfo() {
    $this->module->message("Job Entry: {$this->jobEntry}.", Notice::debug);
  }

}
