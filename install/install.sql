# --- WireDatabaseBackup {"time":"2017-10-13 15:01:22","user":"","dbName":"mikesdev","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `data` mediumtext COLLATE utf8_hungarian_ci NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

DROP TABLE IF EXISTS `dictionarysupport`;
CREATE TABLE `dictionarysupport` (
  `option_key` int(10) unsigned NOT NULL DEFAULT '0',
  `option_value` text,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `dictionarysupport` (`option_key`, `option_value`, `comment`) VALUES('1', 'Do not actually import/update/delete anything', NULL);
INSERT INTO `dictionarysupport` (`option_key`, `option_value`, `comment`) VALUES('2', 'Purge the dictionary before import', NULL);

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES('41', '163');

DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext COLLATE utf8_hungarian_ci NOT NULL,
  `data1020` mediumtext COLLATE utf8_hungarian_ci,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1020` (`data1020`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('27', '<h3>The page you were looking for is not found.</h3>\n\n<p>Please use our search engine or navigation above to find the page.</p>', NULL);
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1001', '<p>There are a few pages here to serve as examples, but this site profile does not make any attempt to demonstrate all that ProcessWire can do. To learn more or ask questions, visit the <a href=\"http://www.processwire.com/talk/\" target=\"_blank\" rel=\"noreferrer\">ProcessWire forums</a> or <a href=\"http://modules.processwire.com/categories/site-profile/\">browse more site profiles</a>. If you are building a new site, this minimal profile is a good place to start. You may use these existing templates and design as they are, or you may replace them entirely.</p>', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1002', '<p>ProcessWire gives you full control over your fields, templates and markup. It provides a powerful template system that works the way you do. Not to mention, ProcessWire\'s API makes working with your content easy and enjoyable. <a href=\"http://processwire.com\">Learn more</a></p>', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1004', '<h2>Pertineo vel dignissim, natu letalis fere odio</h2>\n\n<p>Magna in gemino, gilvus iusto capto jugis abdo mos aptent acsi qui. Utrum inhibeo humo humo duis quae. Lucidus paulatim facilisi scisco quibus hendrerit conventio adsum.</p>\n\n<h3>In utinam facilisi eum vicis feugait nimis</h3>\n\n<p>Iusto incassum appellatio cui macto genitus vel. Lobortis aliquam luctus, roto enim, imputo wisi tamen. Ratis odio, genitus acsi, neo illum consequat consectetuer ut.</p>\n\n<blockquote>Wisi fere virtus cogo, ex ut vel nullus similis vel iusto. Tation incassum adsum in, quibus capto premo diam suscipere facilisi. Uxor laoreet mos capio premo feugait ille et. Pecus abigo immitto epulae duis vel. Neque causa, indoles verto, decet ingenium dignissim.</blockquote>\n\n<p>Patria iriure vel vel autem proprius indoles ille sit. Tation blandit refoveo, accumsan ut ulciscor lucidus inhibeo capto aptent opes, foras.</p>\n\n<h3>Dolore ea valde refero feugait utinam luctus</h3>\n\n<p>Usitas, nostrud transverbero, in, amet, nostrud ad. Ex feugiat opto diam os aliquam regula lobortis dolore ut ut quadrum. Esse eu quis nunc jugis iriure volutpat wisi, fere blandit inhibeo melior, hendrerit, saluto velit. Eu bene ideo dignissim delenit accumsan nunc. Usitas ille autem camur consequat typicus feugait elit ex accumsan nutus accumsan nimis pagus, occuro. Immitto populus, qui feugiat opto pneum letalis paratus. Mara conventio torqueo nibh caecus abigo sit eum brevitas. Populus, duis ex quae exerci hendrerit, si antehabeo nobis, consequat ea praemitto zelus.</p>\n\n<p>Immitto os ratis euismod conventio erat jus caecus sudo. code test Appellatio consequat, et ibidem ludus nulla dolor augue abdo tego euismod plaga lenis. Sit at nimis venio venio tego os et pecus enim pneum magna nobis ad pneum. Saepius turpis probo refero molior nonummy aliquam neque appellatio jus luctus acsi. Ulciscor refero pagus imputo eu refoveo valetudo duis dolore usitas. Consequat suscipere quod torqueo ratis ullamcorper, dolore lenis, letalis quia quadrum plaga minim.</p>\n\n<h3>Si lobortis singularis genitus ibidem saluto</h3>\n\n<ul><li>Feugiat eligo foras ex elit sed indoles hos elit ex antehabeo defui et nostrud.</li>\n	<li>Letatio valetudo multo consequat inhibeo ille dignissim pagus et in quadrum eum eu.</li>\n	<li>Aliquam si consequat, ut nulla amet et turpis exerci, adsum luctus ne decet, delenit.</li>\n	<li>Commoveo nunc diam valetudo cui, aptent commoveo at obruo uxor nulla aliquip augue.</li>\n</ul><p>Iriure, ex velit, praesent vulpes delenit capio vero gilvus inhibeo letatio aliquip metuo qui eros. Transverbero demoveo euismod letatio torqueo melior. Ut odio in suscipit paulatim amet huic letalis suscipere eros causa, letalis magna.</p>\n\n<ol><li>Feugiat eligo foras ex elit sed indoles hos elit ex antehabeo defui et nostrud.</li>\n	<li>Letatio valetudo multo consequat inhibeo ille dignissim pagus et in quadrum eum eu.</li>\n	<li>Aliquam si consequat, ut nulla amet et turpis exerci, adsum luctus ne decet, delenit.</li>\n	<li>Commoveo nunc diam valetudo cui, aptent commoveo at obruo uxor nulla aliquip augue.</li>\n</ol>', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1645', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1646', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1647', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1648', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1649', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1650', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1651', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1652', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1653', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1654', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1655', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1656', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1657', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1658', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1659', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1660', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1661', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1662', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1663', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1664', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1665', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1666', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1667', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1668', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1669', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1670', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1671', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1672', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1673', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1674', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1675', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1676', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1677', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1678', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1679', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1680', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1681', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1682', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1683', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1684', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1685', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1686', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1687', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1688', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1689', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1690', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1691', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1692', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1693', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1694', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1695', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1696', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1697', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1698', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1699', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1700', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1701', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1702', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1703', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1704', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1020`) VALUES('1705', '', '');

DROP TABLE IF EXISTS `field_button_class`;
CREATE TABLE `field_button_class` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_button_class` (`pages_id`, `data`) VALUES('1039', 'btn-bootstrap-outline');
INSERT INTO `field_button_class` (`pages_id`, `data`) VALUES('1040', 'btn-info-outline');

DROP TABLE IF EXISTS `field_button_icon`;
CREATE TABLE `field_button_icon` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_button_icon` (`pages_id`, `data`) VALUES('1039', 'fa-book');
INSERT INTO `field_button_icon` (`pages_id`, `data`) VALUES('1040', 'fa-book');

DROP TABLE IF EXISTS `field_button_link`;
CREATE TABLE `field_button_link` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_button_link` (`pages_id`, `data`) VALUES('1039', 'http://v4-alpha.getbootstrap.com/getting-started/introduction/');
INSERT INTO `field_button_link` (`pages_id`, `data`) VALUES('1040', 'http://processwire.com/docs/');

DROP TABLE IF EXISTS `field_button_title`;
CREATE TABLE `field_button_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_button_title` (`pages_id`, `data`) VALUES('1039', 'Bootstrap »');
INSERT INTO `field_button_title` (`pages_id`, `data`) VALUES('1040', 'ProcessWire »');

DROP TABLE IF EXISTS `field_button_tooltip`;
CREATE TABLE `field_button_tooltip` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_button_tooltip` (`pages_id`, `data`) VALUES('1039', 'Bootstrap Documentation');
INSERT INTO `field_button_tooltip` (`pages_id`, `data`) VALUES('1040', 'ProcessWire Documentation');

DROP TABLE IF EXISTS `field_card_text`;
CREATE TABLE `field_card_text` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext COLLATE utf8_hungarian_ci NOT NULL,
  `data1020` mediumtext COLLATE utf8_hungarian_ci,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1020` (`data1020`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_card_text` (`pages_id`, `data`, `data1020`) VALUES('1037', '<h4 class=\"card-title\">ProcessWire</h4>\n\n<p class=\"card-text\">ProcessWire is an open source CMS and web framework aimed at the needs of designers, developers and their clients.</p>\n\n<p><a class=\"btn btn-secondary\" href=\"http://processwire.com/docs/\" title=\"\">ProcessWire »</a></p>', '<h4 class=\"card-title\">ProcessWire</h4>\n\n<p class=\"card-text\">A ProcessWire egy nyílt forrású tartalomkezelő és webfejlesztő-rendszer.</p>\n\n<p><a class=\"btn btn-secondary\" href=\"http://processwire.com/docs/\" title=\"\">ProcessWire »</a></p>');
INSERT INTO `field_card_text` (`pages_id`, `data`, `data1020`) VALUES('1038', '<h4 class=\"card-title\">Bootstrap</h4>\n\n<p class=\"card-text\">Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive, mobile first projects on the web.</p>\n\n<p><a class=\"btn btn-secondary\" href=\"http://v4-alpha.getbootstrap.com/getting-started/introduction/\" title=\"\">Bootstrap »</a></p>', '<h4 class=\"card-title\">Bootstrap</h4>\n\n<p class=\"card-text\">A Bootstrap a legnépszerűbb HTML, CSS, és Javascript keretrendszer reszponzív, mobilbarát webrendszerek fejlesztésére.</p>\n\n<p><a class=\"btn btn-secondary\" href=\"http://v4-alpha.getbootstrap.com/getting-started/introduction/\" title=\"\">Bootstrap »</a></p>');
INSERT INTO `field_card_text` (`pages_id`, `data`, `data1020`) VALUES('1039', '<h4 class=\"card-title\">About this profile</h4>\n\n<p class=\"card-text\">This is a basic multi-language Processwire site profile using Bootstrap for templating.</p>\n\n<p class=\"card-text\"><a class=\"btn btn-secondary\"	href=\"/en/about/\">Read more</a></p>', '<h4 class=\"card-title\">A profilról</h4>\n\n<p class=\"card-text\">Ez egy alapszintű többnyelvű Processwire web profil, amely Bootstrap-alapú sablont használ.</p>\n\n<p class=\"card-text\"><a class=\"btn btn-secondary\"	href=\"https://webteszt.mit.bme.hu/hu/about/\">További részletek</a></p>');

DROP TABLE IF EXISTS `field_card_type`;
CREATE TABLE `field_card_type` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;


DROP TABLE IF EXISTS `field_cards`;
CREATE TABLE `field_cards` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text COLLATE utf8_hungarian_ci NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_cards` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1', '1039,1037,1038', '3', '1034');

DROP TABLE IF EXISTS `field_dict_jobs`;
CREATE TABLE `field_dict_jobs` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_dict_jobs` (`pages_id`, `data`) VALUES('1043', '\n');

DROP TABLE IF EXISTS `field_dict_log`;
CREATE TABLE `field_dict_log` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;


DROP TABLE IF EXISTS `field_dict_options`;
CREATE TABLE `field_dict_options` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_dict_options` (`pages_id`, `data`, `sort`) VALUES('1043', '2', '0');

DROP TABLE IF EXISTS `field_dict_source`;
CREATE TABLE `field_dict_source` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text COLLATE utf8_hungarian_ci NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `tags` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `tags` (`tags`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_dict_source` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `tags`) VALUES('1043', 'sample-dict.xml', '0', '{\"0\":\"Sample data from the letters of Kelemen Mikes\",\"1020\":\"Mintaadatok Mikes Kelemen levelezéséből\"}', '2017-10-13 13:47:57', '2017-10-13 13:47:57', 'import');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) COLLATE utf8_hungarian_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text COLLATE utf8_hungarian_ci NOT NULL,
  `data1020` text COLLATE utf8_hungarian_ci,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  KEY `data_exact1020` (`data1020`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1020` (`data1020`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_headline` (`pages_id`, `data`, `data1020`) VALUES('1', 'Minimal Bootstrap4 Profile', 'Egyszerű Bootstrap4 profil');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text COLLATE utf8_hungarian_ci NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1', 'bigger-terminal.jpg', '0', '{\"0\":\"We\'re gonna need a bigger terminal.\",\"1020\":\"Nagyobb kifutóra lesz szükségünk\"}', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1', 'design-team.jpg', '1', '{\"0\":\"You know, there are better ways to manage a design team.\",\"1020\":\"Tudod, jobban is irányíthatnád az embereidet\"}', '2016-11-17 10:45:35', '2016-11-17 10:45:35');

DROP TABLE IF EXISTS `field_language`;
CREATE TABLE `field_language` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('40', '1010', '0');
INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('41', '1010', '0');

DROP TABLE IF EXISTS `field_language_files`;
CREATE TABLE `field_language_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text COLLATE utf8_hungarian_ci NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'site--templates--_main-php.json', '0', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'site--templates--search-php.json', '1', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--admintheme-php.json', '2', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--field-php.json', '3', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--fieldgroups-php.json', '4', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--fields-php.json', '5', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--fieldselectorinfo-php.json', '6', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--fieldtype-php.json', '7', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--fieldtypemulti-php.json', '8', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--functions-php.json', '9', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--inputfield-php.json', '10', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--inputfieldwrapper-php.json', '11', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--interfaces-php.json', '12', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--languagefunctions-php.json', '13', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--modules-php.json', '14', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--pagefile-php.json', '15', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--pageimage-php.json', '16', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--pages-php.json', '17', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--password-php.json', '18', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--process-php.json', '19', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--sanitizer-php.json', '20', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--session-php.json', '21', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--sessioncsrf-php.json', '22', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--wire-php.json', '23', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--wirecache-php.json', '24', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--wirehttp-php.json', '25', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--wiretempdir-php.json', '26', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--core--wireupload-php.json', '27', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--admintheme--adminthemedefault--adminthemedefault-module.json', '28', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--admintheme--adminthemedefault--adminthemedefaulthelpers-php.json', '29', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--admintheme--adminthemedefault--default-php.json', '30', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--admintheme--adminthemereno--adminthemereno-module.json', '31', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--admintheme--adminthemereno--adminthemerenohelpers-php.json', '32', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--admintheme--adminthemereno--debug-inc.json', '33', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--fieldtype--fieldtypecomments--commentfilterakismet-module.json', '34', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--fieldtype--fieldtypecomments--commentform-php.json', '35', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--fieldtype--fieldtypecomments--commentlist-php.json', '36', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--fieldtype--fieldtypecomments--fieldtypecomments-module.json', '37', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--fieldtype--fieldtypecomments--inputfieldcommentsadmin-module.json', '38', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--fieldtype--fieldtypedatetime-module.json', '39', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--fieldtype--fieldtypefieldsettabopen-module.json', '40', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--fieldtype--fieldtypefile-module.json', '41', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--fieldtype--fieldtypefloat-module.json', '42', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--fieldtype--fieldtypemodule-module.json', '43', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--fieldtype--fieldtypepage-module.json', '44', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--fieldtype--fieldtypepagetable-module.json', '45', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--fieldtype--fieldtyperepeater--fieldtyperepeater-module.json', '46', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--fieldtype--fieldtyperepeater--inputfieldrepeater-module.json', '47', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--fieldtype--fieldtypeselector-module.json', '48', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--fieldtype--fieldtypetext-module.json', '49', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--fieldtype--fieldtypetextarea-module.json', '50', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--fieldtype--fieldtypeurl-module.json', '51', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldasmselect--inputfieldasmselect-module.json', '52', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldbutton-module.json', '53', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldcheckbox-module.json', '54', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldcheckboxes--inputfieldcheckboxes-module.json', '55', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldckeditor--inputfieldckeditor-module.json', '56', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfielddatetime--inputfielddatetime-module.json', '57', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldemail-module.json', '58', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldfieldset-module.json', '59', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldfile--inputfieldfile-module.json', '60', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldfloat-module.json', '61', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldform-module.json', '62', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldhidden-module.json', '63', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldimage--inputfieldimage-module.json', '64', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldinteger-module.json', '65', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldmarkup-module.json', '66', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldname-module.json', '67', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldpage--inputfieldpage-module.json', '68', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldpageautocomplete--inputfieldpageautocomplete-module.json', '69', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselect-module.json', '70', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselectmultiple-module.json', '71', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldpagename--inputfieldpagename-module.json', '72', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetable-module.json', '73', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetableajax-php.json', '74', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldpagetitle--inputfieldpagetitle-module.json', '75', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldpassword-module.json', '76', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldradios--inputfieldradios-module.json', '77', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldselect-module.json', '78', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldselectmultiple-module.json', '79', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldselector--inputfieldselector-module.json', '80', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldsubmit--inputfieldsubmit-module.json', '81', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldtext-module.json', '82', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldtextarea-module.json', '83', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--inputfield--inputfieldurl-module.json', '84', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--jquery--jquerywiretabs--jquerywiretabs-module.json', '85', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--languagesupport--languageparser-php.json', '86', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--languagesupport--languagesupport-module.json', '87', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--languagesupport--languagesupportfields-module.json', '88', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--languagesupport--languagesupportpagenames-module.json', '89', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--languagesupport--languagetabs-module.json', '90', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--languagesupport--processlanguage-module.json', '91', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--languagesupport--processlanguagetranslator-module.json', '92', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--markup--markuppagefields-module.json', '93', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--markup--markuppagernav--markuppagernav-module.json', '94', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--pagepaths-module.json', '95', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--pagerender-module.json', '96', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processfield--processfield-module.json', '97', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processfield--processfieldexportimport-php.json', '98', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processforgotpassword-module.json', '99', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processhome-module.json', '100', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processlist-module.json', '101', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processlogin--processlogin-module.json', '102', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processmodule--processmodule-module.json', '103', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processmodule--processmoduleinstall-php.json', '104', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processpageadd--processpageadd-module.json', '105', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processpageclone-module.json', '106', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processpageedit--processpageedit-module.json', '107', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processpageeditimageselect--processpageeditimageselect-module.json', '108', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processpageeditlink--processpageeditlink-module.json', '109', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processpagelist--processpagelist-module.json', '110', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processpagelister--processpagelister-module.json', '111', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processpagesearch--processpagesearch-module.json', '112', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processpagesort-module.json', '113', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processpagetrash-module.json', '114', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processpagetype--processpagetype-module.json', '115', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processpageview-module.json', '116', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processpermission--processpermission-module.json', '117', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processprofile--processprofile-module.json', '118', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processrecentpages--processrecentpages-module.json', '119', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processrole--processrole-module.json', '120', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processtemplate--processtemplate-module.json', '121', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processtemplate--processtemplateexportimport-php.json', '122', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--process--processuser--processuser-module.json', '123', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--session--sessionhandlerdb--processsessiondb-module.json', '124', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--session--sessionhandlerdb--sessionhandlerdb-module.json', '125', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--session--sessionloginthrottle--sessionloginthrottle-module.json', '126', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--system--systemnotifications--systemnotifications-module.json', '127', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--system--systemnotifications--systemnotificationsconfig-php.json', '128', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--system--systemupdater--systemupdater-module.json', '129', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--textformatter--textformatterentities-module.json', '130', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--modules--textformatter--textformattermarkdownextra--markdown-php.json', '131', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--templates-admin--debug-inc.json', '132', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--templates-admin--default-php.json', '133', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1020', 'wire--templates-admin--topnav-inc.json', '134', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');

DROP TABLE IF EXISTS `field_language_files_site`;
CREATE TABLE `field_language_files_site` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text COLLATE utf8_hungarian_ci NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'site--templates--_main-php.json', '0', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1012', 'site--templates--search-php.json', '1', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1013', 'site--templates--_main-php.json', '0', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1013', 'site--templates--search-php.json', '1', '[\"\"]', '2016-11-17 10:45:35', '2016-11-17 10:45:35');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1009', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1011', '160');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1015', '168');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1017', '169');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1021', '172');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1022', '174');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1040', '186');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1580', '189');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

DROP TABLE IF EXISTS `field_sidebar`;
CREATE TABLE `field_sidebar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext COLLATE utf8_hungarian_ci NOT NULL,
  `data1020` mediumtext COLLATE utf8_hungarian_ci,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1020` (`data1020`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1020`) VALUES('1', '', '');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1020`) VALUES('1001', '', '');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1020`) VALUES('1002', '<h3>ProcessWire</h3>\n\n<ul><li><a href=\"http://processwire.com/talk/\">Support</a></li>\n	<li><a href=\"http://processwire.com/docs/\">Documentation</a></li>\n	<li><a href=\"http://processwire.com/docs/tutorials/\">Tutorials</a></li>\n	<li><a href=\"http://cheatsheet.processwire.com/\">API Cheatsheet</a></li>\n	<li><a href=\"http://modules.processwire.com/\">Modules/Plugins</a></li>\n</ul>', '');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1020`) VALUES('1004', '<h3>Sudo nullus</h3>\n\n<p>Et torqueo vulpes vereor luctus augue quod consectetuer antehabeo causa patria tation ex plaga ut. Abluo delenit wisi iriure eros feugiat probo nisl aliquip nisl, patria. Antehabeo esse camur nisl modo utinam. Sudo nullus ventosus ibidem facilisis saepius eum sino pneum, vicis odio voco opto.</p>', '');

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext COLLATE utf8_hungarian_ci NOT NULL,
  `data1020` mediumtext COLLATE utf8_hungarian_ci,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1020` (`data1020`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_summary` (`pages_id`, `data`, `data1020`) VALUES('1', '', '');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1020`) VALUES('1001', 'This is a basic minimal site for you to use in developing your own site or to learn from', '');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1020`) VALUES('1002', 'ProcessWire is an open source CMS and web application framework aimed at the needs of designers, developers and their clients.', '');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1020`) VALUES('1004', 'Mos erat reprobo in praesent, mara premo, obruo iustum pecus velit lobortis te sagaciter populus.', NULL);
INSERT INTO `field_summary` (`pages_id`, `data`, `data1020`) VALUES('1005', 'View this template\'s source for a demonstration of how to create a basic site map. ', NULL);
INSERT INTO `field_summary` (`pages_id`, `data`, `data1020`) VALUES('1043', 'A sample dictionary with some accented headword letters.', 'Szótári minta ékezetes betűket tartalmazó címszavakkal.');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text COLLATE utf8_hungarian_ci NOT NULL,
  `data1020` text COLLATE utf8_hungarian_ci,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  KEY `data_exact1020` (`data1020`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1020` (`data1020`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1', 'Home', 'Nyitólap');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('2', 'Admin', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('3', 'Pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('6', 'Add Page', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('7', 'Trash', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('8', 'Tree', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('9', 'Save Sort', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('10', 'Edit', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('11', 'Templates', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('16', 'Fields', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('21', 'Modules', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('22', 'Setup', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('23', 'Login', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('27', '404 Page', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('28', 'Access', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('29', 'Users', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('30', 'Roles', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('31', 'Permissions', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('32', 'Edit pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('34', 'Delete pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('35', 'Move pages (change parent)', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('36', 'View pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('50', 'Sort child pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('51', 'Change templates on pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('52', 'Administer users', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('53', 'User can update profile/password', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('54', 'Lock or unlock a page', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('300', 'Search', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('301', 'Empty Trash', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('302', 'Insert Link', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('303', 'Insert Image', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('304', 'Profile', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1000', 'Search', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1001', 'About', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1002', 'About Processwire', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1004', 'Child page example 2', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1005', 'Site Map', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1006', 'Use Page Lister', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1007', 'Find', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1009', 'Languages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1010', 'English', 'Angol');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1011', 'Language Translator', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1015', 'Recent', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1016', 'Can see recently edited pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1017', 'Logs', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1018', 'Can view system logs', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1019', 'Can manage system logs', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1020', 'Hungarian', 'Magyar');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1021', 'Upgrades', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1022', 'DB Backups', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1023', 'Manage database backups (recommended for superuser only)', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1025', 'Repeaters', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1026', 'cards', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1030', 'Use the front-end page editor', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1034', 'en', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1040', 'Dictionary management', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1043', 'Sample dictionary', 'Szótári minta');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1580', 'Dictionary management', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1581', 'View dictionaries', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1582', 'Edit dictionaries', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1583', 'Manage dictionaries', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1645', '-e', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1646', '-től', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1647', 'Abafája', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1648', 'Absolon', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1649', 'Afrika', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1650', 'Agnus_Dei', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1651', 'Agrippa', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1652', 'Babilon', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1653', 'Babilónia', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1654', 'Babylas', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1655', 'Bacchus', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1656', 'Bajazet', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1657', 'Balak', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1658', 'Balkán', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1659', 'Baszileiosz', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1660', 'Caesar', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1661', 'Caesarea', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1662', 'Canalis-part', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1663', 'Canalis', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1664', 'Candia', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1665', 'Candidae', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1666', 'Cantacuzino', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1667', 'Cantharas', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1668', 'Cantipreus', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1669', 'dadogó', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1670', 'dagadni', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1671', 'dagadozni', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1672', 'dagadás', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1673', 'dajka', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1674', 'dalmatika', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1675', 'damaszkusz$beli', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1676', 'damaszkuszi', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1677', 'eb', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1678', 'écossai', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1679', 'édes$anya', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1680', 'édes$atya', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1681', 'édes-keserű', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1682', 'édes', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1683', 'édesség', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1684', 'ég_1', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1685', 'ég_2', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1686', 'égbe$kiáltó', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1687', 'üldöz', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1688', 'üldözhet', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1689', 'üldözni', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1690', 'üldözvén', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1691', 'üldöző', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1692', 'ülhet', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1693', 'ülni', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1694', 'ültet', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1695', 'ültetett', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1696', 'ültetve', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1697', 'ültetvén', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1698', 'ültetés', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1699', 'üzön_küpri', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1700', 'ő$alatta', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1701', 'ő$alá', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1702', 'ő$alája', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1703', 'ő$bele', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1704', 'ő$belőle', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1705', 'ő$benne', '');

DROP TABLE IF EXISTS `field_xml_data`;
CREATE TABLE `field_xml_data` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1645', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"-e\">\n<U>-e</U>\n<K>ok</K>\n<Q>e</Q>\n<B>e</B>\nmenyben lévö anyaszent egy házrol kell<I>e</I> érteni az irásnak ezeket a (C/B 1080)\nmagáért is hozta evilágra? de gondolkodik<I>e</I> tsak arrol is. hogy mitsoda (IJE 45)\n<Q>é</Q>\n<B>é</B> – 52\nöis dolgunkot. de azt el hiszi<I>é</I> kéd, hogy nehezen szokhatom ehez (TL 11)\nel már kéd. hogy ha kell<I>é</I> ész három szót, meg tanulni (TL 12)\navezért fogadták. de jaj! nem ollyan<I>é</I> ezeknek azö nagy dicsöségek., és (TL 13)\nnem fa vágohoz illendö felelet volt<I>é</I> ez? de gondolom hogy a (TL 14)\nadni. mert ugyan is. hellyes ajándék<I>é</I> egy vezértöl, egy fejdelemnek. virágot (TL 15)\nitt illyen szokás vagyon, de jó<I>é.</I> illendö<I>é,</I> neszollyunk már többet az (TL 15)\na’Templomban, ha későn fekszik <I>é</I> le, ha az olvasoját koptattya (ML 318)\nle, ha az olvasoját koptattya <I>é,</I> a’ Kőnyvit szaggattya <I>é,</I> azt (ML 318)\nkoptattya <I>é,</I> a’ Kőnyvit szaggattya <I>é,</I> azt a’ Hugom meg engedi (ML 318)\nDe Őtsém Uram nem volna <I>é</I> jo Josef Őtsém Uramnak még (ML 318)\nnem emlékezik hogy meg bérmálták <I>é</I> vagy sem, abban telyes bizonyos (ML 319)\nit talám, de ne tsudáljuk <I>é</I> az Isten rendelésit, a’ ki (ML 319)\nis tudom miért szokták mondani, {…}, <I>é</I> tsufos mondás, de ezen a (ML 320)\nŐtsém Uram lehet<I>é</I> olyanak, a’ kinek tsak egy (ML 321)\nazt kérdi tőlem ha van <I>é</I> pénz nálam, egy polturát akarok (ML 323)\nmeg kérdem ha visza adgya <I>é,</I> igéri hogy visza adgya, azután (ML 323)\nSimon Urat tudakozom ha él <I>é</I> még, ne sajnálya meg irni (ML 324)\nbirhattya. Akor válik mint tekinti Szép<I>é</I> rut<I>é</I> kell szeretni. Lakja Várost (ML 329)\nbirhattya. Akor válik mint tekinti Szép<I>é</I> rut<I>é</I> kell szeretni. Lakja Várost (ML 329)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1646', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"-t&#x151;l\">\n<U>-től</U>\n<K>ez címszó??</K>\n<Q>töl</Q>\n<B>töl</B> – 2\nConcilium Generale. a mely 1545 <I>töl,</I> 1563 dig tarta (C/A 275)\n<Q>töll</Q>\n<B>töll</B> – 1\nConcilium generalé. a mely 1545.<I>töll.</I> 1563 mig tarta (C/B 1108)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1647', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Abaf&#xE1;ja\">\n<U>Abafája</U>\n<T_/>\n<K>ok</K>\n<Q>Abafája</Q>\n<B>Abafája</B>\na’ Válasz várásnak, és ha <I>Abafája</I> Americában volna a’ Választ későbbre (ML 316)\n<B>Abafáján</B> – 4\nszivem kedvem, minden gondolatom tsak <I>Abafáján</I> vagyon, az oda valo utozásom (ML 308)\ntermettek, oh mely édesek azok <I>Abafáján,</I> és mely keserűek nékem it (ML 320)\nigen el holtak, el fogytak, <I>Abafáján</I> pedig hálá Istennek szaporodnak a (ML 324)\nazt nem hittem volna, hogy <I>Abafáján</I> Francia Iskola légyen, de mit (ML 325)\n<B>Abafájára</B> – 1\ngyőnyőrű szép kis Vendég erkezvén <I>Abafájára</I> azt nékem, meg irják, ezt (ML 317)\n<B>Abafáját</B> – 1\nlátom, hogy az Isten szereti <I>Abafáját,</I> mivel Plebanusa vagyon (:de mindenkor (ML 317)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1648', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Absolon\">\n<U>Absolon</U>\n<T_/>\n<SZ_/>\n<K>ok</K>\n<Q>Absolon</Q>\n<B>Absolon</B>\na hartz meg lészen, az <I>Absolon</I> hada, noha több számu volt (IK/A 42)\n<B>Absolonak</B> – 2\nhalálal vevé el. a báttyának <I>Absolonak</I> kezéböl (IK/A 173)\n<I>Absolonak,</I> az Attya ellen valo fel (IK/A 173)\n<B>Absolonon</B> – 1\n<I>Absolonon</I> az Isten büntetése, nem csak (IK/B 522)\n<B>Absolonrol</B> – 1\nA negyedik példa <I>Absolonrol,</I> a Dávid harmadik fiárol, aki (IK/A 42)\n<B>Absolont</B>\nellenkezö példákra, Tekínsd meg aboldogtalan <I>Absolont,</I> a ki minden résziben meg (IK/A 223)\n<Q>absolon</Q>\n<B>absolon</B> – 11\nazt. hogy mi modon kénszeritté <I>absolon</I> joábot hogy hozája menne. akihez (KKU 368)\nde joáb nem akarván engedelmeskedni. <I>absolon</I> mondá a szolgainak. tudgyátok hogy (KKU 368)\nolyan formán véle, azért felelé <I>absolon.</I> mert ketszer küldöttem utánnad,. de (KKU 368)\nesztendö mulva. meg ölé ötet <I>absolon.</I> az öttse, aki mind az (IK/A 41)\nIstennek itélete:) ugy történék hogy <I>absolon</I> el akarván szaladni és egy (IK/A 42)\nhala meg, az ö battya <I>absolon</I> keze által (IK/B 522)\nDávid midön meg hallá az <I>absolon</I> halálát, fel mene akapu felet (ISZ 254)\nDavid ki szaladván jérusalemböl, az <I>absolon</I> fel támadásakor, elönkbe adgya, hogy (ISZ 255)\nhadat tartani, mint hogy az <I>absolon</I> fel támadásának az elsö jele (ISZ 257)\nsok kiséröjök vala, azirás, az <I>absolon</I> fel támadásának, azt az elsö (ISZ 259)\n<B>absolonhoz</B> – 1\ntudván. azon fel indula, és <I>absolonhoz</I> mene, kérdvén tölle, hogy miért (KKU 368)\n<B>absolont</B> – 3\nazt tselekedni. jóáb meg halgatván <I>absolont,</I> meg békélteté ötet akirályal. eszerént (KKU 368)\nellenkezö példa. tekinttsed <I>absolont.</I> az ki is mindenben által (IK/B 567)\n<B>absolontól</B> – 1\nkét esztendövel azután testvér attyafiátol <I>absolontól</I> meg öleték. oh Isten mely (IK/B 408)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1649', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Afrika\">\n<U>Afrika</U>\n<T_/>\n<F_/>\n<K>ok</K>\n<Q>Afrika</Q>\n<B>Afrikában</B>\nnyérték meg. Europában. Asiában. és <I>Afrikában</I> anagy, és gazdag tartományokot. a (TL 262)\nA Donatisták. ilyen formában kezdödének, <I>Afrikában</I> vala egy donatus nevü püspök (C/A 268)\nmely tsudák pedig nem voltanak <I>Afrikában,</I> a Martyrok temetöjén (C/A 383)\nolosz országban, Galliában. spanyol országban. <I>Afrikában.</I> és siciliában. és más szigetekben (SUT 635)\n<Q>afrika</Q>\n<B>afrikában</B> – 19\nszáz negyven ezer emberel ment <I>afrikában</I> a carthagobéliek ellen., a midön (TL 119)\nés barátot. ettenek már meg, <I>afrikában,</I> és amérikában. azok a vad (TL 122)\nrabbá eset. és atengeri tolvajok. <I>afrikában</I> vitték. az olosz ur; jó (TL 172)\na midön a rettentö habok. <I>afrikában</I> a palmari szélyekre ki veté (MN 88)\nhogy flandriai kereskedökel volnánk. kik <I>afrikában</I> mennének kereskedni. mint hogy az (MN 96)\nerre az okra valo nézve. <I>afrikában</I> mindenüt a hol lehete magok (C/A 269)\nerre az okra valo nézve, <I>afrikában</I> mindenüt. ahol lehete. magok közül (C/B 1103)\nországnak aszokása külömbözö, aromaiak idejében. <I>afrikában</I> és spanyol országban egyenlö szokás (ISZ 172)\nfövenynek, a fövenyes földért, arénaira <I>afrikában,</I> atzintermeket szérüknek is nevezték (KSZ 378)\nvagy galliábol egyiptumban, palestinában, vagy <I>afrikában</I> menni (KSZ 418)\ntészen emlékezetet egy nehány gyülésröl <I>afrikában</I> még ö elötte sok idövel (KSZ 419)\nigen jovalották nékik a szegénységet, <I>afrikában</I> azt hagyák vala a Cléricusoknak (KSZ 426)\nfel dulák abarbarusok, A midön <I>afrikában</I> ütének avandalusok., possidius irása szerént (KSZ 457)\nvannak még más ostoba barbarusok <I>afrikában,</I> ugy mint a feketék, és (KSZ 458)\nnevezik. az, Évangyéliumot prédikálá Egyiptusban. <I>afrikában.</I> Mauritaniaban, és lybiaban. még azt (SUT 563)\n<Q>Áfrika</Q>\n<B>Áfrikában</B>\nmondgya, hogy azö idejében voltanak <I>Áfrikában</I> olyan helyek, a hol a (C/A 721)\n<Q>áfrika</Q>\n<B>áfrika</B> – 1\na szándékban is megyünk most <I>áfrika</I> felé. hogy pálmeriában érkezvén. ót (MN 97)\n<B>áfrikában</B> – 9\ntengeri tolvajok el fogják. és <I>áfrikában</I> el adgyák., és egy nehány (TL 139)\nhogy ki válthattya, tengere ülvén, <I>áfrikában</I> érkezik, fel keresi a mátkáját (TL 139)\nkell menni. miért ment pompéus <I>áfrikában.</I> és észak felé,? mi vivé (KKU 301)\na Communio alat. leg elöbször <I>áfrikában</I> kezdödék szent Agoston idejében. a (C/A 855)\nA donatisták illyen formában kezdödének. <I>áfrikában</I> vala, egy donátus nevü püspök (C/B 1102)\na Communio alat. leg elöbször <I>áfrikában</I> kezdödék. szent Agoston idejében, a (C/B 1541)\npunica nyelv meg volt még <I>áfrikában</I> a közönséges nép közöt, szent (KSZ 405)\nki tisztelettel, és tsendeségel legyen. <I>áfrikában,</I> a nép fent álva halgatta (KSZ 409)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1650', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Agnus_Dei\">\n<U>Agnus Dei</U>\n<T_/>\n<K>ok</K>\n<Q>Agnus Dei</Q>\n<B>Agnus Dei</B> – 11\naz ostyának meg szegése, az <I>Agnus Dei,</I> a Communio, a háláadás (C/A 785)\nmisereatur. se Indulgentiam, se Ecce <I>Agnus Dei,</I> se Domine non sum (C/A 859)\n<B>Agnus Deire</B>\nszáz esztendötöl fogvást, a harmadik <I>Agnus Deire</I> azt felelik. {…} adgy békeséget (C/A 850)\nszáz esztendötöl fogvást. a harmadik <I>Agnus Deire.</I> azt felelik, {…} adgy békeséget (C/B 1537)\n<B>Agnus Deit</B>\n{…} Az <I>Agnus Deit,</I> a melyet a nép (C/A 849)\nmondották a Confiteort, se az <I>Agnus Deit,,</I> se Domine non sum (C/A 858)\na Confitéort mondgya, és az <I>Agnus Deit,</I> a midön a Domine (C/A 858)\nmondották a Confitéort, se az <I>agnus Deit.</I> se Domine non sum (C/B 1543)\n<Q>agnus Dei</Q>\n<B>agnus Dei</B>\nkell a népnek tselekedni az <I>agnus Dei</I> alat (C/B 1537)\n<B>agnus Deit</B>\n{…} Az <I>agnus Deit.</I> a melyet a nép (C/B 1536)\n<Q>agnus dei</Q>\n<B>agnus dei</B>\naz osttyának meg szegése. az <I>agnus dei,</I> a Communio, a hálá (C/B 1487)\n<Q>Agnust Dei [!]</Q>\n<B>Agnust Deit [!]</B> – 1\na Confitéort mondgya, és az <I>Agnust Deit.</I> a midön, a Domine (C/B 1543)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1651', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Agrippa\">\n<U>Agrippa</U>\n<T_/>\n<K>ok, Agrippinara utalni??</K>\n<Q>Aggripa</Q>\n<B>Aggripának</B> – 1\nClaudius császár, az ifiu <I>Aggripának</I> adta volt a Calcidus országot (SUT 666)\n<Q>Aggrippa</Q>\n<B>Aggrippa</B> – 2\nlevelet is külde Herodiádának., az <I>Aggrippa</I> hugának, a melyben meg irá (SUT 536)\nA sidokot pedig igen segitté <I>Aggrippa.</I> a Calcidai király, ugy anyira (SUT 664)\n<B>Aggrippához</B> – 1\na pálestinai Csézáréábol meg indula. <I>Aggrippához</I> mene filippi Csézáréába, amely város (SUT 816)\n<Q>Ággrippa</Q>\n<B>Ággrippát</B> – 1\nbé tölté az ö baráttyát <I>Ággrippát.</I> és néki adá az Annya (SUT 564)\n<Q>Agripa</Q>\n<B>Agripát</B> – 1\na Császár még is látván <I>Agripát.</I> mondá Macronak, nem parantsoltam valaé (SUT 540)\n<Q>Agrippa</Q>\n<B>Agrippa</B> – 123\nmeg öleté, egy fia marada. <I>Agrippa</I> nevü., ezt Romában nevelteték fel (SUT 536)\njovedelem is nem tarta sokáig, <I>Agrippa.</I> nem szenvedheté el. hogy egy (SUT 536)\n<I>Agrippa</I> kételenitteték tehát Tiberiades városát el (SUT 536)\nujitották fia haláláért valo keserüségit, <I>Agrippa</I>is, noha az adoságért, de ezen (SUT 536)\nís inkáb, hogy Arístobolus, az <I>Agrippa</I> testvér öttse ís mellette. volt (SUT 537)\nrea álla, de mint hogy <I>Agrippa</I> még azon kivül is ados (SUT 537)\nszáz dragmánál, ezel a pénzel <I>Agrippa.,</I> Ánthédonusba mene. és már a (SUT 537)\nvolt költtsön a császár pénziböl, <I>Agrippa</I> azt fogadá hogy sohová sem (SUT 537)\n<I>Agrippa</I> olosz ország szélyire érkezvén onnét (SUT 538)\namelyben tudtára adá acsászárnak. hogy <I>Agrippa.</I> judéábol el szököt, hogy meg (SUT 538)\nnem fizeti azt a sumát, <I>Agrippa</I> pedig meg nem ütközék. ezen (SUT 538)\ncsászár, azt a kis fiát, <I>Agrippa</I> gond viselése alá adá, hogy (SUT 538)\negy kor, hogy kájus, és <I>Agrippa.</I> szekéren sétálni menének, <I>Agrippa</I> hizelkedésböl (SUT 538)\nés <I>Agrippa.</I> szekéren sétálni menének, <I>Agrippa</I> hizelkedésböl mondá kájusnak. hogy kivánna (SUT 538)\nEutikus, az <I>Agrippa</I> szolgája ezeket a beszedeket mind (SUT 539)\nmély földnire Romátol, ót levén, <I>Agrippa.</I> sürgetni kezdé Tiberiust Antonia által (SUT 539)\nelégedhetik véle, de hanem a, <I>Agrippa</I> vigyázon magára, ne hogy a (SUT 539)\nmaga mulattságára, kájus. és maga <I>Agrippa</I> elötte mentenek, Antonia kezdé kérni (SUT 539)\nelé beszéllé a Császárnak, az <I>Agrippa</I> beszédit. melyeket mondot volt a (SUT 540)\nmacron nem gondolhatván azt hogy <I>Agrippa</I> volna az az ember, meg (SUT 540)\ntováb nem élsz öt napnál, <I>Agrippa</I> ezt tsak meg neveté, mind (SUT 540)\nmint ha szabadságban let volna, <I>Agrippa.</I> igen jó neven vevé azt (SUT 540)\nmeg esvén a szive, az <I>Agrippa</I> véletlen nyomoruságán, meg nyeré macrontol (SUT 541)\nafogságban. hogy azt tudtára adgya. <I>Agrippa</I> épen akor a feredöben akara (SUT 543)\nnyelven. az oroszlány meg holt, <I>Agrippa</I> jol értette, és el nem (SUT 543)\naz Annya báttyának, filepnek Tetrárkiáját. <I>Agrippa</I> Romában marada egy ideig kajus (SUT 564)\nillyen állapotban valának Alexándriában, amidön <I>Agrippa</I> kéré a Császárt birodalmának második (SUT 567)\nuttyát. mint leg rövideb utat. <I>Agrippa</I> hajora üle puzol városaban, és (SUT 567)\nilletik vala az Alexandriaiak az <I>Agrippa</I> királyságát. gyalázatal illetvén ezt a (SUT 568)\n<I>Agrippa</I> nem marada sokáig Alexandriában. bizonysága (SUT 568)\nirának. hasonlot az elsöhöz. és <I>Agrippa</I> kezében adák, a ki fogadá (SUT 568)\n<I>Agrippa,</I> amint idé fellyeb meg mondok (SUT 572)\na Tetrárka nevet viselte. de <I>Agrippa</I> akirályi nevet. Herodiáda. a Hérodes (SUT 574)\n<I>Agrippa</I> könyen által látván a Herodes (SUT 574)\nis oda érkezék, és az <I>Agrippa</I> leveleit kezében adá, a császár (SUT 575)\nlyonban. a felesége Herodiáda az <I>Agrippa</I> huga lévén, ö érette meg (SUT 575)\nvolna amaga házában, Aristobolus. az <I>Agrippa</I> atyafia, Helcías. és más több (SUT 581)\nnélkül. akepit a templomba tenné. <I>Agrippa</I> ezen közben bé mene a (SUT 583)\ningerellye, kájus által látvan az <I>Agrippa</I> gondolattyát., mivel senki a gondolatokot (SUT 583)\n<I>Agrippa</I> ezekre a szokra olyanná lön (SUT 584)\ntisztelték. Tiberius. Augustus. és Markus <I>Agrippa.</I> a kiknek tisztelné kájus emlékezeteket (SUT 585)\n@: Az <I>Agrippa</I> nagy anya az Asmonea familiábol (SUT 585)\nmivel még <I>Agrippa</I> is. a kit én bé (SUT 586)\nTemplomokban tegyék. ájulás nélkül. az <I>Agrippa</I> levelét olvasván eleinte mindgyárt haragra (SUT 586)\n<I>Agrippa</I> nem vevé válaszát a Csaszárnak (SUT 586)\nnem érezteté véle haragjának sulyát, <I>Agrippa</I> tehát a Császárt magához hivá (SUT 586)\nhogy ötet szerentsésé boldogá tegye. <I>Agrippa</I> felelé. hogy a haszon keresésnek (SUT 586)\nAgrippát. hogy kérne valamit tölle. <I>Agrippa</I> akoron mondá, Uram annyi (SUT 586)\niránt meg változtattam szándékomot, az <I>Agrippa</I> tekéntetiért. a kitöl semit meg (SUT 587)\n<I>Agrippa</I> pedig ebben a dologban magát (SUT 604)\njelit adá. mint igaz szivének. <I>Agrippa,</I> a ki minden szerentséjit kájusnak (SUT 604)\nsok számu rabokot. fel fegyveresithetne, <I>Agrippa</I> erre mondá. hogy igen gyenge (SUT 605)\na hol volt Claudius, De <I>Agrippa</I> modot találván abban hogy Claudiusal (SUT 605)\na melyben azt mondgya. hogy <I>Agrippa,</I> és Hérodes baráttyinak tekéntetekért, az (SUT 607)\n<I>Agrippa</I> kevés idö mulva. meg indula (SUT 608)\nszenteltetésiért valo költtséget is segiteni. <I>Agrippa</I> véghez vivén mind azt. valamit (SUT 608)\nö artatlan, és tiszta életiért. <I>Agrippa</I> ditseré jó erköltsét. és az (SUT 609)\n<I>Agrippa</I> közonségesen sok buzgoságot mutata vallásahoz (SUT 609)\naz Attyárol. Idumeus familiábol volna, <I>Agrippa.</I> ezeket meg tudván. Csézáréába magához (SUT 609)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1652', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Babilon\">\n<U>Babilon</U>\n<T_/>\n<F_/>\n<K>ok</K>\n<Q>babilon</Q>\n<B>babilon</B> – 1\nmondá, nem az a nagy <I>babilon</I>é ez, a melyben helyheztettem. székemet (KKU 410)\n<Q>babylon</Q>\n<B>babylonba</B> – 2\naz ebédet mely nálad vagyon <I>babylonba</I> Danielnek, ki az oroszlányok vermében (É 409)\nfogva, és le tévé ötet <I>babylonba,</I> a verem felibe, az ö (É 409)\n<B>babylonban</B> – 1\nEs vala egy férfiu. ki <I>babylonban</I> lakik vala, és annak neve (É 345)\n<B>babylonbol</B> – 1\naz ur, hogy a hamiság <I>babylonbol,</I> a vén biráktol származot, a (É 345)\n<B>babylont</B> – 1\nvagyon. és mondá Habakuk, uram, <I>babylont</I> nem láttam, és a vermet (É 409)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1653', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Babil&#xF3;nia\">\n<U>Babilónia</U>\n<T_/>\n<F_/>\n<K>ok, babiloniaknak ez itt \'babilóniai\', de formailag ehhez a címszóhoz tartozik, vagy menjen alakváltozatnak a melléknévhez??</K>\n<Q>Babilonia</Q>\n<B>Babiloniábol</B>\nmeg tért sidoknak, a levelét <I>Babiloniábol</I> dátállya, mivel Romát, ezen a (SUT 631)\n<B>Babiloniának</B> – 1\nImé illyen társakal járok vala <I>Babiloniának</I> tágas uttzáin heverkezvén a sárban (IK/A 160)\n<Q>babilonia</Q>\n<B>babilonia</B> – 6\na szerdengesti agáknak., csak mennyenek <I>babilonia</I> segittségire., de egyik sem esék (TL 169)\nnap mulva meg indittá táborát. <I>babilonia</I> felé. meg akarván menekedni a (MN 54)\nAzonba a tábora. a kevély <I>babilonia</I> eleiben érkezvén. amurates vini kezdé (MN 55)\nöket a császár hüségére. azután <I>babilonia</I> felé indula. a kit meg (MN 78)\na balványozásnak veszedelmin, melyet jelenti <I>babilonia.</I> a szent János látásiban (C/A 378)\négben abálványozásnak veszedelmin. melyet jelenti <I>babilonia</I> a szent jános látásiban. 18 (C/B 1188)\n<B>babiloniába</B> – 1\nötet. jerusalemben, vasban verék, és <I>babiloniába</I> vivék, az hol rettentö nyomoruságot (IK/B 428)\n<B>babiloniában</B> – 23\nha még az a pasa <I>babiloniában</I> vagyon akit vezérnek mondgyák. hogy (TL 178)\namidön rabságra és lántzra téteték <I>babiloniában.</I> az urhoz folyamodék, meg száná (KKU 411)\nszuratá néki. és fogságra vivé <I>babiloniában</I> a hol nyomorultul hala meg (IK/A 66)\nés vásban vivék <I>babiloniában,</I> ót rettentö tömlötzben veték, és (IK/A 67)\ntalász. mint a sidok találának <I>babiloniában.</I> az olyan hely, a hol (IK/A 355)\nki szuratá az szemeit, és <I>babiloniában</I> vivé, az hol nyomorultul hala (IK/B 427)\njeremias propheta az sidokot. hogy <I>babiloniában.</I> aranyal, ezüstel fel ékesitetet bálványokot (IK/B 687)\naz egész népet a fogságra, <I>babiloniában</I> ugyan ez is volt utolso (C/A 124)\nnépet Jékoniás királyával. fogságban vivé <I>babiloniában</I> (C/A 129)\n{…} Miképen éltenek <I>babiloniában</I> a sidok (C/A 130)\nPtolomeus egyiptumban királyá let, seleucus <I>babiloniában.</I> és syriában uralkodék. ptolomeus judeát (C/A 132)\n{…} Midön a sidok <I>babiloniában</I> lettenek volna fogságban. az Isten (C/A 144)\naki azö gonoszságáért. fogva viteték <I>babiloniában.</I> a hol meg tére., és (C/B 1008)\nvivék az egész népet fogságra., <I>babiloniában..</I> ugyan ez volt leg utolso (C/B 1008)\nnépet jékoniás királyával fogságban vivé <I>babiloniában</I> (C/B 1013)\n{…} miképen éltenek <I>babiloniában</I> a sidok (C/B 1013)\nptolomeus, egyiptumban királyá let. seleucus. <I>babiloniában,</I> és syriában uralkodék. ptoloméus. judeát (C/B 1015)\n{…} Midön a sidok <I>babiloniában</I> lettek volna fogságban. az Isten (C/B 1025)\negyiptumbol valo ki menetelétöl fogvást, <I>babiloniában</I> valo fogságáig. aharmadik. asidok rabságbol (ISZ 173)\negyiptumbol valo kimeneteleknek idejétöl fogvást. a<I>babiloniában</I> lévö fogságokig. a mely idö (ISZ 180)\nA kiket pedig <I>babiloniában</I> vitték., azok a király, és (ISZ 264)\nmindnyájan viszá nem térének. hanem <I>babiloniában</I> meg maradának, és akörül valo (ISZ 265)\negyiptumban sok ideig lakék, onnét <I>babiloniában</I> mene. Cambys király idejében, ahol (ISZ 268)\n<B>babiloniábol</B> – 6\ndolgokot ne illesétek. Fussatok ki <I>babiloniábol.,</I> ki ki tsak a szaladásrol (IK/A 158)\ntisztátalant ne illesetek. * fussatok ki <I>babiloniábol.</I> és ki ki tarttsa meg (IK/B 509)\nAz el oszlás után <I>babiloniábol.</I> egy papot küldének samariában, hogy (C/A 139)\napocalypsisböl. meny ki én népem <I>babiloniábol</I> és ne legyetek részesek az (C/A 254)\nAz el oszlás után, <I>babiloniábol.</I> egy papot küldének samariában., hogy (C/B 1021)\n<B>babiloniából</B> – 1\napocalypsisböl. meny ki én népem <I>babiloniából,</I> és ne legyetek részesek. az (C/B 1095)\n<B>babiloniához</B> – 2\na meg szeplösitet. és bálványozo <I>babiloniához</I> hasonlitani., holot mitsoda vilagosan valo (C/A 254)\na meg szeplösitet, és bálványozo <I>babiloniához</I> tenni; holot micsoda vilagosan valo (C/B 1095)\n<B>babiloniaknak</B> – 1\nvala nékik. hogy békeségel szenvedgyék. a<I>babiloniaknak.</I> rabságát., hogy engedelmesek legyenek fejdelmekhez (C/B 1016)\n<B>babilonianak</B> – 1\nmásoknál. ihon minémü tarsakal járék <I>babilonianak</I> széllyes uttzáin, heverkezvén az sárban (IK/B 510)\n<B>babiloniát</B> – 3\nvesse reánk, el kel hagyni <I>babiloniát.</I> ne hogy részt vévén vétkeiben (É 835)\nszállás adásért. kezéhez. adta volt <I>babiloniát,</I> a mely városnak gubernátorja volt (MN 47)\nstorophila. igen jól tselekedted hogy <I>babiloniát</I> el hagytad. fogadásodot meg tartottad (KKU 316)\n<Q>babilonía</Q>\n<B>babiloníába</B> – 1\nA parthusok királya. viszá térvén <I>babiloníába,</I> és vitellius Antiokiában., Herodes nagy (SUT 545)\n<Q>Babylonia</Q>\n<B>Babyloniaba</B>\nbabyloniaba valo költözésben, és a <I>Babyloniaba</I> valo költözes után. Jékonias nemzé (É 869)\n<B>Babyloniaban</B> – 1\nne legyenek rontva. Látni fogtok <I>Babyloniaban.</I> mondá jérémiás proféta levelében a (IK/A 369)\n<B>Babyloniában</B>\nhogy az egész Mesopotámiában,, és <I>Babyloniában,</I> anyí sidokot ölének meg. hogy (SUT 597)\n<Q>babylonia</Q>\n<B>babyloniaba</B> – 2\nés annak attya fiait, a <I>babyloniaba</I> valo költözésben, és a Babyloniaba (É 869)\n<B>babyloniában</B> – 3\nés <I>babyloniában</I> vitetnék, a hol az után (IK/A 66)\nJérüsálem meg vétele után. Nabugodonozor <I>babyloniában</I> akarván a népet vinni. Jérémiás (IK/A 354)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1654', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Babylas\">\n<U>Babylas</U>\n<T_/>\n<SZ_/>\n<K>ez a címszó?? angol wikin is ezt találtam</K>\n<Q>babilás</Q>\n<B>babilásal</B> – 1\naz iffiu martyromok, kik szent <I>babilásal,</I> és szent balásal szenvedének, hihetö (KSZ 381)\n<Q>Babylas</Q>\n<B>Babylas</B> – 2\nprocessioval vitték bé a szent <I>Babylas</I> testét Julianus apostata idejében. eröl (C/A 892)\nprocessioval vitték bé. a szent <I>Babylas</I> martyrum testét. juliánus apostata idejében (C/B 1569)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1655', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Bacchus\">\n<U>Bacchus</U>\n<T_/>\n<SZ_/>\n<K>ok</K>\n<Q>Bacchus</Q>\n<B>Bacchus</B>\nnevezik vala, ugy mint Hercules. <I>Bacchus,</I> és azutan anagyob Istenekhez, a (SUT 565)\n<Q>bacchus</Q>\n<B>bacchus</B> – 4\nszüretkor valo vigasságal kezdettenek a <I>bacchus</I> tisztességére, az olimpiai játékokal az (ISZ 241)\nintették. hogy meg részegedgyenek a <I>bacchus</I> innepjein, korinthusban pedig ollyan aszszonyok (ISZ 242)\ntudgyák, hogy miböl állot a <I>bacchus</I> Ceremoniája, mindenüt tsak a venus (KSZ 309)\n<B>bacchusnak</B> – 1\na Céres Ceremoniai, és a <I>bacchusnak</I> valo áldozatok, mint hogy pedig (KSZ 340)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1656', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Bajazet\">\n<U>Bajazet</U>\n<T_/>\n<SZ_/>\n<K>mi a címszó? nem találtam</K>\n<Q>Bajazet</Q>\n<B>Bajazet</B>\n<I>Bajazet</I> meg akarván kérelni, mindeneket monda (MN 56)\n<Q>bajazet</Q>\n<B>bajazet</B> – 2\nleg inkáb az amurátes öttsei, <I>bajazet,</I> orcán, és ibrahim, felhetének leg (MN 56)\n<B>bajazetet</B> – 1\nparancsolná néki, hogy meg fojtassa <I>bajazetet.,</I> és orcánt., ezel a hamis (MN 56)\n<B>bajazetre</B> – 1\nmindgyárt ki mondá a sententiát, <I>bajazetre.</I> és orcanra (MN 56)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1657', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Balak\">\n<U>Balak</U>\n<T_/>\n<SZ_/>\n<K>ok</K>\n<Q>Bálák</Q>\n<B>Bálák</B> – 1\n<I>Bálák</I> a Moábitak királya magához hivatá (C/A 112)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1658', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Balk&#xE1;n\">\n<U>Balkán</U>\n<T_/>\n<F_/>\n<K>ok</K>\n<Q>balkány</Q>\n<B>balkány</B> – 1\nhinteni ajándékon a buzáját. a <I>balkány</I> nagy hegyeit. harmad napig hágván (TL 250)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1659', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Baszileiosz\">\n<U>Baszileiosz</U>\n<R>Vazul</R>\n<T_/>\n<SZ_/>\n<K>ez a címszó? ehhez ez az utaló tartozik</K>\n<Q>Basilius</Q>\n<B>Basilius</B> – 34\nlesz a több gyermekeknél, valamint {…} <I>Basilius,</I> és {…} Hieronimus. mondgyák. hogy még (É 30)\nszent Paulinus, szent Hyeronimus, szent <I>Basilius,</I> szent Agoston. szent Chrysostomus, a (É 227)\nAlexandriai. szent Cyrillus, és szent <I>Basilius</I> mondgyák. nem szabad akarattya ellen (É 458)\nvalo lészen atöbbinél, valamint szent <I>Basilius,</I> és szent Hieronimus mondgyák., hogy (É 491)\nszent Cyprianus. szent Ambrus szent <I>Basilius.</I> egy nehány Conciliumban Condemnáltaték (C/A 267)\nszent Athanásius. szent hilarius. szent <I>Basilius.</I> szent Ambrus. szent Agoston. szent (C/A 270)\naz Anyaszent egy ház tanitásával: <I>Basilius</I> CSaszárá lévén. Conciliumot hirdete, a (C/A 272)\nadá ki ellene. Leo. a <I>Basilius</I> fia, photiust a székböl ki (C/A 272)\nszent kelemen, Tertullianus Eusebius, szent <I>Basilius.</I> szent Hieronimus, szent Agoston nem (C/A 333)\nliturgiákbol., ugy mint a szent <I>Basilius,</I> és szent Chrysostomus lyturgiaibol,. meg (C/A 728)\nháznak lyturgiaibol, vagy Missaléibol., szent <I>Basilius,</I> szent Chrysostomus, mindenik a negyedik (C/A 754)\nmeg lehet látni a szent <I>Basilius</I> és szent Chrysostomus liturgiaibol., a (C/A 786)\nAnyaszent egy háznak., és szent <I>Basilius</I> azt tarttya hogy ezen imádság (C/A 829)\nezt a szokást pedig szent <I>Basilius</I> szerent az Apostoloktol vettük. Baronius (C/A 890)\nszent Cypriánus. szent ambrus. szent <I>basilius</I> egy nehány Conciliumokban Condemnáltaték (C/B 1102)\naz anyaszent egy ház tanitásával. <I>Basilius</I> Császára lévén. Conciliumot hirdete, a (C/B 1105)\nházaknak lyturgiaibol, vagy missáléibol. szent <I>Basilius,</I> szent Chrysostomus. mindenik a negyedik (C/B 1463)\nót sokáig marada, a Seleuciai <I>Basilius</I> tészen emlékezetet a tsudákrol melyeket (SUT 548)\n<Q>basilius</Q>\n<B>basilius</B>\nellene, a melyre. leo. a <I>basilius</I> (C/B 1105)\nszent kelemen., Tertulliánus. Eusebius. szent <I>basilius.</I> szent Hiéronimus, szent Agoston, nem (C/B 1153)\nliturgiákbol, ugy mint. a szent <I>basilius,</I> és szent Chrysostomus. liturgiáibol., még (C/B 1444)\nmeg lehet látni. a szent. <I>basilius,</I> és szent chrysostomus lyturgiajiban. {…} a (C/B 1487)\nez okáért is akarja szent <I>Basylius,</I> hogy ollyan embert keresünk. aki (É 333)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1660', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Caesar\">\n<U>Caesar</U><L_/>\n<T_/>\n<SZ_/>\n<K>ok</K>\n<Q>Caesár</Q>\n<B>Caesárt</B> – 1\nkevésnek tartá lenni., ki kénszeritté <I>Caesárt</I> arra, hogy mind a maga (KKU 301)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1661', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Caesarea\">\n<U>Caesarea</U><L_/>\n<R>Cezárea</R>\n<T_/>\n<F_/>\n<K>ok</K>\n<Q>Cesarea</Q>\n<B>Cesareába</B> – 2\nki küldék Jérusalemböl, és palestina <I>Cesareába</I> vívék. A kristus magais meg (SUT 550)\n@: XII Rész. haboruság <I>Cesareába.</I> és Jerusálembe (SUT 779)\n<Q>Cesárea</Q>\n<B>Cesáreában</B> – 1\nmás helyekre mene. és vegtire <I>Cesáreában.</I> a maga hazába érkezék, ót (SUT 524)\n<B>Cesáreábol</B> – 1\n<I>Cesáreábol.</I> atanítványok tharsisba küldék, hihetö tengeren (SUT 550)\n<Q>Césária</Q>\n<B>Césáriáig</B> – 1\nhajtván az ellene tet panaszra. <I>Césáriáig</I> kisére cestius Gallust. meg tsinálá (SUT 778)\n<Q>Czérárea [!]</Q>\n<B>Czéráreában [!]</B> – 1\nszáz nyilast, hogy <I>Czéráreában</I> vigyék azt az embert. azt (SUT 710)\n<Q>Czesarea</Q>\n<B>Czesarea</B> – 1\nkapuja. a nemzeteknek is, vala <I>Czesarea</I> városában, joppétol tiz mély földnire (SUT 532)\n<Q>Czésaréa</Q>\n<B>Czésaréába</B> – 1\naz Évangyeliumot. minden városoknak, mig <I>Czésaréába</I> jutna (É 522)\n<Q>Czésáréa</Q>\n<B>Czésáréába</B> – 1\nhárom ora felé dél után. <I>Czésáréába</I> érkezének (SUT 533)\n<Q>Czezárea</Q>\n<B>Czezáreában</B> – 1\ntáborára visza tére. a ki <I>Czezáreában</I> volt, Cestius hadat külde joppéhoz (SUT 792)\n<Q>czezárea</Q>\n<B>czezáreábol</B> – 1\nvevé. mindent meg igere, de <I>czezáreábol</I> samariaban menvén. nem gondolkodék igéretit (SUT 779)\n<Q>Czezáréa</Q>\n<B>Czezáréába</B> – 3\nuttyokot. és azon a napon <I>Czezáréába</I> erkezének., félix kérdezkedvén szent páltol (SUT 710)\nhanem azt felelé nékik. hogy <I>Czezáréába</I> menne, ahol pál is ot (SUT 718)\nAgrippa király, és ahuga Berenitza <I>Czezáréába</I> menének, hogy köszönttsék festust., meg (SUT 719)\n<B>Czezáréaban</B> – 2\natanitványokal., onnét földön meg indulván. <I>Czezáréaban</I> érkezék. és az Évangyelista filephez (SUT 703)\na fejdelem Cestius Gallushoz menvén <I>Czezáréaban.,</I> várust hagyá maga hellyet Gubernatornak (SUT 791)\n<Q>Czézaréa</Q>\n<B>Czézaréába</B> – 1\na sidok véle együt érkezének <I>Czézaréába,</I> más nap Cérémoniával szembe let (SUT 718)\n<Q>Czézárea</Q>\n<B>Czézáreába</B> – 2\ngubernátorhoz, a ki rend szerént <I>Czézáreába</I> lakot. Lysiás tarta attol. hogy (SUT 710)\nkevés fordulást tévén. viszá tére <I>Czézáreába</I> a feleségivel Drusillával, az ifiu (SUT 711)\n<B>Czézáreában</B> – 1\nFlorus <I>Czézáreában</I> érkezvén.egy levelet ira Cestius (SUT 783)\n<Q>Czézáréa</Q>\n<B>Czézáréába</B> – 5\nfogja néki mondani. a mikor <I>Czézáréába</I> fog jöni. szent pált pedig (SUT 711)\namég szent pál fogságban vala <I>Czézáréába.</I> ebben avárosba nagy oszlás történek (SUT 716)\nHarmad nap mulva hogy festus <I>Czézáréába</I> érkezék. Jérusalemben mene, a hol (SUT 718)\nAgrippa és Bérénitza sokáig mulatván <I>Czézáréába,</I> festus elö hozá a királynak (SUT 719)\nanépel, erre reá álla. és <I>Czézáréába</I> mene (SUT 783)\n<B>Czézáréában</B> – 5\nnégy napok alat. a melyeket <I>Czézáréában</I> tölté szent pál, érkezék Jérusalemböl (SUT 703)\nházba. melyet Hérodes épitetet vala <I>Czézáréában</I> (SUT 710)\nhanem két esztendeig tartá fogságba <I>Czézáréában</I> (SUT 712)\nfogságba olyan sokáig szent pált <I>Czézáréában,</I> De a sidok azt nem (SUT 717)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1662', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Canalis-part\">\n<U>Canalis-part</U><L_/>\n<R>Boszporusz-part</R>\n<F_/>\n<T_/>\n<P_/>\n<K>tn a címszó? korp nincs</K>\n<Q>Canalis part</Q>\n<B>Canalis parton</B>\nszükséges meg irni, hogy a <I>Canalis parton</I> vagyunk. a fekete tengernek (TL 27)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1663', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Canalis\">\n<U>Canalis</U><L_/>\n<R>Boszporusz</R>\n<F_/>\n<T_/>\n<P_/>\n<K>tn v. köznév a címszó? korp</K>\n<Q>Canalis</Q>\n<B>Canalis</B> – 3\nel. a fekete tengere, illyen <I>Canalis</I> nincsen az egész világon talám (TL 44)\nszerént ezt a holnapot. a <I>Canalis</I> parttyán tölttyük el, bár én (TL 145)\n<B>Canalisban</B> – 1\nhalat látni mint ebben a <I>Canalisban</I> vagyon. egynehány ezeret vonnak ki (TL 44)\n<B>Canalist</B> – 2\ngyönyörü <I>Canalist</I> végig láttyuk, a fekete tenger (TL 44)\ntenger, hol lehetne másut illyen <I>Canalist</I> találni,? a valo hogy ha (TL 44)\n<Q>Cánális</Q>\n<B>Cánálisból</B> – 1\nországot. CSudát csinálna ebböl. a <I>Cánálisból.</I> két felöl városokot, szép kastéllyokot (TL 44)\n<B>Cánálist</B> – 1\ngondolhatom. hogy ezt a szép <I>Cánálist</I> már kéd fel járta. azt (TL 27)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1664', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Candia\">\n<U>Candia</U><L_/>\n<T_/>\n<F_/>\n<P_/>\n<K>ez a címszó?? (=Kréta fővárosa??) korp van</K>\n<Q>candia</Q>\n<B>candia</B> – 1\nformában kezde a kreta. vagy <I>candia.</I> szigetének meg vételéhez (MN 73)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1665', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Candidae\">\n<U>Candidae</U><L_/>\n<T_/>\n<SZ_/>\n<P_/>\n<K>(mi a címszó? Magda szerint de silvae Candidae) tn vagy mi ez???</K>\n<Q>Candidae</Q>\n<B>Candidae</B> – 2\nvala Cardinalis Humbertus de silvae <I>Candidae.</I> a kiket nagy tisztelettel fogadá (C/A 273)\natudos humbertus Cardinalis. de silvae <I>Candidae..</I> a kiket nagy tisztelettel fogadá (C/B 1106)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1666', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Cantacuzino\">\n<U>Cantacuzino</U><L_/>\n<T_/>\n<SZ_/>\n<K>HL jegyzetek</K>\n<Q>Cantakuzéna</Q>\n<B>Cantakuzéna</B> – 1\ntzimerek, mert ezek mind a <I>Cantakuzéna</I> familiájábol mondgyák magokot. talám még (TL 241)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1667', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Cantharas\">\n<U>Cantharas</U><L_/>\n<T_/>\n<SZ_/>\n<P_/>\n<K>mi a címszó??</K>\n<Q>Cantharas</Q>\n<B>Cantharas</B> – 1\nés a Boethus fiának adá <I>Cantharas</I> simonak. de kevés idö mulva (SUT 608)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1668', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"Cantipreus\">\n<U>Cantipreus</U><L_/>\n<R>Cantipré</R>\n<T_/>\n<SZ_/>\n<K>(HL névmutatója alapján)</K>\n<Q>Cantipreus</Q>\n<B>Cantipreus</B> – 1\npárisi Cancellarius szedte ki az <I>Cantipreus</I> tamas püspök irásiból. az ki (IK/B 524)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1669', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"dadog&#xF3;\">\n<U>dadogó</U><L_/>\n<K>ok</K>\n<Q>dadogo</Q>\n<B>dadogok</B> – 1\nostobák, az elméjektompa, az részegesek <I>dadogok.,</I> alkalmatlanok minden jora (IK/B 580)\n<B>dadogoká</B> – 1\nigen közönséges, hogy a részegesek <I>dadogoká</I> lesznek, az elméjek meg tompul (IK/A 242)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1670', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"dagadni\">\n<U>dagadni</U><L_/>\n<K>ok korp</K>\n<KT_/>\n<Q>dagadni</Q>\n<B>dagadni</B> – 1\nhogy a buza szem kezd <I>dagadni.</I> és a vizet jol bé (TL 120)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1671', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"dagadozni\">\n<U>dagadozni</U><L_/>\n<K>ok korp</K>\n<KT_/>\n<Q>dagadozni</Q>\n<B>dagadozni</B> – 1\naz urunknak a lábai hogy <I>dagadozni</I> kezdének. tegnap viszá jövénk a (TL 162)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1672', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"dagad&#xE1;s\">\n<U>dagadás</U><L_/>\n<K>ok</K>\n<Q>dagadás</Q>\n<B>dagadás</B> – 2\naszszonynak., az ágyékán valami kis <I>dagadás</I> volt. mindgyárt azt gondolta hogy (TL 74)\nurnak. a mikor el mult a<I>dagadás,</I> el hitette magával hogy pestis (TL 74)\n<B>dagadást</B> – 2\nmellett valo szentelt vizel kentemeg a<I>dagadást,</I> mind addig valamég el nem (TL 74)\nfojása szoros lészen. görcsöt, és <I>dagadást</I> szokot okozni. valamint ezt láttyuk (IJE 26)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1673', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"dajka\">\n<U>dajka</U><L_/>\n<K>ok</K>\n<Q>dajka</Q>\n<B>dajka</B> – 3\nés anedvesség, arra vigyázon a <I>dajka,</I> hogy vizes levelet ne adgyon (TL 103)\na <I>dajka,</I> tisztán, és jó eledelel tartván (TL 103)\nannál nagyob gondviselés kel reájok. a<I>dajka</I> keziböl mikor ki veszik, ujjab (KKU 306)\n<B>dajkája</B> – 5\nszent szüzeségének, Attya helyet, és <I>dajkája</I> a kis Jésusnak. hogy hüségel (É 485)\nlenni. az aszszony aki néki <I>dajkája</I> volt (MN 115)\na szovát meg állitá. a <I>dajkája.</I> látván. hogy nem aharag, hanem (MN 130)\nszoptottak, hogy maga vitte a <I>dajkája</I> alá a széket. mikor szopni (IJE 84)\nmert viszá nem térhetvén. a <I>dajkája</I> ölében. akitöl minden baj nélkül (IJE 91)\n<B>dajkájának</B> – 4\nhagyván, a házal együt a <I>dajkájának</I> hadgya. fáradcságáért. de mint hogy (TL 105)\nakarván el veszteni. mondá a <I>dajkájának.</I> eleonora szükséges hogy hozám segittségel (MN 115)\nezt a hirt. mondá a <I>dajkájának.</I> Eleonora, én jobban által látom (MN 139)\nvéle mind azt a mit a<I>dajkájának</I> mondot volt., és látván azokbol (MN 139)\n<B>dajkáját</B> – 1\nsem felejté el. hogy a <I>dajkáját</I> is ki üzték. az udvarbol (MN 151)\n<B>dajkájirol</B> – 1\nmiphibozet, és joásnak, asidok királlyának <I>dajkájirol</I> (ISZ 213)\n<B>dajkájoktol</B> – 1\na<I>dajkájoktol;</I> és a kivánságok szerént ment (IJE 91)\n<B>dajkák</B> – 4\n{…} A <I>dajkák,</I> a terhes Aszonyok, a betegek (C/A 471)\n{…} A <I>dajkák.</I> a terhes aszszonyok, abetegek, azok (C/B 1258)\nkegyelmed. hogy a fö aszonyok <I>dajkák</I> legyenek (IJE 75)\nnem szenvednek a gyermekek, a <I>dajkák</I> gondviseletlenségek miat. ha valamely anya (IJE 77)\n<B>dajkáknak</B> – 2\njó erkölcsü, és jó természetü <I>dajkáknak</I> adgyák, és mihent a meg (C/A 665)\njó erkölcsü, és jó természetü <I>dajkáknak</I> adgyák., és mihent a meg (C/B 1401)\n<B>dajkáktol</B> – 1\nrontani elméjeket. és szokásokat, vagy a<I>dajkáktol.</I> vagy a tselédektöl, holot azt (IJE 82)\n<B>dajkárol</B> – 1\naz irás tsak éppen három <I>dajkárol</I> emlékezik, arebeka., miphibozet, és joásnak (ISZ 213)\n<B>dajkát</B> – 1\nkel vigyázni hogy ezeknek ollyan <I>dajkát</I> kel adni aki munkás. és (TL 103)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1674', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"dalmatika\">\n<U>dalmatika</U><L_/>\n<K>ok</K>\n<Q>dalmatica</Q>\n<B>dalmatica</B> – 1\nidejében közönséges köntös volt, {…} a <I>dalmatica</I> már valerianus Császár idejében szokásban (KSZ 410)\n<B>dalmaticat</B> – 1\na midön mindenkor Casulat, és <I>dalmaticat</I> viseltek, tartottanak különösön ollyanokot, de (KSZ 411)\n<B>dalmaticát</B> – 1\napapok, hanem szük köntöst, vagy <I>dalmaticát,</I> hogy könyebben járhassanak, és munkálodhassanak (KSZ 372)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1675', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"damaszkusz$beli\">\n<U>damaszkusz$beli</U><L_/>\n<K>ok korp nincs</K>\n<KT_/>\n<Q>Damaskus béli</Q>\n<B>Damaskus béliek</B>\npénz ajándékot adtanak volna a <I>Damaskus béliek.,</I> hogy meg nyerjék pereket (SUT 537)\nA <I>Damaskus béliek</I> meg tudván hogy a (SUT 797)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1676', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"damaszkuszi\">\n<U>damaszkuszi</U><L_/>\n<K>ok korp</K>\n<KT_/>\n<Q>damascusi</Q>\n<B>damascusi</B> – 3\nmeg öleti. az annyát. a <I>damascusi</I> basát. rakimát. fiastol el akarná (MN 62)\nés parancsolatot külde sinánnak, a <I>damascusi</I> basának. hogy mindenekröl nagy rendelést (MN 65)\nsultánnénak ki hirdeté; és a <I>damascusi</I> basának meg izené. hogy a (MN 66)\n<Q>Damaskusi</Q>\n<B>Damaskusi</B> – 2\nminden törvény látás nélkül, a <I>Damaskusi</I> gubernátor nagy vigyázásal örizteté akapukot (SUT 549)\n<B>Damaskusiak</B> – 1\nnépének, tisztartoja, örizi vala a <I>Damaskusiak</I> varosát, hogy engem meg fogna (É 144)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1677', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"eb\">\n<U>eb</U>\n<K>ok</K>\n<Q>eb</Q>\n<B>eb</B> – 1\nha a szokást nem tudná, <I>eb</I> szokás, kutya szokás. jaj édes (TL 10)\n<B>ebek</B> – 10\n{…} kitsodák azok az <I>ebek.</I> és azok a fiak. akikröl (É 208)\n{…} Az <I>ebek,</I> apogányok, kik minden féle vétkekben (É 208)\náldozatot el kezdették. {…} mennyetek ki <I>ebek,</I> a szent dolgok. a szenteket (É 226)\nadgya vala néki, de az <I>ebek</I> is el jönek vala, és (É 288)\nabbol sem adtanak néki, az <I>ebek</I> pedig nagyob. szánakodásal lévén hozája (KJÉ 702)\ndolgok., a szenteket illetik, az <I>ebek</I> ki menyenek. A kristusnak ezen (C/A 784)\nszent János látásiban vagyon kivül <I>ebek,</I> és varáslok, és szemtelenek. és (C/A 785)\ndolgok a szenteket illetik, az <I>ebek</I> ki mennyenek, valamint a kristus (C/B 1486)\naz apocalypsisben is vagyon., kivül <I>ebek,</I> és varáslok, és szemtelenek, és (C/B 1486)\nolyanok valának mint a dühöt <I>ebek,</I> akik mindenuvé futkostak ok nélkül (SUT 862)\n<B>ebekel</B> – 2\nbányál velem, valamint bánnak az <I>ebekel;</I> nem mérek vágyni anagy kegyelmeségekre (É 208)\naz asztal alat lehesek az <I>ebekel.,</I> {…} mondá szent pál (É 208)\n<B>ebeknek</B> – 9\na fiak kenyerét, és az <I>ebeknek</I> vetni, ama pedig monda, ugy (É 206)\nVigyázatok arra, hogy az <I>ebeknek</I> ne adgyátok a szent dolgokot (KG 505)\nvenni a kenyeret. és az <I>ebeknek</I> vetni, az ugy vagyon uram (KJÉ 669)\nmondását, hogy nem kel az <I>ebeknek</I> vetni a szent dolgokot. se (VKT 808)\nhogy a szentelt ostyákot az <I>ebeknek</I> veték, akik is nagy dühöségel (C/A 269)\nkel a szent dolgokot az <I>ebeknek</I> adni. és valamint a szent (C/A 785)\nhogy a szentelt ostyákot az <I>ebeknek</I> veték. a kik is nagy (C/B 1103)\nkell a szent dolgokot. az <I>ebeknek</I> adni. és valamint az apocalypsisben (C/B 1486)\nszent dolgokot. nem kell az <I>ebeknek</I> adni, se gyöngyöt a disznok (KSZ 339)\n<B>ebektöl</B> – 1\nmi a sertésektöl. és az <I>ebektöl</I> meg maradot: az utálatos dolog (IK/A 38)\n<B>ebektől</B> – 1\negy Fejedelem asztalára csak az <I>ebektől,</I> és sertésektől maradott húlladékat akarna (IK/B 406)\n<B>ebet</B> – 1\nollyan mint ha egy öreg <I>ebet,</I> a példa beszéd szerént. alántzhoz (KKU 318)\n<B>ebül</B> – 2\njó szállást adtak, de mi <I>ebül</I> vagyunk szálva. de még is (TL 8)\nIt édes néném. <I>ebül</I> vannak a dolgok; a miolta (TL 243)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1678', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xE9;cossai\">\n<U>écossai</U>\n<K>mi a címszó?</K>\n<KT_/>\n<Q>écossai</Q>\n<B>écossai</B> – 1\nmondá néki nemesi bátorságal. hogy <I>écossai</I> volna. és a neve montros (MN 26)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1679', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xE9;des$anya\">\n<U>édes$anya</U>\n<K>ok, előtagtól nem töröltem</K>\n<Q>édes anya</Q>\n<B>édes anyám</B>\nminapiban az <I>édes anyám</I> levelit nem vettem volna, a (TL 83)\nvéghez vivén. testemet az <I>édes anyám</I> mellé minden világi pompa nélkül (TL 209)\na dolgot mondani {…} mondá hilária. <I>édes anyám</I> a nem egyéb. hanem (MN 11)\nKérj <I>édes anyám,</I> mert nem méltó hogy (KG 540)\n<Q>édes Anya</Q>\n<B>édes Anyánknak</B> – 3\nAz <I>édes Anyánknak</I> levelét mind edig szives tisztelettel (ML 314)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1680', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xE9;des$atya\">\n<U>édes$atya</U>\n<K>ok, előtagtól nem töröltem</K>\n<Q>édes atya</Q>\n<B>édes atyám</B>\nmondá, álgy meg engem is <I>édes atyám,</I> ki mondá el jött (É 301)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1681', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xE9;des-keser&#x171;\">\n<U>édes-keserű</U>\n<K>ok</K>\n<Q>édes keserü</Q>\n<B>édes keserü</B>\ntegnap viszá jövénk a <I>édes keserü</I> laktunk hellyére, azt tudom nem (TL 162)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1682', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xE9;des\">\n<U>édes</U>\n<K>ok</K>\n<Q>edes</Q>\n<B>edes</B> – 30\n<I>Edes</I> néném még kédnek semmi levelét (TL 8)\na fényes tündöklö portát. de <I>edes</I> néném a resttséget el kel (TL 9)\n<I>Edes</I> nénem micsoda szerencsés aszszony kéd (TL 12)\n<I>Edes</I> néném kedvesen is veszem, nevettem (TL 18)\n<I>Edes</I> néném éppen ma ha jol (TL 19)\nláttak.? mert én ugy szeretlek <I>edes</I> néném. mint a káposztát (TL 29)\n<I>Edes</I> néném, vevéé kéd észre tegnap (TL 35)\nelíg vártuk hogy eljöjjünk onnét, <I>edes</I> néném mely sokszor kel olyat (TL 38)\n<I>Edes</I> néném, igen igen szükséges kédnek (TL 39)\n<I>Edes</I> néném hanem mondanám is hogy (TL 52)\n<I>Edes</I> néném már egy nehány levelemre (TL 84)\n<I>Edes</I> néném ha. lakat volna is (TL 88)\n<I>Edes</I> néném, ha semmit nem irt (TL 92)\n<I>Edes</I> néném meg bocsáson kéd. hogy (TL 104)\n<I>Edes</I> néném itt most elég sirás (TL 117)\n<I>Edes</I> néném nincsen mit irnom, és (TL 127)\nnem változtattya., csak uszszunk hát <I>edes</I> néném a még lehet. csak (TL 156)\n<I>Edes</I> nénekám.nak. kívánok szivesen. egy (TL 157)\n<I>Edes</I> néném. egy keveset nevettünk a (TL 159)\n<I>Edes</I> néném, a komediának még vége (TL 167)\n<I>Edes</I> néném fillentenék ha azt mondanám (TL 170)\nmettzettem, szeretetemnek. harmintz egyedik esztendejében. <I>edes</I> néném, mit mondasz azillyen emberröl (TL 192)\nmely keserűek nékem it az <I>edes</I> borok, a’ ked gabonás házát (ML 320)\nStorophila. <I>Edes</I> jésusom tanits meg engemet arra (KKU 413)\nStorophila. <I>Edes</I> meg váltom. hól találhassak helyt (KKU 418)\nOh <I>edes</I> gyermekem kénszeritlek azért az szeretért (IK/B 515)\nSzeretni kel hát az Istent <I>edes</I> fiam, hogy ne szeretnéd azt (IK/B 561)\n<I>Edes</I> fiam ha az természeted hajlando (IK/B 583)\n{…} <I>Edes</I> gyermekem. erre azt felelem. hogy (IK/B 587)\n<I>Edes</I> fiam meg kel hát elözni (IK/B 603)\n<Q>édes</Q>\n<B>édes</B> – 373\n<I>Édes</I> néném hálá légyen az Istennek (TL 7)\na török áer el üzi. <I>édes</I> néném mi jó a földön (TL 7)\nitt lenni mint sem ahajoban., <I>édes</I> néném akéd kedves levelit vagyon (TL 8)\nesztendö egy holnapbol állana. reménlem <I>édes</I> néném hogy már ezután mint (TL 8)\nmeg ne náthásodgyanak, emind jó <I>édes</I> néném, de belgrádnál meg verték (TL 9)\nki ide, ki amoda. jaj <I>édes</I> néném hogy lehet illyen népel (TL 9)\nkel. mert ki szerethetné az <I>édes</I> nénémet jobban mint én (TL 9)\nIdeje már <I>édes</I> néném, egy levelét venni kédnek (TL 9)\nehezet. de az is valo <I>édes</I> néném hogy éhtlen költem fel (TL 10)\neb szokás, kutya szokás. jaj <I>édes</I> néném, elig mártottunk egyszer a (TL 10)\nIgy szeretem <I>édes</I> néném. hogy el üzze kéd (TL 11)\nakappan formában herélt emberek láttyák, <I>édes</I> néném. nagy becsület. de nem (TL 11)\nagazdag házaknál lakik ajó hazaság. <I>édes</I> néném tudom hogy meg csufol (TL 11)\nmeg békéllik, ha meg verik. <I>édes</I> néném. annál továb nem mehetünk (TL 11)\nmondhattyuk magunk gondolattyát, még eddig <I>édes</I> néném. igen igen keveset tudok (TL 12)\nmikor kédnek irok. jaj hazuttam <I>édes</I> néném, mert a kéd leveleit (TL 13)\nvagyon tiltva másoknak., ugyan is <I>édes</I> néném ne kiméllyük egymást. hanem (TL 13)\nki maga udvarával. el mondhatni <I>édes</I> néném, hogy avezérek aföldi istenek (TL 13)\nakéd egésséginek dolga jol fólyón. <I>édes</I> néném ha tudná kéd mint (TL 14)\n<I>Édes</I> néném. mi még itt vagyunk (TL 14)\nhanem azt aki küldötte., avalo <I>édes</I> néném, hogy sokan vannak akik (TL 15)\nmár többet az ajándékról. de <I>édes</I> néném havolna mit irnom kédnek (TL 15)\nhirekel kedveskedik nekünk, mondgya kéd <I>édes</I> néném, hogy talám nincsen egyéb (TL 15)\na kédnek valo irásért, mert <I>édes</I> néném, ki szereti kédet ugy (TL 15)\nMa <I>édes</I> néném a vezér izené az (TL 16)\ngyözhetetlen császár, éllyen ahatalmas vezér. <I>édes</I> néném, láttya kéd mikor azember (TL 16)\nés itt ne telepedgyünk meg, <I>édes</I> néném, a fazakas akarattyán kel (TL 16)\nenni. mint itt buza kenyeret, <I>édes</I> néném, talám nem óknélkül tartok (TL 17)\nmeg kéd. ahozám valo szeretetit. <I>édes</I> néném, noha az én szivemnek (TL 17)\nkirály kisérte viszá a szállására. <I>édes</I> néném ne nevessen kéd, mert (TL 18)\nhogy nem vagyunk ollyan feketék, <I>édes</I> néném ne csudállya kéd, haa (TL 18)\nés egyiknek se szolgállyon.? oh <I>édes</I> néném. mely közél vagyon már (TL 19)\naszakállárol. hogy a zabulon nemzettségéböl. <I>édes</I> néném. meg ne náthásodgyék kéd (TL 19)\n<I>Édes</I> néném kéd engemet nem üsmér (TL 21)\nboszut kel állanom, ezt hiják <I>édes</I> boszu állásnak., boszut állani pedig (TL 21)\nvigyázé kéd reája. jó éttzakát <I>édes</I> néném (TL 21)\nmindeniknek hálákot kel néki adni, <I>édes</I> néném. ma ez itt meg (TL 22)\nmert avilági dicsöséget meg kostolta. <I>édes</I> néném eleget elmelkedhetnék azember. az (TL 22)\nés magaénak foglalta. szép dolog <I>édes</I> néném, ura lenni. fel ora (TL 22)\nesnünk,? távul legyen., bizzunk, reméllyünk. <I>édes</I> néném az Istenben. ha szinte (TL 23)\nnehéz, és sullyos dolog, ugyé <I>édes</I> néném, de azért vagyunk keresztények (TL 23)\ngyülekeznek a követek., illyen formán <I>édes</I> néném ellene ne mondgyunk, de (TL 24)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1683', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xE9;dess&#xE9;g\">\n<U>édesség</U>\n<K>ok</K>\n<Q>édeseg</Q>\n<B>édeseg</B> – 1\nkirálynéja. Irgalmasagnak szent Annya, Elet <I>édeseg</I> reménség Üdvöz légy szép szüz (KG 555)\n<Q>édeség</Q>\n<B>édeség</B> – 1\nabban több keserüség vagyon. mint <I>édeség,</I> erre valo nézve is mondgya (KKU 299)\n<B>édeséget</B> – 3\nmert szüntelen kostollya azt az <I>édeséget</I> melyet az urban talál, és (É 174)\nmelyek kerestetik velünk azt az <I>édeséget,</I> meg bizonyittyák hogy azt már (É 534)\nnem szeretnék. ha ót tsak <I>édeséget.</I> találnának, avilág tele haborodásal., még (KKU 273)\n<B>édeségét</B> – 1\nmeg kedvelye a jó erkölcsnek <I>édeségét.,</I> mert a test szerént valo (IK/A 170)\n<B>édeségit</B> – 6\nhogy meg kostoltuk az urnak <I>édeségit</I> (É 534)\nmeg elegyiteni keserüségel ez életnek, <I>édeségit,</I> ne hogy az emberek boldogságnak (KKU 272)\nIstennek rendelése ez életnek. izetlen <I>édeségit</I> anyomoruságoknak keserüségévél, hogy az emberek (KKU 273)\naz örökösöknél, az élet tsalárd <I>édeségit.</I> az Istenel valo lételnél, egy (VKT 909)\nlennél, hogy meg kostolhatnád, annak <I>édeségit.</I> mit mond néked erre az (IK/B 412)\nmeg izelittse az jó erkölcsnek <I>édeségit.</I> valamint szent pál mondgya (IK/B 519)\n<Q>édesség</Q>\n<B>édesség</B> – 2\nsöt még napal., bizonyos ollyan <I>édesség</I> vagyon. a melyet meg nem (TL 43)\nkéd. mi lehet az az <I>édesség,</I> de éttzaka szabadság., ramazánnya lévén (TL 43)\n<B>édességed</B> – 1\nIstenben, mely nagy uram ate <I>édességed</I> sokasága, melyet el rejtettél atéged (KG 470)\n<B>édességet</B> – 2\naz emberek boldogságnak tarttsák evilági <I>édességet,</I> mivel ha Isten mindenben kedvezne (KKU 272)\nközönségesen. hogy a keserüség, az <I>édességet</I> követi. és hogy a rosa (KKU 274)\n<B>édességit</B> – 2\nhalad, de ennek a léleknek <I>édességit</I> meg nem változtathattya (KKU 288)\nkeserüség helyre hoza. az egésségnek <I>édességit,</I> kellé hát azon tsudálkozni, ha (KKU 407)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1684', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xE9;g_1\">\n<U>ég 1</U>\n<K>ok</K>\n<Q>ég</Q>\n<B>ég</B>\nhogy el mondhasam, hogy szereteted <I>ég</I> szivemben (KG 526)\n<B>ége</B> – 4\nés még is, az elmémben <I>ége</I> az tisztátalan szeretet. az én (IK/B 548)\n<B>égek</B> – 1\nbotránkozik meg, és én nem <I>égek?</I> ha ditsekedni kel, azén erötlenségimben (É 144)\n<B>éget</B>\nenyészék elöllök, hogy azö szivek <I>éget</I> az uton. a midön vélek (É 507)\nahoz, a ki ért szive <I>éget,</I> ezen meg batorodván. a grof (MN 80)\nmelyek eszközei arendeletlen gyönyörüségeknek, és <I>éget</I> bennek a tiszteleteknek. és a (KJÉ 586)\nelmém. a tisztátalan kivánságok után <I>éget</I> az el lankadot, és mint (IK/A 200)\nreá tenni. a melyben olaj <I>éget,</I> száma nélkül tészen emlékezetet az (ISZ 203)\nházban, ahol tsak egy lámpás <I>éget,</I> a melyhez egy kutyát kötöttek (KSZ 341)\nmely, a martyrok koporsojok elött <I>éget</I> a lámpásokban (KSZ 375)\n<B>éget volna</B>\nhogy ami szivünk mint ha <I>éget volna</I> mi bennünk. a midön (KJÉ 766)\n<B>égjen</B> – 4\nhogy a szent tüz mindenkor <I>égjen</I> a frigy ládája elött (C/A 727)\nhogy a szent tüz, mindenkor <I>égjen.</I> a frigy láda elött (C/B 1444)\n<B>égnek</B>\nvéghetetlen számu lelkeket. kik ót <I>égnek,</I> és ót égni fognak örökké (KG 469)\ntüzet, és lángot okádnak. nem <I>égnek</I> olyan nagy sebeségel. mint az (IK/A 180)\nkik szüntelen tüzet bocsátnak. nem <I>égnek</I> ollyan sebeségel, mint az iffiak (IK/B 528)\n<B>égni fognak</B>\nkik ót égnek, és ót <I>égni fognak</I> örökké, olyan vétkekért, a (KG 469)\n<B>égsz</B>\nmagához, oh ! szeretet, aki mindenkor <I>égsz,</I> és soha el nem aluszol (KG 522)\n<B>égtek</B> – 2\nhatot azö szavok, ö magok <I>égtek</I> azon tüzel, a melyet akristus (É 651)\naz ö szavok, ö magok <I>égtek</I> azon tüzel. a melyet akristus (É 874)\n<B>égtenek</B> – 5\nholt testek mellet pedig lámpások <I>égtenek.</I> még most is találnak ollyan (TL 141)\nis inkáb viaszbol valo oszlopok <I>égtenek,</I> a melyek azt a szent (KSZ 393)\natüz oltásán munkálodhasanak, atornátzok hogy <I>égtenek.</I> tsak nézék. meg sem mozdulának (SUT 877)\nki nem mutatná, a házak <I>égtenek,</I> de nem tudhaták mitöl volna (SUT 895)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1685', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xE9;g_2\">\n<U>ég 2</U>\n<K>ok</K>\n<Q>eg</Q>\n<B>egbe</B> – 1\na mint láttátok ötet az <I>egbe</I> menni (É 567)\n<B>egben</B> – 2\nszárazon ment által rajta, az <I>egben</I> el ragadtaték tüzes szekeren, világ (C/A 125)\nNintsen külömben, akristus mind az <I>egben,</I> mind a Eucharistiában. jelen vagyon (C/A 534)\n<B>egböl</B>\noh’ menyei gyermek., ki az <I>egböl</I> jöttél, és aki az égért (IK/A 24)\nközöt, akoron szozatot halla az <I>egböl.</I> az ki is néki ezeket (IK/B 425)\nAz Isten külde nékik az <I>egböl</I> olyan eledelt., a melyet ök (C/A 94)\nnyelé ezt a hármat, az <I>egböl</I> eset tüz, el törölé a (C/B 994)\n<B>egre</B> – 1\na nyelvére, az után az <I>egre</I> emelvén szemeit, nagy suhajtásal mondá (KJÉ 670)\n<Q>Eg</Q>\n<B>Egböl</B> – 6\na kristus maga, aki az <I>Egböl</I> szállot le eledelekre, és a (É 75)\nTekinttsed uram onnét felyül az <I>Egböl</I> népednek alázatos imádságát, hogy hadd (É 98)\n<Q>ég</Q>\n<B>ég</B> – 69\nki vevé akebeliböl. és az <I>ég</I> felé emelvén. kéré az Istent (TL 295)\nezek meg nem lésznek, az <I>ég,</I> és aföld el mulnak, azén (É 12)\nminden gondolattyokot, és reménségeket, az <I>ég</I> felé emelik, és akik az (É 133)\naz Isteni gondolattol mint az <I>ég</I> a főldtöl, ha hozzája nem (É 194)\nés ismég imádkozot és az <I>ég</I> esöt adot, és aföld meg (É 199)\na földet, és valami az <I>ég</I> kerekségiben foglaltatik, mindeneknek ura vagy (É 280)\nadgyon néked az Isten, az <I>ég</I> harmattyábol és a föld kövérségéböl (É 301)\na föld kövérségében. és az <I>ég</I> harmattyában onnét felyül lészen áldásod (É 301)\nnéki, atyám, atyám vétkeztem az <I>ég</I> ellen. és te ellened, már (É 303)\na fia. atyám vétkeztem az <I>ég</I> ellen, és te ellened, már (É 303)\nmélységéböl, mondván, Atyám vétkeztem az <I>ég</I> ellen, és te ellened, már (É 306)\nIzraelben., mikor bé záratott az <I>ég</I> három esztendeig, és hat holnapig (É 318)\nsokasitom. ati magotokat mint az <I>ég</I> tsillagit, és ezt az egész (É 366)\naz ö magvokat mint az <I>ég</I> tsillagit. és mint a fövenyt (É 420)\nés ismég imádkozot, és az <I>ég</I> esöt adott, és aföld meg (É 561)\nfel emellyük lelki szemeinket az <I>ég</I> felé. hogy ót szemléllyük akristust (É 569)\nminden féle nemzetségböl, mely az <I>ég</I> alat vagyon., eszozat lévén pedig (É 578)\nkezeit fel nem emelhette, az <I>ég</I> felé, és azokot ki nem (É 677)\nnem meré fel emelni az <I>ég</I> felé. szégyenletiben. hogy meg bántotta (É 727)\nláttyák az ember Fiát az <I>ég</I> felhöiben jöni nagy hatalommal, és (É 833)\nmind ezek meg lésznek, az <I>ég,</I> és a föld el mulnak (É 834)\nde fel emelvén kezeit az <I>ég</I> felé. mint ha segittségit kérné (MN 225)\ngondolat a mi elménket. az <I>ég</I> felé emeli, és azt amulando (KKU 282)\nis egy istállot választottam, az <I>ég</I> az én királyi székem. és (KKU 320)\nemeld fel hát szemeidet az <I>ég</I> felé. a hová emeli az (KKU 325)\nemelyék sziveket, és szemeket az <I>ég</I> felé. valamint az én apostolom (KKU 325)\na maga akarattya után az <I>ég</I> felé fel mégyen., fogd meg (KKU 334)\ntehát roszul tselekesznek. hogy az <I>ég</I> ellen panaszolkodnak. kegyetlennek tartván az (KKU 357)\nmelyel nyilat löjjön fel az <I>ég</I> felé (KKU 366)\nszénát kelleték ennie, akoron az <I>ég</I> felé emelé szemeit, az elméje (KKU 410)\nkegyelmit, végtire meg nyitva, látom <I>ég</I> kapuit (KKU 448)\na sodoma lakosinak, akiket az <I>ég</I> oly irtoztato képen büntette meg (KJÉ 651)\nmondani néki, atyám vétkeztem az <I>ég</I> ellen, és ellened, és nem (KJÉ 700)\nadta volna az apostolinak. az <I>ég</I> felé emelé szemeit és mondá (KJÉ 746)\nmit néztek oly sokáig az <I>ég</I> felé,? ez ajésus, aki fel (KJÉ 772)\nvalo fejed, a szemeid az <I>ég</I> felé fordulva, :(ez a forma (IK/A 22)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1686', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xE9;gbe$ki&#xE1;lt&#xF3;\">\n<U>égbe$kiáltó</U>\n<K>ok ez a címszó vagy lehet az égbenkiáltó?</K>\n<Q>égben kiálto</Q>\n<B>égben kiálto</B>\n{…} Azt tsak az <I>égben kiálto</I> vakmeröségel törölheték el. a mely (C/A 345)\n{…} Azt tsak az <I>égben kiálto</I> vakmeröségel törölheték el. a mely (C/B 1163)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1687', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xFC;ld&#xF6;z\">\n<U>üldöz</U>\n<K>ok</K>\n<Q>üldöz</Q>\n<B>üldözem</B> – 1\na bujdoso magyarokot., bujdosásokban is <I>üldözem.</I> és a politica ratio arra (TL 46)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1688', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xFC;ld&#xF6;zhet\">\n<U>üldözhet</U>\n<K>ok, korp Ez a címszó?</K>\n<KT_/>\n<Q>üldözhet</Q>\n<B>fognak üldözhetni</B> – 1\n-sában lakunk, ót nem <I>fognak, üldözhetni,</I> se bennünk on, net ki (TL 71)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1689', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xFC;ld&#xF6;zni\">\n<U>üldözni</U>\n<K>ok, korp</K>\n<Q>üldözni</Q>\n<B>üldözni</B> – 22\nnem tudom mi végre kivánnya <I>üldözni</I> ezeket a szegény bujdoso magyarokat (TL 46)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1690', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xFC;ld&#xF6;zv&#xE9;n\">\n<U>üldözvén</U>\n<K>ok korp</K>\n<KT_/>\n<Q>üldözvén</Q>\n<B>üldözvén</B> – 3\nbé akarják tölteni rosz kivánsagokot, <I>üldözvén</I> a jó erköltsüeket, de a (É 430)\nvolt, eztet saul eleinte igen <I>üldözvén.,</I> és nagy veszedelemben forogván, nagy (C/A 118)\nvolt, eztet saul eleinte igen <I>üldözvén,</I> és nagy veszedelmekben forogván, nagy (C/B 1003)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1691', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xFC;ld&#xF6;z&#x151;\">\n<U>üldöző</U>\n<K>ok</K>\n<Q>üldözö</Q>\n<B>üldözöire</B> – 2\nkristus tanyitását követvén, áldást kért, <I>üldözöire.</I> nem is a portának tulajdonitotta (TL 49)\n<B>üldözök</B> – 2\nnéném. vallyon az ollyan világi <I>üldözök</I> olvassáké az évangyéliumot,. gondollyáké azt (TL 46)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1692', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xFC;lhet\">\n<U>ülhet</U>\n<K>ok, korp</K>\n<Q>ülhet</Q>\n<B>ülhessen</B> – 3\nsem lévén hogy augustus székiben <I>ülhessen,</I> csudálni. és imádni kel az (TL 121)\n<B>ülhet</B> – 3\njó. ha három polturás ébedhez <I>ülhet.</I> erröl jut eszemben. hogy karolus (TL 172)\n<B>ülhete</B> – 1\nAli pasával, a ki nem <I>ülhete</I> más fél esztendeig a kereken (TL 258)\n<B>ülhetnek</B> – 1\nök ha valami történik. akor <I>ülhetnek</I> lora. a mikor akarnak. énnekem (TL 243)\n<B>ülhetnének</B> – 1\naz aszszonyok az itélö székben <I>ülhetnének,</I> nekem ugy tettzik hogy abban (TL 36)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1693', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xFC;lni\">\n<U>ülni</U>\n<K>ok korp</K>\n<KT_/>\n<Q>illeni</Q>\n<B>illeni</B> – 2\nnagy böjt, és mikor kel. <I>illeni</I> ahusvétot, eztet pediglen viz kereszt (TL 143)\naz innepet három nap szokás <I>illeni,</I> hogy meg mutassák, avigasságot, mind (C/B 1239)\n<B>illenünk</B> – 1\n{…} Miképen kell <I>illenünk</I> ezt az innepet (C/B 1229)\n<Q>ülni</Q>\n<B>ülni</B> – 48\negy szép kis festet hajoban <I>ülni,</I> a melyet három erös török (TL 30)\ngyalog járt. ma pedig csak <I>ülni</I> kel., azt nem igazán mondgyák (TL 34)\nestig egy helyben ló háton <I>ülni,</I> étlen, és atöbbit csak meszünen (TL 37)\nérkezik, és a kaikban akarván <I>ülni.</I> akor veszi észre magát hogy (TL 45)\naházbol ki menni. othon kel <I>ülni.</I> és reméllyük hogy a jó (TL 73)\nlehet örökké csak egy helyben <I>ülni,</I> az egésségnek használ ajárás, és (TL 138)\nmulva az aszony alovára akara <I>ülni.</I> de nem lehete, mert azután (TL 297)\nnem szolni Keservesen tsak kell <I>ülni.</I> Ott kell <I>ülni</I> mint egy (ML 329)\ntsak kell <I>ülni.</I> Ott kell <I>ülni</I> mint egy képnek, Nem engedik (ML 329)\n<B>ülnöm</B> – 2\nlevelét a mikor lora kellet <I>ülnöm.</I> meg mondgyam kédnek hogy hová (TL 11)\nnémetel, ha addig itt kel <I>ülnöm.</I> jó éttzakát a meny aszszony (TL 26)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1694', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xFC;ltet\">\n<U>ültet</U>\n<K>ok</K>\n<Q>ültet</Q>\n<B>ültessék</B> – 1\nhogy egyikét., amásikánál. fellyeb ne <I>ültessék.</I> acsászár azt meg tudván. gondolá (TL 172)\n<B>ülteté</B> – 14\naz urunkot. és maga mellé <I>ülteté.</I> kérdeztem azután, hogy mire valo (TL 16)\nhelyében fel emelvén. császari szekiben <I>ülteté,</I> es leg elsöben is maga (TL 166)\n<B>ülteti</B> – 2\na békeséget is maga mellé <I>ülteti,</I> a maga haszna keresése is (TL 23)\n<B>ültették</B> – 2\na rajta valo köntössel lora <I>ültették.</I> és egy nehány csauz ki (TL 22)\n<B>ültettem</B> – 1\nnehány szöllö fát <I>ültettem,</I> meg is fogontak, két gerezd (TL 254)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1695', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xFC;ltetett\">\n<U>ültetett</U>\n<K>ok, korp</K>\n<Q>ültetett</Q>\n<B>ültetett</B> – 1\negy gazda embernek a maga <I>ültetett.</I> gyümölcs fáit, és szöllöjit, gyümölcsösön (TL 133)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1696', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xFC;ltetve\">\n<U>ültetve</U>\n<K>ok korp</K>\n<KT_/>\n<Q>ültetve</Q>\n<B>ültetve</B> – 4\ngyümölcs fák. mind uttzákra vannak <I>ültetve.</I> akert két részben vagyon. az (MN 11)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1697', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xFC;ltetv&#xE9;n\">\n<U>ültetvén</U>\n<K>ok, korp</K>\n<Q>ültetvén</Q>\n<B>ültetvén</B> – 5\nesö volt. a vezér melléje <I>ültetvén</I> a fejdelmet, egy kevés idö (TL 222)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1698', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xFC;ltet&#xE9;s\">\n<U>ültetés</U>\n<K>ok</K>\n<Q>ültetés</Q>\n<B>ültetéshez</B> – 1\nmeg egyezik ezel. hogy az <I>ültetéshez</I> nem kivántatik sok gondolkodás. de (ISZ 188)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1699', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#xFC;z&#xF6;n_k&#xFC;pri\">\n<U>üzön küpri</U>\n<RT>Uzunköprü</RT>\n<T_/>\n<K>ok</K>\n<Q>küpri</Q>\n<B>küpri</B> – 1\nki kacsiba lovakon, hanem <I>üzön küpri</I> nevü varosban a úrunk szállásának (TL 10)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1700', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#x151;$alatta\">\n<U>ő$alatta</U>\n<K>ok korp, utótagtól törölve</K>\n<Q>ö alatta</Q>\n<B>ö alatta</B>\nezer emberel. mind olyanokal. kik <I>ö alatta</I> sokszor gyözedelmesek voltanak, ez (MN 14)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1701', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#x151;$al&#xE1;\">\n<U>ő$alá</U>\n<K>ez a címszó? korp nincs, utótagtól töröltem</K>\n<Q>ö alá</Q>\n<B>ö alája</B>\nszivel minnyájotok elöt. magamot <I>ö alája</I> vetem. csak had szünnyék meg (TL 166)\nmeg hajol elötte, és mindenek <I>ö alája</I> vettettek, a menyegben, ahol (É 441)\nteremtöjének alája vesse magát., <I>ö alája</I> pedig ugy veti magát., hogy (C/A 737)\nö teremptöjének alája vesse magát. <I>ö alája</I> pedíg ugy veti magát (C/B 1452)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1702', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#x151;$al&#xE1;ja\">\n<U>ő$alája</U>\n<K>ok, korp</K>\n<Q>ö alája</Q>\n<B>ö alája</B> – 24\nszivel minnyájotok elöt. magamot <I>ö alája</I> vetem. csak had szünnyék meg (TL 166)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1703', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#x151;$bele\">\n<U>ő$bele</U>\n<K>ok korp</K>\n<Q>ö belé</Q>\n<B>ö belé</B>\ntestesültünk akereszttség által, és <I>ö belé</I> oltattunk szoros egyeségel, valamint (É 694)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1704', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#x151;$bel&#x151;le\">\n<U>ő$belőle</U>\n<K>ok korp</K>\n<Q>ö belölle</Q>\n<B>ö belölle</B>\nüsmérvén az eröt mely <I>ö belölle</I> származot. viszá fordula anép közöt (KJÉ 638)\n</entry>');
INSERT INTO `field_xml_data` (`pages_id`, `data`) VALUES('1705', '<entry xmlns=\"http://www.tei-c.org/ns/1.0\" headword=\"&#x151;$benne\">\n<U>ő$benne</U>\n<K>ok korp ö benne KG 526 egybe??</K>\n<Q>öbenne</Q>\n<B>öbenne</B> – 45\nMit tésznek ezek a szók, <I>öbenne</I> vala az élet, és az (É 66)\nmelyel bé veszik tanitását, remélven <I>öbenne,</I> buzgoságal várják véle valo meg (É 80)\nö mindenhato karjának erejin, vessük <I>öbenne</I> bizodalmunkot, mert ö parantsolni fog (É 122)\nmeg visgállyák. hogy kel lenni <I>öbenne.</I> valami ollyannak., amely az embernél (É 156)\nirás azt mondgya. minden aki <I>öbenne</I> hiszen, meg nem szégyenittetik, mert (É 220)\nhogy legyünk övéi, és maradgyunk <I>öbenne,</I> valamint ö bennünk marad. {…} hogy (É 231)\nvéremet isza, bennemmarad, és én <I>öbenne</I> (É 231)\nélö hittel, és szeretettel hisznek <I>öbenne</I> (É 253)\nviz mellyet én adok néki, <I>öbenne</I> fel forro viznek kut fejévé (É 339)\npedig avárosbol sok samaritánusok hivének <I>öbenne.</I> a bizonyság tévö aszszony beszédiért (É 340)\nhogy ha akristus tiszteletét oltalmazák. <I>öbenne</I> sokal hatalmasab párt fogot találnak (É 379)\nigy hagyuk ötet. minnyájan hisznek <I>öbenne,</I> és el jönek a Romaiak (É 429)\nmaradékot fogna adni azokban kik <I>öbenne</I> hisznek, hogy azt meg nem (É 452)\na feleségedet. mert a mí <I>öbenne</I> fogantatott; a szent Lélektöl vagyon (É 487)\nés az Isten minket tsak <I>öbenne</I> és ö érette szeret. erös (É 560)\nneve által veszik, minnyájan., akik <I>öbenne</I> hisznek, még péter. ez igeket (É 583)\nevilág ö általa, a ki <I>öbenne</I> hiszen, meg nem itéltetik, a (É 584)\nnem érik mind azok, akik <I>öbenne</I> hisznek (É 595)\nel lehet mondani hogy mindenek <I>öbenne</I> vannak, mert mindennek hozája kel (É 605)\nIstenben marad, és az Isten <I>öbenne</I> evégre lett tekélletessé az Isten (É 609)\nén bennem marad, és én <I>öbenne,</I> a mint engem el küldöt (É 620)\nember Fiának, hogy minden aki <I>öbenne</I> hiszen, el ne veszen. hanem (É 663)\nhitessük magunkal. hogy azok. kik <I>öbenne</I> valoságal biznak, anyomoruságban. és a (É 677)\nJesusban hogy mindenekben gazdagok lettetek <I>öbenne,</I> minden igében, és minden tudományban (É 796)\nmásban nem lehetne menteni. tsak <I>öbenne.</I> se más nemzetben, de ha (MN 63)\npál én bennem. és én <I>öbenne,</I> mivel az, aki a világnak (KKU 397)\nIsten, akristusban tekint mi reánk, <I>öbenne</I> üdvezit minket. ö benne adgya (KG 474)\nváltozást, se gyengeséget nem látni <I>öbenne,</I> azt akarja, hogy az ö (KG 559)\nhozája kel igyekeznünk. mivel tsak <I>öbenne</I> találhattyuk meg tsendeségünket. és boldogságunkot (KJÉ 585)\nembert meg elégit. akoron nem <I>öbenne.</I> tekintem magamot, hogy én is (KJÉ 596)\nkülönösön ötet magát tekinti. akoron <I>öbenne</I> tekintem magamot, és ötet kel (KJÉ 596)\nszent jános, hogy az élet <I>öbenne</I> vagyon, nem is lehet más (KJÉ 610)\nlelkekben. a melyek hisznek vala <I>öbenne,</I> azonban a nép külömb féle (KJÉ 682)\ntsak az Isten jó, hogy <I>öbenne</I> Isteni, és örökös joságot üsmérjen (KJÉ 706)\nha az Isten meg ditsöitetik <I>öbenne.</I> az Isten is meg ditsöitti (KJÉ 740)\nabban is. hogy azok akik <I>öbenne</I> hinni fognak. hasonlo tsudákot tselekesznek (KJÉ 742)\na midön meg lésznek, higyenek <I>öbenne,</I> hogy már nem sokat beszéllene (KJÉ 743)\nkedves tanitvány. kis fiatskáim, maradgyatok <I>öbenne..</I> ugy hogy a midön el (KJÉ 776)\na profétákra valo nézve hiszünk <I>öbenne.,</I> mivel mi láttuk. és hallottuk (VKT 789)\nmindnyájan vétkeztünk mondgya szent Pál, <I>öbenne</I> (C/A 61)\na melyel volt rend szerént <I>öbenne,</I> és az irás mint egy (C/A 110)\nmi bennünk lakozik. és mi <I>öbenne,</I> az ö bennünk valo lakása (C/A 540)\nbennem lakozik. és én is <I>öbenne,</I> Ez amaz kenyér. a ki (C/B 1302)\na kik semit nem találtanak <I>öbenne.</I> mivel ö egy értelemben vagyon (SUT 683)\nés nem találván semit olyat <I>öbenne</I> a miért mélto volna ahalálra (SUT 720)\n<Q>ö benne</Q>\n<B>ö benne</B>\ntámad a pogányokat vezérleni, <I>ö benne</I> biznak apogányok, A reménségnek Istene (É 15)\nszoval meg botránkozunk akor <I>ö benne,</I> és ellene mondunk az üdveségnek (É 20)\nazt nem mértékel adgya., {…} <I>ö benne</I> vannak a böltseségnek, és ismeretnek (É 35)\nhogy minden valaki hiszen <I>ö benne</I> elne veszen, hanem örök élete (É 58)\nel nem válik, mert <I>ö benne</I> fenyeskedik minden tekélletesége az Atyának (É 63)\nlött, a mi lött., <I>ö benne</I> vala, az élet, és az (É 64)\na szó, valoságos személy <I>ö benne,</I> és ö véle, mindenekben hasonló (É 66)\nlelke, a mely lészen <I>ö benne</I> az örök életre forró viznek (É 76)\naz Isten malaszttya vala <I>ö benne</I> (É 85)\nmint akristusal ellenkezni, mivel <I>ö benne</I> vagyon minden reménségünk, még is (É 86)\nvéle tett szövettségének, és <I>ö benne</I> az egész Izrael népevel, 3 (É 88)\nö Ditsöségét, és hivének <I>ö benne</I> az ö tanitványi (É 107)\nIstenben, és az Istent <I>ö benne</I> szeresük, ha a mi felebarátunk (É 119)\nmeg üsmérjék. szeresék, és <I>ö benne</I> hidgyenek ahivek. és avilág szeretöi (É 135)\nroszat amelyel fenyegeti, de <I>ö benne</I> nintsenek azok az indulatok mint (É 161)\nüsméretnek békeségét meg tarttyák, <I>ö benne,</I> eszerént nyugodalom egy keresztyénnek egész (É 174)\nazördögöt, atestet, avilagot, hogy <I>ö benne</I> vessük minden bizodalmunkat meg gyözvén (É 182)\ntettzik hogy hinni akarnak <I>ö benne,</I> tsak valami jelt mutasson nékik (É 202)\nlehesen hini, hinni kel <I>ö benne,</I> és üsmérni ötet, és hogy (É 222)\negyéb más emberi gyengeség <I>ö benne</I> nem valának (É 254)\na szent Lélek vala <I>ö benne.</I> és feleletet vett vala a (É 258)\ntudni illik, hogy hígyenek <I>ö benne,</I> hasonlot mutat akéttségben eset keresztyéneknek (É 272)\n{…} Mit mivelének <I>ö benne</I> ezek a gondolatok (É 306)\nés sokkal többen hivének <I>ö benne.</I> az ö beszédiért és mondgyák (É 340)\nakará néki mutatni, hogy <I>ö benne</I> fellyeb valo elme volna. az (É 342)\naki meg szabadittya az <I>ö benne</I> bizokot, és fel támadának aket (É 348)\naz Istennek böltseségét lenni <I>ö benne.,</I> ezitélet tételre (É 361)\nközül pedig sokan hivének <I>ö benne</I> (É 369)\naz embereknek hirdetet, mivel <I>ö benne</I> aböltseségnek. és atudománynak minden kintsei (É 369)\njelentessenek az Isten tselekedeti <I>ö benne.</I> nékem szükséges annak tselekedetit tselekednem (É 374)\naz uram. hogy hidgyek <I>ö benne,</I> és mondá néki Jesus, láttad (É 376)\nmiket tselekedet Jesus. hivének <I>ö benne</I> (É 391)\nmelyet veendök valának az <I>ö benne</I> hivök, mert még nem adatot (É 407)\nmesze egyikünktöl is. mivel <I>ö benne</I> élünk. és ö általa élünk (SUT 659)\n<Q>ő benne</Q>\n<B>ő benne</B>\nbennem marad és én <I>ő benne,</I> ezt ahasznot szerezi tehát. az (É 621)\nFiának, hogy minden aki <I>ő benne</I> hiszen., el ne veszen. hanem (É 668)\n</entry>');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'dictionary');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'headword');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'language');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'repeater_cards');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'repeater_cards1');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('80', 'search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('88', 'sitemap');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_hungarian_ci,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '44', '6', '{\"label\":\"Carousel images with captions\",\"label1020\":\"Nyit\\u00f3lapi k\\u00e9pek felirattal\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '104', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('80', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '44', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '76', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '79', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '82', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '79', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '97', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '100', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '107', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '108', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '79', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '109', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '110', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '111', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '113', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '76', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '112', '1', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) COLLATE utf8_hungarian_ci NOT NULL DEFAULT '',
  `data` text COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitleLanguage', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"langBlankInherit\":0,\"label1020\":\"C\\u00edm\",\"collapsed\":0,\"minlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('44', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png\",\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":2,\"outputFormat\":1,\"defaultValuePage\":0,\"defaultGrid\":0,\"icon\":\"camera\",\"textformatters\":[\"TextformatterEntities\"],\"label1020\":\"K\\u00e9pek\",\"collapsed\":0,\"gridMode\":\"grid\",\"maxReject\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('76', 'FieldtypeTextareaLanguage', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":10,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address;\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"langBlankInherit\":0,\"label1020\":\"T\\u00f6rzs\",\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"extraAllowedContent\":\"*(*)\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('78', 'FieldtypeTextLanguage', 'headline', '0', 'Headline', '{\"description\":\"Use this instead of the field above if more text is needed for the page than for the navigation.\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024,\"langBlankInherit\":1,\"label1020\":\"C\\u00edmsor\",\"description1020\":\"Haszn\\u00e1ld ezt a fenti helyett, ha t\\u00f6bb sz\\u00f6veget szeretn\\u00e9l megjelen\\u00edteni a navig\\u00e1ci\\u00f3 sor\\u00e1n.\",\"minlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('79', 'FieldtypeTextareaLanguage', 'summary', '1', 'Summary', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":2,\"rows\":3,\"contentType\":0,\"langBlankInherit\":0,\"label1020\":\"\\u00d6sszefoglal\\u00f3\",\"minlength\":0,\"maxlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('82', 'FieldtypeTextareaLanguage', 'sidebar', '0', 'Sidebar', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":5,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"collapsed\":2,\"label1020\":\"Oldals\\u00e1v\",\"langBlankInherit\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeFile', 'language_files', '24', 'Core Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"descriptionRows\":0,\"fileSchema\":2,\"outputFormat\":0,\"defaultValuePage\":0,\"clone_field\":1,\"description\":\"Use this for field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypePage', 'language', '24', 'Language', '{\"derefAsPage\":1,\"parent_id\":1009,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypeFile', 'language_files_site', '24', 'Site Translation Files', '{\"description\":\"Use this for field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"descriptionRows\":0,\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeRepeater', 'cards', '0', 'Card', '{\"template_id\":45,\"parent_id\":1026,\"repeaterLoading\":1,\"repeaterFields\":[107,108],\"repeaterCollapse\":0,\"label1020\":\"K\\u00e1rtya\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeText', 'card_type', '0', 'Card type', '{\"label1020\":\"K\\u00e1rtyat\\u00edpus\",\"collapsed\":0,\"minlength\":0,\"maxlength\":10,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypeTextareaLanguage', 'card_text', '0', 'Card text', '{\"label1020\":\"K\\u00e1rtyasz\\u00f6veg\",\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":200,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":0,\"usePurifier\":0,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeFile', 'dict_source', '0', 'Source files', '{\"label1020\":\"Adatforr\\u00e1s f\\u00e1jlok\",\"extensions\":\"xml\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":1,\"inputfieldClass\":\"InputfieldFile\",\"descriptionRows\":1,\"icon\":\"file-archive-o\",\"fileSchema\":3,\"collapsed\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypeTextarea', 'dict_jobs', '0', 'Dictionary jobs', '{\"label1020\":\"Sz\\u00f3t\\u00e1ri feladatok\",\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":2,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"icon\":\"tasks\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('111', 'FieldtypeTextarea', 'dict_log', '0', 'Dictionary logs', '{\"label1020\":\"Sz\\u00f3t\\u00e1ri napl\\u00f3bejegyz\\u00e9sek\",\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":2,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"icon\":\"history\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypeTextarea', 'xml_data', '0', 'XML data', '{\"label1020\":\"XML adatmez\\u0151\",\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"icon\":\"file-code-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeSelectExtOption', 'dict_options', '0', 'Dictionary options', '{\"label1020\":\"Sz\\u00f3t\\u00e1ri be\\u00e1ll\\u00edt\\u00e1sok\",\"input_type\":\"InputfieldCheckboxes\",\"db_host\":\"localhost\",\"db_port\":3306,\"option_asc\":0,\"collapsed\":0,\"option_table\":\"dictionarysupport\",\"option_value\":\"option_key\",\"option_label\":\"option_value\",\"optionColumns\":0,\"icon\":\"sliders\"}');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_hungarian_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '3', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '32', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"language\"]}', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":16,\"coreVersion\":\"3.0.62\"}', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('152', 'PagePathHistory', '3', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('158', 'LanguageSupport', '35', '{\"languagesPageID\":1009,\"defaultLanguagePageID\":1010,\"otherLanguagePageIDs\":[1020],\"languageTranslatorPageID\":1011}', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessLanguage', '1', '{\"showFields\":[]}', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'ProcessLanguageTranslator', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'LanguageSupportFields', '3', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'FieldtypeTextLanguage', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'FieldtypePageTitleLanguage', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'FieldtypeTextareaLanguage', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'LanguageSupportPageNames', '3', '{\"moduleVersion\":9,\"pageNumUrlPrefix1010\":\"page\",\"useHomeSegment\":\"0\",\"pageNumUrlPrefix1020\":\"lap\"}', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'LanguageTabs', '11', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'ProcessRecentPages', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'ProcessLogger', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'InputfieldIcon', '0', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'MaintenanceMode', '3', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'ProcessWireUpgrade', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'ProcessWireUpgradeCheck', '11', '{\"useLoginHook\":\"0\"}', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('174', 'ProcessDatabaseBackups', '1', '', '2016-11-17 10:45:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('176', 'FieldtypeRepeater', '3', '{\"repeatersRootPageID\":1025}', '2016-11-18 17:52:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('177', 'InputfieldRepeater', '0', '', '2016-11-18 17:52:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('178', 'PageFrontEdit', '2', '{\"inlineEditFields\":[76,78,82,79],\"inlineLimitPage\":\"1\",\"buttonLocation\":\"auto\",\"buttonType\":\"auto\"}', '2016-11-19 14:49:29');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('182', 'InputfieldPageAutocomplete', '0', '', '2016-11-19 19:46:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('183', 'FieldtypeSelectExtOption', '1', '', '2017-10-11 09:19:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('184', 'TextformatterMarkdownExtra', '1', '', '2017-10-11 09:24:45');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('188', 'TracyDebugger', '3', '{\"enabled\":1,\"coreBranch\":\"master\",\"outputMode\":\"development\",\"allowLogProduction\":1,\"superuserForceDevelopment\":\"\",\"guestForceDevelopmentLocal\":\"\",\"ipAddress\":\"\",\"strictMode\":\"\",\"strictModeAjax\":\"\",\"forceScream\":\"\",\"showLocation\":[\"Tracy\\\\Dumper::LOCATION_SOURCE\",\"Tracy\\\\Dumper::LOCATION_LINK\",\"Tracy\\\\Dumper::LOCATION_CLASS\"],\"logSeverity\":[],\"maxDepth\":3,\"maxLength\":150,\"email\":\"\",\"clearEmailSent\":\"\",\"referencePageEdited\":1,\"showDebugBar\":[\"frontend\",\"backend\"],\"hideDebugBarModals\":[\"regularModal\",\"inlineModal\",\"overlayPanels\"],\"hideDebugBarTemplates\":[],\"hideDebugBar\":\"\",\"showPanelLabels\":\"\",\"panelZindex\":100,\"frontendPanels\":[\"processwireInfo\",\"requestInfo\",\"processwireLogs\",\"tracyLogs\",\"methodsInfo\",\"debugMode\",\"templatePath\",\"console\",\"templateEditor\",\"dumpsRecorder\",\"panelSelector\",\"tracyToggler\"],\"backendPanels\":[\"processwireInfo\",\"requestInfo\",\"processwireLogs\",\"tracyLogs\",\"methodsInfo\",\"debugMode\",\"console\",\"dumpsRecorder\",\"panelSelector\",\"tracyToggler\"],\"restrictedUserDisabledPanels\":[],\"editor\":\"subl:\\/\\/open\\/?url=file:\\/\\/%file&line=%line\",\"localRootPath\":\"\",\"processwireInfoPanelSections\":[\"apiVariables\",\"coreClasses\",\"configData\",\"versionsList\",\"adminLinks\",\"documentationLinks\"],\"showPWInfoPanelIconLabels\":1,\"requestInfoPanelSections\":[\"moduleSettings\",\"templateSettings\",\"fieldSettings\",\"pageInfo\",\"languageInfo\",\"templateInfo\",\"fieldsListValues\",\"serverRequest\",\"inputGet\",\"inputPost\",\"inputCookie\",\"editLinks\"],\"debugModePanelSections\":[\"pagesLoaded\",\"session\",\"modulesLoaded\",\"hooks\",\"databaseQueries\",\"selectorQueries\",\"timers\",\"user\",\"cache\",\"autoload\"],\"alwaysShowDebugTools\":1,\"diagnosticsPanelSections\":[\"filesystemFolders\",\"mysqlInfo\"],\"todoIgnoreDirs\":\"git, svn, images, img, errors, sass-cache, node_modules\",\"todoAllowedExtensions\":\"php, module, inc, txt, latte, html, htm, md, css, scss, less, js\",\"todoScanModules\":1,\"numLogEntries\":10,\"variablesShowPwObjects\":\"\",\"snippetsPath\":\"templates\",\"customPhpCode\":\"\",\"styleWhere\":[],\"styleAdminElements\":\"body::before {\\n\\tcontent: \\\"[type]\\\";\\n\\tbackground: [color];\\n\\tposition: fixed;\\n\\tleft: 0;\\n\\tbottom: 100%;\\n\\tcolor: #ffffff;\\n\\twidth: 100vh;\\n\\tpadding: 0;\\n\\ttext-align: center;\\n\\tfont-weight: 600;\\n\\ttext-transform: uppercase;\\n\\ttransform: rotate(90deg);\\n\\ttransform-origin: bottom left;\\n\\tz-index: 999999;\\n\\tfont-size: 11px;\\n\\theight: 13px;\\n\\tline-height: 13px;\\npointer-events: none;\\n}\",\"styleAdminColors\":\"local|#ca6500\\ndev.*|#990000\\nstaging.*|#8b0066\",\"userDevTemplate\":\"\",\"userDevTemplateSuffix\":\"dev\",\"showUserBar\":\"\",\"showUserBarTracyUsers\":null,\"userBarFeatures\":[\"admin\",\"editPage\"],\"userBarCustomFeatures\":\"\",\"userBarTopBottom\":\"bottom\",\"userBarLeftRight\":\"left\",\"userBarBackgroundColor\":null,\"userBarBackgroundOpacity\":\"1\",\"userBarIconColor\":\"#666666\",\"enableShortcutMethods\":1,\"enabledShortcutMethods\":[\"debugAll\",\"da\",\"dump\",\"d\",\"barDump\",\"bd\",\"barDumpLive\",\"bdl\",\"l\",\"timer\",\"t\",\"fireLog\",\"fl\",\"addBreakpoint\",\"bp\",\"templateVars\",\"tv\"]}', '2017-10-12 12:47:25');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('189', 'DictionarySupport', '3', '{\"sourcefield\":\"dict_source\",\"optionsfield\":\"dict_options\",\"logfield\":\"dict_log\",\"jobfield\":\"dict_jobs\",\"dictionary_template\":\"dictionary\",\"headword_template\":\"headword\",\"variant_template\":null,\"wordform_template\":null,\"tagmappings\":\"{\\n  \\\"entry\\\":\\\"entry\\\",\\n  \\\"headword\\\":\\\"U\\\",\\n  \\\"related\\\":\\\"R\\\",\\n  \\\"comment\\\":\\\"K\\\",\\n  \\\"meaning\\\":\\\"J\\\",\\n  \\\"variant\\\":\\\"Q\\\",\\n  \\\"wordform\\\":\\\"B\\\",\\n  \\\"wordform_example\\\":\\\"I\\\"\\n}\"}', '2017-10-13 11:26:07');

DROP TABLE IF EXISTS `page_path_history`;
CREATE TABLE `page_path_history` (
  `path` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `pages_id` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `language_id` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`path`),
  KEY `pages_id` (`pages_id`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name1020` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status1020` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  UNIQUE KEY `name1020_parent_id` (`name1020`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=InnoDB AUTO_INCREMENT=1706 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1', '0', '1', 'en', '9', '2017-10-11 11:29:54', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '0', 'hu', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('2', '1', '2', 'admin', '1035', '2017-10-11 08:48:53', '40', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('3', '2', '2', 'page', '21', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('6', '3', '2', 'add', '21', '2016-11-17 10:45:35', '40', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('7', '1', '2', 'trash', '1039', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('8', '3', '2', 'list', '21', '2017-10-11 08:48:53', '40', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('9', '3', '2', 'sort', '1047', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('10', '3', '2', 'edit', '1045', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('11', '22', '2', 'template', '21', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('16', '22', '2', 'field', '21', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('21', '2', '2', 'module', '21', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('22', '2', '2', 'setup', '21', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('23', '2', '2', 'login', '1035', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('27', '1', '29', 'http404', '1035', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '3', '2016-11-17 10:45:35', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('28', '2', '2', 'access', '13', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('29', '28', '2', 'users', '29', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('30', '28', '2', 'roles', '29', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('31', '28', '2', 'permissions', '29', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('32', '31', '5', 'page-edit', '25', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('34', '31', '5', 'page-delete', '25', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('35', '31', '5', 'page-move', '25', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('36', '31', '5', 'page-view', '25', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('37', '30', '4', 'guest', '25', '2017-10-13 11:27:59', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('38', '30', '4', 'superuser', '25', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('40', '29', '3', 'guest', '25', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('41', '29', '3', 'admin', '1', '2017-10-11 08:48:53', '40', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('50', '31', '5', 'page-sort', '25', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('51', '31', '5', 'page-template', '25', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('52', '31', '5', 'user-admin', '25', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('53', '31', '5', 'profile-edit', '1', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '13', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('54', '31', '5', 'page-lock', '1', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('300', '3', '2', 'search', '1045', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('301', '3', '2', 'trash', '1047', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('302', '3', '2', 'link', '1041', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '7', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('303', '3', '2', 'image', '1041', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('304', '2', '2', 'profile', '1025', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1000', '1', '26', 'search', '1025', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1001', '1', '29', 'about', '1', '2016-11-19 20:17:57', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1002', '1001', '29', 'child-page-example-1', '1', '2016-11-19 20:17:50', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1004', '1001', '29', 'child-page-example-2', '1', '2016-11-19 20:29:41', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1005', '1', '34', 'site-map', '1025', '2017-10-13 05:55:59', '41', '2016-11-17 10:45:35', '2', '2016-11-17 10:45:35', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1006', '31', '5', 'page-lister', '1', '2016-11-17 10:45:35', '40', '2016-11-17 10:45:35', '40', '2016-11-17 10:45:35', '9', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1007', '3', '2', 'lister', '1', '2016-11-17 10:45:35', '40', '2016-11-17 10:45:35', '40', '2016-11-17 10:45:35', '9', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1009', '22', '2', 'languages', '16', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1010', '1009', '43', 'default', '16', '2017-10-13 12:37:45', '41', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1011', '22', '2', 'language-translator', '1040', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1015', '3', '2', 'recent-pages', '1', '2016-11-17 10:45:35', '40', '2016-11-17 10:45:35', '40', '2016-11-17 10:45:35', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1016', '31', '5', 'page-edit-recent', '1', '2016-11-17 10:45:35', '40', '2016-11-17 10:45:35', '40', '2016-11-17 10:45:35', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1017', '22', '2', 'logs', '1', '2016-11-17 10:45:35', '40', '2016-11-17 10:45:35', '40', '2016-11-17 10:45:35', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1018', '31', '5', 'logs-view', '1', '2016-11-17 10:45:35', '40', '2016-11-17 10:45:35', '40', '2016-11-17 10:45:35', '11', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1019', '31', '5', 'logs-edit', '1', '2016-11-17 10:45:35', '40', '2016-11-17 10:45:35', '40', '2016-11-17 10:45:35', '12', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1020', '1009', '43', 'hu', '1', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1021', '22', '2', 'upgrades', '1', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '5', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1022', '22', '2', 'db-backups', '1', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '6', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1023', '31', '5', 'db-backup', '1', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '41', '2016-11-17 10:45:35', '13', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1025', '2', '2', 'repeaters', '1036', '2016-11-18 17:52:42', '41', '2016-11-18 17:52:42', '41', '2016-11-18 17:52:42', '6', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1026', '1025', '2', 'for-field-104', '17', '2016-11-18 17:52:43', '41', '2016-11-18 17:52:43', '41', '2016-11-18 17:52:43', '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1030', '31', '5', 'page-edit-front', '1', '2016-11-19 14:49:29', '41', '2016-11-19 14:49:29', '41', '2016-11-19 14:49:29', '14', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1034', '1026', '2', 'for-page-1', '17', '2016-11-19 15:46:58', '41', '2016-11-19 15:46:58', '41', '2016-11-19 15:46:58', '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1037', '1034', '45', '1479570719-4907-1', '1', '2016-11-19 20:13:34', '41', '2016-11-19 15:51:59', '41', '2016-11-19 15:52:33', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1038', '1034', '45', '1479570769-0001-1', '1', '2016-11-19 20:13:34', '41', '2016-11-19 15:52:49', '41', '2016-11-19 15:53:14', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1039', '1034', '45', '1479584666-7216-1', '1', '2016-11-19 20:13:34', '41', '2016-11-19 19:44:26', '41', '2016-11-19 19:47:25', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1040', '7', '2', '1040.3.10_dict-manage', '8193', '2017-10-13 11:25:29', '41', '2017-10-11 10:17:38', '41', '2017-10-11 10:17:38', '10', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1043', '1', '46', 'dictionary', '1', '2017-10-13 12:24:29', '41', '2017-10-11 10:38:28', '41', '2017-10-11 10:38:34', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1580', '3', '2', 'dict-manage', '1', '2017-10-13 11:26:07', '41', '2017-10-13 11:26:07', '41', '2017-10-13 11:26:07', '10', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1581', '31', '5', 'dict-view', '1', '2017-10-13 11:26:07', '41', '2017-10-13 11:26:07', '41', '2017-10-13 11:26:07', '15', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1582', '31', '5', 'dict-edit', '1', '2017-10-13 11:26:07', '41', '2017-10-13 11:26:07', '41', '2017-10-13 11:26:07', '16', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1583', '31', '5', 'dict-manage', '1', '2017-10-13 11:26:07', '41', '2017-10-13 11:26:07', '41', '2017-10-13 11:26:07', '17', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1645', '1043', '47', '-e', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1646', '1043', '47', 'xn--tl-7ra', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '1', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1647', '1043', '47', 'xn--abafja-sta', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '2', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1648', '1043', '47', 'absolon', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '3', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1649', '1043', '47', 'afrika', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '4', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1650', '1043', '47', 'agnus_dei', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '5', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1651', '1043', '47', 'agrippa', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '6', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1652', '1043', '47', 'babilon', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '7', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1653', '1043', '47', 'xn--babilnia-z3a', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '8', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1654', '1043', '47', 'babylas', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '9', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1655', '1043', '47', 'bacchus', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '10', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1656', '1043', '47', 'bajazet', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '11', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1657', '1043', '47', 'balak', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '12', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1658', '1043', '47', 'xn--balkn-0qa', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '13', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1659', '1043', '47', 'baszileiosz', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '14', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1660', '1043', '47', 'caesar', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '15', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1661', '1043', '47', 'caesarea', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '16', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1662', '1043', '47', 'canalis-part', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '17', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1663', '1043', '47', 'canalis', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '18', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1664', '1043', '47', 'candia', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '19', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1665', '1043', '47', 'candidae', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '20', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1666', '1043', '47', 'cantacuzino', '1', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '41', '2017-10-13 12:24:27', '21', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1667', '1043', '47', 'cantharas', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '22', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1668', '1043', '47', 'cantipreus', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '23', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1669', '1043', '47', 'xn--dadog-4ta', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '24', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1670', '1043', '47', 'dagadni', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '25', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1671', '1043', '47', 'dagadozni', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '26', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1672', '1043', '47', 'xn--dagads-tta', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '27', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1673', '1043', '47', 'dajka', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '28', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1674', '1043', '47', 'dalmatika', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '29', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1675', '1043', '47', 'damaszkusz-beli', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '30', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1676', '1043', '47', 'damaszkuszi', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '31', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1677', '1043', '47', 'eb', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '32', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1678', '1043', '47', 'xn--cossai-9ua', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '33', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1679', '1043', '47', 'xn--des-anya-90a', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '34', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1680', '1043', '47', 'xn--des-atya-90a', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '35', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1681', '1043', '47', 'xn--des-keser-93a91m', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '36', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1682', '1043', '47', 'xn--des-9la', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '37', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1683', '1043', '47', 'xn--dessg-9rae', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '38', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1684', '1043', '47', 'xn--g_1-9la', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '39', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1685', '1043', '47', 'xn--g_2-9la', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '40', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1686', '1043', '47', 'xn--gbe-kilt-eza7e3f', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1687', '1043', '47', 'xn--ldz-tna1a', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '42', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1688', '1043', '47', 'xn--ldzhet-xxa9b', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '43', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1689', '1043', '47', 'xn--ldzni-kua3b', '1', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '41', '2017-10-13 12:24:28', '44', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1690', '1043', '47', 'xn--ldzvn-esa2gzb', '1', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '45', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1691', '1043', '47', 'xn--ldz-tna1a82c', '1', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '46', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1692', '1043', '47', 'xn--lhet-zra', '1', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '47', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1693', '1043', '47', 'xn--lni-goa', '1', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '48', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1694', '1043', '47', 'xn--ltet-zra', '1', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '49', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1695', '1043', '47', 'xn--ltetett-m2a', '1', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '50', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1696', '1043', '47', 'xn--ltetve-2ya', '1', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '51', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1697', '1043', '47', 'xn--ltetvn-fva0m', '1', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '52', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1698', '1043', '47', 'xn--ltets-esa2k', '1', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '53', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1699', '1043', '47', 'xn--zn_kpri-90a6cf', '1', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '54', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1700', '1043', '47', 'xn---alatta-1mb', '1', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '55', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1701', '1043', '47', 'xn---al-gla07c', '1', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '56', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1702', '1043', '47', 'xn---alja-zqa49e', '1', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '57', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1703', '1043', '47', 'xn---bele-39a', '1', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '58', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1704', '1043', '47', 'xn---belle-2gbe', '1', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '59', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1705', '1043', '47', 'xn---benne-2gb', '1', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '41', '2017-10-13 12:24:29', '60', NULL, '0');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2016-11-17 10:45:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2016-11-17 10:45:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2016-11-17 10:45:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2016-11-17 10:45:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2016-11-17 10:45:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2016-11-17 10:45:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2016-11-17 10:45:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2016-11-17 10:45:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2016-11-17 10:45:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2016-11-17 10:45:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2016-11-17 10:45:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2016-11-17 10:45:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1010', '2', '2016-11-17 10:45:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '2', '2016-11-17 10:45:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1018', '2', '2016-11-17 10:45:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1019', '2', '2016-11-17 10:45:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1020', '2', '2016-11-17 10:45:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1023', '2', '2016-11-17 10:45:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1030', '2', '2016-11-19 14:49:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1037', '2', '2016-11-19 15:51:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1038', '2', '2016-11-19 15:52:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1039', '2', '2016-11-19 19:44:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1043', '1', '2017-10-11 10:38:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1581', '2', '2017-10-13 11:26:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1582', '2', '2017-10-13 11:26:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1583', '2', '2017-10-13 11:26:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1645', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1646', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1647', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1648', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1649', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1650', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1651', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1652', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1653', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1654', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1655', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1656', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1657', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1658', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1659', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1660', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1661', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1662', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1663', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1664', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1665', '1', '2017-10-13 12:24:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1666', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1667', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1668', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1669', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1670', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1671', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1672', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1673', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1674', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1675', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1676', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1677', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1678', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1679', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1680', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1681', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1682', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1683', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1684', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1685', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1686', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1687', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1688', '1', '2017-10-13 12:24:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1689', '1', '2017-10-13 12:24:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1690', '1', '2017-10-13 12:24:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1691', '1', '2017-10-13 12:24:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1692', '1', '2017-10-13 12:24:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1693', '1', '2017-10-13 12:24:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1694', '1', '2017-10-13 12:24:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1695', '1', '2017-10-13 12:24:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1696', '1', '2017-10-13 12:24:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1697', '1', '2017-10-13 12:24:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1698', '1', '2017-10-13 12:24:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1699', '1', '2017-10-13 12:24:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1700', '1', '2017-10-13 12:24:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1701', '1', '2017-10-13 12:24:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1702', '1', '2017-10-13 12:24:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1703', '1', '2017-10-13 12:24:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1704', '1', '2017-10-13 12:24:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1705', '1', '2017-10-13 12:24:29');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1001', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1002', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1002', '1001');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1004', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1004', '1001');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1005', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1009', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1009', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1009', '22');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1025', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1026', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1026', '1025');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1034', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1034', '1025');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1034', '1026');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) COLLATE utf8_hungarian_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) COLLATE utf8_hungarian_ci NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Home\",\"modified\":1507875744,\"ns\":\"\\\\\",\"label1020\":\"Nyit\\u00f3lap\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1507711488,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('26', 'search', '80', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Search\",\"modified\":1507711488,\"ns\":\"ProcessWire\",\"label1020\":\"Keres\\u00e9s\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"label\":\"Basic Page\",\"modified\":1507711488,\"ns\":\"ProcessWire\",\"label1020\":\"Egyszer\\u0171 weboldal\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('34', 'sitemap', '88', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"redirectLogin\":23,\"slashUrls\":1,\"compile\":3,\"label\":\"Site Map\",\"modified\":1507711488,\"ns\":\"ProcessWire\",\"label1020\":\"Oldalt\\u00e9rk\\u00e9p\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'language', '97', '8', '0', '{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"nameContentTab\":1,\"modified\":1409651146}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'repeater_cards', '98', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1479491563}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'repeater_cards1', '99', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1479491582}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'dictionary', '100', '0', '0', '{\"slashUrls\":1,\"pageLabelField\":\"fa-book title\",\"compile\":3,\"modified\":1507898667,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'headword', '101', '0', '0', '{\"slashUrls\":1,\"pageLabelField\":\"fa-newspaper-o title\",\"noLang\":1,\"compile\":3,\"modified\":1507897448,\"ns\":\"ProcessWire\"}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":34,"numCreateTables":41,"numInserts":895,"numSeconds":0}