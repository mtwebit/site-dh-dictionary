/**
 * 
 *
 *
 *
 */

$(document).ready(function() {
  if ( !$("#joblog").length) return;
  var joblog = $("#joblog"),
      progressbar = $("#jobprogress"),
      progressLabel = $(".progress-label"),
      step = 0,
      maxRecords = 0,         // maximum number of job records (an estimation)
      processedRecords = 0,   // total number of processed records
      donePercent = 0,
      jobExecUrl = window.location.href + "&api";

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
  $.getJSON(jobExecUrl + "&est", estimateJob);

  function estimateJob(data) {
    if (data['status']) { // return status is OK
      step++;
      maxRecords = data['value'];
      progressbar.progressbar("value", 0);
      progressLabel.text(maxRecords + " records found. Starting...");
      $.getJSON(jobExecUrl, execJob); // start the first batch
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

  function execJob(data) {
    if (data['status']) { // return status is OK
      step++;
      if (data['value'] == 0) { // no records processed, the job is finished
        progressbar.progressbar("value", 100);
      } else {
        processedRecords += data['value'];
        donePercent = 100 * processedRecords / maxRecords;
        progressbar.progressbar("value", Number(donePercent.toFixed(1)));
        if (processedRecords < maxRecords) { // execute the next job part
          $.getJSON(jobExecUrl, execJob);
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

});
