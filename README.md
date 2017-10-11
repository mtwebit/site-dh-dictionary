# DH Dictionary site profile for ProcessWire
A site profile to import, edit and display author's dictionaries.

## Modules
* FieldtypeSelectExtOption - displays options from a database table
* DictionarySupport - provides support functions to import, process and display dictionaries

## Fields
* dict_source - filefield for source files (XML)
* dict_options - global options for the dictionary
* dict_jobs - pending jobs for the dictionary (e.g. import, purge etc.)
* dict_log - job logs (e.g. import warnings etc.)
* xml_data - XML data for a headword

## Templates
* dictionary - root node of the dictionary, specifies options, holds source files, logs and job entries
* headword - stores all data about a headword
