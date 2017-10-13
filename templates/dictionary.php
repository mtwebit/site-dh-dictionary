<?php namespace ProcessWire;
// DEBUG disable file compiler for this file
// FileCompiler=0

// Jumbotron
$content .= "<div class='jumbotron'>";
$content .= "    <h1 class='display-3'>{$headline}</h1>";
$content .= "    <p class='lead'>{$page->summary}</p>";
$content .= "</div>";

$sidebar = $page->sidebar;

// always use the default language for listing headwords
// TODO multilanguage dictionaries are not supported atm
$lang = $user->language;
$user->language = $languages->get("default");


if (isset($input->get->w)) {

  $pattern = html_entity_decode($input->get->w);
  $pattern = str_replace('"', '', $pattern);

  // %^= bypasses the MySQL fulltext index and the limitations (and benefits) that go along with that.
  $sidebar .= '<ul class="nav"><div class="col-xs-12">';
  if (mb_strlen($pattern)==1) { // a single letter
    $sidebar .= wire('modules')->DictionarySupport->renderLetterNav($page, $pattern, null, ' class="btn btn-secondary btn-sm btn-block" role="button"', true);
  } else {
    $sidebar .= wire('modules')->DictionarySupport->renderNav($page, "title^={$pattern}");
  }
  $sidebar .= "</div></ul>\n";

  $content .= '<h3>'.__('Headwords starting with text ').'"'.$pattern.'".</h3>';
  $content .= '<div>'.wire('modules')->DictionarySupport->renderHeadwords($page, 'title^="'.$pattern.'"', null).'</div>';

} else {

  $sidebar .= '<div class="col-xs-12 btn-group-vertical">';
  $sidebar .= wire('modules')->DictionarySupport->renderLetterNav($page, null, null, ' class="btn btn-secondary btn-sm btn-block" role="button"', true);
  $sidebar .= '</div>';

  // Primary content is the page's body copy
  $content .= $page->body;

  $content .= '<h3>'.__('Random headwords sample').'</h3>';
  $content .= '<div>'.wire('modules')->DictionarySupport->renderHeadwords($page, 'limit=30,sort=random', null).'</div>';

}

$user->language = $lang;
