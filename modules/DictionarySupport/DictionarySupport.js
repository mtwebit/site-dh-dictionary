/**
 * 
 *
 *
 *
 */

$(document).ready(function() {
  if ( $("#joblog").length) job_executor();
  if ( $("#dictEntry").length) count_children();
});

function count_children() {
  // DOM elements
  var dictEntry = $("#dictEntry"),
      outfield = $("#dictEntry > i");
  // API address and variables
  var adminUrl = dictEntry.attr("adminUrl"),
      dictId = dictEntry.attr("dictId"),
      timeout = dictEntry.attr("timeout");
  // internal variables
  var jobExecUrl = adminUrl + 'api/' + dictId + '/countHeadwords';

  outfield.text("Counting headwords...");

  $.ajax({
    dataType: "json",
    url: jobExecUrl,
    success: countCallback,
    timeout: timeout,
    error: function(jqXHR, status, errorThrown) {
      if (status == 'timeout') {
        outfield.text("Request timeout. Please check the backend for more info.");
      } else {
        outfield.text("Error receiving response from the server: " + status);
      }
      outfield.html("DEBUG INFO: " + jqXHR.responseText);
    }
  });

  function countCallback(data) {
    if (data['status']) { // return status is OK
      outfield.text(data['value'] + ' headwords');
    } else {
      outfield.html("Error: " + data['result']);
    }
  }

}

function job_executor() {

  // DOM elements
  var jobtitle = $("#jobtitle"),
      progressbar = $("#jobprogress"),
      progressLabel = $(".progress-label"),
      joblog = $("#joblog");
  // internal variables
  var step = 0,
      maxRecords = 0,         // maximum number of job records (an estimation)
      processedRecords = 0,   // total number of processed records
      donePercent = 0,
      jobExecUrl;
  // API address and variables
  var adminUrl = progressbar.attr("adminUrl"),
      dictId = progressbar.attr("dictId"),
      jobEntry = progressbar.attr("jobEntry"),
      timeout;

  progressbar.progressbar({
    value: false,
    change: function() {
      progressLabel.text(progressbar.progressbar( "value" ) + "% done.");
    },
    complete: function() {
      progressLabel.text( "All done." );
    }
  });
 
  joblog.text("");
  progressLabel.text("Estimating job size. Please wait...");
  timeout = 60000; // 60 sec long timeout
  jobExecUrl = adminUrl + 'api/' + dictId + '/' + jobEntry + "?est";
  execJob(jobExecUrl, estimateCallback);

  function estimateCallback(data) {
    if (data['status']) { // return status is OK
      step++;
      maxRecords = data['value'];
      progressbar.progressbar("value", 0);
      progressLabel.text(maxRecords + " records found. Starting...");
      timeout = progressbar.attr("timeout"); // timeout set by the server app
      if (data['nextjob']!='') {
        jobEntry = data['nextjob'];
      }
      jobExecUrl = adminUrl + 'api/' + dictId + '/' + jobEntry;
      execJob(jobExecUrl, execCallback); // start the first batch
      if (data['debug'])
        joblog.html("DEBUG INFO: Step #" + step
          + " (" + processedRecords +" / "+maxRecords + "): "
          + data["result"] + "<br />"
          + data['log']);
    } else {
      progressbar.progressbar("value", false);
      progressLabel.text(data["result"]);
      if (data['debug'])
        joblog.html("DEBUG INFO: Step #" + step
          + " (" + processedRecords +" / "+maxRecords + "): "
          + data['log']);
    }
  }

  function execCallback(data) {
    if (data['status']) { // return status is OK
      step++;
      if (data['value'] == 0) { // no records processed, the job is finished
        progressbar.progressbar("value", 100);
        showNextJob(data['nextjob']); // show a link to the next job
      } else {
        processedRecords += data['value'];
        donePercent = 100 * processedRecords / maxRecords;
        progressbar.progressbar("value", Number(donePercent.toFixed(1)));
        if (processedRecords < maxRecords) { // we still have job(part) to execute
          if (data['nextjob']!='') {
            jobEntry = data['nextjob'];
          }
          jobExecUrl = adminUrl + 'api/' + dictId + '/' + jobEntry;
          execJob(jobExecUrl, execCallback); // start the next job (part)
        } else {
          showNextJob(data['nextjob']); // show a link to the next job
        }
      }
      if (data['debug'])
        joblog.html("DEBUG INFO: Step #" + step
          + " (" + processedRecords +" / "+maxRecords + "): "
          + data["result"] + "<br />"
          + data['log']);
    } else {
      progressbar.progressbar("value", false);
      progressLabel.text(data["result"]);
        joblog.html("DEBUG INFO: Step #" + step
          + " (" + processedRecords +" / "+maxRecords + "): "
          + data['log']);
    }
  }
  
  function execJob(url, callback) {
    $.ajax({
      dataType: "json",
      url: url,
      // data: data,
      success: callback,
      timeout: timeout,
      error: function(jqXHR, status, errorThrown) {
        progressbar.progressbar("value", false);
        if (status == 'timeout') {
          progressLabel.text("Request timeout. Please check the backend for more info.");
        } else {
          progressLabel.text("Error receiving response from the server: " + status);
        }
        joblog.html("DEBUG INFO: " + jqXHR.responseText);
      }
    });
  }

  function showNextJob(newJobEntry) {
    if (newJobEntry != '') {
      jobtitle.html('Job finished: ' + decodeURIComponent(jobEntry.replace(/\+/g, '%20'))
                  + ' <a href="' + adminUrl + 'batch/' + dictId + '/' + newJobEntry
                  + '">Continue with the next job</a>');
    } else {
      jobtitle.html('Job finished: ' + decodeURIComponent(jobEntry.replace(/\+/g, '%20'))
                  + ' <a href="' + adminUrl
                  + '">Back to admin</a>');
    }
  }

}
