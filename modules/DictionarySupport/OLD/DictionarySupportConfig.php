<?php namespace ProcessWire;
// DEBUG disable file compiler for this file
// FileCompiler=0

class DictionarySupportConfig extends ModuleConfig {

  public function getDefaults() {
    return array(
      'sourcefield' => 'datasource',
      'optionsfield' => 'options',
      'logfield' => 'dict_log',
      'jobfield' => 'dict_jobs',
  // canonical name : Processwire template mappings
      'dictionary_template' => 'dictionary',
      'headword_template' => 'headword',
      'variant_template' => 'variant',
      'wordform_template' => 'wordform',
  // canonical name : XML tagname mappings
      'tagmappings' => '{
  "entry":"entry",
  "headword":"U",
  "related":"R",
  "comment":"K",
  "meaning":"J",
  "variant":"Q",
  "wordform":"B",
  "wordform_example":"I"
}',
  // canonical name : Processwire field mappings
      'fieldmappings' => '{
  "headword":"title",
  "related":"related",
  "comment":"comment",
  "meaning":"meaning",
  "variants":"variants",
  "wordforms":"wordforms",
  "wordform_examples":"wordform_examples"
  }',
      );
  }

  public function getInputfields() {
    $inputfields = parent::getInputfields();

    // check required module
    if (!$this->modules->isInstalled("FieldtypeSelectExtOption")) {
      $f = $this->modules->get("InputfieldMarkup");
      $this->message("FieldtypeSelectExtOption module is missing.", Notice::warning);
      $f->value = '<p>FieldtypeSelectExtOption module is missing. Install it before using this module.</p>';
      $f->columnWidth = 50;
      $fieldset->add($f);
    }

    // check required PHP extension
    if (!class_exists('XMLReader')) {
      $f = $this->modules->get("InputfieldMarkup");
      $this->message("PHP XMLReader support is missing in the execution environment.", Notice::warning);
      $f->value = '<p>PHP XMLReader support is missing in the execution environment. Install it before using this module.</p>';
      $f->columnWidth = 50;
      $fieldset->add($f);
    }

/*
    $dm = $this->modules->get("DictionarySupport");
    $f = $this->modules->get("InputfieldMarkup");
    $this->message("FieldtypeSelectExtOption module is missing.", Notice::warning);
    $f->value = '<p>FieldtypeSelectExtOption module is missing. Install it before using this module.</p>';
    $f->columnWidth = 50;
    $fieldset->add($f);
*/

/********************  Basic settings *********************************/
    $fieldset = $this->wire('modules')->get("InputfieldFieldset");
    $fieldset->label = __("Module information and usage tips");
    $fieldset->collapsed = InputfieldFieldset::collapsedYes;

    $f = $this->modules->get("InputfieldMarkup");
    $f->label = "About the module";
    $f->columnWidth = 50;
    $f->value = "<p>
This module provides various support functions to import, edit and display dictionaries.<br />
It has been created to handle author's dictionaries in the field of Digital Humanities.<br />
For more information check the module's home at ... github ...
</p>
<p>
Quick howto:<br />
- Create field types.<br />
- Create templates.<br />
- Configure the module.<br />
- Create a dictionary page, upload a file and assign the import tag to it.<br />
- Click on save.<br />
</p>";
    $fieldset->add($f);

    $f = $this->modules->get("InputfieldMarkup");
    $f->label = "Tips";
    $f->columnWidth = 50;
    $f->value = "<ul>
<li>Large dictionaries take considerable time to import.
The current PHP max_execution_time is ".ini_get('max_execution_time')." second.
The module will try to stop its actions before this time is passed and continue the import process in the background.
Please note that long running tasks are also affected by the Web server's time limits (e.g. fastcgi_read_timeout).</li>
<li>It is possible to import large dictionaries in smaller chunks. You can split the original file by e.g. letters.</li>
<li>If you're using characters other that ascii then you might run into collation issues while searching.
Fix these by changing the default utf8_general_ci MySQL collation to utf8_unicode_ci.
This slightly affects search performance.</li>
<li></li>
</ul>";
    $fieldset->add($f);

    $inputfields->add($fieldset);

/********************  Field name settings ****************************/
    $fieldset = $this->wire('modules')->get("InputfieldFieldset");
    $fieldset->label = __("Field setup");

    $f = $this->modules->get('InputfieldSelect');
    $f->attr('name', 'sourcefield');
    $f->label = 'File field to process';
    $f->description = __('The file field that contains the source of the dictionary. The field should support the use of "import", "delete" and "update" tags.');
    $f->options = array();
    $f->required = true;
    $f->columnWidth = 50;
    foreach ($this->wire('fields') as $field) {
      if (!$field->type instanceof FieldtypeFile) continue;
      $f->addOption($field->name, $field->label);
    }
    $fieldset->add($f);

    $f = $this->modules->get('InputfieldSelect');
    $f->attr('name', 'optionsfield');
    $f->label = 'Field for options';
    $f->description = __('A "Select External Option" checkbox field that refers to the module\'s database table.');
    $f->options = array();
    $f->columnWidth = 50;
    foreach ($this->wire('fields') as $field) {
      // TODO FieldtypeSelectExtOption is in the global namespace atm
      if (!$field->type instanceof \FieldtypeSelectExtOption) continue;
      $f->addOption($field->name, $field->label);
    }
    $fieldset->add($f);

    $f = $this->modules->get('InputfieldSelect');
    $f->attr('name', 'logfield');
    $f->label = 'Field for storing import and other log entries';
    $f->description = __('The module will store various log messages in this field. It should be excluded from display on the frontend.');
    $f->options = array();
    $f->columnWidth = 50;
    foreach ($this->wire('fields') as $field) {
      if (!$field->type instanceof FieldtypeTextarea) continue;
      $f->addOption($field->name, $field->label);
    }
    $fieldset->add($f);

    $f = $this->modules->get('InputfieldSelect');
    $f->attr('name', 'jobfield');
    $f->label = 'Field for storing import and other job entries for offline execution.';
    $f->description = __('The module will store various job entries in this field. It should be excluded from display on the frontend.');
    $f->options = array();
    $f->columnWidth = 50;
    foreach ($this->wire('fields') as $field) {
      if (!$field->type instanceof FieldtypeTextarea) continue;
      $f->addOption($field->name, $field->label);
    }
    $fieldset->add($f);

    $inputfields->add($fieldset);

/********************  Template settings ******************************/
    $fieldset = $this->wire('modules')->get("InputfieldFieldset");
    $fieldset->label = __("Template setup");

    $f = $this->modules->get('InputfieldSelect');
    $f->attr('name', 'dictionary_template');
    $f->label = 'Dictionary template (root) that contains dict source and options';
    $f->description = __('Fields: datasource* (files), dict_jobs (textarea) and dict_logs (textarea).');
    $f->options = array();
    $f->required = true;
    $f->columnWidth = 50;
    foreach($this->wire('templates') as $template) {
      if ($template->hasField('datasource')) { // TODO check for a better field
        $f->addOption($template->name, $template->name);
      }
    }
    $fieldset->add($f);

    $f = $this->modules->get('InputfieldSelect');
    $f->attr('name', 'headword_template');
    $f->label = 'Template that stores dictionary headwords';
    $f->description = __('It should have a Page Reference field named "variants".');
    $f->options = array();
    $f->required = true;
    $f->columnWidth = 50;
    foreach($this->wire('templates') as $template) {
      if ($template->hasField('variants')) { // TODO check for a better field
        $f->addOption($template->name, $template->name);
      }
    }
    $fieldset->add($f);

    $f = $this->modules->get('InputfieldSelect');
    $f->attr('name', 'variant_template');
    $f->label = 'Template that stores headword variants (by author / epoch / region etc.).';
    $f->description = __('The template should have a Page Reference field named "wordforms".');
    $f->options = array();
    $f->required = true;
    $f->columnWidth = 50;
    foreach($this->wire('templates') as $template) {
      if ($template->hasField('wordforms')) { // TODO check for a better field
        $f->addOption($template->name, $template->name);
      }
    }
    $fieldset->add($f);

    $f = $this->modules->get('InputfieldSelect');
    $f->attr('name', 'wordform_template');
    $f->label = 'Template that stores a wordform (writing form of a headword variant).';
    $f->description = __('The template should have a Textarea field named "wordform_examples".');
    $f->options = array();
    $f->required = true;
    $f->columnWidth = 50;
    foreach($this->wire('templates') as $template) {
      if ($template->hasField('wordform_examples')) { // TODO check for better field
        $f->addOption($template->name, $template->name);
      }
    }
    $fieldset->add($f);

    $inputfields->add($fieldset);

/********************  Input mapping settings *************************/
    $fieldset = $this->wire('modules')->get("InputfieldFieldset");
    $fieldset->label = __("Input XML mapping setup");

    $f = $this->modules->get('InputfieldTextarea');
    $f->attr('name', 'tagmappings');
    $f->label = __('Canonical name <-> XML tagname mappings in JSON.');
    $f->description = __('Canonical names: headword, variant, wordform[, wordform_example, comment, related, meaning]');
    $f->stripTags = true;
    $f->useLanguages = false;
    $f->columnWidth = 50;
    $fieldset->add($f);
    
/* TODO field names are fixed atm.
    $f = $this->modules->get('InputfieldTextarea');
    $f->attr('name', 'fieldmappings');
    $f->label = __('Canonical name <-> field name mappings in JSON.');
    $f->description = __('Canonical names: headword, variants, wordforms[, wordform_examples, comment, related, meaning]');
    $f->stripTags = true;
    $f->useLanguages = false;
    $f->columnWidth = 50;
    $fieldset->add($f);
*/

    $inputfields->add($fieldset);

    return $inputfields;
  }
}
