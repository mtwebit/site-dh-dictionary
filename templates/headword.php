<?php namespace ProcessWire;
// DEBUG disable file compiler for this file
// FileCompiler=0

$content .= "    <h1 class='display-3'>{$headline}</h1>";
$content .= "    <p class='lead'>{$page->summary}<br />{$page->comment}</p>";
$body = json_decode($page->json_data, true);
if (is_null($body)) wire()->error('Invalid body content.');
$content .= '<p> '.nl2br(htmlentities($page->xml_data)).'<br /><hr />'.print_r($body, true).'</p>';



/*
foreach ($page->variants as $variant) {
  $content .= "<h2>{$variant->title} - ".count($variant->wordforms)."</h2>";
  foreach ($variant->wordforms as $wordform) {
    $content .= "<h4>{$wordform->title} - ".count(explode("\n", trim($wordform->wordform_examples, " \r\n")))."</h4>";
    $content .= '<p>'.nl2br($wordform->wordform_examples)."</p>\n";
  }
  $content .= "<hr />";
}



// If the page has children, then render navigation to them under the body.
// See the _func.php for the renderNav example function.
/*if ($page->hasChildren) {
  $content .= "<div class='col-xs-12'>".renderNav($page->children('template="wordform|variant"'))."</div>";
}

// if the rootParent (section) page has more than 1 child, then render 
// section navigation in the sidebar (see _func.php for renderNavTree).
if ($page->rootParent->hasChildren > 1) {
  $sidebar = renderNavTree($page->rootParent, 1); 
  // leave a little space below the navlinks
  $sidebar .= '<div class="m-t-1"></div>';
  // make any sidebar text appear after navigation
  $sidebar .= $page->sidebar; 
}
*/
