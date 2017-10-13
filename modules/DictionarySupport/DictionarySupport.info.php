<?php namespace ProcessWire;
// DEBUG disable file compiler for this file
// FileCompiler=0

/**
 * Module information for ProcessWire 'DictionarySupport' module
 *
 */

$info = array(
  'title' => 'Dictionary support module',
  'version' => 1,
  'summary' => 'The module provides support functions to import and display dictionaries.',
  // TODO edit this link
  'href' => 'https://processwire.com',
  'singular' => true, // contains hooks
  'autoload' => true, // attaches to hooks
  'icon' => 'link', // fontawesome icon
  'permission' => '', // required to use the module
  'permissions' => array( // used by the module
		'dict-manage' => 'Manage dictionaries'
	),
  'page' => array( // we also create an admin page for this module
    'name' => 'dict-manage',
    'parent' => '/admin/page/',
    'title' => 'Dictionary management',
    'template' => 'admin'
  ),
);
