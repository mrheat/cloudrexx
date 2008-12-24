#--------------------------------------------------------------
# Info:		Contrexx CMS database backup file
# Version:	1.3-dev Unstable
# Edition:	Premium
# Created:	12:00:03 17.11.2008
#--------------------------------------------------------------


#--------------------------------------------------------------
# Table:	contrexx_access_group_dynamic_ids
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_access_group_dynamic_ids`;

CREATE TABLE `contrexx_access_group_dynamic_ids` (
 `access_id` int(11) unsigned NOT NULL default '0',
 `group_id` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_access_group_dynamic_ids` (`access_id`, `group_id`) VALUES 
('5', '1'),
('6', '3'),
('6', '4'),
('6', '5'),
('7', '3');

#--------------------------------------------------------------
# Table:	contrexx_access_group_static_ids
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_access_group_static_ids`;

CREATE TABLE `contrexx_access_group_static_ids` (
 `access_id` int(11) unsigned NOT NULL default '0',
 `group_id` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_access_group_static_ids` (`access_id`, `group_id`) VALUES 
('1', '1'),
('5', '1'),
('6', '1'),
('53', '1'),
('37', '1'),
('36', '1'),
('35', '1'),
('26', '1'),
('79', '1'),
('80', '1'),
('75', '1'),
('77', '1'),
('78', '1'),
('7', '1'),
('39', '1'),
('38', '1'),
('32', '1'),
('10', '1'),
('84', '1'),
('85', '1'),
('76', '1'),
('8', '1'),
('2', '1'),
('13', '1'),
('9', '1'),
('11', '1'),
('12', '1'),
('65', '1'),
('66', '1'),
('67', '1'),
('68', '1'),
('69', '1'),
('70', '1'),
('27', '1'),
('25', '1'),
('16', '1'),
('14', '1'),
('59', '1'),
('92', '1'),
('96', '1'),
('94', '1'),
('97', '1'),
('64', '1'),
('60', '1'),
('83', '1'),
('98', '1'),
('82', '1'),
('87', '1'),
('106', '1'),
('107', '1'),
('108', '1'),
('109', '1'),
('3', '1'),
('18', '1'),
('31', '1'),
('20', '1'),
('41', '1'),
('21', '1'),
('46', '1'),
('47', '1'),
('22', '1'),
('48', '1'),
('50', '1'),
('49', '1'),
('23', '1'),
('52', '1'),
('51', '1'),
('19', '1'),
('40', '1'),
('17', '1'),
('115', '1'),
('4', '1'),
('24', '1'),
('54', '1'),
('55', '1'),
('56', '1'),
('110', '1'),
('1', '2'),
('5', '2'),
('6', '2'),
('35', '2'),
('75', '2'),
('7', '2'),
('32', '2'),
('10', '2'),
('84', '2'),
('76', '2'),
('8', '2'),
('2', '2'),
('13', '2'),
('9', '2'),
('11', '2'),
('12', '2'),
('65', '2'),
('66', '2'),
('67', '2'),
('69', '2'),
('27', '2'),
('25', '2'),
('16', '2'),
('14', '2'),
('59', '2'),
('64', '2'),
('83', '2'),
('98', '2'),
('82', '2'),
('87', '2'),
('3', '2'),
('18', '2'),
('20', '2'),
('21', '2'),
('22', '2'),
('23', '2'),
('19', '2'),
('4', '2'),
('55', '2'),
('56', '2'),
('110', '2'),
('61', '3'),
('116', '3'),
('96', '3'),
('99', '3'),
('119', '1'),
('120', '1'),
('121', '1'),
('122', '1'),
('123', '1'),
('125', '1'),
('124', '1'),
('88', '1'),
('119', '2'),
('120', '2'),
('121', '2'),
('122', '2'),
('123', '2'),
('125', '2'),
('127', '1'),
('127', '2'),
('126', '1'),
('127', '1'),
('127', '2');

#--------------------------------------------------------------
# Table:	contrexx_access_rel_user_group
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_access_rel_user_group`;

CREATE TABLE `contrexx_access_rel_user_group` (
 `user_id` int(10) unsigned NOT NULL default '0',
 `group_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_access_rel_user_group` (`user_id`, `group_id`) VALUES 
('1', '1');

#--------------------------------------------------------------
# Table:	contrexx_access_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_access_settings`;

CREATE TABLE `contrexx_access_settings` (
 `key` varchar(32) NOT NULL default '',
 `value` varchar(255) NOT NULL default '',
 `status` tinyint(1) unsigned NOT NULL default '0',
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_access_settings` (`key`, `value`, `status`) VALUES 
('assigne_to_groups', '3', '1'),
('block_birthday_users', '10', '1'),
('block_birthday_users_only_with_p', '', '0'),
('block_birthday_users_pic', '', '0'),
('block_currently_online_users', '10', '1'),
('block_currently_online_users_onl', '', '0'),
('block_currently_online_users_pic', '', '0'),
('block_last_active_users', '10', '1'),
('block_last_active_users_only_wit', '', '0'),
('block_last_active_users_pic', '', '0'),
('block_latest_reg_users', '10', '1'),
('block_latest_reg_users_pic', '', '0'),
('block_latest_registered_users', '10', '0'),
('block_latest_registered_users_on', '', '0'),
('default_email_access', 'members_only', '1'),
('default_profile_access', 'members_only', '1'),
('max_pic_height', '600', '1'),
('max_pic_size', '199987.2', '1'),
('max_pic_width', '600', '1'),
('max_profile_pic_height', '160', '1'),
('max_profile_pic_size', '30003.2', '1'),
('max_profile_pic_width', '160', '1'),
('max_thumbnail_pic_height', '130', '1'),
('max_thumbnail_pic_width', '130', '1'),
('notification_address', 'info@example.com', '1'),
('profile_thumbnail_pic_height', '50', '1'),
('profile_thumbnail_pic_width', '50', '1'),
('user_activation', '', '0'),
('user_activation_timeout', '1', '0'),
('user_config_email_access', '', '1'),
('user_config_profile_access', '', '1'),
('user_delete_account', '', '1');

#--------------------------------------------------------------
# Table:	contrexx_access_user_attribute
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_access_user_attribute`;

CREATE TABLE `contrexx_access_user_attribute` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `parent_id` int(10) unsigned NOT NULL default '0',
 `type` enum('text','textarea','mail','uri','date','image','menu','menu_option','group','frame','history') NOT NULL default 'text',
 `mandatory` enum('0','1') NOT NULL default '0',
 `sort_type` enum('asc','desc','custom') NOT NULL default 'asc',
 `order_id` int(10) unsigned NOT NULL default '0',
 `access_special` enum('','menu_select_higher','menu_select_lower') NOT NULL default '',
 `access_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_access_user_attribute` (`id`, `parent_id`, `type`, `mandatory`, `sort_type`, `order_id`, `access_special`, `access_id`) VALUES 
('1', '0', 'text', '0', 'asc', '0', '', '0');

#--------------------------------------------------------------
# Table:	contrexx_access_user_attribute_name
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_access_user_attribute_name`;

CREATE TABLE `contrexx_access_user_attribute_name` (
 `attribute_id` int(10) unsigned NOT NULL default '0',
 `lang_id` int(10) unsigned NOT NULL default '0',
 `name` varchar(255) NOT NULL default '',
  PRIMARY KEY (`attribute_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_access_user_attribute_name` (`attribute_id`, `lang_id`, `name`) VALUES 
('1', '1', 'testeigenschaft');

#--------------------------------------------------------------
# Table:	contrexx_access_user_attribute_value
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_access_user_attribute_value`;

CREATE TABLE `contrexx_access_user_attribute_value` (
 `attribute_id` int(10) unsigned NOT NULL default '0',
 `user_id` int(10) unsigned NOT NULL default '0',
 `history_id` int(10) unsigned NOT NULL default '0',
 `value` text NOT NULL,
  PRIMARY KEY (`attribute_id`,`user_id`,`history_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_access_user_attribute_value` (`attribute_id`, `user_id`, `history_id`, `value`) VALUES 
('1', '1', '0', '');

#--------------------------------------------------------------
# Table:	contrexx_access_user_core_attribute
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_access_user_core_attribute`;

CREATE TABLE `contrexx_access_user_core_attribute` (
 `id` varchar(25) NOT NULL,
 `mandatory` enum('0','1') NOT NULL default '0',
 `sort_type` enum('asc','desc','custom') NOT NULL default 'asc',
 `order_id` int(10) unsigned NOT NULL default '0',
 `access_special` enum('','menu_select_higher','menu_select_lower') NOT NULL default '',
 `access_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



#--------------------------------------------------------------
# Table:	contrexx_access_user_groups
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_access_user_groups`;

CREATE TABLE `contrexx_access_user_groups` (
 `group_id` int(6) unsigned NOT NULL auto_increment,
 `group_name` varchar(100) NOT NULL default '',
 `group_description` varchar(255) NOT NULL default '',
 `is_active` tinyint(4) NOT NULL default '1',
 `type` enum('frontend','backend') NOT NULL default 'frontend',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6;

INSERT INTO `contrexx_access_user_groups` (`group_id`, `group_name`, `group_description`, `is_active`, `type`) VALUES 
('1', 'Standard Administrator', '-', '1', 'backend'),
('2', 'Demo', 'Demo Benutzergruppe ohne Schreibrechte', '1', 'backend'),
('3', 'Community', 'Community users', '1', 'frontend'),
('4', 'Forum: Administratoren', 'Gruppe der Forenadministratoren', '1', 'frontend'),
('5', 'Forum: Benutzer', 'Gruppe der Forenbenutzer', '1', 'frontend');

#--------------------------------------------------------------
# Table:	contrexx_access_user_mail
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_access_user_mail`;

CREATE TABLE `contrexx_access_user_mail` (
 `type` enum('reg_confirm','reset_pw','user_activated','user_deactivated','new_user') NOT NULL,
 `lang_id` tinyint(2) unsigned NOT NULL default '0',
 `sender_mail` varchar(255) NOT NULL default '',
 `sender_name` varchar(255) NOT NULL default '',
 `subject` varchar(255) NOT NULL default '',
 `format` enum('text','html','multipart') NOT NULL default 'text',
 `body_text` text NOT NULL,
 `body_html` text NOT NULL,
  UNIQUE KEY `mail` (`type`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_access_user_mail` (`type`, `lang_id`, `sender_mail`, `sender_name`, `subject`, `format`, `body_text`, `body_html`) VALUES 
('reg_confirm', '0', 'info@example.com', 'admin', 'Benutzerregistrierung bestätigen', 'text', 'Hallo [[USERNAME]],\r\n\r\nVielen Dank für Ihre Anmeldung bei [[HOST]].\r\nBitte klicken Sie auf den folgenden Link, um Ihre E-Mail-Adresse zu bestätigen:\r\n[[ACTIVATION_LINK]]\r\n\r\nUm sich später einzuloggen, geben Sie bitte Ihren Benutzernamen \"[[USERNAME]]\" und das Passwort ein, das Sie bei der Registrierung festgelegt haben.\r\n\r\n\r\n--\r\nIhr [[SENDER]]', ''),
('reset_pw', '0', 'info@example.com', 'admin', 'Kennwort zurücksetzen', 'text', 'Hallo [[USERNAME]],\r\n\r\nUm ein neues Passwort zu wählen, müssen Sie auf die unten aufgeführte URL gehen und dort Ihr neues Passwort eingeben.\r\n\r\nWICHTIG: Die Gültigkeit der URL wird nach 60 Minuten verfallen, nachdem diese E-Mail abgeschickt wurde.\r\nFalls Sie mehr Zeit benötigen, geben Sie Ihre E-Mail Adresse einfach ein weiteres Mal ein.\r\n\r\nIhre URL:\r\n[[URL]]\r\n\r\n\r\n--\r\n[[SENDER]]', ''),
('user_activated', '0', 'info@example.com', 'admin', 'Ihr Benutzerkonto wurde aktiviert', 'text', 'Hallo [[USERNAME]],\r\n\r\nIhr Benutzerkonto auf [[HOST]] wurde soeben aktiviert und kann von nun an verwendet werden.\r\n\r\n\r\n--\r\n[[SENDER]]', ''),
('user_deactivated', '0', 'info@example.com', 'admin', 'Ihr Benutzerkonto wurde deaktiviert', 'text', 'Hallo [[USERNAME]],\r\n\r\nIhr Benutzerkonto auf [[HOST]] wurde soeben deaktiviert.\r\n\r\n\r\n--\r\n[[SENDER]]', ''),
('new_user', '0', 'info@example.com', 'admin', 'Ein neuer Benutzer hat sich registriert', 'text', 'Der Benutzer [[USERNAME]] hat sich soeben registriert und muss nun frei geschaltet werden.\r\n\r\nÜber die folgende Adresse kann das Benutzerkonto von [[USERNAME]] verwaltet werden:\r\n[[LINK]]\r\n\r\n\r\n--\r\n[[SENDER]]', '');

#--------------------------------------------------------------
# Table:	contrexx_access_user_profile
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_access_user_profile`;

CREATE TABLE `contrexx_access_user_profile` (
 `user_id` int(10) unsigned NOT NULL,
 `gender` enum('gender_undefined','gender_female','gender_male') NOT NULL default 'gender_undefined',
 `title` int(10) unsigned NOT NULL default '0',
 `firstname` varchar(255) NOT NULL default '',
 `lastname` varchar(255) NOT NULL default '',
 `company` varchar(255) NOT NULL default '',
 `address` varchar(255) NOT NULL default '',
 `city` varchar(50) NOT NULL default '',
 `zip` varchar(10) NOT NULL default '',
 `country` smallint(5) unsigned NOT NULL default '0',
 `phone_office` varchar(20) NOT NULL default '',
 `phone_private` varchar(20) NOT NULL default '',
 `phone_mobile` varchar(20) NOT NULL default '',
 `phone_fax` varchar(20) NOT NULL default '',
 `birthday` varchar(10) NULL default '',
 `website` varchar(255) NOT NULL default '',
 `profession` varchar(150) NOT NULL default '',
 `interests` varchar(255) NOT NULL default '',
 `signature` varchar(255) NOT NULL default '',
 `picture` varchar(255) NOT NULL default '',
  PRIMARY KEY (`user_id`),
  KEY `profile` (`firstname`(100),`lastname`(100),`company`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_access_user_profile` (`user_id`, `gender`, `title`, `firstname`, `lastname`, `company`, `address`, `city`, `zip`, `country`, `phone_office`, `phone_private`, `phone_mobile`, `phone_fax`, `birthday`, `website`, `profession`, `interests`, `signature`, `picture`) VALUES 
('1', 'gender_undefined', '0', 'CMS', 'System Benutzer', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '');

#--------------------------------------------------------------
# Table:	contrexx_access_user_title
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_access_user_title`;

CREATE TABLE `contrexx_access_user_title` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `title` varchar(255) NOT NULL default '',
 `order_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7;

INSERT INTO `contrexx_access_user_title` (`id`, `title`, `order_id`) VALUES 
('1', 'Sehr geehrte Frau', '0'),
('2', 'Sehr geehrter Herr', '0'),
('3', 'Dear Ms', '0'),
('4', 'Dear Mr', '0'),
('5', 'Madame', '0'),
('6', 'Monsieur', '0');

#--------------------------------------------------------------
# Table:	contrexx_access_user_validity
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_access_user_validity`;

CREATE TABLE `contrexx_access_user_validity` (
 `validity` int(10) unsigned NOT NULL,
  PRIMARY KEY (`validity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_access_user_validity` (`validity`) VALUES 
('0'),
('1'),
('15'),
('31'),
('62'),
('92'),
('123'),
('184'),
('366'),
('731');

#--------------------------------------------------------------
# Table:	contrexx_access_users
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_access_users`;

CREATE TABLE `contrexx_access_users` (
 `id` int(5) unsigned NOT NULL auto_increment,
 `is_admin` tinyint(1) unsigned NOT NULL default '0',
 `username` varchar(40) NULL,
 `password` varchar(32) NULL,
 `regdate` int(14) unsigned NOT NULL default '0',
 `expiration` int(14) unsigned NOT NULL default '0',
 `validity` int(10) unsigned NOT NULL default '0',
 `last_auth` int(14) unsigned NOT NULL default '0',
 `last_activity` int(14) unsigned NOT NULL default '0',
 `email` varchar(255) NULL,
 `email_access` enum('everyone','members_only','nobody') NOT NULL default 'nobody',
 `frontend_lang_id` int(2) unsigned NOT NULL default '0',
 `backend_lang_id` int(2) unsigned NOT NULL default '0',
 `active` tinyint(1) NOT NULL default '0',
 `profile_access` enum('everyone','members_only','nobody') NOT NULL default 'members_only',
 `restore_key` varchar(32) NOT NULL default '',
 `restore_key_time` int(14) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_access_users` (`id`, `is_admin`, `username`, `password`, `regdate`, `expiration`, `validity`, `last_auth`, `last_activity`, `email`, `email_access`, `frontend_lang_id`, `backend_lang_id`, `active`, `profile_access`, `restore_key`, `restore_key_time`) VALUES 
('1', '1', 'system', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '0', '1226916783', '1226919603', '', 'nobody', '1', '1', '1', 'members_only', '', '0');

#--------------------------------------------------------------
# Table:	contrexx_backend_areas
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_backend_areas`;

CREATE TABLE `contrexx_backend_areas` (
 `area_id` int(6) unsigned NOT NULL auto_increment,
 `parent_area_id` int(6) unsigned NOT NULL default '0',
 `type` enum('group','function','navigation') NULL default 'navigation',
 `scope` enum('global','frontend','backend') NOT NULL default 'global',
 `area_name` varchar(100) NULL,
 `is_active` tinyint(4) NOT NULL default '1',
 `uri` varchar(255) NOT NULL default '',
 `target` varchar(50) NOT NULL default '_self',
 `module_id` int(6) unsigned NOT NULL default '0',
 `order_id` int(6) unsigned NOT NULL default '0',
 `access_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY (`area_id`),
  KEY `area_name` (`area_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=131;

INSERT INTO `contrexx_backend_areas` (`area_id`, `parent_area_id`, `type`, `scope`, `area_name`, `is_active`, `uri`, `target`, `module_id`, `order_id`, `access_id`) VALUES 
('1', '0', 'group', 'global', 'TXT_CONTENT_MANAGEMENT', '1', '', '_self', '1', '0', '1'),
('2', '0', 'group', 'global', 'TXT_MODULE', '1', '', '_self', '1', '2', '2'),
('3', '0', 'group', 'global', 'TXT_ADMINISTRATION', '1', '', '_self', '1', '3', '3'),
('4', '0', 'group', 'global', 'TXT_SYSTEM_INFO', '1', '', '_new', '1', '4', '4'),
('5', '1', 'navigation', 'global', 'TXT_NEW_PAGE', '1', 'index.php?cmd=content&amp;act=new', '_self', '1', '1', '5'),
('6', '1', 'navigation', 'global', 'TXT_CONTENT_MANAGER', '1', 'index.php?cmd=content', '_self', '1', '2', '6'),
('7', '1', 'navigation', 'global', 'TXT_MEDIA_MANAGER', '1', 'index.php?cmd=media&amp;archive=archive1', '_self', '1', '4', '7'),
('8', '1', 'navigation', 'global', 'TXT_SITE_PREVIEW', '1', '../index.php?caching=0', '_blank', '1', '10', '8'),
('9', '2', 'navigation', 'global', 'TXT_GUESTBOOK', '1', 'index.php?cmd=guestbook', '_self', '10', '0', '9'),
('10', '1', 'navigation', 'global', 'TXT_NEWS_MANAGER', '1', 'index.php?cmd=news', '_self', '8', '6', '10'),
('11', '2', 'navigation', 'global', 'TXT_DOC_SYS_MANAGER', '1', 'index.php?cmd=docsys', '_self', '19', '0', '11'),
('12', '2', 'navigation', 'global', 'TXT_THUMBNAIL_GALLERY', '1', 'index.php?cmd=gallery', '_self', '3', '0', '12'),
('13', '2', 'navigation', 'global', 'TXT_SHOP', '1', 'index.php?cmd=shop', '_self', '16', '0', '13'),
('14', '2', 'navigation', 'global', 'TXT_VOTING', '1', 'index.php?cmd=voting', '_self', '17', '0', '14'),
('16', '2', 'navigation', 'global', 'TXT_CALENDAR', '1', 'index.php?cmd=calendar', '_self', '21', '0', '16'),
('17', '3', 'navigation', 'global', 'TXT_SYSTEM_SETTINGS', '1', 'index.php?cmd=settings', '_self', '1', '999', '17'),
('18', '3', 'navigation', 'global', 'TXT_USER_ADMINISTRATION', '1', 'index.php?cmd=access', '_self', '1', '1', '18'),
('19', '3', 'navigation', 'global', 'TXT_STATS', '1', 'index.php?cmd=stats', '_self', '1', '6', '19'),
('20', '3', 'navigation', 'global', 'TXT_DATABASE_MANAGER', '1', 'index.php?cmd=dbm', '_self', '1', '2', '20'),
('21', '3', 'navigation', 'global', 'TXT_DESIGN_MANAGEMENT', '1', 'index.php?cmd=skins', '_self', '1', '3', '21'),
('22', '3', 'navigation', 'global', 'TXT_LANGUAGE_SETTINGS', '1', 'index.php?cmd=language', '_self', '1', '4', '22'),
('23', '3', 'navigation', 'global', 'TXT_MODULE_MANAGER', '1', 'index.php?cmd=modulemanager', '_self', '1', '5', '23'),
('24', '4', 'navigation', 'global', 'TXT_SERVER_INFO', '1', 'index.php?cmd=server', '_self', '1', '1', '24'),
('25', '2', 'navigation', 'global', 'TXT_NEWSLETTER', '1', 'index.php?cmd=newsletter', '_self', '4', '0', '25'),
('26', '6', 'function', 'global', 'TXT_DELETE_PAGES', '1', '', '_self', '0', '0', '26'),
('27', '2', 'navigation', 'global', 'TXT_NEWS_SYNDICATION', '1', 'index.php?cmd=feed', '_self', '22', '0', '27'),
('31', '18', 'function', 'global', 'TXT_EDIT_USERINFOS', '1', '', '_self', '0', '0', '31'),
('32', '1', 'navigation', 'global', 'TXT_IMAGE_ADMINISTRATION', '1', 'index.php?cmd=media&amp;archive=content', '_self', '1', '5', '32'),
('35', '6', 'function', 'global', 'TXT_EDIT_PAGES', '1', '', '_self', '0', '0', '35'),
('36', '6', 'function', 'global', 'TXT_ACCESS_CONTROL', '1', '', '_self', '0', '0', '36'),
('37', '6', 'function', 'global', 'TXT_ADD_REPOSITORY', '1', '', '_self', '0', '0', '37'),
('38', '7', 'function', 'global', 'TXT_MODIFY_MEDIA_FILES', '1', '', '_self', '0', '0', '38'),
('39', '7', 'function', 'global', 'TXT_UPLOAD_MEDIA_FILES', '1', '', '_self', '0', '0', '39'),
('40', '19', 'function', 'global', 'TXT_SETTINGS', '1', '', '_self', '0', '0', '40'),
('41', '20', 'function', 'global', 'TXT_DBM_MAINTENANCE_TITLE', '1', '', '_self', '0', '0', '41'),
('46', '21', 'function', 'global', 'TXT_ACTIVATE_SKINS', '1', '', '_self', '0', '0', '46'),
('47', '21', 'function', 'global', 'TXT_EDIT_SKINS', '1', '', '_self', '0', '0', '47'),
('48', '22', 'function', 'global', 'TXT_EDIT_LANGUAGE_SETTINGS', '1', '', '_self', '0', '0', '48'),
('49', '22', 'function', 'global', 'TXT_DELETE_LANGUAGES', '1', '', '_self', '0', '0', '49'),
('50', '22', 'function', 'global', 'TXT_LANGUAGE_SETTINGS', '1', '', '_self', '0', '0', '50'),
('51', '23', 'function', 'global', 'TXT_REGISTER_MODULES', '1', '', '_self', '0', '0', '51'),
('52', '23', 'function', 'global', 'TXT_INST_REMO_MODULES', '1', '', '_self', '0', '0', '52'),
('53', '6', 'function', 'global', 'TXT_COPY_DELETE_SITES', '1', '', '_self', '0', '0', '53'),
('54', '4', 'navigation', 'global', 'TXT_NETWORK_TOOLS', '1', 'index.php?cmd=nettools', '_self', '0', '2', '54'),
('55', '0', 'group', 'global', 'TXT_HELP_SUPPORT', '1', '', '_self', '1', '5', '55'),
('56', '55', 'navigation', 'global', 'TXT_SUPPORT_FORUM', '1', 'http://www.contrexx.com/forum/', '_blank', '1', '1', '56'),
('59', '2', 'navigation', 'global', 'TXT_LINKS_MODULE_DESCRIPTION', '1', 'index.php?cmd=directory', '_self', '12', '9', '59'),
('62', '1', 'navigation', 'global', 'TXT_BANNER_ADMINISTRATION', '0', 'index.php?cmd=banner', '_self', '28', '8', '62'),
('64', '2', 'navigation', 'global', 'TXT_RECOMMEND', '1', 'index.php?cmd=recommend', '_self', '27', '10', '64'),
('65', '12', 'function', 'global', 'TXT_GALLERY_MENU_OVERVIEW', '1', '', '_self', '3', '1', '65'),
('66', '12', 'function', 'global', 'TXT_GALLERY_MENU_NEW_CATEGORY', '1', '', '_self', '3', '2', '66'),
('67', '12', 'function', 'global', 'TXT_GALLERY_MENU_UPLOAD', '1', '', '_self', '3', '3', '67'),
('68', '12', 'function', 'global', 'TXT_GALLERY_MENU_IMPORT', '1', '', '_self', '3', '4', '68'),
('69', '12', 'function', 'global', 'TXT_GALLERY_MENU_VALIDATE', '1', '', '_self', '3', '5', '69'),
('70', '12', 'function', 'global', 'TXT_GALLERY_MENU_SETTINGS', '1', '', '_self', '3', '6', '70'),
('71', '62', 'function', 'global', 'TXT_BANNER_MENU_OVERVIEW', '0', '', '_self', '28', '1', '71'),
('72', '62', 'function', 'global', 'TXT_BANNER_MENU_GROUP_ADD', '0', '', '_self', '28', '1', '72'),
('73', '62', 'function', 'global', 'TXT_BANNER_MENU_BANNER_NEW', '0', '', '_self', '28', '1', '73'),
('74', '62', 'function', 'global', 'TXT_BANNER_MENU_SETTINGS', '0', '', '_self', '28', '1', '74'),
('75', '1', 'navigation', 'global', 'TXT_CONTENT_HISTORY', '1', 'index.php?cmd=workflow', '_self', '1', '3', '75'),
('76', '1', 'navigation', 'global', 'TXT_BLOCK_SYSTEM', '1', 'index.php?cmd=block', '_self', '7', '9', '76'),
('77', '75', 'function', 'global', 'TXT_DELETED_RESTORE', '1', '', '_self', '0', '1', '77'),
('78', '75', 'function', 'global', 'TXT_WORKFLOW_VALIDATE', '1', '', '_self', '0', '1', '78'),
('79', '6', 'function', 'global', 'TXT_ACTIVATE_HISTORY', '1', '', '_self', '0', '6', '79'),
('80', '6', 'function', 'global', 'TXT_HISTORY_DELETE_ENTRY', '1', '', '_self', '0', '7', '80'),
('81', '3', 'navigation', 'global', 'TXT_SYSTEM_DEVELOPMENT', '0', 'index.php?cmd=development', '_self', '29', '8', '81'),
('82', '2', 'navigation', 'global', 'TXT_LIVECAM', '1', 'index.php?cmd=livecam', '_self', '30', '15', '82'),
('89', '2', 'navigation', 'global', 'TXT_MEMBERDIR', '1', 'index.php?cmd=memberdir', '_self', '31', '13', '83'),
('90', '1', 'navigation', 'global', 'TXT_CONTACTS', '1', 'index.php?cmd=contact', '_self', '0', '7', '84'),
('91', '90', 'function', 'global', 'TXT_CONTACT_SETTINGS', '1', '', '_self', '6', '0', '85'),
('92', '21', 'function', 'global', 'TXT_THEME_IMPORT_EXPORT', '1', '', '_self', '0', '0', '102'),
('93', '2', 'navigation', 'global', 'TXT_PODCAST', '1', 'index.php?cmd=podcast', '_self', '35', '17', '87'),
('98', '2', 'navigation', 'global', 'TXT_MARKET_MODULE_DESCRIPTION', '1', 'index.php?cmd=market', '_self', '33', '14', '98'),
('99', '55', 'navigation', 'global', 'TXT_SUPPORT_WIKI', '1', 'http://www.contrexx.com/wiki/', '_blank', '1', '2', '110'),
('105', '2', 'navigation', 'global', 'TXT_HOTEL_MANAGEMENT', '1', 'index.php?cmd=hotel', '_self', '42', '19', '116'),
('106', '2', 'navigation', 'global', 'TXT_FORUM', '1', 'index.php?cmd=forum', '_self', '20', '19', '106'),
('107', '106', 'function', 'global', 'TXT_FORUM_MENU_CATEGORIES', '1', '', '_self', '20', '1', '107'),
('108', '106', 'function', 'global', 'TXT_FORUM_MENU_SETTINGS', '1', '', '_self', '20', '2', '108'),
('109', '2', 'navigation', 'global', 'TXT_EGOVERNMENT', '1', 'index.php?cmd=egov', '_self', '38', '20', '109'),
('110', '3', 'navigation', 'global', 'TXT_ALIAS_ADMINISTRATION', '1', 'index.php?cmd=alias', '_self', '41', '8', '115'),
('111', '2', 'navigation', 'global', 'TXT_IMMO_MANAGEMENT', '1', 'index.php?cmd=immo', '_self', '37', '18', '88'),
('119', '2', 'navigation', 'global', 'TXT_BLOG_MODULE', '1', 'index.php?cmd=blog', '_self', '47', '1', '119'),
('120', '119', 'function', 'global', 'TXT_BLOG_ENTRY_MANAGE_TITLE', '1', 'index.php?cmd=blog&act=manageEntry', '_self', '47', '1', '120'),
('121', '119', 'function', 'global', 'TXT_BLOG_ENTRY_ADD_TITLE', '1', 'index.php?cmd=blog&act=addEntry', '_self', '47', '2', '121'),
('122', '119', 'function', 'global', 'TXT_BLOG_CATEGORY_MANAGE_TITLE', '1', 'index.php?cmd=blog&act=manageCategory', '_self', '47', '3', '122'),
('123', '119', 'function', 'global', 'TXT_BLOG_CATEGORY_ADD_TITLE', '1', 'index.php?cmd=blog&act=addCategory', '_self', '47', '4', '123'),
('124', '119', 'function', 'global', 'TXT_BLOG_SETTINGS_TITLE', '1', 'index.php?cmd=blog&act=settings', '_self', '47', '6', '124'),
('125', '119', 'function', 'global', 'TXT_BLOG_NETWORKS_TITLE', '1', 'index.php?cmd=blog&act=networks', '_self', '47', '5', '125'),
('126', '75', 'function', 'global', 'TXT_WORKFLOW_CLEAN_TITLE', '1', 'index.php?cmd=blog&act=networks', '_self', '0', '7', '126'),
('127', '5', 'function', 'global', 'TXT_NEW_PAGE_ON_FIRST_LEVEL', '1', '', '_self', '1', '1', '127'),
('128', '2', 'navigation', 'global', 'TXT_DATA_MODULE', '1', 'index.php?cmd=data', '_self', '48', '5', '122'),
('129', '128', 'function', 'global', 'TXT_DATA_ENTRY_MANAGE_TITLE', '1', 'index.php?cmd=data&act=manageEntry', '_self', '48', '1', '123'),
('130', '2', 'navigation', 'global', 'TXT_ECARD', '1', 'index.php?cmd=ecard\r\n', '_self', '50', '0', '0');

#--------------------------------------------------------------
# Table:	contrexx_community_config
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_community_config`;

CREATE TABLE `contrexx_community_config` (
 `id` int(11) NOT NULL auto_increment,
 `name` varchar(64) NOT NULL default '',
 `value` varchar(255) NOT NULL default '',
 `status` int(1) NULL default '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4;

INSERT INTO `contrexx_community_config` (`id`, `name`, `value`, `status`) VALUES 
('1', 'community_groups', '3', '1'),
('2', 'user_activation', '', '0'),
('3', 'user_activation_timeout', '1', '0');

#--------------------------------------------------------------
# Table:	contrexx_content
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_content`;

CREATE TABLE `contrexx_content` (
 `id` int(6) unsigned NOT NULL default '0',
 `content` mediumtext NOT NULL,
 `title` varchar(250) NOT NULL default '',
 `metatitle` varchar(250) NOT NULL default '',
 `metadesc` varchar(250) NOT NULL default '',
 `metakeys` text NOT NULL,
 `metarobots` varchar(7) NOT NULL default 'index',
 `css_name` varchar(50) NOT NULL default '',
 `redirect` varchar(255) NOT NULL default '',
 `expertmode` set('y','n') NOT NULL default 'n',
  UNIQUE KEY `contentid` (`id`),
  FULLTEXT KEY `fulltextindex` (`title`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_content` (`id`, `content`, `title`, `metatitle`, `metadesc`, `metakeys`, `metarobots`, `css_name`, `redirect`, `expertmode`) VALUES 
('1', 'Besten Dank f&uuml;r Ihren Entscheid, <a target=\"_blank\" href=\"http://www.contrexx.com\">Contrexx&reg;</a> als Grundlage f&uuml;r Ihr Webprojekt einzusetzen.\r\n<h2>Erfolgreiche Installation von Contrexx&reg;</h2>\r\n<p><em>Contrexx&reg; Web Content Management System Version 2.0 ist </em>erfolgreich installiert worden. Nun ist <a target=\"_blank\" href=\"http://www.contrexx.com\">Contrexx&reg;</a> einsatzbereit. Sie  k&ouml;nnen jetzt die Inhalte erstellen und Ihr WebDesign integrieren. Mit der Installation von Contrexx&reg; akzeptieren Sie unsere <a href=\"http://www.contrexx.com/de/index.php?page=1132\" target=\"_blank\">Lizenzbedingungen</a>.</p>\r\n<h2>Lassen Sie Ihre Seite finden</h2>\r\nBereits w&auml;hrend der Erstellung des Internetauftrittes k&ouml;nnen Sie auf einige Punkte f&uuml;r die <a target=\"_blank\" href=\"http://www.contrexx.com/wiki/de/index.php?title=Suchmaschinenoptimierung_%28SEO%29\">Suchmaschinenoptimierung achten</a>, dannach empfehlen wir Ihnen die Webseiten bei den entsprechenden Suchmaschinen anzumelden. Die Indexierung der Suchmaschinen k&ouml;nnen Sie in der Statistik von Contrexx mitverfolgen. F&uuml;r die ersten Tipps folgen Sie bitte diesem <a target=\"_blank\" href=\"http://www.contrexx.com/wiki/de/index.php?title=Suchmaschinenoptimierung_%28SEO%29\">Link</a>.<br />\r\n<h2>Laufend &uuml;ber Contrexx&reg; informiert</h2>\r\n<p>Wir sind &uuml;berzeugt, dass Contrexx&reg; die richtige Wahl ist: Die Bedienung ist einfach, der <a href=\"index.php?page=2\">professionelle Support</a> unterst&uuml;tzt Sie auf Anfrage und Contrexx&reg; wird laufend weiter entwickelt. Informieren Sie sich regelm&auml;ssig unter <a target=\"_blank\" href=\"http://www.contrexx.com\">www.contrexx.com</a> oder abonnieren Sie <a href=\"http://www.contrexx.com/feed/news_headlines_de.xml\" target=\"_blank\">unseren RSS-Feed</a>.</p>\r\n<h2>Referenz werden</h2>\r\n<a href=\"http://www.contrexx.com/de/index.php?section=directory&amp;cmd=add&amp;langId=1\" target=\"_blank\">Bewerben Sie sich nach Abschluss Ihres Projektes als Referenz bei Contrexx&reg;</a>, nach einer kurzen Pr&uuml;fung werden wir die Referenz freischalten. Damit erhalten Sie eine weitere Verlinkung auf Ihre Webseite und damit gewinnen Sie eine h&ouml;here Relevanz bei Suchmaschinen.<br />', 'Willkommen und Glückwunsch', 'Willkommen bei der erfolgreichen Installation von Contrexx® Web Content Management System Version 2.0', 'Willkommen bei der erfolgreichen Installation von Contrexx® Web Content Management System Version 2.0', 'Willkommen bei der erfolgreichen Installation von Contrexx® Web Content Management System Version 2.0', 'index', '', '', 'n'),
('2', 'Die Erfahrung zeigt, dass Contrexx zuverl&auml;ssig funktioniert. Sollten Sie trotzdem Unterst&uuml;tzung ben&ouml;tigen, stehen wir Ihnen mit den folgenden Instrumenten sehr gerne zur Verf&uuml;gung.<br />\r\n<ul>\r\n    <li><a target=\"_blank\" href=\"http://www.contrexx.com/wiki/de/\">Dokumentation</a>: Das Dokumentationsportal f&uuml;r Contrexx Anwender und Entwickler.</li>\r\n    <li><a target=\"_blank\" href=\"http://www.contrexx.com/forum/forumdisplay.php?f=68\">Contrexx - Forum</a>: Weiterf&uuml;hrende Unterst&uuml;tzung erhalten Sie von der Contrexx Community im Open Source Forum.</li>\r\n    <li><a target=\"_blank\" href=\"http://www.contrexx.com/bugtracker/\">Bugtracker</a>: Hier wird eine aktuelle Liste der bekannten Fehler, sowie der geplanten/gew&uuml;nschten Verbesserungen und Erweiterungen der Contrexx Software gef&uuml;hrt.</li>\r\n    <li><a href=\"http://support.comvation.com/index.php\" target=\"_blank\">Support - Ticket f&uuml;r Contrexx - Kunden</a>: Contrexx - Kunden k&ouml;nnen unter diesem Link ein Support-Ticket er&ouml;ffnen. Die Anfrage wird in das Ticketing-System geleitet und damit wird gew&auml;hrleistet, dass Ihre Anfrage rasch und zuverl&auml;ssig beantwortet wird. Nutzer der kostenlosen Opensource Version stehen die obigen M&ouml;glichkeiten zur Verf&uuml;gung.</li>\r\n</ul>', 'Contrexx Support', 'Contrexx Support', 'Contrexx Support', 'Contrexx Support', 'index', '', '', 'n'),
('3', '<h2>Kommerzielle Software</h2>\r\nContrexx WCMS ist modular aufgebaut und in drei Grundpaketen zusammengefasst: Contrexx <a target=\"_blank\" href=\"http://www.contrexx.com/de/index.php?page=884\">Basic</a>, <a target=\"_blank\" href=\"http://www.contrexx.com/de/index.php?page=885\">Standard </a>und <a target=\"_blank\" href=\"http://www.contrexx.com/de/index.php?page=886\">Premium</a>.<br />\r\n<h2>Software f&uuml;r Schulen</h2>\r\nSpeziell f&uuml;r Schulen, Universit&auml;ten und Fachhochschulen steht das <a href=\"http://www.contrexx.com/de/index.php?section=shop&amp;cmd=details&amp;productId=88\" target=\"_blank\">Contrexx Education</a> bereit, welche zu einem tiefen Preis bezogen werden kann.<br />\r\n<h2>Contrexx Open Source</h2>\r\nVereine und private Personen <a href=\"http://www.contrexx.com/wiki/de/index.php?title=FAQ:Lizenz\" target=\"_blank\">ohne kommerzielle Ziele </a>k&ouml;nnen <a href=\"http://www.contrexx.com/de/index.php?page=1107\" target=\"_blank\">Contrexx Open Source</a> kostenlos <a href=\"http://www.contrexx.com/de/index.php?page=99\" target=\"_blank\">herunterladen und verwenden</a>.<br />\r\n<h2>Zus&auml;tzliche Module und Funktionalit&auml;ten</h2>\r\nVerschaffen Sie sich einen &Uuml;berblick von weiteren Funktionalit&auml;ten und Modulen, dazu m&uuml;ssen Sie nur diesem <a target=\"_blank\" href=\"http://www.contrexx.com/de/index.php?page=883\">Link folgen</a>. Sollte Ihnen ein Modul oder eine weitere Funktionalit&auml;t zus&auml;tzlichen Nutzen verschaffen, k&ouml;nnen Sie das <a target=\"_blank\" href=\"http://www.contrexx.com/de/index.php?page=892\">entsprechende Modul dazu bestellen</a> oder ein <a target=\"_blank\" href=\"http://www.contrexx.com/de/index.php?section=shop&amp;catId=122\">entsprechendes Upgrade</a> kaufen.<br />\r\n<br type=\"_moz\" />', 'Contrexx Module', 'Contrexx Module', 'Contrexx Module', 'Contrexx Module', 'index', '', '', 'n'),
('4', '<form name=\"formNews\" method=\"post\" action=\"index.php?section=news\">\r\n    {NEWS_CAT_DROPDOWNMENU}\r\n</form>\r\n<br />\r\n<table cellspacing=\"0\" id=\"news\">\r\n    <tbody>\r\n        <tr>\r\n            <th width=\"15%\" nowrap=\"nowrap\" class=\"newsback\"><strong>{TXT_DATE}</strong></th>\r\n            <th width=\"85%\" nowrap=\"nowrap\" class=\"newsback\"><strong>{TXT_NEWS_MESSAGE}</strong></th>\r\n        </tr>\r\n        <!-- BEGIN newsrow -->\r\n        <tr class=\"{NEWS_CSS}\">\r\n            <td nowrap=\"nowrap\">{NEWS_DATE}&nbsp;&nbsp;</td>\r\n            <td>{NEWS_LINK}</td>\r\n        </tr>\r\n        <!-- END newsrow -->\r\n    </tbody>\r\n</table>\r\n<br />\r\n{NEWS_PAGING}', 'News', 'News', 'News', 'News', 'index', '', '', 'y'),
('5', '{NEWS_TEXT}<br />\r\n{NEWS_SOURCE}<br />\r\n{NEWS_URL}<br />\r\nVer&ouml;ffentlicht am<br />\r\n{NEWS_DATE}<br />\r\n<br />\r\n<br />\r\n<div id=\"newsbox\">\r\n<div>\r\n<table cellspacing=\"0\">\r\n    <tbody>\r\n        <tr>\r\n            <th colspan=\"2\">Toolbox</th>\r\n        </tr>\r\n        <tr class=\"row1\">\r\n            <td width=\"1%\"><img width=\"16\" height=\"16\" alt=\"Print\" src=\"images/content/icons/printer-1.gif\" /></td>\r\n            <td width=\"99%\"><a href=\"{PRINT_URL}\">Drucken</a></td>\r\n        </tr>\r\n        <tr class=\"row2\">\r\n            <td><img width=\"16\" height=\"16\" alt=\"Acrobat\" src=\"images/content/icons/page_white_acrobat.gif\" /></td>\r\n            <td><a href=\"{PDF_URL}\">PDF</a></td>\r\n        </tr>\r\n        <tr class=\"row1\">\r\n            <td><img width=\"16\" height=\"16\" alt=\"Arrow Right\" src=\"images/content/icons/arrow_right.gif\" /></td>\r\n            <td><a href=\"index.php?section=recommend\">Weiterempfehlen</a></td>\r\n        </tr>\r\n        <tr class=\"row2\">\r\n            <td><img width=\"16\" height=\"16\" alt=\"RSS\" src=\"images/content/icons/rss.gif\" /></td>\r\n            <td><a href=\"feed/news_headlines_de.xml\">RSS Abonnieren</a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n</div>', 'Newsmeldung', 'Newsmeldung', 'Newsmeldung', 'Newsmeldung', 'index', '', '', 'y'),
('6', '<font color=\"#ff0000\">{NEWS_STATUS_MESSAGE}&nbsp;</font> <!-- BEGIN news_submit_form -->\r\n<form method=\"post\" action=\"index.php?section=news&amp;cmd=submit\">\r\n    <h2>     {TXT_NEWS_MESSAGE}&nbsp;</h2>\r\n    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"2\" border=\"0\">\r\n        <tbody>\r\n            <tr>\r\n                <td width=\"20%\">{TXT_TITLE}</td>\r\n                <td width=\"80%\"><input type=\"text\" maxlength=\"250\" value=\"{NEWS_TITLE}\" name=\"newsTitle\" style=\"width: 250px;\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"20%\">{TXT_CATEGORY}</td>\r\n                <td width=\"80%\"><select name=\"newsCat\" style=\"width: 250px;\"><!-- BEGIN news_category_menu -->\r\n                <option value=\"{NEWS_CATEGORY_ID}\">{NEWS_CATEGORY_TITLE}</option>\r\n                <!-- END news_category_menu --></select></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"20%\">{TXT_EXTERNAL_SOURCE}</td>\r\n                <td width=\"80%\"><input type=\"text\" maxlength=\"250\" value=\"{NEWS_SOURCE}\" name=\"newsSource\" style=\"width: 250px;\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"20%\">{TXT_LINK} #1</td>\r\n                <td width=\"80%\"><input type=\"text\" maxlength=\"250\" value=\"{NEWS_URL1}\" name=\"newsUrl1\" style=\"width: 250px;\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"20%\">{TXT_LINK} #2</td>\r\n                <td width=\"80%\"><input type=\"text\" maxlength=\"250\" value=\"{NEWS_URL2}\" name=\"newsUrl2\" style=\"width: 250px;\" /></td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n    <br />\r\n    <h2>{TXT_NEWS_TEASER_TEXT}&nbsp;</h2>\r\n    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"3\" border=\"0\">\r\n        <tbody>\r\n            <tr>\r\n                <td colspan=\"2\"><textarea name=\"newsTeaserText\" style=\"width: 100%;\" cols=\"30\" rows=\"5\">{NEWS_TEASER_TEXT}</textarea></td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n    <br />\r\n    <h2> {TXT_NEWS_NEWS_CONTENT}&nbsp;</h2>\r\n    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"3\" border=\"0\">\r\n        <tbody>\r\n            <tr>\r\n                <td colspan=\"2\">{TXT_NEWS_REDIRECT}</td>\r\n            </tr>\r\n            <tr>\r\n                <td>{TXT_NEWS_NEWS_URL}</td>\r\n                <td><input type=\"text\" style=\"width: 250px;\" value=\"{NEWS_REDIRECT}\" name=\"newsRedirect\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td colspan=\"2\">{NEWS_TEXT}</td>\r\n            </tr>\r\n            <tr>\r\n                <td colspan=\"2\"><input type=\"reset\" onclick=\"FCKeditorAPI.GetInstance(\'newsText\').SetHTML(\'\')\" /> <input type=\"submit\" name=\"submitNews\" value=\"Anmelden\" /></td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n</form>\r\n<!-- END news_submit_form --> <!-- BEGIN news_submitted --> <a title=\"weitere Newsmeldung hinzuf&uuml;gen\" href=\"index.php?section=news&amp;cmd=submit\">Klicken Sie hier um eine weitere Newsmeldung zu erfassen.</a> <!-- END news_submitted -->', 'Newsanmelden', 'Newsanmelden', 'News anmelden', 'News anmelden', 'index', '', '', 'n'),
('7', '<h3>Online Einbindung mittels RSS-Newsfeed</h3>\n<p><a href=\"{NEWS_RSS_FEED_URL}\" title=\"RSS Newsfeed von {NEWS_HOSTNAME}\" class=\"rssfeed\"><img width=\"48\" height=\"74\" border=\"0\" style=\"margin: 5px 20px 20px; float: right;\" src=\"images/content/icons/rss_bg.gif\" alt=\"Der Feed dieser Website kann &uuml;ber diesen Link aufgerufen werden\" /></a>RSS ist ein elektronisches Nachrichtenformat, das dem Nutzer erm&ouml;glicht, die Inhalte einer Website &ndash; oder Teile davon &ndash; als sogenannte RSS-Feeds zu abonnieren oder in andere Websites zu integrieren.</p>\n<h3>Online Einbindung mittels Javascript</h3>\nDer Feed dieser Website kann auch ganz einfach auf Ihrer Website dargestellt werden. Dazu m&uuml;ssen Sie lediglich den folgenden Code in Ihre eigene Webseite einf&uuml;gen:<br />\n<br />\n<form action=\"\">\n    <textarea style=\"width: 98%; font-size: 95%;\" rows=\"18\" cols=\"30\" name=\"code\">{NEWS_RSS2JS_CODE}</textarea>     <br />\n    <br />\n    <input type=\"button\" value=\"Alles markieren\" onclick=\"javascript:this.form.code.focus();this.form.code.select();\" name=\"button\" />\n</form>\n', 'News Feed', 'News Feed', 'News Feed', 'News Feed', 'index', '', '', 'n'),
('1115', '<form action=\"index.php\" method=\"get\">\r\n	<input name=\"term\" value=\"{SEARCH_TERM}\" size=\"30\" maxlength=\"100\" class=\"searchinput\" />\r\n	<input value=\"search\" name=\"section\" type=\"hidden\" />\r\n	<input value=\"{TXT_SEARCH}\" name=\"Submit\" type=\"submit\" class=\"searchbutton\" />\r\n</form>\r\n<br />\r\n{SEARCH_TITLE}<br />\r\n<!-- BEGIN searchrow -->\r\n	{LINK} {COUNT_MATCH}<br />\r\n	{SHORT_CONTENT}<br />\r\n<!-- END searchrow -->\r\n<br />\r\n{SEARCH_PAGING}\r\n<br />\r\n<br />', 'Suchen', 'Suchen', 'Suchen', 'Suchen', 'index', '', '', 'y'),
('1116', '<div id=\"voting\">\r\n	<div class=\"form\">\r\n		<form name=\"VotingForm\" action=\"index.php?section=voting\" method=\"post\">\r\n			<h2>{VOTING_TITLE}</h2><em>gestartet am {VOTING_DATE}</em><br />\r\n			<div class=\"message\">{VOTING_MSG}</div>\r\n			<div class=\"votes\">\r\n                                {VOTING_RESULTS_TEXT}<br />\r\n			        {VOTING_RESULTS_TOTAL_VOTES}\r\n			</div>\r\n			<!-- BEGIN voting_email_input --> \r\n				Tragen Sie bitte Ihre E-Mail Adresse ein, damit Sie an der Umfrage teilnehmen k&ouml;nnen:<br /><br />\r\n				<p><label>E-Mail Adresse</label><input type=\"text\" name=\"votingemail\" value=\"{VOTING_EMAIL}\"/></p><br />\r\n		   	<!-- END voting_email_input -->\r\n			<br />\r\n                        <!-- BEGIN additional_fields -->\r\n                            Für diese Umfrage werden weitere Informationen von Ihnen benötigt:<br /><br />\r\n                            <!-- BEGIN additional_elements -->\r\n                            <p><label>{VOTING_ADDITIONAL_INPUT_LABEL}</label>{VOTING_ADDITIONAL_INPUT}</p>\r\n                            <!-- END additional_elements -->\r\n                        <!-- END additional_fields -->\r\n			<br />\r\n			{TXT_SUBMIT}\r\n		</form>\r\n	</div>\r\n	<div class=\"archive\">\r\n		<table width=\"100%\" border=\"0\">\r\n			<tbody>\r\n				<tr>\r\n					<th valign=\"top\" colspan=\"2\">{VOTING_OLDER_TITLE}</th>\r\n				</tr>\r\n				<!-- BEGIN votingRow -->\r\n				<tr class=\"{VOTING_LIST_CLASS}\">\r\n					<td nowrap=\"nowrap\">{VOTING_OLDER_DATE}&nbsp;</td>\r\n					<td nowrap=\"nowrap\">{VOTING_OLDER_TEXT}&nbsp;</td>\r\n				</tr>\r\n				<!-- END votingRow -->\r\n			</tbody>\r\n		</table>\r\n		<br />\r\n		{VOTING_PAGING}\r\n	</div>\r\n</div>', 'Umfragen', 'Umfragen', 'Umfragen', 'Umfragen', 'index', '', '', 'y'),
('1114', '<div id=\"recommend\">\r\n	<div class=\"status\">{RECOM_STATUS}</div>\r\n	<!-- BEGIN recommend_form -->\r\n	{RECOM_SCRIPT}\r\n	<div class=\"text\">{RECOM_TEXT}</div>\r\n	<div class=\"form\">\r\n		<form id=\"recommendForm\" name=\"recommend\" method=\"post\" action=\"index.php?section=recommend&amp;act=sendRecomm\">\r\n			<input type=\"hidden\" value=\"{RECOM_REFERER}\" name=\"uri\" /> \r\n			<input type=\"hidden\" value=\"{RECOM_FEMALE_SALUTATION_TEXT}\" name=\"female_salutation_text\" /> \r\n			<input type=\"hidden\" value=\"{RECOM_MALE_SALUTATION_TEXT}\" name=\"male_salutation_text\" /> \r\n			<input type=\"hidden\" value=\"{RECOM_PREVIEW}\" name=\"preview_text\" />\r\n			<p><label for=\"receivername\">{RECOM_TXT_RECEIVER_NAME}</label><input type=\"text\" onchange=\"update();\" value=\"{RECOM_RECEIVER_NAME}\" maxlength=\"100\" name=\"receivername\" /></p>\r\n			<p><label for=\"receivermail\">{RECOM_TXT_RECEIVER_MAIL}</label><input type=\"text\" onchange=\"update();\" value=\"{RECOM_RECEIVER_MAIL}\" maxlength=\"100\" name=\"receivermail\" /></p>\r\n			<p><label>{RECOM_TXT_GENDER}</label><input type=\"radio\" onclick=\"update();\" value=\"female\" name=\"gender\" id=\"female\" /><label class=\"description\" for=\"female\">{RECOM_TXT_FEMALE}</label></p>\r\n			<p><input type=\"radio\" onclick=\"update();\" value=\"male\" margin-left:=\"\" name=\"gender\" id=\"male\" /><label class=\"description\" for=\"male\">{RECOM_TXT_MALE}</label></p>\r\n			<p><label for=\"sendername\">{RECOM_TXT_SENDER_NAME}</label><input type=\"text\" onchange=\"update();\" value=\"{RECOM_SENDER_NAME}\" maxlength=\"100\" name=\"sendername\" /></p>\r\n			<p><label for=\"sendermail\">{RECOM_TXT_SENDER_MAIL}</label><input type=\"text\" onchange=\"update();\" value=\"{RECOM_SENDER_MAIL}\" maxlength=\"100\" name=\"sendermail\" /></p>\r\n			<p><label for=\"comment\">{RECOM_TXT_COMMENT}</label><textarea rows=\"1\" cols=\"1\" onchange=\"update();\" name=\"comment\">{RECOM_COMMENT}</textarea></p>\r\n			<p><label for=\"preview\">{RECOM_TXT_PREVIEW}</label><textarea rows=\"1\" cols=\"1\" name=\"preview\"></textarea></p>\r\n			<p><label for=\"captchaCode\">{RECOM_TXT_CAPTCHA}</label><img src=\"{RECOM_CAPTCHA_URL}\" alt=\"{RECOM_CAPTCHA_ALT}\" title=\"{RECOM_CAPTCHA_ALT}\" /><br /><br /><input type=\"text\" name=\"captchaCode\" /><input type=\"hidden\" value=\"{RECOM_CAPTCHA_OFFSET}\" name=\"captchaOffset\" /></p>\r\n			<p><input type=\"submit\" value=\"Senden\" /> <input type=\"reset\" value=\"L&ouml;schen\" /></p>\r\n		</form>\r\n	</div>\r\n	<!-- END recommend_form -->\r\n</div>', 'Seite weiterempfehlen', 'Seite weiterempfehlen', 'Seite weiterempfehlen', 'Seite weiterempfehlen', 'index', '', '', 'y'),
('1112', '<div id=\"newsletter\">\r\n	<div class=\"okMessage\">{NEWSLETTER_MESSAGE}</div>\r\n</div>', 'Newsletter abmelden', 'Newsletter abmelden', 'Newsletter abmelden', 'Newsletter abmelden', 'index', '', '', 'y'),
('1113', '{PODCAST_JAVASCRIPT}\r\n<div id=\"podcast\">\r\n	<div class=\"categories\">\r\n		{PODCAST_CATEGORY_MENU}\r\n	</div>\r\n	<!-- BEGIN podcast_no_medium --> \r\n	<div class=\"noMedium\">\r\n		W&auml;hlen Sie ein Medium aus, dass abgespielt werden soll.\r\n	</div>\r\n	<!-- END podcast_no_medium -->  \r\n	<!-- BEGIN podcast_medium -->\r\n	<div class=\"showMedium\">\r\n		<h2>{PODCAST_MEDIUM_TITLE}</h2>\r\n		<div class=\"player\">\r\n			<div id=\"podcast_container\"><em>Podcast kann nicht angezeigt werden, bitte in externem Player starten</em></div>\r\n			{PODCAST_MEDIUM_CODE}\r\n                         <a title=\"Video in externem Player starten\" href=\"{PODCAST_MEDIUM_URL}\">Video in externem Player starten</a>\r\n		</div>\r\n		<div class=\"information\">\r\n			<table cellspacing=\"0\">\r\n				<tr>\r\n					<th colspan=\"2\">Informationen</th>\r\n				</tr>\r\n				<tr class=\"row1\">\r\n					<td>Datum</td>\r\n					<td>{PODCAST_MEDIUM_SHORT_DATE}</td>\r\n				</tr>\r\n				<tr class=\"row2\">\r\n					<td>Spieldauer</td>\r\n					<td>{PODCAST_MEDIUM_PLAYLENGHT}</td>\r\n				</tr>\r\n				<tr class=\"row1\">\r\n					<td>Autor</td>\r\n					<td>{PODCAST_MEDIUM_AUTHOR}</td>\r\n				</tr>\r\n				<tr class=\"row2\">\r\n					<td>Beschreibung</td>\r\n					<td>{PODCAST_MEDIUM_DESCRIPTION}</td>\r\n				</tr>\r\n				<tr class=\"row1\">\r\n					<td>Dateigr&ouml;sse</td>\r\n					<td>{PODCAST_MEDIUM_FILESIZE}</td>\r\n				</tr>\r\n				<tr class=\"row2\">\r\n					<td>Aufrufe</td>\r\n					<td>{PODCAST_MEDIUM_VIEWS}</td>\r\n				</tr>\r\n			</table>\r\n		</div>\r\n	</div>\r\n	<!-- END podcast_medium -->  \r\n	<!-- BEGIN podcast_media -->\r\n	<div class=\"media_{PODCAST_MEDIUM_ROW}\">\r\n		<div class=\"image\"><a title=\"{TXT_PODCAST_PLAY}\" href=\"index.php?section=podcast&amp;id={PODCAST_MEDIA_ID}&amp;cid={PODCAST_MEDIA_CATEGORY_ID}\"><img border=\"0\" alt=\"{PODCAST_MEDIA_TITLE}\" title=\"{PODCAST_MEDIA_TITLE}\" src=\"{PODCAST_MEDIA_THUMBNAIL}\" name=\"podcast_thumbnails\" /></a></div>\r\n		<div class=\"description\">\r\n			<h2>{PODCAST_MEDIA_TITLE}</h2>\r\n			{PODCAST_MEDIA_DESCRIPTION}<br />\r\n			<br />\r\n			Spieldauer: {PODCAST_MEDIA_PLAYLENGHT}\r\n		</div>\r\n	</div>\r\n	<!-- END podcast_media -->\r\n</div>\r\n', 'Podcast', 'Podcast', 'Podcast', 'Podcast', 'index', '', '', 'y'),
('13', '{CALENDAR_JAVASCRIPT}\r\n<div id=\"calendar\">\r\n	<div class=\"search\">\r\n		<form id=\"searchform\" method=\"post\" action=\"index.php?section=calendar&amp;act=search\">\r\n		<table cellspacing=\"0\">\r\n			<tbody>\r\n				<tr>\r\n					<th colspan=\"4\">Kalender Suche</th>\r\n				</tr>\r\n				<tr class=\"row1\">\r\n					<td width=\"12%\">{TXT_CALENDAR_FROM}:&nbsp;</td>\r\n					<td width=\"18%\"><input type=\"text\" style=\"width: 80px;\" value=\"{CALENDAR_DATEPICKER_START}\" id=\"DPC_edit1_YYYY-MM-DD\" name=\"startDate\" /></td>\r\n					<td width=\"15%\">{TXT_CALENDAR_KEYWORD}:&nbsp;</td>\r\n					<td width=\"55%\"><input type=\"text\" value=\"{CALENDAR_SEARCHED_KEYWORD}\" name=\"keyword\" /></td>\r\n				</tr>\r\n				<tr class=\"row2\">\r\n					<td>{TXT_CALENDAR_TILL}:&nbsp;</td>\r\n					<td><input type=\"text\" value=\"{CALENDAR_DATEPICKER_END}\" style=\"width: 80px;\" id=\"DPC_edit2_YYYY-MM-DD\" name=\"endDate\" /></td>\r\n					<td>&nbsp;</td>\r\n					<td ><input type=\"submit\" value=\"{TXT_CALENDAR_SEARCH}\" /></td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</form>\r\n	</div>\r\n	<div class=\"notes_list\">\r\n		<table cellspacing=\"0\">\r\n			<tbody> \r\n				<tr>\r\n					<th>Datum</td>\r\n					<th>&nbsp;</td>\r\n					<th>Veranstaltung</td>\r\n				</tr>\r\n				<!-- BEGIN event -->\r\n				<tr class=\"{CALENDAR_ROW}\">\r\n					<td width=\"12%\" align=\"left\" valign=\"top\">{CALENDAR_START_SHOW}&nbsp;{CALENDAR_STARTTIME}</td>\r\n                    <td width=\"3%\" align=\"center\" valign=\"top\">{CALENDAR_PRIORITY_IMG}&nbsp;</td>\r\n					<td width=\"85%\" valign=\"top\"><a href=\"index.php?section=calendar&amp;cmd=event&amp;id={CALENDAR_ID}\">{CALENDAR_TITLE}</a><br /><font size=\"-2\">Ort: {CALENDAR_PLACE}</font></td>\r\n				</tr>\r\n				<!-- END event -->\r\n			</tbody>\r\n		</table>\r\n        <!-- BEGIN noevents -->\r\n        <br />\r\n		<i>{TXT_CALENDAR_NO_EVENTS}</i>	\r\n		<!-- END noevents -->\r\n	</div>\r\n</div>', 'Kalender', 'Kalender', 'Kalender', 'Kalender', 'index', '', '', 'y'),
('14', '<!-- START calendar_show_note.html -->\r\n<div id=\"calendar\">\r\n	<div class=\"logo\">{CALENDAR_PIC_THUMBNAIL}</div>\r\n	<div class=\"notes_list\">\r\n	<table cellspacing=\"0\">\r\n		<tbody> \r\n			<tr>\r\n				<th colspan=\"2\"><b>{CALENDAR_TITLE}&nbsp;</b></th>\r\n			</tr>\r\n			<tr class=\"row1\">\r\n				<td width=\"25%\" align=\"left\" valign=\"top\"><b>{TXT_CALENDAR_START}</b></td>\r\n				<td width=\"75%\" valign=\"top\">{CALENDAR_START_SHOW} - {CALENDAR_START_TIME}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row2\">\r\n				<td width=\"25%\" align=\"left\" valign=\"top\"><b>{TXT_CALENDAR_END}</b></td>\r\n				<td width=\"75%\" valign=\"top\">{CALENDAR_END_SHOW} - {CALENDAR_END_TIME}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row1\">\r\n				<td width=\"25%\" align=\"left\" valign=\"top\"><b>{TXT_CALENDAR_LINK}</b></td>\r\n				<td width=\"75%\" valign=\"top\">{CALENDAR_LINK}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row2\">\r\n				<td width=\"25%\" align=\"left\" valign=\"top\"><b>{TXT_CALENDAR_ATTACHMENT}</b></td>\r\n				<td width=\"75%\" valign=\"top\">{CALENDAR_ATTACHMENT}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row1\">\r\n				<td width=\"25%\" align=\"left\" valign=\"top\"><b>Export</b></td>\r\n				<td width=\"75%\" valign=\"top\">{CALENDAR_ICAL_EXPORT_IMG}&nbsp;</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	<br />\r\n	{CALENDAR_DESCRIPTION}&nbsp;\r\n	<br />\r\n	<br />\r\n	<!-- BEGIN calendarRegistration -->\r\n	<div class=\"registration\">{CALENDAR_REGISTRATION_LINK}</div>\r\n	<!-- END calendarRegistration -->\r\n	</div>\r\n	<div class=\"notes_list\">\r\n	<table cellspacing=\"0\">\r\n		<tbody> \r\n			<tr>\r\n				<th>{TXT_CALENDAR_PLACE}</h>\r\n			</tr>\r\n			<tr class=\"row1\">\r\n				<td valign=\"top\">{CALENDAR_PLACE}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row2\">\r\n				<td valign=\"top\">{CALENDAR_PLACE_STREET_NR}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row1\">\r\n				<td valign=\"top\">{CALENDAR_PLACE_ZIP} {CALENDAR_PLACE_CITY}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row2\">\r\n				<td valign=\"top\">{CALENDAR_PLACE_LINK}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row1\">\r\n				<td valign=\"top\">{CALENDAR_PLACE_MAP_LINK}&nbsp;</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</div>\r\n	<div class=\"notes_list\">\r\n	<table cellspacing=\"0\">\r\n		<tbody> \r\n			<tr>\r\n				<th>{TXT_CALENDAR_ORGANIZER}</th>\r\n			</tr>\r\n			<tr class=\"row1\">\r\n				<td valign=\"top\">{CALENDAR_ORGANIZER}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row2\">\r\n				<td valign=\"top\">{CALENDAR_ORGANIZER_STREET_NR}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row1\">\r\n				<td valign=\"top\">{CALENDAR_ORGANIZER_ZIP} {CALENDAR_ORGANIZER_PLACE}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row2\">\r\n				<td valign=\"top\">{CALENDAR_ORGANIZER_LINK}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row1\">\r\n				<td valign=\"top\">{CALENDAR_ORGANIZER_MAIL}&nbsp;</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</div>\r\n</div>\r\n<div class=\"back\"><a href=\"javascript:history.back()\">{TXT_CALENDAR_BACK}</a></div>\r\n\r\n<!-- END calendar_show_note.html -->\r\n', 'Veranstaltungs Information', 'Veranstaltungs Information', 'Veranstaltungs Information', 'Veranstaltungs Information', 'index', '', '', 'y'),
('15', '{CALENDAR_JAVASCRIPT}\r\n<div id=\"calendar\">\r\n    <div class=\"categories\">{CALENDAR_CATEGORIES}</div>\r\n	<div class=\"notes_list\">\r\n		<table cellspacing=\"0\">\r\n			<tbody> \r\n				<tr>\r\n					<th width=\"12%\" align=\"left\">Datum</th>\r\n					<th width=\"3%\" align=\"left\">&nbsp;</th>\r\n					<th width=\"85%\" align=\"left\">Veranstaltung</th>\r\n				</tr>\r\n				<!-- BEGIN event -->\r\n				<tr class=\"{CALENDAR_ROW}\">\r\n					<td align=\"left\" valign=\"top\">{CALENDAR_START_SHOW}&nbsp;{CALENDAR_STARTTIME}</td>\r\n                    <td align=\"center\" valign=\"top\">{CALENDAR_PRIORITY_IMG}&nbsp;</td>\r\n					<td valign=\"top\"><a href=\"index.php?section=calendar&amp;cmd=event&amp;id={CALENDAR_ID}\">{CALENDAR_TITLE}</a><br /><font size=\"-2\">Ort: {CALENDAR_PLACE}</font></td>\r\n				</tr>\r\n				<!-- END event -->\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<div class=\"export\">{CALENDAR_ICAL_EXPORT_IMG}</div>\r\n</div>', 'Auflistung aller Events', 'Auflistung aller Events', 'Auflistung aller Events', 'Auflistung aller Events', 'index', '', '', 'y'),
('16', '<!-- START calendar_show.html --> \r\n{CALENDAR_JAVASCRIPT}  \r\n<!-- BEGIN boxes -->\r\n<div style=\"margin: auto; width: 200px;\">{CALENDAR_CATEGORIES}<br />{CALENDAR}</div>\r\n<!-- END boxes -->  \r\n<!-- BEGIN list -->\r\n<div id=\"calendar\">\r\n    <div class=\"categories\">{CALENDAR_CATEGORIES}</div>\r\n	<div class=\"notes_list\">\r\n		<table cellspacing=\"0\">\r\n			<tbody> \r\n				<tr>\r\n					<th width=\"12%\" align=\"left\">Datum</th>\r\n					<th width=\"3%\" align=\"left\">&nbsp;</th>\r\n					<th width=\"85%\" align=\"left\">Veranstaltung</th>\r\n				</tr>\r\n				<!-- BEGIN event -->\r\n				<tr class=\"{CALENDAR_ROW}\">\r\n					<td align=\"left\" valign=\"top\">{CALENDAR_START_SHOW}&nbsp;{CALENDAR_STARTTIME}</td>\r\n                    <td align=\"center\" valign=\"top\">{CALENDAR_PRIORITY_IMG}&nbsp;</td>\r\n					<td valign=\"top\"><a href=\"index.php?section=calendar&amp;cmd=event&amp;id={CALENDAR_ID}\">{CALENDAR_TITLE}</a><br /><font size=\"-2\">Ort: {CALENDAR_PLACE}</font></td>\r\n				</tr>\r\n				<!-- END event -->\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<div class=\"export\">{CALENDAR_ICAL_EXPORT_IMG}</div>\r\n</div>\r\n<!-- END list --> \r\n<!-- END calendar_show.html -->', 'Quartalsübersicht', 'Quartalsübersicht', 'Quartalsübersicht', 'Quartalsübersicht', 'index', '', '', 'y'),
('1109', '<div id=\"newsletter\">\r\n	<div class=\"okMessage\">{NEWSLETTER_MESSAGE}</div>\r\n</div>', 'Newsletter bestätigen', 'Newsletter bestätigen', 'Newsletter bestätigen', 'Newsletter bestätigen', 'index', '', '', 'y'),
('1110', '<div id=\"newsletter\">\r\n	<!-- BEGIN newsletter_error_message -->\r\n	<div class=\"errorMessage\">{NEWSLETTER_ERROR_MESSAGE}</div>\r\n	<!-- END newsletter_error_message -->\r\n	<!-- BEGIN newsletter_ok_message -->\r\n	<div class=\"okMessage\">{NEWSLETTER_OK_MESSAGE}</div>\r\n	<!-- END newsletter_ok_message -->\r\n	<!-- BEGIN newsletterForm -->\r\n	<fieldset> \r\n		<legend>Profil Daten</legend>\r\n		<form name=\"newsletter\" action=\"index.php?section=newsletter&amp;cmd=profile&amp;code={NEWSLETTER_USER_CODE}&amp;mail={NEWSLETTER_PROFILE_MAIL}\" method=\"post\">\r\n			<p><label for=\"email\">{TXT_NEWSLETTER_EMAIL_ADDRESS}</label><input type=\"text\" name=\"email\" maxlength=\"255\" value=\"{NEWSLETTER_EMAIL}\" /></p>\r\n			<p><label>{TXT_NEWSLETTER_SEX}</label><input type=\"radio\" id=\"female\" name=\"sex\" value=\"f\" {NEWSLETTER_SEX_F} /><label class=\"description\" for=\"female\">{TXT_NEWSLETTER_FEMALE}</label><br /><input type=\"radio\" id=\"male\" name=\"sex\" value=\"m\" {NEWSLETTER_SEX_M} /><label class=\"description\" for=\"male\">{TXT_NEWSLETTER_MALE}</label></p>\r\n			<p><label>{TXT_NEWSLETTER_TITLE}</label>{NEWSLETTER_TITLE}</p>\r\n			<p><label for=\"lastname\">{TXT_NEWSLETTER_LASTNAME}</label><input type=\"text\" name=\"lastname\" maxlength=\"255\" value=\"{NEWSLETTER_LASTNAME}\" /></p>\r\n			<p><label for=\"firstname\">{TXT_NEWSLETTER_FIRSTNAME}</label><input type=\"text\" name=\"firstname\" maxlength=\"255\" value=\"{NEWSLETTER_FIRSTNAME}\" /></p>\r\n			<p><label for=\"company\">{TXT_NEWSLETTER_COMPANY}</label><input type=\"text\" name=\"company\" maxlength=\"255\" value=\"{NEWSLETTER_COMPANY}\" /></p>\r\n			<p><label for=\"street\">{TXT_NEWSLETTER_STREET}</label><input type=\"text\" name=\"street\" maxlength=\"255\" value=\"{NEWSLETTER_STREET}\" /></p>\r\n			<p><label for=\"zip\">{TXT_NEWSLETTER_ZIP}</label><input type=\"text\" name=\"zip\" maxlength=\"255\" value=\"{NEWSLETTER_ZIP}\" /></p>\r\n			<p><label for=\"city\">{TXT_NEWSLETTER_CITY}</label><input type=\"text\" name=\"city\" maxlength=\"255\" value=\"{NEWSLETTER_CITY}\" /></p>\r\n			<p><label for=\"country\">{TXT_NEWSLETTER_COUNTRY}</label><input type=\"text\" name=\"country\" maxlength=\"255\" value=\"{NEWSLETTER_COUNTRY}\" /></p>\r\n			<p><label for=\"phone\">{TXT_NEWSLETTER_PHONE}</label><input type=\"text\" name=\"phone\" maxlength=\"255\" value=\"{NEWSLETTER_PHONE}\" /></p>\r\n			<!-- BEGIN newsletter_lists -->\r\n					<p><input type=\"checkbox\" name=\"list[{NEWSLETTER_LIST_ID}]\" id=\"list_{NEWSLETTER_LIST_ID}\" {NEWSLETTER_LIST_SELECTED} value=\"1\" /> <label class=\"description\" for=\"list_{NEWSLETTER_LIST_ID}\">{NEWSLETTER_LIST_NAME}</label></p>\r\n			<!-- END newsletter_lists -->\r\n			 <p><input type=\"submit\" name=\"recipient_save\" value=\"{TXT_NEWSLETTER_SAVE}\" /></p>\r\n		</form>\r\n	</fieldset>\r\n	<!-- END newsletterForm -->\r\n</div>\r\n', 'Newsletter Profil bearbeiten', 'Newsletter Profil bearbeiten', 'Newsletter Profil bearbeiten', 'Newsletter Profil bearbeiten', 'index', '', '', 'y'),
('19', '<p>Ihre Eingabe wurde vom <strong>Contrexx&reg; Angriffserkennungs System</strong> als unzul&auml;ssig erkannt. <br />\r\n<br />\r\nEinige besondere Zeichenfolgen werden vom Intrusion Detection System gefiltert und vom Intrusion Response System blockiert. Wenn Sie finden, dass diese Meldung unrechterweise erscheint, nehmen Sie doch bitte mit uns <a href=\"mailto:support%20AT%20comvation%20DOT%20com\">Kontakt</a> auf.<br />\r\n<br />\r\n<em><strong>Aktive Arbitrary Input Module:</strong></em></p>\r\n<ul>\r\n    <li>SQL Injection</li>\r\n    <li>Cross-Site Scripting</li>\r\n    <li>Session Hijacking</li>\r\n</ul>', 'Alert System', 'Alert System', 'Alert System', 'Alert System', 'index', '', '', 'n'),
('20', '<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n    <tbody>\r\n        <tr>\r\n            <td scope=\"col\">\r\n            <h2><strong>Das gew&uuml;nschte Dokument existiert nicht an dieser Stelle oder ist deaktiviert<br />\r\n            </strong></h2>\r\n            <div align=\"left\">{ERROR_NUMBER} {ERROR_MESSAGE} <br />\r\n            <br />\r\n            Das von Ihnen gesuchte Dokument wurde m&ouml;glicherweise umbenannt, verschoben oder gel&ouml;scht. Es existieren mehrere M&ouml;glichkeiten, um ein Dokument zu finden. Sie k&ouml;nnen auf die Homepage zur&uuml;ckkehren, das Dokument mit Stichworten suchen oder unsere Help Site konsultieren. Um von der letztbesuchten Seite aus weiterzufahren, klicken Sie bitte auf die Schaltfl&auml;che \'Zur&uuml;ck\' Ihres Browsers. <br />\r\n            <br />\r\n            The document you requested does not exist at this location.<br />\r\n            The document you are looking for may have been renamed, moved or deleted. There are several ways to locate a document. You can return to the Homepage, search for the document using keywords or consult our Help Site. To continue on from the last page you visited, please press the \'Back\' button of your browser.</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'Fehlermeldung', 'Fehlermeldung', 'Fehlermeldung', 'Fehlermeldung', 'index', '', '', 'n'),
('21', '<form method=\"post\" action=\"index.php?section=login\" name=\"loginForm\">\r\n    <input type=\"hidden\" value=\"{LOGIN_REDIRECT}\" name=\"redirect\" />\r\n    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"2\" border=\"0\">\r\n        <tbody>\r\n            <tr>\r\n                <td width=\"30%\" nowrap=\"nowrap\">{TXT_USER_NAME}:</td>\r\n                <td width=\"40%\"><input type=\"\" name=\"USERNAME\" value=\"\" size=\"30\" /></td>\r\n                <td width=\"30%\" rowspan=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;<img width=\"20\" height=\"28\" align=\"middle\" src=\"images/modules/login/login_key.gif\" alt=\"\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"30%\" nowrap=\"nowrap\" rowspan=\"3\" style=\"vertical-align: top;\">{TXT_PASSWORD}:</td>\r\n                <td width=\"40%\"><input type=\"password\" name=\"PASSWORD\" value=\"\" size=\"30\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"40%\"><input type=\"submit\" name=\"login\" value=\"{TXT_LOGIN}\" size=\"15\" class=\"input\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"40%\" colspan=\"2\"><a title=\"{TXT_LOST_PASSWORD}\" href=\"index.php?section=login&amp;cmd=lostpw\">{TXT_PASSWORD_LOST}</a></td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"color: rgb(255, 0, 0); font-weight: bold;\" colspan=\"3\"><br />\r\n                {LOGIN_STATUS_MESSAGE}</td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n</form>', 'Login', 'Login', 'Login', 'Login', 'index', '', '', 'n'),
('22', '<form action=\"index.php?section=login&amp;cmd=lostpw\" method=\"post\">\r\n    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"2\" border=\"0\" summary=\"lost password form\">\r\n        <tbody>\r\n            <!-- BEGIN login_lost_password -->\r\n            <tr>\r\n                <td width=\"70%\" colspan=\"2\">{TXT_LOST_PASSWORD_TEXT}</td>\r\n                <td width=\"30%\" rowspan=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;<img width=\"32\" height=\"32\" align=\"middle\" alt=\"login key\" src=\"images/modules/login/lost_pw.gif\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"30%\" nowrap=\"nowrap\" style=\"vertical-align: top;\" rowspan=\"2\">{TXT_EMAIL}:</td>\r\n                <td width=\"40%\"><input type=\"text\" name=\"email\" size=\"30\" style=\"width: 100%;\" maxlength=\"255\" tabindex=\"1\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td><input type=\"submit\" value=\"{TXT_RESET_PASSWORD}\" name=\"restore_pw\" tabindex=\"2\" /></td>\r\n            </tr>\r\n            <!-- END login_lost_password -->\r\n            <tr>\r\n                <td style=\"color: rgb(255, 0, 0); font-weight: bold;\" colspan=\"3\"><br />\r\n                {LOGIN_STATUS_MESSAGE}</td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n</form>', 'Passwort vergessen?', 'Passwort vergessen?', 'Passwort vergessen?', 'Passwort vergessen?', 'index', '', '', 'n'),
('23', '<form action=\"index.php?section=login&amp;cmd=resetpw\" method=\"post\">\r\n    <input type=\"hidden\" value=\"{LOGIN_RESTORE_KEY}\" name=\"restore_key\" /> <input type=\"hidden\" value=\"{LOGIN_USERNAME}\" name=\"username\" />\r\n    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"2\" border=\"0\" summary=\"set new password form\">\r\n        <tbody>\r\n            <!-- BEGIN login_reset_password -->\r\n            <tr>\r\n                <td width=\"70%\" colspan=\"2\">{TXT_SET_PASSWORD_TEXT}</td>\r\n                <td width=\"30%\" rowspan=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;<img width=\"32\" height=\"32\" align=\"middle\" alt=\"login key\" src=\"images/modules/login/lost_pw.gif\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"30%\" nowrap=\"nowrap\">{TXT_USERNAME}</td>\r\n                <td width=\"40%\">{LOGIN_USERNAME}</td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"30%\" nowrap=\"nowrap\">{TXT_PASSWORD}&nbsp;{TXT_PASSWORD_MINIMAL_CHARACTERS}</td>\r\n                <td width=\"40%\"><input type=\"password\" name=\"password\" size=\"30\" maxlength=\"50\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"30%\" nowrap=\"nowrap\" style=\"vertical-align: top;\" rowspan=\"2\">{TXT_VERIFY_PASSWORD}</td>\r\n                <td width=\"40%\"><input type=\"password\" name=\"password2\" size=\"30\" maxlength=\"50\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td><input type=\"submit\" name=\"reset_password\" value=\"{TXT_SET_NEW_PASSWORD}\" /></td>\r\n            </tr>\r\n            <!-- END login_reset_password -->\r\n            <tr>\r\n                <td style=\"color: rgb(255, 0, 0); font-weight: bold;\" colspan=\"2\"><br />\r\n                {LOGIN_STATUS_MESSAGE}</td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n</form>', 'Neues Passwort setzen', 'Neues Passwort setzen', 'Neues Passwort setzen', 'Neues Passwort setzen', 'index', '', '', 'n'),
('24', '<img width=\"100\" height=\"100\" alt=\"\" src=\"images/modules/login/stop_hand.gif\" /><br />\r\n{TXT_NOT_ALLOWED_TO_ACCESS}<br />\r\nKlicken Sie <a href=\"index.php?section=login&amp;redirect={LOGIN_REDIRECT}&amp;relogin=true\" title=\"neu anmelden\">hier</a> um sich mit einem anderen Benutzerkonto anzumelden.', 'Zugriff verweigert', 'Zugriff verweigert', 'Zugriff verweigert', 'Zugriff verweigert', 'index', '', '', 'n'),
('25', '<h2>Willkommen beim Community-Bereich</h2>\r\n<p>Sind Sie noch kein Mitglied? <a href=\"index.php?section=access&amp;cmd=signup\">Hier k&ouml;nnen Sie sich anmelden...</a></p>\r\n<h2>Bereiche</h2>\r\n<ul>\r\n    <li><a href=\"index.php?section=access&amp;cmd=members\">Mitgliederliste anschauen</a></li>\r\n    <li><a href=\"index.php?section=forum\">Forum</a></li>\r\n</ul>', 'Community', 'Community', 'Community', 'Community', 'index', '', '', 'n'),
('29', '<div id=\"guestbook\">\r\n	<div class=\"count_entries\">{GUESTBOOK_TOTAL_ENTRIES} Eintr&auml;ge im G&auml;stebuch.</div>\r\n	<div class=\"add_entry\"><input type=\"button\" onClick=\"location.href=\'index.php?section=guestbook&amp;cmd=post\'\" value=\"Eintragen\" /></div>\r\n	<div class=\"entries\">\r\n		 <!-- BEGIN guestbook_row -->\r\n		 	<div class=\"entry_{GUESTBOOK_ROWCLASS}\">\r\n				<div class=\"title\"><h3>{GUESTBOOK_NICK}</h3></div>\r\n				<div class=\"location\">{GUESTBOOK_GENDER} {GUESTBOOK_LOCATION}</div>\r\n				<div class=\"date\">{GUESTBOOK_DATE}</div>\r\n				<div class=\"message\">{GUESTBOOK_COMMENT}</div>\r\n				<div class=\"links\">{GUESTBOOK_EMAIL} {GUESTBOOK_URL}</div>\r\n			</div>\r\n		 <!-- END guestbook_row -->\r\n	</div>\r\n	<div class=\"paging\">{GUESTBOOK_PAGING}</div>\r\n</div>', 'Gästebuch', 'Gästebuch', 'Gästebuch', 'Gästebuch', 'index', '', '', 'y'),
('30', '<div id=\"guestbook\">\r\n	<!-- BEGIN guestbookForm -->\r\n	<div class=\"error_message\">{ERROR}</div>\r\n	<div class=\"information\">Sie k&ouml;nnen sich hier ins G&auml;stebuch eintragen.<br />Damit der Eintrag klappt, sollten mindestens alle mit einem <font color=\"red\">*</font>  markierten Felder ausgef&uuml;llt werden.</div>\r\n	<div class=\"form\">\r\n		<form method=\"post\" action=\"index.php?section=guestbook&amp;cmd=post\" name=\"GuestbookForm\">\r\n			<p><label for=\"nickname\">Name<font color=\"red\"> *</font></label><input type=\"text\" value=\"{NICKNAME}\" id=\"nickname\" name=\"nickname\" maxlength=\"255\" /></p>\r\n			<p><label for=\"comment\">Kommentar<font color=\"red\"> *</font></label><textarea cols=\"1\" rows=\"1\" id=\"comment\" name=\"comment\">{COMMENT}</textarea></p>\r\n			<p><label>Geschlecht</label><input type=\"radio\" id=\"female\" name=\"malefemale\" value=\"F\" {FEMALE_CHECKED}/><label class=\"description\" for=\"female\">Weiblich</label></p>\r\n			<p><input type=\"radio\" id=\"male\" name=\"malefemale\" value=\"M\" {MALE_CHECKED}/><label class=\"description\" for=\"male\"> M&auml;nnlich</label></p>\r\n			<p><label for=\"location\">Wohnort</label><input type=\"text\" value=\"{LOCATION}\" id=\"location\" name=\"location\" maxlength=\"255\" /></p>\r\n			<p><label for=\"email\">E-Mail<font color=\"red\"> *</font></label><input type=\"text\" value=\"{EMAIL}\" id=\"email\" name=\"email\" maxlength=\"255\" /></p>\r\n			<p><label for=\"url\">Homepage</label><input type=\"text\" maxlength=\"255\" value=\"{HOMEPAGE}\" id=\"url\" name=\"url\"/></p>\r\n			<p><label for=\"captcha\">Captcha</label><img title=\"{IMAGE_ALT}\" alt=\"{IMAGE_ALT}\" src=\"{IMAGE_URL}\" /><br /><br />{TXT_CAPTCHA} - Um maschinelle und automatische &uuml;bertragung von Spamkommentaren zu verhinden, bitte die Zeichenfolge im dargestellten Bild in der Eingabemaske eintragen. Nur wenn die Zeichenfolge richtig eingegeben wurde, kann der Kommentar angenommen werden.<br /><br /><input type=\"text\" id=\"captcha\" name=\"captcha\" /><input type=\"hidden\" value=\"{CAPTCHA_OFFSET}\" name=\"offset\" /> </p>\r\n			<p><input type=\"reset\" name=\"Submit\" value=\"&nbsp;Reset&nbsp;\" />&nbsp;&nbsp; <input type=\"submit\" name=\"save\" value=\"&nbsp;Speichern&nbsp;\" /></p>\r\n		</form>\r\n	</div>\r\n	<!-- END guestbookForm -->\r\n	<!-- BEGIN guestbookStatus -->\r\n	{GUESTBOOK_STATUS}<br />\r\n	<br />\r\n	<a href=\"index.php?section=guestbook\">zurück zum Gästebuch</a>\r\n	<!-- END guestbookStatus -->\r\n</div>', 'Eintragen', 'Eintragen', 'Eintragen', 'Eintragen', 'index', '', '', 'y'),
('39', '<div id=\"shop\">\r\n  <!-- BEGIN shopProductRow1 -->\r\n  <div class=\"discount_row1\">\r\n    <div class=\"image\">\r\n      <a href=\"{SHOP_PRODUCT_DETAILLINK}\">\r\n        <img border=\"0\" alt=\"{SHOP_PRODUCT_TITLE}\" src=\"{SHOP_PRODUCT_THUMBNAIL}\" {SHOP_PRODUCT_THUMBNAIL_SIZE} />\r\n      </a>\r\n    </div>\r\n    <div class=\"text\">\r\n      <h2>{SHOP_PRODUCT_TITLE}</h2>\r\n      <i>{TXT_INSTEAD_OF} {SHOP_PRODUCT_PRICE} {SHOP_PRODUCT_PRICE_UNIT}</i><br />\r\n      <font style=\"color:#ff0000;\">\r\n        <b>{TXT_PRICE_NOW}\r\n          <font style=\"font-size: 16px;\">\r\n            {SHOP_PRODUCT_DISCOUNTPRICE} {SHOP_PRODUCT_DISCOUNTPRICE_UNIT}\r\n          </font>\r\n        </b>\r\n      </font>\r\n    </div>\r\n  </div>\r\n  <!-- END shopProductRow1 -->\r\n  <!-- BEGIN shopProductRow2 -->\r\n  <div class=\"discount_row2\">\r\n    <div class=\"image\">\r\n      <a href=\"{SHOP_PRODUCT_DETAILLINK}\">\r\n        <img border=\"0\" alt=\"{SHOP_PRODUCT_TITLE}\" src=\"{SHOP_PRODUCT_THUMBNAIL}\" {SHOP_PRODUCT_THUMBNAIL_SIZE} />\r\n      </a>\r\n    </div>\r\n    <div class=\"text\">\r\n      <h2>{SHOP_PRODUCT_TITLE}</h2>\r\n      <i>{TXT_INSTEAD_OF} {SHOP_PRODUCT_PRICE} {SHOP_PRODUCT_PRICE_UNIT}</i><br />\r\n      <font style=\"color:#ff0000;\">\r\n        <b>{TXT_PRICE_NOW}\r\n          <font style=\"font-size: 16px;\">\r\n            {SHOP_PRODUCT_DISCOUNTPRICE} {SHOP_PRODUCT_DISCOUNTPRICE_UNIT}\r\n          </font>\r\n        </b>\r\n      </font>\r\n    </div>\r\n  </div>\r\n  <!-- END shopProductRow2 -->\r\n</div>\r\n', 'Sonderangebote', 'Sonderangebote', 'Sonderangebote', 'Sonderangebote', 'index', '', '', 'y'),
('32', 'Hier k&ouml;nnen Sie Ihre eigenen Allgemeinen Gesch&auml;ftsbedingungen hineinschreiben. <br />\r\nEnter your terms and conditions here.<br />\r\n<br />\r\n<br />\r\n<strong>{TXT_SHOP_SHIPMENT_CONDITIONS}</strong><br />\r\n<table width=\"100%\" cellspacing=\"0\" cellpadding=\"2\" border=\"0\">\r\n    <tbody>\r\n        <!-- BEGIN shopShipper -->\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td nowrap=\"nowrap\" width=\"20%\"><strong>{TXT_SHIPPING_METHOD}</strong></td>\r\n            <td nowrap=\"nowrap\" width=\"20%\"><strong>{TXT_SHOP_SHIPMENT_COUNTRIES}</strong></td>\r\n            <td nowrap=\"nowrap\" width=\"20%\"><strong>{TXT_SHIPPING_MAX_WEIGHT}</strong></td>\r\n            <td nowrap=\"nowrap\" width=\"20%\"><strong>{TXT_FREE_OF_CHARGE}</strong></td>\r\n            <td nowrap=\"nowrap\" width=\"20%\"><strong>{TXT_FEE}</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td nowrap=\"nowrap\">{SHOP_SHIPPER}</td>\r\n            <td>{SHOP_COUNTRIES}</td>\r\n            <td colspan=\"3\">&nbsp;</td>\r\n        </tr>\r\n        <!-- BEGIN shopShipment -->\r\n        <tr>\r\n            <td colspan=\"2\">&nbsp;</td>\r\n            <td nowrap=\"nowrap\">{SHOP_MAX_WEIGHT}</td>\r\n            <td nowrap=\"nowrap\">{SHOP_COST_FREE}</td>\r\n            <td nowrap=\"nowrap\">{SHOP_COST}&nbsp;{SHOP_UNIT}</td>\r\n        </tr>\r\n        <!-- END shopShipment -->         <!-- END shopShipper -->\r\n    </tbody>\r\n</table>', 'Allgemeine Geschäftsbedingungen', 'Allgemeine Geschäftsbedingungen', 'Allgemeine Geschäftsbedingungen', 'Allgemeine Geschäftsbedingungen', 'index', '', '', 'n'),
('33', '<div id=\"shop\">\r\n	<div class=\"message_error\">{SHOP_LOGIN_STATUS}</div>\r\n	<div class=\"customer_new\">\r\n		<form name=\"shop\" action=\"index.php?section=shop&cmd=account\" method=\"post\">\r\n			<h2>{TXT_SHOP_ACCOUNT_NEW_CUSTOMER}</h2>\r\n			{TXT_SHOP_ACCOUNT_NOTE}<br />\r\n			<br />\r\n			<input type=\"submit\" value=\"{TXT_NEXT}\" name=\"login\">\r\n		</form>\r\n	</div>\r\n	<div class=\"customer_old\">\r\n		<form name=shop action=\"{SHOP_LOGIN_ACTION}\" method=post>\r\n			<h2>{TXT_SHOP_ACCOUNT_EXISTING_CUSTOMER}</h2>\r\n			<p><label>{TXT_EMAIL_ADDRESS}</label><input maxLength=\"250\" value=\"{SHOP_LOGIN_EMAIL}\" name=\"username\"></p>\r\n			<p><label>{TXT_PASSWORD}</label><input type=\"password\" maxLength=\"50\" name=\"password\"></p>\r\n			<p><input type=\"submit\" value=\"{TXT_SHOP_ACCOUNT_LOGIN}\" name=\"login\"></p>\r\n		</form>\r\n	</div>\r\n</div>', 'Mein Konto', 'Mein Konto', 'Mein Konto', 'Mein Konto', 'index', '', '', 'y'),
('34', '<div id=\"shop\">\r\n     <div class=\"message\">{SHOP_STATUS}</div>\r\n     <a href=\"index.php?section=shop\">zurück zum Shop</a>\r\n</div>\r\n', 'Transaktionsstatus', 'Transaktionsstatus', 'Transaktionsstatus', 'Transaktionsstatus', 'index', '', '', 'y'),
('35', '{SHOP_JAVASCRIPT_CODE}\r\n<div id=\"shop\">\r\n  <div class=\"menu\">{SHOP_MENU}</div>\r\n  <div class=\"cart_info\">{SHOP_CART_INFO}</div>\r\n  <div class=\"informations\">{TXT_PRODUCTS_IN_CATEGORY} {SHOP_CATEGORY_NAME}</div>\r\n  <!-- BEGIN shopProductRow -->\r\n  <div class=\"product\">\r\n    <form id=\"{SHOP_PRODUCT_FORM_NAME}\" name=\"{SHOP_PRODUCT_FORM_NAME}\" action=\"index.php?section=shop&amp;cmd=cart\" method=\"post\">\r\n      <input type=\"hidden\" name=\"productId\" value=\"{SHOP_PRODUCT_ID}\" />\r\n    <div class=\"images\">\r\n      <!-- BEGIN productImage1 -->\r\n      <a href=\"{SHOP_PRODUCT_THUMBNAIL_LINK_1}\">\r\n        <img border=\"0\" src=\"{SHOP_PRODUCT_THUMBNAIL_1}\" {SHOP_PRODUCT_THUMBNAIL_SIZE_1} alt=\"{TXT_SEE_LARGE_PICTURE}\" />\r\n      </a><br />\r\n      <!-- END productImage1 -->\r\n      <!-- BEGIN productImage2 -->\r\n      <a href=\"{SHOP_PRODUCT_THUMBNAIL_LINK_2}\">\r\n        <img border=\"0\" src=\"{SHOP_PRODUCT_THUMBNAIL_2}\" {SHOP_PRODUCT_THUMBNAIL_SIZE_2} alt=\"{TXT_SEE_LARGE_PICTURE}\" />\r\n      </a><br />\r\n      <!-- END productImage2 -->\r\n      <!-- BEGIN productImage3 -->\r\n      <a href=\"{SHOP_PRODUCT_THUMBNAIL_LINK_3}\">\r\n        <img border=\"0\" src=\"{SHOP_PRODUCT_THUMBNAIL_3}\" {SHOP_PRODUCT_THUMBNAIL_SIZE_3} alt=\"{TXT_SEE_LARGE_PICTURE}\" />\r\n      </a><br />\r\n      <!-- END productImage3 -->\r\n    </div>\r\n    <div class=\"description\">\r\n      <h2>{SHOP_PRODUCT_TITLE}</h2>\r\n      <i>{SHOP_PRODUCT_DESCRIPTION}</i><br /><br />{SHOP_PRODUCT_DETAILDESCRIPTION}<br /><br />\r\n      <div class=\"stock\">{SHOP_PRODUCT_STOCK}</div>\r\n      <div class=\"product_id\">{TXT_PRODUCT_ID}:{SHOP_PRODUCT_ID} ({TXT_SHOP_PRODUCT_CUSTOM_ID}: {SHOP_PRODUCT_CUSTOM_ID})</div>\r\n      <!-- BEGIN shopProductOptionsRow -->\r\n      <div class=\"shop_options\">{SHOP_PRODUCT_OPTIONS_TITLE}<br />\r\n        <div id=\"product_options_layer{SHOP_PRODUCT_ID}\" style=\"display: none;\">\r\n          <div class=\"shop_options_click\">\r\n            <br />\r\n            <!-- BEGIN shopProductOptionsValuesRow -->\r\n            <strong>{SHOP_PRODUCT_OPTIONS_NAME}:</strong><br />{SHOP_PRODCUT_OPTION}<br />\r\n             <!-- END shopProductOptionsValuesRow -->\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <!-- END shopProductOptionsRow -->\r\n      <!-- BEGIN shopProductManufacturer -->\r\n      <div class=\"manufacturer\"><br /><h3>Hersteller</h3>{SHOP_MANUFACTURER_LINK}</div>\r\n      <!-- END shopProductManufacturer -->\r\n    </div>\r\n    <div class=\"price\"><strong>Preis: {SHOP_PRODUCT_DISCOUNTPRICE} {SHOP_PRODUCT_DISCOUNTPRICE_UNIT}  {SHOP_PRODUCT_PRICE} {SHOP_PRODUCT_PRICE_UNIT}</strong><br />{SHOP_PRODUCT_TAX_PREFIX}&nbsp;{SHOP_PRODUCT_TAX}</div>\r\n    <div class=\"functions\"><input type=\"submit\" onclick=\"{SHOP_PRODUCT_SUBMIT_FUNCTION}\" name=\"{SHOP_PRODUCT_SUBMIT_NAME}\" value=\"{TXT_ADD_TO_CARD}\" /></div>\r\n    </form>\r\n  </div>\r\n  <!-- END shopProductRow -->\r\n</div>\r\n', 'Detaillierte Produktedaten', 'Detaillierte Produktedaten', 'Detaillierte Produktedaten', 'Detaillierte Produktedaten', 'index', '', '', 'y'),
('36', '<div id=\"shop\">\r\n  <div class=\"message_error\">{SHOP_STATUS}</div>\r\n  <!-- BEGIN shopConfirm -->\r\n  <div class=\"order\">\r\n    <form action=\"index.php?section=shop&amp;cmd=confirm\" name=\"shopForm\" method=\"post\">\r\n      <h2>{TXT_ORDER_INFOS}</h2>\r\n      <table cellspacing=\"2\">\r\n        <tr>\r\n          <th width=\"1%\" nowrap=\"nowrap\">{TXT_ID}</th>\r\n          <th width=\"94%\" align=\"left\">{TXT_PRODUCT}</th>\r\n          <th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_UNIT_PRICE}</th>\r\n          <th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_QUANTITY}</th>\r\n          <th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_WEIGHT}</th>\r\n          <th width=\"1%\" nowrap=\"nowrap\" colspan=\"2\">{TXT_TAX_PREFIX}</th>\r\n          <th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_TOTAL}</th>\r\n        </tr>\r\n          <!-- BEGIN shopCartRow -->\r\n          <tr class=\"row2\">\r\n            <td nowrap=\"nowrap\">{SHOP_PRODUCT_ID}</td>\r\n            <td>{SHOP_PRODUCT_TITLE}</td>\r\n            <td nowrap=\"nowrap\" align=\"right\">{SHOP_PRODUCT_ITEMPRICE} {SHOP_UNIT}</td>\r\n            <td nowrap=\"nowrap\" align=\"right\">{SHOP_PRODUCT_QUANTITY}</td>\r\n            <td nowrap=\"nowrap\" align=\"right\">{SHOP_PRODUCT_WEIGHT}</td>\r\n            <td nowrap=\"nowrap\" align=\"right\">{SHOP_PRODUCT_TAX_RATE}</td>\r\n            <td nowrap=\"nowrap\" align=\"right\">{SHOP_PRODUCT_TAX_AMOUNT}</td>\r\n            <td nowrap=\"nowrap\" align=\"right\">{SHOP_PRODUCT_PRICE} {SHOP_UNIT}</td>\r\n          </tr>\r\n          <!-- END shopCartRow -->\r\n        <tr class=\"row3\">\r\n          <td colspan=\"3\" valign=\"top\"><strong>{TXT_INTER_TOTAL}</strong> {SHOP_TAX_PRODUCTS_TXT}</td>\r\n          <td colspan=\"4\" valign=\"top\" nowrap=\"nowrap\">{SHOP_TOTALITEM} {TXT_PRODUCT_S}</td>\r\n          <td valign=\"top\" nowrap=\"nowrap\" align=\"right\"><strong>{SHOP_TOTALPRICE} {SHOP_UNIT}</strong></td>\r\n        </tr>\r\n          <!-- BEGIN shiprow -->\r\n          <tr class=\"row2\" valign=\"top\">\r\n            <td colspan=\"2\"><strong>{TXT_SHIPPING_METHOD}</strong></td>\r\n            <td colspan=\"5\">{SHOP_SHIPMENT}</td>\r\n            <td nowrap=\"nowrap\" align=\"right\">{SHOP_SHIPMENT_PRICE} {SHOP_UNIT}</td>\r\n          </tr>\r\n          <!-- END shiprow -->\r\n        <tr class=\"row2\" valign=\"top\">\r\n          <td colspan=\"2\"><strong>{TXT_PAYMENT_TYPE}</strong></td>\r\n          <td colspan=\"5\">{SHOP_PAYMENT}</td>\r\n          <td nowrap=\"nowrap\" align=\"right\">{SHOP_PAYMENT_PRICE} {SHOP_UNIT}</td>\r\n        </tr>\r\n          <!-- BEGIN taxrow -->\r\n          <tr class=\"row2\" valign=\"top\">\r\n            <td colspan=\"7\"><strong>{TXT_TAX_PREFIX}</strong></td>\r\n            <td nowrap=\"nowrap\" align=\"right\">{TXT_TAX_PART} {SHOP_TAX_PRICE} {SHOP_UNIT}</td>\r\n          </tr>\r\n          <!-- END taxrow -->\r\n        <tr class=\"row3\">\r\n          <td colspan=\"7\" valign=\"top\" nowrap=\"nowrap\"><strong>{TXT_TOTAL_PRICE}</strong> {SHOP_TAX_GRAND_TXT}</td>\r\n          <td nowrap=\"nowrap\" align=\"right\"><strong>{SHOP_GRAND_TOTAL} {SHOP_UNIT}</strong></td>\r\n        </tr>\r\n      </table>\r\n      <br />\r\n      <table cellspacing=\"0\">\r\n        <tr>\r\n          <th width=\"50%\" align=\"left\">{TXT_ADDRESS_CUSTOMER}</th>\r\n          <th width=\"50%\" align=\"left\">{TXT_SHIPPING_ADDRESS}</th>\r\n        </tr>\r\n        <tr>\r\n          <td nowrap=\"nowrap\" valign=\"top\">\r\n            {SHOP_COMPANY}<br />\r\n            {SHOP_PREFIX} {SHOP_FIRSTNAME} {SHOP_LASTNAME}<br />\r\n            {SHOP_ADDRESS}<br />\r\n            {SHOP_ZIP} {SHOP_CITY}<br />\r\n            {SHOP_COUNTRY}<br />\r\n            {SHOP_PHONE}<br />\r\n            {SHOP_FAX}<br />\r\n            {SHOP_EMAIL}\r\n          </td>\r\n          <td nowrap=\"nowrap\" valign=\"top\">\r\n            <!-- BEGIN shopShipmentAddress -->\r\n            {SHOP_COMPANY2}<br />\r\n            {SHOP_PREFIX2} {SHOP_FIRSTNAME2} {SHOP_LASTNAME2}<br />\r\n            {SHOP_ADDRESS2}<br />\r\n            {SHOP_ZIP2} {SHOP_CITY2}<br />\r\n            {SHOP_COUNTRY2}<br />\r\n            {SHOP_PHONE}<br />\r\n            {SHOP_FAX2}<br />\r\n            {SHOP_EMAIL2}\r\n            <!-- END shopShipmentAddress -->\r\n          </td>\r\n        </tr>\r\n      </table>\r\n      <br />\r\n      <!-- BEGIN shopComment -->\r\n      <table cellspacing=\"0\">\r\n        <tr class=\"row3\">\r\n          <td colspan=\"2\"><strong>{TXT_COMMENTS}<strong></td>\r\n        </tr>\r\n        <tr class=\"row2\">\r\n          <td colspan=\"2\">{SHOP_CUSTOMERNOTE}</td>\r\n        </tr>\r\n      </table><br />\r\n      <br />\r\n      <!-- END shopComment -->\r\n      <div align=\"right\"><input type=\"submit\" value=\"{TXT_ORDER_NOW}\" name=\"process\" /></div>\r\n    </form>\r\n  </div>\r\n  <!-- END shopConfirm -->\r\n  <!-- BEGIN shopProcess -->\r\n  <div class=\"message\">{TXT_ORDER_PREPARED}<br/>{SHOP_PAYMENT_PROCESSING}</div>\r\n  <!-- END shopProcess -->\r\n</div>\r\n', 'Bestellen', 'Bestellen', 'Bestellen', 'Bestellen', 'index', '', '', 'y'),
('37', '<div id=\"shop\">\r\n  <div class=\"message_error\">{SHOP_ACCOUNT_STATUS}</div>\r\n  <form action=\"index.php?section=shop&amp;cmd=payment\" name=\"shopForm\" method=\"post\">\r\n    <div class=\"payment\">\r\n      <table summary=\"\" cellspacing=\"0\" width=\"100%\">\r\n        <tr>\r\n          <th colspan=\"3\" align=\"left\">{TXT_PRODUCTS}</th>\r\n        </tr>\r\n        <tr class=\"row1\">\r\n          <td width=\"40%\"><strong>{TXT_TOTALLY_GOODS}</strong>&nbsp;{SHOP_TAX_PRODUCTS_TXT}</td>\r\n          <td width=\"40%\">{SHOP_TOTALITEM}&nbsp;{TXT_PRODUCT_S}</td>\r\n          <td width=\"20%\" align=\"right\"><strong>{SHOP_TOTALPRICE}&nbsp;{SHOP_UNIT}</strong></td>\r\n        </tr>\r\n        <!-- BEGIN shopShipment -->\r\n        <tr class=\"row2\">\r\n          <td>\r\n            <strong>{TXT_SHIPPING_METHODS}</strong>\r\n            <!-- BEGIN shopWeight -->\r\n            &nbsp;({TXT_TOTAL_WEIGHT}&nbsp;{SHOP_TOTAL_WEIGHT})\r\n            <!-- END shopWeight -->\r\n          </td>\r\n          <td>{SHOP_SHIPMENT_MENU}&nbsp;{TXT_SHIPPER_NO_GOOD}</td>\r\n          <td align=\"right\">{SHOP_SHIPMENT_PRICE}&nbsp;{SHOP_UNIT}</td>\r\n        </tr>\r\n        <!-- END shopShipment -->\r\n        <!-- BEGIN shopPayment -->\r\n        <tr class=\"row1\">\r\n          <td><strong>{TXT_PAYMENT_TYPES}</strong></td>\r\n          <td>{SHOP_PAYMENT_MENU}</td>\r\n          <td align=\"right\">{SHOP_PAYMENT_PRICE}&nbsp;{SHOP_UNIT}</td>\r\n        </tr>\r\n        <!-- END shopPayment -->\r\n        <!-- BEGIN shopTax -->\r\n        <tr class=\"row2\">\r\n          <td colspan=\"2\"><strong>{TXT_TAX_PREFIX}</strong></td>\r\n          <td align=\"right\">{SHOP_TAX_PRICE}</strong></td>\r\n        </tr>\r\n        <!-- END shopTax -->\r\n        <!-- BEGIN lsv -->\r\n          <tr class=\"row1\">\r\n            <td><strong>{TXT_PAYMENT_LSV}</strong></td>\r\n            <td colspan=\"2\">\r\n              <p><label>{TXT_ACCOUNT_HOLDER}</label><input type=\"text\" value=\"{SHOP_ACCOUNT_HOLDER}\" name=\"account_holder\" /></p>\r\n              <p><label>{TXT_ACCOUNT_BANK}</label><input type=\"text\" value=\"{SHOP_ACCOUNT_BANK}\" name=\"account_bank\" /></p>\r\n              <p><label>{TXT_ACCOUNT_BLZ}</label><input type=\"text\" value=\"{SHOP_ACCOUNT_BLZ}\" name=\"account_blz\" /></p>\r\n            </td>\r\n          </tr>\r\n        <!-- END lsv -->\r\n        <tr class=\"row3\">\r\n          <td colspan=\"2\"><strong>{TXT_TOTAL_PRICE}</strong>&nbsp;{SHOP_TAX_GRAND_TXT}</td>\r\n          <td align=\"right\"><strong>{SHOP_GRAND_TOTAL} {SHOP_UNIT}</strong></td>\r\n        </tr>\r\n        <tr class=\"row1\">\r\n          <td colspan=\"3\">&nbsp;</td>\r\n        </tr>\r\n        <tr class=\"row1\">\r\n          <td valign=\"top\">{TXT_COMMENTS}</td>\r\n          <td colspan=\"2\"><textarea name=\"customer_note\" rows=\"4\" cols=\"52\">{SHOP_CUSTOMERNOTE}</textarea></td>\r\n        </tr>\r\n      </table>\r\n    </div>\r\n    <br />\r\n    <div class=\"message\">\r\n      <p><input type=\"checkbox\" value=\"checked\" name=\"agb\" {SHOP_AGB} />\r\n        <label class=\"description\">{TXT_ACCEPT_TAC}</label></p>\r\n      <p><input type=\"submit\" value=\"{TXT_UPDATE}\" name=\"refresh\" />&nbsp;<input type=\"submit\" value=\"{TXT_NEXT}\" name=\"check\" /></p>\r\n    </div>\r\n  </form>\r\n</div>', 'Bezahlung und Versand', 'Bezahlung und Versand', 'Bezahlung und Versand', 'Bezahlung und Versand', 'index', '', '', 'y'),
('38', '<div id=\"shop\">\r\n  <script language=\"JavaScript\" type=\"text/javascript\">\r\n  <!--\r\n  function shopCopyText()\r\n  {\r\n    with (document.shop){\r\n      if(equalAddress.checked) {\r\n        prefix2.value= prefix.value;\r\n        company2.value= company.value;\r\n        lastname2.value= lastname.value;\r\n        firstname2.value= firstname.value;\r\n        address2.value=address.value;\r\n        zip2.value= zip.value;\r\n        city2.value= city.value;\r\n        phone2.value= phone.value;\r\n        return true;\r\n      } else {\r\n        prefix2.value= \"\";\r\n        company2.value= \"\";\r\n        lastname2.value= \"\";\r\n        firstname2.value= \"\";\r\n        address2.value=\"\";\r\n        zip2.value= \"\";\r\n        city2.value= \"\";\r\n        phone2.value= \"\";\r\n        return true;\r\n      }\r\n    }\r\n  }\r\n  -->\r\n  </script>\r\n  <div class=\"message_error\">{SHOP_ACCOUNT_STATUS}</div>\r\n  <form name=\"shop\" action=\"{SHOP_ACCOUNT_ACTION}\" method=\"post\">\r\n    <div class=\"customer_address\">\r\n      <h2>{TXT_CUSTOMER_ADDRESS}</h2>\r\n      <p><label>{TXT_COMPANY}</label><input type=\"text\" value=\"{SHOP_ACCOUNT_COMPANY}\" name=\"company\" tabindex=\"1\" /></p>\r\n      <p><label>{TXT_GREETING}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  maxlength=\"50\" value=\"{SHOP_ACCOUNT_PREFIX}\" name=\"prefix\" tabindex=\"2\" /></p>\r\n      <p><label>{TXT_SURNAME}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_LASTNAME}\" name=\"lastname\" tabindex=\"3\" /></p>\r\n      <p><label>{TXT_FIRSTNAME}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_FIRSTNAME}\" name=\"firstname\" tabindex=\"4\" /></p>\r\n      <p><label>{TXT_ADDRESS}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_ADDRESS}\" name=\"address\" tabindex=\"5\" /></p>\r\n      <p><label>{TXT_POSTALE_CODE}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_ZIP}\" name=\"zip\" tabindex=\"6\" /></p>\r\n      <p><label>{TXT_CITY}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_CITY}\" name=\"city\" tabindex=\"7\" /></p>\r\n      <p><label>{TXT_COUNTRY}</label>{SHOP_ACCOUNT_COUNTRY}</p>\r\n      <p><label>{TXT_PHONE_NUMBER}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_PHONE}\" name=\"phone\" tabindex=\"8\" /></p>\r\n      <p><label>{TXT_FAX_NUMBER}</label><input type=\"text\"  value=\"{SHOP_ACCOUNT_FAX}\" name=\"fax\" tabindex=\"9\" /></p>\r\n    </div>\r\n    <!-- BEGIN shopShipmentAddress -->\r\n    <div class=\"shipping_address\">\r\n      <h2>{TXT_SHIPPING_ADDRESS}</h2>\r\n      <p><input type=\"checkbox\" value=\"checked\" name=\"equalAddress\" onClick=\"shopCopyText();\" {SHOP_ACCOUNT_EQUAL_ADDRESS} tabindex=\"10\" /><label class=\"description\">{TXT_SAME_BILLING_ADDRESS}</label></p>\r\n      <p><label>{TXT_COMPANY}</label><input type=\"text\"  value=\"{SHOP_ACCOUNT_COMPANY2}\" name=\"company2\" tabindex=\"11\" /></p>\r\n      <p><label>{TXT_GREETING}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  maxlength=\"50\" value=\"{SHOP_ACCOUNT_PREFIX2}\" name=\"prefix2\" tabindex=\"12\" /></p>\r\n      <p><label>{TXT_SURNAME}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_LASTNAME2}\" name=\"lastname2\" tabindex=\"13\" /></p>\r\n      <p><label>{TXT_FIRSTNAME}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_FIRSTNAME2}\" name=\"firstname2\" tabindex=\"14\" /></p>\r\n      <p><label>{TXT_ADDRESS}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_ADDRESS2}\" name=\"address2\" tabindex=\"15\" /></p>\r\n      <p><label>{TXT_POSTALE_CODE}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  size=\"6\" value=\"{SHOP_ACCOUNT_ZIP2}\" name=\"zip2\" tabindex=\"16\" /></p>\r\n      <p><label>{TXT_CITY}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_CITY2}\" name=\"city2\" tabindex=\"17\" /></p>\r\n      <p><label>{TXT_COUNTRY}</label>{SHOP_ACCOUNT_COUNTRY2}</p>\r\n      <p><label>{TXT_PHONE_NUMBER}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_PHONE2}\" name=\"phone2\" tabindex=\"18\" /></p>\r\n    </div>\r\n    <!-- END shopShipmentAddress -->\r\n    <!-- BEGIN account_details -->\r\n      <div class=\"account_details\">\r\n        <h2>{TXT_YOUR_ACCOUNT_DETAILS}</h2>\r\n        <p><label>{TXT_EMAIL}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_EMAIL}\" name=\"email\" tabindex=\"19\" /></p>\r\n        <p><label>{TXT_PASSWORD}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"password\" value=\"\" name=\"password\" tabindex=\"20\" /></p>\r\n      </div>\r\n    <!-- END account_details -->\r\n    <p><input type=\"reset\" value=\"{TXT_RESET}\" name=\"reset\" tabindex=\"21\" />&nbsp;<input type=\"submit\" value=\"{TXT_NEXT} >>\" name=\"Submit\" tabindex=\"22\" /</p>\r\n  </form>\r\n</div>\r\n', 'Kontoangaben', 'Kontoangaben', 'Kontoangaben', 'Kontoangaben', 'index', '', '', 'y'),
('31', '{SHOP_JAVASCRIPT_CODE}\r\n<div id=\"shop\">\r\n  <div class=\"menu\">{SHOP_MENU}</div>\r\n  <div class=\"cart_info\">{SHOP_CART_INFO}</div>\r\n  <!-- BEGIN subCategoriesRow -->\r\n  <div class=\"categories\">\r\n    <h2>Kategorien</h2>\r\n    <!-- BEGIN subCategories -->\r\n    <div class=\"category\">\r\n      <h3>{SHOP_PRODUCT_TITLE}</h3>\r\n      <a href=\"{SHOP_PRODUCT_DETAILLINK_IMAGE}\">\r\n        <img border=\"0\" alt=\"{TXT_SEE_LARGE_PICTURE}\" src=\"{SHOP_PRODUCT_THUMBNAIL}\" {SHOP_PRODUCT_THUMBNAIL_SIZE} />\r\n      </a>\r\n    </div>\r\n    <!-- END subCategories -->\r\n  </div>\r\n  <!-- END subCategoriesRow -->\r\n  <div class=\"informations\"><h2>{TXT_PRODUCTS_IN_CATEGORY}&nbsp;{SHOP_CATEGORY_NAME}&nbsp;</h2></div>\r\n  <!-- BEGIN shopProductRow -->\r\n  <div class=\"product_{SHOP_ROWCLASS}\">\r\n    <form id=\"{SHOP_PRODUCT_FORM_NAME}\" name=\"{SHOP_PRODUCT_FORM_NAME}\" action=\"index.php?section=shop&amp;cmd=cart\" method=\"post\">\r\n      <input type=\"hidden\" name=\"productId\" value=\"{SHOP_PRODUCT_ID}\" />\r\n    <div class=\"images\">\r\n      <!-- BEGIN productImage1 -->\r\n      <a href=\"{SHOP_PRODUCT_THUMBNAIL_LINK_1}\">\r\n        <img border=\"0\" src=\"{SHOP_PRODUCT_THUMBNAIL_1}\" alt=\"{TXT_SEE_LARGE_PICTURE}\"\r\n        {SHOP_PRODUCT_THUMBNAIL_SIZE_1} />\r\n      </a><br />\r\n      <!-- END productImage1 -->\r\n      <!-- BEGIN productImage2 -->\r\n      <a href=\"{SHOP_PRODUCT_THUMBNAIL_LINK_2}\">\r\n        <img border=\"0\" src=\"{SHOP_PRODUCT_THUMBNAIL_2}\" alt=\"{TXT_SEE_LARGE_PICTURE}\"\r\n        {SHOP_PRODUCT_THUMBNAIL_SIZE_2} />\r\n      </a><br />\r\n      <!-- END productImage2 -->\r\n      <!-- BEGIN productImage3 -->\r\n      <a href=\"{SHOP_PRODUCT_THUMBNAIL_LINK_3}\">\r\n        <img border=\"0\" src=\"{SHOP_PRODUCT_THUMBNAIL_3}\" alt=\"{TXT_SEE_LARGE_PICTURE}\"\r\n        {SHOP_PRODUCT_THUMBNAIL_SIZE_3} />\r\n      </a><br />\r\n      <!-- END productImage3 -->\r\n    </div>\r\n    <div class=\"description\">\r\n      <h3>{SHOP_PRODUCT_TITLE}</h3>\r\n      {SHOP_PRODUCT_DESCRIPTION}<br /><br />\r\n      <div class=\"detail_link\">{SHOP_PRODUCT_DETAILLINK}</div>\r\n      <!-- BEGIN shopProductOptionsRow -->\r\n      <div class=\"shop_options\">{SHOP_PRODUCT_OPTIONS_TITLE}<br />\r\n        <div id=\"product_options_layer{SHOP_PRODUCT_ID}\" style=\"display: none;\">\r\n          <div class=\"shop_options_click\">\r\n            <br />\r\n            <!-- BEGIN shopProductOptionsValuesRow -->\r\n            <strong>{SHOP_PRODUCT_OPTIONS_NAME}:</strong><br />{SHOP_PRODCUT_OPTION}<br />\r\n            <!-- END shopProductOptionsValuesRow -->\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <!-- END shopProductOptionsRow -->\r\n      <br />\r\n      <!-- BEGIN shopProductWeight -->\r\n      <div>{TXT_SHOP_PRODUCT_WEIGHT} {SHOP_PRODUCT_WEIGHT}</div>\r\n      <!-- END shopProductWeight -->\r\n      <!-- BEGIN shopProductExternal -->\r\n      <div>{SHOP_EXTERNAL_LINK}</div>\r\n      <!-- END shopProductExternal -->\r\n    </div>\r\n    <br />\r\n    <div class=\"price\"><strong>Preis: {SHOP_PRODUCT_DISCOUNTPRICE} {SHOP_PRODUCT_DISCOUNTPRICE_UNIT}  {SHOP_PRODUCT_PRICE} {SHOP_PRODUCT_PRICE_UNIT}</strong><br />{SHOP_PRODUCT_TAX_PREFIX}&nbsp;{SHOP_PRODUCT_TAX}</div>\r\n    <div class=\"functions\"><input type=\"submit\" onclick=\"{SHOP_PRODUCT_SUBMIT_FUNCTION}\" name=\"{SHOP_PRODUCT_SUBMIT_NAME}\" value=\"{TXT_ADD_TO_CARD}\" /></div>\r\n    </form>\r\n  </div>\r\n  <!-- END shopProductRow -->\r\n  <div class=\"paging\">{SHOP_PRODUCT_PAGING}</div>\r\n</div>\r\n', 'Online Shop', 'Online Shop', 'Online Shop', 'Online Shop', 'index', '', '', 'y'),
('40', '<div id=\"shop\">\r\n  <!-- BEGIN shopCart -->\r\n  <div class=\"cart\">\r\n    <form action=\"index.php?section=shop&amp;cmd=cart\" name=\"shopForm\" method =\"post\">\r\n      <table summary=\"\" cellspacing=\"0\">\r\n        <tr valign=\"top\">\r\n          <th width=\"69%\"><div align=\"left\"><b>&nbsp;{TXT_PRODUCT}</b></div></th>\r\n          <th width=\"10%\"><div align=\"right\"><b>&nbsp;{TXT_UNIT_PRICE}</b></div></th>\r\n          <th width=\"1%\"><div align=\"right\"><b>&nbsp;{TXT_QUANTITY}</b></div></th>\r\n          <th width=\"10%\"><div align=\"right\"><b>{TXT_TOTAL}&nbsp;</b></div></th>\r\n        </tr>\r\n        <!-- BEGIN shopCartRow -->\r\n        <tr valign=\"top\" class=\"{SHOP_PRODUCT_ROW}\">\r\n          <td><div align=\"left\"><a href =\"index.php?section=shop&amp;cmd=details&amp;referer=cart&amp;productId={SHOP_PRODUCT_CART_ID}\">{SHOP_PRODUCT_TITLE}</a>{SHOP_PRODUCT_OPTIONS}</div></td>\r\n          <td><div align=\"right\">{SHOP_PRODUCT_ITEMPRICE}&nbsp;{SHOP_PRODUCT_ITEMPRICE_UNIT}</div></td>\r\n          <td><div align=\"right\"><input class=\"form\" type=\"text\" name=\"quantity[{SHOP_PRODUCT_CART_ID}]\" value=\"{SHOP_PRODUCT_QUANTITY}\" style=\"width: 30px;\"/></div></td>\r\n          <td><div align=\"right\"><b>{SHOP_PRODUCT_PRICE}&nbsp;{SHOP_PRODUCT_PRICE_UNIT}</b></div></td>\r\n        </tr>\r\n        <!-- END shopCartRow -->\r\n        <tr class=\"row3\">\r\n          <td colspan=\"2\" valign=\"top\"><div align=\"left\">{TXT_TAX_PREFIX}</div></td>\r\n          <td valign=\"top\"><div align=\"right\">{SHOP_PRODUCT_TAX_RATE}</div></td>\r\n          <td width=\"25%\" valign=\"top\" nowrap=\"nowrap\">\r\n            <div align=\"right\">{SHOP_TOTAL_TAX_AMOUNT}</div>\r\n          </td>\r\n        </tr>\r\n        <tr>\r\n          <td colspan=\"4\" valign=\"top\">&nbsp;</td>\r\n        </tr>\r\n        <tr class=\"row3\">\r\n          <td colspan=\"3\" valign=\"top\"><div align=\"left\"><b>{TXT_INTER_TOTAL}</b></div></td>\r\n          <td width=\"25%\" valign=\"top\" nowrap=\"nowrap\">\r\n            <div align=\"right\"><strong>{SHOP_PRODUCT_TOTALPRICE} {SHOP_PRODUCT_TOTALPRICE_UNIT}</strong></div>\r\n          </td>\r\n        </tr>\r\n        <tr>\r\n          <td colspan=\"4\" valign=\"top\">&nbsp;</td>\r\n        </tr>\r\n        <tr class=\"row3\">\r\n          <td colspan=\"2\" valign=\"top\">\r\n            <!-- BEGIN shopShippingCountry -->\r\n            <div align=\"left\"><strong>{TXT_SHIP_COUNTRY}</strong> {SHOP_COUNTRIES_MENU}</div>\r\n            <!-- END shopShippingCountry -->\r\n          </td>\r\n          <td colspan=\"2\" valign=\"top\"><div align=\"right\"><input type=\"submit\" name=\"update\" class=\"shopbutton\" value=\"{TXT_UPDATE}\" />&nbsp;<input type=\"submit\" name=\"continue\" class=\"shopbutton\" value=\"{TXT_NEXT} >>\" /></div></td>\r\n        </tr>\r\n      </table>\r\n    </form>\r\n  </div>\r\n  <!-- END shopCart -->\r\n  <div class=\"cart_links\">\r\n    <a href=\"index.php?section=shop\" title=\"{TXT_CONTINUE_SHOPPING}\">{TXT_CONTINUE_SHOPPING}</a><br />\r\n    <a href=\"index.php?section=shop&amp;act=destroy\" title=\"{TXT_EMPTY_CART}\">{TXT_EMPTY_CART}</a><br />\r\n  </div>\r\n</div>\r\n', 'Ihr Warenkorb', 'Ihr Warenkorb', 'Ihr Warenkorb', 'Ihr Warenkorb', 'index', '', '', 'y'),
('41', '<!-- BEGIN shop_change_password_status -->\r\n<div style=\"font-weight:bold; color:#ff0000;\">{SHOP_PASSWORD_STATUS}</div><br />\r\n<!-- END shop_change_password_status -->\r\n<!-- BEGIN shop_change_password -->\r\n<form action=\"index.php?section=shop&amp;cmd=changepass\" method=\"post\">\r\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width:150px;\">{SHOP_PASSWORD_CURRENT}</td>\r\n<td><input style=\"width:200px;\" type=\"password\" name=\"shopCurrentPassword\" /></td>\r\n</tr>\r\n<tr>\r\n<td>{SHOP_PASSWORD_NEW}</td>\r\n<td><input style=\"width:200px;\" type=\"password\" name=\"shopNewPassword\" /></td>\r\n</tr>\r\n<tr>\r\n<td>{SHOP_PASSWORD_CONFIRM}</td>\r\n<td><input style=\"width:200px;\" type=\"password\" name=\"shopConfirmPassword\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br />\r\n<input type=\"submit\" value=\"{SHOP_PASSWORD_CHANGE}\" />\r\n</form>\r\n<!-- END shop_change_password -->\r\n', 'Kennwort ändern', 'Kennwort ändern', 'Kennwort ändern', 'Kennwort ändern', 'index', '', '', 'y'),
('42', '<!-- BEGIN shop_sendpass_status -->\r\n<div style=\"font-weight:bold; color:#ff0000;\">{SHOP_PASSWORD_STATUS}</div><br />\r\n<!-- END shop_sendpass_status -->\r\n<!-- BEGIN shop_sendpass -->\r\n<form name=\"shop\" action=\"index.php?section=shop&amp;cmd=sendpass\" method=\"post\">\r\n{SHOP_PASSWORD_ENTER_EMAIL}<br />\r\n<br />\r\n<input type=\"text\" style=\"width:200px;\" name=\"shopEmail\"> <input type=\"submit\" value=\"{TXT_NEXT}\">\r\n</form>\r\n<!-- END shop_sendpass -->\r\n', 'Passwort Hilfe', 'Passwort Hilfe', 'Passwort Hilfe', 'Passwort Hilfe', 'index', '', '', 'y'),
('43', '<div id=\"directory\">\r\n	<div class=\"search\">{DIRECTORY_SEARCH}</div>\r\n	<div class=\"navtree\"><a href=\"index.php?section=directory\">{TXT_DIRECTORY_DIR}</a>{DIRECTORY_TREE}</div>\r\n	<!-- BEGIN showTitle --> \r\n		<div class=\"title\"><h2>{DIRECTORY_TITLE}</h2>{DIRECTORY_DESCRIPTION}</div>\r\n	<!-- END showTitle --> \r\n	<!-- BEGIN showCategories --> \r\n		<div class=\"categories\" >\r\n			<div style=\"float: left; width: {DIRECTORY_ROW_WIDTH};\">{DIRECTORY_ROW1}</div>\r\n			<div style=\"float: left; width: {DIRECTORY_ROW_WIDTH};\">{DIRECTORY_ROW2}</div>\r\n		</div>\r\n	<!-- END showCategories -->  \r\n	<!-- BEGIN showLatest --> \r\n		<div class=\"latest\"><h2>Neuste Verzeichnis Eintr&auml;ge</h2></div>\r\n	<!-- END showLatest -->\r\n	<!-- BEGIN showFeeds --> \r\n		<div class=\"feeds_{DIRECTORY_FEED_ROW}\">\r\n			<div class=\"image\">{DIRECTORY_FEED_LOGO_THUMB}</div>\r\n			<div class=\"infos\">\r\n				<a href=\"{DIRECTORY_FEED_DETAIL_LINK}\"><h3>{DIRECTORY_FEED_TITLE}</h3></a>\r\n				{DIRECTORY_FEED_DESCRIPTION}<br /><br />\r\n				{DIRECTORY_FEED_AVERAGE_VOTE}&nbsp;<em><a href=\"{DIRECTORY_FEED_VOTE_LINK}\">{DIRECTORY_FEED_COUNT_VOTES}</a></em><br />\r\n				<div style=\"display: none;\" id=\"voting_{DIRECTORY_FEED_ID}\"><br />{DIRECTORY_FEED_VOTE_IMG}</div>\r\n			</div>\r\n		</div>\r\n	<!-- END showFeeds -->  \r\n	<!-- BEGIN noFeeds --> \r\n		<div class=\"no_feeds\">{DIRECTORY_NO_FEEDS_FOUND}</div>\r\n	<!-- END noFeeds -->\r\n	<!-- BEGIN showInsertFeeds -->\r\n	 	<div class=\"insert_feeds\">{DIRECTORY_INSERT_FEEDS}</div>\r\n	<!-- END showInsertFeeds -->\r\n	<div class=\"paging\">{SEARCH_PAGING}<br /></div>\r\n</div>', 'Verzeichnis', 'Verzeichnis', 'Verzeichnis', 'Verzeichnis', 'index', '', '', 'y'),
('44', '<div id=\"directory\">\r\n	<div class=\"title\"><h2>{DIRECTORY_VOTE_TITLE}</h2></div>\r\n	<div class=\"message\">{DIRECTORY_VOTE_TEXT}<br /><br />{DIRECTORY_BACK}</div>\r\n</div>', 'Vote', 'Vote', 'Vote', 'Vote', 'index', '', '', 'y'),
('45', '<div id=\"directory\">\r\n	<div class=\"search\">{DIRECTORY_SEARCH}</div>\r\n	<div class=\"navtree\"><a href=\"index.php?section=directory\">{TXT_DIRECTORY_DIR}</a>{DIRECTORY_CATEGORY_NAVI}</div>\r\n	<!-- BEGIN showResults --> \r\n		<div class=\"feeds_{DIRECTORY_FEED_ROW}\">\r\n			<div class=\"image\">{DIRECTORY_FEED_LOGO_THUMB}</div>\r\n			<div class=\"infos\">\r\n				<a href=\"{DIRECTORY_FEED_DETAIL_LINK}\"><h3>{DIRECTORY_FEED_TITLE}</h3></a>\r\n				{DIRECTORY_FEED_DESCRIPTION}<br /><br />\r\n				{DIRECTORY_FEED_AVERAGE_VOTE}&nbsp;<em><a href=\"{DIRECTORY_FEED_VOTE_LINK}\">{DIRECTORY_FEED_COUNT_VOTES}</a></em><br />\r\n				<div style=\"display: none;\" id=\"voting_{DIRECTORY_FEED_ID}\"><br />{DIRECTORY_FEED_VOTE_IMG}</div>\r\n			</div>\r\n		</div>\r\n	<!-- END showResults -->  \r\n	<!-- BEGIN noResults --> \r\n		<div class=\"no_feeds\">{DIRECTORY_NO_FEEDS_FOUND}</div>\r\n	<!-- END noResults -->\r\n	<div class=\"paging\">{SEARCH_PAGING}</div>\r\n</div>', 'Suche', 'Suche', 'Suche', 'Suche', 'index', '', '', 'y'),
('46', '<div id=\"directory\">\r\n	<div class=\"search\">{DIRECTORY_SEARCH}</div>\r\n	<div class=\"navtree\"><a href=\"index.php?section=directory\">{TXT_DIRECTORY_DIR}</a>{DIRECTORY_CATEGORY_NAVI}</div>\r\n	<!-- BEGIN showFeeds --> \r\n		<div class=\"feeds_{DIRECTORY_FEED_ROW}\">\r\n			<div class=\"image\">{DIRECTORY_FEED_LOGO_THUMB}</div>\r\n			<div class=\"infos\">\r\n				<a href=\"{DIRECTORY_FEED_DETAIL_LINK}\"><h3>{DIRECTORY_FEED_TITLE}</h3></a>\r\n				{DIRECTORY_FEED_DESCRIPTION}<br /><br />\r\n				{DIRECTORY_FEED_AVERAGE_VOTE}&nbsp;<em><a href=\"{DIRECTORY_FEED_VOTE_LINK}\">{DIRECTORY_FEED_COUNT_VOTES}</a></em><br />\r\n				<div style=\"display: none;\" id=\"voting_{DIRECTORY_FEED_ID}\"><br />{DIRECTORY_FEED_VOTE_IMG}</div>\r\n			</div>\r\n		</div>\r\n	<!-- END showFeeds -->  \r\n	<div class=\"paging\">{SEARCH_PAGING}</div>\r\n</div>\r\n', 'Neue Einträge', 'Neue Einträge', 'Neue Einträge', 'Neue Einträge', 'index', '', '', 'y'),
('47', '<div id=\"directory\">\r\n	<div class=\"search\">{DIRECTORY_SEARCH}</div>\r\n	<div class=\"navtree\"><a href=\"index.php?section=directory\">{TXT_DIRECTORY_DIR}</a>{DIRECTORY_CATEGORY_NAVI}</div>\r\n	<!-- BEGIN feedDetails -->\r\n		<div class=\"feed\">\r\n			<h2>{DIRECTORY_FEED_TITLE}</h2>\r\n			<div class=\"image\">{DIRECTORY_FEED_SPEZ_FIELD_11}<!--{DIRECTORY_FEED_LOGO}--></div>\r\n			<div class=\"infos\">{DIRECTORY_FEED_DESCRIPTION}</div>\r\n                        <div>{DIRECTORY_FEED_LINK}</div>\r\n			<div>{DIRECTORY_FEED_GOOGLEMAP}</div> 	\r\n			<div>{DIRECTORY_FEED_RSS_LINK}</div> \r\n		</div>\r\n	<!-- END feedDetails -->\r\n</div>\r\n{DIRECTORY_GOOGLEMAP_JAVASCRIPT_BLOCK}\r\n\r\n', 'Eintrag anzeigen', 'Eintrag anzeigen', 'Eintrag anzeigen', 'Eintrag anzeigen', 'index', '', '', 'y'),
('48', '{DIRECTORY_JAVASCRIPT}\r\n\r\n<div id=\"directory\">\r\n	<!-- BEGIN directoryMessage -->\r\n		<div class=\"message\">{DIRECTORY_FEED_ADDED}<br /><br />{TXT_DIRECTORY_BACK}</div>\r\n	<!-- END directoryMessage -->\r\n	<!-- BEGIN directoryInputFields -->\r\n		<div class=\"fields\">\r\n			<form name=\"addForm\" enctype=\"multipart/form-data\" method=\"post\" action=\"index.php?section=directory&amp;cmd=add\" onsubmit=\"{DIRECTORY_FORM_ONSUBMIT}\">\r\n				<table width=\"100%\" cellspacing=\"5\" cellpadding=\"0\" border=\"0\" id=\"directory\">\r\n					<tbody>\r\n						<tr>\r\n							<td width=\"120\" valign=\"top\">{TXT_DIRECTORY_CATEGORY}:<font color=\"red\">*</font></td>\r\n							<td>\r\n								<table border=\"0\">\r\n									<tr> \r\n										<td width=\"170\">\r\n											<select name=\"notSelectedCat[]\" size=\"12\" style=\"width:170px;\" multiple=\"multiple\">\r\n											{DIRECTORY_CATEGORIES_DESELECTED}\r\n											</select>\r\n										</td>\r\n										<td width=\"50\"> \r\n											<div align=\"center\"> \r\n												<input type=\"button\" value=\" &gt;&gt; \" name=\"addCat\" onclick=\"addCategoryLevel(document.addForm.elements[\'notSelectedCat[]\'],document.addForm.elements[\'selectedCat[]\'],addCat,removeCat);\" />\r\n												<br />\r\n												<input type=\"button\" value=\" &lt;&lt; \" name=\"removeCat\" onclick=\"removeCategoryLevel(document.addForm.elements[\'notSelectedCat[]\'],document.addForm.elements[\'selectedCat[]\'],addCat,removeCat);\" />\r\n												<br /><br />\r\n											</div>\r\n										</td>\r\n										<td> \r\n											<select name=\"selectedCat[]\" size=\"12\" style=\"width:170px;\" multiple=\"multiple\">\r\n											</select>\r\n										</td>\r\n									</tr>\r\n								</table>\r\n							</td>\r\n						</tr>\r\n						<!-- BEGIN directoryLevels -->\r\n						<tr>\r\n							<td width=\"120\" valign=\"top\">{TXT_DIRECTORY_LEVEL}:<font color=\"red\">*</font></td>\r\n							<td>\r\n								<table width=\"100%\" border=\"0\">\r\n									<tr> \r\n										<td width=\"170\">\r\n											<select name=\"notSelectedLevel[]\" size=\"12\" style=\"width:170px;\" multiple=\"multiple\">\r\n											{DIRECTORY_LEVELS_DESELECTED}\r\n											</select>\r\n										</td>\r\n										<td width=\"50\"> \r\n											<div align=\"center\"> \r\n												<input type=\"button\" value=\" &gt;&gt; \" name=\"addLevel\" onclick=\"addCategoryLevel(document.addForm.elements[\'notSelectedLevel[]\'],document.addForm.elements[\'selectedLevel[]\'],addLevel,removeLevel);\" />\r\n												<br />\r\n												<input type=\"button\" value=\" &lt;&lt; \" name=\"removeLevel\" onclick=\"removeCategoryLevel(document.addForm.elements[\'notSelectedLevel[]\'],document.addForm.elements[\'selectedLevel[]\'],addLeve,removeLevel);\" />\r\n												<br /><br />\r\n											</div>\r\n										</td>\r\n										<td> \r\n											<select name=\"selectedLevel[]\" size=\"12\" style=\"width:170px;\" multiple=\"multiple\">\r\n											{DIRECTORY_LEVELS_SELECTED}\r\n											</select>\r\n										</td>\r\n									</tr>\r\n								</table>\r\n							</td>\r\n						</tr>\r\n						<!-- END directoryLevels -->\r\n					</tbody>\r\n				</table>\r\n				<table width=\"100%\" cellspacing=\"5\" cellpadding=\"0\" border=\"0\" id=\"directory\">\r\n					<tbody>\r\n						<!-- BEGIN inputfieldsOutput -->\r\n						<tr>\r\n							<td width=\"120\" valign=\"top\">{FIELD_NAME}:{FIELD_REQUIRED}</td>\r\n							<td>{FIELD_VALUE}</td>\r\n						</tr>\r\n						<!-- END inputfieldsOutput -->\r\n						<tr>\r\n							<td width=\"120\" valign=\"top\"><br /></td>\r\n							<td><input type=\"submit\" name=\"addSubmit\" value=\"{TXT_DIRECTORY_ADD}\" /></td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n			</form>\r\n		</div>\r\n	<!-- END directoryInputFields -->\r\n</div>\r\n\r\n{DIRECTORY_GOOGLEMAP_JAVASCRIPT_BLOCK}\r\n', 'Eintrag erstellen', 'Eintrag erstellen', 'Eintrag erstellen', 'Eintrag erstellen', 'index', '', '', 'y'),
('49', '<div id=\"directory\">\r\n	<!-- BEGIN showFeeds --> \r\n		<div class=\"feeds_{DIRECTORY_FEED_ROW}\">\r\n			<div class=\"image\">{DIRECTORY_FEED_LOGO_THUMB}</div>\r\n			<div class=\"infos\">\r\n				<a href=\"{DIRECTORY_FEED_DETAIL_LINK}\"><h3>{DIRECTORY_FEED_TITLE}</h3></a>\r\n				{DIRECTORY_FEED_DESCRIPTION}<br /><br />\r\n				<a href=\"{DIRECTORY_FEED_EDIT_LINK}\">{DIRECTORY_FEED_EDIT}</a>&nbsp;&nbsp;|&nbsp;&nbsp;{DIRECTORY_FEED_AVERAGE_VOTE}&nbsp;<em>{DIRECTORY_FEED_COUNT_VOTES}</em><br />\r\n			</div>\r\n		</div>\r\n	<!-- END showFeeds -->  \r\n	<!-- BEGIN noFeeds --> \r\n		<div class=\"no_feeds\">{DIRECTORY_NO_FEEDS_FOUND}</div>\r\n	<!-- END noFeeds -->\r\n	<div class=\"paging\">{SEARCH_PAGING}</div>\r\n</div>', 'Meine Einträge', 'Meine Einträge', 'Meine Einträge', 'Meine Einträge', 'index', '', '', 'y'),
('50', '{DIRECTORY_JAVASCRIPT}\r\n\r\n<div id=\"directory\">\r\n	<!-- BEGIN directoryMessage -->\r\n		<div class=\"message\">{DIRECTORY_FEED_UPDATED}<br /><br />{TXT_DIRECTORY_BACK}</div>\r\n	<!-- END directoryMessage -->\r\n	<!-- BEGIN directoryInputFields -->\r\n		<div class=\"fields\">\r\n			<form name=\"addForm\" enctype=\"multipart/form-data\" method=\"post\" action=\"index.php?section=directory&amp;cmd=edit\" onSubmit=\"{DIRECTORY_FORM_ONSUBMIT}\">\r\n			<input type=\"hidden\" name=\"edit_id\" size=\"10\" value=\"{DIRECTORY_ID}\" /> \r\n				<table width=\"100%\" cellspacing=\"5\" cellpadding=\"0\" border=\"0\" id=\"directory\">\r\n					<tbody>\r\n						<tr>\r\n							<td width=\"120\" valign=\"top\">{TXT_DIRECTORY_CATEGORY}:<font color=\"red\">*</font></td>\r\n							<td>\r\n								<table width=\"100%\" border=\"0\">\r\n									<tr> \r\n										<td width=\"170\">\r\n											<select name=\"notSelectedCat[]\" size=\"12\" style=\"width:170px;\" multiple=\"multiple\">\r\n											{DIRECTORY_CATEGORY_DESELECTED}\r\n											</select>\r\n										</td>\r\n										<td width=\"50\"> \r\n											<div align=\"center\"> \r\n												<input type=\"button\" value=\" &gt;&gt; \" name=\"addCat\" onclick=\"add(document.addForm.elements[\'notSelectedCat[]\'],document.addForm.elements[\'selectedCat[]\'],addCat,removeCat);\" />\r\n												<br />\r\n												<input type=\"button\" value=\" &lt;&lt; \" name=\"removeCat\" onclick=\"remove(document.addForm.elements[\'notSelectedCat[]\'],document.addForm.elements[\'selectedCat[]\'],addCat,removeCat);\" />\r\n												<br /><br />\r\n											</div>\r\n										</td>\r\n										<td> \r\n											<select name=\"selectedCat[]\" size=\"12\" style=\"width:170px;\" multiple=\"multiple\">\r\n											{DIRECTORY_CATEGORY_SELECTED}\r\n											</select>\r\n										</td>\r\n									</tr>\r\n								</table>\r\n							</td>\r\n						</tr>\r\n						<!-- BEGIN directoryLevels -->\r\n						<tr>\r\n							<td width=\"120\" valign=\"top\">{TXT_DIRECTORY_LEVEL}:<font color=\"red\">*</font></td>\r\n							<td>\r\n								<table width=\"100%\" border=\"0\">\r\n									<tr> \r\n										<td width=\"170\">\r\n											<select name=\"notSelectedLevel[]\" size=\"12\" style=\"width:170px;\" multiple=\"multiple\">\r\n											{DIRECTORY_LEVELS_DESELECTED}\r\n											</select>\r\n										</td>\r\n										<td width=\"50\"> \r\n											<div align=\"center\"> \r\n												<input type=\"button\" value=\" &gt;&gt; \" name=\"addLevel\" onclick=\"add(document.addForm.elements[\'notSelectedLevel[]\'],document.addForm.elements[\'selectedLevel[]\'],addLevel,removeLevel);\" />\r\n												<br />\r\n												<input type=\"button\" value=\" &lt;&lt; \" name=\"removeLevel\" onclick=\"remove(document.addForm.elements[\'notSelectedLevel[]\'],document.addForm.elements[\'selectedLevel[]\'],addLeve,removeLevel);\" />\r\n												<br /><br />\r\n											</div>\r\n										</td>\r\n										<td>\r\n											<select name=\"selectedLevel[]\" size=\"12\" style=\"width:170px;\" multiple=\"multiple\">\r\n											{DIRECTORY_LEVELS_SELECTED}\r\n											</select>\r\n										</td>\r\n									</tr>\r\n								</table>\r\n							</td>\r\n						</tr>\r\n						<!-- END directoryLevels -->\r\n					</tbody>\r\n				</table>\r\n				<table width=\"100%\" cellspacing=\"5\" cellpadding=\"0\" border=\"0\" id=\"directory\">\r\n					<tbody>\r\n						<!-- BEGIN inputfieldsOutput -->\r\n						<tr>\r\n							<td width=\"120\" valign=\"top\">{FIELD_NAME}:{FIELD_REQUIRED}</td>\r\n							<td>{FIELD_VALUE}</td>\r\n						</tr>\r\n						<!-- END inputfieldsOutput -->\r\n						<tr>\r\n							<td width=\"120\" valign=\"top\"><br /></td>\r\n							<td><input type=\"submit\" name=\"edit_submit\" value=\"{TXT_DIRECTORY_UPDATE}\" /></td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n			</form>\r\n		</div>\r\n	<!-- END directoryInputFields -->\r\n</div>\r\n{DIRECTORY_GOOGLEMAP_JAVASCRIPT_BLOCK}\r\n', 'Eintrag editieren', 'Eintrag editieren', 'Eintrag editieren', 'Eintrag editieren', 'index', '', '', 'y'),
('53', '{FORUM_JAVASCRIPT} \r\n{FORUM_JAVASCRIPT_GOTO}\r\n<div id=\"forum\">\r\n	<div class=\"links\">\r\n		{FORUM_COMMUNITY_LINKS}\r\n	</div>\r\n	<div class=\"latest\">\r\n		<h2>{TXT_FORUM_LATEST_ENTRIES}</h2>\r\n		<table cellspacing=\"0\">\r\n			<tr>\r\n				<th width=\"97%\">{TXT_FORUM_THREAD}</th>\r\n				<th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_FORUM_THREAD_STRATER}</th>		\r\n				<th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_FORUM_POST_COUNT}</th>		\r\n				<th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_FORUM_THREAD_CREATE_DATE}</th>\r\n			</tr>\r\n			<!-- BEGIN latestPosts -->\r\n			<tr class=\"row{FORUM_ROWCLASS}\">\r\n				<td>{FORUM_THREAD}</td>\r\n				<td nowrap=\"nowrap\" align=\"right\" class=\"smallfont\">{FORUM_THREAD_STARTER}</td>\r\n				<td nowrap=\"nowrap\" align=\"right\">{FORUM_POST_COUNT}</td>\r\n				<td nowrap=\"nowrap\" align=\"right\">{FORUM_THREAD_CREATE_DATE}</td>\r\n			</tr>	\r\n			<!-- END latestPosts -->	\r\n		</table>\r\n	</div>\r\n	<!-- BEGIN forumMainCategory -->\r\n	<div class=\"category\">\r\n		<h2>{FORUM_MAINCATEGORY_NAME_TITLE}</h2>{FORUM_MAINCATEGORY_NAME_DESCRIPTION}\r\n		<div style=\"display: block;\" id=\"maincat_{FORUM_MAINCATEGORY_ID}\">\r\n			<table cellspacing=\"0\">\r\n				<tr>\r\n					<th width=\"97%\">{TXT_FORUM}</th>\r\n					<th width=\"1%\" nowrap=\"nowrap\">{TXT_LASTPOST}</th>		\r\n					<th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_THREADS}</th>		\r\n				</tr>\r\n				<!-- BEGIN forumSubCategory -->\r\n				<tr class=\"row{FORUM_SUBCATEGORY_ROWCLASS}\">\r\n					<td valign=\"top\">\r\n						<div style=\"padding-left: {FORUM_SUBCATEGORY_SPACER}px;\" title=\"{FORUM_SUBCATEGORY_DESC}\">\r\n							<strong><a title=\"{FORUM_SUBCATEGORY_NAME}\" href=\"index.php?section=forum&amp;cmd=board&amp;id={FORUM_SUBCATEGORY_ID}\">{FORUM_SUBCATEGORY_NAME}</a></strong><br />\r\n							{FORUM_SUBCATEGORY_DESC}\r\n						</div>\r\n					</td>\r\n					<td nowrap=\"nowrap\" valign=\"top\" class=\"smallfont\">{FORUM_SUBCATEGORY_LASTPOST_TITLE}<br />{FORUM_SUBCATEGORY_LASTPOST_DATE}</td>\r\n					<td nowrap=\"nowrap\" align=\"right\" valign=\"top\">{FORUM_SUBCATEGORY_THREADS}</td>\r\n				</tr>	\r\n				<!-- END forumSubCategory -->\r\n			</table>\r\n		</div>\r\n	</div>\r\n	<!-- END forumMainCategory --> \r\n</div>', 'Forum', 'Forum', 'Forum', 'Forum', 'index', '', '', 'y'),
('58', '{EGOV_JS} Herzlich Willkommen bei unserem Online-Schalter.<br />\r\nUnsere online Dienstleistungen stehen Ihnen 24 Std. x 7 Tage zur Verf&uuml;gung.<br />\r\n<br />\r\n<ul> 	<!-- BEGIN egovProducts -->\r\n    <li style=\"list-style-type: circle;\"><a href=\"{EGOV_PRODUCT_LINK}\">{EGOV_PRODUCT_TITLE}</a></li>\r\n    <!-- END egovProducts --> </ul>', 'Onlinedesk', 'Onlinedesk', 'Onlinedesk', 'Onlinedesk', 'index', '', '', 'n'),
('59', '<h1>{EGOV_PRODUCT_TITLE}</h1>\r\n{EGOV_PRODUCT_DESC}<br />\r\n<br />\r\n<strong>Kosten: CHF {EGOV_PRODUCT_PRICE}</strong>\r\n<div id=\"contactFormError\" style=\"color: red; display: none;\"><br />\r\n<br />\r\nBitte &uuml;berpr&uuml;fen Sie ihre Eingabe!</div>\r\n{EGOV_FORM}', 'Onlinedesk / Bestellung', 'Onlinedesk / Bestellung', 'Onlinedesk / Bestellung', 'Onlinedesk / Bestellung', 'index', '', '', 'n'),
('60', '<div id=\"shop\">\r\n	<div class=\"message\">{TXT_SHOP_LSV_EE_INFO}<br /><br />{TXT_SHOP_LSV_EE_TEXT}</div>\r\n	<div class=\"lsv_form\">\r\n		<form action=\"#\" name=\"LSVForm\" method=\"get\">\r\n			<h2>{TXT_SHOP_LSV_EE_RECIPIENT}</h2>\r\n			{SHOP_COMPANY}<br />\r\n			{SHOP_ADDRESS}<br />\r\n			{TXT_SHOP_LSV_EE_FAX}&nbsp;{SHOP_FAX}\r\n			<h2>{TXT_SHOP_LSV_EE_REASON}</h2>\r\n			<p><label>{TXT_SHOP_LSV_EE_DESCRIPTION}</label><textarea rows=\"1\" cols=\"1\">{SHOP_LSV_EE_PRODUCTS}&nbsp;</textarea></p>\r\n			<h2>{TXT_SHOP_LSV_EE_CUSTOMER}</h2>\r\n			<p><label>{TXT_SHOP_LSV_EE_FIRST_NAME}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_FIRST_NAME}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_LAST_NAME}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_LAST_NAME}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_STREETNO}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_ADDRESS}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_ZIP}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_ZIP}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_CITY}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_CITY}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_PHONE}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_PHONE}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_FAXNO}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_FAX}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_EMAIL}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_EMAIL}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_BANK}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_BANK}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_BANKCODE}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_BANKCODE}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_ACCOUNT}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_ACCOUNT}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_DATE}</label>{SHOP_DATE}</p>\r\n			<br />\r\n			<p><label>{TXT_SHOP_LSV_EE_SIGNATURE}</label><br /></p>\r\n		</form>\r\n	</div>\r\n</div>', 'Einzugsermächtigung', 'Einzugsermächtigung', 'Einzugsermächtigung', 'Einzugsermächtigung', 'index', '', '', 'y'),
('61', '<script type=\"text/javascript\">\r\n<!--\r\nfunction toggle(target){\r\n    obj = document.getElementById(target);\r\n    obj.style.display = (obj.style.display==\'none\') ? \'inline\' : \'none\';  \r\n    if (obj.style.display==\'none\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'norm\';\r\n    }else if(obj.style.display==\'inline\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'exp\';\r\n    }\r\n}\r\n-->\r\n</script>\r\n<div id=\"market\">\r\n	<div class=\"search\">\r\n		<form action=\"index.php?\" method=\"get\" name=\"marketSearch\" id=\"marketSearch\">\r\n			<input name=\"term\" value=\"{TXT_MARKET_SEARCHTERM}\" size=\"25\" maxlength=\"100\" /><input type=\"hidden\" id=\"searchCheck\" name=\"check\" value=\"norm\" size=\"10\" /><input type=\"hidden\" name=\"section\" value=\"market\" size=\"10\" /><input type=\"hidden\" name=\"cmd\" value=\"search\" size=\"10\" />&nbsp;<input type=\"submit\" value=\"{TXT_MARKET_SEARCH}\" name=\"search\" />                  &nbsp;&raquo;&nbsp;<a href=\"javascript:toggle(\'hiddenSearch\')\" >{TXT_MARKET_SEARCH_EXP}</a><br />\r\n			<div style=\"display: none;\" id=\"hiddenSearch\"><br />\r\n			<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n				{MARKET_EXP_SEARCH_FIELD}\r\n			</table>\r\n			</div>\r\n		</form>\r\n	</div>\r\n	<div class=\"navtree\"><a href=\"index.php?section=market\">{TXT_MARKET}</a>{MARKET_CATEGORY_NAVI}</div>\r\n	<!-- BEGIN showCategoriesTitle -->\r\n		<div class=\"title\"><h2>{MARKET_CATEGORY_TITLE}</h2>{MARKET_CATEGORY_DESCRIPTION}</div>\r\n		<div class=\"type_selection\">{MARKET_TYPE_SECECTION}</div>\r\n	<!-- END showCategoriesTitle --> \r\n	<!-- BEGIN showCategories -->\r\n		<div class=\"categories\">\r\n			<div style=\"float: left; width: {MARKET_CATEGORY_ROW_WIDTH};\">{MARKET_CATEGORY_ROW1}</div>\r\n			<div style=\"float: left; width: {MARKET_CATEGORY_ROW_WIDTH};\">{MARKET_CATEGORY_ROW2}</div>\r\n		</div>\r\n	<!-- END showCategories -->   \r\n	<!-- BEGIN showEntriesHeader -->\r\n		<div class=\"entries\">\r\n			<table cellspacing=\"0\">\r\n				<tbody>\r\n					<tr>\r\n						<th valign=\"top\" nowrap=\"nowrap\" width=\"1%\"><a href=\"{MARKET_ENDDATE_SORT}\">{TXT_MARKET_ENDDATE}</a></th>\r\n						<th valign=\"top\" nowrap=\"nowrap\" width=\"1%\">&nbsp;</th>\r\n						<th valign=\"top\" nowrap=\"nowrap\" width=\"97%\"><a href=\"{MARKET_TITLE_SORT}\">{TXT_MARKET_TITLE}</a></th>\r\n						<th valign=\"top\" nowrap=\"nowrap\" width=\"1%\"><a href=\"{MARKET_PRICE_SORT}\">{TXT_MARKET_PRICE}</a></th>\r\n					</tr>\r\n					<!-- BEGIN showEntries -->\r\n					<tr class=\"{MARKET_ROW}\">\r\n						<td valign=\"top\" nowrap>{MARKET_ENDDATE}</td>\r\n						<td valign=\"top\"><a href=\"{MARKET_DETAIL}\">{MARKET_PICTURE}</a></td>\r\n						<td valign=\"top\"><strong><a href=\"{MARKET_DETAIL}\">{MARKET_TITLE}</a></strong><br />{MARKET_DESCRIPTION}</td>\r\n						<td valign=\"top\" nowrap>{MARKET_PRICE}</td>\r\n					</tr>\r\n					<!-- END showEntries -->\r\n				</tbody>\r\n			</table>\r\n		</div>\r\n	<!-- END showEntriesHeader --> \r\n	<!-- BEGIN noEntries -->\r\n		<div class=\"no_entries\">{MARKET_NO_ENTRIES_FOUND}</div>\r\n	<!-- END noEntries --> \r\n	<!-- BEGIN showInsertEntries -->\r\n		<div class=\"insert_entries\">{DIRECTORY_INSERT_ENTRIES}</div>\r\n	<!-- END showInsertEntries -->\r\n	<div id=\"paging\">{SEARCH_PAGING}</div>\r\n</div>', 'Inserate Markt', 'Inserate Markt', 'Inserate Markt', 'Inserate Markt', 'index', '', '', 'y'),
('62', '<script type=\"text/javascript\">\r\n<!--\r\nfunction toggle(target){\r\n    obj = document.getElementById(target);\r\n    obj.style.display = (obj.style.display==\'none\') ? \'inline\' : \'none\';  \r\n    if (obj.style.display==\'none\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'norm\';\r\n    }else if(obj.style.display==\'inline\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'exp\';\r\n    }\r\n}\r\n-->\r\n</script>\r\n<div id=\"market\">\r\n	<div class=\"search\">\r\n		<form action=\"index.php?\" method=\"get\" name=\"marketSearch\" id=\"marketSearch\">\r\n			<input name=\"term\" value=\"{TXT_MARKET_SEARCHTERM}\" size=\"25\" maxlength=\"100\" /><input type=\"hidden\" id=\"searchCheck\" name=\"check\" value=\"norm\" size=\"10\" /><input type=\"hidden\" name=\"section\" value=\"market\" size=\"10\" /><input type=\"hidden\" name=\"cmd\" value=\"search\" size=\"10\" />&nbsp;<input type=\"submit\" value=\"{TXT_MARKET_SEARCH}\" name=\"search\" />                  &nbsp;&raquo;&nbsp;<a href=\"javascript:toggle(\'hiddenSearch\')\" >{TXT_MARKET_SEARCH_EXP}</a><br />\r\n			<div style=\"display: none;\" id=\"hiddenSearch\"><br />\r\n			<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n				{MARKET_EXP_SEARCH_FIELD}\r\n			</table>\r\n			</div>\r\n		</form>\r\n	</div>\r\n	<div class=\"navtree\"><a href=\"index.php?section=market\">{TXT_MARKET}</a>{MARKET_CATEGORY_NAVI}</div>\r\n	<!-- BEGIN showCategoriesTitle -->\r\n		<div class=\"title\"><h2>{MARKET_CATEGORY_TITLE}</h2>{MARKET_CATEGORY_DESCRIPTION}</div>\r\n		<div class=\"type_selection\">{MARKET_TYPE_SECECTION}</div>\r\n	<!-- END showCategoriesTitle --> \r\n	<!-- BEGIN showCategories -->\r\n		<div class=\"categories\">\r\n			<div style=\"float: left; width: {MARKET_CATEGORY_ROW_WIDTH};\">{MARKET_CATEGORY_ROW1}</div>\r\n			<div style=\"float: left; width: {MARKET_CATEGORY_ROW_WIDTH};\">{MARKET_CATEGORY_ROW2}</div>\r\n		</div>\r\n	<!-- END showCategories -->   \r\n	<!-- BEGIN showEntriesHeader -->\r\n		<div class=\"entries\">\r\n			<table cellspacing=\"0\">\r\n				<tbody>\r\n					<tr>\r\n						<th valign=\"top\" nowrap=\"nowrap\" width=\"1%\"><a href=\"{MARKET_ENDDATE_SORT}\">{TXT_MARKET_ENDDATE}</a></th>\r\n						<th valign=\"top\" nowrap=\"nowrap\" width=\"1%\">&nbsp;</th>\r\n						<th valign=\"top\" nowrap=\"nowrap\" width=\"97%\"><a href=\"{MARKET_TITLE_SORT}\">{TXT_MARKET_TITLE}</a></th>\r\n						<th valign=\"top\" nowrap=\"nowrap\" width=\"1%\"><a href=\"{MARKET_PRICE_SORT}\">{TXT_MARKET_PRICE}</a></th>\r\n					</tr>\r\n					<!-- BEGIN showEntries -->\r\n					<tr class=\"{MARKET_ROW}\">\r\n						<td valign=\"top\" nowrap>{MARKET_ENDDATE}</td>\r\n						<td valign=\"top\"><a href=\"{MARKET_DETAIL}\">{MARKET_PICTURE}</a></td>\r\n						<td valign=\"top\"><strong><a href=\"{MARKET_DETAIL}\">{MARKET_TITLE}</a></strong><br />{MARKET_DESCRIPTION}</td>\r\n						<td valign=\"top\" nowrap>{MARKET_PRICE}</td>\r\n					</tr>\r\n					<!-- END showEntries -->\r\n				</tbody>\r\n			</table>\r\n		</div>\r\n	<!-- END showEntriesHeader --> \r\n	<!-- BEGIN noEntries -->\r\n		<div class=\"no_entries\">{MARKET_NO_ENTRIES_FOUND}</div>\r\n	<!-- END noEntries --> \r\n	<div id=\"paging\">{SEARCH_PAGING}</div>\r\n</div>', 'Inserat Suchen', 'Inserat Suchen', 'Inserat Suchen', 'Inserat Suchen', 'index', '', '', 'y'),
('63', '<script type=\"text/javascript\">\r\n	<!--\r\n	function toggle(target){\r\n		obj = document.getElementById(target);\r\n		obj.style.display = (obj.style.display==\'none\') ? \'inline\' : \'none\';  \r\n		if (obj.style.display==\'none\' && target == \'hiddenSearch\'){\r\n			 document.getElementById(\'searchCheck\').value = \'norm\';\r\n		}else if(obj.style.display==\'inline\' && target == \'hiddenSearch\'){\r\n			 document.getElementById(\'searchCheck\').value = \'exp\';\r\n		}\r\n	}\r\n	\r\n	function CheckForm() {\r\n	  var errorMsg = \"\";\r\n	  with( document.formEntry ) {\r\n		if (type.value == \"\") {\r\n			errorMsg = errorMsg + \"- {TXT_MARKET_TYPE}\\n\";\r\n		}\r\n		if (title.value == \"\") {\r\n			errorMsg = errorMsg + \"- {TXT_MARKET_TITLE_ENTRY}\\n\";\r\n		} \r\n		if (description.value == \"\") {\r\n			errorMsg = errorMsg + \"- {TXT_MARKET_DESCRIPTION}\\n\";\r\n		}   \r\n		if (cat.value == \"\") {\r\n			errorMsg = errorMsg + \"- {TXT_MARKET_CATEGORIE}\\n\";\r\n		} \r\n		\r\n		{END_DATE_JS}\r\n	\r\n		if (userdetails.value == \"\") {\r\n			errorMsg = errorMsg + \"- {TXT_MARKET_USER_DETAIL}\\n\";\r\n		}\r\n		if (name.value == \"\") {\r\n			errorMsg = errorMsg + \"- {TXT_MARKET_NAME}\\n\";\r\n		}\r\n		if (email.value == \"\") {\r\n			errorMsg = errorMsg + \"- {TXT_MARKET_EMAIL}\\n\";\r\n		}else{\r\n			if (!matchType(\'^[_a-zA-Z0-9-]+(.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(.[a-zA-Z0-9-]+)*.(([0-9]{1,3})|([a-zA-Z]{2,3})|(aero|coop|info|museum|name))$\', email.value)){\r\n				errorMsg = errorMsg + \"- {TXT_MARKET_EMAIL}\\n\";\r\n			}\r\n		}\r\n		\r\n		if (errorMsg != \"\") \r\n		{\r\n			alert (\"{TXT_MARKET_FIELDS_REQUIRED}n{TXT_MARKET_THOSE_FIELDS_ARE_EMPTY}\\n\" + errorMsg);       \r\n			return false;\r\n		}else{\r\n			return true;\r\n		}\r\n	  }\r\n	}\r\n	\r\n	function matchType(pattern, value) {\r\n		var reg = new RegExp(pattern);\r\n		if (value.match(reg)) {\r\n			return true;\r\n		}\r\n		return false;\r\n	} \r\n	\r\n	-->\r\n	</script>\r\n<div id=\"market\">\r\n	<form name=\"formEntry\" enctype=\"multipart/form-data\" method=\"post\" action=\"index.php?section=market&cmd=confirm\" onsubmit=\"return CheckForm()\">\r\n	<input type=\"hidden\" name=\"id\" value=\"{MARKET_ENTRY_ID}\" >\r\n		<table width=\"100%\" cellspacing=\"0\" cellpadding=\"2\" border=\"0\" align=\"top\" class=\"adminlist\">\r\n			<tr>\r\n				<td nowrap=\"nowrap\">{TXT_MARKET_TYPE}<font color=\"red\"> *</font></td>\r\n				<td>\r\n					<input type=\"radio\" name=\"type\" value=\"offer\" {MARKET_ENTRY_TYPE_OFFER} />&nbsp;{TXT_MARKET_OFFER}\r\n					<input type=\"radio\" name=\"type\" value=\"search\" {MARKET_ENTRY_TYPE_SEARCH} />&nbsp;{TXT_MARKET_SEARCH}\r\n				</td>\r\n			</tr>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_TITLE_ENTRY}<font color=\"red\"> *</font></td>		\r\n				<td><input type=\"text\" name=\"title\" style=\"width: 300px;\" maxlength=\"100\" value=\"\" ></td>\r\n			</td>		\r\n			</tr>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_DESCRIPTION}<font color=\"red\"> *</font></td>\r\n				<td><textarea name=\"description\" rows=\"5\"  style=\"width: 300px; overflow: auto;\"></textarea></td>\r\n			</tr>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_PREMIUM}</td>		\r\n				<td><input type=\"checkbox\" name=\"premium\" value=\"1\" />&nbsp;<em>{TXT_MARKET_PREMIUM_CONDITIONS_NO}</em></td>\r\n			</td>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_PICTURE}</td>		\r\n				<td>{ENTRY_PICTURE}<input type=\"file\" name=\"pic\" size=\"38\" style=\"width: 304px;\" maxlength=\"100\"></td>\r\n			</td>	\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_CATEGORIE}<font color=\"red\"> *</font></td>		\r\n				<td><select name=\"cat\"  style=\"width: 305px;\">{MARKET_CATEGORIES}</select></td>\r\n			</td>	\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_PRICE}</td>		\r\n				<td><input type=\"text\" name=\"price\" style=\"width: 98px;\" maxlength=\"100\" value=\"\">&nbsp;&nbsp;<input type=\"checkbox\" name=\"forfree\" value=\"1\" />&nbsp;{TXT_MARKET_FOR_FREE}&nbsp;<input type=\"checkbox\" name=\"agreement\" value=\"1\"/>&nbsp;{TXT_MARKET_AGREEMENT}</td>\r\n			</td>\r\n					<!-- BEGIN end_date_dropdown -->\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_END_DATE}<font color=\"red\"> *</font></td>		\r\n				<td><select name=\"days\" style=\"width: 100px;\">{MARKET_DAYS_ONLINE}</select>&nbsp;&nbsp;{TXT_MARKET_DAYS}</td>\r\n			</td>\r\n			<!-- END end_date_dropdown -->\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_NAME}<font color=\"red\"> *</font></td>		\r\n				<td><input type=\"text\" name=\"name\" style=\"width: 300px;\" maxlength=\"100\" value=\"\"></td>\r\n			</td>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_EMAIL}<font color=\"red\"> *</font></td>		\r\n				<td><input type=\"text\" name=\"email\" style=\"width: 300px;\" maxlength=\"100\" value=\"\"></td>\r\n			</td>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_USER_DETAIL}<font color=\"red\"> *</font></td>		\r\n				<td>\r\n					<input type=\"radio\" name=\"userdetails\" value=\"1\" {MARKET_ENTRY_USERDETAILS_ON} />&nbsp;{TXT_MARKET_DETAIL_SHOW}\r\n					<input type=\"radio\" name=\"userdetails\" value=\"0\" />&nbsp;{TXT_MARKET_DETAIL_HIDE}\r\n				</td>\r\n			</td>\r\n			<!-- BEGIN spez_fields -->\r\n			<tr valign=\"top\" >\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_SPEZ_FIELD_NAME}</td>\r\n				<td>{MARKET_SPEZ_FIELD_INPUT}</td>\r\n			</td>\r\n			<!-- END spez_fields -->\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\"><br /></td>		\r\n				<td>\r\n					<input type=\"submit\" name=\"submitEntry\" value=\"{TXT_MARKET_SAVE}\" />\r\n				</td>\r\n			</td>\r\n		</table>\r\n	</form>\r\n</div>', 'Inserat erstellen', 'Inserat erstellen', 'Inserat erstellen', 'Inserat erstellen', 'index', '', '', 'y'),
('64', '<script type=\"text/javascript\">\r\n<!--\r\nfunction toggle(target){\r\n    obj = document.getElementById(target);\r\n    obj.style.display = (obj.style.display==\'none\') ? \'inline\' : \'none\';  \r\n    if (obj.style.display==\'none\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'norm\';\r\n    }else if(obj.style.display==\'inline\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'exp\';\r\n    }\r\n}\r\n\r\nfunction CheckForm() {\r\n  var errorMsg = \"\";\r\n  with( document.sendMessage) {\r\n    if (title.value == \"\") {\r\n    	errorMsg = errorMsg + \"- {TXT_MARKET_TITLE} <n\";\r\n    }\r\n    if (message.value == \"\") {\r\n        errorMsg = errorMsg + \"- {TXT_MARKET_MSG}\\n\";\r\n    } \r\n    if (email.value == \"\") {\r\n        errorMsg = errorMsg + \"- {TXT_MARKET_EMAIL}\\n\";\r\n    }else{\r\n    	if (!matchType(\'^[_a-zA-Z0-9-]+(.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(.[a-zA-Z0-9-]+)*.(([0-9]{1,3})|([a-zA-Z]{2,3})|(aero|coop|info|museum|name))$\', email.value)){\r\n    		errorMsg = errorMsg + \"- n\";\r\n    	}\r\n    }\r\n\r\n    if (errorMsg != \"\") \r\n    {\r\n        alert (\"{TXT_FIELDS_REQUIRED}n{TXT_THOSE_FIELDS_ARE_EMPTY}\\n\" + errorMsg);       \r\n        return false;\r\n    }else{\r\n    	return true;\r\n    }\r\n  }\r\n}\r\n\r\n\r\nfunction matchType(pattern, value) {\r\n	var reg = new RegExp(pattern);\r\n	if (value.match(reg)) {\r\n		return true;\r\n	}\r\n	return false;\r\n} \r\n-->\r\n</script>\r\n<div id=\"market\">\r\n	<div class=\"search\">\r\n		<form action=\"index.php?\" method=\"get\" name=\"marketSearch\" id=\"marketSearch\">\r\n			<input name=\"term\" value=\"{TXT_MARKET_SEARCHTERM}\" size=\"25\" maxlength=\"100\" /><input type=\"hidden\" id=\"searchCheck\" name=\"check\" value=\"norm\" size=\"10\" /><input type=\"hidden\" name=\"section\" value=\"market\" size=\"10\" /><input type=\"hidden\" name=\"cmd\" value=\"search\" size=\"10\" />&nbsp;<input type=\"submit\" value=\"{TXT_MARKET_SEARCH}\" name=\"search\" />                  &nbsp;&raquo;&nbsp;<a href=\"javascript:toggle(\'hiddenSearch\')\">{TXT_MARKET_SEARCH_EXP}</a><br />\r\n			<div style=\"display: none;\" id=\"hiddenSearch\"><br />\r\n			<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n				{MARKET_EXP_SEARCH_FIELD}\r\n			</table>\r\n			</div>\r\n		</form>\r\n	</div>\r\n	<div class=\"navtree\"><a href=\"index.php?section=market\">{TXT_MARKET}</a>{MARKET_CATEGORY_NAVI}</div>\r\n	<div class=\"title\"><h2>{MARKET_TITLE}</h2></div>\r\n	<div class=\"data\">\r\n		<div class=\"image\">{MARKET_PICTURE}</div>\r\n		<div class=\"description\"><b>{MARKET_TYPE}</b>&nbsp;<i>{MARKET_ENDDATE}&nbsp;</i><br /><br />{MARKET_DESCRIPTION}</div>\r\n	</div> \r\n	<div class=\"data\">\r\n		<table cellspacing=\"0\">\r\n			<tr>\r\n				<th colspan=\"2\">zus&auml;tzliche Informationen</th>\r\n			</tr>\r\n			<tr class=\"marketRow2\">\r\n				<td width=\"120\" nowrap=\"nowrap\">{TXT_MARKET_PRICE}</td>\r\n				<td>{MARKET_PRICE}</td>\r\n			</tr>\r\n			<tr class=\"marketRow3\">\r\n				<td nowrap=\"nowrap\">{TXT_MARKET_USER_DETAILS}</td>\r\n				<td>{MARKET_USER_DETAILS}</td>\r\n			</tr>\r\n		</table>\r\n	</div>\r\n	<div class=\"form\">\r\n		<fieldset> \r\n			<legend>{TXT_MARKET_MESSAGE}</legend>\r\n			<form name=\"sendMessage\" action=\"index.php?section=market&amp;cmd=send&amp;id={MARKET_ID}\" method=\"post\" onsubmit=\"return CheckForm()\">\r\n				<p><label for=\"title\">{TXT_MARKET_TITLE}</label><input name=\"title\" style=\"width: 300px;\" value=\"{TXT_MARKET_MSG_TITLE}{MARKET_TITLE}\" /></p>\r\n				<p><label for=\"name\">{TXT_MARKET_NAME}</label><input name=\"name\" style=\"width: 300px;\" value=\"\" /></p>\r\n				<p><label for=\"email\">{TXT_MARKET_EMAIL}</label><input name=\"email\" style=\"width: 300px;\" value=\"\" /></p>\r\n				<p><label for=\"price\">{TXT_MARKET_PRICE_MSG}</label><input name=\"price\" style=\"width: 300px;\" value=\"\" /></p>\r\n				<p><label for=\"newprice\">{TXT_MARKET_NEW_PRICE}</label><input name=\"newprice\" style=\"width: 300px;\" value=\"\" /></p>\r\n				<p><label for=\"message\">{TXT_MARKET_MSG}</label><textarea name=\"message\" style=\"width:300px; overflow: auto;\" rows=\'7\'></textarea></p>\r\n				<p><input type=\"submit\" name=\"sendMSG\" value=\"{TXT_MARKET_SEND}\" /></p>\r\n			</form>\r\n		</fieldset>\r\n	</div>\r\n	<div class=\"functions\">{MARKET_EDIT}&nbsp;|&nbsp;{MARKET_DEL}</div>\r\n</div>\r\n\r\n', 'Inserat anzeigen', 'Inserat anzeigen', 'Inserat anzeigen', 'Inserat anzeigen', 'index', '', '', 'y'),
('65', '<script type=\"text/javascript\">\r\n<!--\r\nfunction toggle(target){\r\n    obj = document.getElementById(target);\r\n    obj.style.display = (obj.style.display==\'none\') ? \'inline\' : \'none\';  \r\n    if (obj.style.display==\'none\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'norm\';\r\n    }else if(obj.style.display==\'inline\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'exp\';\r\n    }\r\n}\r\n-->\r\n</script>\r\n<div id=\"market\">\r\n	<div class=\"search\">\r\n		<form action=\"index.php?\" method=\"get\" name=\"marketSearch\" id=\"marketSearch\">\r\n			<input name=\"term\" value=\"{TXT_MARKET_SEARCHTERM}\" size=\"25\" maxlength=\"100\" /><input type=\"hidden\" id=\"searchCheck\" name=\"check\" value=\"norm\" size=\"10\" /><input type=\"hidden\" name=\"section\" value=\"market\" size=\"10\" /><input type=\"hidden\" name=\"cmd\" value=\"search\" size=\"10\" />&nbsp;<input type=\"submit\" value=\"{TXT_MARKET_SEARCH}\" name=\"search\" />                  &nbsp;&raquo;&nbsp;<a href=\"javascript:toggle(\'hiddenSearch\')\">{TXT_MARKET_SEARCH_EXP}</a><br />\r\n			<div style=\"display: none;\" id=\"hiddenSearch\"><br />\r\n			<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n				{MARKET_EXP_SEARCH_FIELD}\r\n			</table>\r\n			</div>\r\n		</form>\r\n	</div>\r\n	<div class=\"navtree\"><a href=\"index.php?section=market\">{TXT_MARKET}</a> &raquo; <a href=\"#\">{MARKET_TITLE}</a></div>\r\n	<div class=\"title\"><h2>{MARKET_TITLE}</h2></div>\r\n	<div class=\"message\">{MARKET_MSG_SEND}</div>\r\n	<div class=\"message\"><a href=\"javascript:history.back()\">{TXT_MARKET_BACK}</a></div>\r\n</div>', 'Mitteilung verschickt', 'Mitteilung verschickt', 'Mitteilung verschickt', 'Mitteilung verschickt', 'index', '', '', 'y'),
('66', '<div id=\"market\">\r\n	<form name=\"formEntry\" enctype=\"multipart/form-data\" method=\"post\" action=\"index.php?section=market&amp;cmd=del\">\r\n		<input type=\"hidden\" name=\"id\" value=\"{MARKET_ENTRY_ID}\" />\r\n		<div class=\"message\">{TXT_MARKET_CONFIRM_DEL}</div>\r\n		<div class=\"form\"><input type=\"submit\" name=\"submitEntry\" value=\"{TXT_MARKET_DEL}\" />&nbsp;<input type=\"button\" name=\"abort\" onclick=\"history.back()\" value=\"{TXT_MARKET_ABORT}\" /></div>\r\n	</form>\r\n</div>', 'Inserat löschen', 'Inserat löschen', 'Inserat löschen', 'Inserat löschen', 'index', '', '', 'y'),
('67', '<script type=\"text/javascript\">\r\n<!--\r\nfunction toggle(target){\r\n    obj = document.getElementById(target);\r\n    obj.style.display = (obj.style.display==\'none\') ? \'inline\' : \'none\';  \r\n    if (obj.style.display==\'none\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'norm\';\r\n    }else if(obj.style.display==\'inline\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'exp\';\r\n    }\r\n}\r\n\r\nfunction CheckForm() {\r\n  var errorMsg = \"\";\r\n  with( document.formEntry ) {\r\n  	if (type.value == \"\") {\r\n    	errorMsg = errorMsg + \"- {TXT_MARKET_TYPE}\\n\";\r\n    }\r\n    if (title.value == \"\") {\r\n        errorMsg = errorMsg + \"- {TXT_MARKET_TITLE_ENTRY}\\n\";\r\n    } \r\n    if (description.value == \"\") {\r\n        errorMsg = errorMsg + \"- {TXT_MARKET_DESCRIPTION}\\n\";\r\n    }   \r\n    if (cat.value == \"\") {\r\n        errorMsg = errorMsg + \"- {TXT_MARKET_CATEGORIE}\\n\";\r\n    } \r\n    if (userdetails.value == \"\") {\r\n        errorMsg = errorMsg + \"- {TXT_MARKET_USER_DETAIL}\\n\";\r\n    }\r\n    if (name.value == \"\") {\r\n        errorMsg = errorMsg + \"- {TXT_MARKET_NAME}\\n\";\r\n    }\r\n    if (email.value == \"\") {\r\n        errorMsg = errorMsg + \"- {TXT_MARKET_EMAIL}\\n\";\r\n    }else{\r\n    	if (!matchType(\'^[_a-zA-Z0-9-]+(.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(.[a-zA-Z0-9-]+)*.(([0-9]{1,3})|([a-zA-Z]{2,3})|(aero|coop|info|museum|name))$\', email.value)){\r\n    		errorMsg = errorMsg + \"- {TXT_MARKET_EMAIL}\\n\";\r\n    	}\r\n    }\r\n    \r\n    if (errorMsg != \"\") \r\n    {\r\n        alert (\"{TXT_MARKET_FIELDS_REQUIRED}n{TXT_MARKET_THOSE_FIELDS_ARE_EMPTY}\\n\" + errorMsg);       \r\n        return false;\r\n    }else{\r\n    	return true;\r\n    }\r\n  }\r\n}\r\n\r\nfunction matchType(pattern, value) {\r\n	var reg = new RegExp(pattern);\r\n	if (value.match(reg)) {\r\n		return true;\r\n	}\r\n	return false;\r\n} \r\n\r\n-->\r\n</script>\r\n<div id=\"market\">\r\n	<form name=\"formEntry\" enctype=\"multipart/form-data\" method=\"post\" action=\"index.php?section=market&cmd=edit\" onsubmit=\"return CheckForm()\">\r\n	<input type=\"hidden\" name=\"id\" value=\"{MARKET_ENTRY_ID}\" >\r\n	<input type=\"hidden\" name=\"picOld\" value=\"{MARKET_ENTRY_PICTURE_OLD}\" >\r\n		<table width=\"100%\" cellspacing=\"0\" cellpadding=\"2\" border=\"0\" align=\"top\" class=\"adminlist\">\r\n			<tr>\r\n				<td nowrap=\"nowrap\">{TXT_MARKET_TYPE}<font color=\"red\"> *</font></td>\r\n				<td>\r\n					<input type=\"radio\" name=\"type\" value=\"offer\" {MARKET_ENTRY_TYPE_OFFER} />&nbsp;{TXT_MARKET_OFFER}\r\n					<input type=\"radio\" name=\"type\" value=\"search\" {MARKET_ENTRY_TYPE_SEARCH} />&nbsp;{TXT_MARKET_SEARCH}\r\n				</td>\r\n			</tr>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_TITLE_ENTRY}<font color=\"red\"> *</font></td>		\r\n				<td><input type=\"text\" name=\"title\" style=\"width: 300px;\" maxlength=\"100\" value=\"{MARKET_ENTRY_TITLE}\" ></td>\r\n			</td>		\r\n			</tr>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_DESCRIPTION}<font color=\"red\"> *</font></td>\r\n				<td><textarea name=\"description\" rows=\"5\"  style=\"width: 300px; overflow: auto;\">{MARKET_ENTRY_DESCRIPTION}</textarea></td>\r\n			</tr>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_PICTURE}</td>		\r\n				<td>{MARKET_ENTRY_PICTURE}<input type=\"file\" name=\"pic\" size=\"38\" style=\"width: 304px;\" maxlength=\"100\"></td>\r\n			</td>	\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_CATEGORIE}<font color=\"red\"> *</font></td>		\r\n				<td><select name=\"cat\"  style=\"width: 305px;\">{MARKET_CATEGORIES}</select></td>\r\n			</td>	\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_PRICE}</td>		\r\n				<td><input type=\"text\" name=\"price\" style=\"width: 98px;\" maxlength=\"100\" value=\"{MARKET_ENTRY_PRICE}\">&nbsp;&nbsp;<input type=\"checkbox\" name=\"forfree\" value=\"1\"  {MARKET_ENTRY_FORFREE} />&nbsp;{TXT_MARKET_FOR_FREE}&nbsp;<input type=\"checkbox\" name=\"agreement\" value=\"1\" {MARKET_ENTRY_AGREEMENT} />&nbsp;{TXT_MARKET_AGREEMENT}</td>\r\n			</td>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_NAME}<font color=\"red\"> *</font></td>		\r\n				<td><input type=\"text\" name=\"name\" style=\"width: 300px;\" maxlength=\"100\" value=\"{MARKET_ENTRY_NAME}\"></td>\r\n			</td>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_EMAIL}<font color=\"red\"> *</font></td>		\r\n				<td><input type=\"text\" name=\"email\" style=\"width: 300px;\" maxlength=\"100\" value=\"{MARKET_ENTRY_EMAIL}\"></td>\r\n			</td>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_USER_DETAIL}<font color=\"red\"> *</font></td>		\r\n				<td>\r\n					<input type=\"radio\" name=\"userdetails\" value=\"1\" {MARKET_ENTRY_USERDETAILS_ON} />&nbsp;{TXT_MARKET_DETAIL_SHOW}\r\n					<input type=\"radio\" name=\"userdetails\" value=\"0\" {MARKET_ENTRY_USERDETAILS_OFF} />&nbsp;{TXT_MARKET_DETAIL_HIDE}\r\n				</td>\r\n			</td>\r\n					<!-- BEGIN spez_fields -->\r\n			<tr valign=\"top\" >\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_SPEZ_FIELD_NAME}</td>\r\n				<td>{MARKET_SPEZ_FIELD_INPUT}</td>\r\n			</td>\r\n			<!-- END spez_fields -->\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\"><br /></td>		\r\n				<td>\r\n					<input type=\"submit\" name=\"submitEntry\" value=\"{TXT_MARKET_SAVE}\" />\r\n				</td>\r\n			</td>\r\n	   </table>\r\n	</form>\r\n</div>', 'Inserat editieren', 'Inserat editieren', 'Inserat editieren', 'Inserat editieren', 'index', '', '', 'y'),
('68', '<script type=\"text/javascript\">\r\n<!--\r\nfunction CheckAGB() {\r\n   obj1 = document.getElementById(\'checkAGB\');\r\n   obj2 = document.getElementById(\'submit\');\r\n\r\n   obj2.disabled = !obj1.checked;  \r\n}\r\n-->\r\n</script>\r\n<div id=\"market\">\r\n	<!-- BEGIN codeForm --> \r\n	<div class=\"title\">{TXT_MARKET_TITLE}</h2></div>\r\n	<div class=\"message\">{TXT_MARKET_AGB}</div>\r\n	<div class=\"form\"><input type=\"checkbox\" id=\"checkAGB\" onclick=\"CheckAGB();\" name=\"checkAGB\" value=\"1\"/><label for=\"checkAGB\">&nbsp;{TXT_MARKET_CONFIRM}</label></div>\r\n	<div class=\"form\">{MARKET_FORM}</div>\r\n	<div class=\"message_error\">{MARKET_ERROR_CONFIRM}</div>\r\n	\r\n	<script type=\"text/javascript\">\r\n	<!--\r\n	CheckAGB();\r\n	-->\r\n	</script>\r\n	<!-- END codeForm --> \r\n\r\n	<!-- BEGIN infoText --> \r\n	<div id=\"title\"><h2>Erfolgreich eingetragen</h2></div>\r\n	<div class=\"message\">Ihr Inserat wurde erfolgreich eingetragen. Das Inserat wird nach erfolgreicher Pr&uuml;fung freigeschaltet. Sie werden pre E-Mail informiert.</div>\r\n	<!-- END infoText --> \r\n</div>', 'Insarat Aktivieren', 'Insarat Aktivieren', 'Insarat Aktivieren', 'Insarat Aktivieren', 'index', '', '', 'y'),
('69', '<script type=\"text/javascript\">\r\n<!--\r\nfunction toggle(target){\r\n    obj = document.getElementById(target);\r\n    obj.style.display = (obj.style.display==\'none\') ? \'inline\' : \'none\';  \r\n    if (obj.style.display==\'none\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'norm\';\r\n    }else if(obj.style.display==\'inline\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'exp\';\r\n    }\r\n}\r\n\r\nfunction CheckAGB() {\r\n   obj1 = document.getElementById(\'checkAGB\');\r\n   obj2 = document.getElementById(\'submit\');\r\n\r\n   obj2.disabled = !obj1.checked;  \r\n}\r\n-->\r\n</script>\r\n<div id=\"marketSearch\">\r\n	<form action=\"index.php?\" method=\"get\" name=\"marketSearch\" id=\"marketSearch\">\r\n		<input name=\"term\" value=\"{TXT_MARKET_SEARCHTERM}\" size=\"25\" maxlength=\"100\" /><input type=\"hidden\" id=\"searchCheck\" name=\"check\" value=\"norm\" size=\"10\" /><input type=\"hidden\" name=\"section\" value=\"market\" size=\"10\" /><input type=\"hidden\" name=\"cmd\" value=\"search\" size=\"10\" />&nbsp;<input type=\"submit\" value=\"{TXT_MARKET_SEARCH}\" name=\"search\" />                  &nbsp;&raquo;&nbsp;<a onclick=\"javascript:toggle(\'hiddenSearch\')\" href=\"javascript:{}\">{TXT_MARKET_SEARCH_EXP}</a><br />\r\n		<div style=\"display: none;\" id=\"hiddenSearch\"><br />\r\n		<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n			{MARKET_EXP_SEARCH_FIELD}\r\n		</table>\r\n		</div>\r\n	</form>\r\n</div>\r\n<div id=\"marketNavtree\">\r\n<a href=\"index.php?section=market\">{TXT_MARKET}</a> &raquo; <a href=\"#\">Freischaltcode Eingeben</a>\r\n</div>\r\n\r\n<div id=\"directoryTitle\">\r\n<h2>{TXT_MARKET_CODE}</h2>\r\n</div>\r\n\r\n<div style=\"width: 100%; float: left; padding: 0px 0px 15px 0px; text-align-center;\">\r\n<b>{MARKET_CODE}</b>\r\n</div>\r\n\r\n<!-- BEGIN form --> \r\n<div style=\"width: 100%; float: left; padding: 0px 0px 15px 0px;\">\r\n{MARKET_FORM}\r\n</div>\r\n<div style=\"width: 100%; float: left; padding: 0px 0px 15px 0px;\">\r\n<font color=\"#ff0000\">{MARKET_ERROR_CONFIRM}</font>\r\n</div>\r\n<!-- END form --> ', 'Freischaltcode Eingeben', 'Freischaltcode Eingeben', 'Freischaltcode Eingeben', 'Freischaltcode Eingeben', 'index', '', '', 'y'),
('70', '<script type=\"text/javascript\">\r\n<!--\r\nfunction toggle(target){\r\n    obj = document.getElementById(target);\r\n    obj.style.display = (obj.style.display==\'none\') ? \'inline\' : \'none\';  \r\n    if (obj.style.display==\'none\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'norm\';\r\n    }else if(obj.style.display==\'inline\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'exp\';\r\n    }\r\n}\r\n\r\nfunction CheckAGB() {\r\n   obj1 = document.getElementById(\'checkAGB\');\r\n   obj2 = document.getElementById(\'submit\');\r\n\r\n   obj2.disabled = !obj1.checked;  \r\n}\r\n-->\r\n</script>\r\n<div id=\"marketSearch\">\r\n	<form action=\"index.php?\" method=\"get\" name=\"marketSearch\" id=\"marketSearch\">\r\n		<input name=\"term\" value=\"{TXT_MARKET_SEARCHTERM}\" size=\"25\" maxlength=\"100\" /><input type=\"hidden\" id=\"searchCheck\" name=\"check\" value=\"norm\" size=\"10\" /><input type=\"hidden\" name=\"section\" value=\"market\" size=\"10\" /><input type=\"hidden\" name=\"cmd\" value=\"search\" size=\"10\" />&nbsp;<input type=\"submit\" value=\"{TXT_MARKET_SEARCH}\" name=\"search\" />                  &nbsp;&raquo;&nbsp;<a onclick=\"javascript:toggle(\'hiddenSearch\')\" href=\"javascript:{}\">{TXT_MARKET_SEARCH_EXP}</a><br />\r\n		<div style=\"display: none;\" id=\"hiddenSearch\"><br />\r\n		<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n			{MARKET_EXP_SEARCH_FIELD}\r\n		</table>\r\n		</div>\r\n	</form>\r\n</div>\r\n<div id=\"marketNavtree\">\r\n<a href=\"index.php?section=market\">{TXT_MARKET}</a> &raquo; <a href=\"#\">PayPal fehlgeschlagen</a>\r\n</div>\r\n\r\n<div id=\"directoryTitle\">\r\n<h2>{TXT_MARKET_TITLE}</h2>\r\n</div>\r\n\r\n<div style=\"width: 100%; float: left; padding: 0px 0px 15px 0px;\">\r\n{TXT_MARKET_AGB}\r\n</div>\r\n\r\n<div style=\"width: 100%; float: left; padding: 0px 0px 15px 0px;\">\r\n<font color=\"red\">{TXT_PAYPAL_ERROR}</font>\r\n</div>\r\n\r\n<div style=\"width: 100%; float: left; padding: 0px 0px 15px 0px;\">\r\n<input type=\"checkbox\" id=\"checkAGB\" onclick=\"CheckAGB();\" name=\"checkAGB\" value=\"1\"/><label for=\"checkAGB\">&nbsp;{TXT_MARKET_CONFIRM}</label>\r\n</div>\r\n\r\n<!-- BEGIN paypal --> \r\n<div style=\"width: 100%; float: left; padding: 0px 0px 15px 0px;\">\r\n<div style=\"float: left; width: 25%;\"><a href=\"http://www.paypal.ch\" target=\"_blank\" ><img src=\"/modules/shop/images/payments/logo_paypal.gif\" alt=\"\" border=\"0\" /></a></div>\r\n<div style=\"float: left; width: 5%;\"><br /></div>\r\n<div style=\"float: left; width: 68%;\">{MARKET_PAYPAL}</div>\r\n</div>\r\n<!-- END paypal --> \r\n\r\n<script type=\"text/javascript\">\r\n<!--\r\nCheckAGB();\r\n-->\r\n</script>', 'PayPal fehlgeschlagen', 'PayPal fehlgeschlagen', 'PayPal fehlgeschlagen', 'PayPal fehlgeschlagen', 'index', '', '', 'y'),
('71', '<div id=\"sitemap\">\r\n<ul>\r\n	<!-- BEGIN sitemap -->\r\n	<li class=\"{STYLE}\">{SPACER}<a title=\"{NAME}\" href=\"{URL}\">{NAME}</a></li>\r\n	<!-- END sitemap -->\r\n</ul>\r\n</div>', 'Sitemap', 'Sitemap', 'Sitemap', 'Sitemap', 'index', '', '', 'y'),
('72', '<div id=\"docsys\">\r\n	<div class=\"categories\">\r\n		<form method=\"post\" action=\"index.php?section=docsys\" name=\"docSys\">\r\n			<select name=\"category\" onchange=\"javascript:this.form.submit()\">\r\n			<option selected=\"selected\" value=\"\">{DOCSYS_NO_CATEGORY}</option>\r\n			{DOCSYS_CAT_MENU}\r\n			</select>\r\n		</form>\r\n	</div>\r\n	<div class=\"doc_list\">\r\n		<table cellspacing=\"0\">\r\n			<tbody>\r\n				<tr>\r\n					<th width=\"5%\" nowrap=\"nowrap\">Datum</th>\r\n					<th width=\"100%\">Titel</th>\r\n					<th nowrap=\"nowrap\">Kategorie</th>\r\n				</tr>\r\n				<!-- BEGIN row -->\r\n				<tr>\r\n					<td nowrap=\"nowrap\">{DOCSYS_DATE}</td>\r\n					<td width=\"100%\">{DOCSYS_LINK}</td>\r\n					<td nowrap=\"nowrap\">{DOCSYS_CATEGORY}</td>\r\n				</tr>\r\n				<!-- END row -->\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<div calss=\"paging\">{DOCSYS_PAGING}</div>\r\n</div>', 'Dokumentensystem', 'Dokumentensystem', 'Dokumentensystem', 'Dokumentensystem', 'index', '', '', 'y'),
('73', '{DOCSYS_TEXT}<br />\r\n<br />\r\n{DOCSYS_SOURCE}<br />\r\n{DOCSYS_URL} <br /> \r\n<br />\r\nVer&ouml;ffentlicht am<br />\r\n{DOCSYS_DATE}<br />\r\n<br />\r\nAutor<br />\r\n{DOCSYS_AUTHOR}<br />\r\n<br />\r\n{DOCSYS_LASTUPDATE}', 'Detailansicht', 'Detailansicht', 'Detailansicht', 'Detailansicht', 'index', '', '', 'y'),
('74', '<div id=\"feed\">\r\n	{FEED_NO_NEWSFEED}\r\n	<!-- BEGIN feed_table -->\r\n	<!-- BEGIN feed_cat -->\r\n	<div class=\"categories\">\r\n		<table cellspacing=\"0\">\r\n			<tr>\r\n				<th>{FEED_CAT_NAME}</th>\r\n			</tr>\r\n			<!-- BEGIN feed_news -->\r\n			<tr>\r\n				<td><a href=\"{FEED_NEWS_LINK}\">{FEED_NEWS_NAME}</a></td>\r\n			</tr>\r\n			 <!-- END feed_news -->\r\n		</table>\r\n	</div>\r\n	<!-- END feed_cat -->\r\n	<!-- BEGIN feed_show_news -->\r\n	<div class=\"news\">\r\n		<h2>{FEED_TITLE}</h2>\r\n		{FEED_IMAGE}\r\n		<ul>  \r\n			<!-- BEGIN feed_output_news -->      \r\n			<li><a href=\"{FEED_LINK}\" target=\"_blank\">{FEED_NAME}</a></li>     \r\n			<!-- END feed_output_news --> \r\n		</ul>\r\n		<br />\r\n		{TXT_FEED_LAST_UPTDATE}: {FEED_TIME}\r\n		<!-- END feed_show_news -->\r\n	</div>\r\n	<!-- END feed_table -->\r\n</div>', 'RSS Feed Verzeichnis', 'RSS Feed Verzeichnis', 'RSS Feed Verzeichnis', 'RSS Feed Verzeichnis', 'index', '', '', 'y'),
('75', '{NEWSML_TITLE}<br /><br /><div style=\"float:left;margin-right:10px;\">{NEWSML_IMAGE}</div>{NEWSML_TEXT}<br /> <a href=\"javascript:window.history.back();\">zur&uuml;ck</a>', 'Newsmeldung', 'Newsmeldung', 'Newsmeldung', 'Newsmeldung', 'index', '', '', 'y'),
('76', '<!-- START memberdir -->\r\n<div id=\"memberdir\">\r\n	<div class=\"category_tree\"><!-- BEGIN tree --><a title=\"{TXT_OVERVIEW}\" href=\"index.php?section=memberdir\">{TXT_OVERVIEW}</a> <!-- BEGIN tree-element -->&gt; <a title=\"{MEMBERDIR_DIRNAME}\" href=\"index.php?section=memberdir&amp;id={MEMBERDIR_DIRID}\">{MEMBERDIR_DIRNAME}</a><!-- END tree-element --><!-- END tree --></div>\r\n	<div class=\"description\">{MEMBERDIR_DESCRIPTION}</div>\r\n	\r\n	<!-- BEGIN category_list -->\r\n	<script type=\"text/javascript\">\r\n	/* <![CDATA[ */\r\n		function openSubDir(obj) {\r\n			var id = obj.id.substr(10);\r\n			document.getElementById(\"block_\" + id).style.display = \"block\";\r\n			obj.src = \"cadmin/images/icons/minuslink.gif\";\r\n			obj.onclick = function() {closeSubDir(this)};\r\n		}\r\n		\r\n		function closeSubDir(obj) {\r\n			var id = obj.id.substr(10);\r\n			document.getElementById(\"block_\" + id).style.display = \"none\";\r\n			obj.src = \"cadmin/images/icons/pluslink.gif\";\r\n			obj.onclick = function() {openSubDir(this)};\r\n		}\r\n	/* ]]> */\r\n	</script>\r\n	<div class=\"subcategories\">\r\n		{TXT_CATEGORY_TREE_DESC}\r\n		<!-- BEGIN category -->\r\n		<!-- BEGIN div-block-beginning -->\r\n		<div id=\"block_{MEMBERDIR_PARENT_ID}\" style=\"display: none; padding-left: {MEMBERDIR_PADDING_LEFT}px;\">\r\n		<!-- END div-block-beginning -->\r\n			<div class=\"directory\">\r\n				<img id=\"memberdir_{MEMBERDIR_DIR_ID}\" style=\"border: none; width: 11px; height: 11px;\" onclick=\"openSubDir(this);\" alt=\"Open subdir\" src=\"cadmin/images/icons/{MEMBERDIR_IMAGE_SRC}\" /> <a title=\"{MEMBERDIR_DIR_NAME}\" href=\"index.php?section=memberdir&amp;id={MEMBERDIR_DIR_ID}\">{MEMBERDIR_DIR_NAME}</a>\r\n			</div>\r\n			<!-- BEGIN div-block-ending -->\r\n		</div>\r\n		<!-- END div-block-ending -->\r\n		<!-- END category -->\r\n	</div>\r\n	<!-- END category_list -->\r\n	\r\n	<!-- BEGIN category_show -->\r\n	<div class=\"char_list\">{MEMBERDIR_CHAR_LIST}</div>\r\n	<div class=\"search_form\">\r\n		<form action=\"index.php?section=memberdir\" method=\"get\">\r\n			<input type=\"hidden\" name=\"search\" value=\"search\" /> <input type=\"hidden\" name=\"section\" value=\"memberdir\" /> <input onclick=\"this.value=\'\'\" name=\"keyword\" value=\"{MEMBERDIR_KEYWORD}\" /> {MEMBERDIR_DROPDOWN} <input type=\"submit\" value=\"{MEMBERDIR_SEARCH}\" />\r\n		</form>\r\n	</div>\r\n	<div class=\"adress_list\">\r\n		<table cellspacing=\"0\">\r\n			<tbody>\r\n				<tr>\r\n					<th>Name</th>\r\n					<th>Adresse</th>\r\n				</tr>\r\n				<!-- BEGIN memberdir_row -->\r\n				<tr class=\"row{MEMBERDIR_ROW}\">\r\n					<td valign=\"top\"><a title=\"{FIELD_NAME} {FIELD_VORNAME}\" href=\"index.php?section=memberdir&amp;mid={MEMBERDIR_ID}\"><strong>{FIELD_NAME} {FIELD_VORNAME}</strong></a></td>\r\n					<td valign=\"top\">{FIELD_ADRESSE}<br />{FIELD_PLZ} {FIELD_ORT}</td>\r\n				</tr>\r\n				<!-- END memberdir_row -->\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<div class=\"paging\">{MEMBERDIR_PAGING}</div>\r\n	<!-- END category_show -->\r\n	\r\n	<!-- BEGIN memberdir_detail_view -->\r\n	<div class=\"detail_list\">\r\n		<table cellspacing=\"0\">\r\n			<tbody>\r\n				<tr class=\"row1\">\r\n					<td valign=\"top\" width=\"50%\">{MEMBERDIR_PIC1}<br /></td>\r\n					<td  valign=\"top\" width=\"50%\">{MEMBERDIR_PIC2}<br /></td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n		<table cellspacing=\"0\">\r\n			<tbody>\r\n				<tr>\r\n					<th>Personalien</th>\r\n					<th><br /></th>\r\n				</tr>\r\n				<!-- BEGIN row -->\r\n				<tr class=\"row1\">\r\n					<td valign=\"top\" width=\"150\"><strong>{MEMBERDIR_FIELD_NAME}:</strong></td>\r\n					<td  valign=\"top\">{MEMBERDIR_FIELD_VALUE}</td>\r\n				</tr>\r\n				<!-- END row -->\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<div class=\"back\"><a title=\"Zur&uuml;ck\" href=\"javascript:history.back();\">Zur&uuml;ck</a> </div>\r\n	<!-- END memberdir_detail_view -->\r\n</div>\r\n<!-- END memberdir -->', 'Adressverzeichnis', 'Adressverzeichnis', 'Adressverzeichnis', 'Adressverzeichnis', 'index', '', '', 'y'),
('1108', '<div id=\"newsletter\">\r\n	<!-- BEGIN newsletter_error_message -->\r\n	<div class=\"errorMessage\">{NEWSLETTER_ERROR_MESSAGE}</div>\r\n	<!-- END newsletter_error_message -->\r\n	<!-- BEGIN newsletter_ok_message -->\r\n	<div class=\"okMessage\">{NEWSLETTER_OK_MESSAGE}</div>\r\n	<!-- END newsletter_ok_message -->\r\n	<!-- BEGIN newsletterForm -->\r\n        <div class=\"form\">\r\n	<fieldset> \r\n		<legend>Anmeldeformular</legend>\r\n		<form name=\"newsletter\" action=\"index.php?section=newsletter&amp;cmd=subscribe\" method=\"post\">\r\n			<p><label for=\"email\">{TXT_NEWSLETTER_EMAIL_ADDRESS}</label><input type=\"text\" name=\"email\" maxlength=\"255\" value=\"{NEWSLETTER_EMAIL}\" /></p>\r\n			<p><label>{TXT_NEWSLETTER_SEX}</label><input type=\"radio\" id=\"female\" name=\"sex\" value=\"f\" {NEWSLETTER_SEX_F} /><label class=\"description\" for=\"female\">{TXT_NEWSLETTER_FEMALE}</label></p>\r\n			<p><input type=\"radio\" id=\"male\" name=\"sex\" value=\"m\" {NEWSLETTER_SEX_M} /><label class=\"description\" for=\"male\">{TXT_NEWSLETTER_MALE}</label></p>\r\n			<p><label>{TXT_NEWSLETTER_TITLE}</label>{NEWSLETTER_TITLE}</p>\r\n			<p><label for=\"lastname\">{TXT_NEWSLETTER_LASTNAME}</label><input type=\"text\" name=\"lastname\" maxlength=\"255\" value=\"{NEWSLETTER_LASTNAME}\" /></p>\r\n			<p><label for=\"firstname\">{TXT_NEWSLETTER_FIRSTNAME}</label><input type=\"text\" name=\"firstname\" maxlength=\"255\" value=\"{NEWSLETTER_FIRSTNAME}\" /></p>\r\n			<p><label for=\"company\">{TXT_NEWSLETTER_COMPANY}</label><input type=\"text\" name=\"company\" maxlength=\"255\" value=\"{NEWSLETTER_COMPANY}\" /></p>\r\n			<p><label for=\"street\">{TXT_NEWSLETTER_STREET}</label><input type=\"text\" name=\"street\" maxlength=\"255\" value=\"{NEWSLETTER_STREET}\" /></p>\r\n			<p><label for=\"zip\">{TXT_NEWSLETTER_ZIP}</label><input type=\"text\" name=\"zip\" maxlength=\"255\" value=\"{NEWSLETTER_ZIP}\" /></p>\r\n			<p><label for=\"city\">{TXT_NEWSLETTER_CITY}</label><input type=\"text\" name=\"city\" maxlength=\"255\" value=\"{NEWSLETTER_CITY}\" /></p>\r\n			<p><label for=\"country\">{TXT_NEWSLETTER_COUNTRY}</label><input type=\"text\" name=\"country\" maxlength=\"255\" value=\"{NEWSLETTER_COUNTRY}\" /></p>\r\n			<p><label for=\"phone\">{TXT_NEWSLETTER_PHONE}</label><input type=\"text\" name=\"phone\" maxlength=\"255\" value=\"{NEWSLETTER_PHONE}\" /></p>\r\n			<!-- BEGIN newsletter_lists -->\r\n					<p><input type=\"checkbox\" name=\"list[{NEWSLETTER_LIST_ID}]\" id=\"list_{NEWSLETTER_LIST_ID}\" {NEWSLETTER_LIST_SELECTED} value=\"1\" /> <label class=\"description\" for=\"list_{NEWSLETTER_LIST_ID}\">{NEWSLETTER_LIST_NAME}</label></p>\r\n			<!-- END newsletter_lists -->\r\n			 <p><input type=\"submit\" name=\"recipient_save\" value=\"{TXT_NEWSLETTER_SAVE}\" /></p>\r\n		</form>\r\n	</fieldset>\r\n        </div>\r\n	<!-- END newsletterForm -->\r\n</div>', 'Newsletter abonnieren', 'Newsletter abonnieren', 'Newsletter abonnieren', 'Newsletter abonnieren', 'index', '', '', 'y'),
('78', '{MEDIA_JAVASCRIPT}\r\n<table cellspacing=\"0\" id=\"media\">\r\n  <tbody>\r\n    <tr>\r\n      <th width=\"16\" style=\"text-align: center;\"><strong>#</strong></th>\r\n      <th colspan=\"2\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_NAME_HREF}\">{TXT_MEDIA_FILE_NAME}</a>&nbsp;{MEDIA_NAME_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_SIZE_HREF}\" name=\"sort_size\">{TXT_MEDIA_FILE_SIZE}</a>&nbsp;{MEDIA_SIZE_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_TYPE_HREF}\" name=\"sort_type\">{TXT_MEDIA_FILE_TYPE}</a>&nbsp;{MEDIA_TYPE_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_DATE_HREF}\" name=\"sort_date\">{TXT_MEDIA_FILE_DATE}</a>&nbsp;{MEDIA_DATE_ICON}</th>\r\n    </tr>\r\n    <tr class=\"row2\">\r\n      <td width=\"16\" align=\"center\"><img height=\"16\" width=\"16\" title=\"base\" alt=\"base\" src=\"images/modules/media/_base.gif\" /></td>\r\n      <td colspan=\"5\">\r\n        <a title=\"{MEDIA_TREE_NAV_MAIN}\" href=\"{MEDIA_TREE_NAV_MAIN_HREF}\">{MEDIA_TREE_NAV_MAIN}</a> \r\n        <!-- BEGIN mediaTreeNavigation -->\r\n        <a href=\"{MEDIA_TREE_NAV_DIR_HREF}\">&nbsp;{MEDIA_TREE_NAV_DIR} /</a> \r\n        <!-- END mediaTreeNavigation -->\r\n      </td>\r\n    </tr>\r\n    <!-- BEGIN mediaDirectoryTree -->\r\n    <tr class=\"{MEDIA_DIR_TREE_ROW}\">\r\n      <td width=\"16\">&nbsp;</td>\r\n      <td width=\"16\" align=\"center\"><img height=\"16\" width=\"16\" title=\"icon\" alt=\"icon\" src=\"{MEDIA_FILE_ICON}\" /></td>\r\n      <td width=\"100%\"><a title=\"{MEDIA_FILE_NAME}\" href=\"{MEDIA_FILE_NAME_HREF}\">{MEDIA_FILE_NAME}</a></td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_SIZE}</td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_TYPE}</td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_DATE}</td>\r\n    </tr>\r\n    <!-- END mediaDirectoryTree -->\r\n    <!-- BEGIN mediaEmptyDirectory -->\r\n    <tr class=\"row1\">\r\n      <td>&nbsp;</td>\r\n      <td colspan=\"5\">{TXT_MEDIA_DIR_EMPTY}</td>\r\n    </tr>\r\n    <!-- END mediaEmptyDirectory -->\r\n  </tbody>\r\n</table>\r\n', 'Download Archiv 1', 'Download Archiv 1', 'Download Archiv 1', 'Download Archiv 1', 'index', '', '', 'y'),
('79', '<h2>Haftung f&uuml;r Inhalte</h2>\r\n<p>Die Inhalte unserer Seiten wurden mit gr&ouml;&szlig;ter Sorgfalt erstellt. F&uuml;r die Richtigkeit, Vollst&auml;ndigkeit und Aktualit&auml;t der Inhalte k&ouml;nnen wir jedoch keine Gew&auml;hr &uuml;bernehmen.</p>\r\n<p>Als Diensteanbieter sind wir f&uuml;r eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Diensteanbieter sind jedoch nicht verpflichtet, die von ihnen &uuml;bermittelten oder gespeicherten fremden Informationen zu &uuml;berwachen oder nach Umst&auml;nden zu forschen, die auf eine rechtswidrige T&auml;tigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unber&uuml;hrt. Eine diesbez&uuml;gliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung m&ouml;glich. Bei bekannt werden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.</p>\r\n<h2><strong>Haftung f&uuml;r Links</strong></h2>\r\n<p>Unser Angebot enth&auml;lt Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb k&ouml;nnen wir f&uuml;r diese fremden Inhalte auch keine Gew&auml;hr &uuml;bernehmen. F&uuml;r die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf m&ouml;gliche Rechtsverst&ouml;&szlig;e &uuml;berpr&uuml;ft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei bekannt werden von Rechtsverletzungen werden wir derartige Links umgehend entfernen.</p>\r\n<h2><strong>Urheberrecht</strong></h2>\r\n<p>Die Betreiber der Seiten sind bem&uuml;ht, stets die Urheberrechte anderer zu beachten bzw. auf selbst erstellte sowie lizenzfreie Werke zur&uuml;ckzugreifen.</p>\r\n<p>Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Beitr&auml;ge Dritter sind als solche gekennzeichnet. Die Vervielf&auml;ltigung, Bearbeitung, Verbreitung und jede Art der Verwertung au&szlig;erhalb der Grenzen des Urheberrechtes bed&uuml;rfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur f&uuml;r den privaten, nicht kommerziellen Gebrauch gestattet.</p>\r\n<h2><strong>Datenschutz </strong></h2>\r\n<p>Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies soweit m&ouml;glich stets auf freiwilliger Basis. Die Nutzung der Angebote und Dienste ist, soweit m&ouml;glich, stets ohne Angabe personenbezogener Daten m&ouml;glich.</p>\r\n<p>Der Nutzung von im Rahmen der Impressumspflicht ver&ouml;ffentlichten Kontaktdaten durch Dritte zur &uuml;bersendung von nicht ausdr&uuml;cklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdr&uuml;cklich widersprochen. Die Betreiber der Seiten behalten sich ausdr&uuml;cklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor.</p>\r\n<p><br />\r\nQuelle: <a href=\"http://www.e-recht24.de/muster-disclaimer.htm\">Disclaimer</a> von eRecht24.de dem Informationsportal zum <a href=\"http://www.e-recht24.de/\">Internetrecht</a></p>', 'Datenschutz und Haftungshinweise', 'Datenschutz und Haftungshinweise', 'Datenschutz und Haftungshinweise', 'Datenschutz und Haftungshinweise', 'index', '', '', 'n'),
('80', '<p>Verantwortlich f&uuml;r Inhalt, Konzeption &amp; Realisierung des Onlineportals:</p><p><strong>Ihr Firmenname</strong><br />Strasse<br />PLZ Ort<br />Land</p>  <h2>Gew&auml;hrleistung</h2> Wir bem&uuml;hen uns um m&ouml;glichst korrekte und aktuelle Information. Trotzdem k&ouml;nnen Fehler auftreten. Die Inhalte wurden sorgf&auml;ltig erarbeitet. Dennoch &uuml;bernehmen Autoren und Herausgeber keine Gew&auml;hr und Haftung f&uuml;r die Richtigkeit, Zuverl&auml;ssigkeit, Vollst&auml;ndigkeit und Aktualit&auml;t der Information. Die Verwendung der Website und der darin enthaltenen Informationen erfolgt auf eigene Gefahr. &auml;nderungen k&ouml;nnen jederzeit vorgenommen werden.<br /><br /><h2>Web Content Management System (CMS)</h2> Dieser Internetauftritt basiert auf dem <a href=\"http://www.contrexx.com/\" target=\"_blank\">Contrexx&reg; WCMS</a>, welches von der <a href=\"http://www.comvation.com/\">COMVATION Internet Solutions</a> aus der Schweiz entwickelt wurde.<br type=\"_moz\" />', 'Impressum', 'Impressum', 'Impressum', 'Impressum', 'index', '', '', 'n'),
('81', '<p><a href=\"http://de.wikipedia.org/wiki/Allgemeine_Gesch%C3%A4ftsbedingungen\">Allgemeine Gesch&auml;ftsbedingungen</a> (abgek&uuml;rzt &bdquo;AGB&ldquo;, nicht-standardsprachlich auch oft &bdquo;AGBs&ldquo;,&bdquo;AGB\'s&ldquo; oder &bdquo;AGBen&ldquo;) sind alle f&uuml;r eine Vielzahl von Vertr&auml;gen vorformulierten Vertragsbedingungen, die eine Vertragspartei (der Verwender) der anderen Vertragspartei bei Abschluss eines Vertrages stellt.</p>\r\n<p>Dabei ist es gleichg&uuml;ltig, ob die Bestimmung einen &auml;u&szlig;erlich gesonderten Bestandteil des Vertrags (umgangssprachlich &bdquo;das Kleingedruckte&ldquo; genannt) bilden oder in die Vertragsurkunde selbst aufgenommen werden.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Allgemeinen Geschäftsbedingungen', 'Allgemeinen Geschäftsbedingungen', 'Allgemeinen Geschäftsbedingungen', 'Allgemeinen Geschäftsbedingungen', 'index', '', '', 'n'),
('82', '<p>Mit <a target=\"_blank\" href=\"http://www.contrexx.com\">Contrexx&reg; Web Content Management System (WCMS)</a> werden Webseiten f&uuml;r Internet, Extranet und Internet schnell, benutzerfreundlich und sicher erstellt. Die <a target=\"_blank\" href=\"http://www.contrexx.com/de/index.php?page=892\">standardisierten Module</a> von Contrexx&reg; erlauben ein rasches Umsetzen von individuellen Bed&uuml;rfnissen, wenn n&ouml;tig mit professioneller Unterst&uuml;tzung.<br />\r\nDas webbasierte System ist f&uuml;r die Verwaltung von flexiblen Internet- und Intranet L&ouml;sungen optimiert. Der modulare Aufbau und das Workflow System erm&ouml;glicht eine 100% Individualisierung der Logik und des Designs und f&ouml;rdert ein konsistentes und stetig wachsendes Wissensnetzwerk.<br />\r\n<br />\r\nDie Downloadversion beinhaltet einen Webinstaller, sowie verschiedene Module wie ein Linkverzeichnis, Podcast, Onlineschalter, Adressverzeichnis, Sitemap, Bildergalerie, Newsletter, G&auml;stebuch, RSS Feed Verzeichnis, News System, Abstimmung, Online Shop, Bannerverwaltung, Blockmodul und die M&ouml;glichkeiten f&uuml;r passwortgesch&uuml;tzte Bereiche.</p>\r\n<h2>Professioneller und innovativer Vertrieb</h2>\r\nContrexx&reg; wird weltweit &uuml;ber ein Partnernetzwerk vertrieben. Die <a target=\"_blank\" href=\"http://www.contrexx.com/de/index.php?page=106\">Contrexx&reg; Solutions Partner</a> sind autorisierte Partner welche ausgewiesene Kompetenzen im den Bereichen WebDesign, Grafik oder Internetmarketing besitzen. Damit erhalten Sie als Kunde professionelle Unterst&uuml;tzung mit hohen Kompetenzen aus Ihrer N&auml;he.', 'Contrexx® Web Content Management System (WCMS)', 'Contrexx® Web Content Management System (WCMS)', 'Contrexx® Web Content Management System (WCMS)', 'Contrexx® Web Content Management System (WCMS)', 'index', '', '', 'n'),
('83', 'In diesem Beitrag lernen Sie die ersten Schritte mit Contrexx&reg;. Wir w&uuml;nschen Ihnen viel Spass bei der Umsetzung und viel Erfolg bei der Umsetzung. F&uuml;r allf&auml;llige Fragen stehen Ihnen die folgenden <a href=\"index.php?page=2\">Mittel zur Verf&uuml;gung</a>.<br />\r\n<br />\r\n<h2>Einf&uuml;hrung</h2>\r\nDas Backend-System ist die Administrationskonsole. In diesem Bereich k&ouml;nnen Sie Contrexx administrieren, neue Seiten erstellen, Inhalte anpassen und vieles mehr. Das Frontend-System ist der Internetauftritt, welche Ihre Besucher erleben. Ein Themes ist das hinterlegte WebDesign.<br />\r\n<h2>Im Backend einloggen</h2>\r\n<p>Bitte folgen Sie dazu den folgenden Schritten:</p>\r\n<ul>\r\n    <li>Melden Sie sich im Contrexx an. Geben Sie dazu in der Adressenzeile im Browser Ihre Domain ein und f&uuml;gen Sie im Anschluss &quot;cadmin&quot; hinzu. Beispielsweise &quot;http://www.musterseite.eu/cadmin&quot;</li>\r\n    <li>Anschliessend erscheint die Anmeldemaske.</li>\r\n    <li>Geben Sie bitte die folgenden Daten ein:<br />\r\n    Sicherheitscode: Bitte wiederholen Sie den sichtbaren Code (dieser Code wird als Bild generiert und kann von Hackerwerkzeugen nicht erfasst werden)<br />\r\n    Benutzernamen: gem&auml;ss Angaben im Installer<br />\r\n    Pa&szlig;wort: gem&auml;ss Angaben im Installer</li>\r\n    <li>Empfehlung: vervollst&auml;ndigen Sie in einem ersten Schritt die Angaben in den Grundeinstellungen unter dem Navigationspunkt &quot;Administration&quot; auf der linken Seite.</li>\r\n</ul>\r\n<h2>Mit dem Content Manager arbeiten</h2>\r\n<p>Nach dem erfolgreichen Anmelden im Backend-Bereich k&ouml;nnen Sie Seiten erstellen. Um einen neuen Artikel anzulegen, w&auml;hlen Sie bitte die Funktion &quot;Content Management - Neue Seite&quot; auf der linken Seite. Danach definieren Sie die Artikeleigenschaften, insbesondere den Linknamen, Seitentitel und die Meta Angaben des Artikels (diese Angaben sind f&uuml;r Suchamschinen relevant). Mit Hilfe des WYSIWYG-Editors k&ouml;nnen Sie die Inhalte eingeben und speichern. Im Editor stehen Ihnen die aus der Textverarbeitung bekannten Funktionalit&auml;ten zur Verf&uuml;gung. Auch die Integration von Medien und Verlinkungen erfolgt &uuml;ber den Editor. Bitte verwenden Sie in der Formatierung des Textes die Formate aus dem Editor (Beispielsweise &Uuml;berschrift 1 oder Text). Wie die &Uuml;berschrift oder ein Text im Frontend aussieht, wird im Design und Layout definiert. Ein weiterer Zusatznutzen ist, dass Suchmaschinen eine definierte &Uuml;berschrift 1 (im HTML Code entspricht dies einem H1) besser indexieren weil &Uuml;berschirften aus der Sicht einer Suchmaschine relevanter sind.</p>\r\n<h2>Module und Themes - flexibel und erweiterbar</h2>\r\n<p>Der Aufbau von Contrexx basiert auf den folgenden Elementen:</p>\r\n<ul>\r\n    <li>Core System</li>\r\n    <li>Themes</li>\r\n    <li>Module</li>\r\n    <li>Inhalte</li>\r\n</ul>\r\n<p>Sogenannte Themes sind in XHTML programmiert und definieren das Erscheinungsbild der Site. Dabei werden im XHTML-Quelltext Platzhalter hinterlegt. Diese Platzhalter beinhalten weitere Dateien und Funktionalit&auml;ten, die sp&auml;ter auf der Website integriert werden.<br />\r\n<br />\r\nHinweis: Zur Zeit ist ein Portal f&uuml;r Contrexx&reg; - Themes in Vorbereitung und wird in K&uuml;rze erscheinen. Dies kann als Grundlage dienen, um WebDesign einfacher zu erstellen. <a href=\"http://www.contrexx.com/feed/news_headlines_de.xml\" target=\"_blank\">Abonnieren Sie sich gleich den Contrexx RSS - Feed</a>, damit Sie den Start dieses Portals nicht verpassen.</p>\r\n<p>Module sind in PHP programmiert und stellen die Funktionalit&auml;ten einer Website dar. Standardmodule sind die Darstellung von Texten und Navigation, Sitemap, Kontaktformulare, Suchen etc. Module bestehen aus einem Backend- und einem Frontend Bereich. Im Backendbereich kann der Administrator Einstellungen vornehmen, bspw. an welche e-Mail Adresse nach Ausf&uuml;llen eines Kontaktformulars eine Benachrichtigung versendet werden soll. Im Frontend Bereich wird die Ausgabe und Verarbeitung von Daten auf dem Onlinedienst gesteuert. Contrexx Templates f&uuml;hren Layouts und Module zusammen. Durch Auswahl eines Layouts im Template ist die Anzahl und Position von Platzhaltern vorbestimmt. F&uuml;r jeden dieser Container kann nun der Administrator ein Modul definieren, das dort ausgef&uuml;hrt werden soll.</p>', 'Ihre ersten Schritte mit dem Contrexx® WCMS', 'Ihre ersten Schritte mit dem Contrexx® WCMS', 'Ihre ersten Schritte mit dem Contrexx® WCMS', 'Ihre ersten Schritte mit dem Contrexx® WCMS', 'index', '', '', 'n'),
('85', '<form name=\"formNews\" method=\"post\" action=\"index.php?section=news\">\r\n    {NEWS_CAT_DROPDOWNMENU}\r\n</form>\r\n<br />\r\n<table cellspacing=\"0\" id=\"news\">\r\n    <tbody>\r\n        <tr>\r\n            <th width=\"15%\" nowrap=\"nowrap\" class=\"newsback\"><strong>{TXT_DATE}</strong></th>\r\n            <th width=\"85%\" nowrap=\"nowrap\" class=\"newsback\"><strong>Meldung</strong></th>\r\n        </tr>\r\n        <!-- BEGIN newsrow -->\r\n        <tr class=\"{NEWS_CSS}\">\r\n            <td nowrap=\"nowrap\">{NEWS_DATE}&nbsp;&nbsp;</td>\r\n            <td>{NEWS_LINK}</td>\r\n        </tr>\r\n        <!-- END newsrow -->\r\n    </tbody>\r\n</table>\r\n<br />\r\n{NEWS_PAGING}', 'Direktzugriff auf eine Newskategorie', 'Direktzugriff auf eine Newskategorie', 'Direktzugriff auf eine Newskategorie', 'Direktzugriff auf eine Newskategorie', 'index', '', '', 'n'),
('86', '<!-- BEGIN signForm -->\r\n{CALENDAR_FIELD_JS}\r\n<form name=\"signForm\" id=\"signForm\" onsubmit=\"return checkFields();\" method=\"post\" action=\"index.php?section=calendar&amp;cmd=sign\">\r\n<input type=\"hidden\" name=\"id\" value=\"{CALENDAR_NOTE_ID}\" />\r\n<input type=\"hidden\" name=\"userid\" value=\"{CALENDAR_USER_ID}\" />\r\n    <table border=\"0\">\r\n        <tbody>\r\n            <tr>\r\n                <td style=\"width: 120px;\">An- \\ Abmeldung</td>\r\n                <td><input type=\"radio\" name=\"type\" value=\"1\" checked=\"checked\" />&nbsp;Anmeldung&nbsp;&nbsp;&nbsp;<input type=\"radio\" name=\"type\" value=\"0\" />&nbsp;Abmeldung</td>\r\n            </tr>\r\n            <!-- BEGIN calendarRegFields -->\r\n            <tr>\r\n                <td>{CALENDAR_FIELD_NAME}</td>\r\n                <td>{CALENDAR_FIELD_INPUT}</td>\r\n            </tr>\r\n            <!-- END calendarRegFields -->\r\n            <tr>\r\n                <td><br /></td>\r\n                <td><input type=\"submit\" name=\"submit\" value=\"Absenden\" /></td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n</form>\r\n<!-- END signForm -->\r\n<!-- BEGIN signStatus -->\r\n{CALENDAR_REGISTRATIONS_STATUS}<br />\r\n<br />\r\n<a href=\"index.php?section=calendar\">{TXT_CALENDAR_BACK}</a>\r\n<!-- END signStatus -->', 'An- \\ Abmelden', 'An- \\ Abmelden', 'An- \\ Abmelden', 'An- \\ Abmelden', 'index', '', '', 'y'),
('88', '', 'Adressverzeichnis', 'Adressverzeichnis', 'Adressverzeichnis', 'Adressverzeichnis', 'index', '', 'index.php?section=memberdir&id=1', 'n'),
('89', 'Mit dem Layout &amp; Design Manager k&ouml;nnen Sie Ihre Webdesign Vorlagen verwalten. <br />\r\n<br />\r\nW&auml;hlen Sie in der Navigation die gew&uuml;nschte Webdesign Vorlage. Mit Contrexx haben Sie die M&ouml;glichkeit, f&uuml;r jede eigene Seite ein anderes Design zu bestimmen.<br />\r\n<h2>Vorschau</h2>\r\nDie gesamte Website kann mit dem URI Paramter&nbsp; preview=ThemeID [ Beispiel: index.php?preview=3 ]&nbsp; mit dem ausgew&auml;hlten Theme als Vorschau angesehen werden.<br />\r\n<h2>Theme Portal</h2>\r\nOffizielles <a href=\"http://webdesign.contrexx.com\">Contrexx Themeportal</a>&nbsp; (in Aufbau)<br />', 'Design Vorlagen', 'Design Vorlagen', 'Design Vorlagen', 'Design Vorlagen', 'index', '', '', 'n'),
('92', '<div id=\"blog\">\r\n	<div class=\"categories\">\r\n		<h2>Themen Kategorien</h2>\r\n		{BLOG_CATEGORIES_LIST}\r\n	</div>\r\n	<!-- BEGIN showBlogEntries -->\r\n		<div class=\"entries\">\r\n			<h2><a title=\"{BLOG_ENTRIES_TITLE}\" href=\"index.php?section=blog&amp;cmd=details&amp;id={BLOG_ENTRIES_ID}\">{BLOG_ENTRIES_TITLE}</a></h2>\r\n			<div class=\"posted_comment\">\r\n				{BLOG_ENTRIES_POSTED}\r\n				<!-- BEGIN showCommentPart -->\r\n					&nbsp;&nbsp;|&nbsp;&nbsp;<a title=\"{TXT_BLOG_COMMENTS}\" href=\"index.php?section=blog&amp;cmd=details&amp;id={BLOG_ENTRIES_ID}#comments\">{BLOG_ENTRIES_COMMENTS}</a>\r\n				<!-- END showCommentPart -->\r\n			</div>\r\n			<div class=\"content\">\r\n				<div class=\"image\">{BLOG_ENTRIES_IMAGE}</div>\r\n				<div class=\"text\">{BLOG_ENTRIES_INTRODUCTION}</div>\r\n				<div class=\"link\"><a href=\"index.php?section=blog&amp;cmd=details&amp;id={BLOG_ENTRIES_ID}\">Weiter...</a></div>\r\n			</div>\r\n			<div class=\"statistics\">\r\n				<strong>{TXT_BLOG_CATEGORIES}:</strong>&nbsp;{BLOG_ENTRIES_CATEGORIES}<br />\r\n				<strong>{TXT_BLOG_TAGS}:</strong>&nbsp;{BLOG_ENTRIES_TAGS}<br />\r\n				<!-- BEGIN showVotingPart -->\r\n					<strong>{TXT_BLOG_VOTING}:</strong>&nbsp; <a title=\"{TXT_BLOG_VOTING_DO}\" href=\"index.php?section=blog&amp;cmd=details&amp;id={BLOG_ENTRIES_ID}#voting\">{BLOG_ENTRIES_VOTING_STARS}</a>&nbsp;(<a title=\"{TXT_BLOG_VOTING_DO}\" href=\"index.php?section=blog&amp;cmd=details&amp;id={BLOG_ENTRIES_ID}#voting\">{BLOG_ENTRIES_VOTING}</a>) \r\n				<!-- END showVotingPart -->\r\n			</div>\r\n		</div>\r\n	<!-- END showBlogEntries -->\r\n	{BLOG_ENTRIES_PAGING}\r\n</div>', 'Blog', 'Blog', 'Blog', 'Blog', 'index', '', '', 'y'),
('93', '<div id=\"blog\">\r\n	{BLOG_SEARCH_JAVASCRIPT}\r\n	<div class=\"searchform\">\r\n		<form action=\"index.php?section=blog&amp;cmd=search\" name=\"frmDoSearch\" method=\"post\">\r\n			<p><label>{TXT_SEARCH_MODUS_KEYWORD}</label><input type=\"text\" value=\"{BLOG_SEARCH_KEYWORD_STRING}\" name=\"frmDoSearch_Keyword_String\" /></p>\r\n			<p><label>Kategorie</label>{BLOG_SEARCH_KEYWORD_CATEGORIES}</p>\r\n			<p><label>{TXT_SEARCH_MODUS_DATE}</label><div style=\"width: 200px; \">{BLOG_SEARCH_DATE_CALENDAR}</div></p>\r\n			<p><input type=\"submit\" value=\"{TXT_SEARCH_SUBMIT}\" name=\"frmDoSearch_Submit\" /></p>\r\n		</form>\r\n	</div>\r\n	<!-- BEGIN ResultPart -->\r\n		<h2>{TXT_SEARCH_RESULTS}</h2>\r\n		<!-- BEGIN showResults -->\r\n			<div class=\"entries\">\r\n				<h2><a title=\"{BLOG_SEARCH_RESULTS_SUBJECT}\" href=\"index.php?section=blog&amp;cmd=details&amp;id={BLOG_SEARCH_RESULTS_MID}\">{BLOG_SEARCH_RESULTS_SUBJECT}</a></h2>\r\n				<div class=\"content\">\r\n					<div class=\"text\">{BLOG_SEARCH_RESULTS_INTRODUCTION}</div>\r\n					<div class=\"link\"><a href=\"index.php?section=blog&amp;cmd=details&amp;id={BLOG_SEARCH_RESULTS_MID}\">Weiter...</a></div>\r\n				</div>\r\n				<div class=\"statistics\">\r\n					<strong>{TXT_SEARCH_RESULTS_DATE}:</strong>&nbsp;{BLOG_SEARCH_RESULTS_POSTED}<br />\r\n					<strong>{TXT_SEARCH_RESULTS_CATEGORY}:</strong>&nbsp;{BLOG_SEARCH_RESULTS_CATEGORIES}<br />\r\n					<strong>{TXT_SEARCH_RESULTS_KEYWORDS}:</strong>&nbsp; {BLOG_SEARCH_RESULTS_TAGS} \r\n				</div>\r\n			</div>\r\n		<!-- END showResults -->\r\n		<!-- BEGIN showNoResults -->\r\n			<div class=\"text\">{TXT_SEARCH_RESULTS_NONE}</div>\r\n		<!-- END showNoResults -->\r\n	<!-- END ResultPart -->\r\n</div>', 'Suchen', 'Suchen', 'Suchen', 'Suchen', 'index', '', '', 'y'),
('94', 'Eine <strong>Tag Cloud</strong> ist eine Methode zur Informationsvisualisierung, bei der eine Liste aus Schlagworten zweidimensional alphabetisch sortiert angezeigt wird, wobei einzelne unterschiedlich gewichtete Worte gr&ouml;sser oder auf andere Weise hervorgehoben dargestellt werden. Wortwolken werden zunehmend beim gemeinschaftlichen Indexieren und in Blogs eingesetzt. [<a target=\"_blank\" href=\"http://de.wikipedia.org/wiki/Tag_cloud\">Quelle</a>]\r\n<h2 class=\"blogTitle\">Beliebteste Tags</h2>\r\n{BLOG_TAG_HITLIST}\r\n<h2 class=\"blogTitle\">Tag Cloud</h2>\r\n<div style=\"text-align: justify; margin-top: 20px;\">{BLOG_TAG_CLOUD}</div>', 'Tag Cloud', 'Tag Cloud', 'Tag Cloud', 'Tag Cloud', 'index', '', '', 'y'),
('95', '<div id=\"blog\">\r\n	<!-- BEGIN showOkay -->\r\n		<div class=\"message_ok\">{BLOG_DETAILS_COMMENT_OKAY}</div>\r\n	<!-- END showOkay -->\r\n	<!-- BEGIN showError -->\r\n		<div class=\"message_error\">{BLOG_DETAILS_COMMENT_ERROR}</div>\r\n	<!-- END showError -->\r\n	<div class=\"entry\">\r\n		<h2>{BLOG_DETAILS_TITLE}</h2>\r\n		<div class=\"posted_comment\">{BLOG_DETAILS_POSTED}</div>\r\n		<div class=\"content\">\r\n			<div class=\"image\">{BLOG_DETAILS_IMAGE}</div>\r\n			<div class=\"text\">{BLOG_DETAILS_CONTENT}</div>\r\n			<div class=\"networks\">{BLOG_DETAILS_NETWORKS}</div>\r\n		</div>\r\n	</div>\r\n	<!-- BEGIN votingPart -->\r\n		<div class=\"voting\">\r\n			<table cellspacing=\"0\">\r\n				<tr>\r\n					<th colspan=\"2\">{TXT_VOTING}</th>\r\n				</tr>\r\n				<tr class=\"row1\">\r\n					<td width=\"30%\" nowrap=\"nowrap\">{TXT_VOTING_ACTUAL}</td>\r\n					<td width=\"70%\">{BLOG_DETAILS_VOTING_BAR}</td>\r\n				</tr>\r\n				<tr class=\"row2\">\r\n					<td nowrap=\"nowrap\">{TXT_VOTING_AVG}</td>\r\n					<td>{BLOG_DETAILS_VOTING_AVG}</td>\r\n				</tr>\r\n				<tr class=\"row1\">\r\n					<td nowrap=\"nowrap\">{TXT_VOTING_COUNT}</td>\r\n					<td>{BLOG_DETAILS_VOTING_COUNT}</td>\r\n				</tr>\r\n				<tr class=\"row2\">\r\n					<td nowrap=\"nowrap\">{TXT_VOTING_USER}</td>\r\n					<td>{BLOG_DETAILS_VOTING_USER}</td>\r\n				</tr>\r\n			</table>\r\n		</div>\r\n	<!-- END votingPart -->\r\n	<!-- BEGIN commentPart -->\r\n	{BLOG_DETAILS_COMMENTS_JAVASCRIPT}\r\n	<h3>{TXT_COMMENTS}</h3>\r\n	<!-- BEGIN showCommentRows -->\r\n		<div class=\"comments\">\r\n			<div class=\"title\"><strong>{BLOG_DETAILS_COMMENT_TITLE}</strong></div>\r\n			<div class=\"posted_comment\">{BLOG_DETAILS_COMMENT_POSTED}</div>\r\n			<div class=\"text\">{BLOG_DETAILS_COMMENT_CONTENT}</div>\r\n		</div>\r\n	<!-- END showCommentRows -->\r\n	<!-- BEGIN showNoCommentRows -->\r\n		<div class=\"comments\">{TXT_COMMENTS_NONE_EXISTING}</div>\r\n	<!-- END showNoCommentRows -->\r\n	<!-- BEGIN commentAddPart -->\r\n		<div class=\"addcomment\">\r\n			<h3>{TXT_COMMENT_ADD}</h3>\r\n			<form name=\"frmAddComment\" method=\"post\" action=\"index.php?section=blog&amp;cmd=details&amp;id={BLOG_DETAILS_COMMENT_ADD_MESSAGE_ID}\">\r\n				<input type=\"hidden\" name=\"frmAddComment_MessageId\" value=\"{BLOG_DETAILS_COMMENT_ADD_MESSAGE_ID}\" />\r\n				<p><label>{TXT_COMMENT_ADD_NAME}</label>{BLOG_DETAILS_COMMENT_ADD_NAME}</p>\r\n				<p><label>{TXT_COMMENT_ADD_EMAIL}</label>{BLOG_DETAILS_COMMENT_ADD_EMAIL}</p>\r\n				<p><label>{TXT_COMMENT_ADD_WWW}</label>{BLOG_DETAILS_COMMENT_ADD_WWW}</p>\r\n				<p><label>{TXT_COMMENT_ADD_SUBJECT}</label><input type=\"text\" name=\"frmAddComment_Subject\" value=\"{BLOG_DETAILS_COMMENT_ADD_SUBJECT}\" class=\"blogCommentInput\" /></p>\r\n				<p><label>{TXT_COMMENT_ADD_COMMENT}</label>{BLOG_DETAILS_COMMENT_ADD_COMMENT}</p>\r\n				<p><label>{TXT_COMMENT_ADD_SPAM}</label><img src=\"{BLOG_DETAILS_COMMENT_ADD_SPAM_URL}\" alt=\"{BLOG_DETAILS_COMMENT_ADD_SPAM_ALT}\" title=\"{BLOG_DETAILS_COMMENT_ADD_SPAM_ALT}\" /></p>\r\n				<p><input type=\"hidden\" name=\"frmAddComment_Offset\" value=\"{BLOG_DETAILS_COMMENT_ADD_SPAM_OFFSET}\" /><input type=\"text\" name=\"frmAddComment_Captcha\" /></p>\r\n				<p><input type=\"submit\" name=\"frmAddComment_Submit\" value=\"{TXT_COMMENT_ADD_SUBMIT}\" /></p>\r\n			</form>\r\n		</div>\r\n	<!-- END commentAddPart -->\r\n	<!-- END commentPart -->\r\n	\r\n</div>', 'Blogmeldung anzeigen', 'Blogmeldung anzeigen', 'Blogmeldung anzeigen', 'Blogmeldung anzeigen', 'index', '', '', 'y'),
('96', '<div id=\"blog\">\r\n	<div class=\"text\">Das Contrexx Blog-Modul erzeugt, falls in den Moduleinstellungen aktiviert, automatisch RSS-Feeds von Ihren Meldungen und den dazu verfassten Kommentaren. Dabei wird pro aktivierte Systemsprache im Ordner <strong>feed/</strong> eine eigene XML-Datei nach folgendem Schema erstellt:</div>\r\n	<div class=\"code\">\r\n<pre>blog_messages_XX.xml\r\nblog_comments_XX.xml\r\nblog_category_ID_XX.xml</pre>\r\n	</div>\r\n	<div class=\"text\">Dabei steht der Platzhalter XX f&uuml;r die Kurzform der jeweiligen Sprache und ID f&uuml;r die eindeutige Bezeichnungs-ID der jeweiligen Kategorie. F&uuml;r die Sprache Deutsch (Kurzform: de) lauten der komplette Link beispielsweise wie folgt:</div>\r\n	<div class=\"code\">\r\n<pre>http://www.Ihre-Website.ch/feed/blog_messages_de.xml\r\nhttp://www.Ihre-Website.ch/feed/blog_comments_de.xml</pre>\r\n	</div>\r\n	<div class=\"text\">F&uuml;r die Kategorie 1 (ID = 1) in der Sprache deutsch w&uuml;rde der Pfad demnach wie folgt lauten:</div>\r\n	<div class=\"code\">\r\n<pre>http://www.Ihre-Website.ch/feed/blog_category_1_de.xml</pre>\r\n	</div>\r\n	<div class=\"text\">Eine komplette &Uuml;bersicht aller Kurzformen finden Sie in Ihrem Administrationsbereich unter <strong>Administration &gt; Spracheinstellungen</strong>.</div>\r\n</div>', 'RSS-Feed', 'RSS-Feed', 'RSS-Feed', 'RSS-Feed', 'index', '', '', 'y'),
('97', '<br type=\"_moz\" />', 'Services', 'Services', 'Services', 'Services', 'index', '', '', 'n'),
('99', '<p>Hier haben Sie die M&ouml;glichkeit sich f&uuml;r dieses Portal zu registrieren und ein Benutzerkonto zu er&ouml;ffnen.</p>\n<div id=\"access\">\n\n<!-- BEGIN access_signup_form -->\n<div class=\"message_error\">{ACCESS_SIGNUP_MESSAGE}</div>\n<form action=\"index.php?section=access&amp;cmd=signup\" method=\"post\" enctype=\"multipart/form-data\">\n    <!-- BEGIN access_user_username -->\n    <p><label>{ACCESS_USER_USERNAME_DESC}</label>{ACCESS_USER_USERNAME}<br />\n    Bitte w&auml;hlen Sie einen Benutzernamen<br />\n    &nbsp;</p>\n    <!-- END access_user_username --><!-- BEGIN access_user_password -->\n    <p><label>{ACCESS_USER_PASSWORD_DESC}</label>{ACCESS_USER_PASSWORD}<br />\n    Bitte gew&uuml;nschtes Passwort eingeben (min. 6 Zeichen)<br />\n    &nbsp;</p>\n    <!-- END access_user_password --><!-- BEGIN access_user_password_confirmed -->\n    <p><label>{ACCESS_USER_PASSWORD_CONFIRMED_DESC}</label>     {ACCESS_USER_PASSWORD_CONFIRMED}<br />\n    Zur Ihrer Sicherheit wiederholen Sie bitte Ihr Passwort<br />\n    &nbsp;</p>\n    <!-- END access_user_password_confirmed -->      		<!-- BEGIN access_user_email -->\n    <p><label>{ACCESS_USER_EMAIL_DESC}</label>{ACCESS_USER_EMAIL}<br />\n    Ihre E-Mail Adresse (Sie m&uuml;ssen eine g&uuml;ltige E-Mail Adresse angeben, um Ihren Account zu aktivieren)<br />\n    &nbsp;</p>\n    <!-- END access_user_email -->\n    <p><label>{ACCESS_USER_FRONTEND_LANGUAGE_DESC}</label>{ACCESS_USER_FRONTEND_LANGUAGE}<br />\n    &nbsp;</p>\n    <p>{ACCESS_SIGNUP_BUTTON}</p>\n    <br />\n    <br />\n    <p><b>Hinweis:</b> Weitere Daten k&ouml;nnen im Benutzerprofil hinzugef&uuml;gt werden.</p>\n</form>\n<!-- END access_signup_form --> 	<!-- BEGIN access_signup_store_success -->\n<div class=\"message_ok\">{ACCESS_SIGNUP_MESSAGE}</div>\n<!-- END access_signup_store_success -->   	<!-- BEGIN access_signup_store_error -->\n<div class=\"message_error\">{ACCESS_SIGNUP_MESSAGE}</div>\n<!-- END access_signup_store_error -->   	<!-- BEGIN access_signup_confirm_success -->\n<div class=\"message_ok\">{ACCESS_SIGNUP_MESSAGE}</div>\n<!-- END access_signup_confirm_success -->   	<!-- BEGIN access_signup_confirm_error -->\n<div class=\"message_error\">{ACCESS_SIGNUP_MESSAGE}</div>\n<!-- END access_signup_confirm_error -->    	{ACCESS_JAVASCRIPT_FUNCTIONS}</div>', 'Mitglied werden', 'Mitglied werden', 'Mitglied werden', 'Mitglied werden', 'index', '', '', 'y'),
('100', '<div id=\"access\">\r\n	<div class=\"search\">\r\n		<form method=\"post\" action=\"index.php?section=access&amp;cmd=members\">\r\n			<input type=\"text\" value=\"{ACCESS_SEARCH_VALUE}\" style=\"width: 200px;\" name=\"search\" /> <input type=\"submit\" value=\"Suchen\" name=\"access_submit_search\" />\r\n		</form>\r\n	</div>\r\n	<div class=\"letter_index\">\r\n		<!-- BEGIN access_user_letter_index_list --> \r\n			<a style=\"white-space: nowrap;\" href=\"{ACCESS_USER_LETTER_INDEX_URI}\">[ {ACCESS_USER_LETTER_INDEX_LETTER} ]</a> \r\n		<!-- END access_user_letter_index_list -->\r\n	</div>\r\n	<!-- BEGIN access_members -->\r\n		<div class=\"member_list\">\r\n			<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" class=\"bottomborder\">\r\n				<tbody>\r\n					<tr>\r\n						<th>Bild</th>\r\n						<th>Benutzername</th>\r\n						<th>Herkunft</th>\r\n					</tr>\r\n					<!-- BEGIN access_user -->\r\n					<tr class=\"row{ACCESS_USER_CLASS}\">\r\n						<td><a title=\"{ACCESS_USER_USERNAME}\" href=\"index.php?section=access&amp;cmd=user&amp;id={ACCESS_USER_ID}\"><img border=\"0\" class=\"member_{ACCESS_PROFILE_ATTRIBUTE_GENDER_VALUE}\" src=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_THUMBNAIL_SRC}\" alt=\"\" /></a></td>\r\n						<td><a title=\"{ACCESS_USER_USERNAME}\" href=\"index.php?section=access&amp;cmd=user&amp;id={ACCESS_USER_ID}\">{ACCESS_USER_USERNAME}</a></td>\r\n						<td>\r\n							<!-- BEGIN access_profile_attribute_city -->{ACCESS_PROFILE_ATTRIBUTE_CITY}<br /><!-- END access_profile_attribute_city -->\r\n							<!-- BEGIN access_profile_attribute_contry -->{ACCESS_PROFILE_ATTRIBUTE_COUNTRY}<br /><!-- END access_profile_attribute_contry -->\r\n						</td>\r\n					</tr>\r\n					<!-- END access_user -->\r\n				</tbody>\r\n			</table>\r\n		</div>\r\n		<div class=\"paging\">{ACCESS_USER_PAGING}</div>\r\n	<!-- END access_members -->\r\n</div>', 'Mitglieder', 'Mitglieder', 'Mitglieder', 'Mitglieder', 'index', '', '', 'y'),
('101', '<div id=\"access\">\r\n	<div class=\"profile\">\r\n		<table cellspacing=\"0\">\r\n			<tbody>\r\n				<tr>\r\n					<th colspan=\"2\">Benutzerprofil von {ACCESS_USER_USERNAME}</th>\r\n				</tr>\r\n				<!-- BEGIN access_user_email -->\r\n				<tr class=\"row1\">\r\n					<td width=\"20%\">{ACCESS_USER_EMAIL_DESC}</td>\r\n					<td width=\"80%\">{ACCESS_USER_EMAIL}</td>\r\n				</tr>\r\n				<!-- END access_user_email -->\r\n				<!-- BEGIN access_profile_attribute_list -->\r\n				<tr class=\"row{ACCESS_PROFILE_ATTRIBUTE_CLASS}\">\r\n					<td width=\"20%\">{ACCESS_PROFILE_ATTRIBUTE_DESC}</td>\r\n					<td width=\"80%\">{ACCESS_PROFILE_ATTRIBUTE}</td>\r\n				</tr>\r\n				<!-- END access_profile_attribute_list -->\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<div class=\"functions\"><a href=\"index.php?section=access&amp;cmd=members\" title=\"Zur&uuml;ck\">&laquo; Zur&uuml;ck</a><!-- {ACCESS_REFERER} --></div>\r\n</div>', 'Benutzerinfos', 'Benutzerinfos', 'Benutzerinfos', 'Benutzerinfos', 'index', '', '', 'y'),
('102', '<h2>Kontoeinstellungen</h2>\r\n<ul>\r\n    <li><a href=\"index.php?section=access&amp;cmd=settings_account\">E-Mail Adresse / Sprache / Datenschutz &auml;ndern</a></li>\r\n</ul>\r\n<h2>Profildaten</h2>\r\n<ul>\r\n    <li><a href=\"index.php?section=access&amp;cmd=settings_profile\">Profil und Kontaktdaten anpassen / erfassen</a></li>\r\n    <li><a href=\"index.php?section=access&amp;cmd=settings_avatar\">Profilbild &auml;ndern</a></li>\r\n</ul>\r\n<h2>Kennwort</h2>\r\n<ul>\r\n    <li><a href=\"index.php?section=access&amp;cmd=settings_password\">Kennwort &auml;ndern</a></li>\r\n</ul>', 'Mein Profil', 'Mein Profil', 'Mein Profil', 'Mein Profil', 'index', '', '', 'y'),
('103', '<div id=\"access\">\r\n	<!-- BEGIN access_settings -->\r\n		<div class=\"message_error\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n		<div class=\"profile\">\r\n			<form method=\"post\" action=\"index.php?section=access&amp;cmd=settings_account\">\r\n			<p><label>{ACCESS_USER_USERNAME_DESC}</label>{ACCESS_USER_USERNAME}</p>\r\n			<p><label>{ACCESS_USER_EMAIL_DESC}</label>{ACCESS_USER_EMAIL}</p>\r\n			<p><label>{ACCESS_USER_FRONTEND_LANGUAGE_DESC}</label>{ACCESS_USER_FRONTEND_LANGUAGE}</p>\r\n			<p><label>{ACCESS_USER_EMAIL_ACCESS_DESC}</label>{ACCESS_USER_EMAIL_ACCESS}</p>\r\n			<p><label>{ACCESS_USER_PROFILE_ACCESS_DESC}</label>{ACCESS_USER_PROFILE_ACCESS}</p>\r\n			<p><input type=\"button\" value=\"Zur&uuml;ck\" onclick=\"window.location.href=\'index.php?section=access&amp;cmd=settings\'\" /> {ACCESS_STORE_BUTTON}</p>\r\n		</form>\r\n		</div>\r\n	<!-- END access_settings --> \r\n	<!-- BEGIN access_settings_done --> \r\n		<div class=\"message_ok\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n	<!-- END access_settings_done --> \r\n	{ACCESS_JAVASCRIPT_FUNCTIONS}\r\n</div>', 'Konto Einstellungen', 'Konto Einstellungen', 'Konto Einstellungen', 'Konto Einstellungen', 'index', '', '', 'y'),
('104', '<div id=\"access\">\r\n	<!-- BEGIN access_settings -->\r\n		<div class=\"message_error\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n		<div class=\"profile\">\r\n			<form enctype=\"multipart/form-data\" action=\"index.php?section=access&amp;cmd=settings_profile\" method=\"post\">\r\n				<!-- BEGIN access_profile_attribute_gender -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_GENDER_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_GENDER}</p>\r\n				<!-- END access_profile_attribute_gender --> 			\r\n				<!-- BEGIN access_profile_attribute_title -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_TITLE_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_TITLE}</p>\r\n				<!-- END access_profile_attribute_title --> 			\r\n				<!-- BEGIN access_profile_attribute_firstname -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_FIRSTNAME_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_FIRSTNAME}</p>\r\n				<!-- END access_profile_attribute_firstname --> 			\r\n				<!-- BEGIN access_profile_attribute_lastname -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_LASTNAME_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_LASTNAME}</p>\r\n				<!-- END access_profile_attribute_lastname --> 			\r\n				<!-- BEGIN access_profile_attribute_company -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_COMPANY_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_COMPANY}</p>\r\n				<!-- END access_profile_attribute_company --> 			\r\n				<!-- BEGIN access_profile_attribute_address -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_ADDRESS_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_ADDRESS}</p>\r\n				<!-- END access_profile_attribute_address --> 			\r\n				<!-- BEGIN access_profile_attribute_city -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_CITY_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_CITY}</p>\r\n				<!-- END access_profile_attribute_city --> 			\r\n				<!-- BEGIN access_profile_attribute_zip -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_ZIP_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_ZIP}</p>\r\n				<!-- END access_profile_attribute_zip --> 			\r\n				<!-- BEGIN access_profile_attribute_country -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_COUNTRY_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_COUNTRY}</p>\r\n				<!-- END access_profile_attribute_country --> 			\r\n				<!-- BEGIN access_profile_attribute_phone_office -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_PHONE_OFFICE_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_PHONE_OFFICE}</p>\r\n				<!-- END access_profile_attribute_phone_office --> 			\r\n				<!-- BEGIN access_profile_attribute_phone_private -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_PHONE_PRIVATE_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_PHONE_PRIVATE}</p>\r\n				<!-- END access_profile_attribute_phone_private --> 			\r\n				<!-- BEGIN access_profile_attribute_phone_mobile -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_PHONE_MOBILE_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_PHONE_MOBILE}</p>\r\n				<!-- END access_profile_attribute_phone_mobile --> 			\r\n				<!-- BEGIN access_profile_attribute_phone_fax -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_PHONE_FAX_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_PHONE_FAX}</p>\r\n				<!-- END access_profile_attribute_phone_fax --> 			\r\n				<!-- BEGIN access_profile_attribute_birthday -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_BIRTHDAY_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_BIRTHDAY}</p>\r\n				<!-- END access_profile_attribute_birthday --> 			\r\n				<!-- BEGIN access_profile_attribute_website -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_WEBSITE_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_WEBSITE}</p>\r\n				<!-- END access_profile_attribute_website --> 					\r\n				<!-- BEGIN access_profile_attribute_profession -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_PROFESSION_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_PROFESSION}</p>\r\n				<!-- END access_profile_attribute_profession --> 			\r\n				<!-- BEGIN access_profile_attribute_interests -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_INTERESTS_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_INTERESTS}</p>\r\n				<!-- END access_profile_attribute_interests --> 			\r\n				<!-- BEGIN access_profile_attribute_signature -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_SIGNATURE_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_SIGNATURE}</p>\r\n				<!-- END access_profile_attribute_signature -->\r\n				<p><input type=\"button\" onclick=\"window.location.href=\'index.php?section=access&amp;cmd=settings\'\" value=\"Zur&uuml;ck\" /> {ACCESS_STORE_BUTTON}</p>\r\n			</form>\r\n		</div>\r\n	<!-- END access_settings --> \r\n	<!-- BEGIN access_settings_done --> \r\n		<div class=\"message_ok\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n	<!-- END access_settings_done --> \r\n	{ACCESS_JAVASCRIPT_FUNCTIONS}\r\n</div>', 'Profildaten', 'Profildaten', 'Profildaten', 'Profildaten', 'index', '', '', 'y'),
('105', '<div id=\"access\">\r\n	<!-- BEGIN access_settings -->\r\n		<div class=\"message_error\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n		<div class=\"profile\">\r\n			<form method=\"post\" action=\"index.php?section=access&amp;cmd=settings_avatar\" enctype=\"multipart/form-data\">\r\n				<!-- BEGIN access_profile_attribute_picture -->\r\n					<input type=\"hidden\" value=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_VALUE}\" id=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_ID}\" name=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_NAME}\" />\r\n					<p><label>Aktuelles Bild</label><input type=\"hidden\" value=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_VALUE}\" id=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_ID}\" name=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_NAME}\" /><img border=\"0\" alt=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_VALUE}\" id=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_ID}_image\" src=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_SRC}\" /><a title=\"Bild l&ouml;schen\" onclick=\"document.getElementById(\'{ACCESS_PROFILE_ATTRIBUTE_PICTURE_ID}_image\').src=\'/images/access/profile/0_noavatar.gif\';document.getElementById(\'{ACCESS_PROFILE_ATTRIBUTE_PICTURE_ID}_image\').style.width=\'121px\';document.getElementById(\'{ACCESS_PROFILE_ATTRIBUTE_PICTURE_ID}_image\').style.height=\'160px\';document.getElementById(\'{ACCESS_PROFILE_ATTRIBUTE_PICTURE_ID}\').value = \'\';this.style.display=\'none\'\" href=\"javascript:void(0)\"><img width=\"17\" height=\"17\" border=\"0\" alt=\"Bild l&ouml;schen\" src=\"/images/modules/access/delete.gif\" /></a></p>\r\n					<p><label>Neues Bild setzen</label><input type=\"file\" onchange=\"this.nextSibling.style.display = this.value.length ? \'\' : \'none\';\" style=\"width: 300px;\" name=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_UPLOAD_NAME}\" /><a title=\"Bild l&ouml;schen\" onclick=\"this.previousSibling.value=\'\';this.style.display=\'none\'\" style=\"display: none;\" href=\"javascript:void(0)\"><img width=\"17\" height=\"17\" border=\"0\" style=\"vertical-align: bottom;\" alt=\"Bild l&ouml;schen\" src=\"/images/modules/access/delete.gif\" /></a><br /><br /><em>Maximal erlaubte Dateigr&ouml;sse: {ACCESS_PROFILE_ATTRIBUTE_PICTURE_MAX_FILE_SIZE}<br />Maximale Gr&ouml;&szlig;e {ACCESS_PROFILE_ATTRIBUTE_PICTURE_MAX_WIDTH}&times;{ACCESS_PROFILE_ATTRIBUTE_PICTURE_MAX_HEIGHT} Pixel, gr&ouml;&szlig;ere Bilder werden verkleinert.</em></p>\r\n				<!-- END access_profile_attribute_picture -->\r\n				<p><input type=\"button\" onclick=\"window.location.href=\'index.php?section=access&amp;cmd=settings\'\" value=\"Zur&uuml;ck\" /> {ACCESS_STORE_BUTTON}</p>\r\n			</form>\r\n		</div>\r\n	<!-- END access_settings --> \r\n	<!-- BEGIN access_settings_done --> \r\n		<div class=\"message_ok\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n	<!-- END access_settings_done --> \r\n	{ACCESS_JAVASCRIPT_FUNCTIONS}\r\n</div>', 'Profilbild ändern', 'Profilbild ändern', 'Profilbild ändern', 'Profilbild ändern', 'index', '', '', 'y'),
('106', '<div id=\"access\">		\r\n	<!-- BEGIN access_settings -->\r\n		<div class=\"message_error\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n		<div class=\"profile\">\r\n			<form action=\"index.php?section=access&amp;cmd=settings_password\" method=\"post\">\r\n				<p><label>{ACCESS_USER_CURRENT_PASSWORD_DESC}</label>{ACCESS_USER_CURRENT_PASSWORD}</p>\r\n				<p><label>{ACCESS_USER_PASSWORD_DESC}</label>{ACCESS_USER_PASSWORD}</p>\r\n				<p><label>{ACCESS_USER_PASSWORD_CONFIRMED_DESC}</label>{ACCESS_USER_PASSWORD_CONFIRMED}</p>\r\n				<p><input type=\"button\" value=\"Zur&uuml;ck\" onclick=\"window.location.href=\'index.php?section=access&amp;cmd=settings\'\" /> {ACCESS_CHANGE_PASSWORD_BUTTON}</p>\r\n			</form>\r\n		</div>\r\n	<!-- END access_settings --> \r\n	<!-- BEGIN access_settings_done --> \r\n		<div class=\"message_ok\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n	<!-- END access_settings_done --> \r\n	{ACCESS_JAVASCRIPT_FUNCTIONS}\r\n</div>', 'Kennwort', 'Kennwort', 'Kennwort', 'Kennwort', 'index', '', '', 'y'),
('107', '<div id=\"access\">\r\n	<!-- BEGIN access_settings -->\r\n		<div class=\"message_error\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n		<div class=\"profile\">\r\n			<form method=\"post\" action=\"index.php?section=access&amp;cmd=settings_delete\">\r\n				Um Dein Konto zu l&ouml;schen, musst Du Dein Kennwort eingeben<br /><br />\r\n				<p><label>Passwort</label>{ACCESS_USER_PASSWORD_INPUT}<br /><br /></p>\r\n				Deine Forum und Verzeichnis Eintr&auml;ge bleiben nach der L&ouml;schung des Kontos erhalten.<br />\r\n				Wenn Du Deine Eintr&auml;ge l&ouml;schen willst, musst Du dies vor der L&ouml;schung des Kontos erledigen.<br />\r\n				<br />\r\n				<b>ACHTUNG: Das L&ouml;schen des Kontos kann nicht r&uuml;ckg&auml;ngig gemacht werden!</b><br />\r\n				<br />\r\n				<p><label>Konto löschen</label>{ACCESS_DELETE_ACCOUNT_BUTTON}</p>\r\n			</form>\r\n		</div>\r\n	<!-- END access_settings --> \r\n	<!-- BEGIN access_settings_done --> \r\n		<div class=\"message_ok\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n	<!-- END access_settings_done --> \r\n	{ACCESS_JAVASCRIPT_FUNCTIONS}\r\n</div>', 'Konto löschen', 'Konto löschen', 'Konto löschen', 'Konto löschen', 'index', '', '', 'y'),
('109', '{LIVECAM_JAVASCRIPT}\r\n<form action=\"index.php?section=livecam\" method=\"post\" name=\"form\">\r\n	<input type=\"submit\" value=\"Aktuelles Bild\" tabindex=\"1\" accesskey=\"A\" name=\"act[current]\" />&nbsp;<input type=\"submit\" value=\"Heute\" name=\"act[today]\" style=\"border-width: 1px;\" size=\"12\" />&nbsp;<input type=\"text\" style=\"border-width: 1px;\" size=\"12\" value=\"{LIVECAM_DATE}\" id=\"DPC_datum\" name=\"date\" />&nbsp;<input type=\"submit\" value=\"Archiv Anzeigen\" name=\"act[archive]\" style=\"border-width: 1px;\" size=\"12\" />\r\n</form>\r\n<br />\r\n{LIVECAM_STATUS_MESSAGE}<br />\r\n<!-- BEGIN livecamPicture -->\r\n<a href=\"index.php?section=livecam&amp;act=today\" title=\"{LIVECAM_IMAGE_TEXT}\"><img width=\"640\" height=\"480\" border=\"0\" alt=\"{LIVECAM_IMAGE_TEXT}\" src=\"{LIVECAM_CURRENT_IMAGE}\" /></a><br />\r\nDie Seite wird jede Minute automatisch aktualisiert.  <a onclick=\"javascript:document.location.reload();\" href=\"index.php?section=livecam\">Aktualisieren.</a>\r\n<!-- END livecamPicture -->\r\n<!-- BEGIN livecamArchive -->\r\n<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n    <tbody>\r\n        <tr>\r\n            <td colspan=\"3\">\r\n            <h2>Archiv {LIVECAM_DATE}</h2>\r\n            </td>\r\n        </tr>\r\n        <!-- BEGIN livecamArchiveRow -->\r\n        <tr>\r\n            <td>\r\n            <p><!-- BEGIN livecamArchivePicture1 -->\r\n<a href=\"{LIVECAM_PICTURE_URL}\" title=\"{LIVECAM_PICTURE_TIME}\"><img src=\"{LIVECAM_THUMBNAIL_URL}\" border=\"0\" alt=\"{LIVECAM_PICTURE_TIME}\" /></a><br />{LIVECAM_PICTURE_TIME}<!-- END livecamArchivePicture1 --><br /></p>\r\n            </td>\r\n            <td>\r\n            <p><!-- BEGIN livecamArchivePicture2 -->\r\n<a href=\"{LIVECAM_PICTURE_URL}\" title=\"{LIVECAM_PICTURE_TIME}\"><img src=\"{LIVECAM_THUMBNAIL_URL}\" border=\"0\" alt=\"{LIVECAM_PICTURE_TIME}\" /></a><br />{LIVECAM_PICTURE_TIME}<!-- END livecamArchivePicture2 --><br /></p>\r\n            </td>\r\n            <td>\r\n            <p><!-- BEGIN livecamArchivePicture3 -->\r\n<a href=\"{LIVECAM_PICTURE_URL}\" title=\"{LIVECAM_PICTURE_TIME}\"><img src=\"{LIVECAM_THUMBNAIL_URL}\" border=\"0\" alt=\"{LIVECAM_PICTURE_TIME}\" /></a><br />{LIVECAM_PICTURE_TIME}<!-- END livecamArchivePicture3 --><br /></p>\r\n            </td>\r\n        </tr>\r\n        <!-- END livecamArchiveRow -->\r\n    </tbody>\r\n</table>\r\n<!-- END livecamArchive -->', 'Livecam', 'Livecam', 'Livecam', 'Livecam', 'index', '', '', 'n'),
('1111', '<div id=\"newsletter\">\r\n	<!-- BEGIN newsletter_error_message -->\r\n	<div class=\"errorMessage\">{NEWSLETTER_ERROR_MESSAGE}</div>\r\n	<!-- END newsletter_error_message -->\r\n	<!-- BEGIN newsletter_ok_message -->\r\n	<div class=\"okMessage\">{NEWSLETTER_OK_MESSAGE}</div>\r\n	<!-- END newsletter_ok_message -->\r\n	<!-- BEGIN newsletterForm -->\r\n        <div class=\"form\">\r\n	<fieldset> \r\n		<legend>Anmeldeformular</legend>\r\n		<form name=\"newsletter\" action=\"index.php?section=newsletter&amp;cmd=subscribe\" method=\"post\">\r\n			<p><label for=\"email\">{TXT_NEWSLETTER_EMAIL_ADDRESS}</label><input type=\"text\" name=\"email\" maxlength=\"255\" value=\"{NEWSLETTER_EMAIL}\" /></p>\r\n			<p><label>{TXT_NEWSLETTER_SEX}</label><input type=\"radio\" id=\"female\" name=\"sex\" value=\"f\" {NEWSLETTER_SEX_F} /><label class=\"description\" for=\"female\">{TXT_NEWSLETTER_FEMALE}</label><br /><input type=\"radio\" id=\"male\" name=\"sex\" value=\"m\" {NEWSLETTER_SEX_M} /><label class=\"description\" for=\"male\">{TXT_NEWSLETTER_MALE}</label></p>\r\n			<p><label>{TXT_NEWSLETTER_TITLE}</label>{NEWSLETTER_TITLE}</p>\r\n			<p><label for=\"lastname\">{TXT_NEWSLETTER_LASTNAME}</label><input type=\"text\" name=\"lastname\" maxlength=\"255\" value=\"{NEWSLETTER_LASTNAME}\" /></p>\r\n			<p><label for=\"firstname\">{TXT_NEWSLETTER_FIRSTNAME}</label><input type=\"text\" name=\"firstname\" maxlength=\"255\" value=\"{NEWSLETTER_FIRSTNAME}\" /></p>\r\n			<p><label for=\"company\">{TXT_NEWSLETTER_COMPANY}</label><input type=\"text\" name=\"company\" maxlength=\"255\" value=\"{NEWSLETTER_COMPANY}\" /></p>\r\n			<p><label for=\"street\">{TXT_NEWSLETTER_STREET}</label><input type=\"text\" name=\"street\" maxlength=\"255\" value=\"{NEWSLETTER_STREET}\" /></p>\r\n			<p><label for=\"zip\">{TXT_NEWSLETTER_ZIP}</label><input type=\"text\" name=\"zip\" maxlength=\"255\" value=\"{NEWSLETTER_ZIP}\" /></p>\r\n			<p><label for=\"city\">{TXT_NEWSLETTER_CITY}</label><input type=\"text\" name=\"city\" maxlength=\"255\" value=\"{NEWSLETTER_CITY}\" /></p>\r\n			<p><label for=\"country\">{TXT_NEWSLETTER_COUNTRY}</label><input type=\"text\" name=\"country\" maxlength=\"255\" value=\"{NEWSLETTER_COUNTRY}\" /></p>\r\n			<p><label for=\"phone\">{TXT_NEWSLETTER_PHONE}</label><input type=\"text\" name=\"phone\" maxlength=\"255\" value=\"{NEWSLETTER_PHONE}\" /></p>\r\n			<!-- BEGIN newsletter_lists -->\r\n					<p><input type=\"checkbox\" name=\"list[{NEWSLETTER_LIST_ID}]\" id=\"list_{NEWSLETTER_LIST_ID}\" {NEWSLETTER_LIST_SELECTED} value=\"1\" /> <label class=\"description\" for=\"list_{NEWSLETTER_LIST_ID}\">{NEWSLETTER_LIST_NAME}</label></p>\r\n			<!-- END newsletter_lists -->\r\n			 <p><input type=\"submit\" name=\"recipient_save\" value=\"{TXT_NEWSLETTER_SAVE}\" /></p>\r\n		</form>\r\n	</fieldset>\r\n        </div>\r\n	<!-- END newsletterForm -->\r\n</div>', 'Newsletter abonnieren', 'Newsletter abonnieren', 'Newsletter abonnieren', 'Newsletter abonnieren', 'index', '', '', 'y'),
('114', 'Bluesmile Theme ausgew&auml;hlt. Dies ist das Standard Theme der Contrexx 1.2 Version.<br />', 'Bluesmile', 'Bluesmile', 'Bluesmile', 'Bluesmile', 'index', '', '', 'n'),
('116', '{FORUM_JAVASCRIPT_GOTO}\r\n{FORUM_JAVASCRIPT_DELETE}\r\n{FORUM_JAVASCRIPT_INSERT_TEXT}\r\n<div id=\"forum\">\r\n	<div class=\"links\">\r\n		{FORUM_COMMUNITY_LINKS}\r\n	</div>\r\n	<div class=\"navtree\">\r\n		{FORUM_TREE}{FORUM_NAME}\r\n		<span style=\"color: rgb(255, 0, 0);\">{TXT_FORUM_ERROR}&nbsp;</span>\r\n		<span style=\"color: #006900;\">{TXT_FORUM_SUCCESS}&nbsp;</span>\r\n	</div>\r\n	<div class=\"dropdown\">\r\n		{FORUM_DROPDOWN}\r\n	</div>\r\n	<!-- BEGIN addPostAnchor -->\r\n		<div class=\"anchor\"><input onclick=\"location.href=\'#thread\';\" value=\"{TXT_FORUM_CREATE_THREAD}\" type=\"button\"></div>\r\n	<!-- END addPostAnchor -->\r\n	<div class=\"threads\">\r\n		<table cellspacing=\"0\">\r\n			<tr>\r\n				<th width=\"96%\">{TXT_THREADS_SUBJECTAUTHOR}</th>\r\n		        <th width=\"1%\" nowrap=\"nowrap\">{TXT_THREADS_LASTTOPIC}</th>\r\n		        <th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_THREADS_REPLIES}</th>\r\n		        <th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_THREADS_HITS}</th>\r\n				<th width=\"1%\" nowrap=\"nowrap\" align=\"right\">&nbsp;</th>\r\n			</tr>\r\n			<!-- BEGIN forumThreads -->\r\n			<tr class=\"row{FORUM_THREADS_ROWCLASS}\">\r\n				<td><strong><a href=\"index.php?section=forum&amp;cmd=thread&amp;id={FORUM_THREADS_ID}\" title=\"{FORUM_THREADS_NAME}\">{FORUM_THREADS_NAME}</a></strong><br /><div class=\"smallfont\">{FORUM_THREADS_AUTHOR}</div></td>\r\n				<td nowrap=\"nowrap\" class=\"smallfont\">{FORUM_THREADS_LASTPOST_AUTHOR}<br />{FORUM_THREADS_LASTPOST_DATE}</td>\r\n		        <td align=\"right\">{FORUM_THREADS_REPLIES}</td>\r\n				<td align=\"right\">{FORUM_THREADS_HITS}</td>\r\n				<td align=\"center\">\r\n				<!-- BEGIN deleteThread -->\r\n		        	<a onclick=\"deleteThread(\'{FORUM_FORUM_ID}\', \'{FORUM_THREADS_ID}\'); return false;\" href=\"index.php?section=forum&amp;cmd=board&amp;id={FORUM_FORUM_ID}&amp;act=delete&amp;threadid={FORUM_THREADS_ID}\"><img style=\"border: medium none ; vertical-align: middle;\" src=\"cadmin/images/icons/delete.gif\" title=\"Thema löschen\" alt=\"Thema löschen\" /></a>\r\n				<!-- END deleteThread -->\r\n				</td>\r\n			</tr>	\r\n			<!-- END forumThreads -->\r\n			<!-- BEGIN forumNoThreads -->\r\n			<tr class=\"row1\">\r\n				<td align=\"center\" colspan=\"5\">{TXT_FORUM_NO_THREADS}</td>\r\n			</tr>\r\n			<!-- END forumNoThreads -->\r\n		</table>\r\n	</div>\r\n	<div class=\"paging\">\r\n		{FORUM_THREADS_PAGING}\r\n	</div>\r\n	<!-- BEGIN addThread -->\r\n	<a name=\"thread\" ></a>\r\n	<div class=\"addthread\">\r\n		<h2>{TXT_FORUM_ADD_THREAD}</h2>\r\n		<form enctype=\"multipart/form-data\" name=\"frm_thread\" action=\"index.php?section=forum&amp;cmd=board&amp;id={FORUM_FORUM_ID}\" method=\"post\">\r\n			<input type=\"hidden\" name=\"category_id\" value=\"{FORUM_FORUM_ID}\" />\r\n			<input type=\"hidden\" value=\"{FORUM_PAGING_POS}\" name=\"pos\" />\r\n			<!-- <p>\r\n				<label>{TXT_FORUM_ICON}</label> -->\r\n				<!-- BEGIN icons -->\r\n				<!-- <input type=\"radio\" id=\"icons_{FORUM_ICON_VALUE}\" name=\"icons\" value=\"{FORUM_ICON_VALUE}\" /><label class=\"description\" for=\"icons_{FORUM_ICON_VALUE}\"><img src=\"{FORUM_ICON_SRC}\" alt=\"{FORUM_ICON_ALT}\" title=\"{FORUM_ICON_TITLE}\" /></label><br /> -->\r\n				<!-- END icons -->\r\n			<!-- </p> -->\r\n			<p><label for=\"thread_subject\">{TXT_FORUM_SUBJECT}</label><input type=\"text\" name=\"thread_subject\" value=\"{FORUM_SUBJECT}\" /></p>\r\n			<p><label for=\"thread_keywords\">{TXT_FORUM_KEYWORDS}</label><input onfocus=\"showToolTip(\'{TXT_FORUM_COMMA_SEPARATED_KEYWORDS}\', this, \'forumKeywordsHelp\')\" onblur=\"hideToolTip(\'forumKeywordsHelp\')\" title=\"{TXT_FORUM_COMMA_SEPARATED_KEYWORDS}\"  type=\"text\" name=\"thread_keywords\" value=\"{FORUM_KEYWORDS}\" /></p>\r\n			<p><label for=\"forum_attachment\">{TXT_FORUM_FILE_ATTACHMENT}</label><input class=\"inputtext\" type=\"file\" value=\"{FORUM_ATTACHMENT_VALUE}\" name=\"forum_attachment\" /></p>\r\n			<p><label for=\"thread_message\">{TXT_FORUM_MESSAGE}</label>{FORUM_MESSAGE_INPUT}</p>\r\n			<!-- BEGIN captcha -->\r\n			<p>\r\n				<label for=\"captcha\">Captcha-Code</label><img src=\"{FORUM_CAPTCHA_IMAGE_URL}\" title=\"{FORUM_CAPTCHA_IMAGE_ALT}\" alt=\"{FORUM_CAPTCHA_IMAGE_ALT}\" /><br />\r\n				<input type=\"text\" name=\"captcha\" /><input type=\"hidden\" name=\"offset\" value=\"{FORUM_CAPTCHA_OFFSET}\" />\r\n			</p>\r\n			<!-- END captcha -->\r\n			<!-- BEGIN notificationRow -->\r\n				<p><input id=\"forum_notify\" type=\"checkbox\" name=\"notification\" value=\"notify\" {FORUM_NOTIFICATION_CHECKBOX_CHECKED} /><label class=\"description\" for=\"forum_notify\">{TXT_FORUM_NOTIFY_NEW_POSTS}</label></p>\r\n			<!-- END notificationRow -->\r\n			<p><input type=\"reset\" value=\"{TXT_FORUM_RESET}\" />&nbsp;<input type=\"submit\" name=\"create\" value=\"{TXT_FORUM_CREATE_THREAD}\" />&nbsp;<input type=\"submit\" name=\"preview\" value=\"{TXT_FORUM_PREVIEW}\" /></p>\r\n		</form>\r\n	</div>\r\n    <!-- END addThread -->\r\n</div>', 'Forum anzeigen', 'Forum anzeigen', 'Forum anzeigen', 'Forum anzeigen', 'index', '', '', 'y'),
('117', '{FORUM_JAVASCRIPT_GOTO}\r\n{FORUM_JAVASCRIPT_DELETE} \r\n{FORUM_JAVASCRIPT_SCROLLTO}\r\n{FORUM_JAVASCRIPT_INSERT_TEXT}\r\n<div id=\"forum\">\r\n	<div class=\"links\">\r\n		{FORUM_COMMUNITY_LINKS}\r\n	</div>\r\n	<div class=\"navtree\">\r\n		{FORUM_TREE}{FORUM_NAME}\r\n		<span style=\"color: rgb(255, 0, 0);\">{TXT_FORUM_ERROR}&nbsp;</span>\r\n		<span style=\"color: #006900;\">{TXT_FORUM_SUCCESS}&nbsp;</span>\r\n	</div>\r\n	<div class=\"dropdown\">\r\n		{FORUM_DROPDOWN}\r\n	</div>\r\n	<!-- BEGIN addPostAnchor -->\r\n		<div class=\"anchor\"><input onclick=\"location.href=\'#post\';\" value=\"{TXT_FORUM_CREATE_POST}\" type=\"button\"></div>\r\n	<!-- END addPostAnchor -->\r\n	<div class=\"posts\">\r\n		<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n			<tbody>\r\n				<!-- BEGIN forumPosts -->\r\n				<tr class=\"row{FORUM_POST_ROWCLASS}\">\r\n					<th width=\"99%\"><span style=\"padding-right: 60px;\">{FORUM_USER_NAME}, {FORUM_POST_DATE} </span>\r\n						<span class=\"rating\"> {TXT_FORUM_RATING}:		{FORUM_POST_RATING}	</span>\r\n							<!-- BEGIN rating -->\r\n							<span id=\"forum_rating_{FORUM_RATING_POST_ID}\">\r\n								<a title=\"+1\" href=\"javascript:void(0);\" onclick=\"ratePost({FORUM_RATING_POST_ID}, 1);\" >\r\n								[\r\n								<span class=\"rate\">\r\n									+\r\n								</span>\r\n								]\r\n								</a>\r\n								<a title=\"-1\" href=\"javascript:void(0);\" onclick=\"ratePost({FORUM_RATING_POST_ID}, -1);\">\r\n								[\r\n								<span class=\"rate\">\r\n									-\r\n								</span>\r\n								]\r\n								</a>\r\n							</span>\r\n						<!-- END rating -->\r\n					</th>\r\n					<th width=\"1%\">{FORUM_POST_NUMBER}</th>\r\n				</tr>\r\n				<tr class=\"row{FORUM_POST_ROWCLASS}\">\r\n					<td colspan=\"2\"><h3>{FORUM_POST_ICON} {FORUM_POST_SUBJECT}</h3>{FORUM_POST_MESSAGE}  </td>\r\n				</tr>\r\n				<!-- BEGIN attachment -->\r\n				<tr class=\"row_{FORUM_POST_ROWCLASS}\">\r\n					<td colspan=\"2\">\r\n						{TXT_FORUM_FILE_ATTACHMENT}:\r\n						<a href=\"{FORUM_POST_ATTACHMENT_LINK}\">\r\n							<img alt=\"{FORUM_POST_ATTACHMENT_FILENAME}\" src=\"{FORUM_POST_ATTACHMENT_ICON}\" />\r\n							{FORUM_POST_ATTACHMENT_FILENAME} ({FORUM_POST_ATTACHMENT_FILESIZE} Bytes)\r\n						</a>\r\n					</td>\r\n				</tr>\r\n        			<!-- END attachment -->\r\n				<tr class=\"row{FORUM_POST_ROWCLASS}\">\r\n					<td colspan=\"2\" align=\"right\">\r\n						 <!-- BEGIN postEdit --><input onclick=\"location.href=\'index.php?section=forum&amp;cmd=thread&amp;id={FORUM_THREAD_ID}&amp;act=edit&amp;postid={FORUM_POST_ID}\';\" value=\"{TXT_FORUM_EDIT}\" type=\"button\">&nbsp;<!-- END postEdit -->\r\n						  <!-- BEGIN postQuote --><input onclick=\"location.href=\'index.php?section=forum&amp;cmd=thread&amp;id={FORUM_THREAD_ID}&amp;act=quote&amp;postid={FORUM_POST_ID}\';\" value=\"{TXT_FORUM_QUOTE}\" type=\"button\">&nbsp;<!-- END postQuote -->               \r\n						  <!-- BEGIN postDelete --><input onclick=\"deletePost(\'{FORUM_THREAD_ID}\', \'{FORUM_POST_ID}\'); return false;\" value=\"{TXT_FORUM_DELETE}\" type=\"button\">&nbsp;<!-- END postDelete --> \r\n					</td>\r\n				</tr>\r\n				<!-- END forumPosts -->\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<div class=\"paging\">\r\n		{FORUM_POSTS_PAGING}\r\n	</div>\r\n	<!-- BEGIN addThread --><!-- END addThread -->\r\n	<!-- BEGIN addPost -->\r\n	<a name=\"post\"></a>\r\n	<div class=\"addpost\">\r\n		<h2>{TXT_FORUM_ADD_POST}</h2>\r\n			<form enctype=\"multipart/form-data\" name=\"frm_thread\" action=\"index.php?section=forum&amp;cmd=thread&amp;id={FORUM_THREAD_ID}\" method=\"post\" onsubmit=\"setScrollPos();\">\r\n				<input type=\"hidden\" name=\"post_edit_user_id\" value=\"{FORUM_POST_EDIT_USERID}\" /> 	\r\n				<input type=\"hidden\" name=\"post_id\" value=\"{FORUM_EDIT_POST_ID}\" /> 	\r\n				<input type=\"hidden\" name=\"thread_id\" value=\"{FORUM_THREAD_ID}\" /> 	\r\n				<input type=\"hidden\" name=\"category_id\" value=\"{FORUM_CATEGORY_ID}\" /> 	\r\n				<input type=\"hidden\" name=\"pos\" value=\"{FORUM_PAGING_POS}\" />\r\n				<!-- <p>\r\n					<label>{TXT_FORUM_ICON}</label> -->\r\n					<!-- BEGIN icons -->\r\n					<!-- <input type=\"radio\" id=\"icons_{FORUM_ICON_VALUE}\" name=\"icons\" value=\"{FORUM_ICON_VALUE}\" /><label class=\"description\" for=\"icons_{FORUM_ICON_VALUE}\"><img src=\"{FORUM_ICON_SRC}\" alt=\"{FORUM_ICON_ALT}\" title=\"{FORUM_ICON_TITLE}\" /></label><br /> -->\r\n					<!-- END icons -->\r\n				<!-- </p> -->\r\n				<p><label for=\"thread_subject\">{TXT_FORUM_SUBJECT}</label><input type=\"text\" name=\"subject\" value=\"{FORUM_SUBJECT}\" /></p>\r\n				<p><label for=\"keywords\">{TXT_FORUM_KEYWORDS}</label><input onfocus=\"showToolTip(\'{TXT_FORUM_COMMA_SEPARATED_KEYWORDS}\', this, \'forumKeywordsHelp\')\" onblur=\"hideToolTip(\'forumKeywordsHelp\')\" title=\"{TXT_FORUM_COMMA_SEPARATED_KEYWORDS}\"  type=\"text\" name=\"keywords\" value=\"{FORUM_KEYWORDS}\" /></p>\r\n				<p><label for=\"forum_attachment\">{TXT_FORUM_FILE_ATTACHMENT}</label><input class=\"inputtext\" type=\"file\" value=\"{FORUM_ATTACHMENT_VALUE}\" name=\"forum_attachment\" /><a style=\"padding-left:30px;\" href=\"javascript:void(0);\" onclick=\"showAllowedExtensions();\">erlaubte Dateiendungen</a>\r\n		<!-- BEGIN delAttachment -->\r\n			    <br /><input type=\"checkbox\" id=\"delAttachment\" name=\"forum_delete_attachment\" value=\"1\" />\r\n				<label for=\"delAttachment\">{TXT_FORUM_DELETE_ATTACHMENT}</label>\r\n				<input type=\"hidden\" name=\"forum_attachment_oldname\" value=\"{FORUM_ATTACHMENT_OLDNAME}\" />\r\n		<!-- END delAttachment -->\r\n</p>\r\n				<p><label for=\"thread_message\">{TXT_FORUM_MESSAGE}<br />\r\n                                    <a style=\"font-size:0.9em;\" href=\"http://de.wikipedia.org/wiki/BBCode\" title=\"BBCode\">Über BB-Code</a></label>{FORUM_MESSAGE_INPUT}</p>\r\n				<!-- BEGIN captcha -->\r\n				<p>\r\n					<label for=\"captcha\">Captcha-Code</label><img src=\"{FORUM_CAPTCHA_IMAGE_URL}\" title=\"{FORUM_CAPTCHA_IMAGE_ALT}\" alt=\"{FORUM_CAPTCHA_IMAGE_ALT}\" /><br />\r\n					<input type=\"text\" name=\"captcha\" /><input type=\"hidden\" name=\"offset\" value=\"{FORUM_CAPTCHA_OFFSET}\" />\r\n				</p>\r\n				<!-- END captcha -->\r\n				<!-- BEGIN notificationRow -->\r\n					<p><input id=\"forum_notify\" type=\"checkbox\" name=\"notification\" value=\"notify\" {FORUM_NOTIFICATION_CHECKBOX_CHECKED} /><label class=\"description\" for=\"forum_notify\">{TXT_FORUM_NOTIFY_NEW_POSTS}</label></p>\r\n				<!-- END notificationRow -->\r\n				<p>\r\n					<input type=\"reset\" value=\"{TXT_FORUM_RESET}\" />&nbsp;\r\n					<!-- BEGIN createPost --><input type=\"submit\" name=\"create\" value=\"{TXT_FORUM_CREATE_POST}\" />&nbsp;<!-- END createPost -->                \r\n					<!-- BEGIN updatePost --><input type=\"submit\" name=\"update\" value=\"{TXT_FORUM_UPDATE_POST}\" />&nbsp;<!-- END updatePost -->                  \r\n					<!-- BEGIN previewNewPost --><input type=\"submit\" name=\"preview_new\" value=\"{TXT_FORUM_PREVIEW}\" />&nbsp;<!-- END previewNewPost -->                 \r\n					<!-- BEGIN previewEditPost --><input type=\"submit\" name=\"preview_edit\" value=\"{TXT_FORUM_PREVIEW}\" />&nbsp;<!-- END previewEditPost --> 	\r\n				</p>\r\n			</form>\r\n	</div>\r\n    <!-- END addPost -->\r\n</div>', 'Thread anzeigen', 'Thread anzeigen', 'Thread anzeigen', 'Thread anzeigen', 'index', '', '', 'y'),
('118', '{FORUM_JAVASCRIPT}\r\n{FORUM_JAVASCRIPT_GOTO}\r\n<div id=\"forum\">\r\n	<div class=\"links\">\r\n		{FORUM_COMMUNITY_LINKS}\r\n	</div>\r\n	<div class=\"navtree\">\r\n		{FORUM_TREE}{FORUM_NAME}\r\n	</div>\r\n	<div class=\"dropdown\">\r\n		{FORUM_DROPDOWN}\r\n	</div>\r\n	<div class=\"forums\">\r\n		<h2>{FORUM_MAINCATEGORY_NAME}</h2>\r\n		<table cellspacing=\"0\">\r\n			<tr>\r\n				<th width=\"99%\">{TXT_FORUM}</td>\r\n				<th width=\"1%\" nowrap=\"nowrap\">{TXT_LASTPOST}</td>\r\n				<th width=\"1%\" align=\"right\" nowrap=\"nowrap\">{TXT_THREADS}</td>\r\n				<th width=\"1%\" align=\"right\" nowrap=\"nowrap\">{TXT_POSTINGS}</td>\r\n			</tr>\r\n			<!-- BEGIN forumSubCategory -->\r\n			<tr class=\"row{FORUM_SUBCATEGORY_ROWCLASS}\">\r\n				<td><div style=\"padding-left: {FORUM_SUBCATEGORY_SPACER}px;\"><b><a href=\"index.php?section=forum&amp;cmd=board&amp;id={FORUM_SUBCATEGORY_ID}\" title=\"{FORUM_SUBCATEGORY_NAME}\">{FORUM_SUBCATEGORY_NAME}</a></b><br />{FORUM_SUBCATEGORY_DESC}</div></td>\r\n				<td nowrap=\"nowrap\" class=\"smallfont\">{FORUM_SUBCATEGORY_LASTPOST_TITLE}<br />{FORUM_SUBCATEGORY_LASTPOST_DATE}</td>\r\n				<td align=\"right\">{FORUM_SUBCATEGORY_THREADS}</td>\r\n				<td align=\"right\">{FORUM_SUBCATEGORY_POSTINGS}</td>\r\n			</tr>\r\n			<!-- END forumSubCategory -->\r\n		</table>\r\n	</div>\r\n</div>', 'Kategorie anzeigen', 'Kategorie anzeigen', 'Kategorie anzeigen', 'Kategorie anzeigen', 'index', '', '', 'y'),
('119', '{FORUM_JAVASCRIPT_NOTIFICATION}\r\n<div id=\"forum\">\r\n	<div class=\"links\">\r\n		{FORUM_COMMUNITY_LINKS}\r\n	</div>\r\n	<!-- BEGIN notification -->\r\n	<form id=\"frmForumNotification\" action=\"index.php?section=forum&amp;cmd=notification\" method=\"post\" onsubmit=\"SelectAllList(document.getElementById(\'frmForumNotification\').elements[\'subscribed[]\']);\">\r\n		<div class=\"notification\">\r\n			<h2>{TXT_FORUM_THREAD_NOTIFICATION}</h2>\r\n			<div class=\"notification_left\">\r\n				<h3>Verf&uuml;gbare Foren/Kategorien</h3>\r\n				<select name=\"unsubscribed[]\" size=\"32\" style=\"width:225px;\" multiple=\"multiple\">\r\n				{FORUM_NOTIFICATION_UNSUBSCRIBED}\r\n				</select>\r\n				<br />\r\n				<a href=\"javascript:SelectAllList(document.getElementById(\'frmForumNotification\').elements[\'unsubscribed[]\']);\">{TXT_SELECT_ALL}<br />\r\n				</a><a href=\"javascript:DeselectAllList(document.getElementById(\'frmForumNotification\').elements[\'unsubscribed[]\']);\">{TXT_DESELECT_ALL}</a><br />\r\n				<br />\r\n				<input type=\"submit\" value=\"{TXT_FORUM_NOTIFICATION_SUBMIT}\" name=\"forumNotificationSubmit\" />\r\n			</div>\r\n			<div class=\"notification_center\">\r\n				<input type=\"button\" value=\"&gt;&gt;\" name=\"adduser\" onclick=\"AddToTheList(document.getElementById(\'frmForumNotification\').elements[\'unsubscribed[]\'],document.getElementById(\'frmForumNotification\').elements[\'subscribed[]\'],adduser,removeuser);\" /><br />\r\n				<input type=\"button\" value=\"&lt;&lt;\" name=\"removeuser\" onclick=\"RemoveFromTheList(document.getElementById(\'frmForumNotification\').elements[\'unsubscribed[]\'],document.getElementById(\'frmForumNotification\').elements[\'subscribed[]\'],adduser,removeuser);\" />\r\n			</div>\r\n			<div class=\"notification_right\">\r\n				<h3>Abonnierte Foren/Kategorien</h3>\r\n				<select name=\"subscribed[]\" size=\"32\" style=\"width:225px;\" multiple=\"multiple\">\r\n				{FORUM_NOTIFICATION_SUBSCRIBED}\r\n				</select>\r\n				<br />\r\n				<a href=\"javascript:SelectAllList(document.getElementById(\'frmForumNotification\').elements[\'subscribed[]\']);\">{TXT_SELECT_ALL}<br />\r\n				</a><a href=\"javascript:DeselectAllList(document.getElementById(\'frmForumNotification\').elements[\'subscribed[]\']);\">{TXT_DESELECT_ALL}</a>\r\n			</div>\r\n		</div>\r\n	</form>\r\n	<!-- END notification -->\r\n</div>', 'Abonnierte Foren/Kategorien', 'Abonnierte Foren/Kategorien', 'Abonnierte Foren/Kategorien', 'Abonnierte Foren/Kategorien', 'index', '', '', 'y'),
('120', 'Eine <strong>Tag Cloud</strong> ist eine Methode zur Informationsvisualisierung, bei der eine Liste aus Schlagworten zweidimensional alphabetisch sortiert angezeigt wird, wobei einzelne unterschiedlich gewichtete Worte gr&ouml;sser oder auf andere Weise hervorgehoben dargestellt werden. Wortwolken werden zunehmend beim gemeinschaftlichen Indexieren und in Blogs eingesetzt. [<a target=\"_blank\" href=\"http://de.wikipedia.org/wiki/Tag_cloud\">Quelle</a>]\r\n<h2 class=\"blogTitle\">Beliebteste Tags</h2>\r\n{FORUM_TAG_HITLIST}\r\n<h2 class=\"blogTitle\">Tag Cloud</h2>\r\n<div style=\"text-align: justify; margin-top: 20px;\">{FORUM_TAG_CLOUD}</div>', 'Tag Cloud', 'Tag Cloud', 'Tag Cloud', 'Tag Cloud', 'index', '', '', 'y'),
('121', '<div id=\"forum\">\r\n	<h2>Nach Aufrufe</h2>\r\n	<div class=\"div_board\">\r\n		<ol>\r\n		<!-- BEGIN mostViewed -->\r\n		<li>\r\n			<a href=\"{FORUM_MOST_VIEWED_LINK}\" title=\"{FORUM_MOST_VIEWED_SUBJECT}\">\r\n				{FORUM_MOST_VIEWED_SUBJECT} ({FORUM_MOST_VIEWED_VIEWS} mal aufgerufen)\r\n			</a><br />\r\n			Stichworte: {FORUM_MOST_VIEWED_KEYWORDS}\r\n			Inhalt: {FORUM_MOST_VIEWED_CONTENT}\r\n		</li>\r\n		<!-- END mostViewed -->\r\n		<ol>\r\n	</div>\r\n	<h2>Nach Bewertung</h2>\r\n	<div class=\"div_board\">\r\n		<ol>\r\n		<!-- BEGIN topRated -->\r\n		<li>\r\n		<a href=\"{FORUM_TOP_RATED_LINK}\" title=\"{FORUM_SUBJECT}\">\r\n			{FORUM_TOP_RATED_SUBJECT} (Bewertung: {FORUM_TOP_RATED_RATING})\r\n		</a><br />\r\n		Stichworte: {FORUM_TOP_RATED_KEYWORDS}\r\n		Inhalt: {FORUM_TOP_RATED_CONTENT}\r\n		</li>\r\n		<!-- END topRated -->\r\n		</ol>\r\n	</div>\r\n</div>', 'Populärste Diskussionen', 'Populärste Diskussionen', 'Populärste Diskussionen', 'Populärste Diskussionen', 'index', '', '', 'y'),
('122', '<div id=\"forum\">\r\n	<div class=\"text\">\r\n		Hier kann in allen Beiträgen nach Stichworten gesucht werden. <br />\r\n		Wenn Sie auch den Inhalt der Diskussionen anstatt nur deren Stichworte durchsuchen wollen,\r\n		aktivieren Sie die das Kästchen neben dem Suchfeld. <br /> <br />\r\n	</div>\r\n	<!-- BEGIN forumError -->\r\n		<div class=\"message_error\">{FORUM_ERROR}</div>\r\n	<!-- END forumError -->\r\n	<div class=\"searchform\">\r\n		<form action=\"index.php\" method=\"get\">\r\n			<input type=\"hidden\" value=\"forum\" name=\"section\">\r\n			<input type=\"hidden\" value=\"searchTags\" name=\"cmd\">\r\n			<input style=\"width: 250px;\" type=\"text\" name=\"term\" value=\"{FORUM_SEARCH_TERM}\">  <input type=\"submit\" name=\"search\" value=\"Suchen\" /><br /><br />\r\n			<input type=\"checkbox\" value=\"1\" id=\"srchContent\" name=\"searchContent\" {FORUM_SEARCH_CONTENT_CHECKED} /><label for=\"srchContent\">Inhalt auch durchsuchen</label>\r\n		</form>\r\n	</div>\r\n	<div class=\"threads\">\r\n		<ul>\r\n			<!-- BEGIN threadList -->\r\n				<li style=\"list-item: none;\"><a title=\"{FORUM_THREAD_SUBJECT}\" href=\"{FORUM_THREAD_LINK}\"> {FORUM_THREAD_SUBJECT} </a><br />\r\n				Stichworte: {FORUM_THREAD_KEYWORDS} <br /> \r\n				Inhalt: {FORUM_THREAD_CONTENT}<br /><br /></li>\r\n			<!-- END threadList -->\r\n		</ul>\r\n	</div>\r\n</div>', 'Suche nach Tags', 'Suche nach Tags', 'Suche nach Tags', 'Suche nach Tags', 'index', '', '', 'y'),
('129', '<div id=\"data\">\r\n  <!-- BEGIN showDataCategories -->\r\n  <h4>Kategorien</h4>\r\n  <p>&nbsp;</p>\r\n  {CATEGORIES} \r\n  <!-- END showDataCategories -->\r\n  <!-- BEGIN showDataCategory -->\r\n  <dl>\r\n    <!-- BEGIN entry -->\r\n     <dt>{ENTRY_TITLE} </dt>\r\n     <dd>\r\n         {ENTRY_CONTENT}<br />\r\n         <a href=\"index.php?section=data&amp;cmd={CMD}&amp;id={ENTRY_ID}\">{TXT_MORE}</a>\r\n     </dd>\r\n    <!-- END entry -->\r\n  </dl>\r\n  <!-- END showDataCategory -->\r\n\r\n  <!-- BEGIN showDataDetails -->\r\n  <h4>{ENTRY_SUBJECT}</h4>\r\n  <p>{ENTRY_CONTENT}</p>\r\n  <!-- END showDataDetails -->\r\n</div>\r\n<p>&nbsp;</p>\r\n<p><img height=\"9\" alt=\"\" width=\"15\" src=\"/images/content/arrow.gif\" />\r\n<a href=\"javascript:history.back();\">zur&uuml;ck</a></p>\r\n', 'Datenlisten', 'Datenlisten', 'Datenlisten', 'Datenlisten', 'index', '', '', 'y'),
('660', '{CONTACT_FEEDBACK_TEXT}\n<!-- BEGIN formText -->Dies ist ein Besipielformular.<br /><!-- END formText --><br /><br />\n<div id=\"contactFormError\" style=\"color: red; display: none;\">\nBitte überprüfen Sie ihre Eingabe!\n</div>\n<br />\n<!-- BEGIN contact_form -->\n<fieldset id=\"contactFrame\">\n<legend>Kontakt Formular</legend>\n<form action=\"index.php?section=contact&amp;cmd=4\" \nmethod=\"post\" enctype=\"multipart/form-data\" onsubmit=\"return checkAllFields();\" id=\"contactForm\" class=\"contactForm\">\n<p> <label for=\"contactFormFieldId_26\">Anrede </label>\n<select class=\"contactFormClass_select\" name=\"contactFormField_26\" id=\"contactFormFieldId_26\">\n<option>Frau</option>\n<option>Herr</option>\n</select>\n</p>\n<p> <label for=\"contactFormFieldId_27\">Vorname <strong class=\"is_required\">*</strong></label>\n<input class=\"contactFormClass_text\" id=\"contactFormFieldId_27\" type=\"text\" name=\"contactFormField_27\" value=\"{27_VALUE}\" />\n</p>\n<p> <label for=\"contactFormFieldId_28\">Nachname <strong class=\"is_required\">*</strong></label>\n<input class=\"contactFormClass_text\" id=\"contactFormFieldId_28\" type=\"text\" name=\"contactFormField_28\" value=\"{28_VALUE}\" />\n</p>\n<p> <label for=\"contactFormFieldId_29\">Firma </label>\n<input class=\"contactFormClass_text\" id=\"contactFormFieldId_29\" type=\"text\" name=\"contactFormField_29\" value=\"{29_VALUE}\" />\n</p>\n<p> <label for=\"contactFormFieldId_30\">Strasse / Nr. </label>\n<input class=\"contactFormClass_text\" id=\"contactFormFieldId_30\" type=\"text\" name=\"contactFormField_30\" value=\"{30_VALUE}\" />\n</p>\n<p> <label for=\"contactFormFieldId_31\">PLZ / Ort </label>\n<input class=\"contactFormClass_text\" id=\"contactFormFieldId_31\" type=\"text\" name=\"contactFormField_31\" value=\"{31_VALUE}\" />\n</p>\n<p> <label for=\"contactFormFieldId_32\">Land </label>\n<input class=\"contactFormClass_text\" id=\"contactFormFieldId_32\" type=\"text\" name=\"contactFormField_32\" value=\"{32_VALUE}\" />\n</p>\n<p> <label for=\"contactFormFieldId_33\">Telefon </label>\n<input class=\"contactFormClass_text\" id=\"contactFormFieldId_33\" type=\"text\" name=\"contactFormField_33\" value=\"{33_VALUE}\" />\n</p>\n<p> <label for=\"contactFormFieldId_34\">Telefax </label>\n<input class=\"contactFormClass_text\" id=\"contactFormFieldId_34\" type=\"text\" name=\"contactFormField_34\" value=\"{34_VALUE}\" />\n</p>\n<p> <label for=\"contactFormFieldId_35\">E-Mail <strong class=\"is_required\">*</strong></label>\n<input class=\"contactFormClass_text\" id=\"contactFormFieldId_35\" type=\"text\" name=\"contactFormField_35\" value=\"{35_VALUE}\" />\n</p>\n<p> <label for=\"contactFormFieldId_36\">Website </label>\n<input class=\"contactFormClass_text\" id=\"contactFormFieldId_36\" type=\"text\" name=\"contactFormField_36\" value=\"{36_VALUE}\" />\n</p>\n<p> <label for=\"contactFormFieldId_37\">Dateiupload </label>\n<input class=\"contactFormClass_file\" id=\"contactFormFieldId_37\" type=\"file\" name=\"contactFormField_37\" />\n</p>\n<p> <label for=\"contactFormFieldId_38\">Datum </label>\n<input class=\"contactFormClass_date\" type=\"text\" name=\"contactFormField_38\" id=\"DPC_date38_YYYY-MM-DD\" />\n</p>\n<p> <label for=\"contactFormFieldId_39\">Bemerkungen </label>\n<textarea class=\"contactFormClass_textarea\" name=\"contactFormField_39\" id=\"contactFormFieldId_39\" rows=\"5\" cols=\"20\">{39_VALUE}</textarea>\n</p>\n<!-- BEGIN contact_form_captcha -->\n<div style=\"color: red;\">{CONTACT_CAPTCHA_ERROR}</div>\n<p>\n{TXT_CONTACT_CAPTCHA_DESCRIPTION}<br />\n</p>\n<p><span>CAPTCHA</span><img class=\"captcha\" src=\"{CONTACT_CAPTCHA_URL}\" alt=\"{CONTACT_CAPTCHA_ALT}\" />\n<input id=\"contactFormCaptcha\" type=\"text\" name=\"contactFormCaptcha\" /><br />\n<input type=\"hidden\" name=\"contactFormCaptchaOffset\" value=\"{CONTACT_CAPTCHA_OFFSET}\" />\n</p>\n<!-- END contact_form_captcha -->\n<p>\n<input class=\"contactFormClass_button\" type=\"reset\" value=\"Löschen\" /> <input class=\"contactFormClass_button\" type=\"submit\" name=\"submitContactForm\" value=\"Absenden\" />\n</p>\n</form>\n</fieldset>\n<!-- END contact_form -->\n<script src=\"lib/datepickercontrol/datepickercontrol.js\" type=\"text/javascript\"></script>\n<script type=\"text/javascript\">\n/* <![CDATA[ */\nfields = new Array();\nfields[26] = Array(\n	\'Anrede\',\n	0,\n	\'.*\',\n	\'select\');\nfields[27] = Array(\n	\'Vorname\',\n	1,\n	\'.*\',\n	\'text\');\nfields[28] = Array(\n	\'Nachname\',\n	1,\n	\'.*\',\n	\'text\');\nfields[29] = Array(\n	\'Firma\',\n	0,\n	\'.*\',\n	\'text\');\nfields[30] = Array(\n	\'Strasse / Nr.\',\n	0,\n	\'.*\',\n	\'text\');\nfields[31] = Array(\n	\'PLZ / Ort\',\n	0,\n	\'.*\',\n	\'text\');\nfields[32] = Array(\n	\'Land\',\n	0,\n	\'.*\',\n	\'text\');\nfields[33] = Array(\n	\'Telefon\',\n	0,\n	\'^[0-9]*$\',\n	\'text\');\nfields[34] = Array(\n	\'Telefax\',\n	0,\n	\'^[0-9]*$\',\n	\'text\');\nfields[35] = Array(\n	\'E-Mail\',\n	1,\n	\'^[_a-zA-Z0-9-]+(\\\\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\\\\.[a-zA-Z0-9-]+)*\\\\.(([0-9]{1,3})|([a-zA-Z]{2,3})|(aero|coop|info|museum|name))$\',\n	\'text\');\nfields[36] = Array(\n	\'Website\',\n	0,\n	\'^(ht|f)tp[s]?\\\\:\\\\/\\\\/[A-Za-z0-9\\\\-\\\\:\\\\.\\\\?\\\\&\\\\=\\\\/\\\\#\\\\%]*$\',\n	\'text\');\nfields[37] = Array(\n	\'Dateiupload\',\n	0,\n	\'.*\',\n	\'file\');\nfields[38] = Array(\n	\'Datum\',\n	0,\n	\'.*\',\n	\'date\');\nfields[39] = Array(\n	\'Bemerkungen\',\n	0,\n	\'.*\',\n	\'textarea\');\nfunction checkAllFields() {\n    var isOk = true;\n\n    for (var field in fields) {\n        var type = fields[field][3];\n        if (type == \'text\' || type == \'file\' || type == \'password\' || type == \'textarea\') {\n            value = document.getElementsByName(\'contactFormField_\' + field)[0].value;\n            if (value == \"\" && isRequiredNorm(fields[field][1], value)) {\n                isOk = false;\n                document.getElementsByName(\'contactFormField_\' + field)[0].style.border = \"red 1px solid\";\n            } else if (value != \"\" && !matchType(fields[field][2], value)) {\n                isOk = false;\n                document.getElementsByName(\'contactFormField_\' + field)[0].style.border = \"red 1px solid\";\n            } else {\n                document.getElementsByName(\'contactFormField_\' + field)[0].style.borderColor = \'\';\n            }\n        } else if (type == \'checkbox\') {\n            if (!isRequiredCheckbox(fields[field][1], field)) {\n                isOk = false;\n            }\n        } else if (type == \'checkboxGroup\') {\n            if (!isRequiredCheckBoxGroup(fields[field][1], field)) {\n                isOk = false;\n            }\n        } else if (type == \'radio\') {\n            if (!isRequiredRadio(fields[field][1], field)) {\n                isOk = false;\n            }\n        }\n    }\n\n    if (!isOk) {\n        document.getElementById(\'contactFormError\').style.display = \"block\";\n    }\n    return isOk;\n}\nfunction isRequiredNorm(required, value) {\n    if (required == 1) {\n        if (value == \"\") {\n            return true;\n        }\n    }\n    return false;\n}\nfunction matchType(pattern, value) {\n    var reg = new RegExp(pattern);\n    if (value.match(reg)) {\n        return true;\n    }\n    return false;\n}\nfunction isRequiredCheckbox(required, field) {\n    if (required == 1) {\n        if (!document.getElementsByName(\'contactFormField_\' + field)[0].checked) {\n            document.getElementsByName(\'contactFormField_\' + field)[0].style.border = \"red 1px solid\";\n            return false;\n        }\n    }\n    document.getElementsByName(\'contactFormField_\' + field)[0].style.borderColor = \'\';\n\n    return true;\n}\nfunction isRequiredCheckBoxGroup(required, field) {\n    if (required == true) {\n        var boxes = document.getElementsByName(\'contactFormField_\' + field + \'[]\');\n        var checked = false;\n        for (var i = 0; i < boxes.length; i++) {\n             if (boxes[i].checked) {\n                checked = true;\n            }\n        }\n        if (checked) {\n            setListBorder(\'contactFormField_\' + field + \'[]\', false);\n            return true;\n        } else {\n            setListBorder(\'contactFormField_\' + field + \'[]\', \'1px red solid\');\n            return false;\n        }\n    } else {\n        return true;\n    }\n}\nfunction isRequiredRadio(required, field) {\n    if (required == 1) {\n        var buttons = document.getElementsByName(\'contactFormField_\' + field);\n        var checked = false;\n        for (var i = 0; i < buttons.length; i++) {\n            if (buttons[i].checked) {\n                checked = true;\n            }\n        }\n        if (checked) {\n            setListBorder(\'contactFormField_\' + field, false);\n            return true;\n        } else {\n            setListBorder(\'contactFormField_\' + field, \'1px red solid\');\n            return false;\n        }\n    } else {\n        return true;\n    }\n}\nfunction setListBorder(field, borderColor) {\n    var boxes = document.getElementsByName(field);\n    for (var i = 0; i < boxes.length; i++) {\n        if (borderColor) {\n            boxes[i].style.border = borderColor;\n        } else {\n            boxes[i].style.borderColor = \'\';\n        }\n    }\n}\n/* ]]> */\n</script>\n', 'Kontakt Formular', 'Kontakt Formular', 'Kontakt Formular', 'Kontakt Formular', 'index', '', '', 'n'),
('662', '<p>Mit dem Datenlistenmodul k&ouml;nnen Listen angelegt und per Platzhalter &uuml;berall im CMS eingebunden werden.<br />\r\n&nbsp;</p>\r\n{DATA_LINKS}', 'Datenlisten', 'Datenlisten', 'Datenlisten', 'Datenlisten', 'index', '', '', 'n'),
('668', 'Diese Seite muss vorhanden und unsichtbar sein, damit das Datenlistenmodul funktioniert. Dieser Text wird nicht angezeigt.<br type=\"_moz\" />', 'Datenlisten Popup', 'Datenlisten Popup', 'Datenlisten Popup', 'Datenlisten Popup', 'index', '', '', 'y'),
('1117', '{MEDIA_JAVASCRIPT}\r\n<table cellspacing=\"0\" id=\"media\">\r\n  <tbody>\r\n    <tr>\r\n      <th width=\"16\" style=\"text-align: center;\"><strong>#</strong></th>\r\n      <th colspan=\"2\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_NAME_HREF}\">{TXT_MEDIA_FILE_NAME}</a>&nbsp;{MEDIA_NAME_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_SIZE_HREF}\" name=\"sort_size\">{TXT_MEDIA_FILE_SIZE}</a>&nbsp;{MEDIA_SIZE_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_TYPE_HREF}\" name=\"sort_type\">{TXT_MEDIA_FILE_TYPE}</a>&nbsp;{MEDIA_TYPE_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_DATE_HREF}\" name=\"sort_date\">{TXT_MEDIA_FILE_DATE}</a>&nbsp;{MEDIA_DATE_ICON}</th>\r\n    </tr>\r\n    <tr class=\"row2\">\r\n      <td width=\"16\" align=\"center\"><img height=\"16\" width=\"16\" title=\"base\" alt=\"base\" src=\"images/modules/media/_base.gif\" /></td>\r\n      <td colspan=\"5\">\r\n        <a title=\"{MEDIA_TREE_NAV_MAIN}\" href=\"{MEDIA_TREE_NAV_MAIN_HREF}\">{MEDIA_TREE_NAV_MAIN}</a> \r\n        <!-- BEGIN mediaTreeNavigation -->\r\n        <a href=\"{MEDIA_TREE_NAV_DIR_HREF}\">&nbsp;{MEDIA_TREE_NAV_DIR} /</a> \r\n        <!-- END mediaTreeNavigation -->\r\n      </td>\r\n    </tr>\r\n    <!-- BEGIN mediaDirectoryTree -->\r\n    <tr class=\"{MEDIA_DIR_TREE_ROW}\">\r\n      <td width=\"16\">&nbsp;</td>\r\n      <td width=\"16\" align=\"center\"><img height=\"16\" width=\"16\" title=\"icon\" alt=\"icon\" src=\"{MEDIA_FILE_ICON}\" /></td>\r\n      <td width=\"100%\"><a title=\"{MEDIA_FILE_NAME}\" href=\"{MEDIA_FILE_NAME_HREF}\">{MEDIA_FILE_NAME}</a></td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_SIZE}</td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_TYPE}</td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_DATE}</td>\r\n    </tr>\r\n    <!-- END mediaDirectoryTree -->\r\n    <!-- BEGIN mediaEmptyDirectory -->\r\n    <tr class=\"row1\">\r\n      <td>&nbsp;</td>\r\n      <td colspan=\"5\">{TXT_MEDIA_DIR_EMPTY}</td>\r\n    </tr>\r\n    <!-- END mediaEmptyDirectory -->\r\n  </tbody>\r\n</table>\r\n', 'Medienarchiv 4', 'Medienarchiv 4', 'Medienarchiv 4', 'Medienarchiv 4', 'index', '', '', 'y'),
('1118', '{MEDIA_JAVASCRIPT}\r\n<table cellspacing=\"0\" id=\"media\">\r\n  <tbody>\r\n    <tr>\r\n      <th width=\"16\" style=\"text-align: center;\"><strong>#</strong></th>\r\n      <th colspan=\"2\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_NAME_HREF}\">{TXT_MEDIA_FILE_NAME}</a>&nbsp;{MEDIA_NAME_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_SIZE_HREF}\" name=\"sort_size\">{TXT_MEDIA_FILE_SIZE}</a>&nbsp;{MEDIA_SIZE_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_TYPE_HREF}\" name=\"sort_type\">{TXT_MEDIA_FILE_TYPE}</a>&nbsp;{MEDIA_TYPE_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_DATE_HREF}\" name=\"sort_date\">{TXT_MEDIA_FILE_DATE}</a>&nbsp;{MEDIA_DATE_ICON}</th>\r\n    </tr>\r\n    <tr class=\"row2\">\r\n      <td width=\"16\" align=\"center\"><img height=\"16\" width=\"16\" title=\"base\" alt=\"base\" src=\"images/modules/media/_base.gif\" /></td>\r\n      <td colspan=\"5\">\r\n        <a title=\"{MEDIA_TREE_NAV_MAIN}\" href=\"{MEDIA_TREE_NAV_MAIN_HREF}\">{MEDIA_TREE_NAV_MAIN}</a> \r\n        <!-- BEGIN mediaTreeNavigation -->\r\n        <a href=\"{MEDIA_TREE_NAV_DIR_HREF}\">&nbsp;{MEDIA_TREE_NAV_DIR} /</a> \r\n        <!-- END mediaTreeNavigation -->\r\n      </td>\r\n    </tr>\r\n    <!-- BEGIN mediaDirectoryTree -->\r\n    <tr class=\"{MEDIA_DIR_TREE_ROW}\">\r\n      <td width=\"16\">&nbsp;</td>\r\n      <td width=\"16\" align=\"center\"><img height=\"16\" width=\"16\" title=\"icon\" alt=\"icon\" src=\"{MEDIA_FILE_ICON}\" /></td>\r\n      <td width=\"100%\"><a title=\"{MEDIA_FILE_NAME}\" href=\"{MEDIA_FILE_NAME_HREF}\">{MEDIA_FILE_NAME}</a></td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_SIZE}</td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_TYPE}</td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_DATE}</td>\r\n    </tr>\r\n    <!-- END mediaDirectoryTree -->\r\n    <!-- BEGIN mediaEmptyDirectory -->\r\n    <tr class=\"row1\">\r\n      <td>&nbsp;</td>\r\n      <td colspan=\"5\">{TXT_MEDIA_DIR_EMPTY}</td>\r\n    </tr>\r\n    <!-- END mediaEmptyDirectory -->\r\n  </tbody>\r\n</table>\r\n', 'Medienarchiv 3', 'Medienarchiv 3', 'Medienarchiv 3', 'Medienarchiv 3', 'index', '', '', 'y'),
('1119', '{MEDIA_JAVASCRIPT}\r\n<table cellspacing=\"0\" id=\"media\">\r\n  <tbody>\r\n    <tr>\r\n      <th width=\"16\" style=\"text-align: center;\"><strong>#</strong></th>\r\n      <th colspan=\"2\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_NAME_HREF}\">{TXT_MEDIA_FILE_NAME}</a>&nbsp;{MEDIA_NAME_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_SIZE_HREF}\" name=\"sort_size\">{TXT_MEDIA_FILE_SIZE}</a>&nbsp;{MEDIA_SIZE_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_TYPE_HREF}\" name=\"sort_type\">{TXT_MEDIA_FILE_TYPE}</a>&nbsp;{MEDIA_TYPE_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_DATE_HREF}\" name=\"sort_date\">{TXT_MEDIA_FILE_DATE}</a>&nbsp;{MEDIA_DATE_ICON}</th>\r\n    </tr>\r\n    <tr class=\"row2\">\r\n      <td width=\"16\" align=\"center\"><img height=\"16\" width=\"16\" title=\"base\" alt=\"base\" src=\"images/modules/media/_base.gif\" /></td>\r\n      <td colspan=\"5\">\r\n        <a title=\"{MEDIA_TREE_NAV_MAIN}\" href=\"{MEDIA_TREE_NAV_MAIN_HREF}\">{MEDIA_TREE_NAV_MAIN}</a> \r\n        <!-- BEGIN mediaTreeNavigation -->\r\n        <a href=\"{MEDIA_TREE_NAV_DIR_HREF}\">&nbsp;{MEDIA_TREE_NAV_DIR} /</a> \r\n        <!-- END mediaTreeNavigation -->\r\n      </td>\r\n    </tr>\r\n    <!-- BEGIN mediaDirectoryTree -->\r\n    <tr class=\"{MEDIA_DIR_TREE_ROW}\">\r\n      <td width=\"16\">&nbsp;</td>\r\n      <td width=\"16\" align=\"center\"><img height=\"16\" width=\"16\" title=\"icon\" alt=\"icon\" src=\"{MEDIA_FILE_ICON}\" /></td>\r\n      <td width=\"100%\"><a title=\"{MEDIA_FILE_NAME}\" href=\"{MEDIA_FILE_NAME_HREF}\">{MEDIA_FILE_NAME}</a></td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_SIZE}</td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_TYPE}</td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_DATE}</td>\r\n    </tr>\r\n    <!-- END mediaDirectoryTree -->\r\n    <!-- BEGIN mediaEmptyDirectory -->\r\n    <tr class=\"row1\">\r\n      <td>&nbsp;</td>\r\n      <td colspan=\"5\">{TXT_MEDIA_DIR_EMPTY}</td>\r\n    </tr>\r\n    <!-- END mediaEmptyDirectory -->\r\n  </tbody>\r\n</table>\r\n', 'Medienarchiv 2', 'Medienarchiv 2', 'Medienarchiv 2', 'Medienarchiv 2', 'index', '', '', 'y'),
('1122', '<div id=\"gallery\"><!-- BEGIN galleryCategories -->\r\n<div class=\"category_tree\">Sie sind hier: {GALLERY_CATEGORY_TREE}</div>\r\n<!-- BEGIN galleryCategoryList -->\r\n<div class=\"category_row_{GALLERY_STYLE}\">\r\n<div class=\"category_image\">{GALLERY_CATEGORY_IMAGE}</div>\r\n<div class=\"category_informations\">\r\n<h2>{GALLERY_CATEGORY_NAME}</h2>\r\n{GALLERY_CATEGORY_DESCRIPTION}<br />\r\n<br />\r\n{GALLERY_CATEGORY_INFO}</div>\r\n</div>\r\n<!-- END galleryCategoryList --> 	<!-- CATEGORY END AND IMAGES START -->    	<!-- BEGIN galleryImageBlock -->  	{GALLERY_JAVASCRIPT}\r\n<div class=\"category_comment\">{GALLERY_CATEGORY_COMMENT}</div>\r\n<!-- BEGIN galleryShowImages -->\r\n<div class=\"category_images\">\r\n<div class=\"image\">{GALLERY_IMAGE1}<br />\r\n{GALLERY_IMAGE_LINK1}</div>\r\n<div class=\"image\">{GALLERY_IMAGE2}<br />\r\n{GALLERY_IMAGE_LINK2}</div>\r\n<div class=\"image\">{GALLERY_IMAGE3}<br />\r\n{GALLERY_IMAGE_LINK3}</div>\r\n</div>\r\n<!-- END galleryShowImages -->\r\n<div class=\"category_paging\">{GALLERY_PAGING}</div>\r\n<!-- END galleryImageBlock -->  	<!-- END galleryCategories -->   	<!-- BEGIN galleryImage -->\r\n<div class=\"category_tree\">Sie sind hier: {GALLERY_CATEGORY_TREE}</div>\r\n<div class=\"show_image\"><img border=\"0\" style=\"margin-top: 2px;\" src=\"{GALLERY_IMAGE_PATH}\" id=\"image\" alt=\"\" /><br />\r\n{GALLERY_IMAGE_TITLE} ({GALLERY_IMAGE_FILESIZE})<br />\r\n{GALLERY_IMAGE_DESCRIPTION}</div>\r\n<div class=\"image_navigation\"><a title=\"{TXT_GALLERY__PREVIOUS_IMAGE}\" href=\"{GALLERY_IMAGE_PREVIOUS}\"><img alt=\"{TXT_GALLERY__PREVIOUS_IMAGE}\" style=\"border: 0px none ; margin-left: 10px; margin-right: 5px; width: 18px; height: 18px;\" src=\"images/modules/gallery/previous.gif\" /></a>&nbsp; 		<a title=\"{TXT_GALLERY__NEXT_IMAGE}\" href=\"{GALLERY_IMAGE_NEXT}\"><img alt=\"{TXT_GALLERY__NEXT_IMAGE}\" style=\"border: 0px none ; margin-left: 5px; margin-right: 10px; width: 18px; height: 18px;\" src=\"images/modules/gallery/next.gif\" /></a></div>\r\n<div class=\"image_voting\"><!-- BEGIN votingTab -->\r\n<table>\r\n    <tbody>\r\n        <tr>\r\n            <th><a href=\"javascript:showOrHide(\'votingDiv\');\">{TXT_VOTING_TITLE}</a></th>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<div id=\"votingDiv\" style=\"width: 100%; display: none; text-align: center;\">\r\n<table>\r\n    <tbody>\r\n        <tr>\r\n            <td><!-- BEGIN showVotingBar --> 						<a href=\"index.php?section=gallery&amp;cid={VOTING_BAR_CID}&amp;pId={VOTING_BAR_PICID}&amp;mark={VOTING_BAR_MARK}\" title=\"{VOTING_BAR_ALT}\"><img align=\"bottom\" src=\"{VOTING_BAR_SRC}\" alt=\"{VOTING_BAR_ALT}\" style=\"border: 0px none ; margin-left: 1px; margin-top: 3px;\" /></a> 												<!-- END showVotingBar --> 						<br />\r\n            {TXT_VOTING_ALREADY_VOTED}&nbsp;<strong>{VOTING_ALREADY_VOTED_MARK}</strong> 						{TXT_VOTING_STATS_ACTUAL}:&nbsp;&Oslash;&nbsp;<strong>{VOTING_STATS_MARK}</strong>&nbsp;{TXT_VOTING_STATS_WITH}&nbsp;<strong>{VOTING_STATS_VOTES}</strong>&nbsp;{TXT_VOTING_STATS_VOTES} 					</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n<!-- END votingTab --></div>\r\n<div class=\"image_comment\"><!-- BEGIN commentTab -->\r\n<table>\r\n    <tbody>\r\n        <tr>\r\n            <th><a href=\"javascript:showOrHide(\'commentDiv\');\">{TXT_COMMENTS_TITLE}</a></th>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<div id=\"commentDiv\" style=\"width: 100%; display: none; text-align: left;\">\r\n<form method=\"post\" name=\"frmGalComAdd\" action=\"index.php?section=gallery&amp;pId={GALLERY_PICTURE_ID}\">\r\n    <input type=\"hidden\" name=\"frmGalComAdd_PicId\" value=\"{GALLERY_PICTURE_ID}\" /> 	 		<input type=\"hidden\" value=\"{GALLERY_CATEGORY_ID}\" name=\"frmGalComAdd_GalId\" />\r\n    <table>\r\n        <tbody>\r\n            <!-- BEGIN showComments -->\r\n            <tr class=\"row{COMMENTS_ROWCLASS}\">\r\n                <td width=\"20%\" valign=\"top\" nowrap=\"nowrap\"><strong>{COMMENTS_NAME}</strong><br />\r\n                <em>{COMMENTS_DATE}</em><br />\r\n                {COMMENTS_WWW}&nbsp;{COMMENTS_EMAIL} 					</td>\r\n                <td width=\"80%\" valign=\"top\" class=\"row_{COMMENTS_ROWCLASS}\">{COMMENTS_TEXT}</td>\r\n            </tr>\r\n            <!-- END showComments -->\r\n        </tbody>\r\n    </table>\r\n    <table>\r\n        <tbody>\r\n            <tr>\r\n                <th colspan=\"2\">{TXT_COMMENTS_ADD_TITLE}</th>\r\n            </tr>\r\n            <tr class=\"row1\">\r\n                <td width=\"20%\" nowrap=\"nowrap\" align=\"left\" class=\"row1\"><strong>{TXT_COMMENTS_ADD_NAME}:</strong></td>\r\n                <td width=\"80%\" align=\"left\" class=\"row1\"><input type=\"text\" name=\"frmGalComAdd_Name\" style=\"width: 400px;\" /></td>\r\n            </tr>\r\n            <tr class=\"row2\">\r\n                <td nowrap=\"nowrap\" align=\"left\" class=\"row2\"><strong>{TXT_COMMENTS_ADD_EMAIL}:</strong></td>\r\n                <td align=\"left\" class=\"row2\"><input type=\"text\" name=\"frmGalComAdd_Email\" style=\"width: 400px;\" /></td>\r\n            </tr>\r\n            <tr class=\"row1\">\r\n                <td nowrap=\"nowrap\" align=\"left\" class=\"row1\"><strong>{TXT_COMMENTS_ADD_HOMEPAGE}:</strong></td>\r\n                <td align=\"left\" class=\"row1\"><input type=\"text\" name=\"frmGalComAdd_Homepage\" value=\"http://\" style=\"width: 400px;\" /></td>\r\n            </tr>\r\n            <tr class=\"row2\">\r\n                <td valign=\"top\" nowrap=\"nowrap\" align=\"left\" class=\"row2\"><strong>{TXT_COMMENTS_ADD_TEXT}:</strong></td>\r\n                <td align=\"left\" class=\"row2\"><textarea name=\"frmGalComAdd_Text\" cols=\"20\" rows=\"5\" style=\"width: 400px; height: 80px;\"></textarea></td>\r\n            </tr>\r\n            <tr class=\"row1\">\r\n                <td class=\"row1\">&nbsp;</td>\r\n                <td class=\"row1\">\r\n                <div align=\"left\"><input type=\"submit\" name=\"frmGalComAdd_Submit\" value=\"{TXT_COMMENTS_ADD_SUBMIT}\" /></div>\r\n                </td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n</form>\r\n</div>\r\n<!-- END commentTab --></div>\r\n<script language=\"javascript\" type=\"text/javascript\">\r\n	<!-- \r\n	// show and hide blocks\r\n	function showOrHide(strElement)\r\n	{\r\n		if (document.getElementById(strElement).style.display == \'block\'){\r\n			document.getElementById(strElement).style.display = \'none\';\r\n		} else {\r\n			document.getElementById(strElement).style.display = \'block\';\r\n		}\r\n	}\r\n	//-->\r\n	</script>  	<!-- END galleryImage --></div>', 'Bildergalerie', 'Bildergalerie', 'Bildergalerie', 'Bildergalerie', 'index', '', '', 'y'),
('1123', '<div class=\"ecardContainer\">\r\n<form id=\"ecardForm\" method=\"post\" onsubmit=\"return checkInput();\" action=\"index.php?section=ecard&amp;cmd=preview\">\r\n<fieldset id=\"motiveFieldset\">\r\n<legend>1. Motiv w&auml;hlen</legend>\r\n<!-- BEGIN motiveBlock -->\r\n<!-- BEGIN motiveRow -->\r\n<div class=\"ecardColumn[[CSSNUMBER]]\">\r\n<label><img src=\"[[THUMBNAIL_PATH]]\" alt=\"[[THUMBNAIL_PATH]]\" /><a rel=\"lytebox\" href=\"[[MOTIVE_OPTIMIZED_PATH]]\"><img style=\"border:0px;\" src=\"images/modules/ecard/zoom.gif\" alt=\"zoom\" /></a><input type=\"radio\" style=\"width: 20px; height: 13px;\" name=\"selectedEcard\" value=\"[[MOTIVE_ID]]\" /></label>\r\n</div>\r\n<!-- END motiveRow -->\r\n<!-- END motiveBlock -->\r\n</fieldset>\r\n<fieldset>\r\n<legend>2. Empf&auml;nger eintragen</legend>\r\n<label class=\"fieldDescription\" id=\"fieldDescription_salutation\">Anrede des Empf&auml;ngers:</label>\r\n<input type=\"radio\" name=\"ecardReceiverSalutation\" id=\"ecardReceiverSalutation\" value=\"Herr\" />Herr\r\n<input type=\"radio\" name=\"ecardReceiverSalutation\" id=\"ecardReceiverSalutation\" value=\"Frau\" />Frau<br />\r\n<br />\r\n<label class=\"fieldDescription\">Name des Empf&auml;ngers:</label>\r\n<input type=\"text\" name=\"ecardReceiverName\" id=\"ecardReceiverName\" value=\"[[POST_RECEIVERNAME]]\" /><br />\r\n<br />\r\n<label class=\"fieldDescription\">E-Mail-Adresse des Empf&auml;ngers:</label>\r\n<input type=\"text\" name=\"ecardReceiverEmail\" id=\"ecardReceiverEmail\" value=\"[[POST_RECEIVEREMAIL]]\" /><br />\r\n<br />\r\n<label class=\"fieldDescription\">Name des Absenders:</label>\r\n<input type=\"text\" name=\"ecardSenderName\" id=\"ecardSenderName\" value=\"[[POST_SENDERNAME]]\" /><br />\r\n<br />\r\n<label class=\"fieldDescription\">E-Mail-Adresse des Absenders:</label>\r\n<input type=\"text\" name=\"ecardSenderEmail\" id=\"ecardSenderEmail\" value=\"[[POST_SENDEREMAIL]]\" /><br />\r\n<br />\r\n<label>Geben Sie Ihre Nachricht ein:</label><br />\r\n<br />\r\n<textarea onkeypressed=\"checkAllFields();\" onkeyup=\"checkAllFields();\" name=\"ecardMessage\" id=\"ecardMessage\" cols=\"68\" rows=\"6\">[[POST_MESSAGE]]</textarea><br />\r\nNoch <input type=\"text\" value=\"[[MAX_CHARACTERS]]\" id=\"charCounter\" class=\"charCounterField\" /> Zeichen zur Verf&uuml;gung<br />\r\nNoch <input type=\"text\" value=\"[[MAX_LINES]]\" id=\"lineCounter\" class=\"charCounterField\" /> Zeilen zur Verf&uuml;gung<br />\r\n<br />\r\n<input type=\"submit\" value=\"E-Card Vorschau\" />\r\n</fieldset>\r\n</form>\r\n</div>\r\n\r\n[[JS_CODE]]', 'E-Cards', 'E-Cards', 'E-Cards', 'E-Cards', 'index', '', '', 'y');

#--------------------------------------------------------------
# Table:	contrexx_content_history
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_content_history`;

CREATE TABLE `contrexx_content_history` (
 `id` int(8) unsigned NOT NULL default '0',
 `page_id` int(7) unsigned NOT NULL default '0',
 `content` mediumtext NOT NULL,
 `title` varchar(250) NOT NULL default '',
 `metatitle` varchar(250) NOT NULL default '',
 `metadesc` varchar(250) NOT NULL default '',
 `metakeys` text NOT NULL,
 `metarobots` varchar(7) NOT NULL default 'index',
 `css_name` varchar(50) NOT NULL default '',
 `redirect` varchar(255) NOT NULL default '',
 `expertmode` set('y','n') NOT NULL default 'n',
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  FULLTEXT KEY `fulltextindex` (`title`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_content_history` (`id`, `page_id`, `content`, `title`, `metatitle`, `metadesc`, `metakeys`, `metarobots`, `css_name`, `redirect`, `expertmode`) VALUES 
('1', '40', '<div id=\"shop\">\r\n  <!-- BEGIN shopCart -->\r\n  <div class=\"cart\">\r\n    <form action=\"index.php?section=shop&amp;cmd=cart\" name=\"shopForm\" method =\"post\">\r\n      <table summary=\"\" cellspacing=\"0\">\r\n        <tr valign=\"top\">\r\n          <th width=\"69%\"><div align=\"left\"><b>&nbsp;{TXT_PRODUCT}</b></div></th>\r\n          <th width=\"10%\"><div align=\"right\"><b>&nbsp;{TXT_UNIT_PRICE}</b></div></th>\r\n          <th width=\"1%\"><div align=\"right\"><b>&nbsp;{TXT_QUANTITY}</b></div></th>\r\n          <th width=\"10%\"><div align=\"right\"><b>{TXT_TOTAL}&nbsp;</b></div></th>\r\n        </tr>\r\n        <!-- BEGIN shopCartRow -->\r\n        <tr valign=\"top\" class=\"{SHOP_PRODUCT_ROW}\">\r\n          <td><div align=\"left\"><a href =\"index.php?section=shop&amp;cmd=details&amp;referer=cart&amp;productId={SHOP_PRODUCT_CART_ID}\">{SHOP_PRODUCT_TITLE}</a>{SHOP_PRODUCT_OPTIONS}</div></td>\r\n          <td><div align=\"right\">{SHOP_PRODUCT_ITEMPRICE}&nbsp;{SHOP_PRODUCT_ITEMPRICE_UNIT}</div></td>\r\n          <td><div align=\"right\"><input class=\"form\" type=\"text\" name=\"quantity[{SHOP_PRODUCT_CART_ID}]\" value=\"{SHOP_PRODUCT_QUANTITY}\" style=\"width: 30px;\"/></div></td>\r\n          <td><div align=\"right\"><b>{SHOP_PRODUCT_PRICE}&nbsp;{SHOP_PRODUCT_PRICE_UNIT}</b></div></td>\r\n        </tr>\r\n        <!-- END shopCartRow -->\r\n        <tr class=\"row3\">\r\n          <td colspan=\"2\" valign=\"top\"><div align=\"left\">{TXT_TAX_PREFIX}</div></td>\r\n          <td valign=\"top\"><div align=\"right\">{SHOP_PRODUCT_TAX_RATE}</div></td>\r\n          <td width=\"25%\" valign=\"top\" nowrap=\"nowrap\">\r\n            <div align=\"right\">{SHOP_TOTAL_TAX_AMOUNT}</div>\r\n          </td>\r\n        </tr>\r\n        <tr>\r\n          <td colspan=\"4\" valign=\"top\">&nbsp;</td>\r\n        </tr>\r\n        <tr class=\"row3\">\r\n          <td colspan=\"3\" valign=\"top\"><div align=\"left\"><b>{TXT_INTER_TOTAL}</b></div></td>\r\n          <td width=\"25%\" valign=\"top\" nowrap=\"nowrap\">\r\n            <div align=\"right\"><strong>{SHOP_PRODUCT_TOTALPRICE} {SHOP_PRODUCT_TOTALPRICE_UNIT}</strong></div>\r\n          </td>\r\n        </tr>\r\n        <tr>\r\n          <td colspan=\"4\" valign=\"top\">&nbsp;</td>\r\n        </tr>\r\n        <tr class=\"row3\">\r\n          <td colspan=\"2\" valign=\"top\">\r\n            <!-- BEGIN shopShippingCountry -->\r\n            <div align=\"left\"><strong>{TXT_SHIP_COUNTRY}</strong> {SHOP_COUNTRIES_MENU}</div>\r\n            <!-- END shopShippingCountry -->\r\n          </td>\r\n          <td colspan=\"2\" valign=\"top\"><div align=\"right\"><input type=\"submit\" name=\"update\" class=\"shopbutton\" value=\"{TXT_UPDATE}\" />&nbsp;<input type=\"submit\" name=\"continue\" class=\"shopbutton\" value=\"{TXT_NEXT} >>\" /></div></td>\r\n        </tr>\r\n      </table>\r\n    </form>\r\n  </div>\r\n  <!-- END shopCart -->\r\n  <div class=\"cart_links\">\r\n    <a href=\"index.php?section=shop\" title=\"{TXT_CONTINUE_SHOPPING}\">{TXT_CONTINUE_SHOPPING}</a><br />\r\n    <a href=\"index.php?section=shop&amp;act=destroy\" title=\"{TXT_EMPTY_CART}\">{TXT_EMPTY_CART}</a><br />\r\n  </div>\r\n</div>\r\n', 'Ihr Warenkorb', 'Ihr Warenkorb', 'Ihr Warenkorb', 'Ihr Warenkorb', 'index', '', '', 'y'),
('2', '0', '', '', '', '', '', 'noindex', '', '', 'n');

#--------------------------------------------------------------
# Table:	contrexx_content_logfile
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_content_logfile`;

CREATE TABLE `contrexx_content_logfile` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `action` set('new','update','delete') NOT NULL default 'new',
 `history_id` int(10) unsigned NOT NULL default '0',
 `is_validated` set('0','1') NOT NULL default '0',
  PRIMARY KEY (`id`),
  KEY `history_id` (`history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3;

INSERT INTO `contrexx_content_logfile` (`id`, `action`, `history_id`, `is_validated`) VALUES 
('1', 'update', '1', '1'),
('2', 'update', '2', '1');

#--------------------------------------------------------------
# Table:	contrexx_content_navigation
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_content_navigation`;

CREATE TABLE `contrexx_content_navigation` (
 `catid` int(6) unsigned NOT NULL auto_increment,
 `is_validated` set('0','1') NOT NULL default '1',
 `parcat` int(6) unsigned NOT NULL default '0',
 `catname` varchar(100) NOT NULL default '',
 `target` varchar(10) NOT NULL default '',
 `displayorder` smallint(6) unsigned NOT NULL default '1000',
 `displaystatus` set('on','off') NOT NULL default 'on',
 `activestatus` set('0','1') NOT NULL default '1',
 `cachingstatus` set('0','1') NOT NULL default '1',
 `username` varchar(40) NOT NULL default '',
 `changelog` int(14) NULL,
 `cmd` varchar(50) NOT NULL default '',
 `lang` tinyint(2) unsigned NOT NULL default '1',
 `module` tinyint(2) unsigned NOT NULL default '0',
 `startdate` date NOT NULL default '0000-00-00',
 `enddate` date NOT NULL default '0000-00-00',
 `protected` tinyint(4) NOT NULL default '0',
 `frontend_access_id` int(11) unsigned NOT NULL default '0',
 `backend_access_id` int(11) unsigned NOT NULL default '0',
 `themes_id` int(4) NOT NULL default '0',
 `css_name` varchar(255) NOT NULL default '',
  PRIMARY KEY (`catid`),
  KEY `parcat` (`parcat`),
  KEY `module` (`module`),
  KEY `catname` (`catname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1124;

INSERT INTO `contrexx_content_navigation` (`catid`, `is_validated`, `parcat`, `catname`, `target`, `displayorder`, `displaystatus`, `activestatus`, `cachingstatus`, `username`, `changelog`, `cmd`, `lang`, `module`, `startdate`, `enddate`, `protected`, `frontend_access_id`, `backend_access_id`, `themes_id`, `css_name`) VALUES 
('1', '1', '0', 'Willkommen', '', '1', 'on', '1', '0', 'system', '1213713095', '', '1', '15', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('2', '1', '1', 'Contrexx Support', '', '2', 'on', '1', '0', 'system', '1210355564', '', '1', '0', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('3', '1', '0', 'Contrexx Module', '', '3', 'on', '1', '0', 'system', '1210166173', '', '1', '0', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('4', '1', '0', 'News', '', '2', 'on', '1', '0', 'system', '1211980421', '', '1', '8', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('5', '1', '4', 'Newsmeldung', '', '99', 'off', '1', '0', 'system', '1212566985', 'details', '1', '8', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('6', '1', '4', 'News anmelden', '', '99', 'off', '1', '0', 'system', '1197884515', 'submit', '1', '8', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('7', '1', '4', 'News Feed', '', '1', 'on', '1', '0', 'system', '1213721233', 'feed', '1', '8', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('1114', '1', '1', 'Seite weiterempfehlen', '', '111', 'on', '1', '0', 'system', '1218552152', '', '1', '27', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('1113', '1', '0', 'Podcast', '', '111', 'on', '1', '0', 'system', '1218786163', '', '1', '35', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('1112', '1', '1108', 'Newsletter abmelden', '', '99', 'off', '1', '0', 'system', '1216802182', 'unsubscribe', '1', '4', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('1111', '1', '1108', 'Newsletter abonnieren', '', '99', 'off', '1', '0', 'system', '1216802182', 'subscribe', '1', '4', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('1110', '1', '1108', 'Newsletter Profil bearbeiten', '', '99', 'off', '1', '0', 'system', '1216802182', 'profile', '1', '4', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('13', '1', '3', 'Kalender', '', '1', 'on', '1', '0', 'system', '1210089696', '', '1', '21', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('14', '1', '13', 'Veranstaltungs Information', '', '99', 'off', '1', '0', 'system', '1192437230', 'event', '1', '21', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('15', '1', '13', 'Auflistung aller Events', '', '0', 'on', '1', '0', 'system', '1202306789', 'eventlist', '1', '21', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('16', '1', '13', 'Quartalsübersicht', '', '1', 'on', '1', '0', 'system', '1213263354', 'boxes', '1', '21', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('1109', '1', '1108', 'Newsletter bestätigen', '', '99', 'off', '1', '0', 'system', '1216802182', 'confirm', '1', '4', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('19', '1', '97', 'Alert System', '', '999', 'off', '1', '0', 'system', '1197910776', '', '1', '13', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('20', '1', '97', 'Fehlermeldung', '', '999', 'off', '1', '0', 'system', '1211975646', '', '1', '14', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('21', '1', '97', 'Login', '', '999', 'off', '1', '0', 'system', '1197910795', '', '1', '18', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('22', '1', '21', 'Passwort vergessen?', '', '0', 'off', '1', '0', 'system', '1162319761', 'lostpw', '1', '18', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('23', '1', '21', 'Neues Passwort setzen', '', '0', 'off', '1', '0', 'system', '1162319761', 'resetpw', '1', '18', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('24', '1', '21', 'Zugriff verweigert', '', '0', 'off', '1', '0', 'system', '1162319761', 'noaccess', '1', '18', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('25', '1', '0', 'Community Module', '', '4', 'on', '1', '0', 'system', '1213110814', '', '1', '23', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('29', '1', '3', 'Gästebuch', '', '6', 'on', '1', '0', 'system', '1210086758', '', '1', '10', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('30', '1', '29', 'Eintragen', '', '0', 'on', '1', '0', 'system', '1212675575', 'post', '1', '10', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('31', '1', '3', 'Online Shop', '', '6', 'on', '1', '0', 'system', '1218552120', '', '1', '16', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('32', '1', '31', 'AGBs', '', '99', 'off', '1', '0', 'system', '1213271163', 'terms', '1', '16', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('33', '1', '31', 'Mein Konto', '', '99', 'off', '1', '0', 'system', '1210151841', 'login', '1', '16', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('34', '1', '31', 'Transaktionsstatus', '', '99', 'off', '1', '0', 'system', '1211546012', 'success', '1', '16', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('35', '1', '31', 'Detaillierte Produktedaten', '', '99', 'off', '1', '0', 'system', '1210752250', 'details', '1', '16', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('36', '1', '31', 'Bestellen', '', '99', 'off', '1', '0', 'system', '1210495903', 'confirm', '1', '16', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('37', '1', '31', 'Bezahlung und Versand', '', '99', 'off', '1', '0', 'system', '1210151850', 'payment', '1', '16', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('38', '1', '31', 'Kontoangaben', '', '99', 'off', '1', '0', 'system', '1210495257', 'account', '1', '16', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('39', '1', '31', 'Sonderangebote', '', '0', 'on', '1', '0', 'system', '1192698743', 'discounts', '1', '16', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('40', '1', '31', 'Ihr Warenkorb', '', '1', 'on', '1', '0', 'system', '1225462213', 'cart', '1', '16', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('41', '1', '33', 'Kennwort ändern', '', '99', 'off', '1', '0', 'system', '1213271020', 'changepass', '1', '16', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('42', '1', '33', 'Passwort Hilfe', '', '99', 'off', '1', '0', 'system', '1176473097', 'sendpass', '1', '16', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('43', '1', '25', 'Verzeichnis', '', '4', 'on', '1', '0', 'system', '1213167201', '', '1', '12', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('44', '1', '43', 'Vote', '', '99', 'off', '1', '0', 'system', '1177080310', 'vote', '1', '12', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('45', '1', '43', 'Suche', '', '99', 'off', '1', '0', 'system', '1213167232', 'search', '1', '12', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('46', '1', '43', 'Neue Einträge', '', '0', 'on', '1', '0', 'system', '1213271077', 'latest', '1', '12', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('47', '1', '43', 'Eintrag anzeigen', '', '99', 'off', '1', '0', 'system', '1213087291', 'detail', '1', '12', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('48', '1', '43', 'Eintrag erstellen', '', '2', 'on', '1', '0', 'system', '1213167340', 'add', '1', '12', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('49', '1', '43', 'Meine Einträge', '', '1', 'on', '1', '0', 'system', '1213271092', 'myfeeds', '1', '12', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('50', '1', '49', 'Eintrag editieren', '', '99', 'off', '1', '0', 'system', '1210002658', 'edit', '1', '12', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('53', '1', '25', 'Forum', '', '3', 'on', '1', '0', 'system', '1211376645', '', '1', '20', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('58', '1', '3', 'Onlinedesk', '', '7', 'on', '1', '0', 'system', '1213110838', '', '1', '38', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('59', '1', '58', 'Onlinedesk / Bestellung', '', '99', 'off', '1', '0', 'system', '1213110849', 'detail', '1', '38', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('60', '1', '31', 'Einzugsermächtigung', '_blank', '2', 'on', '1', '0', 'system', '1210152025', 'einzug', '1', '16', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('61', '1', '25', 'Inserate Markt', '', '5', 'on', '1', '0', 'system', '1213167520', '', '1', '33', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('62', '1', '61', 'Inserat Suchen', '', '0', 'on', '1', '0', 'system', '1213167574', 'search', '1', '33', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('63', '1', '61', 'Inserat erstellen', '', '1', 'on', '1', '0', 'system', '1177311044', 'add', '1', '33', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('64', '1', '61', 'Inserat anzeigen', '', '99', 'off', '1', '0', 'system', '1213184816', 'detail', '1', '33', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('65', '1', '64', 'Mitteilung verschickt', '', '99', 'off', '1', '0', 'system', '1213167679', 'send', '1', '33', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('66', '1', '63', 'Inserat löschen', '', '99', 'off', '1', '0', 'system', '1213271059', 'del', '1', '33', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('67', '1', '63', 'Inserat editieren', '', '99', 'off', '1', '0', 'system', '1177311419', 'edit', '1', '33', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('68', '1', '63', 'Insarat Aktivieren', '', '99', 'off', '1', '0', 'system', '1177315804', 'confirm', '1', '33', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('69', '1', '68', 'Freischaltcode Eingeben', '', '99', 'off', '1', '0', 'system', '1177315565', 'paypal_successfull', '1', '33', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('70', '1', '68', 'PayPal fehlgeschlagen', '', '99', 'off', '1', '0', 'system', '1177315448', 'paypal_error', '1', '33', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('71', '1', '1', 'Sitemap', '', '555', 'on', '1', '0', 'system', '1213709325', '', '1', '11', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('72', '1', '3', 'Dokumentensystem', '', '8', 'on', '1', '0', 'system', '1210686938', '', '1', '19', '0000-00-00', '0000-00-00', '0', '0', '5', '0', ''),
('73', '1', '72', 'Detailansicht', '', '99', 'off', '1', '0', 'system', '1212566846', 'details', '1', '19', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('74', '1', '3', 'RSS Feed Verzeichnis', '', '6', 'on', '1', '0', 'system', '1210098333', '', '1', '22', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('75', '1', '74', 'Newsmeldung', '', '99', 'off', '1', '0', 'system', '1176798670', 'newsML', '1', '22', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('76', '1', '88', 'Adressverzeichnis', '', '99', 'off', '1', '0', 'system', '1192008317', '', '1', '31', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('1108', '1', '3', 'Newsletter abonnieren', '', '111', 'on', '1', '0', 'system', '1218552137', '', '1', '4', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('78', '1', '3', 'Downloads', '', '5', 'on', '1', '0', 'system', '1216801860', '', '1', '9', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('79', '1', '97', 'Datenschutz', '', '555', 'off', '1', '0', 'system', '1197910690', '', '1', '46', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('80', '1', '97', 'Impressum', '', '555', 'off', '1', '0', 'system', '1213721538', '', '1', '44', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('81', '1', '97', 'AGBs', '', '555', 'off', '1', '0', 'system', '1197910598', '', '1', '45', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('82', '1', '1', 'Was ist Contrexx?', '', '0', 'on', '1', '0', 'system', '1209978717', '', '1', '0', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('83', '1', '1', 'Erste Schritte', '', '1', 'on', '1', '0', 'system', '1209980721', '', '1', '0', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('85', '1', '4', 'Direktzugriff auf eine Newskategorie', '', '0', 'on', '1', '0', 'system', '1209833475', '1', '1', '8', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('86', '1', '13', 'An- \\ Abmelden', '', '99', 'off', '1', '0', 'system', '1192437051', 'sign', '1', '21', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('88', '1', '3', 'Adressverzeichnis', '', '4', 'on', '1', '0', 'system', '1192008285', '', '1', '0', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('89', '1', '0', 'Design Vorlagen', '', '5', 'on', '1', '0', 'system', '1213376016', '', '1', '0', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('92', '1', '25', 'Blog', '', '8', 'on', '1', '0', 'system', '1218551840', '', '1', '47', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('93', '1', '92', 'Suchen', '', '0', 'on', '1', '0', 'system', '1218551914', 'search', '1', '47', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('94', '1', '92', 'Tag Cloud', '', '1', 'on', '1', '0', 'system', '1202728229', 'cloud', '1', '47', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('95', '1', '92', 'Blogmeldung anzeigen', '', '99', 'off', '1', '0', 'system', '1218551946', 'details', '1', '47', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('96', '1', '92', 'RSS-Feed', '', '3', 'on', '1', '0', 'system', '1210679477', '', '1', '0', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('97', '1', '0', 'Services', '', '999', 'off', '1', '0', 'system', '1197910528', '', '1', '0', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('98', '1', '0', 'Lost & Found', '', '9999', 'off', '1', '0', 'system', '1151881200', 'lost_and_found', '1', '1', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('99', '1', '25', 'Mitglied werden', '', '2', 'on', '1', '0', 'system', '1213720870', 'signup', '1', '23', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('100', '1', '25', 'Mitglieder', '', '1', 'on', '1', '0', 'system', '1209736957', 'members', '1', '23', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('101', '1', '100', 'Benutzerinfos', '', '99', 'off', '1', '0', 'system', '1213593362', 'user', '1', '23', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('102', '1', '25', 'Mein Profil', '', '0', 'on', '1', '0', 'system', '1218653719', 'settings', '1', '23', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('103', '1', '102', 'Konto Einstellungen', '', '0', 'on', '1', '0', 'system', '1210630914', 'settings_account', '1', '23', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('104', '1', '102', 'Profildaten', '', '1', 'on', '1', '0', 'system', '1209737356', 'settings_profile', '1', '23', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('105', '1', '102', 'Profilbild ändern', '', '2', 'on', '1', '0', 'system', '1209737364', 'settings_avatar', '1', '23', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('106', '1', '102', 'Kennwort', '', '3', 'on', '1', '0', 'system', '1209737368', 'settings_password', '1', '23', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('107', '1', '102', 'Konto löschen', '', '4', 'on', '1', '0', 'system', '1218654409', 'settings_delete', '1', '23', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('109', '1', '3', 'Livecam', '', '10', 'on', '1', '0', 'system', '1210004214', '', '1', '30', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('114', '1', '89', 'Bluesmile', '', '0', 'on', '1', '0', 'system', '1210074015', '', '1', '0', '0000-00-00', '0000-00-00', '0', '0', '0', '3', ''),
('116', '1', '53', 'Forum anzeigen', '', '99', 'off', '1', '0', 'system', '1212562771', 'board', '1', '20', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('117', '1', '53', 'Thread anzeigen', '', '99', 'off', '1', '0', 'system', '1222933301', 'thread', '1', '20', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('118', '1', '53', 'Kategorie anzeigen', '', '99', 'off', '1', '0', 'system', '1210160874', 'cat', '1', '20', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('119', '1', '53', 'Abonnierte Foren/Kategorien', '', '0', 'on', '1', '0', 'system', '1210160901', 'notification', '1', '20', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('120', '1', '53', 'Tag Cloud', '', '1', 'on', '1', '0', 'system', '1210093280', 'cloud', '1', '20', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('121', '1', '53', 'Populärste Diskussionen', '', '2', 'on', '1', '0', 'system', '1210093859', 'toplist', '1', '20', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('122', '1', '53', 'Suche nach Tags', '', '3', 'on', '1', '0', 'system', '1210680234', 'searchTags', '1', '20', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('129', '1', '662', 'Datenlisten', '', '1', 'off', '1', '0', 'system', '1213692096', '1', '1', '48', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('660', '1', '3', 'Kontakt Formular', '', '2', 'on', '1', '0', 'system', '1213608418', '4', '1', '6', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('662', '1', '25', 'Datenlisten', '', '9', 'on', '1', '0', 'system', '1213804801', '', '1', '0', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('668', '1', '662', 'Datenlisten Popup', '', '1', 'off', '1', '0', 'system', '1213778485', '', '1', '48', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('1117', '1', '78', 'Medienarchiv 4', '', '204', 'off', '1', '0', 'system', '1218022093', '', '1', '39', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('1115', '1', '0', 'Suchen', '', '111', 'off', '1', '0', 'system', '1216802182', '', '1', '5', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('1116', '1', '0', 'Umfragen', '', '111', 'on', '1', '0', 'system', '1216802182', '', '1', '17', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('1118', '1', '78', 'Medienarchiv 3', '', '203', 'off', '1', '0', 'system', '1218022079', '', '1', '25', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('1119', '1', '78', 'Medienarchiv 2', '', '202', 'off', '1', '0', 'system', '1218022009', '', '1', '24', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('1122', '1', '3', 'Bildergalerie', '', '111', 'on', '1', '0', 'system', '1220410851', '', '1', '3', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('1123', '1', '0', 'E-Cards', '', '111', 'on', '1', '1', 'system', '1223382991', '', '1', '49', '0000-00-00', '0000-00-00', '0', '0', '0', '0', '');

#--------------------------------------------------------------
# Table:	contrexx_content_navigation_history
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_content_navigation_history`;

CREATE TABLE `contrexx_content_navigation_history` (
 `id` int(7) unsigned NOT NULL auto_increment,
 `is_active` set('0','1') NOT NULL default '0',
 `catid` int(6) unsigned NOT NULL default '0',
 `parcat` int(6) unsigned NOT NULL default '0',
 `catname` varchar(100) NOT NULL default '',
 `target` varchar(10) NOT NULL default '',
 `displayorder` smallint(6) unsigned NOT NULL default '1000',
 `displaystatus` set('on','off') NOT NULL default 'on',
 `activestatus` set('0','1') NOT NULL default '1',
 `cachingstatus` set('0','1') NOT NULL default '1',
 `username` varchar(40) NOT NULL default '',
 `changelog` int(14) NULL,
 `cmd` varchar(50) NOT NULL default '',
 `lang` tinyint(2) unsigned NOT NULL default '1',
 `module` tinyint(2) unsigned NOT NULL default '0',
 `startdate` date NOT NULL default '0000-00-00',
 `enddate` date NOT NULL default '0000-00-00',
 `protected` tinyint(4) NOT NULL default '0',
 `frontend_access_id` int(11) unsigned NOT NULL default '0',
 `backend_access_id` int(11) unsigned NOT NULL default '0',
 `themes_id` int(4) NOT NULL default '0',
 `css_name` varchar(255) NOT NULL default '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3;

INSERT INTO `contrexx_content_navigation_history` (`id`, `is_active`, `catid`, `parcat`, `catname`, `target`, `displayorder`, `displaystatus`, `activestatus`, `cachingstatus`, `username`, `changelog`, `cmd`, `lang`, `module`, `startdate`, `enddate`, `protected`, `frontend_access_id`, `backend_access_id`, `themes_id`, `css_name`) VALUES 
('1', '1', '40', '31', 'Ihr Warenkorb', '', '1', 'on', '1', '0', 'system', '1225462213', 'cart', '1', '16', '0000-00-00', '0000-00-00', '0', '0', '0', '0', ''),
('2', '1', '0', '0', '', '', '0', 'off', '1', '0', 'system', '1225464645', '', '1', '0', '0000-00-00', '0000-00-00', '0', '0', '0', '0', '');

#--------------------------------------------------------------
# Table:	contrexx_ids
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_ids`;

CREATE TABLE `contrexx_ids` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `timestamp` int(14) NULL,
 `type` varchar(100) NOT NULL default '',
 `remote_addr` varchar(15) NULL,
 `http_x_forwarded_for` varchar(15) NOT NULL default '',
 `http_via` varchar(255) NOT NULL default '',
 `user` mediumtext NULL,
 `gpcs` mediumtext NOT NULL,
 `file` varchar(250) NOT NULL default '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_languages
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_languages`;

CREATE TABLE `contrexx_languages` (
 `id` int(2) unsigned NOT NULL auto_increment,
 `lang` varchar(5) NOT NULL default '',
 `name` varchar(250) NOT NULL default '',
 `charset` varchar(20) NOT NULL default 'iso-8859-1',
 `themesid` int(2) unsigned NOT NULL default '1',
 `print_themes_id` int(2) unsigned NOT NULL default '1',
 `pdf_themes_id` int(2) unsigned NOT NULL default '0',
 `frontend` tinyint(1) unsigned NOT NULL default '0',
 `backend` tinyint(1) unsigned NOT NULL default '0',
 `is_default` set('true','false') NOT NULL default 'false',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lang` (`lang`),
  KEY `defaultstatus` (`is_default`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7;

INSERT INTO `contrexx_languages` (`id`, `lang`, `name`, `charset`, `themesid`, `print_themes_id`, `pdf_themes_id`, `frontend`, `backend`, `is_default`) VALUES 
('1', 'de', 'Deutsch', 'UTF-8', '6', '1', '2', '1', '1', 'true'),
('2', 'en', 'English', 'UTF-8', '6', '1', '2', '0', '0', 'false'),
('3', 'fr', 'French', 'UTF-8', '6', '1', '2', '0', '0', 'false'),
('4', 'it', 'Italian', 'UTF-8', '6', '1', '2', '0', '0', 'false'),
('5', 'dk', 'Danish', 'UTF-8', '6', '1', '2', '0', '0', 'false'),
('6', 'ru', 'Russian', 'UTF-8', '6', '1', '2', '0', '0', 'false');

#--------------------------------------------------------------
# Table:	contrexx_lib_country
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_lib_country`;

CREATE TABLE `contrexx_lib_country` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `name` varchar(64) NOT NULL,
 `iso_code_2` char(2) NOT NULL,
 `iso_code_3` char(3) NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`iso_code_2`),
  KEY `INDEX_COUNTRIES_NAME` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=240;

INSERT INTO `contrexx_lib_country` (`id`, `name`, `iso_code_2`, `iso_code_3`) VALUES 
('1', 'Afghanistan', 'AF', 'AFG'),
('2', 'Albania', 'AL', 'ALB'),
('3', 'Algeria', 'DZ', 'DZA'),
('4', 'American Samoa', 'AS', 'ASM'),
('5', 'Andorra', 'AD', 'AND'),
('6', 'Angola', 'AO', 'AGO'),
('7', 'Anguilla', 'AI', 'AIA'),
('8', 'Antarctica', 'AQ', 'ATA'),
('9', 'Antigua and Barbuda', 'AG', 'ATG'),
('10', 'Argentina', 'AR', 'ARG'),
('11', 'Armenia', 'AM', 'ARM'),
('12', 'Aruba', 'AW', 'ABW'),
('13', 'Australia', 'AU', 'AUS'),
('14', 'Österreich', 'AT', 'AUT'),
('15', 'Azerbaijan', 'AZ', 'AZE'),
('16', 'Bahamas', 'BS', 'BHS'),
('17', 'Bahrain', 'BH', 'BHR'),
('18', 'Bangladesh', 'BD', 'BGD'),
('19', 'Barbados', 'BB', 'BRB'),
('20', 'Belarus', 'BY', 'BLR'),
('21', 'Belgium', 'BE', 'BEL'),
('22', 'Belize', 'BZ', 'BLZ'),
('23', 'Benin', 'BJ', 'BEN'),
('24', 'Bermuda', 'BM', 'BMU'),
('25', 'Bhutan', 'BT', 'BTN'),
('26', 'Bolivia', 'BO', 'BOL'),
('27', 'Bosnia and Herzegowina', 'BA', 'BIH'),
('28', 'Botswana', 'BW', 'BWA'),
('29', 'Bouvet Island', 'BV', 'BVT'),
('30', 'Brazil', 'BR', 'BRA'),
('31', 'British Indian Ocean Territory', 'IO', 'IOT'),
('32', 'Brunei Darussalam', 'BN', 'BRN'),
('33', 'Bulgaria', 'BG', 'BGR'),
('34', 'Burkina Faso', 'BF', 'BFA'),
('35', 'Burundi', 'BI', 'BDI'),
('36', 'Cambodia', 'KH', 'KHM'),
('37', 'Cameroon', 'CM', 'CMR'),
('38', 'Canada', 'CA', 'CAN'),
('39', 'Cape Verde', 'CV', 'CPV'),
('40', 'Cayman Islands', 'KY', 'CYM'),
('41', 'Central African Republic', 'CF', 'CAF'),
('42', 'Chad', 'TD', 'TCD'),
('43', 'Chile', 'CL', 'CHL'),
('44', 'China', 'CN', 'CHN'),
('45', 'Christmas Island', 'CX', 'CXR'),
('46', 'Cocos (Keeling) Islands', 'CC', 'CCK'),
('47', 'Colombia', 'CO', 'COL'),
('48', 'Comoros', 'KM', 'COM'),
('49', 'Congo', 'CG', 'COG'),
('50', 'Cook Islands', 'CK', 'COK'),
('51', 'Costa Rica', 'CR', 'CRI'),
('52', 'Cote D\'Ivoire', 'CI', 'CIV'),
('53', 'Croatia', 'HR', 'HRV'),
('54', 'Cuba', 'CU', 'CUB'),
('55', 'Cyprus', 'CY', 'CYP'),
('56', 'Czech Republic', 'CZ', 'CZE'),
('57', 'Denmark', 'DK', 'DNK'),
('58', 'Djibouti', 'DJ', 'DJI'),
('59', 'Dominica', 'DM', 'DMA'),
('60', 'Dominican Republic', 'DO', 'DOM'),
('61', 'East Timor', 'TP', 'TMP'),
('62', 'Ecuador', 'EC', 'ECU'),
('63', 'Egypt', 'EG', 'EGY'),
('64', 'El Salvador', 'SV', 'SLV'),
('65', 'Equatorial Guinea', 'GQ', 'GNQ'),
('66', 'Eritrea', 'ER', 'ERI'),
('67', 'Estonia', 'EE', 'EST'),
('68', 'Ethiopia', 'ET', 'ETH'),
('69', 'Falkland Islands (Malvinas)', 'FK', 'FLK'),
('70', 'Faroe Islands', 'FO', 'FRO'),
('71', 'Fiji', 'FJ', 'FJI'),
('72', 'Finland', 'FI', 'FIN'),
('73', 'France', 'FR', 'FRA'),
('74', 'France, Metropolitan', 'FX', 'FXX'),
('75', 'French Guiana', 'GF', 'GUF'),
('76', 'French Polynesia', 'PF', 'PYF'),
('77', 'French Southern Territories', 'TF', 'ATF'),
('78', 'Gabon', 'GA', 'GAB'),
('79', 'Gambia', 'GM', 'GMB'),
('80', 'Georgia', 'GE', 'GEO'),
('81', 'Deutschland', 'DE', 'DEU'),
('82', 'Ghana', 'GH', 'GHA'),
('83', 'Gibraltar', 'GI', 'GIB'),
('84', 'Greece', 'GR', 'GRC'),
('85', 'Greenland', 'GL', 'GRL'),
('86', 'Grenada', 'GD', 'GRD'),
('87', 'Guadeloupe', 'GP', 'GLP'),
('88', 'Guam', 'GU', 'GUM'),
('89', 'Guatemala', 'GT', 'GTM'),
('90', 'Guinea', 'GN', 'GIN'),
('91', 'Guinea-bissau', 'GW', 'GNB'),
('92', 'Guyana', 'GY', 'GUY'),
('93', 'Haiti', 'HT', 'HTI'),
('94', 'Heard and Mc Donald Islands', 'HM', 'HMD'),
('95', 'Honduras', 'HN', 'HND'),
('96', 'Hong Kong', 'HK', 'HKG'),
('97', 'Hungary', 'HU', 'HUN'),
('98', 'Iceland', 'IS', 'ISL'),
('99', 'India', 'IN', 'IND'),
('100', 'Indonesia', 'ID', 'IDN'),
('101', 'Iran (Islamic Republic of)', 'IR', 'IRN'),
('102', 'Iraq', 'IQ', 'IRQ'),
('103', 'Ireland', 'IE', 'IRL'),
('104', 'Israel', 'IL', 'ISR'),
('105', 'Italy', 'IT', 'ITA'),
('106', 'Jamaica', 'JM', 'JAM'),
('107', 'Japan', 'JP', 'JPN'),
('108', 'Jordan', 'JO', 'JOR'),
('109', 'Kazakhstan', 'KZ', 'KAZ'),
('110', 'Kenya', 'KE', 'KEN'),
('111', 'Kiribati', 'KI', 'KIR'),
('112', 'Korea, Democratic People\'s Republic of', 'KP', 'PRK'),
('113', 'Korea, Republic of', 'KR', 'KOR'),
('114', 'Kuwait', 'KW', 'KWT'),
('115', 'Kyrgyzstan', 'KG', 'KGZ'),
('116', 'Lao People\'s Democratic Republic', 'LA', 'LAO'),
('117', 'Latvia', 'LV', 'LVA'),
('118', 'Lebanon', 'LB', 'LBN'),
('119', 'Lesotho', 'LS', 'LSO'),
('120', 'Liberia', 'LR', 'LBR'),
('121', 'Libyan Arab Jamahiriya', 'LY', 'LBY'),
('122', 'Liechtenstein', 'LI', 'LIE'),
('123', 'Lithuania', 'LT', 'LTU'),
('124', 'Luxembourg', 'LU', 'LUX'),
('125', 'Macau', 'MO', 'MAC'),
('126', 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD'),
('127', 'Madagascar', 'MG', 'MDG'),
('128', 'Malawi', 'MW', 'MWI'),
('129', 'Malaysia', 'MY', 'MYS'),
('130', 'Maldives', 'MV', 'MDV'),
('131', 'Mali', 'ML', 'MLI'),
('132', 'Malta', 'MT', 'MLT'),
('133', 'Marshall Islands', 'MH', 'MHL'),
('134', 'Martinique', 'MQ', 'MTQ'),
('135', 'Mauritania', 'MR', 'MRT'),
('136', 'Mauritius', 'MU', 'MUS'),
('137', 'Mayotte', 'YT', 'MYT'),
('138', 'Mexico', 'MX', 'MEX'),
('139', 'Micronesia, Federated States of', 'FM', 'FSM'),
('140', 'Moldova, Republic of', 'MD', 'MDA'),
('141', 'Monaco', 'MC', 'MCO'),
('142', 'Mongolia', 'MN', 'MNG'),
('143', 'Montserrat', 'MS', 'MSR'),
('144', 'Morocco', 'MA', 'MAR'),
('145', 'Mozambique', 'MZ', 'MOZ'),
('146', 'Myanmar', 'MM', 'MMR'),
('147', 'Namibia', 'NA', 'NAM'),
('148', 'Nauru', 'NR', 'NRU'),
('149', 'Nepal', 'NP', 'NPL'),
('150', 'Netherlands', 'NL', 'NLD'),
('151', 'Netherlands Antilles', 'AN', 'ANT'),
('152', 'New Caledonia', 'NC', 'NCL'),
('153', 'New Zealand', 'NZ', 'NZL'),
('154', 'Nicaragua', 'NI', 'NIC'),
('155', 'Niger', 'NE', 'NER'),
('156', 'Nigeria', 'NG', 'NGA'),
('157', 'Niue', 'NU', 'NIU'),
('158', 'Norfolk Island', 'NF', 'NFK'),
('159', 'Northern Mariana Islands', 'MP', 'MNP'),
('160', 'Norway', 'NO', 'NOR'),
('161', 'Oman', 'OM', 'OMN'),
('162', 'Pakistan', 'PK', 'PAK'),
('163', 'Palau', 'PW', 'PLW'),
('164', 'Panama', 'PA', 'PAN'),
('165', 'Papua New Guinea', 'PG', 'PNG'),
('166', 'Paraguay', 'PY', 'PRY'),
('167', 'Peru', 'PE', 'PER'),
('168', 'Philippines', 'PH', 'PHL'),
('169', 'Pitcairn', 'PN', 'PCN'),
('170', 'Poland', 'PL', 'POL'),
('171', 'Portugal', 'PT', 'PRT'),
('172', 'Puerto Rico', 'PR', 'PRI'),
('173', 'Qatar', 'QA', 'QAT'),
('174', 'Reunion', 'RE', 'REU'),
('175', 'Romania', 'RO', 'ROM'),
('176', 'Russian Federation', 'RU', 'RUS'),
('177', 'Rwanda', 'RW', 'RWA'),
('178', 'Saint Kitts and Nevis', 'KN', 'KNA'),
('179', 'Saint Lucia', 'LC', 'LCA'),
('180', 'Saint Vincent and the Grenadines', 'VC', 'VCT'),
('181', 'Samoa', 'WS', 'WSM'),
('182', 'San Marino', 'SM', 'SMR'),
('183', 'Sao Tome and Principe', 'ST', 'STP'),
('184', 'Saudi Arabia', 'SA', 'SAU'),
('185', 'Senegal', 'SN', 'SEN'),
('186', 'Seychelles', 'SC', 'SYC'),
('187', 'Sierra Leone', 'SL', 'SLE'),
('188', 'Singapore', 'SG', 'SGP'),
('189', 'Slovakia (Slovak Republic)', 'SK', 'SVK'),
('190', 'Slovenia', 'SI', 'SVN'),
('191', 'Solomon Islands', 'SB', 'SLB'),
('192', 'Somalia', 'SO', 'SOM'),
('193', 'South Africa', 'ZA', 'ZAF'),
('194', 'South Georgia and the South Sandwich Islands', 'GS', 'SGS'),
('195', 'Spain', 'ES', 'ESP'),
('196', 'Sri Lanka', 'LK', 'LKA'),
('197', 'St. Helena', 'SH', 'SHN'),
('198', 'St. Pierre and Miquelon', 'PM', 'SPM'),
('199', 'Sudan', 'SD', 'SDN'),
('200', 'Suriname', 'SR', 'SUR'),
('201', 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM'),
('202', 'Swaziland', 'SZ', 'SWZ'),
('203', 'Sweden', 'SE', 'SWE'),
('204', 'Schweiz', 'CH', 'CHE'),
('205', 'Syrian Arab Republic', 'SY', 'SYR'),
('206', 'Taiwan', 'TW', 'TWN'),
('207', 'Tajikistan', 'TJ', 'TJK'),
('208', 'Tanzania, United Republic of', 'TZ', 'TZA'),
('209', 'Thailand', 'TH', 'THA'),
('210', 'Togo', 'TG', 'TGO'),
('211', 'Tokelau', 'TK', 'TKL'),
('212', 'Tonga', 'TO', 'TON'),
('213', 'Trinidad and Tobago', 'TT', 'TTO'),
('214', 'Tunisia', 'TN', 'TUN'),
('215', 'Turkey', 'TR', 'TUR'),
('216', 'Turkmenistan', 'TM', 'TKM'),
('217', 'Turks and Caicos Islands', 'TC', 'TCA'),
('218', 'Tuvalu', 'TV', 'TUV'),
('219', 'Uganda', 'UG', 'UGA'),
('220', 'Ukraine', 'UA', 'UKR'),
('221', 'United Arab Emirates', 'AE', 'ARE'),
('222', 'United Kingdom', 'GB', 'GBR'),
('223', 'United States', 'US', 'USA'),
('224', 'United States Minor Outlying Islands', 'UM', 'UMI'),
('225', 'Uruguay', 'UY', 'URY'),
('226', 'Uzbekistan', 'UZ', 'UZB'),
('227', 'Vanuatu', 'VU', 'VUT'),
('228', 'Vatican City State (Holy See)', 'VA', 'VAT'),
('229', 'Venezuela', 'VE', 'VEN'),
('230', 'Viet Nam', 'VN', 'VNM'),
('231', 'Virgin Islands (British)', 'VG', 'VGB'),
('232', 'Virgin Islands (U.S.)', 'VI', 'VIR'),
('233', 'Wallis and Futuna Islands', 'WF', 'WLF'),
('234', 'Western Sahara', 'EH', 'ESH'),
('235', 'Yemen', 'YE', 'YEM'),
('236', 'Yugoslavia', 'YU', 'YUG'),
('237', 'Zaire', 'ZR', 'ZAR'),
('238', 'Zambia', 'ZM', 'ZMB'),
('239', 'Zimbabwe', 'ZW', 'ZWE');

#--------------------------------------------------------------
# Table:	contrexx_log
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_log`;

CREATE TABLE `contrexx_log` (
 `id` int(6) unsigned NOT NULL auto_increment,
 `userid` int(6) unsigned NULL,
 `datetime` datetime NULL default '0000-00-00 00:00:00',
 `useragent` varchar(100) NULL,
 `userlanguage` varchar(25) NULL,
 `remote_addr` varchar(250) NULL,
 `remote_host` varchar(250) NULL,
 `http_via` varchar(250) NOT NULL default '',
 `http_client_ip` varchar(250) NOT NULL default '',
 `http_x_forwarded_for` varchar(250) NOT NULL default '',
 `referer` varchar(250) NOT NULL default '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7;

INSERT INTO `contrexx_log` (`id`, `userid`, `datetime`, `useragent`, `userlanguage`, `remote_addr`, `remote_host`, `http_via`, `http_client_ip`, `http_x_forwarded_for`, `referer`) VALUES 
('1', '1', '2008-10-31 14:57:44', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.17) Gecko/20080829 Firefox/2.0.0.17', 'en-us,en;q=0.5', '127.0.0.1', 'qwer.com', '', '', '', 'http://localhost/contrexx_2_0_0/cadmin/index.php?cmd=backup'),
('2', '1', '2008-11-06 16:23:13', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.17) Gecko/20080829 Firefox/2.0.0.17', 'en-us,en;q=0.5', '127.0.0.1', 'qwer.com', '', '', '', 'http://localhost/contrexx_2_0_0/cadmin/'),
('3', '1', '2008-11-07 09:57:38', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.17) Gecko/20080829 Firefox/2.0.0.17', 'en-us,en;q=0.5', '127.0.0.1', 'qwer.com', '', '', '', 'http://localhost/contrexx_2_0_0/cadmin/'),
('4', '1', '2008-11-07 15:10:13', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.17) Gecko/20080829 Firefox/2.0.0.17', 'en-us,en;q=0.5', '127.0.0.1', 'qwer.com', '', '', '', 'http://localhost/contrexx_2_0_0/cadmin/'),
('5', '1', '2008-11-11 13:31:02', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.17) Gecko/20080829 Firefox/2.0.0.17', 'en-us,en;q=0.5', '127.0.0.1', 'qwer.com', '', '', '', 'http://localhost/contrexx_2_0_0/cadmin/'),
('6', '1', '2008-11-17 11:13:03', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.18) Gecko/20081029 Firefox/2.0.0.18', 'en-us,en;q=0.5', '127.0.0.1', 'qwer.com', '', '', '', 'http://localhost/contrexx_2_0_0/cadmin/');

#--------------------------------------------------------------
# Table:	contrexx_module_alias_source
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_alias_source`;

CREATE TABLE `contrexx_module_alias_source` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `target_id` int(10) unsigned NOT NULL,
 `url` varchar(255) NOT NULL,
 `isdefault` tinyint(1) NOT NULL default '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`),
  KEY `isdefault` (`isdefault`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9;

INSERT INTO `contrexx_module_alias_source` (`id`, `target_id`, `url`, `isdefault`) VALUES 
('8', '8', 'datenlisten-popup', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_alias_target
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_alias_target`;

CREATE TABLE `contrexx_module_alias_target` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `type` enum('url','local') NOT NULL,
 `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9;

INSERT INTO `contrexx_module_alias_target` (`id`, `type`, `url`) VALUES 
('8', 'local', '667');

#--------------------------------------------------------------
# Table:	contrexx_module_block_blocks
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_block_blocks`;

CREATE TABLE `contrexx_module_block_blocks` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `content` text NOT NULL,
 `name` varchar(255) NOT NULL default '',
 `random` int(1) NOT NULL default '0',
 `random_2` int(1) NOT NULL default '0',
 `random_3` int(1) NOT NULL default '0',
 `global` int(1) NOT NULL default '0',
 `active` int(1) NOT NULL default '0',
 `order` int(1) NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14;

INSERT INTO `contrexx_module_block_blocks` (`id`, `content`, `name`, `random`, `random_2`, `random_3`, `global`, `active`, `order`) VALUES 
('5', '<div style=\"text-align: center; margin-bottom: 20px;\"><span style=\"font-size: smaller;\">Werbebanner im Block System</span><br />\r\n<a href=\"http://www.itnews.ch\"><img width=\"187\" height=\"75\" border=\"1\" alt=\"IT News powered by Pressetext\" src=\"images/content/banner/itnews.gif\" /></a></div>', 'Werbebanner Beispiel - ITNews', '1', '0', '0', '0', '1', '0');

#--------------------------------------------------------------
# Table:	contrexx_module_block_rel_lang
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_block_rel_lang`;

CREATE TABLE `contrexx_module_block_rel_lang` (
 `block_id` int(10) unsigned NOT NULL default '0',
 `lang_id` int(10) unsigned NOT NULL default '0',
 `all_pages` int(1) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_block_rel_lang` (`block_id`, `lang_id`, `all_pages`) VALUES 
('5', '1', '0');

#--------------------------------------------------------------
# Table:	contrexx_module_block_rel_pages
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_block_rel_pages`;

CREATE TABLE `contrexx_module_block_rel_pages` (
 `block_id` int(7) NOT NULL default '0',
 `page_id` int(7) NOT NULL default '0',
 `lang_id` int(7) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



#--------------------------------------------------------------
# Table:	contrexx_module_block_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_block_settings`;

CREATE TABLE `contrexx_module_block_settings` (
 `id` int(7) NOT NULL auto_increment,
 `name` varchar(100) NOT NULL default '',
 `value` varchar(100) NOT NULL default '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_module_block_settings` (`id`, `name`, `value`) VALUES 
('1', 'blockGlobalSeperator', '<br /><br />');

#--------------------------------------------------------------
# Table:	contrexx_module_blog_categories
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_blog_categories`;

CREATE TABLE `contrexx_module_blog_categories` (
 `category_id` int(4) unsigned NOT NULL,
 `lang_id` int(2) unsigned NOT NULL,
 `is_active` enum('0','1') NOT NULL default '1',
 `name` varchar(100) NOT NULL default '',
  PRIMARY KEY (`category_id`,`lang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_blog_categories` (`category_id`, `lang_id`, `is_active`, `name`) VALUES 
('1', '1', '1', 'Allgemein'),
('1', '2', '1', 'General'),
('1', '3', '1', 'General'),
('1', '4', '1', 'General'),
('1', '5', '1', 'General'),
('1', '6', '1', 'General');

#--------------------------------------------------------------
# Table:	contrexx_module_blog_comments
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_blog_comments`;

CREATE TABLE `contrexx_module_blog_comments` (
 `comment_id` int(7) unsigned NOT NULL auto_increment,
 `message_id` int(6) unsigned NOT NULL,
 `lang_id` int(2) unsigned NOT NULL,
 `is_active` enum('0','1') NOT NULL default '1',
 `time_created` int(14) unsigned NOT NULL default '0',
 `ip_address` varchar(15) NOT NULL default '0.0.0.0',
 `user_id` int(5) unsigned NOT NULL default '0',
 `user_name` varchar(50) NULL,
 `user_mail` varchar(250) NULL,
 `user_www` varchar(255) NULL,
 `subject` varchar(250) NOT NULL default '',
 `comment` text NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `message_id` (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3;



#--------------------------------------------------------------
# Table:	contrexx_module_blog_message_to_category
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_blog_message_to_category`;

CREATE TABLE `contrexx_module_blog_message_to_category` (
 `message_id` int(6) unsigned NOT NULL,
 `category_id` int(4) unsigned NOT NULL,
 `lang_id` int(2) unsigned NOT NULL,
  PRIMARY KEY (`message_id`,`category_id`,`lang_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_blog_message_to_category` (`message_id`, `category_id`, `lang_id`) VALUES 
('3', '1', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_blog_messages
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_blog_messages`;

CREATE TABLE `contrexx_module_blog_messages` (
 `message_id` int(6) unsigned NOT NULL auto_increment,
 `user_id` int(5) unsigned NOT NULL,
 `time_created` int(14) unsigned NOT NULL default '0',
 `time_edited` int(14) unsigned NOT NULL default '0',
 `hits` int(7) unsigned NOT NULL default '0',
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4;

INSERT INTO `contrexx_module_blog_messages` (`message_id`, `user_id`, `time_created`, `time_edited`, `hits`) VALUES 
('3', '1', '1213283627', '1213283627', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_blog_messages_lang
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_blog_messages_lang`;

CREATE TABLE `contrexx_module_blog_messages_lang` (
 `message_id` int(6) unsigned NOT NULL,
 `lang_id` int(2) unsigned NOT NULL,
 `is_active` enum('0','1') NOT NULL default '1',
 `subject` varchar(250) NOT NULL default '',
 `content` text NOT NULL,
 `tags` varchar(250) NOT NULL default '',
 `image` varchar(250) NOT NULL default '',
  PRIMARY KEY (`message_id`,`lang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_blog_messages_lang` (`message_id`, `lang_id`, `is_active`, `subject`, `content`, `tags`, `image`) VALUES 
('3', '1', '1', 'Contrexx - Hersteller bei \"swiss made software\" eingetragen', 'Internationale Software-Konzerne wie Google, eBay, IBM oder Microsoft haben Schweizerische Qualit&auml;tsmerkmale wie Qualit&auml;t, Zuverl&auml;ssigkeit und Pr&auml;zision in der Software-Entwicklung entdeckt. Mittlerweile habe diese Firmen wichtige Forschungs- und Entwicklungs-Zentren in der Schweiz aufgebaut .<br />\r\n<br />\r\nSeit einigen Monaten hat die Schweiz ein G&uuml;tesiegel und Qualit&auml;tslabel f&uuml;r Softwareprodukte. Der Initiant Luc Haldimann hat dieses G&uuml;tesiegel ins Leben gerufen um die Qualit&auml;t der Schweizer Software auch im Ausland bekannt zu machen.<br />\r\n&quot;swiss made software&quot; ist das neue Label der Schweizer Software-Branche. Die eingetragenen Firmen tragen Sorge zur Qualit&auml;t und entwickeln die entsprechende Software zu mindestens 50% in der Schweiz.', 'Contrexx swiss made software', '');

#--------------------------------------------------------------
# Table:	contrexx_module_blog_networks
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_blog_networks`;

CREATE TABLE `contrexx_module_blog_networks` (
 `network_id` int(8) unsigned NOT NULL auto_increment,
 `name` varchar(250) NOT NULL default '',
 `url` varchar(255) NOT NULL default '',
 `url_link` varchar(255) NOT NULL default '',
 `icon` varchar(255) NOT NULL default '',
  PRIMARY KEY (`network_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23;

INSERT INTO `contrexx_module_blog_networks` (`network_id`, `name`, `url`, `url_link`, `icon`) VALUES 
('1', 'Digg', 'http://www.digg.com', 'http://digg.com/submit?phase=2&url=[URL]&title=[SUBJECT]', 'images/blog/networks/digg.gif'),
('2', 'del.icio.ous', 'http://del.icio.us', 'http://del.icio.us/post?url=[URL]&title=[SUBJECT]', 'images/blog/networks/delicious.gif'),
('3', 'Mister Wong', 'http://www.mister-wong.de', 'http://www.mister-wong.de/index.php?action=addurl&bm_url=[URL]&bm_description=[SUBJECT]', 'images/blog/networks/wong.gif'),
('4', 'Google Bookmarks', 'http://www.google.com/bookmarks/', 'http://www.google.com/bookmarks/mark?op=edit&output=popup&bkmk=[URL]&title=[SUBJECT]', 'images/blog/networks/google.gif'),
('5', 'Furl', 'http://www.furl.net', 'http://furl.net/storeIt.jsp?t=[SUBJECT]&u=[URL]', 'images/blog/networks/furl.gif'),
('6', 'reddit', 'http://www.reddit.com/', 'http://reddit.com/submit?url=[URL]&title=[SUBJECT]', 'images/blog/networks/reddit.gif'),
('7', 'Yigg', 'http://www.yigg.de', 'http://yigg.de/neu?exturl=[URL]&exttitle=[SUBJECT]', 'images/blog/networks/yigg.gif'),
('8', 'BlinkList', 'http://www.blinklist.com', 'http://www.blinklist.com/index.php?Action=Blink/addblink.php&Description=&Url=[URL]&Title=[SUBJECT]', 'images/blog/networks/blinklist.gif'),
('9', 'Blogmarks', 'http://www.blogmarks.net', 'http://blogmarks.net/my/new.php?mini=1&simple=1&url=[URL]&title=[SUBJECT]', 'images/blog/networks/blogmarks.gif'),
('10', 'Co.mments', 'http://co.mments.com', 'http://co.mments.com/track?url=[URL]&title=[SUBJECT]', 'images/blog/networks/comments.gif'),
('11', 'Feed Me Links', 'http://www.feedmelinks.com', 'http://feedmelinks.com/categorize?from=toolbar&op=submit&name=[SUBJECT]&url=[URL]&version=0.7', 'images/blog/networks/feedmelinks.gif'),
('12', 'Folkd', 'http://www.folkd.com', 'http://www.folkd.com/submit/page/[URL]', 'images/blog/networks/folkd.gif'),
('13', 'Linkarena', 'http://www.linkarena.com', 'http://linkarena.com/bookmarks/addlink/?url=[URL]&title=[SUBJECT]&desc=&tags=', 'images/blog/networks/linkarena.gif'),
('14', 'Ma.gnolia', 'http://Ma.gnolia', 'http://ma.gnolia.com/bookmarklet/add?url=[URL]&title=[SUBJECT]&description=[SUBJECT]', 'images/blog/networks/magnolia.gif'),
('15', 'Newsvine', 'http://www.newsvine.com', 'http://www.newsvine.com/_wine/save?u=[URL]&h=[SUBJECT]', 'images/blog/networks/newsvine.gif'),
('16', 'OneView', 'http://beta.oneview.de', 'http://beta.oneview.de/quickadd/neu/addBookmark.jsf?URL=[URL]&title=[SUBJECT]', 'images/blog/networks/oneview.gif'),
('17', 'RawSugar', 'http://www.rawsugar.com', 'http://www.rawsugar.com/tagger/?turl=[URL]&tttl=[SUBJECT]', 'images/blog/networks/rawsugar.gif'),
('18', 'Squidoo', 'http://www.squidoo.com', 'http://www.squidoo.com/lensmaster/bookmark?[URL]', 'images/blog/networks/squidoo.gif'),
('19', 'Stumble Upon', 'http://www.stumbleupon.com', 'http://www.stumbleupon.com/refer.php?url=[URL]&title=[SUBJECT]', 'images/blog/networks/stumbleupon.gif'),
('20', 'Technorati', 'http://www.technorati.com', 'http://www.technorati.com/faves?add=[URL]', 'images/blog/networks/technorati.gif'),
('21', 'Webnews', 'http://www.webnews.de', 'http://www.webnews.de/einstellen?url=[URL]&title=[SUBJECT]', 'images/blog/networks/webnews.gif'),
('22', 'Yahoo My Web', 'http://myweb2.search.yahoo.com', 'http://myweb2.search.yahoo.com/myresults/bookmarklet?u=[URL]&t=[SUBJECT]', 'images/blog/networks/yahoo.gif');

#--------------------------------------------------------------
# Table:	contrexx_module_blog_networks_lang
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_blog_networks_lang`;

CREATE TABLE `contrexx_module_blog_networks_lang` (
 `network_id` int(8) unsigned NOT NULL,
 `lang_id` int(2) unsigned NOT NULL,
  PRIMARY KEY (`network_id`,`lang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_blog_networks_lang` (`network_id`, `lang_id`) VALUES 
('1', '1'),
('1', '2'),
('1', '3'),
('2', '1'),
('2', '2'),
('2', '3'),
('3', '1'),
('3', '2'),
('3', '3'),
('4', '1'),
('4', '2'),
('4', '3'),
('5', '1'),
('5', '2'),
('5', '3'),
('6', '1'),
('6', '2'),
('6', '3'),
('7', '1'),
('7', '2'),
('7', '3'),
('8', '1'),
('8', '2'),
('8', '3'),
('9', '1'),
('9', '2'),
('9', '3'),
('10', '1'),
('10', '2'),
('10', '3'),
('11', '1'),
('11', '2'),
('11', '3'),
('12', '1'),
('12', '2'),
('12', '3'),
('13', '1'),
('13', '2'),
('13', '3'),
('14', '1'),
('14', '2'),
('14', '3'),
('15', '1'),
('15', '2'),
('15', '3'),
('16', '1'),
('16', '2'),
('16', '3'),
('17', '1'),
('17', '2'),
('17', '3'),
('18', '1'),
('18', '2'),
('18', '3'),
('19', '1'),
('19', '2'),
('19', '3'),
('20', '1'),
('20', '2'),
('20', '3'),
('21', '1'),
('21', '2'),
('21', '3'),
('22', '1'),
('22', '2'),
('22', '3');

#--------------------------------------------------------------
# Table:	contrexx_module_blog_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_blog_settings`;

CREATE TABLE `contrexx_module_blog_settings` (
 `name` varchar(50) NOT NULL,
 `value` varchar(250) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_blog_settings` (`name`, `value`) VALUES 
('blog_block_activated', '1'),
('blog_block_messages', '5'),
('blog_comments_activated', '1'),
('blog_comments_anonymous', '1'),
('blog_comments_autoactivate', '1'),
('blog_comments_editor', 'wysiwyg'),
('blog_comments_notification', '1'),
('blog_comments_timeout', '30'),
('blog_general_introduction', '400'),
('blog_rss_activated', '1'),
('blog_rss_comments', '20'),
('blog_rss_messages', '5'),
('blog_tags_hitlist', '5'),
('blog_voting_activated', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_blog_votes
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_blog_votes`;

CREATE TABLE `contrexx_module_blog_votes` (
 `vote_id` int(8) unsigned NOT NULL auto_increment,
 `message_id` int(6) unsigned NOT NULL,
 `time_voted` int(14) unsigned NOT NULL default '0',
 `ip_address` varchar(15) NOT NULL default '0.0.0.0',
 `vote` enum('1','2','3','4','5','6','7','8','9','10') NOT NULL default '1',
  PRIMARY KEY (`vote_id`),
  KEY `message_id` (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3;



#--------------------------------------------------------------
# Table:	contrexx_module_calendar
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_calendar`;

CREATE TABLE `contrexx_module_calendar` (
 `id` int(11) NOT NULL auto_increment,
 `active` tinyint(1) NOT NULL default '1',
 `catid` int(11) NOT NULL default '0',
 `startdate` int(14) NULL,
 `enddate` int(14) NULL,
 `priority` int(1) NOT NULL default '3',
 `access` int(1) NOT NULL default '0',
 `name` varchar(100) NOT NULL default '',
 `comment` text NOT NULL,
 `placeName` varchar(255) NOT NULL,
 `link` varchar(255) NOT NULL default 'http://',
 `pic` varchar(255) NOT NULL default '',
 `attachment` varchar(255) NOT NULL default '',
 `placeStreet` varchar(255) NOT NULL default '',
 `placeZip` varchar(255) NOT NULL default '',
 `placeCity` varchar(255) NOT NULL default '',
 `placeLink` varchar(255) NOT NULL default '',
 `placeMap` varchar(255) NOT NULL default '',
 `organizerName` varchar(255) NOT NULL default '',
 `organizerStreet` varchar(255) NOT NULL default '',
 `organizerZip` varchar(255) NOT NULL default '',
 `organizerPlace` varchar(255) NOT NULL default '',
 `organizerMail` varchar(255) NOT NULL default '',
 `organizerLink` varchar(255) NOT NULL default '',
 `key` varchar(255) NOT NULL default '',
 `num` int(5) NOT NULL default '0',
 `mailTitle` varchar(255) NOT NULL default '',
 `mailContent` text NOT NULL,
 `registration` int(1) NOT NULL default '0',
 `groups` text NOT NULL,
 `all_groups` int(1) NOT NULL default '0',
 `public` int(1) NOT NULL default '0',
 `notification` int(1) NOT NULL,
 `notification_address` varchar(255) NOT NULL default '',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `name` (`name`,`comment`,`placeName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3;

INSERT INTO `contrexx_module_calendar` (`id`, `active`, `catid`, `startdate`, `enddate`, `priority`, `access`, `name`, `comment`, `placeName`, `link`, `pic`, `attachment`, `placeStreet`, `placeZip`, `placeCity`, `placeLink`, `placeMap`, `organizerName`, `organizerStreet`, `organizerZip`, `organizerPlace`, `organizerMail`, `organizerLink`, `key`, `num`, `mailTitle`, `mailContent`, `registration`, `groups`, `all_groups`, `public`, `notification`, `notification_address`) VALUES 
('1', '1', '1', '1238796000', '1238882340', '1', '0', 'Contrexx feiert 4. Jubiläum', 'Das <b>Contrexx Open Source Web Content Management System</b> wurde von der Firma COMVATION AG aus der Schweiz in der serverseitigen Skriptsprache PHP geschrieben, ist plattformunabh&auml;ngig und ben&ouml;tigt eine MySQL-Datenbank.<br />\r\nDas erste Release wurde am 4. April 2005 ver&ouml;ffentlicht.', 'Thun', 'http://www.contrexx.com/', 'images/content/contrexx_cms_logo.jpg', '', 'Militärstrasse 6', '3600', 'Thun', 'http://www.comvation.com/', '', 'COMVATION AG Internet Solutions', 'Militärstrasse 6', '3600', 'Thun', 'info@comvation.com', 'http://www.comvation.com/', '', '0', 'Neuer Termin', 'Hallo [[FIRSTNAME]] [[LASTNAME]] \r\n\r\nAuf [[URL]] wurde ein neuer Termin für ihre Gruppe aufgeschaltet. Mit folgendem Link können Sie sich für diesen Anlass an- oder abmelden. \r\n\r\n[[REG_LINK]] \r\n\r\nFreundliche Grüsse \r\n[[URL]] - Team \r\n\r\n\r\n*Diese Nachricht wurde automatisch generiert*\r\n[[DATE]]', '1', '', '0', '1', '0', '');

#--------------------------------------------------------------
# Table:	contrexx_module_calendar_access
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_calendar_access`;

CREATE TABLE `contrexx_module_calendar_access` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `name` varchar(64) NOT NULL default '',
 `description` varchar(255) NOT NULL default '',
 `access_id` int(11) unsigned NOT NULL default '0',
 `type` enum('global','frontend','backend') NOT NULL default 'global',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_module_calendar_access` (`id`, `name`, `description`, `access_id`, `type`) VALUES 
('1', 'showNote', 'Community Events einsehen', '116', 'frontend');

#--------------------------------------------------------------
# Table:	contrexx_module_calendar_categories
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_calendar_categories`;

CREATE TABLE `contrexx_module_calendar_categories` (
 `id` int(5) NOT NULL auto_increment,
 `name` varchar(150) NOT NULL default '',
 `status` int(1) NOT NULL default '0',
 `lang` int(1) NOT NULL default '0',
 `pos` int(5) NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_module_calendar_categories` (`id`, `name`, `status`, `lang`, `pos`) VALUES 
('1', 'Contrexx CMS', '1', '1', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_calendar_form_data
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_calendar_form_data`;

CREATE TABLE `contrexx_module_calendar_form_data` (
 `reg_id` int(10) NOT NULL,
 `field_id` int(10) NOT NULL,
 `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



#--------------------------------------------------------------
# Table:	contrexx_module_calendar_form_fields
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_calendar_form_fields`;

CREATE TABLE `contrexx_module_calendar_form_fields` (
 `id` int(7) NOT NULL auto_increment,
 `note_id` int(10) NOT NULL,
 `name` text NOT NULL,
 `type` int(1) NOT NULL,
 `required` int(1) NOT NULL,
 `order` int(3) NOT NULL,
 `key` int(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14;

INSERT INTO `contrexx_module_calendar_form_fields` (`id`, `note_id`, `name`, `type`, `required`, `order`, `key`) VALUES 
('1', '1', 'Vorname', '1', '0', '0', '1'),
('2', '1', 'Nachname', '1', '0', '0', '2'),
('3', '1', 'Strasse', '1', '0', '0', '3'),
('4', '1', 'PLZ', '1', '0', '0', '4'),
('5', '1', 'Wohnort', '1', '0', '0', '5'),
('6', '1', 'E-Mail', '1', '0', '0', '6'),
('7', '1', 'Website', '1', '0', '0', '7'),
('8', '1', 'Telefon', '1', '0', '0', '8'),
('9', '1', 'Firma', '1', '0', '0', '12'),
('10', '1', 'Begleitung', '1', '0', '0', '13');

#--------------------------------------------------------------
# Table:	contrexx_module_calendar_registrations
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_calendar_registrations`;

CREATE TABLE `contrexx_module_calendar_registrations` (
 `id` int(7) NOT NULL auto_increment,
 `note_id` int(7) NOT NULL,
 `time` int(14) NOT NULL,
 `host` varchar(255) NOT NULL,
 `ip_address` varchar(15) NOT NULL,
 `type` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_calendar_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_calendar_settings`;

CREATE TABLE `contrexx_module_calendar_settings` (
 `setid` int(7) NOT NULL auto_increment,
 `setname` varchar(255) NOT NULL,
 `setvalue` text NOT NULL,
  PRIMARY KEY (`setid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7;

INSERT INTO `contrexx_module_calendar_settings` (`setid`, `setname`, `setvalue`) VALUES 
('1', 'mailTitle', 'Neuer Termin'),
('2', 'mailContent', 'Hallo [[FIRSTNAME]] [[LASTNAME]] \r\n\r\nAuf [[URL]] wurde ein neuer Termin für ihre Gruppe aufgeschaltet. Mit folgendem Link können Sie sich für diesen Anlass an- oder abmelden. \r\n\r\n[[REG_LINK]]\r\n\r\nFreundliche Grüsse \r\n[[URL]] - Team \r\n\r\n\r\n*Diese Nachricht wurde automatisch generiert*\r\n[[DATE]]'),
('3', 'mailConTitle', '[[REG_TYPE]] erfolgreich eingetragen'),
('4', 'mailConContent', 'Hallo [[FIRSTNAME]] [[LASTNAME]]\r\n\r\nIhre [[REG_TYPE]] zum Termin \"[[TITLE]] vom [[START_DATE]]\" wurde in unserem System erfolgreich eingetragen.\r\n\r\nFreundliche Grüsse\r\n[[URL]] - Team\r\n\r\n\r\n*Diese Nachricht wurde automatisch generiert*\r\n[[DATE]]'),
('5', 'mailNotTitle', 'Neue [[REG_TYPE]] auf [[URL]]'),
('6', 'mailNotContent', 'Hallo Admin\r\n\r\nAuf [[URL]] wurde eine neue [[REG_TYPE]] eingetragen. \r\n\r\nTermin:   [[TITLE]]\r\nVorname:  [[FIRSTNAME]]\r\nNachname: [[LASTNAME]]\r\nE-Mail:   [[E-MAIL]]\r\n\r\nWeitere Informationen können Sie in der Administrationsumgebung einsehen.\r\n\r\n[[URL]]/cadmin/\r\n\r\n\r\n*Diese Nachricht wurde automatisch generiert*\r\n[[DATE]]');

#--------------------------------------------------------------
# Table:	contrexx_module_calendar_style
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_calendar_style`;

CREATE TABLE `contrexx_module_calendar_style` (
 `id` int(11) NOT NULL auto_increment,
 `tableWidth` varchar(4) NOT NULL default '141',
 `tableHeight` varchar(4) NOT NULL default '92',
 `tableColor` varchar(7) NOT NULL default '',
 `tableBorder` int(11) NOT NULL default '0',
 `tableBorderColor` varchar(7) NOT NULL default '',
 `tableSpacing` int(11) NOT NULL default '0',
 `fontSize` int(11) NOT NULL default '10',
 `fontColor` varchar(7) NOT NULL default '',
 `numColor` varchar(7) NOT NULL default '',
 `normalDayColor` varchar(7) NOT NULL default '',
 `normalDayRollOverColor` varchar(7) NOT NULL default '',
 `curDayColor` varchar(7) NOT NULL default '',
 `curDayRollOverColor` varchar(7) NOT NULL default '',
 `eventDayColor` varchar(7) NOT NULL default '',
 `eventDayRollOverColor` varchar(7) NOT NULL default '',
 `shownEvents` int(4) NOT NULL default '10',
 `periodTime` varchar(5) NOT NULL default '00 23',
 `stdCat` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3;

INSERT INTO `contrexx_module_calendar_style` (`id`, `tableWidth`, `tableHeight`, `tableColor`, `tableBorder`, `tableBorderColor`, `tableSpacing`, `fontSize`, `fontColor`, `numColor`, `normalDayColor`, `normalDayRollOverColor`, `curDayColor`, `curDayRollOverColor`, `eventDayColor`, `eventDayRollOverColor`, `shownEvents`, `periodTime`, `stdCat`) VALUES 
('1', '141', '92', '#ffffff', '1', '#cccccc', '0', '10', '#000000', '#0000ff', '#ffffff', '#eeeeee', '#00ccff', '#0066ff', '#00cc00', '#009900', '10', '00 23', ''),
('2', '141', '92', '#ffffff', '1', '#cccccc', '0', '10', '#000000', '#0000ff', '#ffffff', '#eeeeee', '#00ccff', '#0066ff', '#00cc00', '#009900', '10', '05 19', '1>1');

#--------------------------------------------------------------
# Table:	contrexx_module_contact_form
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_contact_form`;

CREATE TABLE `contrexx_module_contact_form` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `name` varchar(255) NOT NULL default '',
 `mails` text NOT NULL,
 `subject` varchar(255) NOT NULL default '',
 `text` text NOT NULL,
 `feedback` text NOT NULL,
 `showForm` tinyint(1) unsigned NOT NULL default '0',
 `use_captcha` tinyint(1) unsigned NOT NULL default '1',
 `use_custom_style` tinyint(1) unsigned NOT NULL default '0',
 `langId` tinyint(2) unsigned NOT NULL default '1',
 `send_copy` int(1) NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5;

INSERT INTO `contrexx_module_contact_form` (`id`, `name`, `mails`, `subject`, `text`, `feedback`, `showForm`, `use_captcha`, `use_custom_style`, `langId`, `send_copy`) VALUES 
('4', 'Kontakt Formular', 'info@example.com', 'Kontakt Formular', 'Dies ist ein Besipielformular.<br />', 'Vielen Dank f&uuml;r Ihre Anfrage. Wir werden uns so schnell wie M&ouml;glich mit Ihnen in Verbindung setzen.', '0', '1', '0', '1', '0');

#--------------------------------------------------------------
# Table:	contrexx_module_contact_form_data
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_contact_form_data`;

CREATE TABLE `contrexx_module_contact_form_data` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `id_form` int(10) unsigned NOT NULL default '0',
 `time` int(14) unsigned NOT NULL default '0',
 `host` varchar(255) NOT NULL default '',
 `lang` varchar(64) NOT NULL default '',
 `browser` varchar(255) NOT NULL default '',
 `ipaddress` varchar(15) NOT NULL default '',
 `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;



#--------------------------------------------------------------
# Table:	contrexx_module_contact_form_field
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_contact_form_field`;

CREATE TABLE `contrexx_module_contact_form_field` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `id_form` int(10) unsigned NOT NULL default '0',
 `name` varchar(255) NOT NULL default '',
 `type` enum('text','label','checkbox','checkboxGroup','date','file','hidden','password','radio','select','textarea') NOT NULL default 'text',
 `attributes` text NOT NULL,
 `is_required` set('0','1') NOT NULL default '0',
 `check_type` int(3) NOT NULL default '1',
 `order_id` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=40;

INSERT INTO `contrexx_module_contact_form_field` (`id`, `id_form`, `name`, `type`, `attributes`, `is_required`, `check_type`, `order_id`) VALUES 
('26', '4', 'Anrede', 'select', 'Frau,Herr', '0', '1', '0'),
('27', '4', 'Vorname', 'text', '', '1', '1', '1'),
('28', '4', 'Nachname', 'text', '', '1', '1', '2'),
('29', '4', 'Firma', 'text', '', '0', '1', '3'),
('30', '4', 'Strasse / Nr.', 'text', '', '0', '1', '4'),
('31', '4', 'PLZ / Ort', 'text', '', '0', '1', '5'),
('32', '4', 'Land', 'text', '', '0', '1', '6'),
('33', '4', 'Telefon', 'text', '', '0', '5', '7'),
('34', '4', 'Telefax', 'text', '', '0', '5', '8'),
('35', '4', 'E-Mail', 'text', '', '1', '2', '9'),
('36', '4', 'Website', 'text', '', '0', '3', '10'),
('37', '4', 'Dateiupload', 'file', '', '0', '1', '11'),
('38', '4', 'Datum', 'date', '', '0', '1', '12'),
('39', '4', 'Bemerkungen', 'textarea', '', '0', '1', '13');

#--------------------------------------------------------------
# Table:	contrexx_module_contact_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_contact_settings`;

CREATE TABLE `contrexx_module_contact_settings` (
 `setid` int(6) unsigned NOT NULL auto_increment,
 `setname` varchar(250) NOT NULL default '',
 `setvalue` text NOT NULL,
 `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY (`setid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7;

INSERT INTO `contrexx_module_contact_settings` (`setid`, `setname`, `setvalue`, `status`) VALUES 
('1', 'fileUploadDepositionPath', '/images/attach', '1'),
('2', 'spamProtectionWordList', 'poker,casino,viagra,sex,porn', '1'),
('3', 'fieldMetaDate', '1', '1'),
('4', 'fieldMetaHost', '0', '1'),
('5', 'fieldMetaLang', '0', '1'),
('6', 'fieldMetaIP', '0', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_data_categories
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_data_categories`;

CREATE TABLE `contrexx_module_data_categories` (
 `category_id` int(4) unsigned NOT NULL default '0',
 `lang_id` int(2) unsigned NOT NULL default '0',
 `is_active` enum('0','1') NOT NULL default '1',
 `parent_id` int(10) unsigned NOT NULL default '0',
 `name` varchar(100) NOT NULL default '',
 `active` enum('0','1') NOT NULL default '1',
 `cmd` int(10) unsigned NOT NULL default '1',
 `action` enum('content','overlaybox','subcategories') NOT NULL default 'content',
 `sort` int(10) unsigned NOT NULL default '1',
 `box_height` int(10) unsigned NOT NULL default '500',
 `box_width` int(11) NOT NULL default '350',
 `template` text NOT NULL,
  PRIMARY KEY (`category_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_data_categories` (`category_id`, `lang_id`, `is_active`, `parent_id`, `name`, `active`, `cmd`, `action`, `sort`, `box_height`, `box_width`, `template`) VALUES 
('1', '1', '1', '0', 'Links', '1', '0', 'overlaybox', '1', '300', '500', '<!-- BEGIN datalist_category -->\r\n<!-- this displays the category and the subcategories -->\r\n<div class=\"datalist_block\">\r\n<dl>\r\n	<!-- BEGIN category -->\r\n	<dt class=\"cattitle\"><div class=\"bg\"><h4>[[CATTITLE]]</h4></div></dt>\r\n	<dd class=\"catcontent\">\r\n		<dl>\r\n		<!-- BEGIN entry -->\r\n		<dt>[[TITLE]]</dt>\r\n		<dd>\r\n			[[IMAGE]] [[CONTENT]] <a href=\"[[HREF]]\" [[CLASS]] [[TARGET]]>[[TXT_MORE]]</a>\r\n			<br style=\"clear: both;\" />\r\n		</dd>\r\n		<!-- END entry -->\r\n		</dl>\r\n	</dd>\r\n	<!-- END category -->\r\n</dl>\r\n</div>\r\n<!-- END datalist_category -->\r\n\r\n<!-- BEGIN datalist_single_category-->\r\n<!-- this displays just the entries of the category -->\r\n<div class=\"datalist_block\">\r\n<dl>\r\n    <!-- BEGIN single_entry -->\r\n    <dt class=\"cattitle\"><div class=\"bg\"><h4>[[TITLE]]</h4></div></dt>\r\n    <dd class=\"catcontent2\">\r\n        [[IMAGE]] <p>[[CONTENT]] <a href=\"[[HREF]]\" [[CLASS]] [[TARGET]]>[[TXT_MORE]]</a></p>\r\n        <div style=\"clear: both;\" />\r\n    </dd>\r\n    <!-- END single_entry -->\r\n</dl>\r\n</div>\r\n<!-- END datalist_single_category -->');

#--------------------------------------------------------------
# Table:	contrexx_module_data_message_to_category
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_data_message_to_category`;

CREATE TABLE `contrexx_module_data_message_to_category` (
 `message_id` int(6) unsigned NOT NULL default '0',
 `category_id` int(4) unsigned NOT NULL default '0',
 `lang_id` int(2) unsigned NOT NULL default '0',
  PRIMARY KEY (`message_id`,`category_id`,`lang_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_data_message_to_category` (`message_id`, `category_id`, `lang_id`) VALUES 
('1', '1', '1'),
('2', '1', '1'),
('3', '1', '1'),
('4', '1', '1'),
('5', '1', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_data_messages
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_data_messages`;

CREATE TABLE `contrexx_module_data_messages` (
 `message_id` int(6) unsigned NOT NULL auto_increment,
 `user_id` int(5) unsigned NOT NULL default '0',
 `time_created` int(14) unsigned NOT NULL default '0',
 `time_edited` int(14) unsigned NOT NULL default '0',
 `hits` int(7) unsigned NOT NULL default '0',
 `active` enum('0','1') NOT NULL default '1',
 `sort` int(10) unsigned NOT NULL default '1',
 `mode` set('normal','forward') NOT NULL default 'normal',
 `release_time` int(15) NOT NULL default '0',
 `release_time_end` int(15) NOT NULL default '0',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6;

INSERT INTO `contrexx_module_data_messages` (`message_id`, `user_id`, `time_created`, `time_edited`, `hits`, `active`, `sort`, `mode`, `release_time`, `release_time_end`) VALUES 
('3', '0', '1213692489', '1213721384', '0', '1', '1', 'normal', '0', '0'),
('4', '0', '1213711405', '1213711405', '0', '1', '2', 'forward', '0', '0'),
('5', '0', '1213712506', '1213779262', '0', '1', '3', 'normal', '0', '0');

#--------------------------------------------------------------
# Table:	contrexx_module_data_messages_lang
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_data_messages_lang`;

CREATE TABLE `contrexx_module_data_messages_lang` (
 `message_id` int(6) unsigned NOT NULL default '0',
 `lang_id` int(2) unsigned NOT NULL default '0',
 `is_active` enum('0','1') NOT NULL default '1',
 `subject` varchar(250) NOT NULL default '',
 `content` text NOT NULL,
 `tags` varchar(250) NOT NULL default '',
 `image` varchar(250) NOT NULL default '',
 `attachment` varchar(255) NOT NULL default '',
 `mode` set('normal','forward') NOT NULL default 'normal',
 `forward_url` varchar(255) NOT NULL default '',
 `forward_target` varchar(40) NULL,
  PRIMARY KEY (`message_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_data_messages_lang` (`message_id`, `lang_id`, `is_active`, `subject`, `content`, `tags`, `image`, `attachment`, `mode`, `forward_url`, `forward_target`) VALUES 
('1', '1', '1', 'itnews.ch', '&laquo;Ihr Recht auf Informations-Technologie&raquo; - Mit dieser Botschaft steigt ITNews.ch zur neuen Schweizer Multiplattform im IT-Bereich ein. ITNews.ch strebt mit Ihrem Portal der Gerechtigkeit entgegen, jederzeit auf die neusten und wichtigsten News und Ger&uuml;chte im Informationstechnologie-Bereich zugreifen zu k&ouml;nnen.<br />\n<br />\n<a href=\"http://www.itnews.ch\">www.itnews.ch</a>', '', '', '', 'normal', 'http://www.itnews.ch', ''),
('2', '1', '1', 'abc', 'abc&nbsp;', '', '', '', 'normal', '', ''),
('3', '1', '1', 'Itnews.ch', '&laquo;Ihr Recht auf Informations-Technologie&raquo; - Mit dieser Botschaft steigt ITNews.ch zur neuen Schweizer Multiplattform im IT-Bereich ein. ITNews.ch strebt mit Ihrem Portal der Gerechtigkeit entgegen, jederzeit auf die neusten und wichtigsten News und Ger&uuml;chte im Informationstechnologie-Bereich zugreifen zu k&ouml;nnen.<br />\r\n<br />\r\n<a href=\"http://www.itnews.ch\">www.itnews.ch</a>&nbsp;', '', '', '', 'normal', '', ''),
('4', '1', '1', 'cssmania.com', 'Contrexx Webseite auf cssmania.com', '', '', '', 'normal', 'http://cssmania.com/galleries/2008/03/16/contrexx.php', '_blank'),
('5', '1', '1', 'Contrexx Support', 'Wiki: <a href=\"http://contrexx.com/wiki/de/index.php?title=Hauptseite\">http://contrexx.com/wiki/de/index.php?title=Hauptseite</a><br />\r\n    Support-System: <a href=\"http://support.comvation.com\">http://support.comvation.com</a>', '', '', '', 'normal', '', '');

#--------------------------------------------------------------
# Table:	contrexx_module_data_placeholders
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_data_placeholders`;

CREATE TABLE `contrexx_module_data_placeholders` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `type` set('cat','entry') NOT NULL default '',
 `ref_id` int(11) NOT NULL default '0',
 `placeholder` varchar(255) NOT NULL default '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `placeholder` (`placeholder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27;

INSERT INTO `contrexx_module_data_placeholders` (`id`, `type`, `ref_id`, `placeholder`) VALUES 
('16', 'entry', '4', 'DETAIL_4'),
('19', 'entry', '3', 'DETAIL_3'),
('23', 'entry', '5', 'DETAIL_5'),
('26', 'cat', '1', 'LINKS');

#--------------------------------------------------------------
# Table:	contrexx_module_data_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_data_settings`;

CREATE TABLE `contrexx_module_data_settings` (
 `name` varchar(50) NOT NULL default '',
 `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_data_settings` (`name`, `value`) VALUES 
('data_block_activated', '0'),
('data_block_messages', '3'),
('data_comments_activated', '1'),
('data_comments_anonymous', '1'),
('data_comments_autoactivate', '1'),
('data_comments_editor', 'wysiwyg'),
('data_comments_notification', '1'),
('data_comments_timeout', '30'),
('data_entry_action', 'overlaybox'),
('data_general_introduction', '150'),
('data_rss_activated', '0'),
('data_rss_comments', '10'),
('data_rss_messages', '5'),
('data_tags_hitlist', '5'),
('data_target_cmd', '1'),
('data_template_category', '<!-- BEGIN datalist_category -->\r\n<!-- this displays the category and the subcategories -->\r\n<div class=\"datalist_block\">\r\n<dl>\r\n	<!-- BEGIN category -->\r\n	<dt class=\"cattitle\"><div class=\"bg\"><h4>[[CATTITLE]]</h4></div></dt>\r\n	<dd class=\"catcontent\">\r\n		<dl>\r\n		<!-- BEGIN entry -->\r\n		<dt>[[TITLE]]</dt>\r\n		<dd>\r\n			[[IMAGE]] [[CONTENT]] <a href=\"[[HREF]]\" [[CLASS]] [[TARGET]]>[[TXT_MORE]]</a>\r\n			<br style=\"clear: both;\" />\r\n		</dd>\r\n		<!-- END entry -->\r\n		</dl>\r\n	</dd>\r\n	<!-- END category -->\r\n</dl>\r\n</div>\r\n<!-- END datalist_category -->\r\n\r\n<!-- BEGIN datalist_single_category-->\r\n<!-- this displays just the entries of the category -->\r\n<div class=\"datalist_block\">\r\n<dl>\r\n    <!-- BEGIN single_entry -->\r\n    <dt class=\"cattitle\"><div class=\"bg\"><h4>[[TITLE]]</h4></div></dt>\r\n    <dd class=\"catcontent2\">\r\n        [[IMAGE]] <p>[[CONTENT]] <a href=\"[[HREF]]\" [[CLASS]] [[TARGET]]>[[TXT_MORE]]</a></p>\r\n        <div style=\"clear: both;\" />\r\n    </dd>\r\n    <!-- END single_entry -->\r\n</dl>\r\n</div>\r\n<!-- END datalist_single_category -->'),
('data_template_entry', '<!-- BEGIN datalist_entry-->\r\n<div class=\"datalist_block\">\r\n<dl>\r\n    <dt>[[TITLE]]</dt>\r\n    <dd>\r\n        [[IMAGE]] [[CONTENT]] <a href=\"[[HREF]]\" [[CLASS]]>[[TXT_MORE]]</a>\r\n        <br style=\"clear: both;\" />\r\n    </dd>\r\n</dl>\r\n</div>\r\n<!-- END datalist_entry -->'),
('data_template_thickbox', '<!-- BEGIN thickbox -->\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"themes/[[THEMES_PATH]]/buildin_style.css\" />\r\n<dl class=\"data_module\">\r\n    <dt>[[TITLE]]</dt>\r\n    <dd style=\"clear:left;\">\r\n	<!-- BEGIN image -->\r\n	<img src=\"[[PICTURE]]\" style=\"float: left; margin-right: 5px;\" />\r\n	<!-- END image -->\r\n        [[CONTENT]]\r\n        \r\n        <!-- BEGIN attachment -->\r\n    </dd>\r\n    <br />\r\n    <dt><img src=\"/themes/default/images/arrow.gif\" width=\"16\" height=\"8\" /><a href=\"javascript:void(0);\" onclick=\"window.open(\'[[HREF]]\', \'attachment\');\">[[TXT_DOWNLOAD]]</a>\r\n        <!-- END attachment -->\r\n    </dt>\r\n</dl>\r\n<!--<br />\r\n<img src=\"/themes/default/images/arrow.gif\" width=\"16\" height=\"8\" /><a onclick=\"Javascript:window.print();\" style=\"cursor:pointer;\">Drucken</a>-->\r\n<!-- END thickbox -->'),
('data_thickbox_height', '450'),
('data_thickbox_width', '400'),
('data_voting_activated', '0');

#--------------------------------------------------------------
# Table:	contrexx_module_directory_access
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_directory_access`;

CREATE TABLE `contrexx_module_directory_access` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `name` varchar(64) NOT NULL default '',
 `description` varchar(255) NOT NULL default '',
 `access_id` int(11) unsigned NOT NULL default '0',
 `type` enum('global','frontend','backend') NOT NULL default 'global',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6;

INSERT INTO `contrexx_module_directory_access` (`id`, `name`, `description`, `access_id`, `type`) VALUES 
('2', 'addFeed', 'Dateien hinzufügen', '96', 'global'),
('3', 'manageFeeds', 'Dateien verwalten', '94', 'global'),
('4', 'settings', 'Einstellungen verwalten', '92', 'backend'),
('5', 'manageCatLevels', 'Kategorien und Ebenen verwalten', '97', 'backend');

#--------------------------------------------------------------
# Table:	contrexx_module_directory_categories
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_directory_categories`;

CREATE TABLE `contrexx_module_directory_categories` (
 `id` int(6) unsigned NOT NULL auto_increment,
 `parentid` int(6) unsigned NOT NULL default '0',
 `name` varchar(100) NOT NULL default '',
 `description` varchar(250) NOT NULL default '',
 `displayorder` smallint(6) unsigned NOT NULL default '1000',
 `metadesc` varchar(250) NOT NULL default '',
 `metakeys` varchar(250) NOT NULL default '',
 `showentries` int(1) NOT NULL default '1',
 `status` int(1) NOT NULL default '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `parentid` (`parentid`),
  KEY `displayorder` (`displayorder`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6;

INSERT INTO `contrexx_module_directory_categories` (`id`, `parentid`, `name`, `description`, `displayorder`, `metadesc`, `metakeys`, `showentries`, `status`) VALUES 
('4', '0', 'Contrexx specific Links  ', 'A selection of links that are all related to the Contrexx Open Source WCMS', '0', '', '', '1', '1'),
('5', '0', 'Website Tools', 'useful Tools', '0', '', '', '1', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_directory_dir
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_directory_dir`;

CREATE TABLE `contrexx_module_directory_dir` (
 `id` int(7) unsigned NOT NULL auto_increment,
 `title` varchar(100) NOT NULL default '',
 `attachment` varchar(255) NOT NULL default '',
 `rss_file` varchar(255) NOT NULL default '',
 `rss_link` varchar(255) NOT NULL default '',
 `link` varchar(255) NOT NULL default '',
 `date` varchar(14) NULL,
 `description` mediumtext NOT NULL,
 `platform` varchar(40) NOT NULL default '',
 `language` varchar(40) NOT NULL default '',
 `relatedlinks` varchar(255) NOT NULL default '',
 `hits` int(9) NOT NULL default '0',
 `status` tinyint(1) NOT NULL default '0',
 `addedby` varchar(50) NOT NULL default '',
 `provider` varchar(255) NOT NULL default '',
 `ip` varchar(255) NOT NULL default '',
 `validatedate` varchar(14) NOT NULL default '',
 `lastip` varchar(50) NOT NULL default '',
 `popular_date` varchar(30) NOT NULL default '',
 `popular_hits` int(7) NOT NULL default '0',
 `xml_refresh` varchar(15) NOT NULL default '',
 `canton` varchar(50) NOT NULL default '',
 `searchkeys` varchar(255) NOT NULL default '',
 `company_name` varchar(100) NOT NULL default '',
 `street` varchar(255) NOT NULL default '',
 `zip` varchar(5) NOT NULL default '',
 `city` varchar(50) NOT NULL default '',
 `country` varchar(255) NOT NULL default '',
 `phone` varchar(20) NOT NULL default '',
 `contact` varchar(100) NOT NULL default '',
 `information` varchar(100) NOT NULL default '',
 `fax` varchar(20) NOT NULL default '',
 `mobile` varchar(20) NOT NULL default '',
 `mail` varchar(50) NOT NULL default '',
 `homepage` varchar(50) NOT NULL default '',
 `industry` varchar(100) NOT NULL default '',
 `legalform` varchar(50) NOT NULL default '',
 `conversion` varchar(50) NOT NULL default '',
 `employee` varchar(255) NOT NULL default '',
 `foundation` varchar(10) NOT NULL default '',
 `mwst` varchar(50) NOT NULL default '',
 `opening` varchar(255) NOT NULL default '',
 `holidays` varchar(255) NOT NULL default '',
 `places` varchar(255) NOT NULL default '',
 `logo` varchar(50) NOT NULL default '',
 `team` varchar(255) NOT NULL default '',
 `portfolio` varchar(255) NOT NULL default '',
 `offers` varchar(255) NOT NULL default '',
 `concept` varchar(255) NOT NULL default '',
 `map` varchar(255) NOT NULL default '',
 `lokal` varchar(255) NOT NULL default '',
 `spezial` int(4) NOT NULL default '0',
 `premium` int(1) NOT NULL default '0',
 `longitude` decimal(18,15) NOT NULL default '0.000000000000000',
 `latitude` decimal(18,15) NOT NULL default '0.000000000000000',
 `zoom` decimal(18,15) NOT NULL default '1.000000000000000',
 `spez_field_1` varchar(255) NOT NULL default '',
 `spez_field_2` varchar(255) NOT NULL default '',
 `spez_field_3` varchar(255) NOT NULL default '',
 `spez_field_4` varchar(255) NOT NULL default '',
 `spez_field_5` varchar(255) NOT NULL default '',
 `spez_field_6` mediumtext NOT NULL,
 `spez_field_7` mediumtext NOT NULL,
 `spez_field_8` mediumtext NOT NULL,
 `spez_field_9` mediumtext NOT NULL,
 `spez_field_10` mediumtext NOT NULL,
 `spez_field_11` varchar(255) NOT NULL default '',
 `spez_field_12` varchar(255) NOT NULL default '',
 `spez_field_13` varchar(255) NOT NULL default '',
 `spez_field_14` varchar(255) NOT NULL default '',
 `spez_field_15` varchar(255) NOT NULL default '',
 `spez_field_21` varchar(255) NOT NULL default '',
 `spez_field_22` varchar(255) NOT NULL default '',
 `spez_field_16` varchar(255) NOT NULL default '',
 `spez_field_17` varchar(255) NOT NULL default '',
 `spez_field_18` varchar(255) NOT NULL default '',
 `spez_field_19` varchar(255) NOT NULL default '',
 `spez_field_20` varchar(255) NOT NULL default '',
 `spez_field_23` varchar(255) NOT NULL default '',
 `spez_field_24` varchar(255) NOT NULL default '',
 `spez_field_25` varchar(255) NOT NULL default '',
 `spez_field_26` varchar(255) NOT NULL default '',
 `spez_field_27` varchar(255) NOT NULL default '',
 `spez_field_28` varchar(255) NOT NULL default '',
 `spez_field_29` varchar(255) NOT NULL default '',
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `temphitsout` (`hits`),
  KEY `status` (`status`),
  FULLTEXT KEY `name` (`title`,`description`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `title` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23;

INSERT INTO `contrexx_module_directory_dir` (`id`, `title`, `attachment`, `rss_file`, `rss_link`, `link`, `date`, `description`, `platform`, `language`, `relatedlinks`, `hits`, `status`, `addedby`, `provider`, `ip`, `validatedate`, `lastip`, `popular_date`, `popular_hits`, `xml_refresh`, `canton`, `searchkeys`, `company_name`, `street`, `zip`, `city`, `country`, `phone`, `contact`, `information`, `fax`, `mobile`, `mail`, `homepage`, `industry`, `legalform`, `conversion`, `employee`, `foundation`, `mwst`, `opening`, `holidays`, `places`, `logo`, `team`, `portfolio`, `offers`, `concept`, `map`, `lokal`, `spezial`, `premium`, `longitude`, `latitude`, `zoom`, `spez_field_1`, `spez_field_2`, `spez_field_3`, `spez_field_4`, `spez_field_5`, `spez_field_6`, `spez_field_7`, `spez_field_8`, `spez_field_9`, `spez_field_10`, `spez_field_11`, `spez_field_12`, `spez_field_13`, `spez_field_14`, `spez_field_15`, `spez_field_21`, `spez_field_22`, `spez_field_16`, `spez_field_17`, `spez_field_18`, `spez_field_19`, `spez_field_20`, `spez_field_23`, `spez_field_24`, `spez_field_25`, `spez_field_26`, `spez_field_27`, `spez_field_28`, `spez_field_29`) VALUES 
('8', 'MySQL', '', '', '', 'http://www.mysql.com/', '1190313624', 'The database that Contrexx uses. The world\'s most popular open source database', '', '', '', '1', '1', '1', '84-72-45-57.dclient.hispeed.ch', '84.72.45.57', '', '84.72.45.57', '1213653600', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '1', '0.000000000000000', '0.000000000000000', '0.000000000000000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Sweden', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('9', 'PHP.net', '', '', '', 'http://www.php.net/', '1190313961', 'The language that Contrexx is developed in. PHP is a widely-used general-purpose scripting language that is especially suited for Web development and can be embedded into HTML.', '', 'English', '', '3', '1', '1', '84-72-45-57.dclient.hispeed.ch', '84.72.45.57', '', '84.72.45.57', '1213653600', '0', '', '', '', '', '', '', '', 'Schweiz', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0.000000000000000', '0.000000000000000', '0.000000000000000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Israel', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('10', 'Offizielle Contrexx Webseite', '', '', '', 'http://www.contrexx.com/', '1209933916', 'Dies ist die offizielle Webseite des Contrexx Open Source Web Content Management System.', '', 'Deutsch', '', '5', '1', '1', '77-56-249-234.dclient.hispeed.ch', '77.56.249.234', '', '67.71.122.171', '1213653600', '0', '', '', '', '', 'Militärstrasse 6', '3600', 'Thun', 'Schweiz', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0.000000000000000', '0.000000000000000', '0.000000000000000', '', '', '', '', '', '', '', '', '', '', 'c6ce3cd6f88f8d28302d12aa64cf0b25.jpg', '', '', '', '', 'Switzerland', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('16', 'Contrexx Community Forum', '', '', '', 'http://www.contrexx.com/forum/', '1210096076', 'Moderiertes Community Forum in deutscher und englischer Sprache', '', '', '', '1', '1', '1', '84-72-45-57.dclient.hispeed.ch', '84.72.45.57', '1210096076', '84.72.45.57', '1213653600', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0.000000000000000', '0.000000000000000', '0.000000000000000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Switzerland', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('17', 'The Apache Software Foundation', '', '', '', 'http://www.apache.org/', '1210096268', 'The Apache Software Foundation provides support for the Apache community of open-source software projects. The Apache projects are characterized by a collaborative, consensus based development process, an open and pragmatic software license, and a desire to create high quality software that leads the way in its field.', '', '', '', '0', '1', '1', '84-72-45-57.dclient.hispeed.ch', '84.72.45.57', '1210096268', '', '1213653600', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0.000000000000000', '0.000000000000000', '0.000000000000000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'United States', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('18', 'Filezilla FTP-Programm', '', '', '', 'http://www.filezilla.de/', '1210096423', 'FileZilla ist ein modernes und leistungsstarkes FTP-Programm für Windows, MAC und Linux Betriebssysteme. ', '', '', '', '1', '1', '1', '84-72-45-57.dclient.hispeed.ch', '84.72.45.57', '1210096423', '84.72.45.57', '1213653600', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0.000000000000000', '0.000000000000000', '0.000000000000000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'United States', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('19', 'IconArchive.com', '', '', '', 'http://www.iconarchive.com', '1210096761', 'The Icon Archive is a categorized collection of high quality desktop & web icon sets. In total we have over 17,800 icons in 644 sets from 150 icon authors. Icons can be used for Windows (XP, Vista, etc.), Macintosh (OSX, OS) and Linux (as PNG Files).', '', '', '', '1', '1', '1', '84-72-45-57.dclient.hispeed.ch', '84.72.45.57', '1210096761', '84.72.45.57', '1213653600', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0.000000000000000', '0.000000000000000', '0.000000000000000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'United States', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('20', 'MX Lookup Tool', '', '', '', 'http://www.mxtoolbox.com/', '1210096925', 'MX Lookup Tool - Check your DNS MX Records online', '', '', '', '1', '1', '1', '84-72-45-57.dclient.hispeed.ch', '84.72.45.57', '1210096925', '84.72.45.57', '1213653600', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0.000000000000000', '0.000000000000000', '0.000000000000000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'United States', '', '', '', '', '', '', '', '', '', '', '', '', '');

#--------------------------------------------------------------
# Table:	contrexx_module_directory_inputfields
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_directory_inputfields`;

CREATE TABLE `contrexx_module_directory_inputfields` (
 `id` int(7) NOT NULL auto_increment,
 `typ` int(2) NOT NULL default '0',
 `name` varchar(255) NOT NULL default '',
 `title` varchar(255) NOT NULL default '',
 `active` int(1) NOT NULL default '0',
 `active_backend` int(1) NOT NULL default '0',
 `is_required` int(11) NOT NULL default '0',
 `read_only` int(1) NOT NULL default '0',
 `sort` int(5) NOT NULL default '0',
 `exp_search` int(1) NOT NULL default '0',
 `is_search` int(1) NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=71;

INSERT INTO `contrexx_module_directory_inputfields` (`id`, `typ`, `name`, `title`, `active`, `active_backend`, `is_required`, `read_only`, `sort`, `exp_search`, `is_search`) VALUES 
('1', '1', 'title', 'TXT_DIR_F_TITLE', '1', '1', '1', '0', '1', '0', '0'),
('2', '2', 'description', 'TXT_DIR_F_DESCRIPTION', '1', '1', '1', '0', '2', '0', '0'),
('3', '3', 'platform', 'TXT_DIR_F_PLATFORM', '0', '0', '0', '0', '0', '1', '0'),
('4', '3', 'language', 'TXT_DIR_F_LANG', '0', '0', '0', '0', '6', '1', '0'),
('5', '1', 'addedby', 'TXT_DIR_F_ADDED_BY', '1', '1', '1', '0', '6', '0', '0'),
('6', '1', 'relatedlinks', 'TXT_DIR_F_RELATED_LINKS', '0', '0', '0', '0', '0', '1', '0'),
('7', '3', 'canton', 'TXT_DIR_F_CANTON', '0', '0', '0', '0', '0', '1', '0'),
('8', '2', 'searchkeys', 'TXT_DIR_F_SEARCH_KEYS', '0', '0', '0', '0', '0', '0', '0'),
('9', '1', 'company_name', 'TXT_DIR_F_CO_NAME', '0', '0', '0', '0', '0', '1', '0'),
('10', '1', 'street', 'TXT_DIR_F_STREET', '1', '1', '0', '0', '2', '1', '0'),
('11', '1', 'zip', 'TXT_DIR_F_PLZ', '1', '1', '0', '0', '3', '1', '0'),
('12', '1', 'phone', 'TXT_DIR_F_PHONE', '0', '0', '0', '0', '0', '1', '0'),
('13', '1', 'contact', 'TXT_DIR_F_PERSON', '0', '0', '0', '0', '0', '1', '0'),
('14', '1', 'city', 'TXT_DIR_CITY', '1', '1', '0', '0', '4', '1', '0'),
('15', '1', 'information', 'TXT_INFOZEILE', '0', '0', '0', '0', '0', '1', '0'),
('16', '1', 'fax', 'TXT_TELEFAX', '0', '0', '0', '0', '0', '1', '0'),
('17', '1', 'mobile', 'TXT_MOBILE', '0', '0', '0', '0', '0', '1', '0'),
('18', '1', 'mail', 'TXT_DIR_F_EMAIL', '0', '0', '0', '0', '0', '1', '0'),
('19', '1', 'homepage', 'TXT_HOMEPAGE', '0', '0', '0', '0', '0', '1', '0'),
('20', '1', 'industry', 'TXT_BRANCHE', '0', '0', '0', '0', '0', '1', '0'),
('21', '1', 'legalform', 'TXT_RECHTSFORM', '0', '0', '0', '0', '0', '1', '0'),
('22', '2', 'conversion', 'TXT_UMSATZ', '0', '0', '0', '0', '0', '0', '0'),
('23', '2', 'employee', 'TXT_MITARBEITER', '0', '0', '0', '0', '0', '1', '0'),
('24', '1', 'foundation', 'TXT_GRUENDUNGSJAHR', '0', '0', '0', '0', '0', '1', '0'),
('25', '1', 'mwst', 'TXT_MWST_NR', '0', '0', '0', '0', '0', '1', '0'),
('26', '2', 'opening', 'TXT_OEFFNUNGSZEITEN', '0', '0', '0', '0', '0', '0', '0'),
('27', '2', 'holidays', 'TXT_BETRIEBSFERIEN', '0', '0', '0', '0', '0', '0', '0'),
('28', '2', 'places', 'TXT_SUCHORTE', '0', '0', '0', '0', '0', '0', '0'),
('29', '4', 'logo', 'TXT_LOGO', '0', '0', '0', '0', '8', '0', '0'),
('30', '2', 'team', 'TXT_TEAM', '0', '0', '0', '0', '0', '0', '0'),
('32', '2', 'portfolio', 'TXT_REFERENZEN', '0', '0', '0', '0', '0', '0', '0'),
('33', '2', 'offers', 'TXT_ANGEBOTE', '0', '0', '0', '0', '0', '0', '0'),
('34', '2', 'concept', 'TXT_KONZEPT', '0', '0', '0', '0', '0', '0', '0'),
('35', '4', 'map', 'TXT_MAP', '0', '0', '0', '0', '0', '0', '0'),
('36', '4', 'lokal', 'TXT_LOKAL', '0', '0', '0', '0', '0', '0', '0'),
('37', '5', 'spez_field_1', '', '0', '0', '0', '0', '0', '1', '0'),
('38', '5', 'spez_field_2', '', '0', '0', '0', '0', '0', '1', '0'),
('39', '5', 'spez_field_3', '', '0', '0', '0', '0', '0', '1', '0'),
('40', '5', 'spez_field_4', '', '0', '0', '0', '0', '0', '1', '0'),
('41', '5', 'spez_field_5', '', '0', '0', '0', '0', '0', '1', '0'),
('42', '6', 'spez_field_6', '', '0', '0', '0', '0', '0', '1', '0'),
('43', '6', 'spez_field_7', '', '0', '0', '0', '0', '0', '1', '0'),
('44', '6', 'spez_field_8', '', '0', '0', '0', '0', '0', '1', '0'),
('45', '6', 'spez_field_9', '', '0', '0', '0', '0', '0', '1', '0'),
('46', '6', 'spez_field_10', '', '0', '0', '0', '0', '0', '1', '0'),
('47', '7', 'spez_field_11', 'Grafik', '1', '1', '0', '0', '5', '0', '0'),
('48', '7', 'spez_field_12', '', '0', '0', '0', '0', '0', '0', '0'),
('49', '7', 'spez_field_13', '', '0', '0', '0', '0', '0', '0', '0'),
('50', '7', 'spez_field_14', '', '0', '0', '0', '0', '0', '0', '0'),
('51', '7', 'spez_field_15', '', '0', '0', '0', '0', '0', '0', '0'),
('52', '8', 'spez_field_21', 'Land', '1', '1', '1', '0', '4', '1', '1'),
('53', '8', 'spez_field_22', '', '0', '0', '0', '0', '0', '1', '0'),
('54', '7', 'spez_field_18', '', '0', '0', '0', '0', '0', '0', '0'),
('55', '7', 'spez_field_19', '', '0', '0', '0', '0', '0', '0', '0'),
('56', '7', 'spez_field_20', '', '0', '0', '0', '0', '0', '0', '0'),
('57', '9', 'spez_field_23', '', '0', '0', '0', '0', '0', '1', '0'),
('58', '9', 'spez_field_24', '', '0', '0', '0', '0', '0', '1', '0'),
('59', '10', 'spez_field_25', '', '0', '0', '0', '0', '0', '0', '0'),
('60', '10', 'spez_field_26', '', '0', '0', '0', '0', '0', '0', '0'),
('61', '10', 'spez_field_27', '', '0', '0', '0', '0', '0', '0', '0'),
('62', '10', 'spez_field_28', '', '0', '0', '0', '0', '0', '0', '0'),
('63', '10', 'spez_field_29', '', '0', '0', '0', '0', '0', '0', '0'),
('64', '7', 'spez_field_16', '', '0', '0', '0', '0', '0', '0', '0'),
('65', '7', 'spez_field_17', '', '0', '0', '0', '0', '0', '0', '0'),
('66', '1', 'link', 'TXT_DIRECTORY_LINK', '1', '1', '1', '0', '3', '0', '0'),
('67', '11', 'attachment', 'TXT_DIRECTORY_ATTACHMENT', '0', '0', '0', '0', '4', '0', '0'),
('68', '12', 'rss_link', 'TXT_DIRECTORY_RSS_FEED', '1', '1', '0', '0', '0', '0', '0'),
('69', '13', 'googlemap', 'TXT_DIR_F_GOOGLEMAP', '1', '1', '1', '0', '6', '0', '0'),
('70', '3', 'country', 'TXT_DIR_F_COUNTRY', '1', '1', '0', '0', '5', '0', '0');

#--------------------------------------------------------------
# Table:	contrexx_module_directory_levels
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_directory_levels`;

CREATE TABLE `contrexx_module_directory_levels` (
 `id` int(7) NOT NULL auto_increment,
 `parentid` int(7) NOT NULL default '0',
 `name` varchar(100) NOT NULL default '',
 `description` varchar(255) NOT NULL default '',
 `metadesc` varchar(100) NOT NULL default '',
 `metakeys` varchar(100) NOT NULL default '',
 `displayorder` int(7) NOT NULL default '0',
 `showlevels` int(1) NOT NULL default '0',
 `showcategories` int(1) NOT NULL default '0',
 `onlyentries` int(1) NOT NULL default '0',
 `status` int(1) NOT NULL default '0',
  PRIMARY KEY (`id`),
  KEY `displayorder` (`displayorder`),
  KEY `parentid` (`parentid`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_module_directory_levels` (`id`, `parentid`, `name`, `description`, `metadesc`, `metakeys`, `displayorder`, `showlevels`, `showcategories`, `onlyentries`, `status`) VALUES 
('1', '0', 'Demo Ebene', 'Demo Ebene', '', '', '0', '1', '1', '0', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_directory_mail
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_directory_mail`;

CREATE TABLE `contrexx_module_directory_mail` (
 `id` tinyint(4) NOT NULL auto_increment,
 `title` varchar(255) NOT NULL default '',
 `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3;

INSERT INTO `contrexx_module_directory_mail` (`id`, `title`, `content`) VALUES 
('1', '[[URL]] - Eintrag aufgeschaltet', 'Hallo [[FIRSTNAME]] [[LASTNAME]] ([[USERNAME]])\r\n\r\nDein Eintrag mit dem Titel \"[[TITLE]]\" wurde auf [[URL]] erfolgreich aufgeschaltet. \r\n\r\nBenutze folgenden Link um direkt zu Deinem Eintrag zu gelangen:\r\n[[LINK]]\r\n\r\nMit freundlichen Grüssen\r\n[[URL]] - Team\r\n\r\n[[DATE]]'),
('2', '[[URL]] - Neuer Eintrag', 'Hallo Admin\r\n\r\nAuf [[URL]] wurde ein Eintrag aufgeschaltet oder editiert. Bitte überprüfen Sie diesen und Bestätigen Sie ihn falls nötig.\r\n\r\nEintrag Details:\r\n\r\nTitel: [[TITLE]]\r\nBenutzername: [[USERNAME]]\r\nVorname: [[FIRSTNAME]]\r\nNachname:[[LASTNAME]]\r\nLink: [[LINK]]\r\n\r\nAutomatisch generierte Nachricht\r\n[[DATE]]');

#--------------------------------------------------------------
# Table:	contrexx_module_directory_rel_dir_cat
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_directory_rel_dir_cat`;

CREATE TABLE `contrexx_module_directory_rel_dir_cat` (
 `dir_id` int(7) NOT NULL default '0',
 `cat_id` int(7) NOT NULL default '0',
  PRIMARY KEY (`dir_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_directory_rel_dir_cat` (`dir_id`, `cat_id`) VALUES 
('8', '4'),
('9', '4'),
('10', '4'),
('16', '4'),
('17', '4'),
('18', '5'),
('19', '5'),
('20', '5');

#--------------------------------------------------------------
# Table:	contrexx_module_directory_rel_dir_level
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_directory_rel_dir_level`;

CREATE TABLE `contrexx_module_directory_rel_dir_level` (
 `dir_id` int(7) NOT NULL default '0',
 `level_id` int(7) NOT NULL default '0',
  PRIMARY KEY (`dir_id`,`level_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



#--------------------------------------------------------------
# Table:	contrexx_module_directory_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_directory_settings`;

CREATE TABLE `contrexx_module_directory_settings` (
 `setid` int(6) unsigned NOT NULL auto_increment,
 `setname` varchar(250) NOT NULL default '',
 `setvalue` text NOT NULL,
 `settyp` int(1) NOT NULL default '0',
  PRIMARY KEY (`setid`),
  KEY `setname` (`setname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=41;

INSERT INTO `contrexx_module_directory_settings` (`setid`, `setname`, `setvalue`, `settyp`) VALUES 
('1', 'levels', '0', '2'),
('5', 'xmlLimit', '10', '1'),
('6', 'platform', '', '0'),
('7', 'language', ',Deutsch,English,Italian,French', '0'),
('10', 'latest_content', '3', '1'),
('11', 'latest_xml', '10', '1'),
('12', 'entryStatus', '1', '2'),
('13', 'description', '0', '2'),
('14', 'populardays', '7', '1'),
('16', 'canton', ',Aargau,Appenzell-Ausserrhoden,Appenzell-Innerrhoden,Basel-Land,\r\nBasel-Stadt,Bern,Freiburg,Genf,Glarus,Graubünden,Jura,Luzern,\r\nNeuenburg,Nidwalden,Obwalden,St. Gallen,Schaffhausen,Schwyz,\r\nSolothurn,Thurgau,Tessin,Uri,Waadt,Wallis,Zug,Zürich', '0'),
('17', 'refreshfeeds', '1', '1'),
('22', 'mark_new_entrees', '7', '1'),
('23', 'showConfirm', '1', '2'),
('26', 'addFeed', '1', '2'),
('27', 'addFeed_only_community', '1', '2'),
('28', 'editFeed', '1', '2'),
('29', 'editFeed_status', '1', '2'),
('30', 'adminMail', '', '1'),
('31', 'indexview', '0', '2'),
('32', 'spez_field_21', ',Germany,\r\nSwitzerland,\r\nAustria,\r\nLiechtenstein,\r\nUnited States,\r\nAlbania,\r\nAlgeria,\r\nAndorra,\r\nAngola,\r\nAnguilla,\r\nAntigua and Barbuda,\r\nArgentina,\r\nArmenia,\r\nAruba,\r\nAustralia,\r\nAzerbaijan Republic,\r\nBahamas,\r\nBahrain,\r\nBarbados,\r\nBelgium,\r\nBelize,\r\nBenin,\r\nBermuda,\r\nBhutan,\r\nBolivia,\r\nBosnia and Herzegovina,\r\nBotswana,\r\nBrazil,\r\nBritish Virgin Islands,\r\nBrunei,\r\nBulgaria,\r\nBurkina Faso,\r\nBurundi,\r\nCambodia,\r\nCanada,\r\nCape Verde,\r\nCayman Islands,\r\nChad,\r\nChile,\r\nChina Worldwide,\r\nColombia,\r\nComoros,\r\nCook Islands,\r\nCosta Rica,\r\nCroatia,\r\nCyprus,\r\nCzech Republic,\r\nDemocratic Republic of the Congo,\r\nDenmark,\r\nDjibouti,\r\nDominica,\r\nDominican Republic,\r\nEcuador,\r\nEl Salvador,\r\nEritrea,\r\nEstonia,\r\nEthiopia,\r\nFalkland Islands,\r\nFaroe Islands,\r\nFederated States of Micronesia,\r\nFiji,\r\nFinland,\r\nFrance,\r\nFrench Guiana,\r\nFrench Polynesia,\r\nGabon Republic,\r\nGambia,\r\nGibraltar,\r\nGreece,\r\nGreenland,\r\nGrenada,\r\nGuadeloupe,\r\nGuatemala,\r\nGuinea,\r\nGuinea Bissau,\r\nGuyana,\r\nHonduras,\r\nHong Kong,\r\nHungary,\r\nIceland,\r\nIndia,\r\nIndonesia,\r\nIreland,\r\nIsrael,\r\nItaly,\r\nJamaica,\r\nJapan,\r\nJordan,\r\nKazakhstan,\r\nKenya,\r\nKiribati,\r\nKuwait,\r\nKyrgyzstan,\r\nLaos,\r\nLatvia,\r\nLesotho,\r\nLithuania,\r\nLuxembourg,\r\nMadagascar,\r\nMalawi,\r\nMalaysia,\r\nMaldives,\r\nMali,\r\nMalta,\r\nMarshall Islands,\r\nMartinique,\r\nMauritania,\r\nMauritius,\r\nMayotte,\r\nMexico,\r\nMongolia,\r\nMontserrat,\r\nMorocco,\r\nMozambique,\r\nNamibia,\r\nNauru,\r\nNepal,\r\nNetherlands,\r\nNetherlands Antilles,\r\nNew Caledonia,\r\nNew Zealand,\r\nNicaragua,\r\nNiger,\r\nNiue,\r\nNorfolk Island,\r\nNorway,\r\nOman,\r\nPalau,\r\nPanama,\r\nPapua New Guinea,\r\nPeru,\r\nPhilippines,\r\nPitcairn Islands,\r\nPoland,\r\nPortugal,\r\nQatar,\r\nRepublic of the Congo,\r\nReunion,\r\nRomania,\r\nRussia,\r\nRwanda,\r\nSaint Vincent and the Grenadines,\r\nSamoa,\r\nSan Marino,\r\nSão Tomé and Príncipe,\r\nSaudi Arabia,\r\nSenegal,\r\nSeychelles,\r\nSierra Leone,\r\nSingapore,\r\nSlovakia,\r\nSlovenia,\r\nSolomon Islands,\r\nSomalia,\r\nSouth Africa,\r\nSouth Korea,\r\nSpain,\r\nSri Lanka,\r\nSt. Helena,\r\nSt. Kitts and Nevis,\r\nSt. Lucia,\r\nSt. Pierre and Miquelon,\r\nSuriname,\r\nSvalbard and Jan Mayen Islands,\r\nSwaziland,\r\nSweden,\r\nTaiwan,\r\nTajikistan,\r\nTanzania,\r\nThailand,\r\nTogo,\r\nTonga,\r\nTrinidad and Tobago,\r\nTunisia,\r\nTurkey,\r\nTurkmenistan,\r\nTurks and Caicos Islands,\r\nTuvalu,\r\nUganda,\r\nUkraine,\r\nUnited Arab Emirates,\r\nUnited Kingdom,\r\nUruguay,\r\nVanuatu,\r\nVatican City State,\r\nVenezuela,\r\nVietnam,\r\nWallis and Futuna Islands,\r\nYemen,\r\nZambia', '0'),
('33', 'spez_field_22', '', '0'),
('34', 'thumbSize', '120', '1'),
('35', 'sortOrder', '0', '2'),
('36', 'spez_field_23', '', '0'),
('37', 'spez_field_24', '', '0'),
('38', 'encodeFilename', '1', '2'),
('39', 'country', ',Schweiz,Deutschland,Österreich,Weltweit', '0'),
('40', 'pagingLimit', '20', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_directory_settings_google
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_directory_settings_google`;

CREATE TABLE `contrexx_module_directory_settings_google` (
 `setid` int(6) unsigned NOT NULL auto_increment,
 `setname` varchar(250) NOT NULL default '',
 `setvalue` text NOT NULL,
 `settyp` int(1) NOT NULL default '0',
  PRIMARY KEY (`setid`),
  KEY `setname` (`setname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28;

INSERT INTO `contrexx_module_directory_settings_google` (`setid`, `setname`, `setvalue`, `settyp`) VALUES 
('1', 'googleSeach', '0', '2'),
('2', 'googleResults', '', '1'),
('26', 'googleId', '', '1'),
('27', 'googleLang', '', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_directory_vote
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_directory_vote`;

CREATE TABLE `contrexx_module_directory_vote` (
 `id` int(7) NOT NULL auto_increment,
 `feed_id` int(7) NOT NULL default '0',
 `vote` int(2) NOT NULL default '0',
 `count` int(7) NOT NULL default '0',
 `client` varchar(255) NOT NULL default '',
 `time` varchar(20) NOT NULL default '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5;

INSERT INTO `contrexx_module_directory_vote` (`id`, `feed_id`, `vote`, `count`, `client`, `time`) VALUES 
('1', '10', '19', '2', '4026e759d242bb3303ad702270cc4e7b', '1209978828'),
('2', '9', '19', '2', '4026e759d242bb3303ad702270cc4e7b', '1209978836'),
('3', '8', '10', '1', '4026e759d242bb3303ad702270cc4e7b', '1209978820'),
('4', '20', '8', '1', '4026e759d242bb3303ad702270cc4e7b', '1213177144');

#--------------------------------------------------------------
# Table:	contrexx_module_docsys
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_docsys`;

CREATE TABLE `contrexx_module_docsys` (
 `id` int(6) unsigned NOT NULL auto_increment,
 `date` int(14) NULL,
 `title` varchar(250) NOT NULL default '',
 `author` varchar(150) NOT NULL default '',
 `text` mediumtext NOT NULL,
 `source` varchar(250) NOT NULL default '',
 `url1` varchar(250) NOT NULL default '',
 `url2` varchar(250) NOT NULL default '',
 `catid` int(2) unsigned NOT NULL default '0',
 `lang` int(2) unsigned NOT NULL default '0',
 `userid` int(6) unsigned NOT NULL default '0',
 `startdate` date NOT NULL default '0000-00-00',
 `enddate` date NOT NULL default '0000-00-00',
 `status` tinyint(4) NOT NULL default '1',
 `changelog` int(14) NOT NULL default '0',
  KEY `ID` (`id`),
  FULLTEXT KEY `newsindex` (`title`,`text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5;

INSERT INTO `contrexx_module_docsys` (`id`, `date`, `title`, `author`, `text`, `source`, `url1`, `url2`, `catid`, `lang`, `userid`, `startdate`, `enddate`, `status`, `changelog`) VALUES 
('1', '1121680696', 'Google Sitemaps', 'system', '<div><strong><font size=\"2\">Nutzen und Funktion der Google Sitemaps</font></strong></div>\r\n<div>&nbsp;</div>\r\n<div><font size=\"2\">Google Sitemaps sind ein neuer Dienst, welcher von der Suchmaschine Google angeboten. Der Service ist momentan noch in der BETA-Phase, hat sich im Bereich der Suchmaschinen Optimierung bereits etabliert.</font></div>\r\n<div>&nbsp;</div>\r\n<div><font size=\"2\">Das Sitemapprotokoll dient dazu, Suchmaschinen die URLs auf Ihren Websites zu melden, die zum Durchsuchen verf&uuml;gbar sind. In ihrer einfachsten Form ist eine Sitemap, die das Sitemapprotokoll verwendet, eine XML-Datei, in der URLs f&uuml;r eine Website aufgelistet werden. Beachten Sie jedoch, dass das Sitemapprotokoll nur eine Erg&auml;nzung, keinen Ersatz f&uuml;r die crawlerbasierten Verfahren darstellt, die von Suchmaschinen bereits zur Erkundung von URLs genutzt werden. Indem Sie eine Sitemap (oder mehrere) bei einer Suchmaschine einreichen, tragen Sie dazu bei, dass die Crawler der Suchmaschine bessere Ergebnisse beim Durchsuchen Ihrer Website erzielen.</font></div>\r\n<div>&nbsp;</div>\r\n<div><font size=\"2\">Contrexx erstellt beim &Auml;ndern und Erstellen Ihres Seiteninhaltes automatisch ein Sitemap-File f&uuml;r Sie. Damit dieses File von Google auch gefunden wird, m&uuml;ssen Sie sich jedoch manuell auf der Google-Seite f&uuml;r den Dienst registrieren. Dies k&ouml;nnen Sie auf folgender Seite machen: </font><a href=\"https://www.google.com/webmasters/sitemaps/login?hl=de\"><font size=\"2\">https://www.google.com/webmasters/sitemaps/login?hl=de</font></a></div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div><font size=\"2\">Sie k&ouml;nnen die automatische Erstellung der Google-Sitemap in folgendem Menu aktivieren:</font></div>\r\n<ul>\r\n    <li>Administration &gt; Grundeinstellung &gt; System &gt; Subsysteme</li>\r\n</ul>\r\n<div><font size=\"2\">Sobald Sie den Menupunkt auf aktiviert gesetzt haben, wird bei jeder &Auml;nderung Ihres Seiteninhalts automatisch eine Sitemap generiert. Diese befindet sich im Hauptverzeichnis Ihres Webservers und tr&auml;gt den Namen <strong>sitemap.xml</strong>.</font></div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div><font size=\"2\">Beispiel: </font><a href=\"http://www.beispiel.ch/\"><font size=\"2\">http://www.beispiel.ch</font></a></div>\r\n<div><font size=\"2\">Pfad zur Sitemap-Datei: </font><a href=\"http://www.beispiel.ch/sitemap.xml\"><font size=\"2\">http://www.beispiel.ch/sitemap.xml</font></a></div>\r\n<div>&nbsp;</div>\r\n<div><font size=\"2\">Beachten Sie bitte, dass zur fehlerfreien Erstellung mindestens die Berechtigungen 666 auf die Datei sitemap.xml gesetzt sein m&uuml;ssen. Ansonsten kann die Datei nicht geschrieben werden. Ausserdem muss unbedingt eine Datei mit dem Namen sitemap.xml vorhanden sein, da wir aus Sicherheitsgr&uuml;nden im Hauptverzeichnis keine neuen Dateien erzeugen k&ouml;nnen.</font></div>\r\n<div>&nbsp;</div>', '', '', '', '1', '1', '1', '0000-00-00', '0000-00-00', '1', '1176820448');

#--------------------------------------------------------------
# Table:	contrexx_module_docsys_categories
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_docsys_categories`;

CREATE TABLE `contrexx_module_docsys_categories` (
 `catid` int(2) unsigned NOT NULL auto_increment,
 `name` varchar(100) NOT NULL default '',
 `lang` int(2) unsigned NOT NULL default '1',
 `sort_style` enum('alpha','date','date_alpha') NOT NULL default 'alpha',
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_module_docsys_categories` (`catid`, `name`, `lang`, `sort_style`) VALUES 
('1', 'Anleitungen', '1', 'alpha');

#--------------------------------------------------------------
# Table:	contrexx_module_ecard_ecards
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_ecard_ecards`;

CREATE TABLE `contrexx_module_ecard_ecards` (
 `date` int(14) NOT NULL,
 `TTL` int(14) NOT NULL,
 `code` varchar(35) NOT NULL,
 `salutation` varchar(100) NOT NULL,
 `senderName` varchar(100) NOT NULL,
 `senderEmail` varchar(100) NOT NULL,
 `receiverName` varchar(100) NOT NULL,
 `receiverEmail` varchar(100) NOT NULL,
 `message` varchar(500) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



#--------------------------------------------------------------
# Table:	contrexx_module_ecard_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_ecard_settings`;

CREATE TABLE `contrexx_module_ecard_settings` (
 `id` int(11) NOT NULL auto_increment,
 `setting_name` varchar(100) NOT NULL,
 `setting_value` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20;

INSERT INTO `contrexx_module_ecard_settings` (`id`, `setting_name`, `setting_value`) VALUES 
('18', 'maxCharacters', '100'),
('19', 'maxLines', '50'),
('5', 'motive_5', ''),
('6', 'motive_6', ''),
('7', 'motive_7', ''),
('8', 'motive_8', ''),
('9', 'motive_9', ''),
('12', 'maxHeight', '300'),
('11', 'validdays', '30'),
('13', 'maxWidth', '300'),
('15', 'maxHeightThumb', '80'),
('14', 'maxWidthThumb', '80'),
('16', 'subject', 'Sie haben eine E-Card erhalten...'),
('17', 'emailText', '[[ECARD_SENDER_NAME]] hat Ihnen eine E-Card geschickt.<br /> Sie können diese in den nächsten [[ECARD_VALID_DAYS]] Tage unter:<br /> [[ECARD_URL]]  abrufen.<br /> <br /> '),
('2', 'motive_2', ''),
('3', 'motive_3', ''),
('4', 'motive_4', ''),
('1', 'motive_1', '');

#--------------------------------------------------------------
# Table:	contrexx_module_egov_configuration
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_egov_configuration`;

CREATE TABLE `contrexx_module_egov_configuration` (
 `name` varchar(255) NOT NULL default '',
 `value` text NOT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_egov_configuration` (`name`, `value`) VALUES 
('set_calendar_background', '#FFFFFFF'),
('set_calendar_border', '#C9C9C9'),
('set_calendar_color_1', '#D5FFDA'),
('set_calendar_color_2', '#F7FFB4'),
('set_calendar_color_3', '#FFAEAE'),
('set_calendar_date_desc', '(Das Datum wird durch das Anklicken im Kalender übernommen.)'),
('set_calendar_date_label', 'Reservieren für das ausgewählte Datum'),
('set_calendar_legende_1', 'Freie Tage'),
('set_calendar_legende_2', 'Teilweise reserviert'),
('set_calendar_legende_3', 'Reserviert'),
('set_orderentry_email', 'Diese Daten wurden eingegeben:\r\n\r\n[[ORDER_VALUE]]\r\n'),
('set_orderentry_name', 'Contrexx Demo Webseite'),
('set_orderentry_recipient', 'reto.kohli@comvation.com'),
('set_orderentry_sender', 'egov@contrexxlabs.com'),
('set_orderentry_subject', 'Bestellung/Anfrage für [[PRODUCT_NAME]] eingegangen'),
('set_paypal_currency', 'CHF'),
('set_paypal_email', 'demo'),
('set_paypal_ipn', '1'),
('set_recipient_email', ''),
('set_sender_email', 'egov@contrexxlabs.com'),
('set_sender_name', 'Contrexx Demo'),
('set_state_email', 'Guten Tag\r\n\r\nHerzlichen Dank für Ihren Besuch bei der Contrexx Demo Webseite.\r\nIhre Bestellung/Anfrage wurde bearbeitet. Falls es sich um ein Download Produkt handelt, finden Sie ihre Bestellung im Anhang.\r\n\r\nIhre Angaben:\r\n[[ORDER_VALUE]]\r\n\r\nFreundliche Grüsse\r\nIhr Online-Team'),
('set_state_subject', 'Bestellung/Anfrage: [[PRODUCT_NAME]]'),
('yellowpay_accepted_payment_methods', 'PostFinanceCard,yellownet,Master,Visa,Amex,Diners'),
('yellowpay_authorization', 'immediate'),
('yellowpay_hashseed', 'test'),
('yellowpay_shopid', 'demo_yp'),
('yellowpay_uid', ''),
('yellowpay_use_testserver', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_egov_orders
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_egov_orders`;

CREATE TABLE `contrexx_module_egov_orders` (
 `order_id` int(11) NOT NULL auto_increment,
 `order_date` datetime NOT NULL default '0000-00-00 00:00:00',
 `order_ip` varchar(255) NOT NULL default '',
 `order_product` int(11) NOT NULL default '0',
 `order_values` text NOT NULL,
 `order_state` tinyint(4) NOT NULL default '0',
 `order_quant` tinyint(4) NOT NULL default '1',
  PRIMARY KEY (`order_id`),
  KEY `order_product` (`order_product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8;



#--------------------------------------------------------------
# Table:	contrexx_module_egov_product_calendar
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_egov_product_calendar`;

CREATE TABLE `contrexx_module_egov_product_calendar` (
 `calendar_id` int(11) NOT NULL auto_increment,
 `calendar_product` int(11) NOT NULL default '0',
 `calendar_order` int(11) NOT NULL default '0',
 `calendar_day` int(2) NOT NULL default '0',
 `calendar_month` int(2) unsigned zerofill NOT NULL default '00',
 `calendar_year` int(4) NOT NULL default '0',
 `calendar_act` tinyint(1) NOT NULL default '0',
  PRIMARY KEY (`calendar_id`),
  KEY `calendar_product` (`calendar_product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17;



#--------------------------------------------------------------
# Table:	contrexx_module_egov_product_fields
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_egov_product_fields`;

CREATE TABLE `contrexx_module_egov_product_fields` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `product` int(10) unsigned NOT NULL default '0',
 `name` varchar(255) NOT NULL default '',
 `type` enum('text','label','checkbox','checkboxGroup','file','hidden','password','radio','select','textarea') NOT NULL default 'text',
 `attributes` text NOT NULL,
 `is_required` set('0','1') NOT NULL default '0',
 `check_type` int(3) NOT NULL default '1',
 `order_id` int(5) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`),
  KEY `product` (`product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19;

INSERT INTO `contrexx_module_egov_product_fields` (`id`, `product`, `name`, `type`, `attributes`, `is_required`, `check_type`, `order_id`) VALUES 
('7', '3', 'Anrede', 'select', 'Bitte w&auml;hlen Sie,Frau,Herr', '0', '1', '0'),
('8', '3', 'Vorname', 'text', '', '1', '1', '1'),
('9', '3', 'Nachname', 'text', '', '1', '1', '2'),
('10', '3', 'Firma', 'text', '', '0', '1', '3'),
('11', '3', 'Zusatz', 'text', '', '0', '1', '4'),
('12', '3', 'Strasse', 'text', '', '0', '1', '5'),
('13', '3', 'Nummer', 'text', '', '0', '1', '6'),
('14', '3', 'Postleitzahl', 'text', '', '0', '1', '7'),
('15', '3', 'Ort', 'text', '', '0', '1', '8'),
('16', '3', 'Land', 'text', '', '0', '1', '9'),
('17', '3', 'E-Mail', 'text', '', '1', '1', '10'),
('18', '3', 'Bemerkungen', 'textarea', '', '0', '1', '11');

#--------------------------------------------------------------
# Table:	contrexx_module_egov_products
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_egov_products`;

CREATE TABLE `contrexx_module_egov_products` (
 `product_id` int(11) NOT NULL auto_increment,
 `product_autostatus` tinyint(1) NOT NULL default '0',
 `product_name` varchar(255) NOT NULL default '',
 `product_desc` text NOT NULL,
 `product_price` decimal(11,2) NOT NULL default '0.00',
 `product_per_day` enum('yes','no') NOT NULL default 'no',
 `product_quantity` tinyint(2) NOT NULL default '0',
 `product_target_email` varchar(255) NOT NULL default '',
 `product_target_url` varchar(255) NOT NULL default '',
 `product_message` text NOT NULL,
 `product_status` tinyint(1) NOT NULL default '1',
 `product_electro` tinyint(1) NOT NULL default '0',
 `product_file` varchar(255) NOT NULL default '',
 `product_sender_name` varchar(255) NOT NULL default '',
 `product_sender_email` varchar(255) NOT NULL default '',
 `product_target_subject` varchar(255) NOT NULL,
 `product_target_body` text NOT NULL,
 `product_paypal` tinyint(1) NOT NULL default '0',
 `product_paypal_sandbox` varchar(255) NOT NULL default '',
 `product_paypal_currency` varchar(255) NOT NULL default '',
 `product_orderby` int(11) NOT NULL default '0',
 `yellowpay` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4;

INSERT INTO `contrexx_module_egov_products` (`product_id`, `product_autostatus`, `product_name`, `product_desc`, `product_price`, `product_per_day`, `product_quantity`, `product_target_email`, `product_target_url`, `product_message`, `product_status`, `product_electro`, `product_file`, `product_sender_name`, `product_sender_email`, `product_target_subject`, `product_target_body`, `product_paypal`, `product_paypal_sandbox`, `product_paypal_currency`, `product_orderby`, `yellowpay`) VALUES 
('3', '1', 'Produkteschulung Contrexx WCMS Version 2.0 (limitierte Plätze)', 'Produkteschulung in Thailand<br type=\"_moz\" />', '299.00', 'yes', '20', 'example@example.com', '', '<p>Besten Dank f&uuml;r Ihre Anmeldung!<br />\r\nSie erhalten in K&uuml;rze eine E-Mail Nachricht mit den wichtigsten Informationen.</p>', '1', '0', '', 'Contrexx Demo', 'example@example.com', 'Bestellung/Anfrage: [[PRODUCT_NAME]]', 'Guten Tag\r\n\r\nHerzlichen Dank für Ihren Besuch bei der Contrexx Demo Webseite.\r\nIhre Bestellung/Anfrage wurde bearbeitet. Falls es sich um ein Download Produkt handelt, finden Sie ihre Bestellung im Anhang.\r\n\r\nIhre Angaben:\r\n[[ORDER_VALUE]]\r\n\r\nFreundliche Grüsse\r\nIhr Online-Team', '0', 'demo', 'CHF', '0', '0');

#--------------------------------------------------------------
# Table:	contrexx_module_egov_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_egov_settings`;

CREATE TABLE `contrexx_module_egov_settings` (
 `set_id` int(11) NOT NULL default '0',
 `set_sender_name` varchar(255) NOT NULL default '',
 `set_sender_email` varchar(255) NOT NULL default '',
 `set_recipient_email` varchar(255) NOT NULL default '',
 `set_state_subject` varchar(255) NOT NULL default '',
 `set_state_email` text NOT NULL,
 `set_calendar_color_1` varchar(255) NOT NULL default '',
 `set_calendar_color_2` varchar(255) NOT NULL default '',
 `set_calendar_color_3` varchar(255) NOT NULL default '',
 `set_calendar_legende_1` varchar(255) NOT NULL default '',
 `set_calendar_legende_2` varchar(255) NOT NULL default '',
 `set_calendar_legende_3` varchar(255) NOT NULL default '',
 `set_calendar_background` varchar(255) NOT NULL default '',
 `set_calendar_border` varchar(255) NOT NULL default '',
 `set_calendar_date_label` varchar(255) NOT NULL default '',
 `set_calendar_date_desc` varchar(255) NOT NULL default '',
 `set_orderentry_subject` varchar(255) NOT NULL default '',
 `set_orderentry_email` text NOT NULL,
 `set_orderentry_name` varchar(255) NOT NULL default '',
 `set_orderentry_sender` varchar(255) NOT NULL default '',
 `set_orderentry_recipient` varchar(255) NOT NULL default '',
 `set_paypal_email` text NOT NULL,
 `set_paypal_currency` text NOT NULL,
 `set_paypal_ipn` tinyint(1) NOT NULL default '0',
  KEY `set_id` (`set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_egov_settings` (`set_id`, `set_sender_name`, `set_sender_email`, `set_recipient_email`, `set_state_subject`, `set_state_email`, `set_calendar_color_1`, `set_calendar_color_2`, `set_calendar_color_3`, `set_calendar_legende_1`, `set_calendar_legende_2`, `set_calendar_legende_3`, `set_calendar_background`, `set_calendar_border`, `set_calendar_date_label`, `set_calendar_date_desc`, `set_orderentry_subject`, `set_orderentry_email`, `set_orderentry_name`, `set_orderentry_sender`, `set_orderentry_recipient`, `set_paypal_email`, `set_paypal_currency`, `set_paypal_ipn`) VALUES 
('1', 'Contrexx Demo', '', '', 'Bestellung/Anfrage: [[PRODUCT_NAME]]', 'Guten Tag\r\n\r\nHerzlichen Dank für Ihren Besuch bei der Contrexx Demo Webseite.\r\nIhre Bestellung/Anfrage wurde bearbeitet. Falls es sich um ein Download Produkt handelt, finden Sie ihre Bestellung im Anhang.\r\n\r\nIhre Angaben:\r\n[[ORDER_VALUE]]\r\n\r\nFreundliche Grüsse\r\nIhr Online-Team', '#D5FFDA', '#F7FFB4', '#FFAEAE', 'Freie Tage', 'Teilweise Reserviert', 'Reserviert', '#FFFFFFF', '#C9C9C9', 'Reservieren für das ausgewählte Datum', '(Das Datum wird durch das Anklicken im Kalender übernommen.)', 'Bestellung/Anfrage für [[PRODUCT_NAME]] eingegangen', 'Diese Daten wurden eingegeben:\r\n\r\n[[ORDER_VALUE]]\r\n', 'Contrexx Demo Webseite', '', '', '', '', '0');

#--------------------------------------------------------------
# Table:	contrexx_module_feed_category
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_feed_category`;

CREATE TABLE `contrexx_module_feed_category` (
 `id` int(11) NOT NULL auto_increment,
 `name` varchar(150) NOT NULL default '',
 `status` int(1) NOT NULL default '1',
 `time` int(100) NOT NULL default '0',
 `lang` int(1) NOT NULL default '0',
 `pos` int(3) NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_module_feed_category` (`id`, `name`, `status`, `time`, `lang`, `pos`) VALUES 
('1', 'Internet News', '1', '1134028532', '1', '0');

#--------------------------------------------------------------
# Table:	contrexx_module_feed_news
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_feed_news`;

CREATE TABLE `contrexx_module_feed_news` (
 `id` int(11) NOT NULL auto_increment,
 `subid` int(11) NOT NULL default '0',
 `name` varchar(150) NOT NULL default '',
 `link` varchar(150) NOT NULL default '',
 `filename` varchar(150) NOT NULL default '',
 `articles` int(2) NOT NULL default '0',
 `cache` int(4) NOT NULL default '3600',
 `time` int(100) NOT NULL default '0',
 `image` int(1) NOT NULL default '1',
 `status` int(1) NOT NULL default '1',
 `pos` int(3) NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7;

INSERT INTO `contrexx_module_feed_news` (`id`, `subid`, `name`, `link`, `filename`, `articles`, `cache`, `time`, `image`, `status`, `pos`) VALUES 
('3', '1', 'pressetext.schweiz News', 'http://www.pressetext.ch/produkte/rss/schlagzeilen.mc?land=ch&channel=ht&show=rss_2', '', '50', '3600', '1213775137', '1', '1', '3'),
('4', '1', 'pressetext.deutschland News', 'http://pressetext.com/produkte/rss/schlagzeilen.mc?land=de&channel=ht&show=rss_2', '', '50', '3600', '1213710904', '1', '1', '4'),
('5', '1', 'pressetext.österreich News', 'http://pressetext.com/produkte/rss/schlagzeilen.mc?land=at&channel=ht&show=rss_2', '', '50', '3600', '1213709993', '1', '1', '5');

#--------------------------------------------------------------
# Table:	contrexx_module_feed_newsml_association
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_feed_newsml_association`;

CREATE TABLE `contrexx_module_feed_newsml_association` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `pId_master` text NOT NULL,
 `pId_slave` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_feed_newsml_categories
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_feed_newsml_categories`;

CREATE TABLE `contrexx_module_feed_newsml_categories` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `providerId` text NOT NULL,
 `name` varchar(40) NOT NULL default '',
 `subjectCodes` text NOT NULL,
 `showSubjectCodes` enum('all','only','exclude') NOT NULL default 'all',
 `template` text NOT NULL,
 `limit` smallint(6) NOT NULL default '0',
 `showPics` enum('0','1') NOT NULL default '1',
 `auto_update` tinyint(1) NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_feed_newsml_documents
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_feed_newsml_documents`;

CREATE TABLE `contrexx_module_feed_newsml_documents` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `publicIdentifier` varchar(255) NOT NULL default '',
 `providerId` text NOT NULL,
 `dateId` int(8) unsigned NOT NULL default '0',
 `newsItemId` text NOT NULL,
 `revisionId` int(5) unsigned NOT NULL default '0',
 `thisRevisionDate` int(14) NOT NULL default '0',
 `urgency` smallint(5) unsigned NOT NULL default '0',
 `subjectCode` int(10) unsigned NOT NULL default '0',
 `headLine` varchar(67) NOT NULL default '',
 `dataContent` text NOT NULL,
 `is_associated` tinyint(1) unsigned NOT NULL default '0',
 `media_type` enum('Text','Graphic','Photo','Audio','Video','ComplexData') NOT NULL default 'Text',
 `source` text NOT NULL,
 `properties` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`publicIdentifier`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_feed_newsml_providers
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_feed_newsml_providers`;

CREATE TABLE `contrexx_module_feed_newsml_providers` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `providerId` text NOT NULL,
 `name` varchar(40) NOT NULL default '',
 `path` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_forum_access
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_forum_access`;

CREATE TABLE `contrexx_module_forum_access` (
 `category_id` int(5) unsigned NOT NULL default '0',
 `group_id` int(5) unsigned NOT NULL default '0',
 `read` set('0','1') NOT NULL default '0',
 `write` set('0','1') NOT NULL default '0',
 `edit` set('0','1') NOT NULL default '0',
 `delete` set('0','1') NOT NULL default '0',
 `move` set('0','1') NOT NULL default '0',
 `close` set('0','1') NOT NULL default '0',
 `sticky` set('0','1') NOT NULL default '0',
  PRIMARY KEY (`category_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_forum_access` (`category_id`, `group_id`, `read`, `write`, `edit`, `delete`, `move`, `close`, `sticky`) VALUES 
('1', '0', '1', '0', '0', '0', '0', '0', '0'),
('1', '3', '1', '0', '0', '0', '0', '0', '0'),
('1', '4', '1', '1', '1', '1', '0', '0', '0'),
('1', '5', '1', '1', '0', '0', '0', '0', '0'),
('2', '0', '1', '0', '0', '0', '0', '0', '0'),
('2', '3', '1', '0', '0', '0', '0', '0', '0'),
('2', '4', '1', '1', '1', '1', '0', '0', '0'),
('2', '5', '1', '1', '0', '0', '0', '0', '0');

#--------------------------------------------------------------
# Table:	contrexx_module_forum_categories
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_forum_categories`;

CREATE TABLE `contrexx_module_forum_categories` (
 `id` int(5) unsigned NOT NULL auto_increment,
 `parent_id` int(5) unsigned NOT NULL default '0',
 `order_id` int(5) unsigned NOT NULL default '0',
 `status` set('0','1') NOT NULL default '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5;

INSERT INTO `contrexx_module_forum_categories` (`id`, `parent_id`, `order_id`, `status`) VALUES 
('1', '0', '2', '1'),
('2', '1', '1', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_forum_categories_lang
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_forum_categories_lang`;

CREATE TABLE `contrexx_module_forum_categories_lang` (
 `category_id` int(5) unsigned NOT NULL default '0',
 `lang_id` int(5) unsigned NOT NULL default '0',
 `name` varchar(100) NOT NULL default '',
 `description` text NOT NULL,
  PRIMARY KEY (`category_id`,`lang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_forum_categories_lang` (`category_id`, `lang_id`, `name`, `description`) VALUES 
('1', '1', 'Beispielskategorie', 'Diese Kategorie soll als Beispiel dienen.'),
('1', '2', 'Beispielskategorie', 'Diese Kategorie soll als Beispiel dienen.'),
('2', '1', 'Beispielsforum', 'Dieses Forum soll Ihnen die Fähigkeiten des neuen Forenmoduls demonstrieren.');

#--------------------------------------------------------------
# Table:	contrexx_module_forum_notification
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_forum_notification`;

CREATE TABLE `contrexx_module_forum_notification` (
 `category_id` int(10) unsigned NOT NULL default '0',
 `thread_id` int(10) unsigned NOT NULL default '0',
 `user_id` int(5) unsigned NOT NULL default '0',
 `is_notified` set('0','1') NOT NULL default '0',
  PRIMARY KEY (`category_id`,`thread_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



#--------------------------------------------------------------
# Table:	contrexx_module_forum_postings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_forum_postings`;

CREATE TABLE `contrexx_module_forum_postings` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `category_id` int(5) unsigned NOT NULL default '0',
 `thread_id` int(10) unsigned NOT NULL default '0',
 `prev_post_id` int(10) unsigned NOT NULL default '0',
 `user_id` int(5) unsigned NOT NULL default '0',
 `time_created` int(14) unsigned NOT NULL default '0',
 `time_edited` int(14) unsigned NOT NULL default '0',
 `is_locked` set('0','1') NOT NULL default '0',
 `is_sticky` set('0','1') NOT NULL default '0',
 `rating` int(11) NOT NULL default '0',
 `views` int(10) unsigned NOT NULL default '0',
 `icon` smallint(5) unsigned NOT NULL default '0',
 `keywords` text NOT NULL,
 `subject` varchar(250) NOT NULL default '',
 `content` text NOT NULL,
 `attachment` varchar(250) NOT NULL default '',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`,`thread_id`,`prev_post_id`,`user_id`),
  FULLTEXT KEY `fulltext` (`keywords`,`subject`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6;

INSERT INTO `contrexx_module_forum_postings` (`id`, `category_id`, `thread_id`, `prev_post_id`, `user_id`, `time_created`, `time_edited`, `is_locked`, `is_sticky`, `rating`, `views`, `icon`, `keywords`, `subject`, `content`, `attachment`) VALUES 
('1', '2', '1', '0', '1', '1162903148', '0', '', '', '1', '71', '1', '', 'Beispielthema', 'Dies ist ein Beispielbeitrag. Im Backend können unter Module -> Forum neue Kategorien und Foren mitsamt Berechtigungen erstellt werden.', ''),
('4', '2', '1', '1', '1', '1214603120', '0', '', '', '0', '4', '1', 'aASDASDASysxdf', 'ASDasdA', 'asdfasdfasdfasdfasdfasdf\r\n', 'ancient.jpg');

#--------------------------------------------------------------
# Table:	contrexx_module_forum_rating
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_forum_rating`;

CREATE TABLE `contrexx_module_forum_rating` (
 `id` int(11) NOT NULL auto_increment,
 `user_id` int(11) NOT NULL,
 `post_id` int(11) NOT NULL,
 `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;



#--------------------------------------------------------------
# Table:	contrexx_module_forum_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_forum_settings`;

CREATE TABLE `contrexx_module_forum_settings` (
 `id` int(5) unsigned NOT NULL auto_increment,
 `name` varchar(50) NOT NULL default '',
 `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14;

INSERT INTO `contrexx_module_forum_settings` (`id`, `name`, `value`) VALUES 
('1', 'thread_paging', '5'),
('2', 'posting_paging', '5'),
('3', 'latest_entries_count', '10'),
('4', 'block_template', '<div id=\"forum\">    \r\n         <div class=\"div_board\">\r\n	         <div class=\"div_title\">[[TXT_FORUM_LATEST_ENTRIES]]</div>\r\n		<table cellspacing=\"0\" cellpadding=\"0\">\r\n			<tr class=\"row3\">\r\n				<th width=\"65%\" style=\"text-align: left;\">[[TXT_FORUM_THREAD]]</th>\r\n				<th width=\"15%\" style=\"text-align: left;\">[[TXT_FORUM_OVERVIEW_FORUM]]</th>		\r\n				<th width=\"15%\" style=\"text-align: left;\">[[TXT_FORUM_THREAD_STRATER]]</th>		\r\n				<th width=\"1%\" style=\"text-align: left;\">[[TXT_FORUM_POST_COUNT]]</th>		\r\n				<th width=\"4%\" style=\"text-align: left;\">[[TXT_FORUM_THREAD_CREATE_DATE]]</th>\r\n			</tr>\r\n			<!-- BEGIN latestPosts -->\r\n			<tr class=\"row_[[FORUM_ROWCLASS]]\">\r\n				<td>[[FORUM_THREAD]]</td>\r\n				<td>[[FORUM_FORUM_NAME]]</td>\r\n				<td>[[FORUM_THREAD_STARTER]]</td>\r\n				<td>[[FORUM_POST_COUNT]]</td>\r\n				<td>[[FORUM_THREAD_CREATE_DATE]]</td>\r\n			</tr>	\r\n			<!-- END latestPosts -->	\r\n		</table>\r\n	</div>\r\n</div>'),
('5', 'notification_template', '[[FORUM_USERNAME]],\r\n\r\nEs wurde ein neuer Beitrag im Thema \\\"[[FORUM_THREAD_SUBJECT]]\\\", gestartet \r\nvon \\\"[[FORUM_THREAD_STARTER]]\\\", geschrieben.\r\n\r\nDer neue Beitrag umfasst folgenden Inhalt:\r\n\r\n-----------------NACHRICHT START-----------------\r\n-----Betreff-----\r\n[[FORUM_LATEST_SUBJECT]]\r\n\r\n----Nachricht----\r\n[[FORUM_LATEST_MESSAGE]]\r\n-----------------NACHRICHT ENDE------------------\r\n\r\nUm den ganzen Diskussionsverlauf zu sehen oder zur Abmeldung dieser \r\nBenachrichtigung, besuchen Sie folgenden Link:\r\n[[FORUM_THREAD_URL]]\r\n'),
('6', 'notification_subject', 'Neuer Beitrag in \\\"[[FORUM_THREAD_SUBJECT]]\\\"'),
('7', 'notification_from_email', 'noreply@example.com'),
('8', 'notification_from_name', 'nobody'),
('9', 'banned_words', 'penis enlargement,free porn,(?i:buy\\\\s*?(?:cheap\\\\s*?)?viagra)'),
('10', 'wysiwyg_editor', '1'),
('11', 'tag_count', '10'),
('13', 'allowed_extensions', '7z,aiff,asf,avi,bmp,csv,doc,fla,flv,gif,gz,gzip, jpeg,jpg,mid,mov,mp3,mp4,mpc,mpeg,mpg,ods,odt,pdf, png,ppt,pxd,qt,ram,rar,rm,rmi,rmvb,rtf,sdc,sitd,swf, sxc,sxw,tar,tgz,tif,tiff,txt,vsd,wav,wma,wmv,xls,xml ,zip'),
('12', 'latest_post_per_thread', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_forum_statistics
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_forum_statistics`;

CREATE TABLE `contrexx_module_forum_statistics` (
 `category_id` int(5) unsigned NOT NULL default '0',
 `thread_count` int(10) unsigned NOT NULL default '0',
 `post_count` int(10) unsigned NOT NULL default '0',
 `last_post_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_forum_statistics` (`category_id`, `thread_count`, `post_count`, `last_post_id`) VALUES 
('2', '1', '2', '4');

#--------------------------------------------------------------
# Table:	contrexx_module_gallery_categories
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_gallery_categories`;

CREATE TABLE `contrexx_module_gallery_categories` (
 `id` int(11) NOT NULL auto_increment,
 `pid` int(11) NOT NULL default '0',
 `sorting` tinyint(3) NOT NULL default '0',
 `status` set('0','1') NOT NULL default '1',
 `comment` set('0','1') NOT NULL default '0',
 `voting` set('0','1') NOT NULL default '0',
 `backendProtected` int(11) NOT NULL,
 `backend_access_id` int(11) NOT NULL,
 `frontendProtected` int(11) NOT NULL,
 `frontend_access_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3;

INSERT INTO `contrexx_module_gallery_categories` (`id`, `pid`, `sorting`, `status`, `comment`, `voting`, `backendProtected`, `backend_access_id`, `frontendProtected`, `frontend_access_id`) VALUES 
('1', '0', '0', '1', '1', '1', '0', '0', '0', '0');

#--------------------------------------------------------------
# Table:	contrexx_module_gallery_comments
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_gallery_comments`;

CREATE TABLE `contrexx_module_gallery_comments` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `picid` int(10) unsigned NOT NULL default '0',
 `date` int(14) unsigned NOT NULL default '0',
 `ip` varchar(15) NOT NULL default '',
 `name` varchar(50) NOT NULL default '',
 `email` varchar(250) NOT NULL default '',
 `www` varchar(250) NOT NULL default '',
 `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_module_gallery_comments` (`id`, `picid`, `date`, `ip`, `name`, `email`, `www`, `comment`) VALUES 
('1', '4', '1210154371', '84.72.45.57', 'Test Tschanz', '', 'http://Test Tschanz', 'Test Tschanz');

#--------------------------------------------------------------
# Table:	contrexx_module_gallery_language
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_gallery_language`;

CREATE TABLE `contrexx_module_gallery_language` (
 `gallery_id` int(10) unsigned NOT NULL default '0',
 `lang_id` int(10) unsigned NOT NULL default '0',
 `name` set('name','desc') NOT NULL default '',
 `value` text NOT NULL,
  PRIMARY KEY (`gallery_id`,`lang_id`,`name`),
  FULLTEXT KEY `galleryindex` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_gallery_language` (`gallery_id`, `lang_id`, `name`, `value`) VALUES 
('1', '1', 'name', 'COMVATION AG'),
('1', '1', 'desc', 'Aussenansicht Bürogebäude der COMVATION AG'),
('1', '2', 'name', 'COMVATION AG'),
('1', '2', 'desc', 'Aussenansicht Bürogebäude der COMVATION AG'),
('1', '3', 'name', 'COMVATION AG'),
('1', '3', 'desc', 'Aussenansicht Bürogebäude der COMVATION AG'),
('1', '4', 'name', 'COMVATION AG'),
('1', '4', 'desc', 'Aussenansicht Bürogebäude der COMVATION AG'),
('1', '5', 'name', 'COMVATION AG'),
('1', '5', 'desc', 'Aussenansicht Bürogebäude der COMVATION AG'),
('1', '6', 'name', 'COMVATION AG'),
('1', '6', 'desc', 'Aussenansicht Bürogebäude der COMVATION AG');

#--------------------------------------------------------------
# Table:	contrexx_module_gallery_language_pics
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_gallery_language_pics`;

CREATE TABLE `contrexx_module_gallery_language_pics` (
 `picture_id` int(10) unsigned NOT NULL default '0',
 `lang_id` int(10) unsigned NOT NULL default '0',
 `name` varchar(255) NOT NULL default '',
 `desc` varchar(255) NOT NULL default '',
  PRIMARY KEY (`picture_id`,`lang_id`),
  FULLTEXT KEY `galleryindex` (`name`,`desc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_gallery_language_pics` (`picture_id`, `lang_id`, `name`, `desc`) VALUES 
('1', '1', 'Bild_001.jpg', ''),
('1', '2', 'Bild_001.jpg', ''),
('1', '3', 'Bild_001.jpg', ''),
('1', '4', 'Bild_001.jpg', ''),
('1', '5', 'Bild_001.jpg', ''),
('1', '6', 'Bild_001.jpg', ''),
('2', '1', 'Bild_002.jpg', ''),
('2', '2', 'Bild_002.jpg', ''),
('2', '3', 'Bild_002.jpg', ''),
('2', '4', 'Bild_002.jpg', ''),
('2', '5', 'Bild_002.jpg', ''),
('2', '6', 'Bild_002.jpg', ''),
('3', '1', 'Bild_003.jpg', ''),
('3', '2', 'Bild_003.jpg', ''),
('3', '3', 'Bild_003.jpg', ''),
('3', '4', 'Bild_003.jpg', ''),
('3', '5', 'Bild_003.jpg', ''),
('3', '6', 'Bild_003.jpg', ''),
('4', '1', 'banner_neu.jpg', ''),
('4', '2', 'banner_neu.jpg', ''),
('4', '3', 'banner_neu.jpg', ''),
('4', '4', 'banner_neu.jpg', ''),
('4', '5', 'banner_neu.jpg', ''),
('4', '6', 'banner_neu.jpg', ''),
('5', '1', 'bild_001.jpg', ''),
('5', '2', 'bild_001.jpg', ''),
('5', '3', 'bild_001.jpg', ''),
('5', '4', 'bild_001.jpg', ''),
('5', '5', 'bild_001.jpg', ''),
('5', '6', 'bild_001.jpg', ''),
('6', '1', 'bild_002.jpg', ''),
('6', '2', 'bild_002.jpg', ''),
('6', '3', 'bild_002.jpg', ''),
('6', '4', 'bild_002.jpg', ''),
('6', '5', 'bild_002.jpg', ''),
('6', '6', 'bild_002.jpg', ''),
('7', '1', 'bild_003.jpg', ''),
('7', '2', 'bild_003.jpg', ''),
('7', '3', 'bild_003.jpg', ''),
('7', '4', 'bild_003.jpg', ''),
('7', '5', 'bild_003.jpg', ''),
('7', '6', 'bild_003.jpg', '');

#--------------------------------------------------------------
# Table:	contrexx_module_gallery_pictures
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_gallery_pictures`;

CREATE TABLE `contrexx_module_gallery_pictures` (
 `id` int(11) NOT NULL auto_increment,
 `catid` int(11) NOT NULL default '0',
 `validated` set('0','1') NOT NULL default '0',
 `status` set('0','1') NOT NULL default '1',
 `catimg` set('0','1') NOT NULL default '0',
 `sorting` smallint(3) unsigned NOT NULL default '999',
 `size_show` set('0','1') NOT NULL default '1',
 `path` text NOT NULL,
 `link` text NOT NULL,
 `lastedit` int(14) NOT NULL default '0',
 `size_type` set('abs','proz') NOT NULL default 'proz',
 `size_proz` int(3) NOT NULL default '0',
 `size_abs_h` int(11) NOT NULL default '0',
 `size_abs_w` int(11) NOT NULL default '0',
 `quality` tinyint(3) NOT NULL default '0',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `galleryPicturesIndex` (`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8;

INSERT INTO `contrexx_module_gallery_pictures` (`id`, `catid`, `validated`, `status`, `catimg`, `sorting`, `size_show`, `path`, `link`, `lastedit`, `size_type`, `size_proz`, `size_abs_h`, `size_abs_w`, `quality`) VALUES 
('5', '1', '1', '1', '0', '999', '1', 'bild_001.jpg', '', '1210682503', 'abs', '25', '105', '140', '95'),
('6', '1', '1', '1', '0', '999', '1', 'bild_002.jpg', '', '1210682503', 'abs', '25', '105', '140', '95'),
('7', '1', '1', '1', '0', '999', '1', 'bild_003.jpg', '', '1210682503', 'abs', '25', '105', '140', '95');

#--------------------------------------------------------------
# Table:	contrexx_module_gallery_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_gallery_settings`;

CREATE TABLE `contrexx_module_gallery_settings` (
 `id` int(11) NOT NULL auto_increment,
 `name` varchar(30) NOT NULL default '',
 `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22;

INSERT INTO `contrexx_module_gallery_settings` (`id`, `name`, `value`) VALUES 
('1', 'max_images_upload', '10'),
('2', 'standard_quality', '95'),
('3', 'standard_size_proz', '25'),
('4', 'standard_width_abs', '140'),
('6', 'standard_height_abs', '0'),
('7', 'standard_size_type', 'abs'),
('8', 'validation_show_limit', '10'),
('9', 'validation_standard_type', 'all'),
('11', 'show_names', 'off'),
('12', 'quality', '95'),
('13', 'show_comments', 'on'),
('14', 'show_voting', 'on'),
('15', 'enable_popups', 'on'),
('16', 'image_width', '1200'),
('17', 'paging', '30'),
('18', 'show_latest', 'on'),
('19', 'show_random', 'on'),
('20', 'header_type', 'hierarchy'),
('21', 'show_ext', 'on');

#--------------------------------------------------------------
# Table:	contrexx_module_gallery_votes
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_gallery_votes`;

CREATE TABLE `contrexx_module_gallery_votes` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `picid` int(10) unsigned NOT NULL default '0',
 `date` int(14) unsigned NOT NULL default '0',
 `ip` varchar(15) NOT NULL default '',
 `md5` varchar(32) NOT NULL default '',
 `mark` int(2) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_module_gallery_votes` (`id`, `picid`, `date`, `ip`, `md5`, `mark`) VALUES 
('1', '4', '1210154365', '84.72.45.57', '09e1e1188001f5d2f51f44621272ccd7', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_guestbook
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_guestbook`;

CREATE TABLE `contrexx_module_guestbook` (
 `id` int(6) unsigned NOT NULL auto_increment,
 `status` tinyint(1) unsigned NOT NULL default '0',
 `nickname` tinytext NOT NULL,
 `gender` char(1) NOT NULL default '',
 `url` tinytext NOT NULL,
 `email` tinytext NOT NULL,
 `comment` text NOT NULL,
 `ip` varchar(15) NOT NULL default '',
 `location` tinytext NOT NULL,
 `lang_id` tinyint(2) NOT NULL default '1',
 `datetime` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `comment` (`comment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18;

INSERT INTO `contrexx_module_guestbook` (`id`, `status`, `nickname`, `gender`, `url`, `email`, `comment`, `ip`, `location`, `lang_id`, `datetime`) VALUES 
('1', '1', 'Contrexx Development Team', 'M', 'http://www.contrexx.com/', 'nospam@example.com', 'Dies ist ein Gästebucheintrag für Demonstrationszwecke. \r\nViel Spass und Erfolg mit Contrexx wünscht\r\n\r\nCOMVATION AG', '127.0.0.1', 'Schweiz', '1', '2007-04-17 21:58:45');

#--------------------------------------------------------------
# Table:	contrexx_module_guestbook_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_guestbook_settings`;

CREATE TABLE `contrexx_module_guestbook_settings` (
 `name` varchar(50) NOT NULL default '',
 `value` varchar(250) NOT NULL default '',
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_guestbook_settings` (`name`, `value`) VALUES 
('guestbook_send_notification_email', '0'),
('guestbook_activate_submitted_entries', '0'),
('guestbook_replace_at', '1'),
('guestbook_only_lang_entries', '0');

#--------------------------------------------------------------
# Table:	contrexx_module_hotel
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_hotel`;

CREATE TABLE `contrexx_module_hotel` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `reference` varchar(20) NOT NULL default '-',
 `ref_nr_note` varchar(255) NULL,
 `logo` enum('-') NOT NULL default '-',
 `special_offer` tinyint(1) NOT NULL default '0',
 `visibility` enum('disabled','reference','listing') NOT NULL default 'disabled',
 `object_type` enum('flat','house','multifamily','estate','industry','parking') NOT NULL default 'flat',
 `new_building` tinyint(1) NOT NULL default '0',
 `property_type` enum('purchase','rent') NOT NULL default 'purchase',
 `longitude` decimal(18,15) NOT NULL default '0.000000000000000',
 `latitude` decimal(18,15) NOT NULL default '0.000000000000000',
 `zoom` tinyint(3) NOT NULL default '0',
  PRIMARY KEY (`id`),
  KEY `reference` (`reference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_hotel_contact
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_hotel_contact`;

CREATE TABLE `contrexx_module_hotel_contact` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `email` varchar(255) NOT NULL default '',
 `name` varchar(255) NOT NULL default '',
 `firstname` varchar(255) NOT NULL default '',
 `street` varchar(255) NOT NULL default '',
 `zip` int(5) NOT NULL default '0',
 `location` varchar(255) NOT NULL default '',
 `company` varchar(255) NOT NULL default '',
 `telephone` varchar(30) NOT NULL default '',
 `telephone_office` varchar(30) NOT NULL default '',
 `telephone_mobile` varchar(30) NOT NULL default '',
 `purchase` tinyint(1) NOT NULL default '0',
 `funding` tinyint(1) NOT NULL default '0',
 `comment` text NOT NULL,
 `hotel_id` int(11) NOT NULL default '0',
 `field_id` int(11) NOT NULL default '0',
 `timestamp` int(14) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`),
  KEY `immo_id` (`hotel_id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_hotel_content
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_hotel_content`;

CREATE TABLE `contrexx_module_hotel_content` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `hotel_id` int(11) NOT NULL default '0',
 `lang_id` tinyint(4) NOT NULL default '0',
 `field_id` int(10) unsigned NOT NULL default '0',
 `fieldvalue` text NOT NULL,
 `active` tinyint(1) NOT NULL default '1',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`,`hotel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_hotel_field
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_hotel_field`;

CREATE TABLE `contrexx_module_hotel_field` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `type` enum('text','textarea','img','link','protected_link','panorama','digits_only','price') NOT NULL default 'text',
 `order` int(11) NOT NULL default '1000',
 `mandatory` tinyint(1) NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_hotel_fieldname
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_hotel_fieldname`;

CREATE TABLE `contrexx_module_hotel_fieldname` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `field_id` int(10) unsigned NOT NULL default '0',
 `lang_id` int(10) unsigned NOT NULL default '0',
 `name` varchar(255) NOT NULL default '-',
  PRIMARY KEY (`id`),
  KEY `lang_id` (`lang_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_hotel_image
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_hotel_image`;

CREATE TABLE `contrexx_module_hotel_image` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `hotel_id` int(11) NOT NULL default '0',
 `field_id` int(10) unsigned NOT NULL default '0',
 `uri` varchar(255) NOT NULL default '',
  PRIMARY KEY (`id`),
  KEY `immo_id` (`hotel_id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_hotel_interest
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_hotel_interest`;

CREATE TABLE `contrexx_module_hotel_interest` (
 `id` int(11) NOT NULL auto_increment,
 `hotel_id` int(11) NOT NULL default '0',
 `code` varchar(15) NOT NULL default '-',
 `name` varchar(60) NOT NULL default '',
 `firstname` varchar(60) NOT NULL default '',
 `street` varchar(100) NOT NULL default '',
 `zip` varchar(10) NOT NULL default '',
 `location` varchar(100) NOT NULL default '',
 `email` varchar(60) NOT NULL default '',
 `phone_home` varchar(40) NOT NULL default '',
 `phone_office` varchar(40) NOT NULL default '',
 `phone_mobile` varchar(40) NOT NULL default '',
 `weeks` tinyint(4) NOT NULL default '1',
 `adults` tinyint(2) NOT NULL default '0',
 `children` tinyint(2) NOT NULL default '0',
 `from` int(1) NOT NULL default '0',
 `to` int(1) NOT NULL default '0',
 `flight_only` tinyint(1) NOT NULL default '0',
 `traveldata_id` int(1) NOT NULL default '0',
 `comment` text NOT NULL,
 `time` int(14) NOT NULL default '0',
  PRIMARY KEY (`id`),
  KEY `immo_id` (`hotel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_hotel_languages
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_hotel_languages`;

CREATE TABLE `contrexx_module_hotel_languages` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `language` varchar(255) NOT NULL default '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_hotel_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_hotel_settings`;

CREATE TABLE `contrexx_module_hotel_settings` (
 `setid` int(10) unsigned NOT NULL auto_increment,
 `setname` varchar(80) NOT NULL default '',
 `setvalue` text NOT NULL,
 `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY (`setid`),
  UNIQUE KEY `setname` (`setname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_hotel_statistics
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_hotel_statistics`;

CREATE TABLE `contrexx_module_hotel_statistics` (
 `id` int(11) NOT NULL auto_increment,
 `hotel_id` int(11) NOT NULL default '0',
 `field_id` int(11) NOT NULL default '0',
 `hits` int(11) NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_immo
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_immo`;

CREATE TABLE `contrexx_module_immo` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `reference` varchar(20) NOT NULL default '-',
 `ref_nr_note` varchar(255) NULL,
 `logo` enum('logo1','logo2') NOT NULL default 'logo1',
 `special_offer` tinyint(1) NOT NULL default '0',
 `visibility` enum('disabled','reference','listing') NOT NULL default 'disabled',
 `object_type` enum('flat','house','multifamily','estate','industry','parking') NOT NULL default 'flat',
 `new_building` tinyint(1) NOT NULL default '0',
 `property_type` enum('purchase','rent') NOT NULL default 'purchase',
 `longitude` decimal(18,15) NOT NULL default '0.000000000000000',
 `latitude` decimal(18,15) NOT NULL default '0.000000000000000',
 `zoom` tinyint(3) NOT NULL default '0',
  PRIMARY KEY (`id`),
  KEY `reference` (`reference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_immo_contact
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_immo_contact`;

CREATE TABLE `contrexx_module_immo_contact` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `email` varchar(255) NOT NULL default '',
 `name` varchar(255) NOT NULL default '',
 `firstname` varchar(255) NOT NULL default '',
 `street` varchar(255) NOT NULL default '',
 `zip` int(5) NOT NULL default '0',
 `location` varchar(255) NOT NULL default '',
 `company` varchar(255) NOT NULL default '',
 `telephone` varchar(30) NOT NULL default '',
 `telephone_office` varchar(30) NOT NULL default '',
 `telephone_mobile` varchar(30) NOT NULL default '',
 `purchase` tinyint(1) NOT NULL default '0',
 `funding` tinyint(1) NOT NULL default '0',
 `comment` text NOT NULL,
 `immo_id` int(11) NOT NULL default '0',
 `field_id` int(11) NOT NULL default '0',
 `timestamp` int(14) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`),
  KEY `immo_id` (`immo_id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_immo_content
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_immo_content`;

CREATE TABLE `contrexx_module_immo_content` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `immo_id` int(11) NOT NULL default '0',
 `lang_id` tinyint(4) NOT NULL default '0',
 `field_id` int(10) unsigned NOT NULL default '0',
 `fieldvalue` text NOT NULL,
 `active` tinyint(1) NOT NULL default '1',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `immo_id` (`immo_id`),
  KEY `fieldvalue` (`fieldvalue`(64))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_immo_field
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_immo_field`;

CREATE TABLE `contrexx_module_immo_field` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `type` enum('text','textarea','img','link','protected_link','panorama','digits_only','price') NOT NULL default 'text',
 `order` int(11) NOT NULL default '1000',
 `mandatory` tinyint(1) NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_immo_fieldname
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_immo_fieldname`;

CREATE TABLE `contrexx_module_immo_fieldname` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `field_id` int(10) unsigned NOT NULL default '0',
 `lang_id` int(10) unsigned NOT NULL default '0',
 `name` varchar(255) NOT NULL default '-',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `lang_id` (`lang_id`),
  KEY `name` (`name`(5))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_immo_image
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_immo_image`;

CREATE TABLE `contrexx_module_immo_image` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `immo_id` int(11) NOT NULL default '0',
 `field_id` int(10) unsigned NOT NULL default '0',
 `uri` varchar(255) NOT NULL default '',
  PRIMARY KEY (`id`),
  KEY `immo_id` (`immo_id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_immo_interest
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_immo_interest`;

CREATE TABLE `contrexx_module_immo_interest` (
 `id` int(11) NOT NULL auto_increment,
 `immo_id` int(11) NOT NULL default '0',
 `name` varchar(60) NOT NULL default '',
 `firstname` varchar(60) NOT NULL default '',
 `street` varchar(100) NOT NULL default '',
 `zip` varchar(10) NOT NULL default '',
 `location` varchar(100) NOT NULL default '',
 `email` varchar(60) NOT NULL default '',
 `phone_office` varchar(40) NOT NULL default '',
 `phone_home` varchar(40) NOT NULL default '',
 `phone_mobile` varchar(40) NOT NULL default '',
 `doc_via_mail` tinyint(1) NOT NULL default '0',
 `funding_advice` tinyint(1) NOT NULL default '0',
 `inspection` tinyint(1) NOT NULL default '0',
 `contact_via_phone` tinyint(1) NOT NULL default '0',
 `comment` text NOT NULL,
 `time` int(14) NOT NULL default '0',
  PRIMARY KEY (`id`),
  KEY `immo_id` (`immo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_immo_languages
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_immo_languages`;

CREATE TABLE `contrexx_module_immo_languages` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `language` varchar(255) NOT NULL default '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3;

INSERT INTO `contrexx_module_immo_languages` (`id`, `language`) VALUES 
('1', 'TXT_IMMO_LANG_GERMAN'),
('2', 'TXT_IMMO_LANG_ENGLISH');

#--------------------------------------------------------------
# Table:	contrexx_module_immo_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_immo_settings`;

CREATE TABLE `contrexx_module_immo_settings` (
 `setid` int(10) unsigned NOT NULL auto_increment,
 `setname` varchar(80) NOT NULL default '',
 `setvalue` text NOT NULL,
 `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY (`setid`),
  UNIQUE KEY `setname` (`setname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23;

INSERT INTO `contrexx_module_immo_settings` (`setid`, `setname`, `setvalue`, `status`) VALUES 
('1', 'latest_entries_count', '600', '1'),
('4', 'message', '<strong>Ref-Nr. %REFERENCE% </strong><br />\r\n<img src=\\\"%ÜBERSICHTSBILD%\\\" style=\\\"height: 60px;\\\" /><br />\r\n%HEADLINE%\r\n%HEADER% <br />\r\n%ADRESSE% <br />\r\n%ORT%<br />\r\nCHF: %PREIS%.-', '1'),
('5', 'last_inserted_immo_id', '1', '1'),
('6', 'GOOGLE_API_KEY_DOMAIN1', 'abc', '1'),
('7', 'GOOGLE_API_KEY_www.DOMAIN1', 'abc', '1'),
('8', 'currency_lang_1', 'CHF', '1'),
('9', 'currency_lang_2', '€', '1'),
('10', 'lon_frontend', '7.730598449707031', '1'),
('11', 'lat_frontend', '46.69867032449709', '1'),
('12', 'zoom_frontend', '10', '1'),
('13', 'zoom_backend', '13', '1'),
('14', 'lat_backend', '46.77', '1'),
('15', 'lon_backend', '7.62', '1'),
('16', 'prot_link_message_body', 'Das von Ihnen angeforderte PDF finden sie unter: [[IMMO_PROTECTED_LINK]]', '1'),
('17', 'prot_link_message_subject', 'Angeforderter PDF Link', '1'),
('18', 'sender_email', 'immo@example.com', '1'),
('19', 'sender_name', 'Immobilienportal', '1'),
('20', 'contact_receiver', 'rominger@iims.ch', '1'),
('21', 'interest_confirm_subject', 'Danke für Ihr Interesse an einem unserer Objekte', '1'),
('22', 'interest_confirm_message', 'Wir haben Ihre Kontaktanfrage betreffend \"[[IMMO_OBJECT]]\"\r\nerhalten und werden uns schnellstmöglich darum kümmern.\r\n\r\nBesten Dank und freundliche Grüsse', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_immo_statistics
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_immo_statistics`;

CREATE TABLE `contrexx_module_immo_statistics` (
 `id` int(11) NOT NULL auto_increment,
 `immo_id` int(11) NOT NULL default '0',
 `field_id` int(11) NOT NULL default '0',
 `hits` int(11) NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_livecam
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_livecam`;

CREATE TABLE `contrexx_module_livecam` (
 `id` int(10) unsigned NOT NULL default '1',
 `currentImagePath` varchar(255) NOT NULL default '/webcam/cam1/current.jpg',
 `archivePath` varchar(255) NOT NULL default '/webcam/cam1/archive/',
 `thumbnailPath` varchar(255) NOT NULL default '/webcam/cam1/thumbs/',
 `maxImageWidth` int(10) unsigned NOT NULL default '400',
 `thumbMaxSize` int(10) unsigned NOT NULL default '200',
 `lightboxActivate` set('1','0') NOT NULL default '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_livecam` (`id`, `currentImagePath`, `archivePath`, `thumbnailPath`, `maxImageWidth`, `thumbMaxSize`, `lightboxActivate`) VALUES 
('1', 'http://heimenschwand.ch/webcam/current.jpg', '/webcam/cam1/archive/', '/webcam/cam1/thumbs', '400', '120', '0');

#--------------------------------------------------------------
# Table:	contrexx_module_livecam_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_livecam_settings`;

CREATE TABLE `contrexx_module_livecam_settings` (
 `setid` int(10) unsigned NOT NULL auto_increment,
 `setname` varchar(255) NOT NULL default '',
 `setvalue` text NOT NULL,
  PRIMARY KEY (`setid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_module_livecam_settings` (`setid`, `setname`, `setvalue`) VALUES 
('1', 'amount_of_cams', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_market
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_market`;

CREATE TABLE `contrexx_module_market` (
 `id` int(9) NOT NULL auto_increment,
 `name` varchar(100) NOT NULL default '',
 `email` varchar(100) NOT NULL default '',
 `type` set('search','offer') NOT NULL default '',
 `title` varchar(255) NOT NULL default '',
 `description` mediumtext NOT NULL,
 `premium` int(1) NOT NULL default '0',
 `picture` varchar(255) NOT NULL default '',
 `catid` int(4) NOT NULL default '0',
 `price` varchar(10) NOT NULL default '',
 `regdate` varchar(20) NOT NULL default '',
 `enddate` varchar(20) NOT NULL default '',
 `userid` int(4) NOT NULL default '0',
 `userdetails` int(1) NOT NULL default '0',
 `status` int(1) NOT NULL default '0',
 `regkey` varchar(50) NOT NULL default '',
 `paypal` int(1) NOT NULL default '0',
 `spez_field_1` varchar(255) NOT NULL,
 `spez_field_2` varchar(255) NOT NULL,
 `spez_field_3` varchar(255) NOT NULL,
 `spez_field_4` varchar(255) NOT NULL,
 `spez_field_5` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `title` (`description`,`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6;

INSERT INTO `contrexx_module_market` (`id`, `name`, `email`, `type`, `title`, `description`, `premium`, `picture`, `catid`, `price`, `regdate`, `enddate`, `userid`, `userdetails`, `status`, `regkey`, `paypal`, `spez_field_1`, `spez_field_2`, `spez_field_3`, `spez_field_4`, `spez_field_5`) VALUES 
('1', 'Klaus Muster', 'info@contrexx.com', 'offer', 'Burton VAPOR 59 2008', 'Super geniales Board, mir fehlt allerdings die Zeit um meinem Hobby weiter nachzugehen. Der Preis ist verhandlunssache, bei Interesse bitte einfach melden.', '0', '94831cf32afe2d63ef42b6b1c3e18e6f.jpg', '2', 'agreement', '1191967200', '1210629600', '1', '0', '1', '', '0', '', '', '', '', ''),
('2', 'Max Mustermann', 'info@contrexx.com', 'offer', 'Head Team 162 2005', 'Ich verschenke dieses Board aus der Wintesaision 2005/2006, da ich per Zufall günstig an ein neues gekommen bin.', '0', 'bd69cd70c206e634acf3cafa1e1f78dd.jpg', '2', 'forfree', '1191967200', '1210629600', '1', '1', '1', '', '0', '', '', '', '', ''),
('3', 'Max Mustermann', 'info@contrexx.com', 'search', 'Tony Hawk DVD', 'Ich suche schon seit längerem die Original DVD von Tony Hawk \r\n\"TONY HAWK\'S TICK TIPS 3-DVD BOX SET\"\r\n\r\nWürde mich über jedes Angebot freuen.', '0', '7c7e1b16ae5650f1b7df7e5ac433b8b2.jpg', '1', 'agreement', '1191967200', '1210629600', '1', '0', '1', '', '0', '', '', '', '', ''),
('4', 'Sabine Musterfrau', 'info@contrexx.com', 'offer', 'BrandX - Light Rolling', 'Verkaufe diese Skateboard, ist ca. 4 Jahre alt. Radlager sind frisch ausgewechselt worden. Kann leider keine Garantie etc geben, das Skateboard ist aber in einem relativ guten Zustand. Versand kann per Post erfolgen oder aber Barzahlung bei Abholung.', '0', '43a973ba338f4e4581167211c96e9cd6.jpg', '1', '50', '1191967200', '1210629600', '1', '1', '1', '', '0', '', '', '', '', '');

#--------------------------------------------------------------
# Table:	contrexx_module_market_access
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_market_access`;

CREATE TABLE `contrexx_module_market_access` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `name` varchar(64) NOT NULL default '',
 `description` varchar(255) NOT NULL default '',
 `access_id` int(11) unsigned NOT NULL default '0',
 `type` enum('global','frontend','backend') NOT NULL default 'global',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4;

INSERT INTO `contrexx_module_market_access` (`id`, `name`, `description`, `access_id`, `type`) VALUES 
('1', 'add_entry', 'Inserat hinzufügen', '99', 'frontend'),
('2', 'edit_entry', 'Inserate bearbeiten', '100', 'frontend'),
('3', 'del_entry', 'Inserate löschen', '101', 'frontend');

#--------------------------------------------------------------
# Table:	contrexx_module_market_categories
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_market_categories`;

CREATE TABLE `contrexx_module_market_categories` (
 `id` int(6) NOT NULL auto_increment,
 `name` varchar(100) NOT NULL default '',
 `description` varchar(255) NOT NULL default '',
 `displayorder` int(4) NOT NULL default '0',
 `status` int(1) NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4;

INSERT INTO `contrexx_module_market_categories` (`id`, `name`, `description`, `displayorder`, `status`) VALUES 
('1', 'Skateboards', 'Hier finden Sie Inserate zum Thema \"Skateboards\"', '0', '1'),
('2', 'Snowboards', 'Hier finden Sie Inserate zum Thema \"Snowboards\"', '0', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_market_mail
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_market_mail`;

CREATE TABLE `contrexx_module_market_mail` (
 `id` int(4) unsigned NOT NULL auto_increment,
 `title` varchar(255) NOT NULL default '',
 `content` longtext NOT NULL,
 `mailto` varchar(10) NOT NULL,
 `mailcc` mediumtext NOT NULL,
 `active` int(1) NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3;

INSERT INTO `contrexx_module_market_mail` (`id`, `title`, `content`, `mailto`, `mailcc`, `active`) VALUES 
('1', 'Ihr Contrexx.com-Inserat mit dem Titel [[TITLE]] wurde freigeschaltet', 'Lieber Inserent\r\n\r\nBesten Dank für Ihre Geduld. Um eine hohe Qualität auf Contrexx.com garantieren zu können, haben wir Ihr Inserat geprüft. \r\n\r\nIhr Inserat mit dem Titel «[[TITLE]]» und der ID \"[[ID]]\" wurde von unseren Mitarbeiterinnen und Mitarbeitern geprüft und freigeschaltet.\r\n\r\nIhr Inserat ist ab sofort unter [[URL]] einsehbar.\r\n\r\nSie können Ihr Inserat jederzeit unter [[LINK]] gratis ändern oder löschen.\r\n\r\nHoffentlich bis bald wieder auf Contrexx.com und mit freundlichen Grüssen\r\n\r\nIhr Contrexx.com Team\r\n\r\nAutomatisch generierte Nachricht\r\n[[DATE]]\r\n\r\n\r\nhttp://www.contrexx.com/\r\nContrexx.com - Der Schweizer Marktplatz', '', '', '1'),
('2', 'Neues Inserat auf [[URL]] - ID: [[ID]]', 'Hallo \r\n\r\nAuf [[URL]] wurde ein neues Inserat eingetragen.\r\n\r\nID:          [[ID]]\r\nTitel:       [[TITLE]]\r\nCode:        [[CODE]]\r\nUsername:    [[USERNAME]]\r\nName:        [[NAME]]\r\nE-Mail:      [[EMAIL]]\r\n\r\nAutomatisch generierte Nachricht\r\n[[DATE]]\r\n', '', '', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_market_paypal
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_market_paypal`;

CREATE TABLE `contrexx_module_market_paypal` (
 `id` int(4) NOT NULL auto_increment,
 `active` int(1) NOT NULL default '0',
 `profile` varchar(255) NOT NULL default '',
 `price` varchar(10) NOT NULL default '',
 `price_premium` varchar(10) NOT NULL default '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_module_market_paypal` (`id`, `active`, `profile`, `price`, `price_premium`) VALUES 
('1', '0', 'noreply@example.com', '5.00', '2.00');

#--------------------------------------------------------------
# Table:	contrexx_module_market_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_market_settings`;

CREATE TABLE `contrexx_module_market_settings` (
 `id` int(6) NOT NULL auto_increment,
 `name` varchar(100) NOT NULL default '',
 `value` varchar(255) NOT NULL default '',
 `description` varchar(255) NOT NULL default '',
 `type` int(1) NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12;

INSERT INTO `contrexx_module_market_settings` (`id`, `name`, `value`, `description`, `type`) VALUES 
('1', 'maxday', '14', 'TXT_MARKET_SET_MAXDAYS', '1'),
('2', 'description', '0', 'TXT_MARKET_SET_DESCRIPTION', '2'),
('3', 'paging', '10', 'TXT_MARKET_SET_PAGING', '1'),
('4', 'currency', 'CHF', 'TXT_MARKET_SET_CURRENCY', '1'),
('5', 'addEntry_only_community', '1', 'TXT_MARKET_SET_ADD_ENTRY_ONLY_COMMUNITY', '2'),
('6', 'addEntry', '1', 'TXT_MARKET_SET_ADD_ENTRY', '2'),
('7', 'editEntry', '1', 'TXT_MARKET_SET_EDIT_ENTRY', '2'),
('8', 'indexview', '0', 'TXT_MARKET_SET_INDEXVIEW', '2'),
('9', 'maxdayStatus', '0', 'TXT_MARKET_SET_MAXDAYS_ON', '2'),
('10', 'searchPrice', '100,200,500,1000,2000,5000', 'TXT_MARKET_SET_EXP_SEARCH_PRICE', '3'),
('11', 'codeMode', '1', 'TXT_MARKET_SET_CODE_MODE', '2');

#--------------------------------------------------------------
# Table:	contrexx_module_market_spez_fields
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_market_spez_fields`;

CREATE TABLE `contrexx_module_market_spez_fields` (
 `id` int(5) NOT NULL auto_increment,
 `name` varchar(100) NOT NULL,
 `value` varchar(100) NOT NULL,
 `type` int(1) NOT NULL default '1',
 `lang_id` int(2) NOT NULL,
 `active` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6;

INSERT INTO `contrexx_module_market_spez_fields` (`id`, `name`, `value`, `type`, `lang_id`, `active`) VALUES 
('1', 'spez_field_1', '', '1', '1', '0'),
('2', 'spez_field_2', '', '1', '1', '0'),
('3', 'spez_field_3', '', '1', '1', '0'),
('4', 'spez_field_4', '', '1', '1', '0'),
('5', 'spez_field_5', '', '1', '1', '0');

#--------------------------------------------------------------
# Table:	contrexx_module_memberdir_directories
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_memberdir_directories`;

CREATE TABLE `contrexx_module_memberdir_directories` (
 `dirid` int(10) unsigned NOT NULL auto_increment,
 `parentdir` int(11) NOT NULL default '0',
 `active` set('1','0') NOT NULL default '1',
 `name` varchar(255) NOT NULL default '',
 `description` text NOT NULL,
 `displaymode` set('0','1','2') NOT NULL default '0',
 `sort` int(11) NOT NULL default '1',
 `pic1` set('1','0') NOT NULL default '0',
 `pic2` set('1','0') NOT NULL default '0',
 `lang_id` int(2) unsigned NOT NULL default '1',
  PRIMARY KEY (`dirid`),
  FULLTEXT KEY `memberdir_dir` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_module_memberdir_directories` (`dirid`, `parentdir`, `active`, `name`, `description`, `displaymode`, `sort`, `pic1`, `pic2`, `lang_id`) VALUES 
('1', '0', '1', 'Einwohner Musterhausen & Umgebung', 'Auserwählte Einwohner', '0', '0', '0', '0', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_memberdir_name
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_memberdir_name`;

CREATE TABLE `contrexx_module_memberdir_name` (
 `field` int(10) unsigned NOT NULL default '0',
 `dirid` int(10) unsigned NOT NULL default '0',
 `name` varchar(255) NOT NULL default '',
 `active` set('0','1') NOT NULL default '',
 `lang_id` int(2) unsigned NOT NULL default '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_memberdir_name` (`field`, `dirid`, `name`, `active`, `lang_id`) VALUES 
('1', '1', 'Name', '1', '1'),
('2', '1', 'Vorname', '1', '1'),
('3', '1', 'Firma', '0', '1'),
('4', '1', 'Telefonnummer', '0', '1'),
('5', '1', 'Mobilnummer', '0', '1'),
('6', '1', 'Adresse', '1', '1'),
('7', '1', 'PLZ', '1', '1'),
('8', '1', 'Ort', '1', '1'),
('9', '1', 'E-Mail', '0', '1'),
('10', '1', 'Fax', '0', '1'),
('11', '1', 'Internet', '0', '1'),
('12', '1', 'Geburtsdatum', '0', '1'),
('13', '1', 'Beschreibung', '0', '1'),
('14', '1', '', '0', '1'),
('15', '1', '', '0', '1'),
('16', '1', '', '0', '1'),
('17', '1', '', '0', '1'),
('18', '1', '', '0', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_memberdir_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_memberdir_settings`;

CREATE TABLE `contrexx_module_memberdir_settings` (
 `setid` int(4) unsigned NOT NULL auto_increment,
 `setname` varchar(255) NOT NULL default '',
 `setvalue` text NOT NULL,
 `lang_id` int(2) unsigned NOT NULL default '1',
  PRIMARY KEY (`setid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5;

INSERT INTO `contrexx_module_memberdir_settings` (`setid`, `setname`, `setvalue`, `lang_id`) VALUES 
('1', 'default_listing', '1', '1'),
('3', 'max_height', '400', '1'),
('4', 'max_width', '500', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_memberdir_values
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_memberdir_values`;

CREATE TABLE `contrexx_module_memberdir_values` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `dirid` int(14) NOT NULL default '0',
 `pic1` varchar(255) NOT NULL default '',
 `pic2` varchar(255) NOT NULL default '',
 `0` smallint(5) unsigned NOT NULL default '0',
 `1` text NOT NULL,
 `2` text NOT NULL,
 `3` text NOT NULL,
 `4` text NOT NULL,
 `5` text NOT NULL,
 `6` text NOT NULL,
 `7` text NOT NULL,
 `8` text NOT NULL,
 `9` text NOT NULL,
 `10` text NOT NULL,
 `11` text NOT NULL,
 `12` text NOT NULL,
 `13` text NOT NULL,
 `14` text NOT NULL,
 `15` text NOT NULL,
 `16` text NOT NULL,
 `17` text NOT NULL,
 `18` text NOT NULL,
 `lang_id` int(2) unsigned NOT NULL default '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19;

INSERT INTO `contrexx_module_memberdir_values` (`id`, `dirid`, `pic1`, `pic2`, `0`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `lang_id`) VALUES 
('15', '1', 'none', 'none', '0', 'Muster', 'Hans', '', '', '', 'Musterstrasse 12', '00000', 'Musterhausen', '', '', '', '', '', '', '', '', '', '', '1'),
('16', '1', 'none', 'none', '0', 'Musterfrau', 'Sabine', '', '', '', 'Teststrasse 123', '12345', 'Testerhausen', '', '', '', '', '', '', '', '', '', '', '1'),
('17', '1', 'none', 'none', '0', 'Mustermann', 'Peter', '', '', '', 'Musterweg 321', '32112', 'Musterhausen', '', '', '', '', '', '', '', '', '', '', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_news
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_news`;

CREATE TABLE `contrexx_module_news` (
 `id` int(6) unsigned NOT NULL auto_increment,
 `date` int(14) NULL,
 `title` varchar(250) NOT NULL default '',
 `text` mediumtext NOT NULL,
 `redirect` varchar(250) NOT NULL default '',
 `source` varchar(250) NOT NULL default '',
 `url1` varchar(250) NOT NULL default '',
 `url2` varchar(250) NOT NULL default '',
 `catid` int(2) unsigned NOT NULL default '0',
 `lang` int(2) unsigned NOT NULL default '0',
 `userid` int(6) unsigned NOT NULL default '0',
 `startdate` date NOT NULL default '0000-00-00',
 `enddate` date NOT NULL default '0000-00-00',
 `status` tinyint(4) NOT NULL default '1',
 `validated` enum('0','1') NOT NULL default '0',
 `teaser_only` enum('0','1') NOT NULL default '0',
 `teaser_frames` text NOT NULL,
 `teaser_text` text NOT NULL,
 `teaser_show_link` tinyint(1) unsigned NOT NULL default '1',
 `teaser_image_path` text NOT NULL,
 `changelog` int(14) NOT NULL default '0',
  PRIMARY KEY (`id`),
  KEY `ID` (`id`),
  FULLTEXT KEY `newsindex` (`text`,`title`,`teaser_text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3;

INSERT INTO `contrexx_module_news` (`id`, `date`, `title`, `text`, `redirect`, `source`, `url1`, `url2`, `catid`, `lang`, `userid`, `startdate`, `enddate`, `status`, `validated`, `teaser_only`, `teaser_frames`, `teaser_text`, `teaser_show_link`, `teaser_image_path`, `changelog`) VALUES 
('1', '1210002562', 'Neue Webseite mit modernster Technologie online! ', 'Heute ist es elementar sich seinen Kunden im Internet nicht nur zu pr&auml;sentieren, sondern auch relevante Zusatznutzen zu bieten. Ein Schlagwort ist beispielsweise das &quot;Mitmach-Web&quot; Web 2.0 mit welchem der Kunde interaktiv in einen Dialog eingebunden wird.<br />\r\n<br />\r\nDieses Webprojekt ist nun mit modernster Technologie ausger&uuml;stet und trotzdem sehr einfach zu pflegen. Damit verf&uuml;gt dieser Auftritt &uuml;ber alle wesentlichen Funktionen, um den wachsenden Anforderungen auch k&uuml;nftig zu entsprechen. Nun k&ouml;nnen die Inhalte und Funktionalit&auml;ten mit einem kleinen Aufwand stets aktuell gehalten werden. Abonnieren Sie noch heute unseren Newsletter, RSS-Feeder oder besuchen Sie wieder unsere Webseite.<br />\r\n<br />', '', 'http://www.contrexx.com', '', '', '1', '1', '1', '0000-00-00', '0000-00-00', '1', '1', '0', '', 'Unsere neue Webseite ist online! Erstellt wurde das neue Portal mit <a href=\"http://www.contrexx.com/\" title=\"Contrexx WCMS\">Contrexx WCMS</a>.', '1', '', '1213723345');

#--------------------------------------------------------------
# Table:	contrexx_module_news_access
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_news_access`;

CREATE TABLE `contrexx_module_news_access` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `name` varchar(64) NOT NULL default '',
 `description` varchar(255) NOT NULL default '',
 `access_id` int(11) unsigned NOT NULL default '0',
 `type` enum('global','frontend','backend') NOT NULL default 'global',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_module_news_access` (`id`, `name`, `description`, `access_id`, `type`) VALUES 
('1', 'submit_news', 'News anmelden', '61', 'frontend');

#--------------------------------------------------------------
# Table:	contrexx_module_news_categories
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_news_categories`;

CREATE TABLE `contrexx_module_news_categories` (
 `catid` int(2) unsigned NOT NULL auto_increment,
 `name` varchar(100) NOT NULL default '',
 `lang` int(2) unsigned NOT NULL default '1',
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3;

INSERT INTO `contrexx_module_news_categories` (`catid`, `name`, `lang`) VALUES 
('1', 'Presse', '1'),
('2', 'Marketing', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_news_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_news_settings`;

CREATE TABLE `contrexx_module_news_settings` (
 `name` varchar(50) NOT NULL default '',
 `value` varchar(250) NOT NULL default '',
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_news_settings` (`name`, `value`) VALUES 
('news_feed_description', 'Informationen rund um das Contrexx Open Source CMS'),
('news_feed_status', '1'),
('news_feed_title', 'Contrexx WCMS'),
('news_headlines_limit', '10'),
('news_settings_activated', '1'),
('news_submit_news', '0'),
('news_submit_only_community', '0'),
('news_activate_submitted_news', '0'),
('news_feed_image', ''),
('news_ticker_filename', 'newsticker.txt');

#--------------------------------------------------------------
# Table:	contrexx_module_news_teaser_frame
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_news_teaser_frame`;

CREATE TABLE `contrexx_module_news_teaser_frame` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `lang_id` int(3) unsigned NOT NULL default '0',
 `frame_template_id` int(10) unsigned NOT NULL default '0',
 `name` varchar(50) NOT NULL default '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4;

INSERT INTO `contrexx_module_news_teaser_frame` (`id`, `lang_id`, `frame_template_id`, `name`) VALUES 
('1', '1', '1', 'Beispiel1'),
('2', '1', '2', 'Beispiel2'),
('3', '1', '3', 'Beispiel3');

#--------------------------------------------------------------
# Table:	contrexx_module_news_teaser_frame_templates
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_news_teaser_frame_templates`;

CREATE TABLE `contrexx_module_news_teaser_frame_templates` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `description` varchar(100) NOT NULL default '',
 `html` text NOT NULL,
 `source_code_mode` enum('0','1') NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4;

INSERT INTO `contrexx_module_news_teaser_frame_templates` (`id`, `description`, `html`, `source_code_mode`) VALUES 
('1', '3 Teaserboxen (1. Zeile: 1 Teaser - 2. Zeile: 2 Teaser)', '<table cellspacing=\"5\" cellpadding=\"0\" border=\"0\">\r\n    <tbody>\r\n        <tr>\r\n            <td colspan=\"2\"><!-- BEGIN teaser_1 -->\r\n            <table width=\"480\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <th colspan=\"2\">{TEASER_CATEGORY}</th>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\">{TEASER_DATE}<br />{TEASER_TITLE} <!-- BEGIN teaser_link --><a href=\"{TEASER_URL}\" target=\"{TEASER_URL_TARGET}\">» Zur Meldung</a><!-- END teaser_link --></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"25%\"><img src=\"{TEASER_IMAGE_PATH}\" width=\"80\" height=\"120\" alt=\"\" /></td>\r\n                        <td width=\"75%\" style=\"vertical-align: top;\">{TEASER_TEXT}</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <!-- END teaser_1 --></td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"50%\"><!-- BEGIN teaser_2 -->\r\n            <table width=\"235\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <th colspan=\"2\">{TEASER_CATEGORY}</th>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\">{TEASER_DATE}<br />{TEASER_TITLE} <!-- BEGIN teaser_link --><a href=\"{TEASER_URL}\" target=\"{TEASER_URL_TARGET}\">» Zur Meldung</a><!-- END teaser_link --></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"50%\"><img src=\"{TEASER_IMAGE_PATH}\" width=\"80\" height=\"120\" alt=\"\" /></td>\r\n                        <td width=\"50%\" style=\"vertical-align: top;\">{TEASER_TEXT}</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <!-- END teaser_2 --></td>\r\n            <td width=\"50%\"><!-- BEGIN teaser_3 -->\r\n            <table width=\"235\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <th>{TEASER_CATEGORY}</th>\r\n                    </tr>\r\n                    <tr>\r\n                        <td>{TEASER_DATE}<br />{TEASER_TITLE} <!-- BEGIN teaser_link --><a href=\"{TEASER_URL}\" target=\"{TEASER_URL_TARGET}\">» Zur Meldung</a><!-- END teaser_link --></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td><img src=\"{TEASER_IMAGE_PATH}\" width=\"80\" height=\"120\" alt=\"\" /></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <!-- END teaser_3 --></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', '1'),
('2', '4 Teaserboxen (2 Teaser pro Zeile)', '<table cellspacing=\"5\" cellpadding=\"0\" border=\"0\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\"50%\" style=\"vertical-align: top;\"><!-- BEGIN teaser_1 -->\r\n            <table width=\"235\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <th colspan=\"2\">{TEASER_CATEGORY}</th>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\">{TEASER_DATE}<br />{TEASER_TITLE} <!-- BEGIN teaser_link --><a href=\"{TEASER_URL}\" target=\"{TEASER_URL_TARGET}\">» Zur Meldung</a><!-- END teaser_link --></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"50%\"><img alt=\"\" src=\"{TEASER_IMAGE_PATH}\" /></td>\r\n                        <td width=\"50%\" style=\"vertical-align: top;\">{TEASER_TEXT}</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <!-- END teaser_1 --></td>\r\n            <td width=\"50%\" style=\"vertical-align: top;\"><!-- BEGIN teaser_2 -->\r\n            <table width=\"235\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <th>{TEASER_CATEGORY}</th>\r\n                    </tr>\r\n                    <tr>\r\n                        <td>{TEASER_DATE}<br />{TEASER_TITLE} <!-- BEGIN teaser_link --><a href=\"{TEASER_URL}\" target=\"{TEASER_URL_TARGET}\">» Zur Meldung</a><!-- END teaser_link --></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td><img alt=\"\" src=\"{TEASER_IMAGE_PATH}\" /></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <!-- END teaser_2 --></td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"50%\" style=\"vertical-align: top;\"><!-- BEGIN teaser_3 -->\r\n            <table width=\"235\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <th>{TEASER_CATEGORY}</th>\r\n                    </tr>\r\n                    <tr>\r\n                        <td>{TEASER_DATE}<br />{TEASER_TITLE} <!-- BEGIN teaser_link --><a href=\"{TEASER_URL}\" target=\"{TEASER_URL_TARGET}\">» Zur Meldung</a><!-- END teaser_link --></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td><img alt=\"\" src=\"{TEASER_IMAGE_PATH}\" /></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <!-- END teaser_3 --></td>\r\n            <td width=\"50%\" style=\"vertical-align: top;\"><!-- BEGIN teaser_4 -->\r\n            <table width=\"235\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <th colspan=\"2\">{TEASER_CATEGORY}</th>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\">{TEASER_DATE}<br />{TEASER_TITLE} <!-- BEGIN teaser_link --><a href=\"{TEASER_URL}\" target=\"{TEASER_URL_TARGET}\">» Zur Meldung</a><!-- END teaser_link --></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"50%\"><img alt=\"\" src=\"{TEASER_IMAGE_PATH}\" /></td>\r\n                        <td width=\"50%\" style=\"vertical-align: top;\">{TEXT}</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <!-- END teaser_4 --></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', '1'),
('3', '6 Teaserboxen (2 Teaser pro Zeile)', '<table cellspacing=\"5\" cellpadding=\"0\" border=\"0\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\"50%\" style=\"vertical-align: top;\"><!-- BEGIN teaser_1 -->\r\n            <table width=\"235\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <th colspan=\"2\">{TEASER_CATEGORY}</th>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\">{TEASER_DATE}<br />{TEASER_TITLE} <!-- BEGIN teaser_link --><a href=\"{TEASER_URL}\" target=\"{TEASER_URL_TARGET}\">» Zur Meldung</a><!-- END teaser_link --></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"50%\"><img alt=\"\" src=\"{TEASER_IMAGE_PATH}\" /></td>\r\n                        <td width=\"50%\" style=\"vertical-align: top;\">{TEASER_TEXT}</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <!-- END teaser_1 --></td>\r\n            <td width=\"50%\" style=\"vertical-align: top;\"><!-- BEGIN teaser_2 -->\r\n            <table width=\"235\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <th colspan=\"2\">{TEASER_CATEGORY}</th>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\">{TEASER_DATE}<br />{TEASER_TITLE} <!-- BEGIN teaser_link --><a href=\"{TEASER_URL}\" target=\"{TEASER_URL_TARGET}\">» Zur Meldung</a><!-- END teaser_link --></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"50%\"><img alt=\"\" src=\"{TEASER_IMAGE_PATH}\" /></td>\r\n                        <td width=\"50%\" style=\"vertical-align: top;\">{TEASER_TEXT}</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <!-- END teaser_2 --></td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"50%\" style=\"vertical-align: top;\"><!-- BEGIN teaser_3 -->\r\n            <table width=\"235\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <th colspan=\"2\">{TEASER_CATEGORY}</th>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\">{TEASER_DATE}<br />{TEASER_TITLE} <!-- BEGIN teaser_link --><a href=\"{TEASER_URL}\" target=\"{TEASER_URL_TARGET}\">» Zur Meldung</a><!-- END teaser_link --></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"50%\"><img alt=\"\" src=\"{TEASER_IMAGE_PATH}\" /></td>\r\n                        <td width=\"50%\" style=\"vertical-align: top;\">{TEASER_TEXT}</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <!-- END teaser_3 --></td>\r\n            <td width=\"50%\" style=\"vertical-align: top;\"><!-- BEGIN teaser_4 -->\r\n            <table width=\"235\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <th colspan=\"2\">{TEASER_CATEGORY}</th>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\">{TEASER_DATE}<br />{TEASER_TITLE} <!-- BEGIN teaser_link --><a href=\"{TEASER_URL}\" target=\"{TEASER_URL_TARGET}\">» Zur Meldung</a><!-- END teaser_link --></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"50%\"><img alt=\"\" src=\"{TEASER_IMAGE_PATH}\" /></td>\r\n                        <td width=\"50%\" style=\"vertical-align: top;\">{TEASER_TEXT}</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <!-- END teaser_4 --></td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"50%\" style=\"vertical-align: top;\"><!-- BEGIN teaser_5 -->\r\n            <table width=\"235\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <th colspan=\"2\">{TEASER_CATEGORY}</th>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\">{TEASER_DATE}<br />{TEASER_TITLE} <!-- BEGIN teaser_link --><a href=\"{TEASER_URL}\" target=\"{TEASER_URL_TARGET}\">» Zur Meldung</a><!-- END teaser_link --></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"50%\"><img alt=\"\" src=\"{TEASER_IMAGE_PATH}\" /></td>\r\n                        <td width=\"50%\" style=\"vertical-align: top;\">{TEASER_TEXT}</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <!-- END teaser_5 --></td>\r\n            <td width=\"50%\" style=\"vertical-align: top;\"><!-- BEGIN teaser_6 -->\r\n            <table width=\"235\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <th colspan=\"2\">{TEASER_CATEGORY}</th>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\">{TEASER_DATE}<br />{TEASER_TITLE} <!-- BEGIN teaser_link --><a href=\"{TEASER_URL}\" target=\"{TEASER_URL_TARGET}\">» Zur Meldung</a><!-- END teaser_link --></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"50%\"><img alt=\"\" src=\"{TEASER_IMAGE_PATH}\" /></td>\r\n                        <td width=\"50%\" style=\"vertical-align: top;\">{TEASER_TEXT}</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <!-- END teaser_6 --></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_news_ticker
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_news_ticker`;

CREATE TABLE `contrexx_module_news_ticker` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `name` varchar(255) NOT NULL default '',
 `charset` enum('ISO-8859-1','UTF-8') NOT NULL default 'ISO-8859-1',
 `urlencode` tinyint(1) unsigned NOT NULL default '0',
 `prefix` varchar(250) NOT NULL default '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_module_news_ticker` (`id`, `name`, `charset`, `urlencode`, `prefix`) VALUES 
('1', 'newsticker.xml', 'UTF-8', '0', '');

#--------------------------------------------------------------
# Table:	contrexx_module_newsletter
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_newsletter`;

CREATE TABLE `contrexx_module_newsletter` (
 `id` int(11) NOT NULL auto_increment,
 `subject` varchar(255) NOT NULL default '',
 `template` int(11) NOT NULL default '0',
 `content` text NOT NULL,
 `content_text` text NOT NULL,
 `attachment` enum('0','1') NOT NULL default '0',
 `format` enum('text','html','html/text') NOT NULL default 'text',
 `priority` tinyint(1) NOT NULL default '0',
 `sender_email` varchar(255) NOT NULL default '',
 `sender_name` varchar(255) NOT NULL default '',
 `return_path` varchar(255) NOT NULL default '',
 `smtp_server` int(10) unsigned NOT NULL,
 `status` int(1) NOT NULL default '0',
 `count` int(11) NOT NULL default '0',
 `date_create` int(14) unsigned NOT NULL default '0',
 `date_sent` int(14) unsigned NOT NULL default '0',
 `tmp_copy` tinyint(1) NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3;

INSERT INTO `contrexx_module_newsletter` (`id`, `subject`, `template`, `content`, `content_text`, `attachment`, `format`, `priority`, `sender_email`, `sender_name`, `return_path`, `smtp_server`, `status`, `count`, `date_create`, `date_sent`, `tmp_copy`) VALUES 
('1', 'Beispiel E-Mail', '1', '', 'Sehr geehrte(r) [[title]] [[lastname]]\r\n\r\nDies ist ein Beispiel E-Mail der Liste \"Demo Liste\".', '0', 'text', '3', 'noreply@example.com', 'Hans Mustermann', 'noreply@example.com', '0', '1', '1', '1153137556', '1153137858', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_newsletter_attachment
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_newsletter_attachment`;

CREATE TABLE `contrexx_module_newsletter_attachment` (
 `id` int(11) NOT NULL auto_increment,
 `newsletter` int(11) NOT NULL default '0',
 `file_name` varchar(255) NOT NULL default '',
 `file_nr` tinyint(1) NOT NULL default '0',
  PRIMARY KEY (`id`),
  KEY `newsletter` (`newsletter`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_newsletter_category
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_newsletter_category`;

CREATE TABLE `contrexx_module_newsletter_category` (
 `id` int(11) NOT NULL auto_increment,
 `status` tinyint(1) NOT NULL default '0',
 `name` varchar(255) NOT NULL default '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_module_newsletter_category` (`id`, `status`, `name`) VALUES 
('1', '1', 'Demo Liste');

#--------------------------------------------------------------
# Table:	contrexx_module_newsletter_confirm_mail
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_newsletter_confirm_mail`;

CREATE TABLE `contrexx_module_newsletter_confirm_mail` (
 `id` int(1) NOT NULL auto_increment,
 `title` varchar(255) NOT NULL default '',
 `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3;

INSERT INTO `contrexx_module_newsletter_confirm_mail` (`id`, `title`, `content`) VALUES 
('1', '[[url]] Newsletteraktivierung', 'Guten Tag [[sex]] [[lastname]] [[firstname]]\r\n\r\nIhre E-Mail Adresse wurde erfolgreich in unserer Newsletter Datenbank abgespeichert.\r\nUm Ihre E-Mail Adresse zu aktivieren, benutzen Sie bitte folgenden Link:\r\n[[code]]\r\n\r\nMit freundlichen\r\nGrüssen\r\n[[url]] - Team\r\n\r\n\r\nAutomatisch generierte\r\nNachricht\r\n[[date]]'),
('2', '[[url]] Newsletteraktivierung erfolgreich', 'Guten Tag [[sex]] [[lastname]] [[firstname]]\r\n\r\nIhre E-Mail Adresse wurde erfolgreich in unsererm Newsletter-System aktiviert.\r\nSie werden nun in Zukunft unsere Newsletter erhalten. \r\n\r\nMit freundlichen Grüssen \r\n[[url]] - Team\r\n\r\n\r\nAutomatisch generierte Nachricht \r\n[[date]]');

#--------------------------------------------------------------
# Table:	contrexx_module_newsletter_rel_cat_news
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_newsletter_rel_cat_news`;

CREATE TABLE `contrexx_module_newsletter_rel_cat_news` (
 `newsletter` int(11) NOT NULL default '0',
 `category` int(11) NOT NULL default '0',
  PRIMARY KEY (`newsletter`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_newsletter_rel_cat_news` (`newsletter`, `category`) VALUES 
('1', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_newsletter_rel_user_cat
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_newsletter_rel_user_cat`;

CREATE TABLE `contrexx_module_newsletter_rel_user_cat` (
 `user` int(11) NOT NULL default '0',
 `category` int(11) NOT NULL default '0',
  PRIMARY KEY (`user`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_newsletter_rel_user_cat` (`user`, `category`) VALUES 
('1', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_newsletter_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_newsletter_settings`;

CREATE TABLE `contrexx_module_newsletter_settings` (
 `setid` int(6) unsigned NOT NULL auto_increment,
 `setname` varchar(250) NOT NULL default '',
 `setvalue` text NOT NULL,
 `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY (`setid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10;

INSERT INTO `contrexx_module_newsletter_settings` (`setid`, `setname`, `setvalue`, `status`) VALUES 
('1', 'sender_mail', 'info@example.com', '1'),
('2', 'sender_name', 'admin', '1'),
('3', 'reply_mail', 'info@example.com', '1'),
('4', 'mails_per_run', '30', '1'),
('5', 'text_break_after', '100', '1'),
('6', 'test_mail', 'info@example.com', '1'),
('7', 'overview_entries_limit', '10', '1'),
('8', 'rejected_mail_operation', 'ignore', '1'),
('9', 'defUnsubscribe', '0', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_newsletter_template
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_newsletter_template`;

CREATE TABLE `contrexx_module_newsletter_template` (
 `id` int(11) NOT NULL auto_increment,
 `name` varchar(255) NOT NULL default '',
 `description` varchar(255) NOT NULL default '',
 `html` text NOT NULL,
 `text` text NOT NULL,
 `required` int(1) NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_module_newsletter_template` (`id`, `name`, `description`, `html`, `text`, `required`) VALUES 
('1', 'Standard', 'Standard Template', '<html>\r\n<head>\r\n<title>[[subject]]</title>\r\n</head>\r\n<body>\r\n[[content]]\r\n<br /><br />\r\n[[profile_setup]]<br/>\r\n[[unsubscribe]]\r\n</body>\r\n</html>', '[[content]]\r\n\r\n[[profile_setup]]\r\n[[unsubscribe]]', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_newsletter_tmp_sending
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_newsletter_tmp_sending`;

CREATE TABLE `contrexx_module_newsletter_tmp_sending` (
 `id` int(11) NOT NULL auto_increment,
 `newsletter` int(11) NOT NULL default '0',
 `email` varchar(255) NOT NULL default '',
 `sendt` tinyint(1) NOT NULL default '0',
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3;



#--------------------------------------------------------------
# Table:	contrexx_module_newsletter_user
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_newsletter_user`;

CREATE TABLE `contrexx_module_newsletter_user` (
 `id` int(11) NOT NULL auto_increment,
 `code` varchar(255) NOT NULL default '',
 `email` varchar(255) NOT NULL default '',
 `sex` enum('m','f') NULL,
 `title` int(10) unsigned NOT NULL,
 `lastname` varchar(255) NOT NULL default '',
 `firstname` varchar(255) NOT NULL default '',
 `company` varchar(255) NOT NULL default '',
 `street` varchar(255) NOT NULL default '',
 `zip` varchar(255) NOT NULL default '',
 `city` varchar(255) NOT NULL default '',
 `country` varchar(255) NOT NULL default '',
 `phone` varchar(255) NOT NULL default '',
 `birthday` varchar(10) NOT NULL default '00-00-0000',
 `status` int(1) NOT NULL default '0',
 `emaildate` int(14) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5;

INSERT INTO `contrexx_module_newsletter_user` (`id`, `code`, `email`, `sex`, `title`, `lastname`, `firstname`, `company`, `street`, `zip`, `city`, `country`, `phone`, `birthday`, `status`, `emaildate`) VALUES 
('1', 'btKCKTku5u', 'noreply@example.com', 'm', '2', 'Mustermann', 'Hans', '', '', '', '', '', '', '', '1', '1153137001');

#--------------------------------------------------------------
# Table:	contrexx_module_newsletter_user_title
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_newsletter_user_title`;

CREATE TABLE `contrexx_module_newsletter_user_title` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7;

INSERT INTO `contrexx_module_newsletter_user_title` (`id`, `title`) VALUES 
('1', 'Sehr geehrte Frau'),
('2', 'Sehr geehrter Herr'),
('3', 'Dear Ms'),
('4', 'Dear Mr'),
('5', 'Madame'),
('6', 'Monsieur');

#--------------------------------------------------------------
# Table:	contrexx_module_podcast_category
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_podcast_category`;

CREATE TABLE `contrexx_module_podcast_category` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `title` varchar(255) NOT NULL default '',
 `description` varchar(255) NOT NULL default '',
 `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `podcastindex` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6;

INSERT INTO `contrexx_module_podcast_category` (`id`, `title`, `description`, `status`) VALUES 
('1', 'Demo Kategorie', 'Das ist eine Demo Kategorie', '1'),
('2', 'Web 2.0 English', '', '1'),
('3', 'Web 2.0 Deutsch', '', '1'),
('4', 'Adobe Photoshop', '', '1'),
('5', 'Internettrends', '', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_podcast_medium
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_podcast_medium`;

CREATE TABLE `contrexx_module_podcast_medium` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `title` varchar(255) NOT NULL default '',
 `youtube_id` varchar(25) NOT NULL default '',
 `author` varchar(255) NOT NULL default '',
 `description` text NOT NULL,
 `source` text NOT NULL,
 `thumbnail` varchar(255) NOT NULL default '',
 `template_id` int(11) unsigned NOT NULL default '0',
 `width` int(10) unsigned NOT NULL default '0',
 `height` int(10) unsigned NOT NULL default '0',
 `playlenght` int(10) unsigned NOT NULL default '0',
 `size` int(10) unsigned NOT NULL default '0',
 `views` int(10) unsigned NOT NULL default '0',
 `status` tinyint(1) NOT NULL default '0',
 `date_added` int(14) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `podcastindex` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14;

INSERT INTO `contrexx_module_podcast_medium` (`id`, `title`, `youtube_id`, `author`, `description`, `source`, `thumbnail`, `template_id`, `width`, `height`, `playlenght`, `size`, `views`, `status`, `date_added`) VALUES 
('3', 'Photoshop Tutorial: How to Create a Web 2.0-Style Logo', '-pOkaC4eHsE', '', 'Tutorial how to create a Web 2.0-Style logo using Adobe Photoshop.', 'http://youtube.com/v/-pOkaC4eHsE', 'images/podcast/youtube_thumbnails/youtube_-pOkaC4eHsE.jpg', '101', '425', '350', '369', '0', '1', '1', '1209970275'),
('4', 'Photoshop Tutorial: Web 2.0 Logo', 'LVAkb1V4NKk', '', 'Ein kleines Photoshop Tutorial welches zeigt wie man ein Web 2.0 Logo mit Spiegel Effekt realisiert.', 'http://youtube.com/v/LVAkb1V4NKk', 'images/podcast/youtube_thumbnails/youtube_LVAkb1V4NKk.jpg', '101', '425', '350', '217', '0', '1', '1', '1209970618'),
('5', 'Schlagwort Web 2.0 Part 2', 'deqIIoSyuik', '', 'Vortrag anlässlich der Cisco Expo 2008 Vienna', 'http://youtube.com/v/deqIIoSyuik', 'images/podcast/youtube_thumbnails/youtube_deqIIoSyuik.jpg', '101', '425', '350', '549', '0', '1', '1', '1209970754'),
('7', 'Im Gespräch: Heiko Hebig zu den neuesten Trends im Internet', 'kvzX0UTa5zI', 'mediaTREFF', 'Kongress Web 2.0 in Wiesbaden', 'http://youtube.com/v/kvzX0UTa5zI', 'images/podcast/youtube_thumbnails/youtube_kvzX0UTa5zI.jpg', '101', '425', '350', '585', '0', '1', '1', '1209972776'),
('9', 'Social Networking - Der große Trend im Internet', 'GSuJwQxU6a8', '', 'Die Idee ist einfach: Menschen mit gleichen Interessen treffen sich auf Internetportalen, um z. B. Persönliches auszutauschen oder für den Beruf eine Gemeinschaft aufzubauen. Die Nutzerzahlen steigen rasant. Doch bei allen \"Social Networking\"-Portalen gibt es noch keine zündende Idee, wie man damit auch richtig Geld verdienen kann.', 'http://youtube.com/v/GSuJwQxU6a8', 'images/podcast/youtube_thumbnails/youtube_GSuJwQxU6a8.jpg', '101', '425', '350', '291', '0', '1', '1', '1209973309'),
('10', 'Are You Taking Advantage of Web 2.0 Marketing', 'HR0Ip0JwJKk', 'Jack Humphrey', '\"Are You Taking Advantage of Web 2.0 Marketing?\" by Jack Humphrey', 'http://youtube.com/v/HR0Ip0JwJKk', 'images/podcast/youtube_thumbnails/youtube_HR0Ip0JwJKk.jpg', '101', '425', '350', '266', '0', '1', '1', '1209973477'),
('11', 'Marketingberater 2.0@Web 2.0-Expo (3): iStockphoto', 'Lp8oqHseoOw', '', 'Berater, Coach, Blogger und Podcaster Sebastian Voss alias Marketingberater 2.0, hat sich zur Web2.0Expo in Berlin aufgemacht, um für Sie die neuesten Trends in Sachen Marketing und Mitmach-Web zu erhaschen. Ausgestattet mit seiner nagelneuen Handycam und einer Handvoll Neugier spricht er mit CEOs und Mitarbeitern von Adobe Systems, Wikio, GfK GeoMarketing uvm.', 'http://youtube.com/v/Lp8oqHseoOw', 'images/podcast/youtube_thumbnails/youtube_Lp8oqHseoOw.jpg', '101', '425', '350', '545', '0', '1', '1', '1209973680'),
('12', 'What is Web 2.0?', '0LzQIUANnHc', 'Andy Gutmans, Co-founder and VP, Zend', 'It\'s one of the biggest buzzwords out there, but what exactly does it mean? Andy Gutmans of Zend defines Web 2.0 and explains how it\'s changing the face of the Internet.', 'http://youtube.com/v/0LzQIUANnHc', 'images/podcast/youtube_thumbnails/youtube_0LzQIUANnHc.jpg', '101', '425', '350', '182', '0', '1', '1', '1213617873'),
('13', 'contrexx_logo.gif', '', 'fhfgh', 'fghdfhf', 'http://localhost/contrexx_2_0_0/images/content/contrexx_logo.gif', '/contrexx_2_0_0/images/podcast/no_picture.gif', '69', '180', '80', '0', '4774', '0', '1', '1226048393');

#--------------------------------------------------------------
# Table:	contrexx_module_podcast_rel_category_lang
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_podcast_rel_category_lang`;

CREATE TABLE `contrexx_module_podcast_rel_category_lang` (
 `category_id` int(10) unsigned NOT NULL default '0',
 `lang_id` int(10) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_podcast_rel_category_lang` (`category_id`, `lang_id`) VALUES 
('1', '1'),
('1', '4'),
('1', '2'),
('1', '5'),
('1', '3'),
('1', '6'),
('2', '1'),
('2', '2'),
('3', '1'),
('4', '1'),
('4', '2'),
('5', '1'),
('5', '4'),
('5', '2'),
('5', '5'),
('5', '3'),
('5', '6');

#--------------------------------------------------------------
# Table:	contrexx_module_podcast_rel_medium_category
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_podcast_rel_medium_category`;

CREATE TABLE `contrexx_module_podcast_rel_medium_category` (
 `medium_id` int(10) unsigned NOT NULL default '0',
 `category_id` int(10) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_module_podcast_rel_medium_category` (`medium_id`, `category_id`) VALUES 
('12', '2'),
('3', '2'),
('4', '4'),
('5', '3'),
('9', '3'),
('9', '5'),
('7', '5'),
('7', '3'),
('10', '2'),
('10', '5'),
('11', '3'),
('4', '3'),
('13', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_podcast_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_podcast_settings`;

CREATE TABLE `contrexx_module_podcast_settings` (
 `setid` int(6) unsigned NOT NULL auto_increment,
 `setname` varchar(250) NOT NULL default '',
 `setvalue` text NOT NULL,
 `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY (`setid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13;

INSERT INTO `contrexx_module_podcast_settings` (`setid`, `setname`, `setvalue`, `status`) VALUES 
('3', 'default_width', '320', '1'),
('4', 'default_height', '240', '1'),
('5', 'feed_title', 'Contrexx Demo-Seite Neuste Videos', '1'),
('6', 'feed_description', 'Neuste Videos', '1'),
('7', 'feed_image', '', '1'),
('8', 'latest_media_count', '15', '1'),
('9', 'latest_media_categories', '1', '1'),
('10', 'thumb_max_size', '50', '1'),
('11', 'thumb_max_size_homecontent', '85', '1'),
('12', 'auto_validate', '0', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_podcast_template
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_podcast_template`;

CREATE TABLE `contrexx_module_podcast_template` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `description` varchar(255) NOT NULL default '',
 `template` text NOT NULL,
 `extensions` varchar(255) NOT NULL default '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=102;

INSERT INTO `contrexx_module_podcast_template` (`id`, `description`, `template`, `extensions`) VALUES 
('50', 'Video für Windows (Windows Media Player Plug-in)', '<object id=\"podcastPlayer\" classid=\"clsid:6BF52A52-394A-11d3-B153-00C04F79FAA6\" standby=\"Loading Windows Media Player components...\" type=\"application/x-oleobject\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<embed type=\"application/x-mplayer2\" name=\"podcastPlayer\" showstatusbar=\"1\" src=\"[[MEDIUM_URL]]\" autostart=\"1\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]+70\" />\r\n<param name=\"URL\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"BufferingTime\" value=\"60\" />\r\n<param name=\"AllowChangeDisplaySize\" value=\"true\" />\r\n<param name=\"AutoStart\" value=\"true\" />\r\n<param name=\"EnableContextMenu\" value=\"true\" />\r\n<param name=\"stretchToFit\" value=\"true\" />\r\n<param name=\"ShowControls\" value=\"true\" />\r\n<param name=\"ShowTracker\" value=\"true\" />\r\n<param name=\"uiMode\" value=\"full\" />\r\n</object>', 'avi, wmv'),
('51', 'RealMedia (RealMedia Player Plug-in)', '<object id=\"podcastPlayer1\" classid=\"clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\">\r\n<param name=\"controls\" value=\"all\">\r\n<param name=\"autostart\" value=\"true\">\r\n<embed src=\"[[MEDIUM_URL]]\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" autostart=\"true\" type=\"video/x-pn-realvideo\" console=\"video1\" controls=\"All\" nojava=\"true\"></embed>\r\n</object>', 'ram, rpm'),
('52', 'QuickTime Film (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"video/quicktime\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"video/quicktime\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'mov, qt, mqv'),
('53', 'CAF-Audio (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"audio/x-caf\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"audio/x-caf\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'caf'),
('54', 'AAC-Audio (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"audio/x-aac\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"audio/x-aac\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'aac, adts'),
('55', 'AMR-Audio (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"audio/AMR\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"audio/AMR\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'amr'),
('56', 'GSM-Audio (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"audio/x-gsm\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"audio/x-gsm\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'gsm'),
('57', 'QUALCOMM PureVoice Audio (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"audio/vnd.qcelp\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"audio/vnd.qcelp\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'qcp'),
('58', 'MIDI (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"audio/x-midi\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"audio/x-midi\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'mid, midi, smf, kar'),
('59', 'uLaw/AU-Audio (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"audio/basic\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"audio/basic\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'au, snd, ulw'),
('60', 'AIFF-Audio (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"audio/x-aiff\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"audio/x-aiff\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'aiff, aif, aifc, cdda'),
('61', 'WAVE-Audio (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"audio/x-wav\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"audio/x-wav\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'wav, bwf'),
('62', 'Video für Windows (AVI) (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"video/x-msvideo\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"video/x-msvideo\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'avi, vfw'),
('63', 'AutoDesk Animator (FLC) (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"video/flc\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"video/flc\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'flc, fli, cel'),
('64', 'Digitales Video (DV) (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"video/x-dv\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"video/x-dv\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'dv, dif'),
('65', 'SDP-Stream-Beschreibung (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"application/x-sdp\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"application/x-sdp\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'sdp'),
('66', 'RTSP-Stream-Beschreibung (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"application/x-rtsp\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"application/x-rtsp\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'rtsp, rts'),
('67', 'MP3-Wiedergabeliste (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"audio/x-mpegurl\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"audio/x-mpegurl\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'm3u, m3url'),
('68', 'MPEG-Medien (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"video/x-mpeg\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"video/x-mpeg\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'mpeg, mpg, m1s, m1v, m1a, m75, m15, mp2'),
('69', '3GPP-Medien (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"video/3gpp\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"video/3gpp\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', '3gp, 3gpp'),
('70', '3GPP2-Medien (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"video/3gpp2\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"video/3gpp2\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', '3g2, 3gp2'),
('71', 'SD-Video (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"video/sd-video\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"video/sd-video\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'sdv'),
('72', 'AMC-Medien (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"application/x-mpeg\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"application/x-mpeg\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'amc'),
('73', 'MPEG-4-Medien (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"video/mp4\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"video/mp4\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'mp4'),
('74', 'AAC-Audiodatei (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"audio/x-m4a\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"audio/x-m4a\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'm4a'),
('75', 'AAC-Audio (geschützt) (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"audio/x-m4p\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"audio/x-m4p\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'm4p'),
('76', 'ACC-Audiobuch (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"audio/x-m4b\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"audio/x-m4b\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'm4b'),
('77', 'Video (geschützt) (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"video/x-m4v\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"video/x-m4v\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'm4v'),
('78', 'MP3-Audio (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"audio/x-mpeg\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"audio/x-mpeg\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'mp3, swa'),
('79', 'Sound Designer II (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"audio/x-sd2\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"audio/x-sd2\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'sd2'),
('80', 'BMP-Bild (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"image/x-bmp\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"image/x-bmp\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'bmp, dib'),
('81', 'MacPaint Bild (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"image/x-macpaint\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"image/x-macpaint\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'pntg, pnt, mac'),
('82', 'PICT-Bild (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"image/x-pict\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"image/x-pict\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'pict, pic, pct'),
('83', 'PNG-Bild (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"image/x-png\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"image/x-png\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'png'),
('84', 'QuickTime Bild (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"image/x-quicktime\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"image/x-quicktime\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'qtif, qti'),
('85', 'SGI-Bild (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"image/x-sgi\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"image/x-sgi\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'sgi, rgb'),
('86', 'TGA-Bild (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"image/x-targa\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"image/x-targa\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'targa, tga'),
('87', 'TIFF-Bild (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"image/x-tiff\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"image/x-tiff\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'tif, tiff'),
('88', 'Photoshop-Bild (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"image/x-photoshop\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"image/x-photoshop\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'psd'),
('89', 'JPEG2000 image (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"image/jp2\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"image/jp2\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'jp2'),
('90', 'SMIL 1.0 (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"application/smil\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"application/smil\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'smi, sml, smil'),
('91', 'Flash-Medien (QuckTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"application/x-shockwave-flash\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'swf'),
('92', 'QuickTime HTML (QHTML) (QuickTime Plug-in)', '<object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"autoplay\" value=\"true\" />\r\n<param name=\"controller\" value=\"true\" />\r\n<param name=\"target\" value=\"myself\" />\r\n<param name=\"type\" value=\"text/x-html-insertion\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" type=\"text/x-html-insertion\" pluginspage=\"http://www.apple.com/quicktime/download/\" autoplay=\"true\" controller=\"true\" target=\"myself\" />\r\n</object>', 'qht, qhtm'),
('93', 'MP3-Audio (RealPlayer Player)', '<object id=\"videoplayer1\" classid=\"clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"controls\" value=\"all\" />\r\n<param name=\"autostart\" value=\"true\" />\r\n<param name=\"type\" value=\"audio/x-mpeg\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" autostart=\"true\" type=\"audio/x-mpeg\" console=\"video1\" controls=\"All\" nojava=\"true\"></embed>\r\n</object>', 'mp3'),
('94', 'MP3-Wiedergabeliste (RealPlayer Plug-in)', '<object id=\"videoplayer1\" classid=\"clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"controls\" value=\"all\" />\r\n<param name=\"autostart\" value=\"true\" />\r\n<param name=\"type\" value=\"audio/x-mpegurl\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" autostart=\"true\" type=\"audio/x-mpegurl\" console=\"video1\" controls=\"All\" nojava=\"true\"></embed>\r\n</object>', 'm3u, m3url'),
('95', 'WAVE-Audio (RealPlayer Plug-in)', '<object id=\"videoplayer1\" classid=\"clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\">\r\n<param name=\"src\" value=\"[[MEDIUM_URL]]\" />\r\n<param name=\"controls\" value=\"all\" />\r\n<param name=\"autostart\" value=\"true\" />\r\n<param name=\"type\" value=\"audio/x-wav\" />\r\n<embed src=\"[[MEDIUM_URL]]\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\" autostart=\"true\" type=\"audio/x-wav\" console=\"video1\" controls=\"All\" nojava=\"true\"></embed>\r\n</object>', 'wav'),
('100', 'Flash-Video (Flash Video File)', '<object\r\n  type=\"application/x-shockwave-flash\"\r\n  data=\"[[ASCMS_PATH_OFFSET]]/modules/podcast/lib/FlowPlayer.swf\" \r\n	width=\"[[MEDIUM_WIDTH]]\"\r\n  height=\"[[MEDIUM_HEIGHT]]\"\r\n  id=\"FlowPlayer\">\r\n    <param name=\"movie\" value=\"[[ASCMS_PATH_OFFSET]]/modules/podcast/lib/FlowPlayer.swf\" />\r\n    <param name=\"quality\" value=\"high\" />\r\n    <param name=\"scale\" value=\"noScale\" />\r\n    <param name=\"allowfullscreen\" value=\"true\" />\r\n    <param name=\"allowScriptAccess\" value=\"always\" />\r\n    <param name=\"allownetworking\" value=\"all\" />\r\n    <param name=\"flashvars\" value=\"config={\r\n      autoPlay:false,\r\n      loop: false,\r\n      autoRewind: true,\r\n      videoFile: \'[[MEDIUM_URL]]\',\r\n      fullScreenScriptURL:\'[[ASCMS_PATH_OFFSET]]/modules/podcast/lib/fullscreen.js\',\r\n      initialScale:\'orig\'}\" />\r\n</object>', 'flv'),
('101', 'YouTube Video', '<object width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\"><param name=\"movie\" value=\"[[MEDIUM_URL]]\"></param><param name=\"wmode\" value=\"transparent\"></param><embed src=\"[[MEDIUM_URL]]\" type=\"application/x-shockwave-flash\" wmode=\"transparent\" width=\"[[MEDIUM_WIDTH]]\" height=\"[[MEDIUM_HEIGHT]]\"></embed></object>', 'swf');

#--------------------------------------------------------------
# Table:	contrexx_module_recommend
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_recommend`;

CREATE TABLE `contrexx_module_recommend` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `name` varchar(255) NOT NULL default '',
 `value` text NOT NULL,
 `lang_id` int(11) NOT NULL default '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27;

INSERT INTO `contrexx_module_recommend` (`id`, `name`, `value`, `lang_id`) VALUES 
('1', 'body', '<SALUTATION> <RECEIVER_NAME>\r\n\r\nFolgende Seite wurde ihnen von <SENDER_NAME> (<SENDER_MAIL>) empfohlen:\r\n\r\n<URL>\r\n\r\nAnmerkung von <SENDER_NAME>:\r\n\r\n<COMMENT>', '1'),
('2', 'subject', 'Seitenempfehlung von <SENDER_NAME>', '1'),
('5', 'salutation_female', 'Liebe', '1'),
('6', 'salutation_male', 'Lieber', '1'),
('7', 'body', '<SALUTATION> <RECEIVER_NAME>\r\n\r\nFolgende Seite wurde ihnen von <SENDER_NAME> (<SENDER_MAIL>) empfohlen:\r\n\r\n<URL>\r\n\r\nAnmerkung von <SENDER_NAME>:\r\n\r\n<COMMENT>', '2'),
('8', 'subject', 'Seitenempfehlung von <SENDER_NAME>', '2'),
('9', 'salutation_female', 'Liebe', '2'),
('10', 'salutation_male', 'Lieber', '2'),
('11', 'body', '<SALUTATION> <RECEIVER_NAME>\r\n\r\nFolgende Seite wurde ihnen von <SENDER_NAME> (<SENDER_MAIL>) empfohlen:\r\n\r\n<URL>\r\n\r\nAnmerkung von <SENDER_NAME>:\r\n\r\n<COMMENT>', '3'),
('12', 'subject', 'Seitenempfehlung von <SENDER_NAME>', '3'),
('13', 'salutation_female', 'Liebe', '3'),
('14', 'salutation_male', 'Lieber', '3'),
('15', 'body', '<SALUTATION> <RECEIVER_NAME>\r\n\r\nFolgende Seite wurde ihnen von <SENDER_NAME> (<SENDER_MAIL>) empfohlen:\r\n\r\n<URL>\r\n\r\nAnmerkung von <SENDER_NAME>:\r\n\r\n<COMMENT>', '4'),
('16', 'subject', 'Seitenempfehlung von <SENDER_NAME>', '4'),
('17', 'salutation_female', 'Liebe', '4'),
('18', 'salutation_male', 'Lieber', '4'),
('19', 'body', '<SALUTATION> <RECEIVER_NAME>\r\n\r\nFolgende Seite wurde ihnen von <SENDER_NAME> (<SENDER_MAIL>) empfohlen:\r\n\r\n<URL>\r\n\r\nAnmerkung von <SENDER_NAME>:\r\n\r\n<COMMENT>', '5'),
('20', 'subject', 'Seitenempfehlung von <SENDER_NAME>', '5'),
('21', 'salutation_female', 'Liebe', '5'),
('22', 'salutation_male', 'Lieber', '5'),
('23', 'body', '<SALUTATION> <RECEIVER_NAME>\r\n\r\nFolgende Seite wurde ihnen von <SENDER_NAME> (<SENDER_MAIL>) empfohlen:\r\n\r\n<URL>\r\n\r\nAnmerkung von <SENDER_NAME>:\r\n\r\n<COMMENT>', '6'),
('24', 'subject', 'Seitenempfehlung von <SENDER_NAME>', '6'),
('25', 'salutation_female', 'Liebe', '6'),
('26', 'salutation_male', 'Lieber', '6');

#--------------------------------------------------------------
# Table:	contrexx_module_repository
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_repository`;

CREATE TABLE `contrexx_module_repository` (
 `id` int(6) unsigned NOT NULL auto_increment,
 `moduleid` int(5) unsigned NOT NULL default '0',
 `content` mediumtext NOT NULL,
 `title` varchar(250) NOT NULL default '',
 `cmd` varchar(20) NOT NULL default '',
 `expertmode` set('y','n') NOT NULL default 'n',
 `parid` int(5) unsigned NOT NULL default '0',
 `displaystatus` set('on','off') NOT NULL default 'on',
 `username` varchar(250) NOT NULL default '',
 `displayorder` smallint(6) NOT NULL default '100',
 `lang` varchar(5) NOT NULL default '',
  UNIQUE KEY `contentid` (`id`),
  FULLTEXT KEY `fulltextindex` (`title`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=352;

INSERT INTO `contrexx_module_repository` (`id`, `moduleid`, `content`, `title`, `cmd`, `expertmode`, `parid`, `displaystatus`, `username`, `displayorder`, `lang`) VALUES 
('2', '0', '<p>Mit <a target=\"_blank\" href=\"http://www.contrexx.com\">Contrexx&reg; Web Content Management System (WCMS)</a> werden Webseiten f&uuml;r Internet, Extranet und Internet schnell, benutzerfreundlich und sicher erstellt. Die <a target=\"_blank\" href=\"http://www.contrexx.com/de/index.php?page=892\">standardisierten Module</a> von Contrexx&reg; erlauben ein rasches Umsetzen von individuellen Bed&uuml;rfnissen, wenn n&ouml;tig mit professioneller Unterst&uuml;tzung.<br />\r\nDas webbasierte System ist f&uuml;r die Verwaltung von flexiblen Internet- und Intranet L&ouml;sungen optimiert. Der modulare Aufbau und das Workflow System erm&ouml;glicht eine 100% Individualisierung der Logik und des Designs und f&ouml;rdert ein konsistentes und stetig wachsendes Wissensnetzwerk.<br />\r\n<br />\r\nDie Downloadversion beinhaltet einen Webinstaller, sowie verschiedene Module wie ein Linkverzeichnis, Podcast, Onlineschalter, Adressverzeichnis, Sitemap, Bildergalerie, Newsletter, G&auml;stebuch, RSS Feed Verzeichnis, News System, Abstimmung, Online Shop, Bannerverwaltung, Blockmodul und die M&ouml;glichkeiten f&uuml;r passwortgesch&uuml;tzte Bereiche.</p>\r\n<h2>Professioneller und innovativer Vertrieb</h2>\r\nContrexx&reg; wird weltweit &uuml;ber ein Partnernetzwerk vertrieben. Die <a target=\"_blank\" href=\"http://www.contrexx.com/de/index.php?page=106\">Contrexx&reg; Solutions Partner</a> sind autorisierte Partner welche ausgewiesene Kompetenzen im den Bereichen WebDesign, Grafik oder Internetmarketing besitzen. Damit erhalten Sie als Kunde professionelle Unterst&uuml;tzung mit hohen Kompetenzen aus Ihrer N&auml;he.', 'Contrexx® Web Content Management System (WCMS)', '', 'n', '1', 'on', 'system', '0', '1'),
('3', '0', 'In diesem Beitrag lernen Sie die ersten Schritte mit Contrexx&reg;. Wir w&uuml;nschen Ihnen viel Spass bei der Umsetzung und viel Erfolg bei der Umsetzung. F&uuml;r allf&auml;llige Fragen stehen Ihnen die folgenden <a href=\"index.php?page=2\">Mittel zur Verf&uuml;gung</a>.<br />\r\n<br />\r\n<h2>Einf&uuml;hrung</h2>\r\nDas Backend-System ist die Administrationskonsole. In diesem Bereich k&ouml;nnen Sie Contrexx administrieren, neue Seiten erstellen, Inhalte anpassen und vieles mehr. Das Frontend-System ist der Internetauftritt, welche Ihre Besucher erleben. Ein Themes ist das hinterlegte WebDesign.<br />\r\n<h2>Im Backend einloggen</h2>\r\n<p>Bitte folgen Sie dazu den folgenden Schritten:</p>\r\n<ul>\r\n    <li>Melden Sie sich im Contrexx an. Geben Sie dazu in der Adressenzeile im Browser Ihre Domain ein und f&uuml;gen Sie im Anschluss &quot;cadmin&quot; hinzu. Beispielsweise &quot;http://www.musterseite.eu/cadmin&quot;</li>\r\n    <li>Anschliessend erscheint die Anmeldemaske.</li>\r\n    <li>Geben Sie bitte die folgenden Daten ein:<br />\r\n    Sicherheitscode: Bitte wiederholen Sie den sichtbaren Code (dieser Code wird als Bild generiert und kann von Hackerwerkzeugen nicht erfasst werden)<br />\r\n    Benutzernamen: gem&auml;ss Angaben im Installer<br />\r\n    Pa&szlig;wort: gem&auml;ss Angaben im Installer</li>\r\n    <li>Empfehlung: vervollst&auml;ndigen Sie in einem ersten Schritt die Angaben in den Grundeinstellungen unter dem Navigationspunkt &quot;Administration&quot; auf der linken Seite.</li>\r\n</ul>\r\n<h2>Mit dem Content Manager arbeiten</h2>\r\n<p>Nach dem erfolgreichen Anmelden im Backend-Bereich k&ouml;nnen Sie Seiten erstellen. Um einen neuen Artikel anzulegen, w&auml;hlen Sie bitte die Funktion &quot;Content Management - Neue Seite&quot; auf der linken Seite. Danach definieren Sie die Artikeleigenschaften, insbesondere den Linknamen, Seitentitel und die Meta Angaben des Artikels (diese Angaben sind f&uuml;r Suchamschinen relevant). Mit Hilfe des WYSIWYG-Editors k&ouml;nnen Sie die Inhalte eingeben und speichern. Im Editor stehen Ihnen die aus der Textverarbeitung bekannten Funktionalit&auml;ten zur Verf&uuml;gung. Auch die Integration von Medien und Verlinkungen erfolgt &uuml;ber den Editor. Bitte verwenden Sie in der Formatierung des Textes die Formate aus dem Editor (Beispielsweise &Uuml;berschrift 1 oder Text). Wie die &Uuml;berschrift oder ein Text im Frontend aussieht, wird im Design und Layout definiert. Ein weiterer Zusatznutzen ist, dass Suchmaschinen eine definierte &Uuml;berschrift 1 (im HTML Code entspricht dies einem H1) besser indexieren weil &Uuml;berschirften aus der Sicht einer Suchmaschine relevanter sind.</p>\r\n<h2>Module und Themes - flexibel und erweiterbar</h2>\r\n<p>Der Aufbau von Contrexx basiert auf den folgenden Elementen:</p>\r\n<ul>\r\n    <li>Core System</li>\r\n    <li>Themes</li>\r\n    <li>Module</li>\r\n    <li>Inhalte</li>\r\n</ul>\r\n<p>Sogenannte Themes sind in XHTML programmiert und definieren das Erscheinungsbild der Site. Dabei werden im XHTML-Quelltext Platzhalter hinterlegt. Diese Platzhalter beinhalten weitere Dateien und Funktionalit&auml;ten, die sp&auml;ter auf der Website integriert werden.<br />\r\n<br />\r\nHinweis: Zur Zeit ist ein Portal f&uuml;r Contrexx&reg; - Themes in Vorbereitung und wird in K&uuml;rze erscheinen. Dies kann als Grundlage dienen, um WebDesign einfacher zu erstellen. <a href=\"http://www.contrexx.com/feed/news_headlines_de.xml\" target=\"_blank\">Abonnieren Sie sich gleich den Contrexx RSS - Feed</a>, damit Sie den Start dieses Portals nicht verpassen.</p>\r\n<p>Module sind in PHP programmiert und stellen die Funktionalit&auml;ten einer Website dar. Standardmodule sind die Darstellung von Texten und Navigation, Sitemap, Kontaktformulare, Suchen etc. Module bestehen aus einem Backend- und einem Frontend Bereich. Im Backendbereich kann der Administrator Einstellungen vornehmen, bspw. an welche e-Mail Adresse nach Ausf&uuml;llen eines Kontaktformulars eine Benachrichtigung versendet werden soll. Im Frontend Bereich wird die Ausgabe und Verarbeitung von Daten auf dem Onlinedienst gesteuert. Contrexx Templates f&uuml;hren Layouts und Module zusammen. Durch Auswahl eines Layouts im Template ist die Anzahl und Position von Platzhaltern vorbestimmt. F&uuml;r jeden dieser Container kann nun der Administrator ein Modul definieren, das dort ausgef&uuml;hrt werden soll.</p>', 'Ihre ersten Schritte mit dem Contrexx® WCMS', '', 'n', '1', 'on', 'system', '1', '1'),
('4', '0', 'Die Erfahrung zeigt, dass Contrexx zuverl&auml;ssig funktioniert. Sollten Sie trotzdem Unterst&uuml;tzung ben&ouml;tigen, stehen wir Ihnen mit den folgenden Instrumenten sehr gerne zur Verf&uuml;gung.<br />\r\n<ul>\r\n    <li><a target=\"_blank\" href=\"http://www.contrexx.com/wiki/de/\">Dokumentation</a>: Das Dokumentationsportal f&uuml;r Contrexx Anwender und Entwickler.</li>\r\n    <li><a target=\"_blank\" href=\"http://www.contrexx.com/forum/forumdisplay.php?f=68\">Contrexx - Forum</a>: Weiterf&uuml;hrende Unterst&uuml;tzung erhalten Sie von der Contrexx Community im Open Source Forum.</li>\r\n    <li><a target=\"_blank\" href=\"http://www.contrexx.com/bugtracker/\">Bugtracker</a>: Hier wird eine aktuelle Liste der bekannten Fehler, sowie der geplanten/gew&uuml;nschten Verbesserungen und Erweiterungen der Contrexx Software gef&uuml;hrt.</li>\r\n    <li><a href=\"http://support.comvation.com/index.php\" target=\"_blank\">Support - Ticket f&uuml;r Contrexx - Kunden</a>: Contrexx - Kunden k&ouml;nnen unter diesem Link ein Support-Ticket er&ouml;ffnen. Die Anfrage wird in das Ticketing-System geleitet und damit wird gew&auml;hrleistet, dass Ihre Anfrage rasch und zuverl&auml;ssig beantwortet wird. Nutzer der kostenlosen Opensource Version stehen die obigen M&ouml;glichkeiten zur Verf&uuml;gung.</li>\r\n</ul>', 'Contrexx Support', '', 'n', '1', 'on', 'system', '2', '1'),
('74', '0', '<div id=\"blog\">\r\n	<div class=\"text\">Das Contrexx Blog-Modul erzeugt, falls in den Moduleinstellungen aktiviert, automatisch RSS-Feeds von Ihren Meldungen und den dazu verfassten Kommentaren. Dabei wird pro aktivierte Systemsprache im Ordner <strong>feed/</strong> eine eigene XML-Datei nach folgendem Schema erstellt:</div>\r\n	<div class=\"code\">\r\n<pre>blog_messages_XX.xml\r\nblog_comments_XX.xml\r\nblog_category_ID_XX.xml</pre>\r\n	</div>\r\n	<div class=\"text\">Dabei steht der Platzhalter XX f&uuml;r die Kurzform der jeweiligen Sprache und ID f&uuml;r die eindeutige Bezeichnungs-ID der jeweiligen Kategorie. F&uuml;r die Sprache Deutsch (Kurzform: de) lauten der komplette Link beispielsweise wie folgt:</div>\r\n	<div class=\"code\">\r\n<pre>http://www.Ihre-Website.ch/feed/blog_messages_de.xml\r\nhttp://www.Ihre-Website.ch/feed/blog_comments_de.xml</pre>\r\n	</div>\r\n	<div class=\"text\">F&uuml;r die Kategorie 1 (ID = 1) in der Sprache deutsch w&uuml;rde der Pfad demnach wie folgt lauten:</div>\r\n	<div class=\"code\">\r\n<pre>http://www.Ihre-Website.ch/feed/blog_category_1_de.xml</pre>\r\n	</div>\r\n	<div class=\"text\">Eine komplette &Uuml;bersicht aller Kurzformen finden Sie in Ihrem Administrationsbereich unter <strong>Administration &gt; Spracheinstellungen</strong>.</div>\r\n</div>', 'RSS-Feed', '', 'y', '71', 'on', 'system', '3', '1'),
('167', '4', '<div id=\"newsletter\">\r\n	<!-- BEGIN newsletter_error_message -->\r\n	<div class=\"errorMessage\">{NEWSLETTER_ERROR_MESSAGE}</div>\r\n	<!-- END newsletter_error_message -->\r\n	<!-- BEGIN newsletter_ok_message -->\r\n	<div class=\"okMessage\">{NEWSLETTER_OK_MESSAGE}</div>\r\n	<!-- END newsletter_ok_message -->\r\n	<!-- BEGIN newsletterForm -->\r\n        <div class=\"form\">\r\n	<fieldset> \r\n		<legend>Anmeldeformular</legend>\r\n		<form name=\"newsletter\" action=\"index.php?section=newsletter&amp;cmd=subscribe\" method=\"post\">\r\n			<p><label for=\"email\">{TXT_NEWSLETTER_EMAIL_ADDRESS}</label><input type=\"text\" name=\"email\" maxlength=\"255\" value=\"{NEWSLETTER_EMAIL}\" /></p>\r\n			<p><label>{TXT_NEWSLETTER_SEX}</label><input type=\"radio\" id=\"female\" name=\"sex\" value=\"f\" {NEWSLETTER_SEX_F} /><label class=\"description\" for=\"female\">{TXT_NEWSLETTER_FEMALE}</label></p>\r\n			<p><input type=\"radio\" id=\"male\" name=\"sex\" value=\"m\" {NEWSLETTER_SEX_M} /><label class=\"description\" for=\"male\">{TXT_NEWSLETTER_MALE}</label></p>\r\n			<p><label>{TXT_NEWSLETTER_TITLE}</label>{NEWSLETTER_TITLE}</p>\r\n			<p><label for=\"lastname\">{TXT_NEWSLETTER_LASTNAME}</label><input type=\"text\" name=\"lastname\" maxlength=\"255\" value=\"{NEWSLETTER_LASTNAME}\" /></p>\r\n			<p><label for=\"firstname\">{TXT_NEWSLETTER_FIRSTNAME}</label><input type=\"text\" name=\"firstname\" maxlength=\"255\" value=\"{NEWSLETTER_FIRSTNAME}\" /></p>\r\n			<p><label for=\"company\">{TXT_NEWSLETTER_COMPANY}</label><input type=\"text\" name=\"company\" maxlength=\"255\" value=\"{NEWSLETTER_COMPANY}\" /></p>\r\n			<p><label for=\"street\">{TXT_NEWSLETTER_STREET}</label><input type=\"text\" name=\"street\" maxlength=\"255\" value=\"{NEWSLETTER_STREET}\" /></p>\r\n			<p><label for=\"zip\">{TXT_NEWSLETTER_ZIP}</label><input type=\"text\" name=\"zip\" maxlength=\"255\" value=\"{NEWSLETTER_ZIP}\" /></p>\r\n			<p><label for=\"city\">{TXT_NEWSLETTER_CITY}</label><input type=\"text\" name=\"city\" maxlength=\"255\" value=\"{NEWSLETTER_CITY}\" /></p>\r\n			<p><label for=\"country\">{TXT_NEWSLETTER_COUNTRY}</label><input type=\"text\" name=\"country\" maxlength=\"255\" value=\"{NEWSLETTER_COUNTRY}\" /></p>\r\n			<p><label for=\"phone\">{TXT_NEWSLETTER_PHONE}</label><input type=\"text\" name=\"phone\" maxlength=\"255\" value=\"{NEWSLETTER_PHONE}\" /></p>\r\n			<!-- BEGIN newsletter_lists -->\r\n					<p><input type=\"checkbox\" name=\"list[{NEWSLETTER_LIST_ID}]\" id=\"list_{NEWSLETTER_LIST_ID}\" {NEWSLETTER_LIST_SELECTED} value=\"1\" /> <label class=\"description\" for=\"list_{NEWSLETTER_LIST_ID}\">{NEWSLETTER_LIST_NAME}</label></p>\r\n			<!-- END newsletter_lists -->\r\n			 <p><input type=\"submit\" name=\"recipient_save\" value=\"{TXT_NEWSLETTER_SAVE}\" /></p>\r\n		</form>\r\n	</fieldset>\r\n        </div>\r\n	<!-- END newsletterForm -->\r\n</div>', 'Newsletter abonnieren', '', 'y', '0', 'on', 'system', '6', '1'),
('168', '4', '<div id=\"newsletter\">\r\n	<div class=\"okMessage\">{NEWSLETTER_MESSAGE}</div>\r\n</div>', 'Newsletter bestätigen', 'confirm', 'y', '167', 'off', 'system', '99', '1'),
('169', '4', '<div id=\"newsletter\">\r\n	<!-- BEGIN newsletter_error_message -->\r\n	<div class=\"errorMessage\">{NEWSLETTER_ERROR_MESSAGE}</div>\r\n	<!-- END newsletter_error_message -->\r\n	<!-- BEGIN newsletter_ok_message -->\r\n	<div class=\"okMessage\">{NEWSLETTER_OK_MESSAGE}</div>\r\n	<!-- END newsletter_ok_message -->\r\n	<!-- BEGIN newsletterForm -->\r\n	<fieldset> \r\n		<legend>Profil Daten</legend>\r\n		<form name=\"newsletter\" action=\"index.php?section=newsletter&amp;cmd=profile&amp;code={NEWSLETTER_USER_CODE}&amp;mail={NEWSLETTER_PROFILE_MAIL}\" method=\"post\">\r\n			<p><label for=\"email\">{TXT_NEWSLETTER_EMAIL_ADDRESS}</label><input type=\"text\" name=\"email\" maxlength=\"255\" value=\"{NEWSLETTER_EMAIL}\" /></p>\r\n			<p><label>{TXT_NEWSLETTER_SEX}</label><input type=\"radio\" id=\"female\" name=\"sex\" value=\"f\" {NEWSLETTER_SEX_F} /><label class=\"description\" for=\"female\">{TXT_NEWSLETTER_FEMALE}</label><br /><input type=\"radio\" id=\"male\" name=\"sex\" value=\"m\" {NEWSLETTER_SEX_M} /><label class=\"description\" for=\"male\">{TXT_NEWSLETTER_MALE}</label></p>\r\n			<p><label>{TXT_NEWSLETTER_TITLE}</label>{NEWSLETTER_TITLE}</p>\r\n			<p><label for=\"lastname\">{TXT_NEWSLETTER_LASTNAME}</label><input type=\"text\" name=\"lastname\" maxlength=\"255\" value=\"{NEWSLETTER_LASTNAME}\" /></p>\r\n			<p><label for=\"firstname\">{TXT_NEWSLETTER_FIRSTNAME}</label><input type=\"text\" name=\"firstname\" maxlength=\"255\" value=\"{NEWSLETTER_FIRSTNAME}\" /></p>\r\n			<p><label for=\"company\">{TXT_NEWSLETTER_COMPANY}</label><input type=\"text\" name=\"company\" maxlength=\"255\" value=\"{NEWSLETTER_COMPANY}\" /></p>\r\n			<p><label for=\"street\">{TXT_NEWSLETTER_STREET}</label><input type=\"text\" name=\"street\" maxlength=\"255\" value=\"{NEWSLETTER_STREET}\" /></p>\r\n			<p><label for=\"zip\">{TXT_NEWSLETTER_ZIP}</label><input type=\"text\" name=\"zip\" maxlength=\"255\" value=\"{NEWSLETTER_ZIP}\" /></p>\r\n			<p><label for=\"city\">{TXT_NEWSLETTER_CITY}</label><input type=\"text\" name=\"city\" maxlength=\"255\" value=\"{NEWSLETTER_CITY}\" /></p>\r\n			<p><label for=\"country\">{TXT_NEWSLETTER_COUNTRY}</label><input type=\"text\" name=\"country\" maxlength=\"255\" value=\"{NEWSLETTER_COUNTRY}\" /></p>\r\n			<p><label for=\"phone\">{TXT_NEWSLETTER_PHONE}</label><input type=\"text\" name=\"phone\" maxlength=\"255\" value=\"{NEWSLETTER_PHONE}\" /></p>\r\n			<!-- BEGIN newsletter_lists -->\r\n					<p><input type=\"checkbox\" name=\"list[{NEWSLETTER_LIST_ID}]\" id=\"list_{NEWSLETTER_LIST_ID}\" {NEWSLETTER_LIST_SELECTED} value=\"1\" /> <label class=\"description\" for=\"list_{NEWSLETTER_LIST_ID}\">{NEWSLETTER_LIST_NAME}</label></p>\r\n			<!-- END newsletter_lists -->\r\n			 <p><input type=\"submit\" name=\"recipient_save\" value=\"{TXT_NEWSLETTER_SAVE}\" /></p>\r\n		</form>\r\n	</fieldset>\r\n	<!-- END newsletterForm -->\r\n</div>\r\n', 'Newsletter Profil bearbeiten', 'profile', 'y', '167', 'off', 'system', '99', '1'),
('170', '4', '<div id=\"newsletter\">\r\n	<!-- BEGIN newsletter_error_message -->\r\n	<div class=\"errorMessage\">{NEWSLETTER_ERROR_MESSAGE}</div>\r\n	<!-- END newsletter_error_message -->\r\n	<!-- BEGIN newsletter_ok_message -->\r\n	<div class=\"okMessage\">{NEWSLETTER_OK_MESSAGE}</div>\r\n	<!-- END newsletter_ok_message -->\r\n	<!-- BEGIN newsletterForm -->\r\n        <div class=\"form\">\r\n	<fieldset> \r\n		<legend>Anmeldeformular</legend>\r\n		<form name=\"newsletter\" action=\"index.php?section=newsletter&amp;cmd=subscribe\" method=\"post\">\r\n			<p><label for=\"email\">{TXT_NEWSLETTER_EMAIL_ADDRESS}</label><input type=\"text\" name=\"email\" maxlength=\"255\" value=\"{NEWSLETTER_EMAIL}\" /></p>\r\n			<p><label>{TXT_NEWSLETTER_SEX}</label><input type=\"radio\" id=\"female\" name=\"sex\" value=\"f\" {NEWSLETTER_SEX_F} /><label class=\"description\" for=\"female\">{TXT_NEWSLETTER_FEMALE}</label><br /><input type=\"radio\" id=\"male\" name=\"sex\" value=\"m\" {NEWSLETTER_SEX_M} /><label class=\"description\" for=\"male\">{TXT_NEWSLETTER_MALE}</label></p>\r\n			<p><label>{TXT_NEWSLETTER_TITLE}</label>{NEWSLETTER_TITLE}</p>\r\n			<p><label for=\"lastname\">{TXT_NEWSLETTER_LASTNAME}</label><input type=\"text\" name=\"lastname\" maxlength=\"255\" value=\"{NEWSLETTER_LASTNAME}\" /></p>\r\n			<p><label for=\"firstname\">{TXT_NEWSLETTER_FIRSTNAME}</label><input type=\"text\" name=\"firstname\" maxlength=\"255\" value=\"{NEWSLETTER_FIRSTNAME}\" /></p>\r\n			<p><label for=\"company\">{TXT_NEWSLETTER_COMPANY}</label><input type=\"text\" name=\"company\" maxlength=\"255\" value=\"{NEWSLETTER_COMPANY}\" /></p>\r\n			<p><label for=\"street\">{TXT_NEWSLETTER_STREET}</label><input type=\"text\" name=\"street\" maxlength=\"255\" value=\"{NEWSLETTER_STREET}\" /></p>\r\n			<p><label for=\"zip\">{TXT_NEWSLETTER_ZIP}</label><input type=\"text\" name=\"zip\" maxlength=\"255\" value=\"{NEWSLETTER_ZIP}\" /></p>\r\n			<p><label for=\"city\">{TXT_NEWSLETTER_CITY}</label><input type=\"text\" name=\"city\" maxlength=\"255\" value=\"{NEWSLETTER_CITY}\" /></p>\r\n			<p><label for=\"country\">{TXT_NEWSLETTER_COUNTRY}</label><input type=\"text\" name=\"country\" maxlength=\"255\" value=\"{NEWSLETTER_COUNTRY}\" /></p>\r\n			<p><label for=\"phone\">{TXT_NEWSLETTER_PHONE}</label><input type=\"text\" name=\"phone\" maxlength=\"255\" value=\"{NEWSLETTER_PHONE}\" /></p>\r\n			<!-- BEGIN newsletter_lists -->\r\n					<p><input type=\"checkbox\" name=\"list[{NEWSLETTER_LIST_ID}]\" id=\"list_{NEWSLETTER_LIST_ID}\" {NEWSLETTER_LIST_SELECTED} value=\"1\" /> <label class=\"description\" for=\"list_{NEWSLETTER_LIST_ID}\">{NEWSLETTER_LIST_NAME}</label></p>\r\n			<!-- END newsletter_lists -->\r\n			 <p><input type=\"submit\" name=\"recipient_save\" value=\"{TXT_NEWSLETTER_SAVE}\" /></p>\r\n		</form>\r\n	</fieldset>\r\n        </div>\r\n	<!-- END newsletterForm -->\r\n</div>', 'Newsletter abonnieren', 'subscribe', 'y', '167', 'off', 'system', '99', '1'),
('171', '4', '<div id=\"newsletter\">\r\n	<div class=\"okMessage\">{NEWSLETTER_MESSAGE}</div>\r\n</div>', 'Newsletter abmelden', 'unsubscribe', 'y', '167', 'off', 'system', '99', '1'),
('201', '15', 'Besten Dank f&uuml;r Ihren Entscheid, <a target=\"_blank\" href=\"http://www.contrexx.com\">Contrexx&reg;</a> als Grundlage f&uuml;r Ihr Webprojekt einzusetzen.\r\n<h2>Erfolgreiche Installation von Contrexx&reg;</h2>\r\n<p><em>Contrexx&reg; Web Content Management System Version 2.0 ist </em>erfolgreich installiert worden. Nun ist <a target=\"_blank\" href=\"http://www.contrexx.com\">Contrexx&reg;</a> einsatzbereit. Sie  k&ouml;nnen jetzt die Inhalte erstellen und Ihr WebDesign integrieren. Mit der Installation von Contrexx&reg; akzeptieren Sie unsere <a href=\"http://www.contrexx.com/de/index.php?page=1132\" target=\"_blank\">Lizenzbedingungen</a>.</p>\r\n<h2>Lassen Sie Ihre Seite finden</h2>\r\nBereits w&auml;hrend der Erstellung des Internetauftrittes k&ouml;nnen Sie auf einige Punkte f&uuml;r die <a target=\"_blank\" href=\"http://www.contrexx.com/wiki/de/index.php?title=Suchmaschinenoptimierung_%28SEO%29\">Suchmaschinenoptimierung achten</a>, dannach empfehlen wir Ihnen die Webseiten bei den entsprechenden Suchmaschinen anzumelden. Die Indexierung der Suchmaschinen k&ouml;nnen Sie in der Statistik von Contrexx mitverfolgen. F&uuml;r die ersten Tipps folgen Sie bitte diesem <a target=\"_blank\" href=\"http://www.contrexx.com/wiki/de/index.php?title=Suchmaschinenoptimierung_%28SEO%29\">Link</a>.<br />\r\n<h2>Laufend &uuml;ber Contrexx&reg; informiert</h2>\r\n<p>Wir sind &uuml;berzeugt, dass Contrexx&reg; die richtige Wahl ist: Die Bedienung ist einfach, der <a href=\"index.php?page=2\">professionelle Support</a> unterst&uuml;tzt Sie auf Anfrage und Contrexx&reg; wird laufend weiter entwickelt. Informieren Sie sich regelm&auml;ssig unter <a target=\"_blank\" href=\"http://www.contrexx.com\">www.contrexx.com</a> oder abonnieren Sie <a href=\"http://www.contrexx.com/feed/news_headlines_de.xml\" target=\"_blank\">unseren RSS-Feed</a>.</p>\r\n<h2>Referenz werden</h2>\r\n<a href=\"http://www.contrexx.com/de/index.php?section=directory&amp;cmd=add&amp;langId=1\" target=\"_blank\">Bewerben Sie sich nach Abschluss Ihres Projektes als Referenz bei Contrexx&reg;</a>, nach einer kurzen Pr&uuml;fung werden wir die Referenz freischalten. Damit erhalten Sie eine weitere Verlinkung auf Ihre Webseite und damit gewinnen Sie eine h&ouml;here Relevanz bei Suchmaschinen.<br />', 'Willkommen und Glückwunsch', '', 'n', '0', 'on', 'system', '1', '1'),
('202', '0', '<p>Mit <a target=\"_blank\" href=\"http://www.contrexx.com\">Contrexx&reg; Web Content Management System (WCMS)</a> werden Webseiten f&uuml;r Internet, Extranet und Internet schnell, benutzerfreundlich und sicher erstellt. Die <a target=\"_blank\" href=\"http://www.contrexx.com/de/index.php?page=892\">standardisierten Module</a> von Contrexx&reg; erlauben ein rasches Umsetzen von individuellen Bed&uuml;rfnissen, wenn n&ouml;tig mit professioneller Unterst&uuml;tzung.<br />\r\nDas webbasierte System ist f&uuml;r die Verwaltung von flexiblen Internet- und Intranet L&ouml;sungen optimiert. Der modulare Aufbau und das Workflow System erm&ouml;glicht eine 100% Individualisierung der Logik und des Designs und f&ouml;rdert ein konsistentes und stetig wachsendes Wissensnetzwerk.<br />\r\n<br />\r\nDie Downloadversion beinhaltet einen Webinstaller, sowie verschiedene Module wie ein Linkverzeichnis, Podcast, Onlineschalter, Adressverzeichnis, Sitemap, Bildergalerie, Newsletter, G&auml;stebuch, RSS Feed Verzeichnis, News System, Abstimmung, Online Shop, Bannerverwaltung, Blockmodul und die M&ouml;glichkeiten f&uuml;r passwortgesch&uuml;tzte Bereiche.</p>\r\n<h2>Professioneller und innovativer Vertrieb</h2>\r\nContrexx&reg; wird weltweit &uuml;ber ein Partnernetzwerk vertrieben. Die <a target=\"_blank\" href=\"http://www.contrexx.com/de/index.php?page=106\">Contrexx&reg; Solutions Partner</a> sind autorisierte Partner welche ausgewiesene Kompetenzen im den Bereichen WebDesign, Grafik oder Internetmarketing besitzen. Damit erhalten Sie als Kunde professionelle Unterst&uuml;tzung mit hohen Kompetenzen aus Ihrer N&auml;he.', 'Contrexx® Web Content Management System (WCMS)', '', 'n', '201', 'on', 'system', '0', '1'),
('203', '0', 'In diesem Beitrag lernen Sie die ersten Schritte mit Contrexx&reg;. Wir w&uuml;nschen Ihnen viel Spass bei der Umsetzung und viel Erfolg bei der Umsetzung. F&uuml;r allf&auml;llige Fragen stehen Ihnen die folgenden <a href=\"index.php?page=2\">Mittel zur Verf&uuml;gung</a>.<br />\r\n<br />\r\n<h2>Einf&uuml;hrung</h2>\r\nDas Backend-System ist die Administrationskonsole. In diesem Bereich k&ouml;nnen Sie Contrexx administrieren, neue Seiten erstellen, Inhalte anpassen und vieles mehr. Das Frontend-System ist der Internetauftritt, welche Ihre Besucher erleben. Ein Themes ist das hinterlegte WebDesign.<br />\r\n<h2>Im Backend einloggen</h2>\r\n<p>Bitte folgen Sie dazu den folgenden Schritten:</p>\r\n<ul>\r\n    <li>Melden Sie sich im Contrexx an. Geben Sie dazu in der Adressenzeile im Browser Ihre Domain ein und f&uuml;gen Sie im Anschluss &quot;cadmin&quot; hinzu. Beispielsweise &quot;http://www.musterseite.eu/cadmin&quot;</li>\r\n    <li>Anschliessend erscheint die Anmeldemaske.</li>\r\n    <li>Geben Sie bitte die folgenden Daten ein:<br />\r\n    Sicherheitscode: Bitte wiederholen Sie den sichtbaren Code (dieser Code wird als Bild generiert und kann von Hackerwerkzeugen nicht erfasst werden)<br />\r\n    Benutzernamen: gem&auml;ss Angaben im Installer<br />\r\n    Pa&szlig;wort: gem&auml;ss Angaben im Installer</li>\r\n    <li>Empfehlung: vervollst&auml;ndigen Sie in einem ersten Schritt die Angaben in den Grundeinstellungen unter dem Navigationspunkt &quot;Administration&quot; auf der linken Seite.</li>\r\n</ul>\r\n<h2>Mit dem Content Manager arbeiten</h2>\r\n<p>Nach dem erfolgreichen Anmelden im Backend-Bereich k&ouml;nnen Sie Seiten erstellen. Um einen neuen Artikel anzulegen, w&auml;hlen Sie bitte die Funktion &quot;Content Management - Neue Seite&quot; auf der linken Seite. Danach definieren Sie die Artikeleigenschaften, insbesondere den Linknamen, Seitentitel und die Meta Angaben des Artikels (diese Angaben sind f&uuml;r Suchamschinen relevant). Mit Hilfe des WYSIWYG-Editors k&ouml;nnen Sie die Inhalte eingeben und speichern. Im Editor stehen Ihnen die aus der Textverarbeitung bekannten Funktionalit&auml;ten zur Verf&uuml;gung. Auch die Integration von Medien und Verlinkungen erfolgt &uuml;ber den Editor. Bitte verwenden Sie in der Formatierung des Textes die Formate aus dem Editor (Beispielsweise &Uuml;berschrift 1 oder Text). Wie die &Uuml;berschrift oder ein Text im Frontend aussieht, wird im Design und Layout definiert. Ein weiterer Zusatznutzen ist, dass Suchmaschinen eine definierte &Uuml;berschrift 1 (im HTML Code entspricht dies einem H1) besser indexieren weil &Uuml;berschirften aus der Sicht einer Suchmaschine relevanter sind.</p>\r\n<h2>Module und Themes - flexibel und erweiterbar</h2>\r\n<p>Der Aufbau von Contrexx basiert auf den folgenden Elementen:</p>\r\n<ul>\r\n    <li>Core System</li>\r\n    <li>Themes</li>\r\n    <li>Module</li>\r\n    <li>Inhalte</li>\r\n</ul>\r\n<p>Sogenannte Themes sind in XHTML programmiert und definieren das Erscheinungsbild der Site. Dabei werden im XHTML-Quelltext Platzhalter hinterlegt. Diese Platzhalter beinhalten weitere Dateien und Funktionalit&auml;ten, die sp&auml;ter auf der Website integriert werden.<br />\r\n<br />\r\nHinweis: Zur Zeit ist ein Portal f&uuml;r Contrexx&reg; - Themes in Vorbereitung und wird in K&uuml;rze erscheinen. Dies kann als Grundlage dienen, um WebDesign einfacher zu erstellen. <a href=\"http://www.contrexx.com/feed/news_headlines_de.xml\" target=\"_blank\">Abonnieren Sie sich gleich den Contrexx RSS - Feed</a>, damit Sie den Start dieses Portals nicht verpassen.</p>\r\n<p>Module sind in PHP programmiert und stellen die Funktionalit&auml;ten einer Website dar. Standardmodule sind die Darstellung von Texten und Navigation, Sitemap, Kontaktformulare, Suchen etc. Module bestehen aus einem Backend- und einem Frontend Bereich. Im Backendbereich kann der Administrator Einstellungen vornehmen, bspw. an welche e-Mail Adresse nach Ausf&uuml;llen eines Kontaktformulars eine Benachrichtigung versendet werden soll. Im Frontend Bereich wird die Ausgabe und Verarbeitung von Daten auf dem Onlinedienst gesteuert. Contrexx Templates f&uuml;hren Layouts und Module zusammen. Durch Auswahl eines Layouts im Template ist die Anzahl und Position von Platzhaltern vorbestimmt. F&uuml;r jeden dieser Container kann nun der Administrator ein Modul definieren, das dort ausgef&uuml;hrt werden soll.</p>', 'Ihre ersten Schritte mit dem Contrexx® WCMS', '', 'n', '201', 'on', 'system', '1', '1'),
('204', '0', 'Die Erfahrung zeigt, dass Contrexx zuverl&auml;ssig funktioniert. Sollten Sie trotzdem Unterst&uuml;tzung ben&ouml;tigen, stehen wir Ihnen mit den folgenden Instrumenten sehr gerne zur Verf&uuml;gung.<br />\r\n<ul>\r\n    <li><a target=\"_blank\" href=\"http://www.contrexx.com/wiki/de/\">Dokumentation</a>: Das Dokumentationsportal f&uuml;r Contrexx Anwender und Entwickler.</li>\r\n    <li><a target=\"_blank\" href=\"http://www.contrexx.com/forum/forumdisplay.php?f=68\">Contrexx - Forum</a>: Weiterf&uuml;hrende Unterst&uuml;tzung erhalten Sie von der Contrexx Community im Open Source Forum.</li>\r\n    <li><a target=\"_blank\" href=\"http://www.contrexx.com/bugtracker/\">Bugtracker</a>: Hier wird eine aktuelle Liste der bekannten Fehler, sowie der geplanten/gew&uuml;nschten Verbesserungen und Erweiterungen der Contrexx Software gef&uuml;hrt.</li>\r\n    <li><a href=\"http://support.comvation.com/index.php\" target=\"_blank\">Support - Ticket f&uuml;r Contrexx - Kunden</a>: Contrexx - Kunden k&ouml;nnen unter diesem Link ein Support-Ticket er&ouml;ffnen. Die Anfrage wird in das Ticketing-System geleitet und damit wird gew&auml;hrleistet, dass Ihre Anfrage rasch und zuverl&auml;ssig beantwortet wird. Nutzer der kostenlosen Opensource Version stehen die obigen M&ouml;glichkeiten zur Verf&uuml;gung.</li>\r\n</ul>', 'Contrexx Support', '', 'n', '201', 'on', 'system', '2', '1'),
('205', '11', '<div id=\"sitemap\">\r\n<ul>\r\n	<!-- BEGIN sitemap -->\r\n	<li class=\"{STYLE}\">{SPACER}<a title=\"{NAME}\" href=\"{URL}\">{NAME}</a></li>\r\n	<!-- END sitemap -->\r\n</ul>\r\n</div>', 'Sitemap', '', 'y', '0', 'on', 'system', '555', '1'),
('206', '8', '<form name=\"formNews\" method=\"post\" action=\"index.php?section=news\">\r\n    {NEWS_CAT_DROPDOWNMENU}\r\n</form>\r\n<br />\r\n<table cellspacing=\"0\" id=\"news\">\r\n    <tbody>\r\n        <tr>\r\n            <th width=\"15%\" nowrap=\"nowrap\" class=\"newsback\"><strong>{TXT_DATE}</strong></th>\r\n            <th width=\"85%\" nowrap=\"nowrap\" class=\"newsback\"><strong>{TXT_NEWS_MESSAGE}</strong></th>\r\n        </tr>\r\n        <!-- BEGIN newsrow -->\r\n        <tr class=\"{NEWS_CSS}\">\r\n            <td nowrap=\"nowrap\">{NEWS_DATE}&nbsp;&nbsp;</td>\r\n            <td>{NEWS_LINK}</td>\r\n        </tr>\r\n        <!-- END newsrow -->\r\n    </tbody>\r\n</table>\r\n<br />\r\n{NEWS_PAGING}', 'News', '', 'y', '0', 'on', 'system', '2', '1'),
('207', '8', '<form name=\"formNews\" method=\"post\" action=\"index.php?section=news\">\r\n    {NEWS_CAT_DROPDOWNMENU}\r\n</form>\r\n<br />\r\n<table cellspacing=\"0\" id=\"news\">\r\n    <tbody>\r\n        <tr>\r\n            <th width=\"15%\" nowrap=\"nowrap\" class=\"newsback\"><strong>{TXT_DATE}</strong></th>\r\n            <th width=\"85%\" nowrap=\"nowrap\" class=\"newsback\"><strong>Meldung</strong></th>\r\n        </tr>\r\n        <!-- BEGIN newsrow -->\r\n        <tr class=\"{NEWS_CSS}\">\r\n            <td nowrap=\"nowrap\">{NEWS_DATE}&nbsp;&nbsp;</td>\r\n            <td>{NEWS_LINK}</td>\r\n        </tr>\r\n        <!-- END newsrow -->\r\n    </tbody>\r\n</table>\r\n<br />\r\n{NEWS_PAGING}', 'Direktzugriff auf eine Newskategorie', '1', 'n', '206', 'on', 'system', '0', '1'),
('208', '8', '<h3>Online Einbindung mittels RSS-Newsfeed</h3>\n<p><a href=\"{NEWS_RSS_FEED_URL}\" title=\"RSS Newsfeed von {NEWS_HOSTNAME}\" class=\"rssfeed\"><img width=\"48\" height=\"74\" border=\"0\" style=\"margin: 5px 20px 20px; float: right;\" src=\"images/content/icons/rss_bg.gif\" alt=\"Der Feed dieser Website kann &uuml;ber diesen Link aufgerufen werden\" /></a>RSS ist ein elektronisches Nachrichtenformat, das dem Nutzer erm&ouml;glicht, die Inhalte einer Website &ndash; oder Teile davon &ndash; als sogenannte RSS-Feeds zu abonnieren oder in andere Websites zu integrieren.</p>\n<h3>Online Einbindung mittels Javascript</h3>\nDer Feed dieser Website kann auch ganz einfach auf Ihrer Website dargestellt werden. Dazu m&uuml;ssen Sie lediglich den folgenden Code in Ihre eigene Webseite einf&uuml;gen:<br />\n<br />\n<form action=\"\">\n    <textarea style=\"width: 98%; font-size: 95%;\" rows=\"18\" cols=\"30\" name=\"code\">{NEWS_RSS2JS_CODE}</textarea>     <br />\n    <br />\n    <input type=\"button\" value=\"Alles markieren\" onclick=\"javascript:this.form.code.focus();this.form.code.select();\" name=\"button\" />\n</form>\n', 'News Feed', 'feed', 'n', '206', 'on', 'system', '1', '1'),
('209', '8', '{NEWS_TEXT}<br />\r\n{NEWS_SOURCE}<br />\r\n{NEWS_URL}<br />\r\nVer&ouml;ffentlicht am<br />\r\n{NEWS_DATE}<br />\r\n<br />\r\n<br />\r\n<div id=\"newsbox\">\r\n<div>\r\n<table cellspacing=\"0\">\r\n    <tbody>\r\n        <tr>\r\n            <th colspan=\"2\">Toolbox</th>\r\n        </tr>\r\n        <tr class=\"row1\">\r\n            <td width=\"1%\"><img width=\"16\" height=\"16\" alt=\"Print\" src=\"images/content/icons/printer-1.gif\" /></td>\r\n            <td width=\"99%\"><a href=\"{PRINT_URL}\">Drucken</a></td>\r\n        </tr>\r\n        <tr class=\"row2\">\r\n            <td><img width=\"16\" height=\"16\" alt=\"Acrobat\" src=\"images/content/icons/page_white_acrobat.gif\" /></td>\r\n            <td><a href=\"{PDF_URL}\">PDF</a></td>\r\n        </tr>\r\n        <tr class=\"row1\">\r\n            <td><img width=\"16\" height=\"16\" alt=\"Arrow Right\" src=\"images/content/icons/arrow_right.gif\" /></td>\r\n            <td><a href=\"index.php?section=recommend\">Weiterempfehlen</a></td>\r\n        </tr>\r\n        <tr class=\"row2\">\r\n            <td><img width=\"16\" height=\"16\" alt=\"RSS\" src=\"images/content/icons/rss.gif\" /></td>\r\n            <td><a href=\"feed/news_headlines_de.xml\">RSS Abonnieren</a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n</div>', 'Newsmeldung', 'details', 'y', '206', 'off', 'system', '99', '1'),
('210', '8', '<font color=\"#ff0000\">{NEWS_STATUS_MESSAGE}&nbsp;</font> <!-- BEGIN news_submit_form -->\r\n<form method=\"post\" action=\"index.php?section=news&amp;cmd=submit\">\r\n    <h2>     {TXT_NEWS_MESSAGE}&nbsp;</h2>\r\n    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"2\" border=\"0\">\r\n        <tbody>\r\n            <tr>\r\n                <td width=\"20%\">{TXT_TITLE}</td>\r\n                <td width=\"80%\"><input type=\"text\" maxlength=\"250\" value=\"{NEWS_TITLE}\" name=\"newsTitle\" style=\"width: 250px;\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"20%\">{TXT_CATEGORY}</td>\r\n                <td width=\"80%\"><select name=\"newsCat\" style=\"width: 250px;\"><!-- BEGIN news_category_menu -->\r\n                <option value=\"{NEWS_CATEGORY_ID}\">{NEWS_CATEGORY_TITLE}</option>\r\n                <!-- END news_category_menu --></select></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"20%\">{TXT_EXTERNAL_SOURCE}</td>\r\n                <td width=\"80%\"><input type=\"text\" maxlength=\"250\" value=\"{NEWS_SOURCE}\" name=\"newsSource\" style=\"width: 250px;\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"20%\">{TXT_LINK} #1</td>\r\n                <td width=\"80%\"><input type=\"text\" maxlength=\"250\" value=\"{NEWS_URL1}\" name=\"newsUrl1\" style=\"width: 250px;\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"20%\">{TXT_LINK} #2</td>\r\n                <td width=\"80%\"><input type=\"text\" maxlength=\"250\" value=\"{NEWS_URL2}\" name=\"newsUrl2\" style=\"width: 250px;\" /></td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n    <br />\r\n    <h2>{TXT_NEWS_TEASER_TEXT}&nbsp;</h2>\r\n    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"3\" border=\"0\">\r\n        <tbody>\r\n            <tr>\r\n                <td colspan=\"2\"><textarea name=\"newsTeaserText\" style=\"width: 100%;\" cols=\"30\" rows=\"5\">{NEWS_TEASER_TEXT}</textarea></td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n    <br />\r\n    <h2> {TXT_NEWS_NEWS_CONTENT}&nbsp;</h2>\r\n    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"3\" border=\"0\">\r\n        <tbody>\r\n            <tr>\r\n                <td colspan=\"2\">{TXT_NEWS_REDIRECT}</td>\r\n            </tr>\r\n            <tr>\r\n                <td>{TXT_NEWS_NEWS_URL}</td>\r\n                <td><input type=\"text\" style=\"width: 250px;\" value=\"{NEWS_REDIRECT}\" name=\"newsRedirect\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td colspan=\"2\">{NEWS_TEXT}</td>\r\n            </tr>\r\n            <tr>\r\n                <td colspan=\"2\"><input type=\"reset\" onclick=\"FCKeditorAPI.GetInstance(\'newsText\').SetHTML(\'\')\" /> <input type=\"submit\" name=\"submitNews\" value=\"Anmelden\" /></td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n</form>\r\n<!-- END news_submit_form --> <!-- BEGIN news_submitted --> <a title=\"weitere Newsmeldung hinzuf&uuml;gen\" href=\"index.php?section=news&amp;cmd=submit\">Klicken Sie hier um eine weitere Newsmeldung zu erfassen.</a> <!-- END news_submitted -->', 'Newsanmelden', 'submit', 'n', '206', 'off', 'system', '99', '1'),
('211', '21', '{CALENDAR_JAVASCRIPT}\r\n<div id=\"calendar\">\r\n	<div class=\"search\">\r\n		<form id=\"searchform\" method=\"post\" action=\"index.php?section=calendar&amp;act=search\">\r\n		<table cellspacing=\"0\">\r\n			<tbody>\r\n				<tr>\r\n					<th colspan=\"4\">Kalender Suche</th>\r\n				</tr>\r\n				<tr class=\"row1\">\r\n					<td width=\"12%\">{TXT_CALENDAR_FROM}:&nbsp;</td>\r\n					<td width=\"18%\"><input type=\"text\" style=\"width: 80px;\" value=\"{CALENDAR_DATEPICKER_START}\" id=\"DPC_edit1_YYYY-MM-DD\" name=\"startDate\" /></td>\r\n					<td width=\"15%\">{TXT_CALENDAR_KEYWORD}:&nbsp;</td>\r\n					<td width=\"55%\"><input type=\"text\" value=\"{CALENDAR_SEARCHED_KEYWORD}\" name=\"keyword\" /></td>\r\n				</tr>\r\n				<tr class=\"row2\">\r\n					<td>{TXT_CALENDAR_TILL}:&nbsp;</td>\r\n					<td><input type=\"text\" value=\"{CALENDAR_DATEPICKER_END}\" style=\"width: 80px;\" id=\"DPC_edit2_YYYY-MM-DD\" name=\"endDate\" /></td>\r\n					<td>&nbsp;</td>\r\n					<td ><input type=\"submit\" value=\"{TXT_CALENDAR_SEARCH}\" /></td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</form>\r\n	</div>\r\n	<div class=\"notes_list\">\r\n		<table cellspacing=\"0\">\r\n			<tbody> \r\n				<tr>\r\n					<th>Datum</td>\r\n					<th>&nbsp;</td>\r\n					<th>Veranstaltung</td>\r\n				</tr>\r\n				<!-- BEGIN event -->\r\n				<tr class=\"{CALENDAR_ROW}\">\r\n					<td width=\"12%\" align=\"left\" valign=\"top\">{CALENDAR_START_SHOW}&nbsp;{CALENDAR_STARTTIME}</td>\r\n                    <td width=\"3%\" align=\"center\" valign=\"top\">{CALENDAR_PRIORITY_IMG}&nbsp;</td>\r\n					<td width=\"85%\" valign=\"top\"><a href=\"index.php?section=calendar&amp;cmd=event&amp;id={CALENDAR_ID}\">{CALENDAR_TITLE}</a><br /><font size=\"-2\">Ort: {CALENDAR_PLACE}</font></td>\r\n				</tr>\r\n				<!-- END event -->\r\n			</tbody>\r\n		</table>\r\n        <!-- BEGIN noevents -->\r\n        <br />\r\n		<i>{TXT_CALENDAR_NO_EVENTS}</i>	\r\n		<!-- END noevents -->\r\n	</div>\r\n</div>', 'Kalender', '', 'y', '0', 'on', 'system', '1', '1'),
('212', '21', '{CALENDAR_JAVASCRIPT}\r\n<div id=\"calendar\">\r\n    <div class=\"categories\">{CALENDAR_CATEGORIES}</div>\r\n	<div class=\"notes_list\">\r\n		<table cellspacing=\"0\">\r\n			<tbody> \r\n				<tr>\r\n					<th width=\"12%\" align=\"left\">Datum</th>\r\n					<th width=\"3%\" align=\"left\">&nbsp;</th>\r\n					<th width=\"85%\" align=\"left\">Veranstaltung</th>\r\n				</tr>\r\n				<!-- BEGIN event -->\r\n				<tr class=\"{CALENDAR_ROW}\">\r\n					<td align=\"left\" valign=\"top\">{CALENDAR_START_SHOW}&nbsp;{CALENDAR_STARTTIME}</td>\r\n                    <td align=\"center\" valign=\"top\">{CALENDAR_PRIORITY_IMG}&nbsp;</td>\r\n					<td valign=\"top\"><a href=\"index.php?section=calendar&amp;cmd=event&amp;id={CALENDAR_ID}\">{CALENDAR_TITLE}</a><br /><font size=\"-2\">Ort: {CALENDAR_PLACE}</font></td>\r\n				</tr>\r\n				<!-- END event -->\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<div class=\"export\">{CALENDAR_ICAL_EXPORT_IMG}</div>\r\n</div>', 'Auflistung aller Events', 'eventlist', 'y', '211', 'on', 'system', '0', '1'),
('213', '21', '<!-- START calendar_show.html --> \r\n{CALENDAR_JAVASCRIPT}  \r\n<!-- BEGIN boxes -->\r\n<div style=\"margin: auto; width: 200px;\">{CALENDAR_CATEGORIES}<br />{CALENDAR}</div>\r\n<!-- END boxes -->  \r\n<!-- BEGIN list -->\r\n<div id=\"calendar\">\r\n    <div class=\"categories\">{CALENDAR_CATEGORIES}</div>\r\n	<div class=\"notes_list\">\r\n		<table cellspacing=\"0\">\r\n			<tbody> \r\n				<tr>\r\n					<th width=\"12%\" align=\"left\">Datum</th>\r\n					<th width=\"3%\" align=\"left\">&nbsp;</th>\r\n					<th width=\"85%\" align=\"left\">Veranstaltung</th>\r\n				</tr>\r\n				<!-- BEGIN event -->\r\n				<tr class=\"{CALENDAR_ROW}\">\r\n					<td align=\"left\" valign=\"top\">{CALENDAR_START_SHOW}&nbsp;{CALENDAR_STARTTIME}</td>\r\n                    <td align=\"center\" valign=\"top\">{CALENDAR_PRIORITY_IMG}&nbsp;</td>\r\n					<td valign=\"top\"><a href=\"index.php?section=calendar&amp;cmd=event&amp;id={CALENDAR_ID}\">{CALENDAR_TITLE}</a><br /><font size=\"-2\">Ort: {CALENDAR_PLACE}</font></td>\r\n				</tr>\r\n				<!-- END event -->\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<div class=\"export\">{CALENDAR_ICAL_EXPORT_IMG}</div>\r\n</div>\r\n<!-- END list --> \r\n<!-- END calendar_show.html -->', 'Quartalsübersicht', 'boxes', 'y', '211', 'on', 'system', '1', '1'),
('214', '21', '<!-- BEGIN signForm -->\r\n{CALENDAR_FIELD_JS}\r\n<form name=\"signForm\" id=\"signForm\" onsubmit=\"return checkFields();\" method=\"post\" action=\"index.php?section=calendar&amp;cmd=sign\">\r\n<input type=\"hidden\" name=\"id\" value=\"{CALENDAR_NOTE_ID}\" />\r\n<input type=\"hidden\" name=\"userid\" value=\"{CALENDAR_USER_ID}\" />\r\n    <table border=\"0\">\r\n        <tbody>\r\n            <tr>\r\n                <td style=\"width: 120px;\">An- \\ Abmeldung</td>\r\n                <td><input type=\"radio\" name=\"type\" value=\"1\" checked=\"checked\" />&nbsp;Anmeldung&nbsp;&nbsp;&nbsp;<input type=\"radio\" name=\"type\" value=\"0\" />&nbsp;Abmeldung</td>\r\n            </tr>\r\n            <!-- BEGIN calendarRegFields -->\r\n            <tr>\r\n                <td>{CALENDAR_FIELD_NAME}</td>\r\n                <td>{CALENDAR_FIELD_INPUT}</td>\r\n            </tr>\r\n            <!-- END calendarRegFields -->\r\n            <tr>\r\n                <td><br /></td>\r\n                <td><input type=\"submit\" name=\"submit\" value=\"Absenden\" /></td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n</form>\r\n<!-- END signForm -->\r\n<!-- BEGIN signStatus -->\r\n{CALENDAR_REGISTRATIONS_STATUS}<br />\r\n<br />\r\n<a href=\"index.php?section=calendar\">{TXT_CALENDAR_BACK}</a>\r\n<!-- END signStatus -->', 'An- \\ Abmelden', 'sign', 'y', '211', 'off', 'system', '99', '1'),
('215', '21', '<!-- START calendar_show_note.html -->\r\n<div id=\"calendar\">\r\n	<div class=\"logo\">{CALENDAR_PIC_THUMBNAIL}</div>\r\n	<div class=\"notes_list\">\r\n	<table cellspacing=\"0\">\r\n		<tbody> \r\n			<tr>\r\n				<th colspan=\"2\"><b>{CALENDAR_TITLE}&nbsp;</b></th>\r\n			</tr>\r\n			<tr class=\"row1\">\r\n				<td width=\"25%\" align=\"left\" valign=\"top\"><b>{TXT_CALENDAR_START}</b></td>\r\n				<td width=\"75%\" valign=\"top\">{CALENDAR_START_SHOW} - {CALENDAR_START_TIME}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row2\">\r\n				<td width=\"25%\" align=\"left\" valign=\"top\"><b>{TXT_CALENDAR_END}</b></td>\r\n				<td width=\"75%\" valign=\"top\">{CALENDAR_END_SHOW} - {CALENDAR_END_TIME}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row1\">\r\n				<td width=\"25%\" align=\"left\" valign=\"top\"><b>{TXT_CALENDAR_LINK}</b></td>\r\n				<td width=\"75%\" valign=\"top\">{CALENDAR_LINK}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row2\">\r\n				<td width=\"25%\" align=\"left\" valign=\"top\"><b>{TXT_CALENDAR_ATTACHMENT}</b></td>\r\n				<td width=\"75%\" valign=\"top\">{CALENDAR_ATTACHMENT}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row1\">\r\n				<td width=\"25%\" align=\"left\" valign=\"top\"><b>Export</b></td>\r\n				<td width=\"75%\" valign=\"top\">{CALENDAR_ICAL_EXPORT_IMG}&nbsp;</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	<br />\r\n	{CALENDAR_DESCRIPTION}&nbsp;\r\n	<br />\r\n	<br />\r\n	<!-- BEGIN calendarRegistration -->\r\n	<div class=\"registration\">{CALENDAR_REGISTRATION_LINK}</div>\r\n	<!-- END calendarRegistration -->\r\n	</div>\r\n	<div class=\"notes_list\">\r\n	<table cellspacing=\"0\">\r\n		<tbody> \r\n			<tr>\r\n				<th>{TXT_CALENDAR_PLACE}</h>\r\n			</tr>\r\n			<tr class=\"row1\">\r\n				<td valign=\"top\">{CALENDAR_PLACE}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row2\">\r\n				<td valign=\"top\">{CALENDAR_PLACE_STREET_NR}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row1\">\r\n				<td valign=\"top\">{CALENDAR_PLACE_ZIP} {CALENDAR_PLACE_CITY}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row2\">\r\n				<td valign=\"top\">{CALENDAR_PLACE_LINK}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row1\">\r\n				<td valign=\"top\">{CALENDAR_PLACE_MAP_LINK}&nbsp;</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</div>\r\n	<div class=\"notes_list\">\r\n	<table cellspacing=\"0\">\r\n		<tbody> \r\n			<tr>\r\n				<th>{TXT_CALENDAR_ORGANIZER}</th>\r\n			</tr>\r\n			<tr class=\"row1\">\r\n				<td valign=\"top\">{CALENDAR_ORGANIZER}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row2\">\r\n				<td valign=\"top\">{CALENDAR_ORGANIZER_STREET_NR}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row1\">\r\n				<td valign=\"top\">{CALENDAR_ORGANIZER_ZIP} {CALENDAR_ORGANIZER_PLACE}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row2\">\r\n				<td valign=\"top\">{CALENDAR_ORGANIZER_LINK}&nbsp;</td>\r\n			</tr>\r\n			<tr class=\"row1\">\r\n				<td valign=\"top\">{CALENDAR_ORGANIZER_MAIL}&nbsp;</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</div>\r\n</div>\r\n<div class=\"back\"><a href=\"javascript:history.back()\">{TXT_CALENDAR_BACK}</a></div>\r\n\r\n<!-- END calendar_show_note.html -->\r\n', 'Veranstaltungs Information', 'event', 'y', '211', 'off', 'system', '99', '1'),
('216', '48', 'Diese Seite muss vorhanden und unsichtbar sein, damit das Datenlistenmodul funktioniert. Dieser Text wird nicht angezeigt.<br type=\"_moz\" />', 'Datenlisten Popup', '', 'y', '0', 'off', 'system', '1', '1'),
('217', '3', '<div id=\"gallery\"><!-- BEGIN galleryCategories -->\r\n<div class=\"category_tree\">Sie sind hier: {GALLERY_CATEGORY_TREE}</div>\r\n<!-- BEGIN galleryCategoryList -->\r\n<div class=\"category_row_{GALLERY_STYLE}\">\r\n<div class=\"category_image\">{GALLERY_CATEGORY_IMAGE}</div>\r\n<div class=\"category_informations\">\r\n<h2>{GALLERY_CATEGORY_NAME}</h2>\r\n{GALLERY_CATEGORY_DESCRIPTION}<br />\r\n<br />\r\n{GALLERY_CATEGORY_INFO}</div>\r\n</div>\r\n<!-- END galleryCategoryList --> 	<!-- CATEGORY END AND IMAGES START -->    	<!-- BEGIN galleryImageBlock -->  	{GALLERY_JAVASCRIPT}\r\n<div class=\"category_comment\">{GALLERY_CATEGORY_COMMENT}</div>\r\n<!-- BEGIN galleryShowImages -->\r\n<div class=\"category_images\">\r\n<div class=\"image\">{GALLERY_IMAGE1}<br />\r\n{GALLERY_IMAGE_LINK1}</div>\r\n<div class=\"image\">{GALLERY_IMAGE2}<br />\r\n{GALLERY_IMAGE_LINK2}</div>\r\n<div class=\"image\">{GALLERY_IMAGE3}<br />\r\n{GALLERY_IMAGE_LINK3}</div>\r\n</div>\r\n<!-- END galleryShowImages -->\r\n<div class=\"category_paging\">{GALLERY_PAGING}</div>\r\n<!-- END galleryImageBlock -->  	<!-- END galleryCategories -->   	<!-- BEGIN galleryImage -->\r\n<div class=\"category_tree\">Sie sind hier: {GALLERY_CATEGORY_TREE}</div>\r\n<div class=\"show_image\"><img border=\"0\" style=\"margin-top: 2px;\" src=\"{GALLERY_IMAGE_PATH}\" id=\"image\" alt=\"\" /><br />\r\n{GALLERY_IMAGE_TITLE} ({GALLERY_IMAGE_FILESIZE})<br />\r\n{GALLERY_IMAGE_DESCRIPTION}</div>\r\n<div class=\"image_navigation\"><a title=\"{TXT_GALLERY__PREVIOUS_IMAGE}\" href=\"{GALLERY_IMAGE_PREVIOUS}\"><img alt=\"{TXT_GALLERY__PREVIOUS_IMAGE}\" style=\"border: 0px none ; margin-left: 10px; margin-right: 5px; width: 18px; height: 18px;\" src=\"images/modules/gallery/previous.gif\" /></a>&nbsp; 		<a title=\"{TXT_GALLERY__NEXT_IMAGE}\" href=\"{GALLERY_IMAGE_NEXT}\"><img alt=\"{TXT_GALLERY__NEXT_IMAGE}\" style=\"border: 0px none ; margin-left: 5px; margin-right: 10px; width: 18px; height: 18px;\" src=\"images/modules/gallery/next.gif\" /></a></div>\r\n<div class=\"image_voting\"><!-- BEGIN votingTab -->\r\n<table>\r\n    <tbody>\r\n        <tr>\r\n            <th><a href=\"javascript:showOrHide(\'votingDiv\');\">{TXT_VOTING_TITLE}</a></th>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<div id=\"votingDiv\" style=\"width: 100%; display: none; text-align: center;\">\r\n<table>\r\n    <tbody>\r\n        <tr>\r\n            <td><!-- BEGIN showVotingBar --> 						<a href=\"index.php?section=gallery&amp;cid={VOTING_BAR_CID}&amp;pId={VOTING_BAR_PICID}&amp;mark={VOTING_BAR_MARK}\" title=\"{VOTING_BAR_ALT}\"><img align=\"bottom\" src=\"{VOTING_BAR_SRC}\" alt=\"{VOTING_BAR_ALT}\" style=\"border: 0px none ; margin-left: 1px; margin-top: 3px;\" /></a> 												<!-- END showVotingBar --> 						<br />\r\n            {TXT_VOTING_ALREADY_VOTED}&nbsp;<strong>{VOTING_ALREADY_VOTED_MARK}</strong> 						{TXT_VOTING_STATS_ACTUAL}:&nbsp;&Oslash;&nbsp;<strong>{VOTING_STATS_MARK}</strong>&nbsp;{TXT_VOTING_STATS_WITH}&nbsp;<strong>{VOTING_STATS_VOTES}</strong>&nbsp;{TXT_VOTING_STATS_VOTES} 					</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n<!-- END votingTab --></div>\r\n<div class=\"image_comment\"><!-- BEGIN commentTab -->\r\n<table>\r\n    <tbody>\r\n        <tr>\r\n            <th><a href=\"javascript:showOrHide(\'commentDiv\');\">{TXT_COMMENTS_TITLE}</a></th>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<div id=\"commentDiv\" style=\"width: 100%; display: none; text-align: left;\">\r\n<form method=\"post\" name=\"frmGalComAdd\" action=\"index.php?section=gallery&amp;pId={GALLERY_PICTURE_ID}\">\r\n    <input type=\"hidden\" name=\"frmGalComAdd_PicId\" value=\"{GALLERY_PICTURE_ID}\" /> 	 		<input type=\"hidden\" value=\"{GALLERY_CATEGORY_ID}\" name=\"frmGalComAdd_GalId\" />\r\n    <table>\r\n        <tbody>\r\n            <!-- BEGIN showComments -->\r\n            <tr class=\"row{COMMENTS_ROWCLASS}\">\r\n                <td width=\"20%\" valign=\"top\" nowrap=\"nowrap\"><strong>{COMMENTS_NAME}</strong><br />\r\n                <em>{COMMENTS_DATE}</em><br />\r\n                {COMMENTS_WWW}&nbsp;{COMMENTS_EMAIL} 					</td>\r\n                <td width=\"80%\" valign=\"top\" class=\"row_{COMMENTS_ROWCLASS}\">{COMMENTS_TEXT}</td>\r\n            </tr>\r\n            <!-- END showComments -->\r\n        </tbody>\r\n    </table>\r\n    <table>\r\n        <tbody>\r\n            <tr>\r\n                <th colspan=\"2\">{TXT_COMMENTS_ADD_TITLE}</th>\r\n            </tr>\r\n            <tr class=\"row1\">\r\n                <td width=\"20%\" nowrap=\"nowrap\" align=\"left\" class=\"row1\"><strong>{TXT_COMMENTS_ADD_NAME}:</strong></td>\r\n                <td width=\"80%\" align=\"left\" class=\"row1\"><input type=\"text\" name=\"frmGalComAdd_Name\" style=\"width: 400px;\" /></td>\r\n            </tr>\r\n            <tr class=\"row2\">\r\n                <td nowrap=\"nowrap\" align=\"left\" class=\"row2\"><strong>{TXT_COMMENTS_ADD_EMAIL}:</strong></td>\r\n                <td align=\"left\" class=\"row2\"><input type=\"text\" name=\"frmGalComAdd_Email\" style=\"width: 400px;\" /></td>\r\n            </tr>\r\n            <tr class=\"row1\">\r\n                <td nowrap=\"nowrap\" align=\"left\" class=\"row1\"><strong>{TXT_COMMENTS_ADD_HOMEPAGE}:</strong></td>\r\n                <td align=\"left\" class=\"row1\"><input type=\"text\" name=\"frmGalComAdd_Homepage\" value=\"http://\" style=\"width: 400px;\" /></td>\r\n            </tr>\r\n            <tr class=\"row2\">\r\n                <td valign=\"top\" nowrap=\"nowrap\" align=\"left\" class=\"row2\"><strong>{TXT_COMMENTS_ADD_TEXT}:</strong></td>\r\n                <td align=\"left\" class=\"row2\"><textarea name=\"frmGalComAdd_Text\" cols=\"20\" rows=\"5\" style=\"width: 400px; height: 80px;\"></textarea></td>\r\n            </tr>\r\n            <tr class=\"row1\">\r\n                <td class=\"row1\">&nbsp;</td>\r\n                <td class=\"row1\">\r\n                <div align=\"left\"><input type=\"submit\" name=\"frmGalComAdd_Submit\" value=\"{TXT_COMMENTS_ADD_SUBMIT}\" /></div>\r\n                </td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n</form>\r\n</div>\r\n<!-- END commentTab --></div>\r\n<script language=\"javascript\" type=\"text/javascript\">\r\n	<!-- \r\n	// show and hide blocks\r\n	function showOrHide(strElement)\r\n	{\r\n		if (document.getElementById(strElement).style.display == \'block\'){\r\n			document.getElementById(strElement).style.display = \'none\';\r\n		} else {\r\n			document.getElementById(strElement).style.display = \'block\';\r\n		}\r\n	}\r\n	//-->\r\n	</script>  	<!-- END galleryImage --></div>', 'Bildergalerie', '', 'y', '0', 'on', 'system', '2', '1'),
('218', '31', '<!-- START memberdir -->\r\n<div id=\"memberdir\">\r\n	<div class=\"category_tree\"><!-- BEGIN tree --><a title=\"{TXT_OVERVIEW}\" href=\"index.php?section=memberdir\">{TXT_OVERVIEW}</a> <!-- BEGIN tree-element -->&gt; <a title=\"{MEMBERDIR_DIRNAME}\" href=\"index.php?section=memberdir&amp;id={MEMBERDIR_DIRID}\">{MEMBERDIR_DIRNAME}</a><!-- END tree-element --><!-- END tree --></div>\r\n	<div class=\"description\">{MEMBERDIR_DESCRIPTION}</div>\r\n	\r\n	<!-- BEGIN category_list -->\r\n	<script type=\"text/javascript\">\r\n	/* <![CDATA[ */\r\n		function openSubDir(obj) {\r\n			var id = obj.id.substr(10);\r\n			document.getElementById(\"block_\" + id).style.display = \"block\";\r\n			obj.src = \"cadmin/images/icons/minuslink.gif\";\r\n			obj.onclick = function() {closeSubDir(this)};\r\n		}\r\n		\r\n		function closeSubDir(obj) {\r\n			var id = obj.id.substr(10);\r\n			document.getElementById(\"block_\" + id).style.display = \"none\";\r\n			obj.src = \"cadmin/images/icons/pluslink.gif\";\r\n			obj.onclick = function() {openSubDir(this)};\r\n		}\r\n	/* ]]> */\r\n	</script>\r\n	<div class=\"subcategories\">\r\n		{TXT_CATEGORY_TREE_DESC}\r\n		<!-- BEGIN category -->\r\n		<!-- BEGIN div-block-beginning -->\r\n		<div id=\"block_{MEMBERDIR_PARENT_ID}\" style=\"display: none; padding-left: {MEMBERDIR_PADDING_LEFT}px;\">\r\n		<!-- END div-block-beginning -->\r\n			<div class=\"directory\">\r\n				<img id=\"memberdir_{MEMBERDIR_DIR_ID}\" style=\"border: none; width: 11px; height: 11px;\" onclick=\"openSubDir(this);\" alt=\"Open subdir\" src=\"cadmin/images/icons/{MEMBERDIR_IMAGE_SRC}\" /> <a title=\"{MEMBERDIR_DIR_NAME}\" href=\"index.php?section=memberdir&amp;id={MEMBERDIR_DIR_ID}\">{MEMBERDIR_DIR_NAME}</a>\r\n			</div>\r\n			<!-- BEGIN div-block-ending -->\r\n		</div>\r\n		<!-- END div-block-ending -->\r\n		<!-- END category -->\r\n	</div>\r\n	<!-- END category_list -->\r\n	\r\n	<!-- BEGIN category_show -->\r\n	<div class=\"char_list\">{MEMBERDIR_CHAR_LIST}</div>\r\n	<div class=\"search_form\">\r\n		<form action=\"index.php?section=memberdir\" method=\"get\">\r\n			<input type=\"hidden\" name=\"search\" value=\"search\" /> <input type=\"hidden\" name=\"section\" value=\"memberdir\" /> <input onclick=\"this.value=\'\'\" name=\"keyword\" value=\"{MEMBERDIR_KEYWORD}\" /> {MEMBERDIR_DROPDOWN} <input type=\"submit\" value=\"{MEMBERDIR_SEARCH}\" />\r\n		</form>\r\n	</div>\r\n	<div class=\"adress_list\">\r\n		<table cellspacing=\"0\">\r\n			<tbody>\r\n				<tr>\r\n					<th>Name</th>\r\n					<th>Adresse</th>\r\n				</tr>\r\n				<!-- BEGIN memberdir_row -->\r\n				<tr class=\"row{MEMBERDIR_ROW}\">\r\n					<td valign=\"top\"><a title=\"{FIELD_NAME} {FIELD_VORNAME}\" href=\"index.php?section=memberdir&amp;mid={MEMBERDIR_ID}\"><strong>{FIELD_NAME} {FIELD_VORNAME}</strong></a></td>\r\n					<td valign=\"top\">{FIELD_ADRESSE}<br />{FIELD_PLZ} {FIELD_ORT}</td>\r\n				</tr>\r\n				<!-- END memberdir_row -->\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<div class=\"paging\">{MEMBERDIR_PAGING}</div>\r\n	<!-- END category_show -->\r\n	\r\n	<!-- BEGIN memberdir_detail_view -->\r\n	<div class=\"detail_list\">\r\n		<table cellspacing=\"0\">\r\n			<tbody>\r\n				<tr class=\"row1\">\r\n					<td valign=\"top\" width=\"50%\">{MEMBERDIR_PIC1}<br /></td>\r\n					<td  valign=\"top\" width=\"50%\">{MEMBERDIR_PIC2}<br /></td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n		<table cellspacing=\"0\">\r\n			<tbody>\r\n				<tr>\r\n					<th>Personalien</th>\r\n					<th><br /></th>\r\n				</tr>\r\n				<!-- BEGIN row -->\r\n				<tr class=\"row1\">\r\n					<td valign=\"top\" width=\"150\"><strong>{MEMBERDIR_FIELD_NAME}:</strong></td>\r\n					<td  valign=\"top\">{MEMBERDIR_FIELD_VALUE}</td>\r\n				</tr>\r\n				<!-- END row -->\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<div class=\"back\"><a title=\"Zur&uuml;ck\" href=\"javascript:history.back();\">Zur&uuml;ck</a> </div>\r\n	<!-- END memberdir_detail_view -->\r\n</div>\r\n<!-- END memberdir -->', 'Adressverzeichnis', '', 'y', '0', 'off', 'system', '99', '1'),
('324', '9', '{MEDIA_JAVASCRIPT}\r\n<table cellspacing=\"0\" id=\"media\">\r\n  <tbody>\r\n    <tr>\r\n      <th width=\"16\" style=\"text-align: center;\"><strong>#</strong></th>\r\n      <th colspan=\"2\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_NAME_HREF}\">{TXT_MEDIA_FILE_NAME}</a>&nbsp;{MEDIA_NAME_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_SIZE_HREF}\" name=\"sort_size\">{TXT_MEDIA_FILE_SIZE}</a>&nbsp;{MEDIA_SIZE_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_TYPE_HREF}\" name=\"sort_type\">{TXT_MEDIA_FILE_TYPE}</a>&nbsp;{MEDIA_TYPE_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_DATE_HREF}\" name=\"sort_date\">{TXT_MEDIA_FILE_DATE}</a>&nbsp;{MEDIA_DATE_ICON}</th>\r\n    </tr>\r\n    <tr class=\"row2\">\r\n      <td width=\"16\" align=\"center\"><img height=\"16\" width=\"16\" title=\"base\" alt=\"base\" src=\"images/modules/media/_base.gif\" /></td>\r\n      <td colspan=\"5\">\r\n        <a title=\"{MEDIA_TREE_NAV_MAIN}\" href=\"{MEDIA_TREE_NAV_MAIN_HREF}\">{MEDIA_TREE_NAV_MAIN}</a> \r\n        <!-- BEGIN mediaTreeNavigation -->\r\n        <a href=\"{MEDIA_TREE_NAV_DIR_HREF}\">&nbsp;{MEDIA_TREE_NAV_DIR} /</a> \r\n        <!-- END mediaTreeNavigation -->\r\n      </td>\r\n    </tr>\r\n    <!-- BEGIN mediaDirectoryTree -->\r\n    <tr class=\"{MEDIA_DIR_TREE_ROW}\">\r\n      <td width=\"16\">&nbsp;</td>\r\n      <td width=\"16\" align=\"center\"><img height=\"16\" width=\"16\" title=\"icon\" alt=\"icon\" src=\"{MEDIA_FILE_ICON}\" /></td>\r\n      <td width=\"100%\"><a title=\"{MEDIA_FILE_NAME}\" href=\"{MEDIA_FILE_NAME_HREF}\">{MEDIA_FILE_NAME}</a></td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_SIZE}</td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_TYPE}</td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_DATE}</td>\r\n    </tr>\r\n    <!-- END mediaDirectoryTree -->\r\n    <!-- BEGIN mediaEmptyDirectory -->\r\n    <tr class=\"row1\">\r\n      <td>&nbsp;</td>\r\n      <td colspan=\"5\">{TXT_MEDIA_DIR_EMPTY}</td>\r\n    </tr>\r\n    <!-- END mediaEmptyDirectory -->\r\n  </tbody>\r\n</table>\r\n', 'Download Archiv 1', '', 'y', '0', 'on', 'system', '5', '1'),
('220', '10', '<div id=\"guestbook\">\r\n	<div class=\"count_entries\">{GUESTBOOK_TOTAL_ENTRIES} Eintr&auml;ge im G&auml;stebuch.</div>\r\n	<div class=\"add_entry\"><input type=\"button\" onClick=\"location.href=\'index.php?section=guestbook&amp;cmd=post\'\" value=\"Eintragen\" /></div>\r\n	<div class=\"entries\">\r\n		 <!-- BEGIN guestbook_row -->\r\n		 	<div class=\"entry_{GUESTBOOK_ROWCLASS}\">\r\n				<div class=\"title\"><h3>{GUESTBOOK_NICK}</h3></div>\r\n				<div class=\"location\">{GUESTBOOK_GENDER} {GUESTBOOK_LOCATION}</div>\r\n				<div class=\"date\">{GUESTBOOK_DATE}</div>\r\n				<div class=\"message\">{GUESTBOOK_COMMENT}</div>\r\n				<div class=\"links\">{GUESTBOOK_EMAIL} {GUESTBOOK_URL}</div>\r\n			</div>\r\n		 <!-- END guestbook_row -->\r\n	</div>\r\n	<div class=\"paging\">{GUESTBOOK_PAGING}</div>\r\n</div>', 'Gästebuch', '', 'y', '0', 'on', 'system', '5', '1'),
('221', '10', '<div id=\"guestbook\">\r\n	<!-- BEGIN guestbookForm -->\r\n	<div class=\"error_message\">{ERROR}</div>\r\n	<div class=\"information\">Sie k&ouml;nnen sich hier ins G&auml;stebuch eintragen.<br />Damit der Eintrag klappt, sollten mindestens alle mit einem <font color=\"red\">*</font>  markierten Felder ausgef&uuml;llt werden.</div>\r\n	<div class=\"form\">\r\n		<form method=\"post\" action=\"index.php?section=guestbook&amp;cmd=post\" name=\"GuestbookForm\">\r\n			<p><label for=\"nickname\">Name<font color=\"red\"> *</font></label><input type=\"text\" value=\"{NICKNAME}\" id=\"nickname\" name=\"nickname\" maxlength=\"255\" /></p>\r\n			<p><label for=\"comment\">Kommentar<font color=\"red\"> *</font></label><textarea cols=\"1\" rows=\"1\" id=\"comment\" name=\"comment\">{COMMENT}</textarea></p>\r\n			<p><label>Geschlecht</label><input type=\"radio\" id=\"female\" name=\"malefemale\" value=\"F\" {FEMALE_CHECKED}/><label class=\"description\" for=\"female\">Weiblich</label></p>\r\n			<p><input type=\"radio\" id=\"male\" name=\"malefemale\" value=\"M\" {MALE_CHECKED}/><label class=\"description\" for=\"male\"> M&auml;nnlich</label></p>\r\n			<p><label for=\"location\">Wohnort</label><input type=\"text\" value=\"{LOCATION}\" id=\"location\" name=\"location\" maxlength=\"255\" /></p>\r\n			<p><label for=\"email\">E-Mail<font color=\"red\"> *</font></label><input type=\"text\" value=\"{EMAIL}\" id=\"email\" name=\"email\" maxlength=\"255\" /></p>\r\n			<p><label for=\"url\">Homepage</label><input type=\"text\" maxlength=\"255\" value=\"{HOMEPAGE}\" id=\"url\" name=\"url\"/></p>\r\n			<p><label for=\"captcha\">Captcha</label><img title=\"{IMAGE_ALT}\" alt=\"{IMAGE_ALT}\" src=\"{IMAGE_URL}\" /><br /><br />{TXT_CAPTCHA} - Um maschinelle und automatische &uuml;bertragung von Spamkommentaren zu verhinden, bitte die Zeichenfolge im dargestellten Bild in der Eingabemaske eintragen. Nur wenn die Zeichenfolge richtig eingegeben wurde, kann der Kommentar angenommen werden.<br /><br /><input type=\"text\" id=\"captcha\" name=\"captcha\" /><input type=\"hidden\" value=\"{CAPTCHA_OFFSET}\" name=\"offset\" /> </p>\r\n			<p><input type=\"reset\" name=\"Submit\" value=\"&nbsp;Reset&nbsp;\" />&nbsp;&nbsp; <input type=\"submit\" name=\"save\" value=\"&nbsp;Speichern&nbsp;\" /></p>\r\n		</form>\r\n	</div>\r\n	<!-- END guestbookForm -->\r\n	<!-- BEGIN guestbookStatus -->\r\n	{GUESTBOOK_STATUS}<br />\r\n	<br />\r\n	<a href=\"index.php?section=guestbook\">zurück zum Gästebuch</a>\r\n	<!-- END guestbookStatus -->\r\n</div>', 'Eintragen', 'post', 'y', '220', 'on', 'system', '0', '1'),
('226', '22', '<div id=\"feed\">\r\n	{FEED_NO_NEWSFEED}\r\n	<!-- BEGIN feed_table -->\r\n	<!-- BEGIN feed_cat -->\r\n	<div class=\"categories\">\r\n		<table cellspacing=\"0\">\r\n			<tr>\r\n				<th>{FEED_CAT_NAME}</th>\r\n			</tr>\r\n			<!-- BEGIN feed_news -->\r\n			<tr>\r\n				<td><a href=\"{FEED_NEWS_LINK}\">{FEED_NEWS_NAME}</a></td>\r\n			</tr>\r\n			 <!-- END feed_news -->\r\n		</table>\r\n	</div>\r\n	<!-- END feed_cat -->\r\n	<!-- BEGIN feed_show_news -->\r\n	<div class=\"news\">\r\n		<h2>{FEED_TITLE}</h2>\r\n		{FEED_IMAGE}\r\n		<ul>  \r\n			<!-- BEGIN feed_output_news -->      \r\n			<li><a href=\"{FEED_LINK}\" target=\"_blank\">{FEED_NAME}</a></li>     \r\n			<!-- END feed_output_news --> \r\n		</ul>\r\n		<br />\r\n		{TXT_FEED_LAST_UPTDATE}: {FEED_TIME}\r\n		<!-- END feed_show_news -->\r\n	</div>\r\n	<!-- END feed_table -->\r\n</div>', 'RSS Feed Verzeichnis', '', 'y', '0', 'on', 'system', '6', '1'),
('227', '22', '{NEWSML_TITLE}<br /><br /><div style=\"float:left;margin-right:10px;\">{NEWSML_IMAGE}</div>{NEWSML_TEXT}<br /> <a href=\"javascript:window.history.back();\">zur&uuml;ck</a>', 'Newsmeldung', 'newsML', 'y', '226', 'off', 'system', '99', '1'),
('233', '18', '<form method=\"post\" action=\"index.php?section=login\" name=\"loginForm\">\r\n    <input type=\"hidden\" value=\"{LOGIN_REDIRECT}\" name=\"redirect\" />\r\n    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"2\" border=\"0\">\r\n        <tbody>\r\n            <tr>\r\n                <td width=\"30%\" nowrap=\"nowrap\">{TXT_USER_NAME}:</td>\r\n                <td width=\"40%\"><input type=\"\" name=\"USERNAME\" value=\"\" size=\"30\" /></td>\r\n                <td width=\"30%\" rowspan=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;<img width=\"20\" height=\"28\" align=\"middle\" src=\"images/modules/login/login_key.gif\" alt=\"\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"30%\" nowrap=\"nowrap\" rowspan=\"3\" style=\"vertical-align: top;\">{TXT_PASSWORD}:</td>\r\n                <td width=\"40%\"><input type=\"password\" name=\"PASSWORD\" value=\"\" size=\"30\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"40%\"><input type=\"submit\" name=\"login\" value=\"{TXT_LOGIN}\" size=\"15\" class=\"input\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"40%\" colspan=\"2\"><a title=\"{TXT_LOST_PASSWORD}\" href=\"index.php?section=login&amp;cmd=lostpw\">{TXT_PASSWORD_LOST}</a></td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"color: rgb(255, 0, 0); font-weight: bold;\" colspan=\"3\"><br />\r\n                {LOGIN_STATUS_MESSAGE}</td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n</form>', 'Login', '', 'n', '0', 'off', 'system', '999', '1'),
('234', '18', '<form action=\"index.php?section=login&amp;cmd=lostpw\" method=\"post\">\r\n    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"2\" border=\"0\" summary=\"lost password form\">\r\n        <tbody>\r\n            <!-- BEGIN login_lost_password -->\r\n            <tr>\r\n                <td width=\"70%\" colspan=\"2\">{TXT_LOST_PASSWORD_TEXT}</td>\r\n                <td width=\"30%\" rowspan=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;<img width=\"32\" height=\"32\" align=\"middle\" alt=\"login key\" src=\"images/modules/login/lost_pw.gif\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"30%\" nowrap=\"nowrap\" style=\"vertical-align: top;\" rowspan=\"2\">{TXT_EMAIL}:</td>\r\n                <td width=\"40%\"><input type=\"text\" name=\"email\" size=\"30\" style=\"width: 100%;\" maxlength=\"255\" tabindex=\"1\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td><input type=\"submit\" value=\"{TXT_RESET_PASSWORD}\" name=\"restore_pw\" tabindex=\"2\" /></td>\r\n            </tr>\r\n            <!-- END login_lost_password -->\r\n            <tr>\r\n                <td style=\"color: rgb(255, 0, 0); font-weight: bold;\" colspan=\"3\"><br />\r\n                {LOGIN_STATUS_MESSAGE}</td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n</form>', 'Passwort vergessen?', 'lostpw', 'n', '233', 'off', 'system', '0', '1'),
('235', '18', '<img width=\"100\" height=\"100\" alt=\"\" src=\"images/modules/login/stop_hand.gif\" /><br />\r\n{TXT_NOT_ALLOWED_TO_ACCESS}<br />\r\nKlicken Sie <a href=\"index.php?section=login&amp;redirect={LOGIN_REDIRECT}&amp;relogin=true\" title=\"neu anmelden\">hier</a> um sich mit einem anderen Benutzerkonto anzumelden.', 'Zugriff verweigert', 'noaccess', 'n', '233', 'off', 'system', '0', '1'),
('236', '18', '<form action=\"index.php?section=login&amp;cmd=resetpw\" method=\"post\">\r\n    <input type=\"hidden\" value=\"{LOGIN_RESTORE_KEY}\" name=\"restore_key\" /> <input type=\"hidden\" value=\"{LOGIN_USERNAME}\" name=\"username\" />\r\n    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"2\" border=\"0\" summary=\"set new password form\">\r\n        <tbody>\r\n            <!-- BEGIN login_reset_password -->\r\n            <tr>\r\n                <td width=\"70%\" colspan=\"2\">{TXT_SET_PASSWORD_TEXT}</td>\r\n                <td width=\"30%\" rowspan=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;<img width=\"32\" height=\"32\" align=\"middle\" alt=\"login key\" src=\"images/modules/login/lost_pw.gif\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"30%\" nowrap=\"nowrap\">{TXT_USERNAME}</td>\r\n                <td width=\"40%\">{LOGIN_USERNAME}</td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"30%\" nowrap=\"nowrap\">{TXT_PASSWORD}&nbsp;{TXT_PASSWORD_MINIMAL_CHARACTERS}</td>\r\n                <td width=\"40%\"><input type=\"password\" name=\"password\" size=\"30\" maxlength=\"50\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td width=\"30%\" nowrap=\"nowrap\" style=\"vertical-align: top;\" rowspan=\"2\">{TXT_VERIFY_PASSWORD}</td>\r\n                <td width=\"40%\"><input type=\"password\" name=\"password2\" size=\"30\" maxlength=\"50\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td><input type=\"submit\" name=\"reset_password\" value=\"{TXT_SET_NEW_PASSWORD}\" /></td>\r\n            </tr>\r\n            <!-- END login_reset_password -->\r\n            <tr>\r\n                <td style=\"color: rgb(255, 0, 0); font-weight: bold;\" colspan=\"2\"><br />\r\n                {LOGIN_STATUS_MESSAGE}</td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n</form>', 'Neues Passwort setzen', 'resetpw', 'n', '233', 'off', 'system', '0', '1'),
('237', '14', '<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n    <tbody>\r\n        <tr>\r\n            <td scope=\"col\">\r\n            <h2><strong>Das gew&uuml;nschte Dokument existiert nicht an dieser Stelle oder ist deaktiviert<br />\r\n            </strong></h2>\r\n            <div align=\"left\">{ERROR_NUMBER} {ERROR_MESSAGE} <br />\r\n            <br />\r\n            Das von Ihnen gesuchte Dokument wurde m&ouml;glicherweise umbenannt, verschoben oder gel&ouml;scht. Es existieren mehrere M&ouml;glichkeiten, um ein Dokument zu finden. Sie k&ouml;nnen auf die Homepage zur&uuml;ckkehren, das Dokument mit Stichworten suchen oder unsere Help Site konsultieren. Um von der letztbesuchten Seite aus weiterzufahren, klicken Sie bitte auf die Schaltfl&auml;che \'Zur&uuml;ck\' Ihres Browsers. <br />\r\n            <br />\r\n            The document you requested does not exist at this location.<br />\r\n            The document you are looking for may have been renamed, moved or deleted. There are several ways to locate a document. You can return to the Homepage, search for the document using keywords or consult our Help Site. To continue on from the last page you visited, please press the \'Back\' button of your browser.</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'Fehlermeldung', '', 'n', '0', 'off', 'system', '999', '1'),
('239', '5', '<form action=\"index.php\" method=\"get\">\r\n	<input name=\"term\" value=\"{SEARCH_TERM}\" size=\"30\" maxlength=\"100\" class=\"searchinput\" />\r\n	<input value=\"search\" name=\"section\" type=\"hidden\" />\r\n	<input value=\"{TXT_SEARCH}\" name=\"Submit\" type=\"submit\" class=\"searchbutton\" />\r\n</form>\r\n<br />\r\n{SEARCH_TITLE}<br />\r\n<!-- BEGIN searchrow -->\r\n	{LINK} {COUNT_MATCH}<br />\r\n	{SHORT_CONTENT}<br />\r\n<!-- END searchrow -->\r\n<br />\r\n{SEARCH_PAGING}\r\n<br />\r\n<br />', 'Suchen', '', 'y', '0', 'off', 'system', '999', '1'),
('240', '13', '<p>Ihre Eingabe wurde vom <strong>Contrexx&reg; Angriffserkennungs System</strong> als unzul&auml;ssig erkannt. <br />\r\n<br />\r\nEinige besondere Zeichenfolgen werden vom Intrusion Detection System gefiltert und vom Intrusion Response System blockiert. Wenn Sie finden, dass diese Meldung unrechterweise erscheint, nehmen Sie doch bitte mit uns <a href=\"mailto:support%20AT%20comvation%20DOT%20com\">Kontakt</a> auf.<br />\r\n<br />\r\n<em><strong>Aktive Arbitrary Input Module:</strong></em></p>\r\n<ul>\r\n    <li>SQL Injection</li>\r\n    <li>Cross-Site Scripting</li>\r\n    <li>Session Hijacking</li>\r\n</ul>', 'Alert System', '', 'n', '0', 'off', 'system', '999', '1'),
('241', '46', '<h2>Haftung f&uuml;r Inhalte</h2>\r\n<p>Die Inhalte unserer Seiten wurden mit gr&ouml;&szlig;ter Sorgfalt erstellt. F&uuml;r die Richtigkeit, Vollst&auml;ndigkeit und Aktualit&auml;t der Inhalte k&ouml;nnen wir jedoch keine Gew&auml;hr &uuml;bernehmen.</p>\r\n<p>Als Diensteanbieter sind wir f&uuml;r eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Diensteanbieter sind jedoch nicht verpflichtet, die von ihnen &uuml;bermittelten oder gespeicherten fremden Informationen zu &uuml;berwachen oder nach Umst&auml;nden zu forschen, die auf eine rechtswidrige T&auml;tigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unber&uuml;hrt. Eine diesbez&uuml;gliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung m&ouml;glich. Bei bekannt werden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.</p>\r\n<h2><strong>Haftung f&uuml;r Links</strong></h2>\r\n<p>Unser Angebot enth&auml;lt Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb k&ouml;nnen wir f&uuml;r diese fremden Inhalte auch keine Gew&auml;hr &uuml;bernehmen. F&uuml;r die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf m&ouml;gliche Rechtsverst&ouml;&szlig;e &uuml;berpr&uuml;ft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei bekannt werden von Rechtsverletzungen werden wir derartige Links umgehend entfernen.</p>\r\n<h2><strong>Urheberrecht</strong></h2>\r\n<p>Die Betreiber der Seiten sind bem&uuml;ht, stets die Urheberrechte anderer zu beachten bzw. auf selbst erstellte sowie lizenzfreie Werke zur&uuml;ckzugreifen.</p>\r\n<p>Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Beitr&auml;ge Dritter sind als solche gekennzeichnet. Die Vervielf&auml;ltigung, Bearbeitung, Verbreitung und jede Art der Verwertung au&szlig;erhalb der Grenzen des Urheberrechtes bed&uuml;rfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur f&uuml;r den privaten, nicht kommerziellen Gebrauch gestattet.</p>\r\n<h2><strong>Datenschutz </strong></h2>\r\n<p>Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies soweit m&ouml;glich stets auf freiwilliger Basis. Die Nutzung der Angebote und Dienste ist, soweit m&ouml;glich, stets ohne Angabe personenbezogener Daten m&ouml;glich.</p>\r\n<p>Der Nutzung von im Rahmen der Impressumspflicht ver&ouml;ffentlichten Kontaktdaten durch Dritte zur &uuml;bersendung von nicht ausdr&uuml;cklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdr&uuml;cklich widersprochen. Die Betreiber der Seiten behalten sich ausdr&uuml;cklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor.</p>\r\n<p><br />\r\nQuelle: <a href=\"http://www.e-recht24.de/muster-disclaimer.htm\">Disclaimer</a> von eRecht24.de dem Informationsportal zum <a href=\"http://www.e-recht24.de/\">Internetrecht</a></p>', 'Datenschutz und Haftungshinweise', '', 'n', '0', 'off', 'system', '555', '1'),
('242', '44', '<p>Verantwortlich f&uuml;r Inhalt, Konzeption &amp; Realisierung des Onlineportals:</p><p><strong>Ihr Firmenname</strong><br />Strasse<br />PLZ Ort<br />Land</p>  <h2>Gew&auml;hrleistung</h2> Wir bem&uuml;hen uns um m&ouml;glichst korrekte und aktuelle Information. Trotzdem k&ouml;nnen Fehler auftreten. Die Inhalte wurden sorgf&auml;ltig erarbeitet. Dennoch &uuml;bernehmen Autoren und Herausgeber keine Gew&auml;hr und Haftung f&uuml;r die Richtigkeit, Zuverl&auml;ssigkeit, Vollst&auml;ndigkeit und Aktualit&auml;t der Information. Die Verwendung der Website und der darin enthaltenen Informationen erfolgt auf eigene Gefahr. &auml;nderungen k&ouml;nnen jederzeit vorgenommen werden.<br /><br /><h2>Web Content Management System (CMS)</h2> Dieser Internetauftritt basiert auf dem <a href=\"http://www.contrexx.com/\" target=\"_blank\">Contrexx&reg; WCMS</a>, welches von der <a href=\"http://www.comvation.com/\">COMVATION Internet Solutions</a> aus der Schweiz entwickelt wurde.<br type=\"_moz\" />', 'Impressum', '', 'n', '0', 'off', 'system', '555', '1'),
('243', '45', '<p><a href=\"http://de.wikipedia.org/wiki/Allgemeine_Gesch%C3%A4ftsbedingungen\">Allgemeine Gesch&auml;ftsbedingungen</a> (abgek&uuml;rzt &bdquo;AGB&ldquo;, nicht-standardsprachlich auch oft &bdquo;AGBs&ldquo;,&bdquo;AGB\'s&ldquo; oder &bdquo;AGBen&ldquo;) sind alle f&uuml;r eine Vielzahl von Vertr&auml;gen vorformulierten Vertragsbedingungen, die eine Vertragspartei (der Verwender) der anderen Vertragspartei bei Abschluss eines Vertrages stellt.</p>\r\n<p>Dabei ist es gleichg&uuml;ltig, ob die Bestimmung einen &auml;u&szlig;erlich gesonderten Bestandteil des Vertrags (umgangssprachlich &bdquo;das Kleingedruckte&ldquo; genannt) bilden oder in die Vertragsurkunde selbst aufgenommen werden.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Allgemeinen Geschäftsbedingungen', '', 'n', '0', 'off', 'system', '555', '1'),
('244', '16', '{SHOP_JAVASCRIPT_CODE}\r\n<div id=\"shop\">\r\n  <div class=\"menu\">{SHOP_MENU}</div>\r\n  <div class=\"cart_info\">{SHOP_CART_INFO}</div>\r\n  <!-- BEGIN subCategoriesRow -->\r\n  <div class=\"categories\">\r\n    <h2>Kategorien</h2>\r\n    <!-- BEGIN subCategories -->\r\n    <div class=\"category\">\r\n      <h3>{SHOP_PRODUCT_TITLE}</h3><a href=\"{SHOP_PRODUCT_DETAILLINK_IMAGE}\"><img border=\"0\" alt=\"{TXT_SEE_LARGE_PICTURE}\" src=\"{SHOP_PRODUCT_THUMBNAIL}\" /></a>\r\n    </div>\r\n    <!-- END subCategories -->\r\n  </div>\r\n  <!-- END subCategoriesRow -->\r\n  <div class=\"informations\"><h2>{TXT_PRODUCTS_IN_CATEGORY}&nbsp;{SHOP_CATEGORY_NAME}&nbsp;</h2></div>\r\n  <!-- BEGIN shopProductRow -->\r\n  <div class=\"product_{SHOP_ROWCLASS}\">\r\n    <form id=\"{SHOP_PRODUCT_FORM_NAME}\" name=\"{SHOP_PRODUCT_FORM_NAME}\" action=\"index.php?section=shop&amp;cmd=cart\" method=\"post\">\r\n      <input type=\"hidden\" name=\"productId\" value=\"{SHOP_PRODUCT_ID}\" />\r\n    <div class=\"images\">\r\n      <!-- BEGIN productImage1 -->\r\n      <a href=\"{SHOP_PRODUCT_THUMBNAIL_LINK_1}\"><img border=\"0\" src=\"{SHOP_PRODUCT_THUMBNAIL_1}\" alt=\"{TXT_SEE_LARGE_PICTURE}\" /></a><br />\r\n      <!-- END productImage1 -->\r\n      <!-- BEGIN productImage2 -->\r\n      <a href=\"{SHOP_PRODUCT_THUMBNAIL_LINK_2}\">Bild 2</a><br />\r\n      <!-- END productImage2 -->\r\n      <!-- BEGIN productImage3 -->\r\n      <a href=\"{SHOP_PRODUCT_THUMBNAIL_LINK_3}\">Bild 3</a><br />\r\n      <!-- END productImage3 -->\r\n    </div>\r\n    <div class=\"description\">\r\n      <h3>{SHOP_PRODUCT_TITLE}</h3>\r\n      {SHOP_PRODUCT_DESCRIPTION}<br /><br />\r\n      <div class=\"detail_link\">{SHOP_PRODUCT_DETAILLINK}</div>\r\n      <!-- BEGIN shopProductOptionsRow -->\r\n      <div class=\"shop_options\">{SHOP_PRODUCT_OPTIONS_TITLE}<br />\r\n        <div id=\"product_options_layer{SHOP_PRODUCT_ID}\" style=\"display: none;\">\r\n          <div class=\"shop_options_click\">\r\n            <br />\r\n            <!-- BEGIN shopProductOptionsValuesRow -->\r\n            <strong>{SHOP_PRODUCT_OPTIONS_NAME}:</strong><br />{SHOP_PRODCUT_OPTION}<br />\r\n            <!-- END shopProductOptionsValuesRow -->\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <!-- END shopProductOptionsRow -->\r\n      <br />\r\n      <!-- BEGIN shopProductWeight -->\r\n      <div>{TXT_SHOP_PRODUCT_WEIGHT} {SHOP_PRODUCT_WEIGHT}</div>\r\n      <!-- END shopProductWeight -->\r\n      <!-- BEGIN shopProductExternal -->\r\n      <div>{SHOP_EXTERNAL_LINK}</div>\r\n      <!-- END shopProductExternal -->\r\n    </div>\r\n    <br />\r\n    <div class=\"price\"><strong>Preis: {SHOP_PRODUCT_DISCOUNTPRICE} {SHOP_PRODUCT_DISCOUNTPRICE_UNIT}  {SHOP_PRODUCT_PRICE} {SHOP_PRODUCT_PRICE_UNIT}</strong><br />{SHOP_PRODUCT_TAX_PREFIX}&nbsp;{SHOP_PRODUCT_TAX}</div>\r\n    <div class=\"functions\"><input type=\"submit\" onclick=\"{SHOP_PRODUCT_SUBMIT_FUNCTION}\" name=\"{SHOP_PRODUCT_SUBMIT_NAME}\" value=\"{TXT_ADD_TO_CARD}\" /></div>\r\n    </form>\r\n  </div>\r\n  <!-- END shopProductRow -->\r\n  <div class=\"paging\">{SHOP_PRODUCT_PAGING}</div>\r\n</div>\r\n', 'Online Shop', '', 'y', '0', 'on', 'system', '6', '1'),
('245', '16', '<div id=\"shop\">\r\n	<!-- BEGIN shopProductRow1 -->\r\n	<div class=\"discount_row1\">\r\n		<div class=\"image\"><a href=\"{SHOP_PRODUCT_DETAILLINK}\"><img border=\"0\" alt=\"{SHOP_PRODUCT_TITLE}\" src=\"{SHOP_PRODUCT_THUMBNAIL}\" /></a></div>\r\n		<div class=\"text\"><h2>{SHOP_PRODUCT_TITLE}</h2><i>{TXT_INSTEAD_OF} {SHOP_PRODUCT_PRICE} {SHOP_PRODUCT_PRICE_UNIT}</i><br /><font style=\"color:#ff0000;\"><b>{TXT_PRICE_NOW} <font style=\"font-size: 16px;\">{SHOP_PRODUCT_DISCOUNTPRICE}  {SHOP_PRODUCT_DISCOUNTPRICE_UNIT}</font></font></b></font></div>\r\n	</div>\r\n	<!-- END shopProductRow1 -->\r\n	<!-- BEGIN shopProductRow2 -->\r\n	<div class=\"discount_row2\">\r\n		<div class=\"image\"><a href=\"{SHOP_PRODUCT_DETAILLINK}\"><img border=\"0\" alt=\"{SHOP_PRODUCT_TITLE}\" src=\"{SHOP_PRODUCT_THUMBNAIL}\" /></a></div>\r\n		<div class=\"text\"><h2>{SHOP_PRODUCT_TITLE}</h2><i>{TXT_INSTEAD_OF} {SHOP_PRODUCT_PRICE} {SHOP_PRODUCT_PRICE_UNIT}</i><br /><font style=\"color:#ff0000;\"><b>{TXT_PRICE_NOW} <font style=\"font-size: 16px;\">{SHOP_PRODUCT_DISCOUNTPRICE}  {SHOP_PRODUCT_DISCOUNTPRICE_UNIT}</font></font></b></font></div>\r\n	</div>\r\n	<!-- END shopProductRow2 -->\r\n</div>', 'Sonderangebote', 'discounts', 'y', '244', 'on', 'system', '0', '1'),
('246', '16', '<div id=\"shop\">\r\n  <!-- BEGIN shopCart -->\r\n  <div class=\"cart\">\r\n    <form action=\"index.php?section=shop&amp;cmd=cart\" name=\"shopForm\" method =\"post\">\r\n      <table summary=\"\" cellspacing=\"0\">\r\n        <tr valign=\"top\">\r\n          <th width=\"69%\"><div align=\"left\"><b>&nbsp;{TXT_PRODUCT}</b></div></th>\r\n          <th width=\"10%\"><div align=\"right\"><b>&nbsp;{TXT_UNIT_PRICE}</b></div></th>\r\n          <th width=\"1%\"><div align=\"right\"><b>&nbsp;{TXT_QUANTITY}</b></div></th>\r\n          <th width=\"10%\"><div align=\"right\"><b>{TXT_TOTAL}&nbsp;</b></div></th>\r\n        </tr>\r\n        <!-- BEGIN shopCartRow -->\r\n        <tr valign=\"top\" class=\"{SHOP_PRODUCT_ROW}\">\r\n          <td><div align=\"left\"><a href =\"index.php?section=shop&amp;cmd=details&amp;referer=cart&amp;productId={SHOP_PRODUCT_CART_ID}\">{SHOP_PRODUCT_TITLE}</a>{SHOP_PRODUCT_OPTIONS}</div></td>\r\n          <td><div align=\"right\">{SHOP_PRODUCT_ITEMPRICE}&nbsp;{SHOP_PRODUCT_ITEMPRICE_UNIT}</div></td>\r\n          <td><div align=\"right\"><input class=\"form\" type=\"text\" name=\"quantity[{SHOP_PRODUCT_CART_ID}]\" value=\"{SHOP_PRODUCT_QUANTITY}\" style=\"width: 30px;\"/></div></td>\r\n          <td><div align=\"right\"><b>{SHOP_PRODUCT_PRICE}&nbsp;{SHOP_PRODUCT_PRICE_UNIT}</b></div></td>\r\n        </tr>\r\n        <!-- END shopCartRow -->\r\n        <tr class=\"row3\">\r\n          <td colspan=\"2\" valign=\"top\"><div align=\"left\"><b>{TXT_TAX_PREFIX}</b></div></td>\r\n          <td valign=\"top\"><div align=\"right\"><b>{SHOP_PRODUCT_TAX_RATE}</b></div></td>\r\n          <td width=\"25%\" valign=\"top\" nowrap=\"nowrap\">\r\n            <div align=\"right\"><strong>{SHOP_TOTAL_TAX_AMOUNT}</strong></div>\r\n          </td>\r\n        </tr>\r\n        <tr>\r\n          <td colspan=\"4\" valign=\"top\">&nbsp;</td>\r\n        </tr>\r\n        <tr class=\"row3\">\r\n          <td colspan=\"3\" valign=\"top\"><div align=\"left\"><b>{TXT_INTER_TOTAL}</b></div></td>\r\n          <td width=\"25%\" valign=\"top\" nowrap=\"nowrap\">\r\n            <div align=\"right\"><strong>{SHOP_PRODUCT_TOTALPRICE} {SHOP_PRODUCT_TOTALPRICE_UNIT}</strong></div>\r\n          </td>\r\n        </tr>\r\n        <tr>\r\n          <td colspan=\"4\" valign=\"top\">&nbsp;</td>\r\n        </tr>\r\n        <tr class=\"row3\">\r\n          <td colspan=\"2\" valign=\"top\">\r\n            <!-- BEGIN shopShippingCountry -->\r\n            <div align=\"left\"><strong>{TXT_SHIP_COUNTRY}</strong> {SHOP_COUNTRIES_MENU}</div>\r\n            <!-- END shopShippingCountry -->\r\n          </td>\r\n          <td colspan=\"2\" valign=\"top\"><div align=\"right\"><input type=\"submit\" name=\"update\" class=\"shopbutton\" value=\"{TXT_UPDATE}\" />&nbsp;<input type=\"submit\" name=\"continue\" class=\"shopbutton\" value=\"{TXT_NEXT} >>\" /></div></td>\r\n        </tr>\r\n      </table>\r\n    </form>\r\n  </div>\r\n  <!-- END shopCart -->\r\n  <div class=\"cart_links\">\r\n    <a href=\"index.php?section=shop\" title=\"{TXT_CONTINUE_SHOPPING}\">{TXT_CONTINUE_SHOPPING}</a><br />\r\n    <a href=\"index.php?section=shop&amp;act=destroy\" title=\"{TXT_EMPTY_CART}\">{TXT_EMPTY_CART}</a><br />\r\n  </div>\r\n</div>\r\n', 'Ihr Warenkorb', 'cart', 'y', '244', 'on', 'system', '1', '1'),
('247', '16', '<div id=\"shop\">\r\n	<div class=\"message\">{TXT_SHOP_LSV_EE_INFO}<br /><br />{TXT_SHOP_LSV_EE_TEXT}</div>\r\n	<div class=\"lsv_form\">\r\n		<form action=\"#\" name=\"LSVForm\" method=\"get\">\r\n			<h2>{TXT_SHOP_LSV_EE_RECIPIENT}</h2>\r\n			{SHOP_COMPANY}<br />\r\n			{SHOP_ADDRESS}<br />\r\n			{TXT_SHOP_LSV_EE_FAX}&nbsp;{SHOP_FAX}\r\n			<h2>{TXT_SHOP_LSV_EE_REASON}</h2>\r\n			<p><label>{TXT_SHOP_LSV_EE_DESCRIPTION}</label><textarea rows=\"1\" cols=\"1\">{SHOP_LSV_EE_PRODUCTS}&nbsp;</textarea></p>\r\n			<h2>{TXT_SHOP_LSV_EE_CUSTOMER}</h2>\r\n			<p><label>{TXT_SHOP_LSV_EE_FIRST_NAME}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_FIRST_NAME}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_LAST_NAME}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_LAST_NAME}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_STREETNO}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_ADDRESS}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_ZIP}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_ZIP}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_CITY}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_CITY}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_PHONE}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_PHONE}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_FAXNO}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_FAX}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_EMAIL}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_EMAIL}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_BANK}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_BANK}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_BANKCODE}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_BANKCODE}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_ACCOUNT}</label><input type=\"text\" value=\"{SHOP_CUSTOMER_ACCOUNT}\" /></p>\r\n			<p><label>{TXT_SHOP_LSV_EE_DATE}</label>{SHOP_DATE}</p>\r\n			<br />\r\n			<p><label>{TXT_SHOP_LSV_EE_SIGNATURE}</label><br /></p>\r\n		</form>\r\n	</div>\r\n</div>', 'Einzugsermächtigung', 'einzug', 'y', '244', 'on', 'system', '2', '1'),
('248', '16', '<div id=\"shop\">\r\n  <script language=\"JavaScript\" type=\"text/javascript\">\r\n  <!--\r\n  function shopCopyText()\r\n  {\r\n    with (document.shop){\r\n      if(equalAddress.checked) {\r\n        prefix2.value= prefix.value;\r\n        company2.value= company.value;\r\n        lastname2.value= lastname.value;\r\n        firstname2.value= firstname.value;\r\n        address2.value=address.value;\r\n        zip2.value= zip.value;\r\n        city2.value= city.value;\r\n        phone2.value= phone.value;\r\n        return true;\r\n      } else {\r\n        prefix2.value= \"\";\r\n        company2.value= \"\";\r\n        lastname2.value= \"\";\r\n        firstname2.value= \"\";\r\n        address2.value=\"\";\r\n        zip2.value= \"\";\r\n        city2.value= \"\";\r\n        phone2.value= \"\";\r\n        return true;\r\n      }\r\n    }\r\n  }\r\n  -->\r\n  </script>\r\n  <div class=\"message_error\">{SHOP_ACCOUNT_STATUS}</div>\r\n  <form name=\"shop\" action=\"{SHOP_ACCOUNT_ACTION}\" method=\"post\">\r\n    <div class=\"customer_address\">\r\n      <h2>{TXT_CUSTOMER_ADDRESS}</h2>\r\n      <p><label>{TXT_COMPANY}</label><input type=\"text\" value=\"{SHOP_ACCOUNT_COMPANY}\" name=\"company\" tabindex=\"1\" /></p>\r\n      <p><label>{TXT_GREETING}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  maxlength=\"50\" value=\"{SHOP_ACCOUNT_PREFIX}\" name=\"prefix\" tabindex=\"2\" /></p>\r\n      <p><label>{TXT_SURNAME}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_LASTNAME}\" name=\"lastname\" tabindex=\"3\" /></p>\r\n      <p><label>{TXT_FIRSTNAME}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_FIRSTNAME}\" name=\"firstname\" tabindex=\"4\" /></p>\r\n      <p><label>{TXT_ADDRESS}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_ADDRESS}\" name=\"address\" tabindex=\"5\" /></p>\r\n      <p><label>{TXT_POSTALE_CODE}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_ZIP}\" name=\"zip\" tabindex=\"6\" /></p>\r\n      <p><label>{TXT_CITY}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_CITY}\" name=\"city\" tabindex=\"7\" /></p>\r\n      <p><label>{TXT_COUNTRY}</label>{SHOP_ACCOUNT_COUNTRY}</p>\r\n      <p><label>{TXT_PHONE_NUMBER}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_PHONE}\" name=\"phone\" tabindex=\"8\" /></p>\r\n      <p><label>{TXT_FAX_NUMBER}</label><input type=\"text\"  value=\"{SHOP_ACCOUNT_FAX}\" name=\"fax\" tabindex=\"9\" /></p>\r\n    </div>\r\n    <!-- BEGIN shopShipmentAddress -->\r\n    <div class=\"shipping_address\">\r\n      <h2>{TXT_SHIPPING_ADDRESS}</h2>\r\n      <p><input type=\"checkbox\" value=\"checked\" name=\"equalAddress\" onClick=\"shopCopyText();\" {SHOP_ACCOUNT_EQUAL_ADDRESS} tabindex=\"10\" /><label class=\"description\">{TXT_SAME_BILLING_ADDRESS}</label></p>\r\n      <p><label>{TXT_COMPANY}</label><input type=\"text\"  value=\"{SHOP_ACCOUNT_COMPANY2}\" name=\"company2\" tabindex=\"11\" /></p>\r\n      <p><label>{TXT_GREETING}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  maxlength=\"50\" value=\"{SHOP_ACCOUNT_PREFIX2}\" name=\"prefix2\" tabindex=\"12\" /></p>\r\n      <p><label>{TXT_SURNAME}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_LASTNAME2}\" name=\"lastname2\" tabindex=\"13\" /></p>\r\n      <p><label>{TXT_FIRSTNAME}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_FIRSTNAME2}\" name=\"firstname2\" tabindex=\"14\" /></p>\r\n      <p><label>{TXT_ADDRESS}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_ADDRESS2}\" name=\"address2\" tabindex=\"15\" /></p>\r\n      <p><label>{TXT_POSTALE_CODE}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  size=\"6\" value=\"{SHOP_ACCOUNT_ZIP2}\" name=\"zip2\" tabindex=\"16\" /></p>\r\n      <p><label>{TXT_CITY}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_CITY2}\" name=\"city2\" tabindex=\"17\" /></p>\r\n      <p><label>{TXT_COUNTRY}</label>{SHOP_ACCOUNT_COUNTRY2}</p>\r\n      <p><label>{TXT_PHONE_NUMBER}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_PHONE2}\" name=\"phone2\" tabindex=\"18\" /></p>\r\n    </div>\r\n    <!-- END shopShipmentAddress -->\r\n    <!-- BEGIN account_details -->\r\n      <div class=\"account_details\">\r\n        <h2>{TXT_YOUR_ACCOUNT_DETAILS}</h2>\r\n        <p><label>{TXT_EMAIL}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"text\"  value=\"{SHOP_ACCOUNT_EMAIL}\" name=\"email\" tabindex=\"19\" /></p>\r\n        <p><label>{TXT_PASSWORD}<font color=\"#ff0000\">&nbsp;*</font></label><input type=\"password\" value=\"\" name=\"password\" tabindex=\"20\" /></p>\r\n      </div>\r\n    <!-- END account_details -->\r\n    <p><input type=\"reset\" value=\"{TXT_RESET}\" name=\"reset\" tabindex=\"21\" />&nbsp;<input type=\"submit\" value=\"{TXT_NEXT} >>\" name=\"Submit\" tabindex=\"22\" /</p>\r\n  </form>\r\n</div>\r\n', 'Kontoangaben', 'account', 'y', '244', 'off', 'system', '99', '1'),
('249', '16', '{SHOP_JAVASCRIPT_CODE} \r\n<div id=\"shop\">\r\n	<div class=\"menu\">{SHOP_MENU}</div>\r\n	<div class=\"cart_info\">{SHOP_CART_INFO}</div>\r\n	<div class=\"informations\">{TXT_PRODUCTS_IN_CATEGORY} {SHOP_CATEGORY_NAME}</div>\r\n	<!-- BEGIN shopProductRow -->\r\n	<div class=\"product\">\r\n		<form id=\"{SHOP_PRODUCT_FORM_NAME}\" name=\"{SHOP_PRODUCT_FORM_NAME}\" action=\"index.php?section=shop&amp;cmd=cart\" method=\"post\">\r\n    	<input type=\"hidden\" name=\"productId\" value=\"{SHOP_PRODUCT_ID}\" />\r\n		<div class=\"images\">\r\n			<!-- BEGIN productImage1 --><a href=\"{SHOP_PRODUCT_THUMBNAIL_LINK_1}\"><img border=\"0\" src=\"{SHOP_PRODUCT_THUMBNAIL_1}\" alt=\"{TXT_SEE_LARGE_PICTURE}\" /></a><br /><!-- END productImage1 -->       \r\n			<!-- BEGIN productImage2 --><a href=\"{SHOP_PRODUCT_THUMBNAIL_LINK_2}\"><img border=\"0\" src=\"{SHOP_PRODUCT_THUMBNAIL_2}\" alt=\"{TXT_SEE_LARGE_PICTURE}\" /></a><br /><!-- END productImage2 -->       \r\n			<!-- BEGIN productImage3 --><a href=\"{SHOP_PRODUCT_THUMBNAIL_LINK_3}\"><img border=\"0\" src=\"{SHOP_PRODUCT_THUMBNAIL_3}\" alt=\"{TXT_SEE_LARGE_PICTURE}\" /></a><br /><!-- END productImage3 -->\r\n		</div>\r\n		<div class=\"description\">\r\n			<h2>{SHOP_PRODUCT_TITLE}</h2>\r\n			<i>{SHOP_PRODUCT_DESCRIPTION}</i><br /><br />{SHOP_PRODUCT_DETAILDESCRIPTION}<br /><br />\r\n			<div class=\"stock\">{SHOP_PRODUCT_STOCK}</div>\r\n			<div class=\"product_id\">{TXT_PRODUCT_ID}:{SHOP_PRODUCT_ID} ({TXT_SHOP_PRODUCT_CUSTOM_ID}: {SHOP_PRODUCT_CUSTOM_ID})</div>\r\n			<!-- BEGIN shopProductOptionsRow -->\r\n			<div class=\"shop_options\">{SHOP_PRODUCT_OPTIONS_TITLE}<br />\r\n				<div id=\"product_options_layer{SHOP_PRODUCT_ID}\" style=\"display: none;\">\r\n					<div class=\"shop_options_click\">\r\n						<br />\r\n						<!-- BEGIN shopProductOptionsValuesRow -->\r\n						<strong>{SHOP_PRODUCT_OPTIONS_NAME}:</strong><br />{SHOP_PRODCUT_OPTION}<br />\r\n						 <!-- END shopProductOptionsValuesRow -->\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<!-- END shopProductOptionsRow -->\r\n			<!-- BEGIN shopProductManufacturer -->\r\n			<div class=\"manufacturer\"><br /><h3>Hersteller</h3>{SHOP_MANUFACTURER_LINK}</div>\r\n			<!-- END shopProductManufacturer -->\r\n		</div>\r\n		<div class=\"price\"><strong>Preis: {SHOP_PRODUCT_DISCOUNTPRICE} {SHOP_PRODUCT_DISCOUNTPRICE_UNIT}  {SHOP_PRODUCT_PRICE} {SHOP_PRODUCT_PRICE_UNIT}</strong><br />{SHOP_PRODUCT_TAX_PREFIX}&nbsp;{SHOP_PRODUCT_TAX}</div>\r\n		<div class=\"functions\"><input type=\"submit\" onclick=\"{SHOP_PRODUCT_SUBMIT_FUNCTION}\" name=\"{SHOP_PRODUCT_SUBMIT_NAME}\" value=\"{TXT_ADD_TO_CARD}\" /></div>\r\n		</form>\r\n	</div>\r\n	<!-- END shopProductRow -->\r\n</div>', 'Detaillierte Produktedaten', 'details', 'y', '244', 'off', 'system', '99', '1'),
('250', '16', '<div id=\"shop\">\r\n	<div class=\"message_error\">{SHOP_LOGIN_STATUS}</div>\r\n	<div class=\"customer_new\">\r\n		<form name=\"shop\" action=\"index.php?section=shop&cmd=account\" method=\"post\">\r\n			<h2>{TXT_SHOP_ACCOUNT_NEW_CUSTOMER}</h2>\r\n			{TXT_SHOP_ACCOUNT_NOTE}<br />\r\n			<br />\r\n			<input type=\"submit\" value=\"{TXT_NEXT}\" name=\"login\">\r\n		</form>\r\n	</div>\r\n	<div class=\"customer_old\">\r\n		<form name=shop action=\"{SHOP_LOGIN_ACTION}\" method=post>\r\n			<h2>{TXT_SHOP_ACCOUNT_EXISTING_CUSTOMER}</h2>\r\n			<p><label>{TXT_EMAIL_ADDRESS}</label><input maxLength=\"250\" value=\"{SHOP_LOGIN_EMAIL}\" name=\"username\"></p>\r\n			<p><label>{TXT_PASSWORD}</label><input type=\"password\" maxLength=\"50\" name=\"password\"></p>\r\n			<p><input type=\"submit\" value=\"{TXT_SHOP_ACCOUNT_LOGIN}\" name=\"login\"></p>\r\n		</form>\r\n	</div>\r\n</div>', 'Mein Konto', 'login', 'y', '244', 'off', 'system', '99', '1'),
('251', '16', '<!-- BEGIN shop_sendpass_status -->\r\n<div style=\"font-weight:bold; color:#ff0000;\">{SHOP_PASSWORD_STATUS}</div><br />\r\n<!-- END shop_sendpass_status -->\r\n<!-- BEGIN shop_sendpass -->\r\n<form name=\"shop\" action=\"index.php?section=shop&amp;cmd=sendpass\" method=\"post\">\r\n{SHOP_PASSWORD_ENTER_EMAIL}<br />\r\n<br />\r\n<input type=\"text\" style=\"width:200px;\" name=\"shopEmail\"> <input type=\"submit\" value=\"{TXT_NEXT}\">\r\n</form>\r\n<!-- END shop_sendpass -->\r\n', 'Passwort Hilfe', 'sendpass', 'y', '250', 'off', 'system', '99', '1'),
('252', '16', '<!-- BEGIN shop_change_password_status -->\r\n<div style=\"font-weight:bold; color:#ff0000;\">{SHOP_PASSWORD_STATUS}</div><br />\r\n<!-- END shop_change_password_status -->\r\n<!-- BEGIN shop_change_password -->\r\n<form action=\"index.php?section=shop&amp;cmd=changepass\" method=\"post\">\r\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width:150px;\">{SHOP_PASSWORD_CURRENT}</td>\r\n<td><input style=\"width:200px;\" type=\"password\" name=\"shopCurrentPassword\" /></td>\r\n</tr>\r\n<tr>\r\n<td>{SHOP_PASSWORD_NEW}</td>\r\n<td><input style=\"width:200px;\" type=\"password\" name=\"shopNewPassword\" /></td>\r\n</tr>\r\n<tr>\r\n<td>{SHOP_PASSWORD_CONFIRM}</td>\r\n<td><input style=\"width:200px;\" type=\"password\" name=\"shopConfirmPassword\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br />\r\n<input type=\"submit\" value=\"{SHOP_PASSWORD_CHANGE}\" />\r\n</form>\r\n<!-- END shop_change_password -->\r\n', 'Kennwort ändern', 'changepass', 'y', '250', 'off', 'system', '99', '1'),
('253', '16', '<div id=\"shop\">\r\n     <div class=\"message\">{SHOP_STATUS}</div>\r\n     <a href=\"index.php?section=shop\">zurück zum Shop</a>\r\n</div>\r\n', 'Transaktionsstatus', 'success', 'y', '244', 'off', 'system', '99', '1'),
('254', '16', 'Hier k&ouml;nnen Sie Ihre eigenen Allgemeinen Gesch&auml;ftsbedingungen hineinschreiben. <br />\r\nEnter your terms and conditions here.<br />\r\n<br />\r\n<br />\r\n<strong>{TXT_SHOP_SHIPMENT_CONDITIONS}</strong><br />\r\n<table width=\"100%\" cellspacing=\"0\" cellpadding=\"2\" border=\"0\">\r\n    <tbody>\r\n        <!-- BEGIN shopShipper -->\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td nowrap=\"nowrap\" width=\"20%\"><strong>{TXT_SHIPPING_METHOD}</strong></td>\r\n            <td nowrap=\"nowrap\" width=\"20%\"><strong>{TXT_SHOP_SHIPMENT_COUNTRIES}</strong></td>\r\n            <td nowrap=\"nowrap\" width=\"20%\"><strong>{TXT_SHIPPING_MAX_WEIGHT}</strong></td>\r\n            <td nowrap=\"nowrap\" width=\"20%\"><strong>{TXT_FREE_OF_CHARGE}</strong></td>\r\n            <td nowrap=\"nowrap\" width=\"20%\"><strong>{TXT_FEE}</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td nowrap=\"nowrap\">{SHOP_SHIPPER}</td>\r\n            <td>{SHOP_COUNTRIES}</td>\r\n            <td colspan=\"3\">&nbsp;</td>\r\n        </tr>\r\n        <!-- BEGIN shopShipment -->\r\n        <tr>\r\n            <td colspan=\"2\">&nbsp;</td>\r\n            <td nowrap=\"nowrap\">{SHOP_MAX_WEIGHT}</td>\r\n            <td nowrap=\"nowrap\">{SHOP_COST_FREE}</td>\r\n            <td nowrap=\"nowrap\">{SHOP_COST}&nbsp;{SHOP_UNIT}</td>\r\n        </tr>\r\n        <!-- END shopShipment -->         <!-- END shopShipper -->\r\n    </tbody>\r\n</table>', 'Allgemeine Geschäftsbedingungen', 'terms', 'n', '244', 'off', 'system', '99', '1'),
('255', '16', '<div id=\"shop\">\r\n  <div class=\"message_error\">{SHOP_ACCOUNT_STATUS}</div>\r\n  <form action=\"index.php?section=shop&amp;cmd=payment\" name=\"shopForm\" method=\"post\">\r\n    <div class=\"payment\">\r\n      <table summary=\"\" cellspacing=\"0\" width=\"100%\">\r\n        <tr>\r\n          <th colspan=\"3\" align=\"left\">{TXT_PRODUCTS}</th>\r\n        </tr>\r\n        <tr class=\"row1\">\r\n          <td width=\"40%\"><strong>{TXT_TOTALLY_GOODS}</strong>&nbsp;{SHOP_TAX_PRODUCTS_TXT}</td>\r\n          <td width=\"40%\">{SHOP_TOTALITEM}&nbsp;{TXT_PRODUCT_S}</td>\r\n          <td width=\"20%\" align=\"right\"><strong>{SHOP_TOTALPRICE}&nbsp;{SHOP_UNIT}</strong></td>\r\n        </tr>\r\n        <!-- BEGIN shopShipment -->\r\n        <tr class=\"row2\">\r\n          <td>\r\n            <strong>{TXT_SHIPPING_METHODS}</strong>\r\n            <!-- BEGIN shopWeight -->\r\n            &nbsp;({TXT_TOTAL_WEIGHT}&nbsp;{SHOP_TOTAL_WEIGHT})\r\n            <!-- END shopWeight -->\r\n          </td>\r\n          <td>{SHOP_SHIPMENT_MENU}&nbsp;{TXT_SHIPPER_NO_GOOD}</td>\r\n          <td align=\"right\">{SHOP_SHIPMENT_PRICE}&nbsp;{SHOP_UNIT}</td>\r\n        </tr>\r\n        <!-- END shopShipment -->\r\n        <!-- BEGIN shopPayment -->\r\n        <tr class=\"row1\">\r\n          <td><strong>{TXT_PAYMENT_TYPES}</strong></td>\r\n          <td>{SHOP_PAYMENT_MENU}</td>\r\n          <td align=\"right\">{SHOP_PAYMENT_PRICE}&nbsp;{SHOP_UNIT}</td>\r\n        </tr>\r\n        <!-- END shopPayment -->\r\n        <!-- BEGIN shopTax -->\r\n        <tr class=\"row2\">\r\n          <td colspan=\"2\"><strong>{TXT_TAX_PREFIX}</strong></td>\r\n          <td align=\"right\">{SHOP_TAX_PRICE}</strong></td>\r\n        </tr>\r\n        <!-- END shopTax -->\r\n        <!-- BEGIN lsv -->\r\n          <tr class=\"row1\">\r\n            <td><strong>{TXT_PAYMENT_LSV}</strong></td>\r\n            <td colspan=\"2\">\r\n              <p><label>{TXT_ACCOUNT_HOLDER}</label><input type=\"text\" value=\"{SHOP_ACCOUNT_HOLDER}\" name=\"account_holder\" /></p>\r\n              <p><label>{TXT_ACCOUNT_BANK}</label><input type=\"text\" value=\"{SHOP_ACCOUNT_BANK}\" name=\"account_bank\" /></p>\r\n              <p><label>{TXT_ACCOUNT_BLZ}</label><input type=\"text\" value=\"{SHOP_ACCOUNT_BLZ}\" name=\"account_blz\" /></p>\r\n            </td>\r\n          </tr>\r\n        <!-- END lsv -->\r\n        <tr class=\"row3\">\r\n          <td colspan=\"2\"><strong>{TXT_TOTAL_PRICE}</strong>&nbsp;{SHOP_TAX_GRAND_TXT}</td>\r\n          <td align=\"right\"><strong>{SHOP_GRAND_TOTAL} {SHOP_UNIT}</strong></td>\r\n        </tr>\r\n        <tr class=\"row1\">\r\n          <td colspan=\"3\">&nbsp;</td>\r\n        </tr>\r\n        <tr class=\"row1\">\r\n          <td valign=\"top\">{TXT_COMMENTS}</td>\r\n          <td colspan=\"2\"><textarea name=\"customer_note\" rows=\"4\" cols=\"52\">{SHOP_CUSTOMERNOTE}</textarea></td>\r\n        </tr>\r\n      </table>\r\n    </div>\r\n    <br />\r\n    <div class=\"message\">\r\n      <p><input type=\"checkbox\" value=\"checked\" name=\"agb\" {SHOP_AGB} />\r\n        <label class=\"description\">{TXT_ACCEPT_TAC}</label></p>\r\n      <p><input type=\"submit\" value=\"{TXT_UPDATE}\" name=\"refresh\" />&nbsp;<input type=\"submit\" value=\"{TXT_NEXT}\" name=\"check\" /></p>\r\n    </div>\r\n  </form>\r\n</div>', 'Bezahlung und Versand', 'payment', 'y', '244', 'off', 'system', '99', '1'),
('256', '16', '<div id=\"shop\">\r\n  <div class=\"message_error\">{SHOP_STATUS}</div>\r\n  <!-- BEGIN shopConfirm -->\r\n  <div class=\"order\">\r\n    <form action=\"index.php?section=shop&amp;cmd=confirm\" name=\"shopForm\" method=\"post\">\r\n      <h2>{TXT_ORDER_INFOS}</h2>\r\n      <table cellspacing=\"2\">\r\n        <tr>\r\n          <th width=\"1%\" nowrap=\"nowrap\">{TXT_ID}</th>\r\n          <th width=\"94%\" align=\"left\">{TXT_PRODUCT}</th>\r\n          <th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_UNIT_PRICE}</th>\r\n          <th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_QUANTITY}</th>\r\n          <th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_WEIGHT}</th>\r\n          <th width=\"1%\" nowrap=\"nowrap\" colspan=\"2\">{TXT_TAX_PREFIX}</th>\r\n          <th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_TOTAL}</th>\r\n        </tr>\r\n          <!-- BEGIN shopCartRow -->\r\n          <tr class=\"row2\">\r\n            <td nowrap=\"nowrap\">{SHOP_PRODUCT_ID}</td>\r\n            <td>{SHOP_PRODUCT_TITLE}</td>\r\n            <td nowrap=\"nowrap\" align=\"right\">{SHOP_PRODUCT_ITEMPRICE} {SHOP_UNIT}</td>\r\n            <td nowrap=\"nowrap\" align=\"right\">{SHOP_PRODUCT_QUANTITY}</td>\r\n            <td nowrap=\"nowrap\" align=\"right\">{SHOP_PRODUCT_WEIGHT}</td>\r\n            <td nowrap=\"nowrap\" align=\"right\">{SHOP_PRODUCT_TAX_RATE}</td>\r\n            <td nowrap=\"nowrap\" align=\"right\">{SHOP_PRODUCT_TAX_AMOUNT}</td>\r\n            <td nowrap=\"nowrap\" align=\"right\">{SHOP_PRODUCT_PRICE} {SHOP_UNIT}</td>\r\n          </tr>\r\n          <!-- END shopCartRow -->\r\n        <tr class=\"row3\">\r\n          <td colspan=\"3\" valign=\"top\"><strong>{TXT_INTER_TOTAL}</strong> {SHOP_TAX_PRODUCTS_TXT}</td>\r\n          <td colspan=\"4\" valign=\"top\" nowrap=\"nowrap\">{SHOP_TOTALITEM} {TXT_PRODUCT_S}</td>\r\n          <td valign=\"top\" nowrap=\"nowrap\" align=\"right\"><strong>{SHOP_TOTALPRICE} {SHOP_UNIT}</strong></td>\r\n        </tr>\r\n          <!-- BEGIN shiprow -->\r\n          <tr class=\"row2\" valign=\"top\">\r\n            <td colspan=\"2\"><strong>{TXT_SHIPPING_METHOD}</strong></td>\r\n            <td colspan=\"5\">{SHOP_SHIPMENT}</td>\r\n            <td nowrap=\"nowrap\" align=\"right\">{SHOP_SHIPMENT_PRICE} {SHOP_UNIT}</td>\r\n          </tr>\r\n          <!-- END shiprow -->\r\n        <tr class=\"row2\" valign=\"top\">\r\n          <td colspan=\"2\"><strong>{TXT_PAYMENT_TYPE}</strong></td>\r\n          <td colspan=\"5\">{SHOP_PAYMENT}</td>\r\n          <td nowrap=\"nowrap\" align=\"right\">{SHOP_PAYMENT_PRICE} {SHOP_UNIT}</td>\r\n        </tr>\r\n          <!-- BEGIN taxrow -->\r\n          <tr class=\"row2\" valign=\"top\">\r\n            <td colspan=\"7\"><strong>{TXT_TAX_PREFIX}</strong></td>\r\n            <td nowrap=\"nowrap\" align=\"right\">{TXT_TAX_PART} {SHOP_TAX_PRICE} {SHOP_UNIT}</td>\r\n          </tr>\r\n          <!-- END taxrow -->\r\n        <tr class=\"row3\">\r\n          <td colspan=\"7\" valign=\"top\" nowrap=\"nowrap\"><strong>{TXT_TOTAL_PRICE}</strong> {SHOP_TAX_GRAND_TXT}</td>\r\n          <td nowrap=\"nowrap\" align=\"right\"><strong>{SHOP_GRAND_TOTAL} {SHOP_UNIT}</strong></td>\r\n        </tr>\r\n      </table>\r\n      <br />\r\n      <table cellspacing=\"0\">\r\n        <tr>\r\n          <th width=\"50%\" align=\"left\">{TXT_ADDRESS_CUSTOMER}</th>\r\n          <th width=\"50%\" align=\"left\">{TXT_SHIPPING_ADDRESS}</th>\r\n        </tr>\r\n        <tr>\r\n          <td nowrap=\"nowrap\" valign=\"top\">\r\n            {SHOP_COMPANY}<br />\r\n            {SHOP_PREFIX} {SHOP_FIRSTNAME} {SHOP_LASTNAME}<br />\r\n            {SHOP_ADDRESS}<br />\r\n            {SHOP_ZIP} {SHOP_CITY}<br />\r\n            {SHOP_COUNTRY}<br />\r\n            {SHOP_PHONE}<br />\r\n            {SHOP_FAX}<br />\r\n            {SHOP_EMAIL}\r\n          </td>\r\n          <td nowrap=\"nowrap\" valign=\"top\">\r\n            <!-- BEGIN shopShipmentAddress -->\r\n            {SHOP_COMPANY2}<br />\r\n            {SHOP_PREFIX2} {SHOP_FIRSTNAME2} {SHOP_LASTNAME2}<br />\r\n            {SHOP_ADDRESS2}<br />\r\n            {SHOP_ZIP2} {SHOP_CITY2}<br />\r\n            {SHOP_COUNTRY2}<br />\r\n            {SHOP_PHONE}<br />\r\n            {SHOP_FAX2}<br />\r\n            {SHOP_EMAIL2}\r\n            <!-- END shopShipmentAddress -->\r\n          </td>\r\n        </tr>\r\n      </table>\r\n      <br />\r\n      <!-- BEGIN shopComment -->\r\n      <table cellspacing=\"0\">\r\n        <tr class=\"row3\">\r\n          <td colspan=\"2\"><strong>{TXT_COMMENTS}<strong></td>\r\n        </tr>\r\n        <tr class=\"row2\">\r\n          <td colspan=\"2\">{SHOP_CUSTOMERNOTE}</td>\r\n        </tr>\r\n      </table><br />\r\n      <br />\r\n      <!-- END shopComment -->\r\n      <div align=\"right\"><input type=\"submit\" value=\"{TXT_ORDER_NOW}\" name=\"process\" /></div>\r\n    </form>\r\n  </div>\r\n  <!-- END shopConfirm -->\r\n  <!-- BEGIN shopProcess -->\r\n  <div class=\"message\">{TXT_ORDER_PREPARED}<br/>{SHOP_PAYMENT_PROCESSING}</div>\r\n  <!-- END shopProcess -->\r\n</div>\r\n', 'Bestellen', 'confirm', 'y', '244', 'off', 'system', '99', '1'),
('257', '47', '<div id=\"blog\">\r\n	<div class=\"categories\">\r\n		<h2>Themen Kategorien</h2>\r\n		{BLOG_CATEGORIES_LIST}\r\n	</div>\r\n	<!-- BEGIN showBlogEntries -->\r\n		<div class=\"entries\">\r\n			<h2><a title=\"{BLOG_ENTRIES_TITLE}\" href=\"index.php?section=blog&amp;cmd=details&amp;id={BLOG_ENTRIES_ID}\">{BLOG_ENTRIES_TITLE}</a></h2>\r\n			<div class=\"posted_comment\">\r\n				{BLOG_ENTRIES_POSTED}\r\n				<!-- BEGIN showCommentPart -->\r\n					&nbsp;&nbsp;|&nbsp;&nbsp;<a title=\"{TXT_BLOG_COMMENTS}\" href=\"index.php?section=blog&amp;cmd=details&amp;id={BLOG_ENTRIES_ID}#comments\">{BLOG_ENTRIES_COMMENTS}</a>\r\n				<!-- END showCommentPart -->\r\n			</div>\r\n			<div class=\"content\">\r\n				<div class=\"image\">{BLOG_ENTRIES_IMAGE}</div>\r\n				<div class=\"text\">{BLOG_ENTRIES_INTRODUCTION}</div>\r\n				<div class=\"link\"><a href=\"index.php?section=blog&amp;cmd=details&amp;id={BLOG_ENTRIES_ID}\">Weiter...</a></div>\r\n			</div>\r\n			<div class=\"statistics\">\r\n				<strong>{TXT_BLOG_CATEGORIES}:</strong>&nbsp;{BLOG_ENTRIES_CATEGORIES}<br />\r\n				<strong>{TXT_BLOG_TAGS}:</strong>&nbsp;{BLOG_ENTRIES_TAGS}<br />\r\n				<!-- BEGIN showVotingPart -->\r\n					<strong>{TXT_BLOG_VOTING}:</strong>&nbsp; <a title=\"{TXT_BLOG_VOTING_DO}\" href=\"index.php?section=blog&amp;cmd=details&amp;id={BLOG_ENTRIES_ID}#voting\">{BLOG_ENTRIES_VOTING_STARS}</a>&nbsp;(<a title=\"{TXT_BLOG_VOTING_DO}\" href=\"index.php?section=blog&amp;cmd=details&amp;id={BLOG_ENTRIES_ID}#voting\">{BLOG_ENTRIES_VOTING}</a>) \r\n				<!-- END showVotingPart -->\r\n			</div>\r\n		</div>\r\n	<!-- END showBlogEntries -->\r\n	{BLOG_ENTRIES_PAGING}\r\n</div>', 'Blog', '', 'y', '0', 'on', 'system', '8', '1'),
('258', '47', '<div id=\"blog\">\r\n	{BLOG_SEARCH_JAVASCRIPT}\r\n	<div class=\"searchform\">\r\n		<form action=\"index.php?section=blog&amp;cmd=search\" name=\"frmDoSearch\" method=\"post\">\r\n			<p><label>{TXT_SEARCH_MODUS_KEYWORD}</label><input type=\"text\" value=\"{BLOG_SEARCH_KEYWORD_STRING}\" name=\"frmDoSearch_Keyword_String\" /></p>\r\n			<p><label>Kategorie</label>{BLOG_SEARCH_KEYWORD_CATEGORIES}</p>\r\n			<p><label>{TXT_SEARCH_MODUS_DATE}</label><div style=\"width: 200px; \">{BLOG_SEARCH_DATE_CALENDAR}</div></p>\r\n			<p><input type=\"submit\" value=\"{TXT_SEARCH_SUBMIT}\" name=\"frmDoSearch_Submit\" /></p>\r\n		</form>\r\n	</div>\r\n	<!-- BEGIN ResultPart -->\r\n		<h2>{TXT_SEARCH_RESULTS}</h2>\r\n		<!-- BEGIN showResults -->\r\n			<div class=\"entries\">\r\n				<h2><a title=\"{BLOG_SEARCH_RESULTS_SUBJECT}\" href=\"index.php?section=blog&amp;cmd=details&amp;id={BLOG_SEARCH_RESULTS_MID}\">{BLOG_SEARCH_RESULTS_SUBJECT}</a></h2>\r\n				<div class=\"content\">\r\n					<div class=\"text\">{BLOG_SEARCH_RESULTS_INTRODUCTION}</div>\r\n					<div class=\"link\"><a href=\"index.php?section=blog&amp;cmd=details&amp;id={BLOG_SEARCH_RESULTS_MID}\">Weiter...</a></div>\r\n				</div>\r\n				<div class=\"statistics\">\r\n					<strong>{TXT_SEARCH_RESULTS_DATE}:</strong>&nbsp;{BLOG_SEARCH_RESULTS_POSTED}<br />\r\n					<strong>{TXT_SEARCH_RESULTS_CATEGORY}:</strong>&nbsp;{BLOG_SEARCH_RESULTS_CATEGORIES}<br />\r\n					<strong>{TXT_SEARCH_RESULTS_KEYWORDS}:</strong>&nbsp; {BLOG_SEARCH_RESULTS_TAGS} \r\n				</div>\r\n			</div>\r\n		<!-- END showResults -->\r\n		<!-- BEGIN showNoResults -->\r\n			<div class=\"text\">{TXT_SEARCH_RESULTS_NONE}</div>\r\n		<!-- END showNoResults -->\r\n	<!-- END ResultPart -->\r\n</div>', 'Suchen', 'search', 'y', '257', 'on', 'system', '0', '1'),
('259', '47', 'Eine <strong>Tag Cloud</strong> ist eine Methode zur Informationsvisualisierung, bei der eine Liste aus Schlagworten zweidimensional alphabetisch sortiert angezeigt wird, wobei einzelne unterschiedlich gewichtete Worte gr&ouml;sser oder auf andere Weise hervorgehoben dargestellt werden. Wortwolken werden zunehmend beim gemeinschaftlichen Indexieren und in Blogs eingesetzt. [<a target=\"_blank\" href=\"http://de.wikipedia.org/wiki/Tag_cloud\">Quelle</a>]\r\n<h2 class=\"blogTitle\">Beliebteste Tags</h2>\r\n{BLOG_TAG_HITLIST}\r\n<h2 class=\"blogTitle\">Tag Cloud</h2>\r\n<div style=\"text-align: justify; margin-top: 20px;\">{BLOG_TAG_CLOUD}</div>', 'Tag Cloud', 'cloud', 'y', '257', 'on', 'system', '1', '1'),
('260', '0', '<div id=\"blog\">\r\n	<div class=\"text\">Das Contrexx Blog-Modul erzeugt, falls in den Moduleinstellungen aktiviert, automatisch RSS-Feeds von Ihren Meldungen und den dazu verfassten Kommentaren. Dabei wird pro aktivierte Systemsprache im Ordner <strong>feed/</strong> eine eigene XML-Datei nach folgendem Schema erstellt:</div>\r\n	<div class=\"code\">\r\n<pre>blog_messages_XX.xml\r\nblog_comments_XX.xml\r\nblog_category_ID_XX.xml</pre>\r\n	</div>\r\n	<div class=\"text\">Dabei steht der Platzhalter XX f&uuml;r die Kurzform der jeweiligen Sprache und ID f&uuml;r die eindeutige Bezeichnungs-ID der jeweiligen Kategorie. F&uuml;r die Sprache Deutsch (Kurzform: de) lauten der komplette Link beispielsweise wie folgt:</div>\r\n	<div class=\"code\">\r\n<pre>http://www.Ihre-Website.ch/feed/blog_messages_de.xml\r\nhttp://www.Ihre-Website.ch/feed/blog_comments_de.xml</pre>\r\n	</div>\r\n	<div class=\"text\">F&uuml;r die Kategorie 1 (ID = 1) in der Sprache deutsch w&uuml;rde der Pfad demnach wie folgt lauten:</div>\r\n	<div class=\"code\">\r\n<pre>http://www.Ihre-Website.ch/feed/blog_category_1_de.xml</pre>\r\n	</div>\r\n	<div class=\"text\">Eine komplette &Uuml;bersicht aller Kurzformen finden Sie in Ihrem Administrationsbereich unter <strong>Administration &gt; Spracheinstellungen</strong>.</div>\r\n</div>', 'RSS-Feed', '', 'y', '257', 'on', 'system', '3', '1'),
('261', '47', '<div id=\"blog\">\r\n	<!-- BEGIN showOkay -->\r\n		<div class=\"message_ok\">{BLOG_DETAILS_COMMENT_OKAY}</div>\r\n	<!-- END showOkay -->\r\n	<!-- BEGIN showError -->\r\n		<div class=\"message_error\">{BLOG_DETAILS_COMMENT_ERROR}</div>\r\n	<!-- END showError -->\r\n	<div class=\"entry\">\r\n		<h2>{BLOG_DETAILS_TITLE}</h2>\r\n		<div class=\"posted_comment\">{BLOG_DETAILS_POSTED}</div>\r\n		<div class=\"content\">\r\n			<div class=\"image\">{BLOG_DETAILS_IMAGE}</div>\r\n			<div class=\"text\">{BLOG_DETAILS_CONTENT}</div>\r\n			<div class=\"networks\">{BLOG_DETAILS_NETWORKS}</div>\r\n		</div>\r\n	</div>\r\n	<!-- BEGIN votingPart -->\r\n		<div class=\"voting\">\r\n			<table cellspacing=\"0\">\r\n				<tr>\r\n					<th colspan=\"2\">{TXT_VOTING}</th>\r\n				</tr>\r\n				<tr class=\"row1\">\r\n					<td width=\"30%\" nowrap=\"nowrap\">{TXT_VOTING_ACTUAL}</td>\r\n					<td width=\"70%\">{BLOG_DETAILS_VOTING_BAR}</td>\r\n				</tr>\r\n				<tr class=\"row2\">\r\n					<td nowrap=\"nowrap\">{TXT_VOTING_AVG}</td>\r\n					<td>{BLOG_DETAILS_VOTING_AVG}</td>\r\n				</tr>\r\n				<tr class=\"row1\">\r\n					<td nowrap=\"nowrap\">{TXT_VOTING_COUNT}</td>\r\n					<td>{BLOG_DETAILS_VOTING_COUNT}</td>\r\n				</tr>\r\n				<tr class=\"row2\">\r\n					<td nowrap=\"nowrap\">{TXT_VOTING_USER}</td>\r\n					<td>{BLOG_DETAILS_VOTING_USER}</td>\r\n				</tr>\r\n			</table>\r\n		</div>\r\n	<!-- END votingPart -->\r\n	<!-- BEGIN commentPart -->\r\n	{BLOG_DETAILS_COMMENTS_JAVASCRIPT}\r\n	<h3>{TXT_COMMENTS}</h3>\r\n	<!-- BEGIN showCommentRows -->\r\n		<div class=\"comments\">\r\n			<div class=\"title\"><strong>{BLOG_DETAILS_COMMENT_TITLE}</strong></div>\r\n			<div class=\"posted_comment\">{BLOG_DETAILS_COMMENT_POSTED}</div>\r\n			<div class=\"text\">{BLOG_DETAILS_COMMENT_CONTENT}</div>\r\n		</div>\r\n	<!-- END showCommentRows -->\r\n	<!-- BEGIN showNoCommentRows -->\r\n		<div class=\"comments\">{TXT_COMMENTS_NONE_EXISTING}</div>\r\n	<!-- END showNoCommentRows -->\r\n	<!-- BEGIN commentAddPart -->\r\n		<div class=\"addcomment\">\r\n			<h3>{TXT_COMMENT_ADD}</h3>\r\n			<form name=\"frmAddComment\" method=\"post\" action=\"index.php?section=blog&amp;cmd=details&amp;id={BLOG_DETAILS_COMMENT_ADD_MESSAGE_ID}\">\r\n				<input type=\"hidden\" name=\"frmAddComment_MessageId\" value=\"{BLOG_DETAILS_COMMENT_ADD_MESSAGE_ID}\" />\r\n				<p><label>{TXT_COMMENT_ADD_NAME}</label>{BLOG_DETAILS_COMMENT_ADD_NAME}</p>\r\n				<p><label>{TXT_COMMENT_ADD_EMAIL}</label>{BLOG_DETAILS_COMMENT_ADD_EMAIL}</p>\r\n				<p><label>{TXT_COMMENT_ADD_WWW}</label>{BLOG_DETAILS_COMMENT_ADD_WWW}</p>\r\n				<p><label>{TXT_COMMENT_ADD_SUBJECT}</label><input type=\"text\" name=\"frmAddComment_Subject\" value=\"{BLOG_DETAILS_COMMENT_ADD_SUBJECT}\" class=\"blogCommentInput\" /></p>\r\n				<p><label>{TXT_COMMENT_ADD_COMMENT}</label>{BLOG_DETAILS_COMMENT_ADD_COMMENT}</p>\r\n				<p><label>{TXT_COMMENT_ADD_SPAM}</label><img src=\"{BLOG_DETAILS_COMMENT_ADD_SPAM_URL}\" alt=\"{BLOG_DETAILS_COMMENT_ADD_SPAM_ALT}\" title=\"{BLOG_DETAILS_COMMENT_ADD_SPAM_ALT}\" /></p>\r\n				<p><input type=\"hidden\" name=\"frmAddComment_Offset\" value=\"{BLOG_DETAILS_COMMENT_ADD_SPAM_OFFSET}\" /><input type=\"text\" name=\"frmAddComment_Captcha\" /></p>\r\n				<p><input type=\"submit\" name=\"frmAddComment_Submit\" value=\"{TXT_COMMENT_ADD_SUBMIT}\" /></p>\r\n			</form>\r\n		</div>\r\n	<!-- END commentAddPart -->\r\n	<!-- END commentPart -->\r\n	\r\n</div>', 'Blogmeldung anzeigen', 'details', 'y', '257', 'off', 'system', '99', '1'),
('262', '17', '<div id=\"voting\">\r\n	<div class=\"form\">\r\n		<form name=\"VotingForm\" action=\"index.php?section=voting\" method=\"post\">\r\n			<h2>{VOTING_TITLE}</h2><em>gestartet am {VOTING_DATE}</em><br />\r\n			<div class=\"message\">{VOTING_MSG}</div>\r\n			<div class=\"votes\">\r\n                                {VOTING_RESULTS_TEXT}<br />\r\n			        {VOTING_RESULTS_TOTAL_VOTES}\r\n			</div>\r\n			<!-- BEGIN voting_email_input --> \r\n				Tragen Sie bitte Ihre E-Mail Adresse ein, damit Sie an der Umfrage teilnehmen k&ouml;nnen:<br /><br />\r\n				<p><label>E-Mail Adresse</label><input type=\"text\" name=\"votingemail\" value=\"{VOTING_EMAIL}\"/></p><br />\r\n		   	<!-- END voting_email_input -->\r\n			<br />\r\n                        <!-- BEGIN additional_fields -->\r\n                            Für diese Umfrage werden weitere Informationen von Ihnen benötigt:<br /><br />\r\n                            <!-- BEGIN additional_elements -->\r\n                            <p><label>{VOTING_ADDITIONAL_INPUT_LABEL}</label>{VOTING_ADDITIONAL_INPUT}</p>\r\n                            <!-- END additional_elements -->\r\n                        <!-- END additional_fields -->\r\n			<br />\r\n			{TXT_SUBMIT}\r\n		</form>\r\n	</div>\r\n	<div class=\"archive\">\r\n		<table width=\"100%\" border=\"0\">\r\n			<tbody>\r\n				<tr>\r\n					<th valign=\"top\" colspan=\"2\">{VOTING_OLDER_TITLE}</th>\r\n				</tr>\r\n				<!-- BEGIN votingRow -->\r\n				<tr class=\"{VOTING_LIST_CLASS}\">\r\n					<td nowrap=\"nowrap\">{VOTING_OLDER_DATE}&nbsp;</td>\r\n					<td nowrap=\"nowrap\">{VOTING_OLDER_TEXT}&nbsp;</td>\r\n				</tr>\r\n				<!-- END votingRow -->\r\n			</tbody>\r\n		</table>\r\n		<br />\r\n		{VOTING_PAGING}\r\n	</div>\r\n</div>', 'Umfragen', '', 'y', '0', 'on', 'system', '7', '1'),
('263', '33', '<script type=\"text/javascript\">\r\n<!--\r\nfunction toggle(target){\r\n    obj = document.getElementById(target);\r\n    obj.style.display = (obj.style.display==\'none\') ? \'inline\' : \'none\';  \r\n    if (obj.style.display==\'none\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'norm\';\r\n    }else if(obj.style.display==\'inline\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'exp\';\r\n    }\r\n}\r\n-->\r\n</script>\r\n<div id=\"market\">\r\n	<div class=\"search\">\r\n		<form action=\"index.php?\" method=\"get\" name=\"marketSearch\" id=\"marketSearch\">\r\n			<input name=\"term\" value=\"{TXT_MARKET_SEARCHTERM}\" size=\"25\" maxlength=\"100\" /><input type=\"hidden\" id=\"searchCheck\" name=\"check\" value=\"norm\" size=\"10\" /><input type=\"hidden\" name=\"section\" value=\"market\" size=\"10\" /><input type=\"hidden\" name=\"cmd\" value=\"search\" size=\"10\" />&nbsp;<input type=\"submit\" value=\"{TXT_MARKET_SEARCH}\" name=\"search\" />                  &nbsp;&raquo;&nbsp;<a href=\"javascript:toggle(\'hiddenSearch\')\" >{TXT_MARKET_SEARCH_EXP}</a><br />\r\n			<div style=\"display: none;\" id=\"hiddenSearch\"><br />\r\n			<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n				{MARKET_EXP_SEARCH_FIELD}\r\n			</table>\r\n			</div>\r\n		</form>\r\n	</div>\r\n	<div class=\"navtree\"><a href=\"index.php?section=market\">{TXT_MARKET}</a>{MARKET_CATEGORY_NAVI}</div>\r\n	<!-- BEGIN showCategoriesTitle -->\r\n		<div class=\"title\"><h2>{MARKET_CATEGORY_TITLE}</h2>{MARKET_CATEGORY_DESCRIPTION}</div>\r\n		<div class=\"type_selection\">{MARKET_TYPE_SECECTION}</div>\r\n	<!-- END showCategoriesTitle --> \r\n	<!-- BEGIN showCategories -->\r\n		<div class=\"categories\">\r\n			<div style=\"float: left; width: {MARKET_CATEGORY_ROW_WIDTH};\">{MARKET_CATEGORY_ROW1}</div>\r\n			<div style=\"float: left; width: {MARKET_CATEGORY_ROW_WIDTH};\">{MARKET_CATEGORY_ROW2}</div>\r\n		</div>\r\n	<!-- END showCategories -->   \r\n	<!-- BEGIN showEntriesHeader -->\r\n		<div class=\"entries\">\r\n			<table cellspacing=\"0\">\r\n				<tbody>\r\n					<tr>\r\n						<th valign=\"top\" nowrap=\"nowrap\" width=\"1%\"><a href=\"{MARKET_ENDDATE_SORT}\">{TXT_MARKET_ENDDATE}</a></th>\r\n						<th valign=\"top\" nowrap=\"nowrap\" width=\"1%\">&nbsp;</th>\r\n						<th valign=\"top\" nowrap=\"nowrap\" width=\"97%\"><a href=\"{MARKET_TITLE_SORT}\">{TXT_MARKET_TITLE}</a></th>\r\n						<th valign=\"top\" nowrap=\"nowrap\" width=\"1%\"><a href=\"{MARKET_PRICE_SORT}\">{TXT_MARKET_PRICE}</a></th>\r\n					</tr>\r\n					<!-- BEGIN showEntries -->\r\n					<tr class=\"{MARKET_ROW}\">\r\n						<td valign=\"top\" nowrap>{MARKET_ENDDATE}</td>\r\n						<td valign=\"top\"><a href=\"{MARKET_DETAIL}\">{MARKET_PICTURE}</a></td>\r\n						<td valign=\"top\"><strong><a href=\"{MARKET_DETAIL}\">{MARKET_TITLE}</a></strong><br />{MARKET_DESCRIPTION}</td>\r\n						<td valign=\"top\" nowrap>{MARKET_PRICE}</td>\r\n					</tr>\r\n					<!-- END showEntries -->\r\n				</tbody>\r\n			</table>\r\n		</div>\r\n	<!-- END showEntriesHeader --> \r\n	<!-- BEGIN noEntries -->\r\n		<div class=\"no_entries\">{MARKET_NO_ENTRIES_FOUND}</div>\r\n	<!-- END noEntries --> \r\n	<!-- BEGIN showInsertEntries -->\r\n		<div class=\"insert_entries\">{DIRECTORY_INSERT_ENTRIES}</div>\r\n	<!-- END showInsertEntries -->\r\n	<div id=\"paging\">{SEARCH_PAGING}</div>\r\n</div>', 'Inserate Markt', '', 'y', '0', 'on', 'system', '5', '1'),
('264', '33', '<script type=\"text/javascript\">\r\n<!--\r\nfunction toggle(target){\r\n    obj = document.getElementById(target);\r\n    obj.style.display = (obj.style.display==\'none\') ? \'inline\' : \'none\';  \r\n    if (obj.style.display==\'none\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'norm\';\r\n    }else if(obj.style.display==\'inline\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'exp\';\r\n    }\r\n}\r\n-->\r\n</script>\r\n<div id=\"market\">\r\n	<div class=\"search\">\r\n		<form action=\"index.php?\" method=\"get\" name=\"marketSearch\" id=\"marketSearch\">\r\n			<input name=\"term\" value=\"{TXT_MARKET_SEARCHTERM}\" size=\"25\" maxlength=\"100\" /><input type=\"hidden\" id=\"searchCheck\" name=\"check\" value=\"norm\" size=\"10\" /><input type=\"hidden\" name=\"section\" value=\"market\" size=\"10\" /><input type=\"hidden\" name=\"cmd\" value=\"search\" size=\"10\" />&nbsp;<input type=\"submit\" value=\"{TXT_MARKET_SEARCH}\" name=\"search\" />                  &nbsp;&raquo;&nbsp;<a href=\"javascript:toggle(\'hiddenSearch\')\" >{TXT_MARKET_SEARCH_EXP}</a><br />\r\n			<div style=\"display: none;\" id=\"hiddenSearch\"><br />\r\n			<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n				{MARKET_EXP_SEARCH_FIELD}\r\n			</table>\r\n			</div>\r\n		</form>\r\n	</div>\r\n	<div class=\"navtree\"><a href=\"index.php?section=market\">{TXT_MARKET}</a>{MARKET_CATEGORY_NAVI}</div>\r\n	<!-- BEGIN showCategoriesTitle -->\r\n		<div class=\"title\"><h2>{MARKET_CATEGORY_TITLE}</h2>{MARKET_CATEGORY_DESCRIPTION}</div>\r\n		<div class=\"type_selection\">{MARKET_TYPE_SECECTION}</div>\r\n	<!-- END showCategoriesTitle --> \r\n	<!-- BEGIN showCategories -->\r\n		<div class=\"categories\">\r\n			<div style=\"float: left; width: {MARKET_CATEGORY_ROW_WIDTH};\">{MARKET_CATEGORY_ROW1}</div>\r\n			<div style=\"float: left; width: {MARKET_CATEGORY_ROW_WIDTH};\">{MARKET_CATEGORY_ROW2}</div>\r\n		</div>\r\n	<!-- END showCategories -->   \r\n	<!-- BEGIN showEntriesHeader -->\r\n		<div class=\"entries\">\r\n			<table cellspacing=\"0\">\r\n				<tbody>\r\n					<tr>\r\n						<th valign=\"top\" nowrap=\"nowrap\" width=\"1%\"><a href=\"{MARKET_ENDDATE_SORT}\">{TXT_MARKET_ENDDATE}</a></th>\r\n						<th valign=\"top\" nowrap=\"nowrap\" width=\"1%\">&nbsp;</th>\r\n						<th valign=\"top\" nowrap=\"nowrap\" width=\"97%\"><a href=\"{MARKET_TITLE_SORT}\">{TXT_MARKET_TITLE}</a></th>\r\n						<th valign=\"top\" nowrap=\"nowrap\" width=\"1%\"><a href=\"{MARKET_PRICE_SORT}\">{TXT_MARKET_PRICE}</a></th>\r\n					</tr>\r\n					<!-- BEGIN showEntries -->\r\n					<tr class=\"{MARKET_ROW}\">\r\n						<td valign=\"top\" nowrap>{MARKET_ENDDATE}</td>\r\n						<td valign=\"top\"><a href=\"{MARKET_DETAIL}\">{MARKET_PICTURE}</a></td>\r\n						<td valign=\"top\"><strong><a href=\"{MARKET_DETAIL}\">{MARKET_TITLE}</a></strong><br />{MARKET_DESCRIPTION}</td>\r\n						<td valign=\"top\" nowrap>{MARKET_PRICE}</td>\r\n					</tr>\r\n					<!-- END showEntries -->\r\n				</tbody>\r\n			</table>\r\n		</div>\r\n	<!-- END showEntriesHeader --> \r\n	<!-- BEGIN noEntries -->\r\n		<div class=\"no_entries\">{MARKET_NO_ENTRIES_FOUND}</div>\r\n	<!-- END noEntries --> \r\n	<div id=\"paging\">{SEARCH_PAGING}</div>\r\n</div>', 'Inserat Suchen', 'search', 'y', '263', 'on', 'system', '0', '1'),
('265', '33', '<script type=\"text/javascript\">\r\n	<!--\r\n	function toggle(target){\r\n		obj = document.getElementById(target);\r\n		obj.style.display = (obj.style.display==\'none\') ? \'inline\' : \'none\';  \r\n		if (obj.style.display==\'none\' && target == \'hiddenSearch\'){\r\n			 document.getElementById(\'searchCheck\').value = \'norm\';\r\n		}else if(obj.style.display==\'inline\' && target == \'hiddenSearch\'){\r\n			 document.getElementById(\'searchCheck\').value = \'exp\';\r\n		}\r\n	}\r\n	\r\n	function CheckForm() {\r\n	  var errorMsg = \"\";\r\n	  with( document.formEntry ) {\r\n		if (type.value == \"\") {\r\n			errorMsg = errorMsg + \"- {TXT_MARKET_TYPE}\\n\";\r\n		}\r\n		if (title.value == \"\") {\r\n			errorMsg = errorMsg + \"- {TXT_MARKET_TITLE_ENTRY}\\n\";\r\n		} \r\n		if (description.value == \"\") {\r\n			errorMsg = errorMsg + \"- {TXT_MARKET_DESCRIPTION}\\n\";\r\n		}   \r\n		if (cat.value == \"\") {\r\n			errorMsg = errorMsg + \"- {TXT_MARKET_CATEGORIE}\\n\";\r\n		} \r\n		\r\n		{END_DATE_JS}\r\n	\r\n		if (userdetails.value == \"\") {\r\n			errorMsg = errorMsg + \"- {TXT_MARKET_USER_DETAIL}\\n\";\r\n		}\r\n		if (name.value == \"\") {\r\n			errorMsg = errorMsg + \"- {TXT_MARKET_NAME}\\n\";\r\n		}\r\n		if (email.value == \"\") {\r\n			errorMsg = errorMsg + \"- {TXT_MARKET_EMAIL}\\n\";\r\n		}else{\r\n			if (!matchType(\'^[_a-zA-Z0-9-]+(.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(.[a-zA-Z0-9-]+)*.(([0-9]{1,3})|([a-zA-Z]{2,3})|(aero|coop|info|museum|name))$\', email.value)){\r\n				errorMsg = errorMsg + \"- {TXT_MARKET_EMAIL}\\n\";\r\n			}\r\n		}\r\n		\r\n		if (errorMsg != \"\") \r\n		{\r\n			alert (\"{TXT_MARKET_FIELDS_REQUIRED}n{TXT_MARKET_THOSE_FIELDS_ARE_EMPTY}\\n\" + errorMsg);       \r\n			return false;\r\n		}else{\r\n			return true;\r\n		}\r\n	  }\r\n	}\r\n	\r\n	function matchType(pattern, value) {\r\n		var reg = new RegExp(pattern);\r\n		if (value.match(reg)) {\r\n			return true;\r\n		}\r\n		return false;\r\n	} \r\n	\r\n	-->\r\n	</script>\r\n<div id=\"market\">\r\n	<form name=\"formEntry\" enctype=\"multipart/form-data\" method=\"post\" action=\"index.php?section=market&cmd=confirm\" onsubmit=\"return CheckForm()\">\r\n	<input type=\"hidden\" name=\"id\" value=\"{MARKET_ENTRY_ID}\" >\r\n		<table width=\"100%\" cellspacing=\"0\" cellpadding=\"2\" border=\"0\" align=\"top\" class=\"adminlist\">\r\n			<tr>\r\n				<td nowrap=\"nowrap\">{TXT_MARKET_TYPE}<font color=\"red\"> *</font></td>\r\n				<td>\r\n					<input type=\"radio\" name=\"type\" value=\"offer\" {MARKET_ENTRY_TYPE_OFFER} />&nbsp;{TXT_MARKET_OFFER}\r\n					<input type=\"radio\" name=\"type\" value=\"search\" {MARKET_ENTRY_TYPE_SEARCH} />&nbsp;{TXT_MARKET_SEARCH}\r\n				</td>\r\n			</tr>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_TITLE_ENTRY}<font color=\"red\"> *</font></td>		\r\n				<td><input type=\"text\" name=\"title\" style=\"width: 300px;\" maxlength=\"100\" value=\"\" ></td>\r\n			</td>		\r\n			</tr>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_DESCRIPTION}<font color=\"red\"> *</font></td>\r\n				<td><textarea name=\"description\" rows=\"5\"  style=\"width: 300px; overflow: auto;\"></textarea></td>\r\n			</tr>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_PREMIUM}</td>		\r\n				<td><input type=\"checkbox\" name=\"premium\" value=\"1\" />&nbsp;<em>{TXT_MARKET_PREMIUM_CONDITIONS_NO}</em></td>\r\n			</td>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_PICTURE}</td>		\r\n				<td>{ENTRY_PICTURE}<input type=\"file\" name=\"pic\" size=\"38\" style=\"width: 304px;\" maxlength=\"100\"></td>\r\n			</td>	\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_CATEGORIE}<font color=\"red\"> *</font></td>		\r\n				<td><select name=\"cat\"  style=\"width: 305px;\">{MARKET_CATEGORIES}</select></td>\r\n			</td>	\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_PRICE}</td>		\r\n				<td><input type=\"text\" name=\"price\" style=\"width: 98px;\" maxlength=\"100\" value=\"\">&nbsp;&nbsp;<input type=\"checkbox\" name=\"forfree\" value=\"1\" />&nbsp;{TXT_MARKET_FOR_FREE}&nbsp;<input type=\"checkbox\" name=\"agreement\" value=\"1\"/>&nbsp;{TXT_MARKET_AGREEMENT}</td>\r\n			</td>\r\n					<!-- BEGIN end_date_dropdown -->\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_END_DATE}<font color=\"red\"> *</font></td>		\r\n				<td><select name=\"days\" style=\"width: 100px;\">{MARKET_DAYS_ONLINE}</select>&nbsp;&nbsp;{TXT_MARKET_DAYS}</td>\r\n			</td>\r\n			<!-- END end_date_dropdown -->\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_NAME}<font color=\"red\"> *</font></td>		\r\n				<td><input type=\"text\" name=\"name\" style=\"width: 300px;\" maxlength=\"100\" value=\"\"></td>\r\n			</td>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_EMAIL}<font color=\"red\"> *</font></td>		\r\n				<td><input type=\"text\" name=\"email\" style=\"width: 300px;\" maxlength=\"100\" value=\"\"></td>\r\n			</td>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_USER_DETAIL}<font color=\"red\"> *</font></td>		\r\n				<td>\r\n					<input type=\"radio\" name=\"userdetails\" value=\"1\" {MARKET_ENTRY_USERDETAILS_ON} />&nbsp;{TXT_MARKET_DETAIL_SHOW}\r\n					<input type=\"radio\" name=\"userdetails\" value=\"0\" />&nbsp;{TXT_MARKET_DETAIL_HIDE}\r\n				</td>\r\n			</td>\r\n			<!-- BEGIN spez_fields -->\r\n			<tr valign=\"top\" >\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_SPEZ_FIELD_NAME}</td>\r\n				<td>{MARKET_SPEZ_FIELD_INPUT}</td>\r\n			</td>\r\n			<!-- END spez_fields -->\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\"><br /></td>		\r\n				<td>\r\n					<input type=\"submit\" name=\"submitEntry\" value=\"{TXT_MARKET_SAVE}\" />\r\n				</td>\r\n			</td>\r\n		</table>\r\n	</form>\r\n</div>', 'Inserat erstellen', 'add', 'y', '263', 'on', 'system', '1', '1'),
('266', '33', '<script type=\"text/javascript\">\r\n<!--\r\nfunction CheckAGB() {\r\n   obj1 = document.getElementById(\'checkAGB\');\r\n   obj2 = document.getElementById(\'submit\');\r\n\r\n   obj2.disabled = !obj1.checked;  \r\n}\r\n-->\r\n</script>\r\n<div id=\"market\">\r\n	<!-- BEGIN codeForm --> \r\n	<div class=\"title\">{TXT_MARKET_TITLE}</h2></div>\r\n	<div class=\"message\">{TXT_MARKET_AGB}</div>\r\n	<div class=\"form\"><input type=\"checkbox\" id=\"checkAGB\" onclick=\"CheckAGB();\" name=\"checkAGB\" value=\"1\"/><label for=\"checkAGB\">&nbsp;{TXT_MARKET_CONFIRM}</label></div>\r\n	<div class=\"form\">{MARKET_FORM}</div>\r\n	<div class=\"message_error\">{MARKET_ERROR_CONFIRM}</div>\r\n	\r\n	<script type=\"text/javascript\">\r\n	<!--\r\n	CheckAGB();\r\n	-->\r\n	</script>\r\n	<!-- END codeForm --> \r\n\r\n	<!-- BEGIN infoText --> \r\n	<div id=\"title\"><h2>Erfolgreich eingetragen</h2></div>\r\n	<div class=\"message\">Ihr Inserat wurde erfolgreich eingetragen. Das Inserat wird nach erfolgreicher Pr&uuml;fung freigeschaltet. Sie werden pre E-Mail informiert.</div>\r\n	<!-- END infoText --> \r\n</div>', 'Insarat Aktivieren', 'confirm', 'y', '265', 'off', 'system', '99', '1'),
('267', '33', '<script type=\"text/javascript\">\r\n<!--\r\nfunction toggle(target){\r\n    obj = document.getElementById(target);\r\n    obj.style.display = (obj.style.display==\'none\') ? \'inline\' : \'none\';  \r\n    if (obj.style.display==\'none\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'norm\';\r\n    }else if(obj.style.display==\'inline\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'exp\';\r\n    }\r\n}\r\n\r\nfunction CheckAGB() {\r\n   obj1 = document.getElementById(\'checkAGB\');\r\n   obj2 = document.getElementById(\'submit\');\r\n\r\n   obj2.disabled = !obj1.checked;  \r\n}\r\n-->\r\n</script>\r\n<div id=\"marketSearch\">\r\n	<form action=\"index.php?\" method=\"get\" name=\"marketSearch\" id=\"marketSearch\">\r\n		<input name=\"term\" value=\"{TXT_MARKET_SEARCHTERM}\" size=\"25\" maxlength=\"100\" /><input type=\"hidden\" id=\"searchCheck\" name=\"check\" value=\"norm\" size=\"10\" /><input type=\"hidden\" name=\"section\" value=\"market\" size=\"10\" /><input type=\"hidden\" name=\"cmd\" value=\"search\" size=\"10\" />&nbsp;<input type=\"submit\" value=\"{TXT_MARKET_SEARCH}\" name=\"search\" />                  &nbsp;&raquo;&nbsp;<a onclick=\"javascript:toggle(\'hiddenSearch\')\" href=\"javascript:{}\">{TXT_MARKET_SEARCH_EXP}</a><br />\r\n		<div style=\"display: none;\" id=\"hiddenSearch\"><br />\r\n		<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n			{MARKET_EXP_SEARCH_FIELD}\r\n		</table>\r\n		</div>\r\n	</form>\r\n</div>\r\n<div id=\"marketNavtree\">\r\n<a href=\"index.php?section=market\">{TXT_MARKET}</a> &raquo; <a href=\"#\">Freischaltcode Eingeben</a>\r\n</div>\r\n\r\n<div id=\"directoryTitle\">\r\n<h2>{TXT_MARKET_CODE}</h2>\r\n</div>\r\n\r\n<div style=\"width: 100%; float: left; padding: 0px 0px 15px 0px; text-align-center;\">\r\n<b>{MARKET_CODE}</b>\r\n</div>\r\n\r\n<!-- BEGIN form --> \r\n<div style=\"width: 100%; float: left; padding: 0px 0px 15px 0px;\">\r\n{MARKET_FORM}\r\n</div>\r\n<div style=\"width: 100%; float: left; padding: 0px 0px 15px 0px;\">\r\n<font color=\"#ff0000\">{MARKET_ERROR_CONFIRM}</font>\r\n</div>\r\n<!-- END form --> ', 'Freischaltcode Eingeben', 'paypal_successfull', 'y', '266', 'off', 'system', '99', '1'),
('268', '33', '<script type=\"text/javascript\">\r\n<!--\r\nfunction toggle(target){\r\n    obj = document.getElementById(target);\r\n    obj.style.display = (obj.style.display==\'none\') ? \'inline\' : \'none\';  \r\n    if (obj.style.display==\'none\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'norm\';\r\n    }else if(obj.style.display==\'inline\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'exp\';\r\n    }\r\n}\r\n\r\nfunction CheckAGB() {\r\n   obj1 = document.getElementById(\'checkAGB\');\r\n   obj2 = document.getElementById(\'submit\');\r\n\r\n   obj2.disabled = !obj1.checked;  \r\n}\r\n-->\r\n</script>\r\n<div id=\"marketSearch\">\r\n	<form action=\"index.php?\" method=\"get\" name=\"marketSearch\" id=\"marketSearch\">\r\n		<input name=\"term\" value=\"{TXT_MARKET_SEARCHTERM}\" size=\"25\" maxlength=\"100\" /><input type=\"hidden\" id=\"searchCheck\" name=\"check\" value=\"norm\" size=\"10\" /><input type=\"hidden\" name=\"section\" value=\"market\" size=\"10\" /><input type=\"hidden\" name=\"cmd\" value=\"search\" size=\"10\" />&nbsp;<input type=\"submit\" value=\"{TXT_MARKET_SEARCH}\" name=\"search\" />                  &nbsp;&raquo;&nbsp;<a onclick=\"javascript:toggle(\'hiddenSearch\')\" href=\"javascript:{}\">{TXT_MARKET_SEARCH_EXP}</a><br />\r\n		<div style=\"display: none;\" id=\"hiddenSearch\"><br />\r\n		<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n			{MARKET_EXP_SEARCH_FIELD}\r\n		</table>\r\n		</div>\r\n	</form>\r\n</div>\r\n<div id=\"marketNavtree\">\r\n<a href=\"index.php?section=market\">{TXT_MARKET}</a> &raquo; <a href=\"#\">PayPal fehlgeschlagen</a>\r\n</div>\r\n\r\n<div id=\"directoryTitle\">\r\n<h2>{TXT_MARKET_TITLE}</h2>\r\n</div>\r\n\r\n<div style=\"width: 100%; float: left; padding: 0px 0px 15px 0px;\">\r\n{TXT_MARKET_AGB}\r\n</div>\r\n\r\n<div style=\"width: 100%; float: left; padding: 0px 0px 15px 0px;\">\r\n<font color=\"red\">{TXT_PAYPAL_ERROR}</font>\r\n</div>\r\n\r\n<div style=\"width: 100%; float: left; padding: 0px 0px 15px 0px;\">\r\n<input type=\"checkbox\" id=\"checkAGB\" onclick=\"CheckAGB();\" name=\"checkAGB\" value=\"1\"/><label for=\"checkAGB\">&nbsp;{TXT_MARKET_CONFIRM}</label>\r\n</div>\r\n\r\n<!-- BEGIN paypal --> \r\n<div style=\"width: 100%; float: left; padding: 0px 0px 15px 0px;\">\r\n<div style=\"float: left; width: 25%;\"><a href=\"http://www.paypal.ch\" target=\"_blank\" ><img src=\"/modules/shop/images/payments/logo_paypal.gif\" alt=\"\" border=\"0\" /></a></div>\r\n<div style=\"float: left; width: 5%;\"><br /></div>\r\n<div style=\"float: left; width: 68%;\">{MARKET_PAYPAL}</div>\r\n</div>\r\n<!-- END paypal --> \r\n\r\n<script type=\"text/javascript\">\r\n<!--\r\nCheckAGB();\r\n-->\r\n</script>', 'PayPal fehlgeschlagen', 'paypal_error', 'y', '266', 'off', 'system', '99', '1'),
('269', '33', '<div id=\"market\">\r\n	<form name=\"formEntry\" enctype=\"multipart/form-data\" method=\"post\" action=\"index.php?section=market&amp;cmd=del\">\r\n		<input type=\"hidden\" name=\"id\" value=\"{MARKET_ENTRY_ID}\" />\r\n		<div class=\"message\">{TXT_MARKET_CONFIRM_DEL}</div>\r\n		<div class=\"form\"><input type=\"submit\" name=\"submitEntry\" value=\"{TXT_MARKET_DEL}\" />&nbsp;<input type=\"button\" name=\"abort\" onclick=\"history.back()\" value=\"{TXT_MARKET_ABORT}\" /></div>\r\n	</form>\r\n</div>', 'Inserat löschen', 'del', 'y', '265', 'off', 'system', '99', '1'),
('270', '33', '<script type=\"text/javascript\">\r\n<!--\r\nfunction toggle(target){\r\n    obj = document.getElementById(target);\r\n    obj.style.display = (obj.style.display==\'none\') ? \'inline\' : \'none\';  \r\n    if (obj.style.display==\'none\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'norm\';\r\n    }else if(obj.style.display==\'inline\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'exp\';\r\n    }\r\n}\r\n\r\nfunction CheckForm() {\r\n  var errorMsg = \"\";\r\n  with( document.formEntry ) {\r\n  	if (type.value == \"\") {\r\n    	errorMsg = errorMsg + \"- {TXT_MARKET_TYPE}\\n\";\r\n    }\r\n    if (title.value == \"\") {\r\n        errorMsg = errorMsg + \"- {TXT_MARKET_TITLE_ENTRY}\\n\";\r\n    } \r\n    if (description.value == \"\") {\r\n        errorMsg = errorMsg + \"- {TXT_MARKET_DESCRIPTION}\\n\";\r\n    }   \r\n    if (cat.value == \"\") {\r\n        errorMsg = errorMsg + \"- {TXT_MARKET_CATEGORIE}\\n\";\r\n    } \r\n    if (userdetails.value == \"\") {\r\n        errorMsg = errorMsg + \"- {TXT_MARKET_USER_DETAIL}\\n\";\r\n    }\r\n    if (name.value == \"\") {\r\n        errorMsg = errorMsg + \"- {TXT_MARKET_NAME}\\n\";\r\n    }\r\n    if (email.value == \"\") {\r\n        errorMsg = errorMsg + \"- {TXT_MARKET_EMAIL}\\n\";\r\n    }else{\r\n    	if (!matchType(\'^[_a-zA-Z0-9-]+(.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(.[a-zA-Z0-9-]+)*.(([0-9]{1,3})|([a-zA-Z]{2,3})|(aero|coop|info|museum|name))$\', email.value)){\r\n    		errorMsg = errorMsg + \"- {TXT_MARKET_EMAIL}\\n\";\r\n    	}\r\n    }\r\n    \r\n    if (errorMsg != \"\") \r\n    {\r\n        alert (\"{TXT_MARKET_FIELDS_REQUIRED}n{TXT_MARKET_THOSE_FIELDS_ARE_EMPTY}\\n\" + errorMsg);       \r\n        return false;\r\n    }else{\r\n    	return true;\r\n    }\r\n  }\r\n}\r\n\r\nfunction matchType(pattern, value) {\r\n	var reg = new RegExp(pattern);\r\n	if (value.match(reg)) {\r\n		return true;\r\n	}\r\n	return false;\r\n} \r\n\r\n-->\r\n</script>\r\n<div id=\"market\">\r\n	<form name=\"formEntry\" enctype=\"multipart/form-data\" method=\"post\" action=\"index.php?section=market&cmd=edit\" onsubmit=\"return CheckForm()\">\r\n	<input type=\"hidden\" name=\"id\" value=\"{MARKET_ENTRY_ID}\" >\r\n	<input type=\"hidden\" name=\"picOld\" value=\"{MARKET_ENTRY_PICTURE_OLD}\" >\r\n		<table width=\"100%\" cellspacing=\"0\" cellpadding=\"2\" border=\"0\" align=\"top\" class=\"adminlist\">\r\n			<tr>\r\n				<td nowrap=\"nowrap\">{TXT_MARKET_TYPE}<font color=\"red\"> *</font></td>\r\n				<td>\r\n					<input type=\"radio\" name=\"type\" value=\"offer\" {MARKET_ENTRY_TYPE_OFFER} />&nbsp;{TXT_MARKET_OFFER}\r\n					<input type=\"radio\" name=\"type\" value=\"search\" {MARKET_ENTRY_TYPE_SEARCH} />&nbsp;{TXT_MARKET_SEARCH}\r\n				</td>\r\n			</tr>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_TITLE_ENTRY}<font color=\"red\"> *</font></td>		\r\n				<td><input type=\"text\" name=\"title\" style=\"width: 300px;\" maxlength=\"100\" value=\"{MARKET_ENTRY_TITLE}\" ></td>\r\n			</td>		\r\n			</tr>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_DESCRIPTION}<font color=\"red\"> *</font></td>\r\n				<td><textarea name=\"description\" rows=\"5\"  style=\"width: 300px; overflow: auto;\">{MARKET_ENTRY_DESCRIPTION}</textarea></td>\r\n			</tr>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_PICTURE}</td>		\r\n				<td>{MARKET_ENTRY_PICTURE}<input type=\"file\" name=\"pic\" size=\"38\" style=\"width: 304px;\" maxlength=\"100\"></td>\r\n			</td>	\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_CATEGORIE}<font color=\"red\"> *</font></td>		\r\n				<td><select name=\"cat\"  style=\"width: 305px;\">{MARKET_CATEGORIES}</select></td>\r\n			</td>	\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_PRICE}</td>		\r\n				<td><input type=\"text\" name=\"price\" style=\"width: 98px;\" maxlength=\"100\" value=\"{MARKET_ENTRY_PRICE}\">&nbsp;&nbsp;<input type=\"checkbox\" name=\"forfree\" value=\"1\"  {MARKET_ENTRY_FORFREE} />&nbsp;{TXT_MARKET_FOR_FREE}&nbsp;<input type=\"checkbox\" name=\"agreement\" value=\"1\" {MARKET_ENTRY_AGREEMENT} />&nbsp;{TXT_MARKET_AGREEMENT}</td>\r\n			</td>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_NAME}<font color=\"red\"> *</font></td>		\r\n				<td><input type=\"text\" name=\"name\" style=\"width: 300px;\" maxlength=\"100\" value=\"{MARKET_ENTRY_NAME}\"></td>\r\n			</td>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_EMAIL}<font color=\"red\"> *</font></td>		\r\n				<td><input type=\"text\" name=\"email\" style=\"width: 300px;\" maxlength=\"100\" value=\"{MARKET_ENTRY_EMAIL}\"></td>\r\n			</td>\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_USER_DETAIL}<font color=\"red\"> *</font></td>		\r\n				<td>\r\n					<input type=\"radio\" name=\"userdetails\" value=\"1\" {MARKET_ENTRY_USERDETAILS_ON} />&nbsp;{TXT_MARKET_DETAIL_SHOW}\r\n					<input type=\"radio\" name=\"userdetails\" value=\"0\" {MARKET_ENTRY_USERDETAILS_OFF} />&nbsp;{TXT_MARKET_DETAIL_HIDE}\r\n				</td>\r\n			</td>\r\n					<!-- BEGIN spez_fields -->\r\n			<tr valign=\"top\" >\r\n				<td nowrap=\"nowrap\" width=\"120\">{TXT_MARKET_SPEZ_FIELD_NAME}</td>\r\n				<td>{MARKET_SPEZ_FIELD_INPUT}</td>\r\n			</td>\r\n			<!-- END spez_fields -->\r\n			<tr valign=\"top\">\r\n				<td nowrap=\"nowrap\" width=\"120\"><br /></td>		\r\n				<td>\r\n					<input type=\"submit\" name=\"submitEntry\" value=\"{TXT_MARKET_SAVE}\" />\r\n				</td>\r\n			</td>\r\n	   </table>\r\n	</form>\r\n</div>', 'Inserat editieren', 'edit', 'y', '265', 'off', 'system', '99', '1'),
('271', '33', '<script type=\"text/javascript\">\r\n<!--\r\nfunction toggle(target){\r\n    obj = document.getElementById(target);\r\n    obj.style.display = (obj.style.display==\'none\') ? \'inline\' : \'none\';  \r\n    if (obj.style.display==\'none\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'norm\';\r\n    }else if(obj.style.display==\'inline\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'exp\';\r\n    }\r\n}\r\n\r\nfunction CheckForm() {\r\n  var errorMsg = \"\";\r\n  with( document.sendMessage) {\r\n    if (title.value == \"\") {\r\n    	errorMsg = errorMsg + \"- {TXT_MARKET_TITLE} <n\";\r\n    }\r\n    if (message.value == \"\") {\r\n        errorMsg = errorMsg + \"- {TXT_MARKET_MSG}\\n\";\r\n    } \r\n    if (email.value == \"\") {\r\n        errorMsg = errorMsg + \"- {TXT_MARKET_EMAIL}\\n\";\r\n    }else{\r\n    	if (!matchType(\'^[_a-zA-Z0-9-]+(.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(.[a-zA-Z0-9-]+)*.(([0-9]{1,3})|([a-zA-Z]{2,3})|(aero|coop|info|museum|name))$\', email.value)){\r\n    		errorMsg = errorMsg + \"- n\";\r\n    	}\r\n    }\r\n\r\n    if (errorMsg != \"\") \r\n    {\r\n        alert (\"{TXT_FIELDS_REQUIRED}n{TXT_THOSE_FIELDS_ARE_EMPTY}\\n\" + errorMsg);       \r\n        return false;\r\n    }else{\r\n    	return true;\r\n    }\r\n  }\r\n}\r\n\r\n\r\nfunction matchType(pattern, value) {\r\n	var reg = new RegExp(pattern);\r\n	if (value.match(reg)) {\r\n		return true;\r\n	}\r\n	return false;\r\n} \r\n-->\r\n</script>\r\n<div id=\"market\">\r\n	<div class=\"search\">\r\n		<form action=\"index.php?\" method=\"get\" name=\"marketSearch\" id=\"marketSearch\">\r\n			<input name=\"term\" value=\"{TXT_MARKET_SEARCHTERM}\" size=\"25\" maxlength=\"100\" /><input type=\"hidden\" id=\"searchCheck\" name=\"check\" value=\"norm\" size=\"10\" /><input type=\"hidden\" name=\"section\" value=\"market\" size=\"10\" /><input type=\"hidden\" name=\"cmd\" value=\"search\" size=\"10\" />&nbsp;<input type=\"submit\" value=\"{TXT_MARKET_SEARCH}\" name=\"search\" />                  &nbsp;&raquo;&nbsp;<a href=\"javascript:toggle(\'hiddenSearch\')\">{TXT_MARKET_SEARCH_EXP}</a><br />\r\n			<div style=\"display: none;\" id=\"hiddenSearch\"><br />\r\n			<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n				{MARKET_EXP_SEARCH_FIELD}\r\n			</table>\r\n			</div>\r\n		</form>\r\n	</div>\r\n	<div class=\"navtree\"><a href=\"index.php?section=market\">{TXT_MARKET}</a>{MARKET_CATEGORY_NAVI}</div>\r\n	<div class=\"title\"><h2>{MARKET_TITLE}</h2></div>\r\n	<div class=\"data\">\r\n		<div class=\"image\">{MARKET_PICTURE}</div>\r\n		<div class=\"description\"><b>{MARKET_TYPE}</b>&nbsp;<i>{MARKET_ENDDATE}&nbsp;</i><br /><br />{MARKET_DESCRIPTION}</div>\r\n	</div> \r\n	<div class=\"data\">\r\n		<table cellspacing=\"0\">\r\n			<tr>\r\n				<th colspan=\"2\">zus&auml;tzliche Informationen</th>\r\n			</tr>\r\n			<tr class=\"marketRow2\">\r\n				<td width=\"120\" nowrap=\"nowrap\">{TXT_MARKET_PRICE}</td>\r\n				<td>{MARKET_PRICE}</td>\r\n			</tr>\r\n			<tr class=\"marketRow3\">\r\n				<td nowrap=\"nowrap\">{TXT_MARKET_USER_DETAILS}</td>\r\n				<td>{MARKET_USER_DETAILS}</td>\r\n			</tr>\r\n		</table>\r\n	</div>\r\n	<div class=\"form\">\r\n		<fieldset> \r\n			<legend>{TXT_MARKET_MESSAGE}</legend>\r\n			<form name=\"sendMessage\" action=\"index.php?section=market&amp;cmd=send&amp;id={MARKET_ID}\" method=\"post\" onsubmit=\"return CheckForm()\">\r\n				<p><label for=\"title\">{TXT_MARKET_TITLE}</label><input name=\"title\" style=\"width: 300px;\" value=\"{TXT_MARKET_MSG_TITLE}{MARKET_TITLE}\" /></p>\r\n				<p><label for=\"name\">{TXT_MARKET_NAME}</label><input name=\"name\" style=\"width: 300px;\" value=\"\" /></p>\r\n				<p><label for=\"email\">{TXT_MARKET_EMAIL}</label><input name=\"email\" style=\"width: 300px;\" value=\"\" /></p>\r\n				<p><label for=\"price\">{TXT_MARKET_PRICE_MSG}</label><input name=\"price\" style=\"width: 300px;\" value=\"\" /></p>\r\n				<p><label for=\"newprice\">{TXT_MARKET_NEW_PRICE}</label><input name=\"newprice\" style=\"width: 300px;\" value=\"\" /></p>\r\n				<p><label for=\"message\">{TXT_MARKET_MSG}</label><textarea name=\"message\" style=\"width:300px; overflow: auto;\" rows=\'7\'></textarea></p>\r\n				<p><input type=\"submit\" name=\"sendMSG\" value=\"{TXT_MARKET_SEND}\" /></p>\r\n			</form>\r\n		</fieldset>\r\n	</div>\r\n	<div class=\"functions\">{MARKET_EDIT}&nbsp;|&nbsp;{MARKET_DEL}</div>\r\n</div>\r\n\r\n', 'Inserat anzeigen', 'detail', 'y', '263', 'off', 'system', '99', '1'),
('272', '33', '<script type=\"text/javascript\">\r\n<!--\r\nfunction toggle(target){\r\n    obj = document.getElementById(target);\r\n    obj.style.display = (obj.style.display==\'none\') ? \'inline\' : \'none\';  \r\n    if (obj.style.display==\'none\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'norm\';\r\n    }else if(obj.style.display==\'inline\' && target == \'hiddenSearch\'){\r\n         document.getElementById(\'searchCheck\').value = \'exp\';\r\n    }\r\n}\r\n-->\r\n</script>\r\n<div id=\"market\">\r\n	<div class=\"search\">\r\n		<form action=\"index.php?\" method=\"get\" name=\"marketSearch\" id=\"marketSearch\">\r\n			<input name=\"term\" value=\"{TXT_MARKET_SEARCHTERM}\" size=\"25\" maxlength=\"100\" /><input type=\"hidden\" id=\"searchCheck\" name=\"check\" value=\"norm\" size=\"10\" /><input type=\"hidden\" name=\"section\" value=\"market\" size=\"10\" /><input type=\"hidden\" name=\"cmd\" value=\"search\" size=\"10\" />&nbsp;<input type=\"submit\" value=\"{TXT_MARKET_SEARCH}\" name=\"search\" />                  &nbsp;&raquo;&nbsp;<a href=\"javascript:toggle(\'hiddenSearch\')\">{TXT_MARKET_SEARCH_EXP}</a><br />\r\n			<div style=\"display: none;\" id=\"hiddenSearch\"><br />\r\n			<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n				{MARKET_EXP_SEARCH_FIELD}\r\n			</table>\r\n			</div>\r\n		</form>\r\n	</div>\r\n	<div class=\"navtree\"><a href=\"index.php?section=market\">{TXT_MARKET}</a> &raquo; <a href=\"#\">{MARKET_TITLE}</a></div>\r\n	<div class=\"title\"><h2>{MARKET_TITLE}</h2></div>\r\n	<div class=\"message\">{MARKET_MSG_SEND}</div>\r\n	<div class=\"message\"><a href=\"javascript:history.back()\">{TXT_MARKET_BACK}</a></div>\r\n</div>', 'Mitteilung verschickt', 'send', 'y', '271', 'off', 'system', '99', '1'),
('273', '12', '<div id=\"directory\">\r\n	<div class=\"search\">{DIRECTORY_SEARCH}</div>\r\n	<div class=\"navtree\"><a href=\"index.php?section=directory\">{TXT_DIRECTORY_DIR}</a>{DIRECTORY_TREE}</div>\r\n	<!-- BEGIN showTitle --> \r\n		<div class=\"title\"><h2>{DIRECTORY_TITLE}</h2>{DIRECTORY_DESCRIPTION}</div>\r\n	<!-- END showTitle --> \r\n	<!-- BEGIN showCategories --> \r\n		<div class=\"categories\" >\r\n			<div style=\"float: left; width: {DIRECTORY_ROW_WIDTH};\">{DIRECTORY_ROW1}</div>\r\n			<div style=\"float: left; width: {DIRECTORY_ROW_WIDTH};\">{DIRECTORY_ROW2}</div>\r\n		</div>\r\n	<!-- END showCategories -->  \r\n	<!-- BEGIN showLatest --> \r\n		<div class=\"latest\"><h2>Neuste Verzeichnis Eintr&auml;ge</h2></div>\r\n	<!-- END showLatest -->\r\n	<!-- BEGIN showFeeds --> \r\n		<div class=\"feeds_{DIRECTORY_FEED_ROW}\">\r\n			<div class=\"image\">{DIRECTORY_FEED_LOGO_THUMB}</div>\r\n			<div class=\"infos\">\r\n				<a href=\"{DIRECTORY_FEED_DETAIL_LINK}\"><h3>{DIRECTORY_FEED_TITLE}</h3></a>\r\n				{DIRECTORY_FEED_DESCRIPTION}<br /><br />\r\n				{DIRECTORY_FEED_AVERAGE_VOTE}&nbsp;<em><a href=\"{DIRECTORY_FEED_VOTE_LINK}\">{DIRECTORY_FEED_COUNT_VOTES}</a></em><br />\r\n				<div style=\"display: none;\" id=\"voting_{DIRECTORY_FEED_ID}\"><br />{DIRECTORY_FEED_VOTE_IMG}</div>\r\n			</div>\r\n		</div>\r\n	<!-- END showFeeds -->  \r\n	<!-- BEGIN noFeeds --> \r\n		<div class=\"no_feeds\">{DIRECTORY_NO_FEEDS_FOUND}</div>\r\n	<!-- END noFeeds -->\r\n	<!-- BEGIN showInsertFeeds -->\r\n	 	<div class=\"insert_feeds\">{DIRECTORY_INSERT_FEEDS}</div>\r\n	<!-- END showInsertFeeds -->\r\n	<div class=\"paging\">{SEARCH_PAGING}<br /></div>\r\n</div>', 'Verzeichnis', '', 'y', '0', 'on', 'system', '4', '1'),
('274', '12', '<div id=\"directory\">\r\n	<div class=\"search\">{DIRECTORY_SEARCH}</div>\r\n	<div class=\"navtree\"><a href=\"index.php?section=directory\">{TXT_DIRECTORY_DIR}</a>{DIRECTORY_CATEGORY_NAVI}</div>\r\n	<!-- BEGIN showFeeds --> \r\n		<div class=\"feeds_{DIRECTORY_FEED_ROW}\">\r\n			<div class=\"image\">{DIRECTORY_FEED_LOGO_THUMB}</div>\r\n			<div class=\"infos\">\r\n				<a href=\"{DIRECTORY_FEED_DETAIL_LINK}\"><h3>{DIRECTORY_FEED_TITLE}</h3></a>\r\n				{DIRECTORY_FEED_DESCRIPTION}<br /><br />\r\n				{DIRECTORY_FEED_AVERAGE_VOTE}&nbsp;<em><a href=\"{DIRECTORY_FEED_VOTE_LINK}\">{DIRECTORY_FEED_COUNT_VOTES}</a></em><br />\r\n				<div style=\"display: none;\" id=\"voting_{DIRECTORY_FEED_ID}\"><br />{DIRECTORY_FEED_VOTE_IMG}</div>\r\n			</div>\r\n		</div>\r\n	<!-- END showFeeds -->  \r\n	<div class=\"paging\">{SEARCH_PAGING}</div>\r\n</div>\r\n', 'Neue Einträge', 'latest', 'y', '273', 'on', 'system', '0', '1'),
('275', '12', '<div id=\"directory\">\r\n	<!-- BEGIN showFeeds --> \r\n		<div class=\"feeds_{DIRECTORY_FEED_ROW}\">\r\n			<div class=\"image\">{DIRECTORY_FEED_LOGO_THUMB}</div>\r\n			<div class=\"infos\">\r\n				<a href=\"{DIRECTORY_FEED_DETAIL_LINK}\"><h3>{DIRECTORY_FEED_TITLE}</h3></a>\r\n				{DIRECTORY_FEED_DESCRIPTION}<br /><br />\r\n				<a href=\"{DIRECTORY_FEED_EDIT_LINK}\">{DIRECTORY_FEED_EDIT}</a>&nbsp;&nbsp;|&nbsp;&nbsp;{DIRECTORY_FEED_AVERAGE_VOTE}&nbsp;<em>{DIRECTORY_FEED_COUNT_VOTES}</em><br />\r\n			</div>\r\n		</div>\r\n	<!-- END showFeeds -->  \r\n	<!-- BEGIN noFeeds --> \r\n		<div class=\"no_feeds\">{DIRECTORY_NO_FEEDS_FOUND}</div>\r\n	<!-- END noFeeds -->\r\n	<div class=\"paging\">{SEARCH_PAGING}</div>\r\n</div>', 'Meine Einträge', 'myfeeds', 'y', '273', 'on', 'system', '1', '1'),
('276', '12', '{DIRECTORY_JAVASCRIPT}\r\n\r\n<div id=\"directory\">\r\n	<!-- BEGIN directoryMessage -->\r\n		<div class=\"message\">{DIRECTORY_FEED_UPDATED}<br /><br />{TXT_DIRECTORY_BACK}</div>\r\n	<!-- END directoryMessage -->\r\n	<!-- BEGIN directoryInputFields -->\r\n		<div class=\"fields\">\r\n			<form name=\"addForm\" enctype=\"multipart/form-data\" method=\"post\" action=\"index.php?section=directory&amp;cmd=edit\" onSubmit=\"{DIRECTORY_FORM_ONSUBMIT}\">\r\n			<input type=\"hidden\" name=\"edit_id\" size=\"10\" value=\"{DIRECTORY_ID}\" /> \r\n				<table width=\"100%\" cellspacing=\"5\" cellpadding=\"0\" border=\"0\" id=\"directory\">\r\n					<tbody>\r\n						<tr>\r\n							<td width=\"120\" valign=\"top\">{TXT_DIRECTORY_CATEGORY}:<font color=\"red\">*</font></td>\r\n							<td>\r\n								<table width=\"100%\" border=\"0\">\r\n									<tr> \r\n										<td width=\"170\">\r\n											<select name=\"notSelectedCat[]\" size=\"12\" style=\"width:170px;\" multiple=\"multiple\">\r\n											{DIRECTORY_CATEGORY_DESELECTED}\r\n											</select>\r\n										</td>\r\n										<td width=\"50\"> \r\n											<div align=\"center\"> \r\n												<input type=\"button\" value=\" &gt;&gt; \" name=\"addCat\" onclick=\"add(document.addForm.elements[\'notSelectedCat[]\'],document.addForm.elements[\'selectedCat[]\'],addCat,removeCat);\" />\r\n												<br />\r\n												<input type=\"button\" value=\" &lt;&lt; \" name=\"removeCat\" onclick=\"remove(document.addForm.elements[\'notSelectedCat[]\'],document.addForm.elements[\'selectedCat[]\'],addCat,removeCat);\" />\r\n												<br /><br />\r\n											</div>\r\n										</td>\r\n										<td> \r\n											<select name=\"selectedCat[]\" size=\"12\" style=\"width:170px;\" multiple=\"multiple\">\r\n											{DIRECTORY_CATEGORY_SELECTED}\r\n											</select>\r\n										</td>\r\n									</tr>\r\n								</table>\r\n							</td>\r\n						</tr>\r\n						<!-- BEGIN directoryLevels -->\r\n						<tr>\r\n							<td width=\"120\" valign=\"top\">{TXT_DIRECTORY_LEVEL}:<font color=\"red\">*</font></td>\r\n							<td>\r\n								<table width=\"100%\" border=\"0\">\r\n									<tr> \r\n										<td width=\"170\">\r\n											<select name=\"notSelectedLevel[]\" size=\"12\" style=\"width:170px;\" multiple=\"multiple\">\r\n											{DIRECTORY_LEVELS_DESELECTED}\r\n											</select>\r\n										</td>\r\n										<td width=\"50\"> \r\n											<div align=\"center\"> \r\n												<input type=\"button\" value=\" &gt;&gt; \" name=\"addLevel\" onclick=\"add(document.addForm.elements[\'notSelectedLevel[]\'],document.addForm.elements[\'selectedLevel[]\'],addLevel,removeLevel);\" />\r\n												<br />\r\n												<input type=\"button\" value=\" &lt;&lt; \" name=\"removeLevel\" onclick=\"remove(document.addForm.elements[\'notSelectedLevel[]\'],document.addForm.elements[\'selectedLevel[]\'],addLeve,removeLevel);\" />\r\n												<br /><br />\r\n											</div>\r\n										</td>\r\n										<td>\r\n											<select name=\"selectedLevel[]\" size=\"12\" style=\"width:170px;\" multiple=\"multiple\">\r\n											{DIRECTORY_LEVELS_SELECTED}\r\n											</select>\r\n										</td>\r\n									</tr>\r\n								</table>\r\n							</td>\r\n						</tr>\r\n						<!-- END directoryLevels -->\r\n					</tbody>\r\n				</table>\r\n				<table width=\"100%\" cellspacing=\"5\" cellpadding=\"0\" border=\"0\" id=\"directory\">\r\n					<tbody>\r\n						<!-- BEGIN inputfieldsOutput -->\r\n						<tr>\r\n							<td width=\"120\" valign=\"top\">{FIELD_NAME}:{FIELD_REQUIRED}</td>\r\n							<td>{FIELD_VALUE}</td>\r\n						</tr>\r\n						<!-- END inputfieldsOutput -->\r\n						<tr>\r\n							<td width=\"120\" valign=\"top\"><br /></td>\r\n							<td><input type=\"submit\" name=\"edit_submit\" value=\"{TXT_DIRECTORY_UPDATE}\" /></td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n			</form>\r\n		</div>\r\n	<!-- END directoryInputFields -->\r\n</div>\r\n{DIRECTORY_GOOGLEMAP_JAVASCRIPT_BLOCK}\r\n', 'Eintrag editieren', 'edit', 'y', '275', 'off', 'system', '99', '1'),
('277', '12', '{DIRECTORY_JAVASCRIPT}\r\n\r\n<div id=\"directory\">\r\n	<!-- BEGIN directoryMessage -->\r\n		<div class=\"message\">{DIRECTORY_FEED_ADDED}<br /><br />{TXT_DIRECTORY_BACK}</div>\r\n	<!-- END directoryMessage -->\r\n	<!-- BEGIN directoryInputFields -->\r\n		<div class=\"fields\">\r\n			<form name=\"addForm\" enctype=\"multipart/form-data\" method=\"post\" action=\"index.php?section=directory&amp;cmd=add\" onsubmit=\"{DIRECTORY_FORM_ONSUBMIT}\">\r\n				<table width=\"100%\" cellspacing=\"5\" cellpadding=\"0\" border=\"0\" id=\"directory\">\r\n					<tbody>\r\n						<tr>\r\n							<td width=\"120\" valign=\"top\">{TXT_DIRECTORY_CATEGORY}:<font color=\"red\">*</font></td>\r\n							<td>\r\n								<table border=\"0\">\r\n									<tr> \r\n										<td width=\"170\">\r\n											<select name=\"notSelectedCat[]\" size=\"12\" style=\"width:170px;\" multiple=\"multiple\">\r\n											{DIRECTORY_CATEGORIES_DESELECTED}\r\n											</select>\r\n										</td>\r\n										<td width=\"50\"> \r\n											<div align=\"center\"> \r\n												<input type=\"button\" value=\" &gt;&gt; \" name=\"addCat\" onclick=\"addCategoryLevel(document.addForm.elements[\'notSelectedCat[]\'],document.addForm.elements[\'selectedCat[]\'],addCat,removeCat);\" />\r\n												<br />\r\n												<input type=\"button\" value=\" &lt;&lt; \" name=\"removeCat\" onclick=\"removeCategoryLevel(document.addForm.elements[\'notSelectedCat[]\'],document.addForm.elements[\'selectedCat[]\'],addCat,removeCat);\" />\r\n												<br /><br />\r\n											</div>\r\n										</td>\r\n										<td> \r\n											<select name=\"selectedCat[]\" size=\"12\" style=\"width:170px;\" multiple=\"multiple\">\r\n											</select>\r\n										</td>\r\n									</tr>\r\n								</table>\r\n							</td>\r\n						</tr>\r\n						<!-- BEGIN directoryLevels -->\r\n						<tr>\r\n							<td width=\"120\" valign=\"top\">{TXT_DIRECTORY_LEVEL}:<font color=\"red\">*</font></td>\r\n							<td>\r\n								<table width=\"100%\" border=\"0\">\r\n									<tr> \r\n										<td width=\"170\">\r\n											<select name=\"notSelectedLevel[]\" size=\"12\" style=\"width:170px;\" multiple=\"multiple\">\r\n											{DIRECTORY_LEVELS_DESELECTED}\r\n											</select>\r\n										</td>\r\n										<td width=\"50\"> \r\n											<div align=\"center\"> \r\n												<input type=\"button\" value=\" &gt;&gt; \" name=\"addLevel\" onclick=\"addCategoryLevel(document.addForm.elements[\'notSelectedLevel[]\'],document.addForm.elements[\'selectedLevel[]\'],addLevel,removeLevel);\" />\r\n												<br />\r\n												<input type=\"button\" value=\" &lt;&lt; \" name=\"removeLevel\" onclick=\"removeCategoryLevel(document.addForm.elements[\'notSelectedLevel[]\'],document.addForm.elements[\'selectedLevel[]\'],addLeve,removeLevel);\" />\r\n												<br /><br />\r\n											</div>\r\n										</td>\r\n										<td> \r\n											<select name=\"selectedLevel[]\" size=\"12\" style=\"width:170px;\" multiple=\"multiple\">\r\n											{DIRECTORY_LEVELS_SELECTED}\r\n											</select>\r\n										</td>\r\n									</tr>\r\n								</table>\r\n							</td>\r\n						</tr>\r\n						<!-- END directoryLevels -->\r\n					</tbody>\r\n				</table>\r\n				<table width=\"100%\" cellspacing=\"5\" cellpadding=\"0\" border=\"0\" id=\"directory\">\r\n					<tbody>\r\n						<!-- BEGIN inputfieldsOutput -->\r\n						<tr>\r\n							<td width=\"120\" valign=\"top\">{FIELD_NAME}:{FIELD_REQUIRED}</td>\r\n							<td>{FIELD_VALUE}</td>\r\n						</tr>\r\n						<!-- END inputfieldsOutput -->\r\n						<tr>\r\n							<td width=\"120\" valign=\"top\"><br /></td>\r\n							<td><input type=\"submit\" name=\"addSubmit\" value=\"{TXT_DIRECTORY_ADD}\" /></td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n			</form>\r\n		</div>\r\n	<!-- END directoryInputFields -->\r\n</div>\r\n\r\n{DIRECTORY_GOOGLEMAP_JAVASCRIPT_BLOCK}\r\n', 'Eintrag erstellen', 'add', 'y', '273', 'on', 'system', '2', '1'),
('278', '12', '<div id=\"directory\">\r\n	<div class=\"title\"><h2>{DIRECTORY_VOTE_TITLE}</h2></div>\r\n	<div class=\"message\">{DIRECTORY_VOTE_TEXT}<br /><br />{DIRECTORY_BACK}</div>\r\n</div>', 'Vote', 'vote', 'y', '273', 'off', 'system', '99', '1'),
('279', '12', '<div id=\"directory\">\r\n	<div class=\"search\">{DIRECTORY_SEARCH}</div>\r\n	<div class=\"navtree\"><a href=\"index.php?section=directory\">{TXT_DIRECTORY_DIR}</a>{DIRECTORY_CATEGORY_NAVI}</div>\r\n	<!-- BEGIN feedDetails -->\r\n		<div class=\"feed\">\r\n			<h2>{DIRECTORY_FEED_TITLE}</h2>\r\n			<div class=\"image\">{DIRECTORY_FEED_SPEZ_FIELD_11}<!--{DIRECTORY_FEED_LOGO}--></div>\r\n			<div class=\"infos\">{DIRECTORY_FEED_DESCRIPTION}</div>\r\n                        <div>{DIRECTORY_FEED_LINK}</div>\r\n			<div>{DIRECTORY_FEED_GOOGLEMAP}</div> 	\r\n			<div>{DIRECTORY_FEED_RSS_LINK}</div> \r\n		</div>\r\n	<!-- END feedDetails -->\r\n</div>\r\n{DIRECTORY_GOOGLEMAP_JAVASCRIPT_BLOCK}\r\n\r\n', 'Eintrag anzeigen', 'detail', 'y', '273', 'off', 'system', '99', '1'),
('280', '12', '<div id=\"directory\">\r\n	<div class=\"search\">{DIRECTORY_SEARCH}</div>\r\n	<div class=\"navtree\"><a href=\"index.php?section=directory\">{TXT_DIRECTORY_DIR}</a>{DIRECTORY_CATEGORY_NAVI}</div>\r\n	<!-- BEGIN showResults --> \r\n		<div class=\"feeds_{DIRECTORY_FEED_ROW}\">\r\n			<div class=\"image\">{DIRECTORY_FEED_LOGO_THUMB}</div>\r\n			<div class=\"infos\">\r\n				<a href=\"{DIRECTORY_FEED_DETAIL_LINK}\"><h3>{DIRECTORY_FEED_TITLE}</h3></a>\r\n				{DIRECTORY_FEED_DESCRIPTION}<br /><br />\r\n				{DIRECTORY_FEED_AVERAGE_VOTE}&nbsp;<em><a href=\"{DIRECTORY_FEED_VOTE_LINK}\">{DIRECTORY_FEED_COUNT_VOTES}</a></em><br />\r\n				<div style=\"display: none;\" id=\"voting_{DIRECTORY_FEED_ID}\"><br />{DIRECTORY_FEED_VOTE_IMG}</div>\r\n			</div>\r\n		</div>\r\n	<!-- END showResults -->  \r\n	<!-- BEGIN noResults --> \r\n		<div class=\"no_feeds\">{DIRECTORY_NO_FEEDS_FOUND}</div>\r\n	<!-- END noResults -->\r\n	<div class=\"paging\">{SEARCH_PAGING}</div>\r\n</div>', 'Suche', 'search', 'y', '273', 'off', 'system', '99', '1'),
('281', '20', '{FORUM_JAVASCRIPT} \r\n{FORUM_JAVASCRIPT_GOTO}\r\n<div id=\"forum\">\r\n	<div class=\"links\">\r\n		{FORUM_COMMUNITY_LINKS}\r\n	</div>\r\n	<div class=\"latest\">\r\n		<h2>{TXT_FORUM_LATEST_ENTRIES}</h2>\r\n		<table cellspacing=\"0\">\r\n			<tr>\r\n				<th width=\"97%\">{TXT_FORUM_THREAD}</th>\r\n				<th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_FORUM_THREAD_STRATER}</th>		\r\n				<th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_FORUM_POST_COUNT}</th>		\r\n				<th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_FORUM_THREAD_CREATE_DATE}</th>\r\n			</tr>\r\n			<!-- BEGIN latestPosts -->\r\n			<tr class=\"row{FORUM_ROWCLASS}\">\r\n				<td>{FORUM_THREAD}</td>\r\n				<td nowrap=\"nowrap\" align=\"right\" class=\"smallfont\">{FORUM_THREAD_STARTER}</td>\r\n				<td nowrap=\"nowrap\" align=\"right\">{FORUM_POST_COUNT}</td>\r\n				<td nowrap=\"nowrap\" align=\"right\">{FORUM_THREAD_CREATE_DATE}</td>\r\n			</tr>	\r\n			<!-- END latestPosts -->	\r\n		</table>\r\n	</div>\r\n	<!-- BEGIN forumMainCategory -->\r\n	<div class=\"category\">\r\n		<h2>{FORUM_MAINCATEGORY_NAME_TITLE}</h2>{FORUM_MAINCATEGORY_NAME_DESCRIPTION}\r\n		<div style=\"display: block;\" id=\"maincat_{FORUM_MAINCATEGORY_ID}\">\r\n			<table cellspacing=\"0\">\r\n				<tr>\r\n					<th width=\"97%\">{TXT_FORUM}</th>\r\n					<th width=\"1%\" nowrap=\"nowrap\">{TXT_LASTPOST}</th>		\r\n					<th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_THREADS}</th>		\r\n				</tr>\r\n				<!-- BEGIN forumSubCategory -->\r\n				<tr class=\"row{FORUM_SUBCATEGORY_ROWCLASS}\">\r\n					<td valign=\"top\">\r\n						<div style=\"padding-left: {FORUM_SUBCATEGORY_SPACER}px;\" title=\"{FORUM_SUBCATEGORY_DESC}\">\r\n							<strong><a title=\"{FORUM_SUBCATEGORY_NAME}\" href=\"index.php?section=forum&amp;cmd=board&amp;id={FORUM_SUBCATEGORY_ID}\">{FORUM_SUBCATEGORY_NAME}</a></strong><br />\r\n							{FORUM_SUBCATEGORY_DESC}\r\n						</div>\r\n					</td>\r\n					<td nowrap=\"nowrap\" valign=\"top\" class=\"smallfont\">{FORUM_SUBCATEGORY_LASTPOST_TITLE}<br />{FORUM_SUBCATEGORY_LASTPOST_DATE}</td>\r\n					<td nowrap=\"nowrap\" align=\"right\" valign=\"top\">{FORUM_SUBCATEGORY_THREADS}</td>\r\n				</tr>	\r\n				<!-- END forumSubCategory -->\r\n			</table>\r\n		</div>\r\n	</div>\r\n	<!-- END forumMainCategory --> \r\n</div>', 'Forum', '', 'y', '0', 'on', 'system', '3', '1'),
('282', '20', '{FORUM_JAVASCRIPT_NOTIFICATION}\r\n<div id=\"forum\">\r\n	<div class=\"links\">\r\n		{FORUM_COMMUNITY_LINKS}\r\n	</div>\r\n	<!-- BEGIN notification -->\r\n	<form id=\"frmForumNotification\" action=\"index.php?section=forum&amp;cmd=notification\" method=\"post\" onsubmit=\"SelectAllList(document.getElementById(\'frmForumNotification\').elements[\'subscribed[]\']);\">\r\n		<div class=\"notification\">\r\n			<h2>{TXT_FORUM_THREAD_NOTIFICATION}</h2>\r\n			<div class=\"notification_left\">\r\n				<h3>Verf&uuml;gbare Foren/Kategorien</h3>\r\n				<select name=\"unsubscribed[]\" size=\"32\" style=\"width:225px;\" multiple=\"multiple\">\r\n				{FORUM_NOTIFICATION_UNSUBSCRIBED}\r\n				</select>\r\n				<br />\r\n				<a href=\"javascript:SelectAllList(document.getElementById(\'frmForumNotification\').elements[\'unsubscribed[]\']);\">{TXT_SELECT_ALL}<br />\r\n				</a><a href=\"javascript:DeselectAllList(document.getElementById(\'frmForumNotification\').elements[\'unsubscribed[]\']);\">{TXT_DESELECT_ALL}</a><br />\r\n				<br />\r\n				<input type=\"submit\" value=\"{TXT_FORUM_NOTIFICATION_SUBMIT}\" name=\"forumNotificationSubmit\" />\r\n			</div>\r\n			<div class=\"notification_center\">\r\n				<input type=\"button\" value=\"&gt;&gt;\" name=\"adduser\" onclick=\"AddToTheList(document.getElementById(\'frmForumNotification\').elements[\'unsubscribed[]\'],document.getElementById(\'frmForumNotification\').elements[\'subscribed[]\'],adduser,removeuser);\" /><br />\r\n				<input type=\"button\" value=\"&lt;&lt;\" name=\"removeuser\" onclick=\"RemoveFromTheList(document.getElementById(\'frmForumNotification\').elements[\'unsubscribed[]\'],document.getElementById(\'frmForumNotification\').elements[\'subscribed[]\'],adduser,removeuser);\" />\r\n			</div>\r\n			<div class=\"notification_right\">\r\n				<h3>Abonnierte Foren/Kategorien</h3>\r\n				<select name=\"subscribed[]\" size=\"32\" style=\"width:225px;\" multiple=\"multiple\">\r\n				{FORUM_NOTIFICATION_SUBSCRIBED}\r\n				</select>\r\n				<br />\r\n				<a href=\"javascript:SelectAllList(document.getElementById(\'frmForumNotification\').elements[\'subscribed[]\']);\">{TXT_SELECT_ALL}<br />\r\n				</a><a href=\"javascript:DeselectAllList(document.getElementById(\'frmForumNotification\').elements[\'subscribed[]\']);\">{TXT_DESELECT_ALL}</a>\r\n			</div>\r\n		</div>\r\n	</form>\r\n	<!-- END notification -->\r\n</div>', 'Abonnierte Foren/Kategorien', 'notification', 'y', '281', 'on', 'system', '0', '1'),
('283', '20', 'Eine <strong>Tag Cloud</strong> ist eine Methode zur Informationsvisualisierung, bei der eine Liste aus Schlagworten zweidimensional alphabetisch sortiert angezeigt wird, wobei einzelne unterschiedlich gewichtete Worte gr&ouml;sser oder auf andere Weise hervorgehoben dargestellt werden. Wortwolken werden zunehmend beim gemeinschaftlichen Indexieren und in Blogs eingesetzt. [<a target=\"_blank\" href=\"http://de.wikipedia.org/wiki/Tag_cloud\">Quelle</a>]\r\n<h2 class=\"blogTitle\">Beliebteste Tags</h2>\r\n{FORUM_TAG_HITLIST}\r\n<h2 class=\"blogTitle\">Tag Cloud</h2>\r\n<div style=\"text-align: justify; margin-top: 20px;\">{FORUM_TAG_CLOUD}</div>', 'Tag Cloud', 'cloud', 'y', '281', 'on', 'system', '1', '1'),
('284', '20', '<div id=\"forum\">\r\n	<h2>Nach Aufrufe</h2>\r\n	<div class=\"div_board\">\r\n		<ol>\r\n		<!-- BEGIN mostViewed -->\r\n		<li>\r\n			<a href=\"{FORUM_MOST_VIEWED_LINK}\" title=\"{FORUM_MOST_VIEWED_SUBJECT}\">\r\n				{FORUM_MOST_VIEWED_SUBJECT} ({FORUM_MOST_VIEWED_VIEWS} mal aufgerufen)\r\n			</a><br />\r\n			Stichworte: {FORUM_MOST_VIEWED_KEYWORDS}\r\n			Inhalt: {FORUM_MOST_VIEWED_CONTENT}\r\n		</li>\r\n		<!-- END mostViewed -->\r\n		<ol>\r\n	</div>\r\n	<h2>Nach Bewertung</h2>\r\n	<div class=\"div_board\">\r\n		<ol>\r\n		<!-- BEGIN topRated -->\r\n		<li>\r\n		<a href=\"{FORUM_TOP_RATED_LINK}\" title=\"{FORUM_SUBJECT}\">\r\n			{FORUM_TOP_RATED_SUBJECT} (Bewertung: {FORUM_TOP_RATED_RATING})\r\n		</a><br />\r\n		Stichworte: {FORUM_TOP_RATED_KEYWORDS}\r\n		Inhalt: {FORUM_TOP_RATED_CONTENT}\r\n		</li>\r\n		<!-- END topRated -->\r\n		</ol>\r\n	</div>\r\n</div>', 'Populärste Diskussionen', 'toplist', 'y', '281', 'on', 'system', '2', '1'),
('285', '20', '<div id=\"forum\">\r\n	<div class=\"text\">\r\n		Hier kann in allen Beiträgen nach Stichworten gesucht werden. <br />\r\n		Wenn Sie auch den Inhalt der Diskussionen anstatt nur deren Stichworte durchsuchen wollen,\r\n		aktivieren Sie die das Kästchen neben dem Suchfeld. <br /> <br />\r\n	</div>\r\n	<!-- BEGIN forumError -->\r\n		<div class=\"message_error\">{FORUM_ERROR}</div>\r\n	<!-- END forumError -->\r\n	<div class=\"searchform\">\r\n		<form action=\"index.php\" method=\"get\">\r\n			<input type=\"hidden\" value=\"forum\" name=\"section\">\r\n			<input type=\"hidden\" value=\"searchTags\" name=\"cmd\">\r\n			<input style=\"width: 250px;\" type=\"text\" name=\"term\" value=\"{FORUM_SEARCH_TERM}\">  <input type=\"submit\" name=\"search\" value=\"Suchen\" /><br /><br />\r\n			<input type=\"checkbox\" value=\"1\" id=\"srchContent\" name=\"searchContent\" {FORUM_SEARCH_CONTENT_CHECKED} /><label for=\"srchContent\">Inhalt auch durchsuchen</label>\r\n		</form>\r\n	</div>\r\n	<div class=\"threads\">\r\n		<ul>\r\n			<!-- BEGIN threadList -->\r\n				<li style=\"list-item: none;\"><a title=\"{FORUM_THREAD_SUBJECT}\" href=\"{FORUM_THREAD_LINK}\"> {FORUM_THREAD_SUBJECT} </a><br />\r\n				Stichworte: {FORUM_THREAD_KEYWORDS} <br /> \r\n				Inhalt: {FORUM_THREAD_CONTENT}<br /><br /></li>\r\n			<!-- END threadList -->\r\n		</ul>\r\n	</div>\r\n</div>', 'Suche nach Tags', 'searchTags', 'y', '281', 'on', 'system', '3', '1'),
('286', '20', '{FORUM_JAVASCRIPT_GOTO}\r\n{FORUM_JAVASCRIPT_DELETE} \r\n{FORUM_JAVASCRIPT_SCROLLTO}\r\n{FORUM_JAVASCRIPT_INSERT_TEXT}\r\n<div id=\"forum\">\r\n	<div class=\"links\">\r\n		{FORUM_COMMUNITY_LINKS}\r\n	</div>\r\n	<div class=\"navtree\">\r\n		{FORUM_TREE}{FORUM_NAME}\r\n		<span style=\"color: rgb(255, 0, 0);\">{TXT_FORUM_ERROR}&nbsp;</span>\r\n		<span style=\"color: #006900;\">{TXT_FORUM_SUCCESS}&nbsp;</span>\r\n	</div>\r\n	<div class=\"dropdown\">\r\n		{FORUM_DROPDOWN}\r\n	</div>\r\n	<!-- BEGIN addPostAnchor -->\r\n		<div class=\"anchor\"><input onclick=\"location.href=\'#post\';\" value=\"{TXT_FORUM_CREATE_POST}\" type=\"button\"></div>\r\n	<!-- END addPostAnchor -->\r\n	<div class=\"posts\">\r\n		<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n			<tbody>\r\n				<!-- BEGIN forumPosts -->\r\n				<tr class=\"row{FORUM_POST_ROWCLASS}\">\r\n					<th width=\"99%\"><span style=\"padding-right: 60px;\">{FORUM_USER_NAME}, {FORUM_POST_DATE} </span>\r\n						<span class=\"rating\"> {TXT_FORUM_RATING}:		{FORUM_POST_RATING}	</span>\r\n							<!-- BEGIN rating -->\r\n							<span id=\"forum_rating_{FORUM_RATING_POST_ID}\">\r\n								<a title=\"+1\" href=\"javascript:void(0);\" onclick=\"ratePost({FORUM_RATING_POST_ID}, 1);\" >\r\n								[\r\n								<span class=\"rate\">\r\n									+\r\n								</span>\r\n								]\r\n								</a>\r\n								<a title=\"-1\" href=\"javascript:void(0);\" onclick=\"ratePost({FORUM_RATING_POST_ID}, -1);\">\r\n								[\r\n								<span class=\"rate\">\r\n									-\r\n								</span>\r\n								]\r\n								</a>\r\n							</span>\r\n						<!-- END rating -->\r\n					</th>\r\n					<th width=\"1%\">{FORUM_POST_NUMBER}</th>\r\n				</tr>\r\n				<tr class=\"row{FORUM_POST_ROWCLASS}\">\r\n					<td colspan=\"2\"><h3>{FORUM_POST_ICON} {FORUM_POST_SUBJECT}</h3>{FORUM_POST_MESSAGE}  </td>\r\n				</tr>\r\n				<tr class=\"row{FORUM_POST_ROWCLASS}\">\r\n					<td colspan=\"2\" align=\"right\">\r\n						 <!-- BEGIN postEdit --><input onclick=\"location.href=\'index.php?section=forum&amp;cmd=thread&amp;id={FORUM_THREAD_ID}&amp;act=edit&amp;postid={FORUM_POST_ID}\';\" value=\"{TXT_FORUM_EDIT}\" type=\"button\">&nbsp;<!-- END postEdit -->\r\n						  <!-- BEGIN postQuote --><input onclick=\"location.href=\'index.php?section=forum&amp;cmd=thread&amp;id={FORUM_THREAD_ID}&amp;act=quote&amp;postid={FORUM_POST_ID}\';\" value=\"{TXT_FORUM_QUOTE}\" type=\"button\">&nbsp;<!-- END postQuote -->               \r\n						  <!-- BEGIN postDelete --><input onclick=\"location.href=\'index.php?section=forum&amp;cmd=thread&amp;id={FORUM_THREAD_ID}&amp;act=delete&amp;postid={FORUM_POST_ID}\'; deletePost(\'{FORUM_THREAD_ID}\', \'{FORUM_POST_ID}\'); return false;\" value=\"{TXT_FORUM_DELETE}\" type=\"button\">&nbsp;<!-- END postDelete --> \r\n					</td>\r\n				</tr>\r\n				<!-- END forumPosts -->\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<div class=\"paging\">\r\n		{FORUM_THREADS_PAGING}\r\n	</div>\r\n	<!-- BEGIN addThread --><!-- END addThread -->\r\n	<!-- BEGIN addPost -->\r\n	<a name=\"post\"></a>\r\n	<div class=\"addpost\">\r\n		<h2>{TXT_FORUM_ADD_POST}</h2>\r\n			<form enctype=\"multipart/form-data\" name=\"frm_thread\" action=\"index.php?section=forum&amp;cmd=thread&amp;id={FORUM_THREAD_ID}\" method=\"post\" onsubmit=\"setScrollPos();\">\r\n				<input type=\"hidden\" name=\"post_edit_user_id\" value=\"{FORUM_POST_EDIT_USERID}\" /> 	\r\n				<input type=\"hidden\" name=\"post_id\" value=\"{FORUM_EDIT_POST_ID}\" /> 	\r\n				<input type=\"hidden\" name=\"thread_id\" value=\"{FORUM_THREAD_ID}\" /> 	\r\n				<input type=\"hidden\" name=\"category_id\" value=\"{FORUM_CATEGORY_ID}\" /> 	\r\n				<input type=\"hidden\" name=\"pos\" value=\"{FORUM_PAGING_POS}\" />\r\n				<!-- <p>\r\n					<label>{TXT_FORUM_ICON}</label> -->\r\n					<!-- BEGIN icons -->\r\n					<!-- <input type=\"radio\" id=\"icons_{FORUM_ICON_VALUE}\" name=\"icons\" value=\"{FORUM_ICON_VALUE}\" /><label class=\"description\" for=\"icons_{FORUM_ICON_VALUE}\"><img src=\"{FORUM_ICON_SRC}\" alt=\"{FORUM_ICON_ALT}\" title=\"{FORUM_ICON_TITLE}\" /></label><br /> -->\r\n					<!-- END icons -->\r\n				<!-- </p> -->\r\n				<p><label for=\"thread_subject\">{TXT_FORUM_SUBJECT}</label><input type=\"text\" name=\"subject\" value=\"{FORUM_SUBJECT}\" /></p>\r\n				<p><label for=\"keywords\">{TXT_FORUM_KEYWORDS}</label><input onfocus=\"showToolTip(\'{TXT_FORUM_COMMA_SEPARATED_KEYWORDS}\', this, \'forumKeywordsHelp\')\" onblur=\"hideToolTip(\'forumKeywordsHelp\')\" title=\"{TXT_FORUM_COMMA_SEPARATED_KEYWORDS}\"  type=\"text\" name=\"keywords\" value=\"{FORUM_KEYWORDS}\" /></p>\r\n				<p><label for=\"forum_attachment\">{TXT_FORUM_FILE_ATTACHMENT}</label><input class=\"inputtext\" type=\"file\" value=\"{FORUM_ATTACHMENT_VALUE}\" name=\"forum_attachment\" /></p>\r\n				<p><label for=\"thread_message\">{TXT_FORUM_MESSAGE}<br />\r\n                                    <a style=\"font-size:0.9em;\" href=\"http://de.wikipedia.org/wiki/BBCode\" title=\"BBCode\">Über BB-Code</a></label>{FORUM_MESSAGE_INPUT}</p>\r\n				<!-- BEGIN captcha -->\r\n				<p>\r\n					<label for=\"captcha\">Captcha-Code</label><img src=\"{FORUM_CAPTCHA_IMAGE_URL}\" title=\"{FORUM_CAPTCHA_IMAGE_ALT}\" alt=\"{FORUM_CAPTCHA_IMAGE_ALT}\" /><br />\r\n					<input type=\"text\" name=\"captcha\" /><input type=\"hidden\" name=\"offset\" value=\"{FORUM_CAPTCHA_OFFSET}\" />\r\n				</p>\r\n				<!-- END captcha -->\r\n				<!-- BEGIN notificationRow -->\r\n					<p><input id=\"forum_notify\" type=\"checkbox\" name=\"notification\" value=\"notify\" {FORUM_NOTIFICATION_CHECKBOX_CHECKED} /><label class=\"description\" for=\"forum_notify\">{TXT_FORUM_NOTIFY_NEW_POSTS}</label></p>\r\n				<!-- END notificationRow -->\r\n				<p>\r\n					<input type=\"reset\" value=\"{TXT_FORUM_RESET}\" />&nbsp;\r\n					<!-- BEGIN createPost --><input type=\"submit\" name=\"create\" value=\"{TXT_FORUM_CREATE_POST}\" />&nbsp;<!-- END createPost -->                \r\n					<!-- BEGIN updatePost --><input type=\"submit\" name=\"update\" value=\"{TXT_FORUM_UPDATE_POST}\" />&nbsp;<!-- END updatePost -->                  \r\n					<!-- BEGIN previewNewPost --><input type=\"submit\" name=\"preview_new\" value=\"{TXT_FORUM_PREVIEW}\" />&nbsp;<!-- END previewNewPost -->                 \r\n					<!-- BEGIN previewEditPost --><input type=\"submit\" name=\"preview_edit\" value=\"{TXT_FORUM_PREVIEW}\" />&nbsp;<!-- END previewEditPost --> 	\r\n				</p>\r\n			</form>\r\n	</div>\r\n    <!-- END addPost -->\r\n</div>', 'Thread anzeigen', 'thread', 'y', '281', 'off', 'system', '99', '1'),
('287', '20', '{FORUM_JAVASCRIPT}\r\n{FORUM_JAVASCRIPT_GOTO}\r\n<div id=\"forum\">\r\n	<div class=\"links\">\r\n		{FORUM_COMMUNITY_LINKS}\r\n	</div>\r\n	<div class=\"navtree\">\r\n		{FORUM_TREE}{FORUM_NAME}\r\n	</div>\r\n	<div class=\"dropdown\">\r\n		{FORUM_DROPDOWN}\r\n	</div>\r\n	<div class=\"forums\">\r\n		<h2>{FORUM_MAINCATEGORY_NAME}</h2>\r\n		<table cellspacing=\"0\">\r\n			<tr>\r\n				<th width=\"99%\">{TXT_FORUM}</td>\r\n				<th width=\"1%\" nowrap=\"nowrap\">{TXT_LASTPOST}</td>\r\n				<th width=\"1%\" align=\"right\" nowrap=\"nowrap\">{TXT_THREADS}</td>\r\n				<th width=\"1%\" align=\"right\" nowrap=\"nowrap\">{TXT_POSTINGS}</td>\r\n			</tr>\r\n			<!-- BEGIN forumSubCategory -->\r\n			<tr class=\"row{FORUM_SUBCATEGORY_ROWCLASS}\">\r\n				<td><div style=\"padding-left: {FORUM_SUBCATEGORY_SPACER}px;\"><b><a href=\"index.php?section=forum&amp;cmd=board&amp;id={FORUM_SUBCATEGORY_ID}\" title=\"{FORUM_SUBCATEGORY_NAME}\">{FORUM_SUBCATEGORY_NAME}</a></b><br />{FORUM_SUBCATEGORY_DESC}</div></td>\r\n				<td nowrap=\"nowrap\" class=\"smallfont\">{FORUM_SUBCATEGORY_LASTPOST_TITLE}<br />{FORUM_SUBCATEGORY_LASTPOST_DATE}</td>\r\n				<td align=\"right\">{FORUM_SUBCATEGORY_THREADS}</td>\r\n				<td align=\"right\">{FORUM_SUBCATEGORY_POSTINGS}</td>\r\n			</tr>\r\n			<!-- END forumSubCategory -->\r\n		</table>\r\n	</div>\r\n</div>', 'Kategorie anzeigen', 'cat', 'y', '281', 'off', 'system', '99', '1'),
('288', '20', '{FORUM_JAVASCRIPT_GOTO}\r\n{FORUM_JAVASCRIPT_DELETE}\r\n{FORUM_JAVASCRIPT_INSERT_TEXT}\r\n<div id=\"forum\">\r\n	<div class=\"links\">\r\n		{FORUM_COMMUNITY_LINKS}\r\n	</div>\r\n	<div class=\"navtree\">\r\n		{FORUM_TREE}{FORUM_NAME}\r\n		<span style=\"color: rgb(255, 0, 0);\">{TXT_FORUM_ERROR}&nbsp;</span>\r\n		<span style=\"color: #006900;\">{TXT_FORUM_SUCCESS}&nbsp;</span>\r\n	</div>\r\n	<div class=\"dropdown\">\r\n		{FORUM_DROPDOWN}\r\n	</div>\r\n	<!-- BEGIN addPostAnchor -->\r\n		<div class=\"anchor\"><input onclick=\"location.href=\'#thread\';\" value=\"{TXT_FORUM_CREATE_THREAD}\" type=\"button\"></div>\r\n	<!-- END addPostAnchor -->\r\n	<div class=\"threads\">\r\n		<table cellspacing=\"0\">\r\n			<tr>\r\n				<th width=\"96%\">{TXT_THREADS_SUBJECTAUTHOR}</th>\r\n		        <th width=\"1%\" nowrap=\"nowrap\">{TXT_THREADS_LASTTOPIC}</th>\r\n		        <th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_THREADS_REPLIES}</th>\r\n		        <th width=\"1%\" nowrap=\"nowrap\" align=\"right\">{TXT_THREADS_HITS}</th>\r\n				<th width=\"1%\" nowrap=\"nowrap\" align=\"right\">&nbsp;</th>\r\n			</tr>\r\n			<!-- BEGIN forumThreads -->\r\n			<tr class=\"row{FORUM_THREADS_ROWCLASS}\">\r\n				<td><strong><a href=\"index.php?section=forum&amp;cmd=thread&amp;id={FORUM_THREADS_ID}\" title=\"{FORUM_THREADS_NAME}\">{FORUM_THREADS_NAME}</a></strong><br /><div class=\"smallfont\">{FORUM_THREADS_AUTHOR}</div></td>\r\n				<td nowrap=\"nowrap\" class=\"smallfont\">{FORUM_THREADS_LASTPOST_AUTHOR}<br />{FORUM_THREADS_LASTPOST_DATE}</td>\r\n		        <td align=\"right\">{FORUM_THREADS_REPLIES}</td>\r\n				<td align=\"right\">{FORUM_THREADS_HITS}</td>\r\n				<td align=\"center\">\r\n				<!-- BEGIN deleteThread -->\r\n		        	<a onclick=\"deleteThread(\'{FORUM_FORUM_ID}\', \'{FORUM_THREADS_ID}\'); return false;\" href=\"index.php?section=forum&amp;cmd=board&amp;id={FORUM_FORUM_ID}&amp;act=delete&amp;threadid={FORUM_THREADS_ID}\"><img style=\"border: medium none ; vertical-align: middle;\" src=\"cadmin/images/icons/delete.gif\" title=\"Thema löschen\" alt=\"Thema löschen\" /></a>\r\n				<!-- END deleteThread -->\r\n				</td>\r\n			</tr>	\r\n			<!-- END forumThreads -->\r\n			<!-- BEGIN forumNoThreads -->\r\n			<tr class=\"row1\">\r\n				<td align=\"center\" colspan=\"5\">{TXT_FORUM_NO_THREADS}</td>\r\n			</tr>\r\n			<!-- END forumNoThreads -->\r\n		</table>\r\n	</div>\r\n	<div class=\"paging\">\r\n		{FORUM_THREADS_PAGING}\r\n	</div>\r\n	<!-- BEGIN addThread -->\r\n	<a name=\"thread\" ></a>\r\n	<div class=\"addthread\">\r\n		<h2>{TXT_FORUM_ADD_THREAD}</h2>\r\n		<form enctype=\"multipart/form-data\" name=\"frm_thread\" action=\"index.php?section=forum&amp;cmd=board&amp;id={FORUM_FORUM_ID}\" method=\"post\">\r\n			<input type=\"hidden\" name=\"category_id\" value=\"{FORUM_FORUM_ID}\" />\r\n			<input type=\"hidden\" value=\"{FORUM_PAGING_POS}\" name=\"pos\" />\r\n			<!-- <p>\r\n				<label>{TXT_FORUM_ICON}</label> -->\r\n				<!-- BEGIN icons -->\r\n				<!-- <input type=\"radio\" id=\"icons_{FORUM_ICON_VALUE}\" name=\"icons\" value=\"{FORUM_ICON_VALUE}\" /><label class=\"description\" for=\"icons_{FORUM_ICON_VALUE}\"><img src=\"{FORUM_ICON_SRC}\" alt=\"{FORUM_ICON_ALT}\" title=\"{FORUM_ICON_TITLE}\" /></label><br /> -->\r\n				<!-- END icons -->\r\n			<!-- </p> -->\r\n			<p><label for=\"thread_subject\">{TXT_FORUM_SUBJECT}</label><input type=\"text\" name=\"thread_subject\" value=\"{FORUM_SUBJECT}\" /></p>\r\n			<p><label for=\"thread_keywords\">{TXT_FORUM_KEYWORDS}</label><input onfocus=\"showToolTip(\'{TXT_FORUM_COMMA_SEPARATED_KEYWORDS}\', this, \'forumKeywordsHelp\')\" onblur=\"hideToolTip(\'forumKeywordsHelp\')\" title=\"{TXT_FORUM_COMMA_SEPARATED_KEYWORDS}\"  type=\"text\" name=\"thread_keywords\" value=\"{FORUM_KEYWORDS}\" /></p>\r\n			<p><label for=\"forum_attachment\">{TXT_FORUM_FILE_ATTACHMENT}</label><input class=\"inputtext\" type=\"file\" value=\"{FORUM_ATTACHMENT_VALUE}\" name=\"forum_attachment\" /></p>\r\n			<p><label for=\"thread_message\">{TXT_FORUM_MESSAGE}</label>{FORUM_MESSAGE_INPUT}</p>\r\n			<!-- BEGIN captcha -->\r\n			<p>\r\n				<label for=\"captcha\">Captcha-Code</label><img src=\"{FORUM_CAPTCHA_IMAGE_URL}\" title=\"{FORUM_CAPTCHA_IMAGE_ALT}\" alt=\"{FORUM_CAPTCHA_IMAGE_ALT}\" /><br />\r\n				<input type=\"text\" name=\"captcha\" /><input type=\"hidden\" name=\"offset\" value=\"{FORUM_CAPTCHA_OFFSET}\" />\r\n			</p>\r\n			<!-- END captcha -->\r\n			<!-- BEGIN notificationRow -->\r\n				<p><input id=\"forum_notify\" type=\"checkbox\" name=\"notification\" value=\"notify\" {FORUM_NOTIFICATION_CHECKBOX_CHECKED} /><label class=\"description\" for=\"forum_notify\">{TXT_FORUM_NOTIFY_NEW_POSTS}</label></p>\r\n			<!-- END notificationRow -->\r\n			<p><input type=\"reset\" value=\"{TXT_FORUM_RESET}\" />&nbsp;<input type=\"submit\" name=\"create\" value=\"{TXT_FORUM_CREATE_THREAD}\" />&nbsp;<input type=\"submit\" name=\"preview\" value=\"{TXT_FORUM_PREVIEW}\" /></p>\r\n		</form>\r\n	</div>\r\n    <!-- END addThread -->\r\n</div>', 'Forum anzeigen', 'board', 'y', '281', 'off', 'system', '99', '1'),
('335', '0', '<p>Mit dem Datenlistenmodul k&ouml;nnen Listen angelegt und per Platzhalter &uuml;berall im CMS eingebunden werden.<br />\r\n&nbsp;</p>\r\n{DATA_LINKS}', 'Datenlisten', '', 'n', '325', 'on', 'system', '9', '1'),
('342', '23', '<div id=\"access\">\r\n	<!-- BEGIN access_settings -->\r\n		<div class=\"message_error\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n		<div class=\"profile\">\r\n			<form method=\"post\" action=\"index.php?section=access&amp;cmd=settings_delete\">\r\n				Um Dein Konto zu l&ouml;schen, musst Du Dein Kennwort eingeben<br /><br />\r\n				<p><label>Passwort</label>{ACCESS_USER_PASSWORD_INPUT}<br /><br /></p>\r\n				Deine Forum und Verzeichnis Eintr&auml;ge bleiben nach der L&ouml;schung des Kontos erhalten.<br />\r\n				Wenn Du Deine Eintr&auml;ge l&ouml;schen willst, musst Du dies vor der L&ouml;schung des Kontos erledigen.<br />\r\n				<br />\r\n				<b>ACHTUNG: Das L&ouml;schen des Kontos kann nicht r&uuml;ckg&auml;ngig gemacht werden!</b><br />\r\n				<br />\r\n				<p><label>Konto löschen</label>{ACCESS_DELETE_ACCOUNT_BUTTON}</p>\r\n			</form>\r\n		</div>\r\n	<!-- END access_settings --> \r\n	<!-- BEGIN access_settings_done --> \r\n		<div class=\"message_ok\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n	<!-- END access_settings_done --> \r\n	{ACCESS_JAVASCRIPT_FUNCTIONS}\r\n</div>', 'Konto löschen', 'settings_delete', 'y', '337', 'on', 'system', '4', '1'),
('343', '23', '<div id=\"access\">\r\n	<div class=\"search\">\r\n		<form method=\"post\" action=\"index.php?section=access&amp;cmd=members\">\r\n			<input type=\"text\" value=\"{ACCESS_SEARCH_VALUE}\" style=\"width: 200px;\" name=\"search\" /> <input type=\"submit\" value=\"Suchen\" name=\"access_submit_search\" />\r\n		</form>\r\n	</div>\r\n	<div class=\"letter_index\">\r\n		<!-- BEGIN access_user_letter_index_list --> \r\n			<a style=\"white-space: nowrap;\" href=\"{ACCESS_USER_LETTER_INDEX_URI}\">[ {ACCESS_USER_LETTER_INDEX_LETTER} ]</a> \r\n		<!-- END access_user_letter_index_list -->\r\n	</div>\r\n	<!-- BEGIN access_members -->\r\n		<div class=\"member_list\">\r\n			<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" class=\"bottomborder\">\r\n				<tbody>\r\n					<tr>\r\n						<th>Bild</th>\r\n						<th>Benutzername</th>\r\n						<th>Herkunft</th>\r\n					</tr>\r\n					<!-- BEGIN access_user -->\r\n					<tr class=\"row{ACCESS_USER_CLASS}\">\r\n						<td><a title=\"{ACCESS_USER_USERNAME}\" href=\"index.php?section=access&amp;cmd=user&amp;id={ACCESS_USER_ID}\"><img border=\"0\" class=\"member_{ACCESS_PROFILE_ATTRIBUTE_GENDER_VALUE}\" src=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_THUMBNAIL_SRC}\" alt=\"\" /></a></td>\r\n						<td><a title=\"{ACCESS_USER_USERNAME}\" href=\"index.php?section=access&amp;cmd=user&amp;id={ACCESS_USER_ID}\">{ACCESS_USER_USERNAME}</a></td>\r\n						<td>\r\n							<!-- BEGIN access_profile_attribute_city -->{ACCESS_PROFILE_ATTRIBUTE_CITY}<br /><!-- END access_profile_attribute_city -->\r\n							<!-- BEGIN access_profile_attribute_contry -->{ACCESS_PROFILE_ATTRIBUTE_COUNTRY}<br /><!-- END access_profile_attribute_contry -->\r\n						</td>\r\n					</tr>\r\n					<!-- END access_user -->\r\n				</tbody>\r\n			</table>\r\n		</div>\r\n		<div class=\"paging\">{ACCESS_USER_PAGING}</div>\r\n	<!-- END access_members -->\r\n</div>', 'Mitglieder', 'members', 'y', '336', 'on', 'system', '1', '1'),
('344', '23', '<div id=\"access\">\r\n	<div class=\"profile\">\r\n		<table cellspacing=\"0\">\r\n			<tbody>\r\n				<tr>\r\n					<th colspan=\"2\">Benutzerprofil von {ACCESS_USER_USERNAME}</th>\r\n				</tr>\r\n				<!-- BEGIN access_user_email -->\r\n				<tr class=\"row1\">\r\n					<td width=\"20%\">{ACCESS_USER_EMAIL_DESC}</td>\r\n					<td width=\"80%\">{ACCESS_USER_EMAIL}</td>\r\n				</tr>\r\n				<!-- END access_user_email -->\r\n				<!-- BEGIN access_profile_attribute_list -->\r\n				<tr class=\"row{ACCESS_PROFILE_ATTRIBUTE_CLASS}\">\r\n					<td width=\"20%\">{ACCESS_PROFILE_ATTRIBUTE_DESC}</td>\r\n					<td width=\"80%\">{ACCESS_PROFILE_ATTRIBUTE}</td>\r\n				</tr>\r\n				<!-- END access_profile_attribute_list -->\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<div class=\"functions\"><a href=\"index.php?section=access&amp;cmd=members\" title=\"Zur&uuml;ck\">&laquo; Zur&uuml;ck</a><!-- {ACCESS_REFERER} --></div>\r\n</div>', 'Benutzerinfos', 'user', 'y', '343', 'off', 'system', '99', '1'),
('345', '23', '<p>Hier haben Sie die M&ouml;glichkeit sich f&uuml;r dieses Portal zu registrieren und ein Benutzerkonto zu er&ouml;ffnen.</p>\n<div id=\"access\">\n\n<!-- BEGIN access_signup_form -->\n<div class=\"message_error\">{ACCESS_SIGNUP_MESSAGE}</div>\n<form action=\"index.php?section=access&amp;cmd=signup\" method=\"post\" enctype=\"multipart/form-data\">\n    <!-- BEGIN access_user_username -->\n    <p><label>{ACCESS_USER_USERNAME_DESC}</label>{ACCESS_USER_USERNAME}<br />\n    Bitte w&auml;hlen Sie einen Benutzernamen<br />\n    &nbsp;</p>\n    <!-- END access_user_username --><!-- BEGIN access_user_password -->\n    <p><label>{ACCESS_USER_PASSWORD_DESC}</label>{ACCESS_USER_PASSWORD}<br />\n    Bitte gew&uuml;nschtes Passwort eingeben (min. 6 Zeichen)<br />\n    &nbsp;</p>\n    <!-- END access_user_password --><!-- BEGIN access_user_password_confirmed -->\n    <p><label>{ACCESS_USER_PASSWORD_CONFIRMED_DESC}</label>     {ACCESS_USER_PASSWORD_CONFIRMED}<br />\n    Zur Ihrer Sicherheit wiederholen Sie bitte Ihr Passwort<br />\n    &nbsp;</p>\n    <!-- END access_user_password_confirmed -->      		<!-- BEGIN access_user_email -->\n    <p><label>{ACCESS_USER_EMAIL_DESC}</label>{ACCESS_USER_EMAIL}<br />\n    Ihre E-Mail Adresse (Sie m&uuml;ssen eine g&uuml;ltige E-Mail Adresse angeben, um Ihren Account zu aktivieren)<br />\n    &nbsp;</p>\n    <!-- END access_user_email -->\n    <p><label>{ACCESS_USER_FRONTEND_LANGUAGE_DESC}</label>{ACCESS_USER_FRONTEND_LANGUAGE}<br />\n    &nbsp;</p>\n    <p>{ACCESS_SIGNUP_BUTTON}</p>\n    <br />\n    <br />\n    <p><b>Hinweis:</b> Weitere Daten k&ouml;nnen im Benutzerprofil hinzugef&uuml;gt werden.</p>\n</form>\n<!-- END access_signup_form --> 	<!-- BEGIN access_signup_store_success -->\n<div class=\"message_ok\">{ACCESS_SIGNUP_MESSAGE}</div>\n<!-- END access_signup_store_success -->   	<!-- BEGIN access_signup_store_error -->\n<div class=\"message_error\">{ACCESS_SIGNUP_MESSAGE}</div>\n<!-- END access_signup_store_error -->   	<!-- BEGIN access_signup_confirm_success -->\n<div class=\"message_ok\">{ACCESS_SIGNUP_MESSAGE}</div>\n<!-- END access_signup_confirm_success -->   	<!-- BEGIN access_signup_confirm_error -->\n<div class=\"message_error\">{ACCESS_SIGNUP_MESSAGE}</div>\n<!-- END access_signup_confirm_error -->    	{ACCESS_JAVASCRIPT_FUNCTIONS}</div>', 'Mitglied werden', 'signup', 'y', '336', 'on', 'system', '2', '1'),
('336', '23', '<h2>Willkommen beim Community-Bereich</h2>\r\n<p>Sind Sie noch kein Mitglied? <a href=\"index.php?section=access&amp;cmd=signup\">Hier k&ouml;nnen Sie sich anmelden...</a></p>\r\n<h2>Bereiche</h2>\r\n<ul>\r\n    <li><a href=\"index.php?section=access&amp;cmd=members\">Mitgliederliste anschauen</a></li>\r\n    <li><a href=\"index.php?section=forum\">Forum</a></li>\r\n</ul>', 'Community', '', 'n', '0', 'on', 'system', '4', '1'),
('337', '23', '<h2>Kontoeinstellungen</h2>\r\n<ul>\r\n    <li><a href=\"index.php?section=access&amp;cmd=settings_account\">E-Mail Adresse / Sprache / Datenschutz &auml;ndern</a></li>\r\n</ul>\r\n<h2>Profildaten</h2>\r\n<ul>\r\n    <li><a href=\"index.php?section=access&amp;cmd=settings_profile\">Profil und Kontaktdaten anpassen / erfassen</a></li>\r\n    <li><a href=\"index.php?section=access&amp;cmd=settings_avatar\">Profilbild &auml;ndern</a></li>\r\n</ul>\r\n<h2>Kennwort</h2>\r\n<ul>\r\n    <li><a href=\"index.php?section=access&amp;cmd=settings_password\">Kennwort &auml;ndern</a></li>\r\n</ul>', 'Mein Profil', 'settings', 'y', '336', 'on', 'system', '0', '1'),
('338', '23', '<div id=\"access\">\r\n	<!-- BEGIN access_settings -->\r\n		<div class=\"message_error\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n		<div class=\"profile\">\r\n			<form method=\"post\" action=\"index.php?section=access&amp;cmd=settings_account\">\r\n			<p><label>{ACCESS_USER_USERNAME_DESC}</label>{ACCESS_USER_USERNAME}</p>\r\n			<p><label>{ACCESS_USER_EMAIL_DESC}</label>{ACCESS_USER_EMAIL}</p>\r\n			<p><label>{ACCESS_USER_FRONTEND_LANGUAGE_DESC}</label>{ACCESS_USER_FRONTEND_LANGUAGE}</p>\r\n			<p><label>{ACCESS_USER_EMAIL_ACCESS_DESC}</label>{ACCESS_USER_EMAIL_ACCESS}</p>\r\n			<p><label>{ACCESS_USER_PROFILE_ACCESS_DESC}</label>{ACCESS_USER_PROFILE_ACCESS}</p>\r\n			<p><input type=\"button\" value=\"Zur&uuml;ck\" onclick=\"window.location.href=\'index.php?section=access&amp;cmd=settings\'\" /> {ACCESS_STORE_BUTTON}</p>\r\n		</form>\r\n		</div>\r\n	<!-- END access_settings --> \r\n	<!-- BEGIN access_settings_done --> \r\n		<div class=\"message_ok\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n	<!-- END access_settings_done --> \r\n	{ACCESS_JAVASCRIPT_FUNCTIONS}\r\n</div>', 'Konto Einstellungen', 'settings_account', 'y', '337', 'on', 'system', '0', '1'),
('339', '23', '<div id=\"access\">\r\n	<!-- BEGIN access_settings -->\r\n		<div class=\"message_error\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n		<div class=\"profile\">\r\n			<form enctype=\"multipart/form-data\" action=\"index.php?section=access&amp;cmd=settings_profile\" method=\"post\">\r\n				<!-- BEGIN access_profile_attribute_gender -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_GENDER_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_GENDER}</p>\r\n				<!-- END access_profile_attribute_gender --> 			\r\n				<!-- BEGIN access_profile_attribute_title -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_TITLE_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_TITLE}</p>\r\n				<!-- END access_profile_attribute_title --> 			\r\n				<!-- BEGIN access_profile_attribute_firstname -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_FIRSTNAME_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_FIRSTNAME}</p>\r\n				<!-- END access_profile_attribute_firstname --> 			\r\n				<!-- BEGIN access_profile_attribute_lastname -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_LASTNAME_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_LASTNAME}</p>\r\n				<!-- END access_profile_attribute_lastname --> 			\r\n				<!-- BEGIN access_profile_attribute_company -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_COMPANY_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_COMPANY}</p>\r\n				<!-- END access_profile_attribute_company --> 			\r\n				<!-- BEGIN access_profile_attribute_address -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_ADDRESS_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_ADDRESS}</p>\r\n				<!-- END access_profile_attribute_address --> 			\r\n				<!-- BEGIN access_profile_attribute_city -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_CITY_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_CITY}</p>\r\n				<!-- END access_profile_attribute_city --> 			\r\n				<!-- BEGIN access_profile_attribute_zip -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_ZIP_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_ZIP}</p>\r\n				<!-- END access_profile_attribute_zip --> 			\r\n				<!-- BEGIN access_profile_attribute_country -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_COUNTRY_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_COUNTRY}</p>\r\n				<!-- END access_profile_attribute_country --> 			\r\n				<!-- BEGIN access_profile_attribute_phone_office -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_PHONE_OFFICE_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_PHONE_OFFICE}</p>\r\n				<!-- END access_profile_attribute_phone_office --> 			\r\n				<!-- BEGIN access_profile_attribute_phone_private -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_PHONE_PRIVATE_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_PHONE_PRIVATE}</p>\r\n				<!-- END access_profile_attribute_phone_private --> 			\r\n				<!-- BEGIN access_profile_attribute_phone_mobile -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_PHONE_MOBILE_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_PHONE_MOBILE}</p>\r\n				<!-- END access_profile_attribute_phone_mobile --> 			\r\n				<!-- BEGIN access_profile_attribute_phone_fax -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_PHONE_FAX_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_PHONE_FAX}</p>\r\n				<!-- END access_profile_attribute_phone_fax --> 			\r\n				<!-- BEGIN access_profile_attribute_birthday -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_BIRTHDAY_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_BIRTHDAY}</p>\r\n				<!-- END access_profile_attribute_birthday --> 			\r\n				<!-- BEGIN access_profile_attribute_website -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_WEBSITE_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_WEBSITE}</p>\r\n				<!-- END access_profile_attribute_website --> 					\r\n				<!-- BEGIN access_profile_attribute_profession -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_PROFESSION_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_PROFESSION}</p>\r\n				<!-- END access_profile_attribute_profession --> 			\r\n				<!-- BEGIN access_profile_attribute_interests -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_INTERESTS_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_INTERESTS}</p>\r\n				<!-- END access_profile_attribute_interests --> 			\r\n				<!-- BEGIN access_profile_attribute_signature -->\r\n				<p><label>{ACCESS_PROFILE_ATTRIBUTE_SIGNATURE_DESC}</label>{ACCESS_PROFILE_ATTRIBUTE_SIGNATURE}</p>\r\n				<!-- END access_profile_attribute_signature -->\r\n				<p><input type=\"button\" onclick=\"window.location.href=\'index.php?section=access&amp;cmd=settings\'\" value=\"Zur&uuml;ck\" /> {ACCESS_STORE_BUTTON}</p>\r\n			</form>\r\n		</div>\r\n	<!-- END access_settings --> \r\n	<!-- BEGIN access_settings_done --> \r\n		<div class=\"message_ok\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n	<!-- END access_settings_done --> \r\n	{ACCESS_JAVASCRIPT_FUNCTIONS}\r\n</div>', 'Profildaten', 'settings_profile', 'y', '337', 'on', 'system', '1', '1'),
('340', '23', '<div id=\"access\">\r\n	<!-- BEGIN access_settings -->\r\n		<div class=\"message_error\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n		<div class=\"profile\">\r\n			<form method=\"post\" action=\"index.php?section=access&amp;cmd=settings_avatar\" enctype=\"multipart/form-data\">\r\n				<!-- BEGIN access_profile_attribute_picture -->\r\n					<input type=\"hidden\" value=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_VALUE}\" id=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_ID}\" name=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_NAME}\" />\r\n					<p><label>Aktuelles Bild</label><input type=\"hidden\" value=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_VALUE}\" id=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_ID}\" name=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_NAME}\" /><img border=\"0\" alt=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_VALUE}\" id=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_ID}_image\" src=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_SRC}\" /><a title=\"Bild l&ouml;schen\" onclick=\"document.getElementById(\'{ACCESS_PROFILE_ATTRIBUTE_PICTURE_ID}_image\').src=\'/images/access/profile/0_noavatar.gif\';document.getElementById(\'{ACCESS_PROFILE_ATTRIBUTE_PICTURE_ID}_image\').style.width=\'121px\';document.getElementById(\'{ACCESS_PROFILE_ATTRIBUTE_PICTURE_ID}_image\').style.height=\'160px\';document.getElementById(\'{ACCESS_PROFILE_ATTRIBUTE_PICTURE_ID}\').value = \'\';this.style.display=\'none\'\" href=\"javascript:void(0)\"><img width=\"17\" height=\"17\" border=\"0\" alt=\"Bild l&ouml;schen\" src=\"/images/modules/access/delete.gif\" /></a></p>\r\n					<p><label>Neues Bild setzen</label><input type=\"file\" onchange=\"this.nextSibling.style.display = this.value.length ? \'\' : \'none\';\" style=\"width: 300px;\" name=\"{ACCESS_PROFILE_ATTRIBUTE_PICTURE_UPLOAD_NAME}\" /><a title=\"Bild l&ouml;schen\" onclick=\"this.previousSibling.value=\'\';this.style.display=\'none\'\" style=\"display: none;\" href=\"javascript:void(0)\"><img width=\"17\" height=\"17\" border=\"0\" style=\"vertical-align: bottom;\" alt=\"Bild l&ouml;schen\" src=\"/images/modules/access/delete.gif\" /></a><br /><br /><em>Maximal erlaubte Dateigr&ouml;sse: {ACCESS_PROFILE_ATTRIBUTE_PICTURE_MAX_FILE_SIZE}<br />Maximale Gr&ouml;&szlig;e {ACCESS_PROFILE_ATTRIBUTE_PICTURE_MAX_WIDTH}&times;{ACCESS_PROFILE_ATTRIBUTE_PICTURE_MAX_HEIGHT} Pixel, gr&ouml;&szlig;ere Bilder werden verkleinert.</em></p>\r\n				<!-- END access_profile_attribute_picture -->\r\n				<p><input type=\"button\" onclick=\"window.location.href=\'index.php?section=access&amp;cmd=settings\'\" value=\"Zur&uuml;ck\" /> {ACCESS_STORE_BUTTON}</p>\r\n			</form>\r\n		</div>\r\n	<!-- END access_settings --> \r\n	<!-- BEGIN access_settings_done --> \r\n		<div class=\"message_ok\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n	<!-- END access_settings_done --> \r\n	{ACCESS_JAVASCRIPT_FUNCTIONS}\r\n</div>', 'Profilbild ändern', 'settings_avatar', 'y', '337', 'on', 'system', '2', '1'),
('341', '23', '<div id=\"access\">		\r\n	<!-- BEGIN access_settings -->\r\n		<div class=\"message_error\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n		<div class=\"profile\">\r\n			<form action=\"index.php?section=access&amp;cmd=settings_password\" method=\"post\">\r\n				<p><label>{ACCESS_USER_CURRENT_PASSWORD_DESC}</label>{ACCESS_USER_CURRENT_PASSWORD}</p>\r\n				<p><label>{ACCESS_USER_PASSWORD_DESC}</label>{ACCESS_USER_PASSWORD}</p>\r\n				<p><label>{ACCESS_USER_PASSWORD_CONFIRMED_DESC}</label>{ACCESS_USER_PASSWORD_CONFIRMED}</p>\r\n				<p><input type=\"button\" value=\"Zur&uuml;ck\" onclick=\"window.location.href=\'index.php?section=access&amp;cmd=settings\'\" /> {ACCESS_CHANGE_PASSWORD_BUTTON}</p>\r\n			</form>\r\n		</div>\r\n	<!-- END access_settings --> \r\n	<!-- BEGIN access_settings_done --> \r\n		<div class=\"message_ok\">{ACCESS_SETTINGS_MESSAGE}</div>\r\n	<!-- END access_settings_done --> \r\n	{ACCESS_JAVASCRIPT_FUNCTIONS}\r\n</div>', 'Kennwort', 'settings_password', 'y', '337', 'on', 'system', '3', '1'),
('347', '35', '{PODCAST_JAVASCRIPT}\r\n<div id=\"podcast\">\r\n	<div class=\"categories\">\r\n		{PODCAST_CATEGORY_MENU}\r\n	</div>\r\n	<!-- BEGIN podcast_no_medium --> \r\n	<div class=\"noMedium\">\r\n		W&auml;hlen Sie ein Medium aus, dass abgespielt werden soll.\r\n	</div>\r\n	<!-- END podcast_no_medium -->  \r\n	<!-- BEGIN podcast_medium -->\r\n	<div class=\"showMedium\">\r\n		<h2>{PODCAST_MEDIUM_TITLE}</h2>\r\n		<div class=\"player\">\r\n			<div id=\"podcast_container\"><em>Podcast kann nicht angezeigt werden, bitte in externem Player starten</em></div>\r\n			{PODCAST_MEDIUM_CODE}\r\n                         <a title=\"Video in externem Player starten\" href=\"{PODCAST_MEDIUM_URL}\">Video in externem Player starten</a>\r\n		</div>\r\n		<div class=\"information\">\r\n			<table cellspacing=\"0\">\r\n				<tr>\r\n					<th colspan=\"2\">Informationen</th>\r\n				</tr>\r\n				<tr class=\"row1\">\r\n					<td>Datum</td>\r\n					<td>{PODCAST_MEDIUM_SHORT_DATE}</td>\r\n				</tr>\r\n				<tr class=\"row2\">\r\n					<td>Spieldauer</td>\r\n					<td>{PODCAST_MEDIUM_PLAYLENGHT}</td>\r\n				</tr>\r\n				<tr class=\"row1\">\r\n					<td>Autor</td>\r\n					<td>{PODCAST_MEDIUM_AUTHOR}</td>\r\n				</tr>\r\n				<tr class=\"row2\">\r\n					<td>Beschreibung</td>\r\n					<td>{PODCAST_MEDIUM_DESCRIPTION}</td>\r\n				</tr>\r\n				<tr class=\"row1\">\r\n					<td>Dateigr&ouml;sse</td>\r\n					<td>{PODCAST_MEDIUM_FILESIZE}</td>\r\n				</tr>\r\n				<tr class=\"row2\">\r\n					<td>Aufrufe</td>\r\n					<td>{PODCAST_MEDIUM_VIEWS}</td>\r\n				</tr>\r\n			</table>\r\n		</div>\r\n	</div>\r\n	<!-- END podcast_medium -->  \r\n	<!-- BEGIN podcast_media -->\r\n	<div class=\"media_{PODCAST_MEDIUM_ROW}\">\r\n		<div class=\"image\"><a title=\"{TXT_PODCAST_PLAY}\" href=\"index.php?section=podcast&amp;id={PODCAST_MEDIA_ID}&amp;cid={PODCAST_MEDIA_CATEGORY_ID}\"><img border=\"0\" alt=\"{PODCAST_MEDIA_TITLE}\" title=\"{PODCAST_MEDIA_TITLE}\" src=\"{PODCAST_MEDIA_THUMBNAIL}\" name=\"podcast_thumbnails\" /></a></div>\r\n		<div class=\"description\">\r\n			<h2>{PODCAST_MEDIA_TITLE}</h2>\r\n			{PODCAST_MEDIA_DESCRIPTION}<br />\r\n			<br />\r\n			Spieldauer: {PODCAST_MEDIA_PLAYLENGHT}\r\n		</div>\r\n	</div>\r\n	<!-- END podcast_media -->\r\n</div>\r\n', 'Podcast', '', 'y', '0', 'on', 'system', '111', '1'),
('300', '30', '{LIVECAM_JAVASCRIPT}\r\n<form action=\"index.php?section=livecam\" method=\"post\" name=\"form\">\r\n	<input type=\"submit\" value=\"Aktuelles Bild\" tabindex=\"1\" accesskey=\"A\" name=\"act[current]\" />&nbsp;<input type=\"submit\" value=\"Heute\" name=\"act[today]\" style=\"border-width: 1px;\" size=\"12\" />&nbsp;<input type=\"text\" style=\"border-width: 1px;\" size=\"12\" value=\"{LIVECAM_DATE}\" id=\"DPC_datum\" name=\"date\" />&nbsp;<input type=\"submit\" value=\"Archiv Anzeigen\" name=\"act[archive]\" style=\"border-width: 1px;\" size=\"12\" />\r\n</form>\r\n<br />\r\n{LIVECAM_STATUS_MESSAGE}<br />\r\n<!-- BEGIN livecamPicture -->\r\n<a href=\"index.php?section=livecam&amp;act=today\" title=\"{LIVECAM_IMAGE_TEXT}\"><img width=\"640\" height=\"480\" border=\"0\" alt=\"{LIVECAM_IMAGE_TEXT}\" src=\"{LIVECAM_CURRENT_IMAGE}\" /></a><br />\r\nDie Seite wird jede Minute automatisch aktualisiert.  <a onclick=\"javascript:document.location.reload();\" href=\"index.php?section=livecam\">Aktualisieren.</a>\r\n<!-- END livecamPicture -->\r\n<!-- BEGIN livecamArchive -->\r\n<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n    <tbody>\r\n        <tr>\r\n            <td colspan=\"3\">\r\n            <h2>Archiv {LIVECAM_DATE}</h2>\r\n            </td>\r\n        </tr>\r\n        <!-- BEGIN livecamArchiveRow -->\r\n        <tr>\r\n            <td>\r\n            <p><!-- BEGIN livecamArchivePicture1 -->\r\n<a href=\"{LIVECAM_PICTURE_URL}\" title=\"{LIVECAM_PICTURE_TIME}\"><img src=\"{LIVECAM_THUMBNAIL_URL}\" border=\"0\" alt=\"{LIVECAM_PICTURE_TIME}\" /></a><br />{LIVECAM_PICTURE_TIME}<!-- END livecamArchivePicture1 --><br /></p>\r\n            </td>\r\n            <td>\r\n            <p><!-- BEGIN livecamArchivePicture2 -->\r\n<a href=\"{LIVECAM_PICTURE_URL}\" title=\"{LIVECAM_PICTURE_TIME}\"><img src=\"{LIVECAM_THUMBNAIL_URL}\" border=\"0\" alt=\"{LIVECAM_PICTURE_TIME}\" /></a><br />{LIVECAM_PICTURE_TIME}<!-- END livecamArchivePicture2 --><br /></p>\r\n            </td>\r\n            <td>\r\n            <p><!-- BEGIN livecamArchivePicture3 -->\r\n<a href=\"{LIVECAM_PICTURE_URL}\" title=\"{LIVECAM_PICTURE_TIME}\"><img src=\"{LIVECAM_THUMBNAIL_URL}\" border=\"0\" alt=\"{LIVECAM_PICTURE_TIME}\" /></a><br />{LIVECAM_PICTURE_TIME}<!-- END livecamArchivePicture3 --><br /></p>\r\n            </td>\r\n        </tr>\r\n        <!-- END livecamArchiveRow -->\r\n    </tbody>\r\n</table>\r\n<!-- END livecamArchive -->', 'Livecam', '', 'n', '0', 'on', 'system', '10', '1'),
('304', '27', '<div id=\"recommend\">\r\n	<div class=\"status\">{RECOM_STATUS}</div>\r\n	<!-- BEGIN recommend_form -->\r\n	{RECOM_SCRIPT}\r\n	<div class=\"text\">{RECOM_TEXT}</div>\r\n	<div class=\"form\">\r\n		<form id=\"recommendForm\" name=\"recommend\" method=\"post\" action=\"index.php?section=recommend&amp;act=sendRecomm\">\r\n			<input type=\"hidden\" value=\"{RECOM_REFERER}\" name=\"uri\" /> \r\n			<input type=\"hidden\" value=\"{RECOM_FEMALE_SALUTATION_TEXT}\" name=\"female_salutation_text\" /> \r\n			<input type=\"hidden\" value=\"{RECOM_MALE_SALUTATION_TEXT}\" name=\"male_salutation_text\" /> \r\n			<input type=\"hidden\" value=\"{RECOM_PREVIEW}\" name=\"preview_text\" />\r\n			<p><label for=\"receivername\">{RECOM_TXT_RECEIVER_NAME}</label><input type=\"text\" onchange=\"update();\" value=\"{RECOM_RECEIVER_NAME}\" maxlength=\"100\" name=\"receivername\" /></p>\r\n			<p><label for=\"receivermail\">{RECOM_TXT_RECEIVER_MAIL}</label><input type=\"text\" onchange=\"update();\" value=\"{RECOM_RECEIVER_MAIL}\" maxlength=\"100\" name=\"receivermail\" /></p>\r\n			<p><label>{RECOM_TXT_GENDER}</label><input type=\"radio\" onclick=\"update();\" value=\"female\" name=\"gender\" id=\"female\" /><label class=\"description\" for=\"female\">{RECOM_TXT_FEMALE}</label></p>\r\n			<p><input type=\"radio\" onclick=\"update();\" value=\"male\" margin-left:=\"\" name=\"gender\" id=\"male\" /><label class=\"description\" for=\"male\">{RECOM_TXT_MALE}</label></p>\r\n			<p><label for=\"sendername\">{RECOM_TXT_SENDER_NAME}</label><input type=\"text\" onchange=\"update();\" value=\"{RECOM_SENDER_NAME}\" maxlength=\"100\" name=\"sendername\" /></p>\r\n			<p><label for=\"sendermail\">{RECOM_TXT_SENDER_MAIL}</label><input type=\"text\" onchange=\"update();\" value=\"{RECOM_SENDER_MAIL}\" maxlength=\"100\" name=\"sendermail\" /></p>\r\n			<p><label for=\"comment\">{RECOM_TXT_COMMENT}</label><textarea rows=\"1\" cols=\"1\" onchange=\"update();\" name=\"comment\">{RECOM_COMMENT}</textarea></p>\r\n			<p><label for=\"preview\">{RECOM_TXT_PREVIEW}</label><textarea rows=\"1\" cols=\"1\" name=\"preview\"></textarea></p>\r\n			<p><label for=\"captchaCode\">{RECOM_TXT_CAPTCHA}</label><img src=\"{RECOM_CAPTCHA_URL}\" alt=\"{RECOM_CAPTCHA_ALT}\" title=\"{RECOM_CAPTCHA_ALT}\" /><br /><br /><input type=\"text\" name=\"captchaCode\" /><input type=\"hidden\" value=\"{RECOM_CAPTCHA_OFFSET}\" name=\"captchaOffset\" /></p>\r\n			<p><input type=\"submit\" value=\"Senden\" /> <input type=\"reset\" value=\"L&ouml;schen\" /></p>\r\n		</form>\r\n	</div>\r\n	<!-- END recommend_form -->\r\n</div>', 'Seite weiterempfehlen', '', 'y', '0', 'on', 'system', '9', '1'),
('305', '19', '<div id=\"docsys\">\r\n	<div class=\"categories\">\r\n		<form method=\"post\" action=\"index.php?section=docsys\" name=\"docSys\">\r\n			<select name=\"category\" onchange=\"javascript:this.form.submit()\">\r\n			<option selected=\"selected\" value=\"\">{DOCSYS_NO_CATEGORY}</option>\r\n			{DOCSYS_CAT_MENU}\r\n			</select>\r\n		</form>\r\n	</div>\r\n	<div class=\"doc_list\">\r\n		<table cellspacing=\"0\">\r\n			<tbody>\r\n				<tr>\r\n					<th width=\"5%\" nowrap=\"nowrap\">Datum</th>\r\n					<th width=\"100%\">Titel</th>\r\n					<th nowrap=\"nowrap\">Kategorie</th>\r\n				</tr>\r\n				<!-- BEGIN row -->\r\n				<tr>\r\n					<td nowrap=\"nowrap\">{DOCSYS_DATE}</td>\r\n					<td width=\"100%\">{DOCSYS_LINK}</td>\r\n					<td nowrap=\"nowrap\">{DOCSYS_CATEGORY}</td>\r\n				</tr>\r\n				<!-- END row -->\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<div calss=\"paging\">{DOCSYS_PAGING}</div>\r\n</div>', 'Dokumentensystem', '', 'y', '0', 'on', 'system', '8', '1'),
('306', '19', '{DOCSYS_TEXT}<br />\r\n<br />\r\n{DOCSYS_SOURCE}<br />\r\n{DOCSYS_URL} <br /> \r\n<br />\r\nVer&ouml;ffentlicht am<br />\r\n{DOCSYS_DATE}<br />\r\n<br />\r\nAutor<br />\r\n{DOCSYS_AUTHOR}<br />\r\n<br />\r\n{DOCSYS_LASTUPDATE}', 'Detailansicht', 'details', 'y', '305', 'off', 'system', '99', '1'),
('307', '38', '{EGOV_JS} Herzlich Willkommen bei unserem Online-Schalter.<br />\r\nUnsere online Dienstleistungen stehen Ihnen 24 Std. x 7 Tage zur Verf&uuml;gung.<br />\r\n<br />\r\n<ul> 	<!-- BEGIN egovProducts -->\r\n    <li style=\"list-style-type: circle;\"><a href=\"{EGOV_PRODUCT_LINK}\">{EGOV_PRODUCT_TITLE}</a></li>\r\n    <!-- END egovProducts --> </ul>', 'Onlinedesk', '', 'n', '0', 'on', 'system', '7', '1'),
('308', '38', '<h1>{EGOV_PRODUCT_TITLE}</h1>\r\n{EGOV_PRODUCT_DESC}<br />\r\n<br />\r\n<strong>Kosten: CHF {EGOV_PRODUCT_PRICE}</strong>\r\n<div id=\"contactFormError\" style=\"color: red; display: none;\"><br />\r\n<br />\r\nBitte &uuml;berpr&uuml;fen Sie ihre Eingabe!</div>\r\n{EGOV_FORM}', 'Onlinedesk / Bestellung', 'detail', 'n', '307', 'off', 'system', '99', '1'),
('319', '0', '<p>Mit dem Datenlistenmodul k&ouml;nnen Listen angelegt und per Platzhalter &uuml;berall im CMS eingebunden werden.<br />\r\n&nbsp;</p>\r\n{DATA_LINKS}', 'Datenlisten', '', 'n', '309', 'on', 'system', '9', '1'),
('320', '24', '{MEDIA_JAVASCRIPT}\r\n<table cellspacing=\"0\" id=\"media\">\r\n  <tbody>\r\n    <tr>\r\n      <th width=\"16\" style=\"text-align: center;\"><strong>#</strong></th>\r\n      <th colspan=\"2\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_NAME_HREF}\">{TXT_MEDIA_FILE_NAME}</a>&nbsp;{MEDIA_NAME_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_SIZE_HREF}\" name=\"sort_size\">{TXT_MEDIA_FILE_SIZE}</a>&nbsp;{MEDIA_SIZE_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_TYPE_HREF}\" name=\"sort_type\">{TXT_MEDIA_FILE_TYPE}</a>&nbsp;{MEDIA_TYPE_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_DATE_HREF}\" name=\"sort_date\">{TXT_MEDIA_FILE_DATE}</a>&nbsp;{MEDIA_DATE_ICON}</th>\r\n    </tr>\r\n    <tr class=\"row2\">\r\n      <td width=\"16\" align=\"center\"><img height=\"16\" width=\"16\" title=\"base\" alt=\"base\" src=\"images/modules/media/_base.gif\" /></td>\r\n      <td colspan=\"5\">\r\n        <a title=\"{MEDIA_TREE_NAV_MAIN}\" href=\"{MEDIA_TREE_NAV_MAIN_HREF}\">{MEDIA_TREE_NAV_MAIN}</a> \r\n        <!-- BEGIN mediaTreeNavigation -->\r\n        <a href=\"{MEDIA_TREE_NAV_DIR_HREF}\">&nbsp;{MEDIA_TREE_NAV_DIR} /</a> \r\n        <!-- END mediaTreeNavigation -->\r\n      </td>\r\n    </tr>\r\n    <!-- BEGIN mediaDirectoryTree -->\r\n    <tr class=\"{MEDIA_DIR_TREE_ROW}\">\r\n      <td width=\"16\">&nbsp;</td>\r\n      <td width=\"16\" align=\"center\"><img height=\"16\" width=\"16\" title=\"icon\" alt=\"icon\" src=\"{MEDIA_FILE_ICON}\" /></td>\r\n      <td width=\"100%\"><a title=\"{MEDIA_FILE_NAME}\" href=\"{MEDIA_FILE_NAME_HREF}\">{MEDIA_FILE_NAME}</a></td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_SIZE}</td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_TYPE}</td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_DATE}</td>\r\n    </tr>\r\n    <!-- END mediaDirectoryTree -->\r\n    <!-- BEGIN mediaEmptyDirectory -->\r\n    <tr class=\"row1\">\r\n      <td>&nbsp;</td>\r\n      <td colspan=\"5\">{TXT_MEDIA_DIR_EMPTY}</td>\r\n    </tr>\r\n    <!-- END mediaEmptyDirectory -->\r\n  </tbody>\r\n</table>\r\n', 'Medienarchiv 2', '', 'y', '0', 'on', 'system', '202', '1'),
('321', '25', '{MEDIA_JAVASCRIPT}\r\n<table cellspacing=\"0\" id=\"media\">\r\n  <tbody>\r\n    <tr>\r\n      <th width=\"16\" style=\"text-align: center;\"><strong>#</strong></th>\r\n      <th colspan=\"2\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_NAME_HREF}\">{TXT_MEDIA_FILE_NAME}</a>&nbsp;{MEDIA_NAME_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_SIZE_HREF}\" name=\"sort_size\">{TXT_MEDIA_FILE_SIZE}</a>&nbsp;{MEDIA_SIZE_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_TYPE_HREF}\" name=\"sort_type\">{TXT_MEDIA_FILE_TYPE}</a>&nbsp;{MEDIA_TYPE_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_DATE_HREF}\" name=\"sort_date\">{TXT_MEDIA_FILE_DATE}</a>&nbsp;{MEDIA_DATE_ICON}</th>\r\n    </tr>\r\n    <tr class=\"row2\">\r\n      <td width=\"16\" align=\"center\"><img height=\"16\" width=\"16\" title=\"base\" alt=\"base\" src=\"images/modules/media/_base.gif\" /></td>\r\n      <td colspan=\"5\">\r\n        <a title=\"{MEDIA_TREE_NAV_MAIN}\" href=\"{MEDIA_TREE_NAV_MAIN_HREF}\">{MEDIA_TREE_NAV_MAIN}</a> \r\n        <!-- BEGIN mediaTreeNavigation -->\r\n        <a href=\"{MEDIA_TREE_NAV_DIR_HREF}\">&nbsp;{MEDIA_TREE_NAV_DIR} /</a> \r\n        <!-- END mediaTreeNavigation -->\r\n      </td>\r\n    </tr>\r\n    <!-- BEGIN mediaDirectoryTree -->\r\n    <tr class=\"{MEDIA_DIR_TREE_ROW}\">\r\n      <td width=\"16\">&nbsp;</td>\r\n      <td width=\"16\" align=\"center\"><img height=\"16\" width=\"16\" title=\"icon\" alt=\"icon\" src=\"{MEDIA_FILE_ICON}\" /></td>\r\n      <td width=\"100%\"><a title=\"{MEDIA_FILE_NAME}\" href=\"{MEDIA_FILE_NAME_HREF}\">{MEDIA_FILE_NAME}</a></td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_SIZE}</td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_TYPE}</td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_DATE}</td>\r\n    </tr>\r\n    <!-- END mediaDirectoryTree -->\r\n    <!-- BEGIN mediaEmptyDirectory -->\r\n    <tr class=\"row1\">\r\n      <td>&nbsp;</td>\r\n      <td colspan=\"5\">{TXT_MEDIA_DIR_EMPTY}</td>\r\n    </tr>\r\n    <!-- END mediaEmptyDirectory -->\r\n  </tbody>\r\n</table>\r\n', 'Medienarchiv 3', '', 'y', '0', 'on', 'system', '203', '1'),
('323', '39', '{MEDIA_JAVASCRIPT}\r\n<table cellspacing=\"0\" id=\"media\">\r\n  <tbody>\r\n    <tr>\r\n      <th width=\"16\" style=\"text-align: center;\"><strong>#</strong></th>\r\n      <th colspan=\"2\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_NAME_HREF}\">{TXT_MEDIA_FILE_NAME}</a>&nbsp;{MEDIA_NAME_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_SIZE_HREF}\" name=\"sort_size\">{TXT_MEDIA_FILE_SIZE}</a>&nbsp;{MEDIA_SIZE_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_TYPE_HREF}\" name=\"sort_type\">{TXT_MEDIA_FILE_TYPE}</a>&nbsp;{MEDIA_TYPE_ICON}</th>\r\n      <th nowrap=\"nowrap\" align=\"right\"><a title=\"{TXT_MEDIA_SORT}\" href=\"{MEDIA_DATE_HREF}\" name=\"sort_date\">{TXT_MEDIA_FILE_DATE}</a>&nbsp;{MEDIA_DATE_ICON}</th>\r\n    </tr>\r\n    <tr class=\"row2\">\r\n      <td width=\"16\" align=\"center\"><img height=\"16\" width=\"16\" title=\"base\" alt=\"base\" src=\"images/modules/media/_base.gif\" /></td>\r\n      <td colspan=\"5\">\r\n        <a title=\"{MEDIA_TREE_NAV_MAIN}\" href=\"{MEDIA_TREE_NAV_MAIN_HREF}\">{MEDIA_TREE_NAV_MAIN}</a> \r\n        <!-- BEGIN mediaTreeNavigation -->\r\n        <a href=\"{MEDIA_TREE_NAV_DIR_HREF}\">&nbsp;{MEDIA_TREE_NAV_DIR} /</a> \r\n        <!-- END mediaTreeNavigation -->\r\n      </td>\r\n    </tr>\r\n    <!-- BEGIN mediaDirectoryTree -->\r\n    <tr class=\"{MEDIA_DIR_TREE_ROW}\">\r\n      <td width=\"16\">&nbsp;</td>\r\n      <td width=\"16\" align=\"center\"><img height=\"16\" width=\"16\" title=\"icon\" alt=\"icon\" src=\"{MEDIA_FILE_ICON}\" /></td>\r\n      <td width=\"100%\"><a title=\"{MEDIA_FILE_NAME}\" href=\"{MEDIA_FILE_NAME_HREF}\">{MEDIA_FILE_NAME}</a></td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_SIZE}</td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_TYPE}</td>\r\n      <td nowrap=\"nowrap\" align=\"right\">&nbsp;{MEDIA_FILE_DATE}</td>\r\n    </tr>\r\n    <!-- END mediaDirectoryTree -->\r\n    <!-- BEGIN mediaEmptyDirectory -->\r\n    <tr class=\"row1\">\r\n      <td>&nbsp;</td>\r\n      <td colspan=\"5\">{TXT_MEDIA_DIR_EMPTY}</td>\r\n    </tr>\r\n    <!-- END mediaEmptyDirectory -->\r\n  </tbody>\r\n</table>\r\n', 'Medienarchiv 4', '', 'y', '0', 'on', 'system', '204', '1'),
('346', '0', '<p>Mit dem Datenlistenmodul k&ouml;nnen Listen angelegt und per Platzhalter &uuml;berall im CMS eingebunden werden.<br />\r\n&nbsp;</p>\r\n{DATA_LINKS}', 'Datenlisten', '', 'n', '336', 'on', 'system', '9', '1'),
('348', '49', '<div class=\"ecardContainer\">\r\n<form id=\"ecardForm\" method=\"post\" onsubmit=\"return checkInput();\" action=\"index.php?section=ecard&amp;cmd=preview\">\r\n<fieldset id=\"motiveFieldset\">\r\n<legend>1. Motiv w&auml;hlen</legend>\r\n<!-- BEGIN motiveBlock -->\r\n<!-- BEGIN motiveRow -->\r\n<div class=\"ecardColumn[[CSSNUMBER]]\">\r\n<label><img src=\"[[THUMBNAIL_PATH]]\" alt=\"[[THUMBNAIL_PATH]]\" /><a rel=\"lytebox\" href=\"[[MOTIVE_OPTIMIZED_PATH]]\"><img style=\"border:0px;\" src=\"images/modules/ecard/zoom.gif\" alt=\"zoom\" /></a><input type=\"radio\" style=\"width: 20px; height: 13px;\" name=\"selectedEcard\" value=\"[[MOTIVE_ID]]\" /></label>\r\n</div>\r\n<!-- END motiveRow -->\r\n<!-- END motiveBlock -->\r\n</fieldset>\r\n<fieldset>\r\n<legend>2. Empf&auml;nger eintragen</legend>\r\n<label class=\"fieldDescription\" id=\"fieldDescription_salutation\">Anrede des Empf&auml;ngers:</label>\r\n<input type=\"radio\" name=\"ecardReceiverSalutation\" id=\"ecardReceiverSalutation\" value=\"Herr\" />Herr\r\n<input type=\"radio\" name=\"ecardReceiverSalutation\" id=\"ecardReceiverSalutation\" value=\"Frau\" />Frau<br />\r\n<br />\r\n<label class=\"fieldDescription\">Name des Empf&auml;ngers:</label>\r\n<input type=\"text\" name=\"ecardReceiverName\" id=\"ecardReceiverName\" value=\"[[POST_RECEIVERNAME]]\" /><br />\r\n<br />\r\n<label class=\"fieldDescription\">E-Mail-Adresse des Empf&auml;ngers:</label>\r\n<input type=\"text\" name=\"ecardReceiverEmail\" id=\"ecardReceiverEmail\" value=\"[[POST_RECEIVEREMAIL]]\" /><br />\r\n<br />\r\n<label class=\"fieldDescription\">Name des Absenders:</label>\r\n<input type=\"text\" name=\"ecardSenderName\" id=\"ecardSenderName\" value=\"[[POST_SENDERNAME]]\" /><br />\r\n<br />\r\n<label class=\"fieldDescription\">E-Mail-Adresse des Absenders:</label>\r\n<input type=\"text\" name=\"ecardSenderEmail\" id=\"ecardSenderEmail\" value=\"[[POST_SENDEREMAIL]]\" /><br />\r\n<br />\r\n<label>Geben Sie Ihre Nachricht ein:</label><br />\r\n<br />\r\n<textarea onkeypressed=\"checkAllFields();\" onkeyup=\"checkAllFields();\" name=\"ecardMessage\" id=\"ecardMessage\" cols=\"68\" rows=\"6\">[[POST_MESSAGE]]</textarea><br />\r\nNoch <input type=\"text\" value=\"[[MAX_CHARACTERS]]\" id=\"charCounter\" class=\"charCounterField\" /> Zeichen zur Verf&uuml;gung<br />\r\nNoch <input type=\"text\" value=\"[[MAX_LINES]]\" id=\"lineCounter\" class=\"charCounterField\" /> Zeilen zur Verf&uuml;gung<br />\r\n<br />\r\n<input type=\"submit\" value=\"E-Card Vorschau\" />\r\n</fieldset>\r\n</form>\r\n</div>\r\n\r\n[[JS_CODE]]', 'E-Cards', '', 'y', '0', 'on', 'system', '99', '1'),
('349', '50', '<div class=\"ecardContainer\">\r\n<fieldset>\r\n<legend>So sieht Ihre E-Card aus</legend>\r\n<div class=\"ecardPreviewData\">[[ECARD_DATA]]</div>\r\n<div class=\"ecardPreviewMotive\">[[MOTIVE]]</div>\r\n<div class=\"ecardPreviewMessage\">[[ECARD_MESSAGE]]</div>\r\n<form id=\"ecardSend\" name=\"ecardSend\" action=\"index.php?section=ecard&amp;cmd=send\" method=\"post\">\r\n<input type=\"hidden\" name=\"ecardMessage\" value=\"[[ECARD_MESSAGE]]\" />\r\n<input type=\"hidden\" name=\"ecardSenderName\" value=\"[[ECARD_SENDER_NAME]]\" />\r\n<input type=\"hidden\" name=\"ecardSenderEmail\" value=\"[[ECARD_SENDER_EMAIL]]\" />\r\n<input type=\"hidden\" name=\"ecardReceiverName\" value=\"[[ECARD_RECEIVER_NAME]]\" />\r\n<input type=\"hidden\" name=\"ecardReceiverEmail\" value=\"[[ECARD_RECEIVER_EMAIL]]\" />\r\n<input type=\"hidden\" name=\"ecardReceiverSalutation\" value=\"[[ECARD_RECEIVER_SALUTATION]]\" />\r\n<input type=\"hidden\" name=\"selectedEcard\" value=\"[[MOTIVE_ID]]\" />\r\n<input type=\"button\" value=\"Daten korrigieren\" onclick=\"document.getElementById(\'ecardSend\').action=\'index.php?section=ecard\'; document.ecardSend.submit()\" />\r\n<input type=\"submit\" value=\"E-Card versenden\" />\r\n</form>\r\n</fieldset>\r\n</div>', 'E-Card Vorschau', 'preview', 'y', '348', 'on', 'system', '1', '1'),
('350', '50', '<div class=\"ecardContainer\">[[STATUS_MESSAGE]]</div>', 'E-Card versendet', 'send', 'y', '348', 'on', 'system', '2', '1'),
('351', '50', '<div class=\"ecardContainer\">\r\n<fieldset>\r\n<legend>[[ECARD_FROM]]</legend>\r\n<div class=\"ecardPreviewData\">[[ECARD_DATA]]</div>\r\n<div class=\"ecardPreviewMotive\">[[MOTIVE]]</div>\r\n<div class=\"ecardPreviewMessage\">[[ECARD_MESSAGE]]</div>\r\n</fieldset>\r\n</div>', 'E-Card Ansicht', 'show', 'y', '348', 'on', 'system', '3', '1'),
('109', '37', '<script type=\"text/javascript\">\r\n//<![CDATA[\r\n	{IMMO_IMMO_JAVASCRIPT}\r\n\r\n//]]>\r\n</script>\r\n\r\n<form action=\"index.php?section=immo&amp;cmd=immolist\" method=\"post\">\r\n<div id=\"immo\">\r\n	<a style=\"float:right;\" href=\"javascript:swapSearch();\"> {TXT_IMMO_SEARCH_STYLE} </a>\r\n        <br />\r\n        <div id=\"advanced_search\" style=\"display:none;\">\r\n	<table style=\"width: 100%\">\r\n		<tr>\r\n			<td style=\"width: 50%;\">{TXT_IMMO_LOCATIONS}</td>\r\n			<td><select name=\"locations\" style=\"width: 221px;\">\r\n					<option value=\"\">Alle Orte</option>\r\n					<!-- BEGIN locations -->\r\n					<option value=\"{IMMO_LOCATION_CONTENT}\">{IMMO_LOCATION_CONTENT}</option>\r\n					<!-- END locations -->\r\n				</select><br />\r\n			</td>\r\n                </tr>\r\n                <tr>\r\n		        <td>\r\n			       {TXT_IMMO_PROPERTY_TYPE}				\r\n		        </td>\r\n			<td>\r\n				<select name=\"property_type\" style=\"width: 221px;\">\r\n					<option value=\"purchase\">{TXT_IMMO_PROPERTYTYPE_PURCHASE}</option>\r\n					<option value=\"rent\">{TXT_IMMO_PROPERTYTYPE_RENT}</option>\r\n				</select><br / >\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		        <td>\r\n			       {TXT_IMMO_NEW_BUILDING}				\r\n		        </td>\r\n			<td>\r\n				<select name=\"new_building\" style=\"width: 221px;\">\r\n                                        <option value=\"\"> &nbsp; </option>\r\n					<option value=\"0\">{TXT_IMMO_NO}</option>\r\n					<option value=\"1\">{TXT_IMMO_YES}</option>\r\n				</select><br / >\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				{TXT_IMMO_OBJECT_TYPE}\r\n			</td>\r\n			<td>				\r\n				<select name=\"obj_type\" style=\"width: 221px;\">\r\n					<option value=\"\"></option>\r\n					<option value=\"flat\">{TXT_IMMO_OBJECTTYPE_FLAT}</option>\r\n					<option value=\"house\">{TXT_IMMO_OBJECTTYPE_HOUSE}</option>\r\n					<option value=\"multifamily\">{TXT_IMMO_OBJECTTYPE_MULTIFAMILY}</option>\r\n					<option value=\"estate\">{TXT_IMMO_OBJECTTYPE_ESTATE}</option>\r\n					<option value=\"industry\">{TXT_IMMO_OBJECTTYPE_INDUSTRY}</option>\r\n					<option value=\"parking\">{TXT_IMMO_OBJECTTYPE_PARKING}</option>\r\n				</select><br />\r\n			</td>\r\n		</tr>\r\n                <tr>\r\n		        <td>\r\n			       {TXT_IMMO_FOREIGNER_AUTHORIZATION}			\r\n		        </td>\r\n			<td>\r\n				<select name=\"foreigner_auth\" style=\"width: 221px;\">\r\n                                        <option value=\"\"> &nbsp; </option>\r\n					<option value=\"0\">{TXT_IMMO_NO}</option>\r\n					<option value=\"1\">{TXT_IMMO_YES}</option>\r\n				</select><br / >\r\n			</td>\r\n		</tr>\r\n                <tr>\r\n                  <td>\r\n                      {TXT_IMMO_PRICE}    \r\n                  </td>\r\n                  <td>\r\n                     {TXT_IMMO_FROM} \r\n                      <select name=\"fprice\" style=\"width: 80px;\">\r\n                     	<option value=\"\"> Alle </option>\r\n                     	<option value=\"1000\"> 1000 </option>\r\n                     	<option value=\"2000\"> 2000 </option>\r\n                     	<option value=\"5000\"> 5000 </option>\r\n                     	<option value=\"10000\"> 10000 </option>\r\n                     	<option value=\"100000\"> 100000 </option>\r\n                     	<option value=\"200000\"> 200000 </option>\r\n                     	<option value=\"300000\"> 300000</option>\r\n                     	<option value=\"400000\"> 400000 </option>\r\n                     	<option value=\"500000\"> 500000 </option>\r\n                     	<option value=\"600000\"> 600000 </option>\r\n                     	<option value=\"700000\"> 700000 </option>\r\n                     	<option value=\"700001\"> 700000+ </option>\r\n                     </select>\r\n			{TXT_IMMO_TO} \r\n		     <select name=\"tprice\" style=\"width: 80px;\">\r\n                     	<option value=\"\"> Alle </option>\r\n                     	<option value=\"1000\"> 1000 </option>\r\n                     	<option value=\"2000\"> 2000 </option>\r\n                     	<option value=\"5000\"> 5000 </option>\r\n                     	<option value=\"10000\"> 10000 </option>\r\n                     	<option value=\"100000\"> 100000 </option>\r\n                     	<option value=\"200000\"> 200000 </option>\r\n                     	<option value=\"300000\"> 300000</option>\r\n                     	<option value=\"400000\"> 400000 </option>\r\n                     	<option value=\"500000\"> 500000 </option>\r\n                     	<option value=\"600000\"> 600000 </option>\r\n                     	<option value=\"700000\"> 700000 </option>\r\n                     	<option value=\"700001\"> 700000+ </option>\r\n                     </select>\r\n                  </td>\r\n                </tr>               \r\n                <tr>\r\n                  <td>\r\n                     {TXT_IMMO_ROOMS}\r\n                  </td>\r\n                  <td>\r\n		     {TXT_IMMO_FROM} \r\n                     <select name=\"frooms\" style=\"width: 80px;\">\r\n               			<option value=\"\">Alle</option>\r\n                                <option value=\"1\">1</option>\r\n				<option value=\"1.5\">1.5</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"2.5\">2.5</option>\r\n				<option value=\"3\">3</option>\r\n				<option value=\"3.5\">3.5</option>\r\n				<option value=\"4\">4</option>\r\n				<option value=\"4.5\">4.5</option>\r\n				<option value=\"5\">5</option>\r\n				<option value=\"5.5\">5.5</option>\r\n				<option value=\"6\">6</option>\r\n				<option value=\"6.5\">6.5</option>\r\n				<option value=\"7\">7</option>\r\n				<option value=\"7.5\">7.5</option>\r\n				<option value=\"8\">8</option>						\r\n				<option value=\"8.5\">8+</option>						\r\n                     </select>\r\n		     {TXT_IMMO_TO} \r\n		     <select name=\"trooms\" style=\"width: 80px;\">\r\n                     	        <option value=\"\">Alle</option>\r\n                      	        <option value=\"1\">1</option>\r\n				<option value=\"1.5\">1.5</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"2.5\">2.5</option>\r\n				<option value=\"3\">3</option>\r\n				<option value=\"3.5\">3.5</option>\r\n				<option value=\"4\">4</option>\r\n				<option value=\"4.5\">4.5</option>\r\n				<option value=\"5\">5</option>\r\n				<option value=\"5.5\">5.5</option>\r\n				<option value=\"6\">6</option>\r\n				<option value=\"6.5\">6.5</option>\r\n				<option value=\"7\">7</option>\r\n				<option value=\"7.5\">7.5</option>\r\n				<option value=\"100\">8+</option>\r\n                     </select>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n		        <td>\r\n			       {TXT_IMMO_LOGO}			\r\n		        </td>\r\n		</tr>\r\n	</table>\r\n    </div>\r\n    <div id=\"simple_search\">\r\n    	<table style=\"width: 100%\">\r\n                <tr>\r\n			<td style=\"width: 50%;\">\r\n				{TXT_IMMO_REF_NR}\r\n			</td>\r\n			<td>\r\n				<input  type=\"text\" name=\"ref_nr\" size=\"4\" maxlength=\"4\" value=\"\" />\r\n			</td>\r\n		</tr>\r\n 	</table>\r\n    </div>\r\n        <table style=\"width: 100%\">\r\n    		<tr>\r\n    			<td style=\"width: 50%;\">{TXT_IMMO_FULLTEXT_SEARCH} </td>\r\n    			<td><input type=\"text\" name=\"search\" id=\"immofulltext\" value=\"\" /></td>\r\n    		</tr>\r\n                <tr>\r\n    			<td style=\"width: 50%;\">{TXT_IMMO_ORDER_BY} </td>\r\n    			<td><select name=\"order_by\">\r\n                               <option value=\"location\">{TXT_IMMO_LOCATION}</option>\r\n                               <option value=\"price\">{TXT_IMMO_PRICE}</option>\r\n                               <option value=\"rooms\">{TXT_IMMO_ROOMS}</option>\r\n                            </select>\r\n                        </td>\r\n    		</tr>\r\n        </table>\r\n	<br />\r\n	<input type=\"submit\" value=\"{TXT_IMMO_SEARCH}\" />\r\n<br /><br />		\r\n<h1>{TXT_IMMO_SPECIAL_OFFERS}</h1>\r\n<table>\r\n<tr>\r\n<!-- BEGIN specialOffersImg -->\r\n	<td class=\"center\" style=\"width: 25%; margin: 5px 5px 5px 5px;\">\r\n		<a href=\"index.php?section=immo&amp;cmd=showObj&amp;id={IMMO_ID}\" title=\"{IMMO_SPECIAL_OFFER_HEADER}\"><img {IMMO_IMG_DIM} src=\"{IMMO_SPECIAL_OFFER_IMG_SRC}\" alt=\"{IMMO_SPECIAL_OFFER_HEADER}\" title=\"{IMMO_SPECIAL_OFFER_HEADER}\" /></a>\r\n        </td>\r\n<!-- END specialOffersImg -->\r\n</tr>\r\n<tr>\r\n<!-- BEGIN specialOffersText -->\r\n        <td class=\"center\">\r\n		<span style=\"font-size: 9px;\">{IMMO_SPECIAL_OFFER_HEADER}</span><br />\r\n		<span style=\"font-size: 9px;\">{IMMO_SPECIAL_OFFER_PRICE_PREFIX} {IMMO_SPECIAL_OFFER_PRICE}{IMMO_SPECIAL_OFFER_PRICE_SUFFIX}</span><br />\r\n		<span style=\"font-size: 9px;\">{IMMO_SPECIAL_OFFER_LOCATION}</span><br />\r\n	</td>					\r\n<!-- END specialOffersText -->\r\n</tr>\r\n</table>\r\n</div>\r\n</form>', 'Immobilien', '', 'y', '0', 'on', 'sys_update', '111', '1'),
('110', '37', '<script type=\"text/javascript\">\r\n/* <![CDATA[ */\r\nfields = new Array();\r\nfields[\'name\'] = Array(\r\n	\'Name\',\r\n	\'1\',\r\n	\'.*\',\r\n	\'text\');\r\nfields[\'vorname\'] = Array(\r\n	\'Vorname\',\r\n	\'1\',\r\n	\'.*\',\r\n	\'text\');\r\nfields[\'strasse\'] = Array(\r\n	\'Strasse\',\r\n	\'1\',\r\n	\'.*\',\r\n	\'text\');\r\nfields[\'postleitzahl\'] = Array(\r\n	\'Postleitzahl\',\r\n	\'1\',\r\n	\'^[0-9]*$\',\r\n	\'text\');\r\nfields[\'ortschaft\'] = Array(\r\n	\'Ortschaft\',\r\n	\'1\',\r\n	\'^[A-Za-z\\\\ ]*$\',\r\n	\'text\');\r\nfields[\'email\'] = Array(\r\n	\'Email\',\r\n	\'1\',\r\n	\'^[_a-zA-Z0-9-]+(\\\\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(.[a-zA-Z0-9-]+)*\\\\.(([0-9]{1,3})|([a-zA-Z]{2,3})|(aero|coop|info|museum|name))$\',\r\n	\'text\');\r\nfields[\'fongeschaeft\'] = Array(\r\n	\'Fon Gesch&auml;ft\',\r\n	\'0\',\r\n	\'.*\',\r\n	\'text\');\r\nfields[\'fonprivat\'] = Array(\r\n	\'Fon Privat\',\r\n	\'1\',\r\n	\'.*\',\r\n	\'text\');\r\nfields[\'fonmobil\'] = Array(\r\n	\'Fon Mobil\',\r\n	\'0\',\r\n	\'.*\',\r\n	\'text\');\r\nfields[\'wirwuenschen\'] = Array(\r\n	\'Wir w&uuml;nschen\',\r\n	\'0\',\r\n	\'.*\',\r\n	\'label\');\r\nfields[\'dokuperpost\'] = Array(\r\n	\'Dokumentation per Post\',\r\n	\'0\',\r\n	\'.*\',\r\n	\'checkbox\');\r\nfields[\'beratungfinanzierung\'] = Array(\r\n	\'Beratung Finanzierung\',\r\n	\'0\',\r\n	\'.*\',\r\n	\'checkbox\');\r\nfields[\'besichtigung\'] = Array(\r\n	\'Kontakt-Aufnahme Besichtigung\',\r\n	\'0\',\r\n	\'.*\',\r\n	\'checkbox\');\r\nfields[\'kontakttelefon\'] = Array(\r\n	\'Kontakt-Aufnahme per Telefon\',\r\n	\'0\',\r\n	\'.*\',\r\n	\'checkbox\');\r\nfields[\'bemerkungen\'] = Array(\r\n	\'Bemerkungen\',\r\n	\'0\',\r\n	\'.*\',\r\n	\'textarea\');\r\nfields[\'immoid\'] = Array(\r\n	\'immoid\',\r\n	\'0\',\r\n	\'.*\',\r\n	\'hidden\');\r\nvar readBefore = false;\r\nvar borderBefore = \"\";\r\n\r\nfunction checkAllFields() {\r\n	var isOk = true;\r\n	for (var field in fields) { \r\n		if (!readBefore) {\r\n			borderBefore = document.getElementsByName(\'contactFormField_\' + field)[0].style.border;\r\n			readBefore = true;\r\n		}\r\n\r\n		var type = fields[field][3];\r\n		if (type == \'text\' || type == \'file\' || type == \'password\' || type == \'textarea\') {\r\n			value = document.getElementsByName(\'contactFormField_\' + field)[0].value;\r\n			if (value == \"\" && isRequiredNorm(fields[field][1], value)) {\r\n				isOk = false;\r\n				document.getElementsByName(\'contactFormField_\' + field)[0].style.border = \"red 1px solid\"; \r\n			} else if (value != \"\" && !matchType(fields[field][2], value)) {\r\n				isOk = false;\r\n				document.getElementsByName(\'contactFormField_\' + field)[0].style.border = \"red 1px solid\"; \r\n			} else {\r\n				document.getElementsByName(\'contactFormField_\' + field)[0].style.border = borderBefore; \r\n			}\r\n		} else if (type == \'checkbox\') {\r\n			if (!isRequiredCheckbox(fields[field][1], field)) {\r\n				isOk = false;\r\n			}\r\n		} else if (type == \'checkboxGroup\') {\r\n			if (!isRequiredCheckBoxGroup(fields[field][1], field)) {\r\n				isOk = false;\r\n			}\r\n		} else if (type == \'radio\') {\r\n			if (!isRequiredRadio(fields[field][1], field)) {\r\n				isOk = false;\r\n			}\r\n		}\r\n	}\r\n\r\n	if (!isOk) {\r\n		document.getElementById(\'contactFormError\').style.display = \"block\";\r\n	}\r\n	return isOk;\r\n} \r\n\r\nfunction isRequiredNorm(required, value) {\r\n	if (required == 1) {\r\n		if (value == \"\") { \r\n			return true; \r\n		} \r\n	} \r\n	return false; \r\n} \r\n\r\nfunction matchType(pattern, value) {\r\n	var reg = new RegExp(pattern);\r\n	if (value.match(reg)) {\r\n		return true;\r\n	}\r\n	return false;\r\n} \r\n\r\nfunction isRequiredCheckbox(required, field) {\r\n	if (required == 1) {\r\n		if (!document.getElementsByName(\'contactFormField_\' + field)[0].checked) {\r\n			document.getElementsByName(\'contactFormField_\' + field)[0].style.border = \"red 1px solid\"; \r\n			return false;\r\n		}\r\n	}\r\n	document.getElementsByName(\'contactFormField_\' + field)[0].style.border = borderBefore; \r\n	return true;\r\n}\r\n\r\nfunction isRequiredCheckBoxGroup(required, field) {\r\n	if (required) {\r\n		var boxes = document.getElementsByName(\'contactFormField_\' + field + \'[]\');\r\n		var checked = false;\r\n		for (var i = 0; i < boxes.length; i++) { \r\n 			if (boxes[i].checked) {\r\n				checked = true;\r\n			}\r\n		}\r\n		if (checked) {\r\n			setListBorder(\'contactFormField_\' + field + \'[]\', borderBefore);\r\n			return true;\r\n		} else {\r\n			setListBorder(\'contactFormField_\' + field + \'[]\', \'1px red solid\');\r\n			return false;\r\n		}\r\n	} else { \r\n		return true;\r\n	}\r\n}\r\n\r\nfunction isRequiredRadio(required, field) {\r\n	if (required) {\r\n		var buttons = document.getElementsByName(\'contactFormField_\' + field);\r\n		var checked = false;\r\n		for (var i = 0; i < buttons.length; i++) {\r\n			if (buttons[i].checked) {\r\n				checked = true;\r\n			}\r\n		}\r\n		if (checked) {\r\n			setListBorder(\'contactFormField_\' + field, borderBefore);\r\n			return true;\r\n		} else { \r\n			setListBorder(\'contactFormField_\' + field, \'1px red solid\');\r\n			return false;\r\n		}\r\n	} else { \r\n		return true;\r\n	}\r\n}\r\n\r\nfunction setListBorder(field, borderColor) {\r\n	var boxes = document.getElementsByName(field);\r\n	for (var i = 0; i < boxes.length; i++) {\r\n		boxes[i].style.border = borderColor;\r\n	}\r\n}\r\n\r\n/* ]]> */\r\n</script> \r\n\r\n<span>{CONTACT_FEEDBACK_TEXT}</span>\r\n<br /><br />\r\n<ul>\r\n    <li>Mit&nbsp;diesem Formular geben wir Ihnen die M&ouml;glichkeit, uns 24 Stunden am Tag zu erreichen.</li>\r\n    <li>Der entsprechende Sachbearbeiter wird mit Ihnen gerne Kontakt aufnehmen .</li>\r\n</ul>\r\n<div style=\"color: red; display: none;\" id=\"contactFormError\">Bitte &uuml;berpr&uuml;fen Sie ihre Eingabe!</div>\r\n<br />\r\n<form id=\"contactForm\" onsubmit=\"return checkAllFields();\" enctype=\"multipart/form-data\" method=\"post\" action=\"index.php?section=immo&amp;cmd=interest\">\r\n    <table border=\"0\">\r\n        <tbody>\r\n            <tr>\r\n                <td style=\"width: 100px;\">Name <span style=\"color: red;\">*</span></td>\r\n                <td><input type=\"text\" value=\"\" name=\"contactFormField_name\" style=\"width: 300px;\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 100px;\">Vorname <span style=\"color: red;\">*</span></td>\r\n                <td><input type=\"text\" value=\"\" name=\"contactFormField_vorname\" style=\"width: 300px;\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 100px;\">Strasse <span style=\"color: red;\">*</span></td>\r\n                <td><input type=\"text\" value=\"\" name=\"contactFormField_strasse\" style=\"width: 300px;\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 100px;\">Postleitzahl <span style=\"color: red;\">*</span></td>\r\n                <td><input type=\"text\" value=\"\" name=\"contactFormField_postleitzahl\" style=\"width: 300px;\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 100px;\">Ortschaft <span style=\"color: red;\">*</span></td>\r\n                <td><input type=\"text\" value=\"\" name=\"contactFormField_ortschaft\" style=\"width: 300px;\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 100px;\">Email <span style=\"color: red;\">*</span></td>\r\n                <td><input type=\"text\" value=\"\" name=\"contactFormField_email\" style=\"width: 300px;\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 100px;\">Fon Gesch&auml;ft </td>\r\n                <td><input type=\"text\" value=\"\" name=\"contactFormField_fongeschaeft\" style=\"width: 300px;\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 100px;\">Fon Privat <span style=\"color: red;\">*</span></td>\r\n                <td><input type=\"text\" value=\"\" name=\"contactFormField_fonprivat\" style=\"width: 300px;\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 100px;\">Fon Mobil </td>\r\n                <td><input type=\"text\" value=\"\" name=\"contactFormField_fonmobil\" style=\"width: 300px;\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 100px;\"><br />&nbsp;Wir w&uuml;nschen<br /><br /> </td>\r\n                <td> </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"float: right;\"><input type=\"checkbox\" value=\"1\" name=\"contactFormField_dokuperpost\" /> </td>\r\n                <td>Dokumentation per Post </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"float: right;\"><input type=\"checkbox\" value=\"1\" name=\"contactFormField_beratungfinanzierung\" /> </td>\r\n                <td>Beratung Finanzierung </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"float: right;\"><input type=\"checkbox\" value=\"1\" name=\"contactFormField_besichtigung\" /> </td>\r\n                <td>Kontakt-Aufnahme Besichtigung </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"float: right;\"><input type=\"checkbox\" value=\"1\" name=\"contactFormField_kontakttelefon\" /> </td>\r\n                <td>Kontakt-Aufnahme per Telefon </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 100px;\">Bemerkungen </td>\r\n                <td><textarea name=\"contactFormField_bemerkungen\" style=\"width: 300px; height: 100px;\"></textarea> </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 100px;\">&nbsp; </td>\r\n                <td><input type=\"hidden\" value=\"{IMMO_ID}\" name=\"contactFormField_immoid\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td>&nbsp;</td>\r\n                <td> <input type=\"reset\" value=\"Löschen\" /> <input type=\"submit\" value=\"Absenden\" name=\"submitContactForm\" /> </td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n</form>', 'Interesse an Objekt', 'interest', 'y', '109', 'on', 'sys_update', '1', '1'),
('111', '37', '<script type=\"text/javascript\">\r\n//<![CDATA[\r\n	{IMMO_DETAILS_JAVASCRIPT}\r\n	\r\nvar fields=new Array(\"name\",\"telephone\",\"email\");\r\n\r\nvar checkAllFields = function(){\r\n   for(i in fields){\r\n     if(trim(document.getElementById(fields[i]).value)==\'\'){\r\n      alert(\"{TXT_IMMO_FIELDS_REQUIRED}\"); \r\n      return false;\r\n     }\r\n   }\r\n}\r\nfunction trim(s) {\r\n  while (s.substring(0,1) == \' \') {\r\n    s = s.substring(1,s.length);\r\n  }\r\n  while (s.substring(s.length-1,s.length) == \' \') {\r\n    s = s.substring(0,s.length-1);\r\n  }\r\n  return s;\r\n}\r\n\r\n//]]>\r\n</script>\r\n<br />\r\n{TXT_IMMO_STATUS}\r\n<div id=\"immo\">\r\n<form id=\"contactForm\" onsubmit=\"return checkAllFields();\" method=\"post\" action=\"index.php?section=immo&amp;cmd=getPDF\">\r\n    <table border=\"0\">\r\n        <tbody>\r\n            <tr>\r\n                <td class=\"contact\"> {TXT_IMMO_NAME}<span style=\"color: red;\">*</span></td>\r\n                <td><input type=\"text\" value=\"\" id=\"name\" name=\"name\" style=\"width: 300px;\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td class=\"contact\">{TXT_IMMO_FIRSTNAME}<span style=\"color: red;\">*</span></td>\r\n                <td><input type=\"text\" value=\"\" id=\"firstname\" name=\"firstname\" style=\"width: 300px;\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td class=\"contact\">{TXT_IMMO_COMPANY}</td>\r\n                <td><input type=\"text\" value=\"\" id=\"company\" name=\"company\" style=\"width: 300px;\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td class=\"contact\">{TXT_IMMO_STREET}<span style=\"color: red;\">*</span></td>\r\n                <td><input type=\"text\" value=\"\" id=\"street\" name=\"street\" style=\"width: 300px;\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td class=\"contact\">{TXT_IMMO_ZIP}<span style=\"color: red;\">*</span></td>\r\n                <td><input type=\"text\" value=\"\" id=\"zip\" name=\"zip\" style=\"width: 300px;\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td class=\"contact\">{TXT_IMMO_LOCATION}<span style=\"color: red;\">*</span></td>\r\n                <td><input type=\"text\" value=\"\" id=\"location\" name=\"location\" style=\"width: 300px;\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td class=\"contact\">E-Mail <span style=\"color: red;\">*</span></td>\r\n                <td><input type=\"text\" value=\"\" id=\"email\" name=\"email\" style=\"width: 300px;\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td class=\"contact\">{TXT_IMMO_TELEPHONE}<span style=\"color: red;\">*</span></td>\r\n                <td><input type=\"text\" value=\"\" id=\"telephone\" name=\"telephone\" style=\"width: 300px;\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td class=\"contact\">{TXT_IMMO_TELEPHONE_OFFICE}</td>\r\n                <td><input type=\"text\" value=\"\" id=\"telephone_office\" name=\"telephone_office\" style=\"width: 300px;\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td class=\"contact\">{TXT_IMMO_TELEPHONE_MOBILE}</td>\r\n                <td><input type=\"text\" value=\"\" id=\"telephone_mobile\" name=\"telephone_mobile\" style=\"width: 300px;\" /> </td>\r\n            </tr>\r\n            <tr>\r\n                <td class=\"contact\"><label for=\"purchase\">{TXT_IMMO_PURCHASE}</label></td>\r\n                <td><input type=\"checkbox\" name=\"purchase\" id=\"purchase\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td class=\"contact\"><label for=\"funding\">{TXT_IMMO_FUNDING}</label></td>\r\n                <td><input type=\"checkbox\" name=\"funding\" id=\"funding\" /></td>\r\n            </tr>\r\n            <tr>\r\n                <td class=\"contact\">{TXT_IMMO_COMMENTS}</td>\r\n                <td><textarea id=\"comment\" name=\"comment\" style=\"width: 300px;\" /> </textarea></td>\r\n            </tr>\r\n\r\n            <tr>\r\n                <td>&nbsp;</td>\r\n                <td> <input type=\"submit\" value=\"Absenden\" name=\"submitContactForm\" /> <input type=\"reset\" value=\"{TXT_IMMO_DELETE}\" />  </td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n<input type=\"hidden\" name=\"immo_id\" value=\"{IMMO_ID}\" />\r\n<input type=\"hidden\" name=\"field_id\" value=\"{IMMO_FIELD_ID}\" />\r\n</form>\r\n</div>', 'Kontaktdetails für PDF', 'getPDF', 'y', '109', 'on', 'system', '1', '1'),
('112', '37', '<!-- start showObj --> <script type=\"text/javascript\">\r\n//<![CDATA[\r\n	{IMMO_DETAILS_JAVASCRIPT}\r\n	\r\n//]]>\r\n</script>\r\n<div id=\"immo\">\r\n<table style=\"width: 100%;\">\r\n<!-- BEGIN basicData -->\r\n<tbody>\r\n<tr>\r\n    <td class=\"center\" colspan=\"2\"> \r\n       <a href=\"javascript:void(0)\" title=\"preview\" onclick=\"openPreview(\'{IMMO_ID}\', \'{IMMO_IMAGES_INDEX}\')\">\r\n         <img {IMMO_IMG_DIM} src=\"{IMMO_IMG_SRC}\" title=\"{IMMO_HEADER}\" alt=\"{IMMO_HEADER}\" />\r\n       </a>\r\n    </td>\r\n</tr>\r\n<tr>\r\n    <td class=\"nowrap\">\r\n         <p>{IMMO_HEADLINE}<br /> Ref.Nr.: {IMMO_REF_NR}</p>\r\n         <p>{IMMO_ADDRESS} <br /> {IMMO_LOCATION} \r\n           <a href=\"javascript:void(0)\" title=\"{TXT_IMMO_SHOWMAP}\" onclick=\"openMap({IMMO_ID});\"> <br />{TXT_IMMO_SHOWMAP} </a><br />  \r\n         </p>\r\n     </td>\r\n     <td>\r\n      <p style=\"margin-left: 25px;\">{TXT_IMMO_PRICE_PREFIX} {IMMO_PRICE}{TXT_IMMO_PRICE_SUFFIX} <br /><br /> </p>\r\n     <ul> 		\r\n         <!-- BEGIN listing -->\r\n  	       <li> {IMMO_LISTING} </li>\r\n         <!-- END listing --> 		\r\n     </ul>\r\n     <br />\r\n    </td>\r\n </tr>\r\n<tr>\r\n	<td colspan=\"2\">\r\n		<p>{IMMO_DESCRIPTION}</p>\r\n             <!-- BEGIN homepageLink --> \r\n                 <ul><li><a href=\"{IMMO_HOMEPAGE_LINK}\" title=\"{TXT_IMMO_HOMEPAGE_LINK}\"> {TXT_IMMO_HOMEPAGE_LINK}</a>&nbsp;</li></ul>\r\n             <!-- END homepageLink -->\r\n            <br />\r\n	</td>\r\n</tr>\r\n    <!-- END basicData -->\r\n<tr>\r\n<td colspan=\"2\"><h1>{TXT_IMMO_SERVICE_LINKS}</h1>  <a name=\"servicelinks\" title=\"{TXT_IMMO_SERVICE_LINKS}\"> </a>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"50%\">\r\n<ul>\r\n<li> <a href=\"#objdata\"> {TXT_IMMO_TO_OBJECTDATA} </a></li>\r\n<li> <a href=\"#links\"> {TXT_IMMO_TO_LINKS} </a></li>\r\n</ul>\r\n</td>\r\n<td width=\"50%\">\r\n<ul>\r\n<li> <a href=\"#plans\"> {TXT_IMMO_TO_PLANS} </a></li>\r\n<li><a href=\"index.php?section=immo&amp;cmd=interest&amp;immoid={IMMO_ID}\" title=\"{TXT_IMMO_CONTACT_FORM}\"> {TXT_IMMO_CONTACT_FORM}</a>&nbsp; </li>\r\n</ul>\r\n<br />\r\n</td>\r\n</tr>\r\n<tr>\r\n	<td colspan=\"2\">\r\n		<h1>{TXT_IMMO_PICTURES}</h1>\r\n	</td>\r\n</tr>\r\n</table>\r\n<table style=\"width: 100%\">\r\n<!-- BEGIN panorama --> \r\n<tr>\r\n <td class=\"center\" colspan=\"3\">\r\n  {IMMO_FIELD_NAME}\r\n </td>\r\n</tr>\r\n<tr>\r\n <td class=\"center\" colspan=\"3\"> \r\n  <a href=\"javascript:void(0)\" title=\"preview\" onclick=\"openPreview(\'{IMMO_ID}\', \'{IMMO_IMAGES_INDEX}\')\">\r\n   <img {IMMO_IMG_DIM} src=\"{IMMO_IMG_SRC}\" alt=\"{IMMO_FIELD_CONTENT}\" title=\"{IMMO_IMG_SRC}\"/>\r\n  </a> \r\n </td>  \r\n</tr>\r\n<tr>\r\n <td class=\"center\" colspan=\"3\">\r\n  {IMMO_FIELD_CONTENT}<br /><br />\r\n </td>\r\n</tr>\r\n<!-- END panorama -->\r\n<!-- BEGIN imageListRow -->  \r\n<tr>\r\n<!-- BEGIN imageList -->  \r\n	<td class=\"center\" style=\"width: 33%;\">\r\n            <!-- BEGIN anchor_plan_images -->\r\n                 <a name=\"plans\"> &nbsp; </a>\r\n            <!-- END anchor_plan_images -->\r\n		{IMMO_FIELD_NAME}<br />\r\n		<a href=\"javascript:void(0)\" title=\"preview\" onclick=\"openPreview(\'{IMMO_ID}\', \'{IMMO_IMAGES_INDEX}\')\"><img {IMMO_IMG_DIM} src=\"{IMMO_IMG_SRC}\" title=\"{IMMO_FIELD_NAME}\" /></a><br />\r\n	    {IMMO_FIELD_CONTENT}<br />\r\n	</td> \r\n<!-- END imageList --> \r\n</tr>\r\n<!-- BEGIN imageListHR --> \r\n<tr> \r\n	<td colspan=\"3\">    \r\n		<hr />   \r\n	</td> \r\n</tr>\r\n<!-- END imageListHR --> \r\n<!-- END imageListRow -->  \r\n</table>\r\n<br />\r\n<table width=\"100%\">\r\n<tr>\r\n    <td colspan=\"2\">\r\n		<h1>{TXT_IMMO_OBJECTDATA}</h1>\r\n		<span style=\"float: right\"><a href=\"#servicelinks\" name=\"objdata\" title=\"{TXT_IMMO_OBJECTDATA}\">{TXT_IMMO_GOTO_TOP}</a></span>\r\n	</td>\r\n</tr>\r\n<!-- BEGIN textList -->  \r\n<tr>\r\n	<td class=\"field\">\r\n		{IMMO_FIELD_NAME}\r\n	</td>\r\n	<td>\r\n		{TXT_IMMO_CURRENCY_PREFIX} {IMMO_FIELD_CONTENT}{TXT_IMMO_CURRENCY_SUFFIX}\r\n	</td>\r\n</tr>\r\n<!-- BEGIN textListHR -->  \r\n<tr> \r\n	<td colspan=\"2\"> \r\n		<hr /> \r\n	</td> \r\n</tr>\r\n<!-- END textListHR -->  \r\n<!-- END textList -->\r\n<tr><td colspan=\"2\">&nbsp;</td></tr>\r\n<tr>\r\n    <td colspan=\"2\">\r\n		<h1>{TXT_IMMO_LINKS}</h1>\r\n		<span style=\"float: right\"><a href=\"#servicelinks\" name=\"links\" title=\"{TXT_IMMO_LINKS}\">{TXT_IMMO_GOTO_TOP}</a></span>\r\n	</td>\r\n</tr>\r\n<!-- BEGIN linkListRow -->  \r\n<tr>\r\n<!-- BEGIN linkList -->\r\n	<td>	\r\n		<img style=\"border: none; vertical-align: middle;\" height=\"16px\" width=\"16px\" src=\"{IMMO_LINK_ICON_SRC}\" alt=\"{IMMO_FIELD_NAME}\" title=\"{IMMO_FIELD_NAME}\" /><a href=\"{IMMO_FIELD_CONTENT}\" target=\"_blank\" title=\"{IMMO_FIELD_NAME}\"> {IMMO_FIELD_NAME}  </a>\r\n	</td>\r\n<!-- END linkList -->\r\n</tr>  \r\n<!-- END linkListRow -->  \r\n<tr><td colspan=\"2\">&nbsp;</td></tr>\r\n</tbody>\r\n</table>\r\n\r\n<br />\r\n<br />\r\n<div class=\"center\">\r\n\r\n<a href=\"index.php?section=immo&amp;cmd=interest&amp;immoid={IMMO_ID}\" title=\"{TXT_IMMO_INTERESTED_IN_OBJECT}\"> {TXT_IMMO_INTERESTED_IN_OBJECT}</a>\r\n&nbsp;<br /><br /><br />\r\n<a href=\"index.php?section=immo&amp;cmd=map\" > {TXT_IMMO_TO_MAP} </a>\r\n</div>\r\n<!--\r\n<div style=\"float: right;\">\r\n  <a href=\"javascript:history.back()\" title=\"{TXT_IMMO_BACK}\"> {TXT_IMMO_BACK} </a>\r\n</div>        \r\n<div style=\"float: right;\">\r\n  <a href=\"index.php?section=contact&amp;cmd=4&amp;immoid={IMMO_ID}\" title=\"{TXT_IMMO_CONTACT_FORM}\"> {TXT_IMMO_CONTACT_FORM}</a>&nbsp;\r\n</div>\r\n-->\r\n<br />\r\n</div><!-- //end div id=immo -->', 'Immobilien Details', 'showObj', 'y', '109', 'on', 'sys_update', '1', '1'),
('113', '37', '<iframe style=\"border: none;\" src=\"http://{IMMO_GOOGLEMAP_DOMAIN}/?section=immo&standalone=1\" border=\"0\" width=\"560\" height=\"400\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\" ></iframe>', 'Luftbild-Übersicht', 'map', 'y', '109', 'on', 'sys_update', '1', '1'),
('114', '37', '<div style=\"text-align:center;\"><strong>&nbsp;{TXT_IMMO_SEARCHTERM_TOO_SHORT}</strong></div>\r\n<table style=\"width: 100%\">\r\n<!-- BEGIN objectRow -->\r\n<tr>\r\n  <td colspan=\"3\">\r\n    <hr />\r\n  </td>\r\n</tr>\r\n<tr>\r\n	<td style=\"vertical-align: top; width: 45%\">\r\n		<p>{IMMO_HEADLINE}</p>\r\n		<p>{IMMO_LOCATION}</p>\r\n		<p>{TXT_IMMO_CURRENCY_PREFIX} {IMMO_PRICE}{TXT_IMMO_CURRENCY_SUFFIX} </p>\r\n	</td>	\r\n	<td style=\"vertical-align: top;\">\r\n		<p>Ref-Nr. {IMMO_REF_NR}</p>\r\n		<p>{IMMO_HEADER}</p>\r\n		<p><a href=\"index.php?section=immo&amp;cmd=showObj&amp;id={IMMO_ID}\"> {TXT_IMMO_MORE_INFOS} </a></p>		\r\n	</td>	\r\n	<td style=\"vertical-align: top; text-align: right;\">\r\n             <!-- BEGIN previewImage -->\r\n		<img {IMMO_IMG_PREVIEW_DIM} title=\"{IMMO_HEADER}\" alt=\"{IMMO_HEADER}\" src=\"{IMMO_IMG_PREVIEW_SRC}\" />\r\n             <!-- END previewImage -->\r\n	</td>	\r\n</tr>\r\n<!-- END objectRow -->\r\n</table>\r\n<br /><br />\r\n{IMMO_PAGING}\r\n<div style=\"text-align: center;\">\r\n<a href=\"javascript:history.back()\" alt=\"{TXT_IMMO_BACK}\"> {TXT_IMMO_BACK} </a>\r\n</div>', 'Immobilien Liste', 'immolist', 'y', '109', 'on', 'sys_update', '1', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_article_group
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_article_group`;

CREATE TABLE `contrexx_module_shop_article_group` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `name` varchar(255) NOT NULL default '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_shop_categories
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_categories`;

CREATE TABLE `contrexx_module_shop_categories` (
 `catid` int(11) unsigned NOT NULL auto_increment,
 `parentid` int(11) unsigned NOT NULL default '0',
 `catname` varchar(255) NOT NULL default '',
 `catsorting` smallint(4) unsigned NOT NULL default '100',
 `catstatus` tinyint(1) unsigned NOT NULL default '1',
 `picture` varchar(255) NOT NULL default '',
 `flags` varchar(255) NOT NULL default '',
  PRIMARY KEY (`catid`),
  FULLTEXT KEY `flags` (`flags`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5;

INSERT INTO `contrexx_module_shop_categories` (`catid`, `parentid`, `catname`, `catsorting`, `catstatus`, `picture`, `flags`) VALUES 
('1', '0', 'Gadgets', '1', '1', 'iPhone.jpg', ''),
('3', '0', 'Mitgliedschaft', '0', '1', 'mitgliedschaft_400x300.jpg', ''),
('4', '0', 'Leer', '0', '1', 'mitgliedschaft_400x300.jpg', '');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_config
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_config`;

CREATE TABLE `contrexx_module_shop_config` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `name` varchar(64) NOT NULL default '',
 `value` varchar(255) NOT NULL default '',
 `status` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=56;

INSERT INTO `contrexx_module_shop_config` (`id`, `name`, `value`, `status`) VALUES 
('21', 'email', 'info@example.com', '0'),
('22', 'tax_number', '99999', '0'),
('23', 'tax_included', '0', '0'),
('28', 'saferpay_id', '37385-17754345', '0'),
('29', 'yellowpay_id', 'demo', '0'),
('30', 'yellowpay_hash_seed', 'demo', '0'),
('31', 'confirmation_emails', 'info@example.com', '0'),
('32', 'telephone', '012 345 67 89', '0'),
('33', 'fax', '012 345 67 90', '0'),
('34', 'yellowpay_authorization_type', 'immediate', '0'),
('35', 'paypal_account_email', 'info@example.com', '1'),
('36', 'yellowpay_shop_id', '1711', '0'),
('37', 'country_id', '204', '0'),
('38', 'saferpay_use_test_account', '0', '0'),
('39', 'saferpay_finalize_payment', '1', '0'),
('40', 'saferpay_window_option', '2', '0'),
('41', 'paypal_default_currency', 'EUR', '0'),
('42', 'tax_enabled', '1', '0'),
('43', 'tax_default_id', '10', '0'),
('44', 'payment_lsv_status', '', '0'),
('45', 'shop_company', 'Beispiel AG', '0'),
('46', 'shop_address', 'Firmenstrasse 1\r\nCH-654321 Nirgendwo\r\n', '0'),
('47', 'shop_thumbnail_max_width', '80', '0'),
('48', 'shop_thumbnail_max_height', '80', '0'),
('49', 'shop_thumbnail_quality', '95', '0'),
('52', 'shop_weight_enable', '0', '0'),
('53', 'yellowpay_accepted_payment_methods', 'PostFinanceCard,yellownet,Master,Visa,Amex,Diners,yellowbill', '0'),
('54', 'yellowpay_use_testserver', '0', '0'),
('55', 'product_sorting', '1', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_countries
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_countries`;

CREATE TABLE `contrexx_module_shop_countries` (
 `countries_id` int(11) unsigned NOT NULL auto_increment,
 `countries_name` varchar(64) NOT NULL default '',
 `countries_iso_code_2` char(2) NOT NULL default '',
 `countries_iso_code_3` char(3) NOT NULL default '',
 `activation_status` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY (`countries_id`),
  KEY `INDEX_COUNTRIES_NAME` (`countries_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=240;

INSERT INTO `contrexx_module_shop_countries` (`countries_id`, `countries_name`, `countries_iso_code_2`, `countries_iso_code_3`, `activation_status`) VALUES 
('1', 'Afghanistan', 'AF', 'AFG', '0'),
('2', 'Albania', 'AL', 'ALB', '0'),
('3', 'Algeria', 'DZ', 'DZA', '0'),
('4', 'American Samoa', 'AS', 'ASM', '0'),
('5', 'Andorra', 'AD', 'AND', '0'),
('6', 'Angola', 'AO', 'AGO', '0'),
('7', 'Anguilla', 'AI', 'AIA', '0'),
('8', 'Antarctica', 'AQ', 'ATA', '0'),
('9', 'Antigua and Barbuda', 'AG', 'ATG', '0'),
('10', 'Argentina', 'AR', 'ARG', '0'),
('11', 'Armenia', 'AM', 'ARM', '0'),
('12', 'Aruba', 'AW', 'ABW', '0'),
('13', 'Australia', 'AU', 'AUS', '0'),
('14', 'Österreich', 'AT', 'AUT', '1'),
('15', 'Azerbaijan', 'AZ', 'AZE', '0'),
('16', 'Bahamas', 'BS', 'BHS', '0'),
('17', 'Bahrain', 'BH', 'BHR', '0'),
('18', 'Bangladesh', 'BD', 'BGD', '0'),
('19', 'Barbados', 'BB', 'BRB', '0'),
('20', 'Belarus', 'BY', 'BLR', '0'),
('21', 'Belgium', 'BE', 'BEL', '0'),
('22', 'Belize', 'BZ', 'BLZ', '0'),
('23', 'Benin', 'BJ', 'BEN', '0'),
('24', 'Bermuda', 'BM', 'BMU', '0'),
('25', 'Bhutan', 'BT', 'BTN', '0'),
('26', 'Bolivia', 'BO', 'BOL', '0'),
('27', 'Bosnia and Herzegowina', 'BA', 'BIH', '0'),
('28', 'Botswana', 'BW', 'BWA', '0'),
('29', 'Bouvet Island', 'BV', 'BVT', '0'),
('30', 'Brazil', 'BR', 'BRA', '0'),
('31', 'British Indian Ocean Territory', 'IO', 'IOT', '0'),
('32', 'Brunei Darussalam', 'BN', 'BRN', '0'),
('33', 'Bulgaria', 'BG', 'BGR', '0'),
('34', 'Burkina Faso', 'BF', 'BFA', '0'),
('35', 'Burundi', 'BI', 'BDI', '0'),
('36', 'Cambodia', 'KH', 'KHM', '0'),
('37', 'Cameroon', 'CM', 'CMR', '0'),
('38', 'Canada', 'CA', 'CAN', '0'),
('39', 'Cape Verde', 'CV', 'CPV', '0'),
('40', 'Cayman Islands', 'KY', 'CYM', '0'),
('41', 'Central African Republic', 'CF', 'CAF', '0'),
('42', 'Chad', 'TD', 'TCD', '0'),
('43', 'Chile', 'CL', 'CHL', '0'),
('44', 'China', 'CN', 'CHN', '0'),
('45', 'Christmas Island', 'CX', 'CXR', '0'),
('46', 'Cocos (Keeling) Islands', 'CC', 'CCK', '0'),
('47', 'Colombia', 'CO', 'COL', '0'),
('48', 'Comoros', 'KM', 'COM', '0'),
('49', 'Congo', 'CG', 'COG', '0'),
('50', 'Cook Islands', 'CK', 'COK', '0'),
('51', 'Costa Rica', 'CR', 'CRI', '0'),
('52', 'Cote D\'Ivoire', 'CI', 'CIV', '0'),
('53', 'Croatia', 'HR', 'HRV', '0'),
('54', 'Cuba', 'CU', 'CUB', '0'),
('55', 'Cyprus', 'CY', 'CYP', '0'),
('56', 'Czech Republic', 'CZ', 'CZE', '0'),
('57', 'Denmark', 'DK', 'DNK', '0'),
('58', 'Djibouti', 'DJ', 'DJI', '0'),
('59', 'Dominica', 'DM', 'DMA', '0'),
('60', 'Dominican Republic', 'DO', 'DOM', '0'),
('61', 'East Timor', 'TP', 'TMP', '0'),
('62', 'Ecuador', 'EC', 'ECU', '0'),
('63', 'Egypt', 'EG', 'EGY', '0'),
('64', 'El Salvador', 'SV', 'SLV', '0'),
('65', 'Equatorial Guinea', 'GQ', 'GNQ', '0'),
('66', 'Eritrea', 'ER', 'ERI', '0'),
('67', 'Estonia', 'EE', 'EST', '0'),
('68', 'Ethiopia', 'ET', 'ETH', '0'),
('69', 'Falkland Islands (Malvinas)', 'FK', 'FLK', '0'),
('70', 'Faroe Islands', 'FO', 'FRO', '0'),
('71', 'Fiji', 'FJ', 'FJI', '0'),
('72', 'Finland', 'FI', 'FIN', '0'),
('73', 'France', 'FR', 'FRA', '0'),
('74', 'France, Metropolitan', 'FX', 'FXX', '0'),
('75', 'French Guiana', 'GF', 'GUF', '0'),
('76', 'French Polynesia', 'PF', 'PYF', '0'),
('77', 'French Southern Territories', 'TF', 'ATF', '0'),
('78', 'Gabon', 'GA', 'GAB', '0'),
('79', 'Gambia', 'GM', 'GMB', '0'),
('80', 'Georgia', 'GE', 'GEO', '0'),
('81', 'Deutschland', 'DE', 'DEU', '1'),
('82', 'Ghana', 'GH', 'GHA', '0'),
('83', 'Gibraltar', 'GI', 'GIB', '0'),
('84', 'Greece', 'GR', 'GRC', '0'),
('85', 'Greenland', 'GL', 'GRL', '0'),
('86', 'Grenada', 'GD', 'GRD', '0'),
('87', 'Guadeloupe', 'GP', 'GLP', '0'),
('88', 'Guam', 'GU', 'GUM', '0'),
('89', 'Guatemala', 'GT', 'GTM', '0'),
('90', 'Guinea', 'GN', 'GIN', '0'),
('91', 'Guinea-bissau', 'GW', 'GNB', '0'),
('92', 'Guyana', 'GY', 'GUY', '0'),
('93', 'Haiti', 'HT', 'HTI', '0'),
('94', 'Heard and Mc Donald Islands', 'HM', 'HMD', '0'),
('95', 'Honduras', 'HN', 'HND', '0'),
('96', 'Hong Kong', 'HK', 'HKG', '0'),
('97', 'Hungary', 'HU', 'HUN', '0'),
('98', 'Iceland', 'IS', 'ISL', '0'),
('99', 'India', 'IN', 'IND', '0'),
('100', 'Indonesia', 'ID', 'IDN', '0'),
('101', 'Iran (Islamic Republic of)', 'IR', 'IRN', '0'),
('102', 'Iraq', 'IQ', 'IRQ', '0'),
('103', 'Ireland', 'IE', 'IRL', '0'),
('104', 'Israel', 'IL', 'ISR', '0'),
('105', 'Italy', 'IT', 'ITA', '0'),
('106', 'Jamaica', 'JM', 'JAM', '0'),
('107', 'Japan', 'JP', 'JPN', '0'),
('108', 'Jordan', 'JO', 'JOR', '0'),
('109', 'Kazakhstan', 'KZ', 'KAZ', '0'),
('110', 'Kenya', 'KE', 'KEN', '0'),
('111', 'Kiribati', 'KI', 'KIR', '0'),
('112', 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', '0'),
('113', 'Korea, Republic of', 'KR', 'KOR', '0'),
('114', 'Kuwait', 'KW', 'KWT', '0'),
('115', 'Kyrgyzstan', 'KG', 'KGZ', '0'),
('116', 'Lao People\'s Democratic Republic', 'LA', 'LAO', '0'),
('117', 'Latvia', 'LV', 'LVA', '0'),
('118', 'Lebanon', 'LB', 'LBN', '0'),
('119', 'Lesotho', 'LS', 'LSO', '0'),
('120', 'Liberia', 'LR', 'LBR', '0'),
('121', 'Libyan Arab Jamahiriya', 'LY', 'LBY', '0'),
('122', 'Liechtenstein', 'LI', 'LIE', '1'),
('123', 'Lithuania', 'LT', 'LTU', '0'),
('124', 'Luxembourg', 'LU', 'LUX', '0'),
('125', 'Macau', 'MO', 'MAC', '0'),
('126', 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', '0'),
('127', 'Madagascar', 'MG', 'MDG', '0'),
('128', 'Malawi', 'MW', 'MWI', '0'),
('129', 'Malaysia', 'MY', 'MYS', '0'),
('130', 'Maldives', 'MV', 'MDV', '0'),
('131', 'Mali', 'ML', 'MLI', '0'),
('132', 'Malta', 'MT', 'MLT', '0'),
('133', 'Marshall Islands', 'MH', 'MHL', '0'),
('134', 'Martinique', 'MQ', 'MTQ', '0'),
('135', 'Mauritania', 'MR', 'MRT', '0'),
('136', 'Mauritius', 'MU', 'MUS', '0'),
('137', 'Mayotte', 'YT', 'MYT', '0'),
('138', 'Mexico', 'MX', 'MEX', '0'),
('139', 'Micronesia, Federated States of', 'FM', 'FSM', '0'),
('140', 'Moldova, Republic of', 'MD', 'MDA', '0'),
('141', 'Monaco', 'MC', 'MCO', '0'),
('142', 'Mongolia', 'MN', 'MNG', '0'),
('143', 'Montserrat', 'MS', 'MSR', '0'),
('144', 'Morocco', 'MA', 'MAR', '0'),
('145', 'Mozambique', 'MZ', 'MOZ', '0'),
('146', 'Myanmar', 'MM', 'MMR', '0'),
('147', 'Namibia', 'NA', 'NAM', '0'),
('148', 'Nauru', 'NR', 'NRU', '0'),
('149', 'Nepal', 'NP', 'NPL', '0'),
('150', 'Netherlands', 'NL', 'NLD', '0'),
('151', 'Netherlands Antilles', 'AN', 'ANT', '0'),
('152', 'New Caledonia', 'NC', 'NCL', '0'),
('153', 'New Zealand', 'NZ', 'NZL', '0'),
('154', 'Nicaragua', 'NI', 'NIC', '0'),
('155', 'Niger', 'NE', 'NER', '0'),
('156', 'Nigeria', 'NG', 'NGA', '0'),
('157', 'Niue', 'NU', 'NIU', '0'),
('158', 'Norfolk Island', 'NF', 'NFK', '0'),
('159', 'Northern Mariana Islands', 'MP', 'MNP', '0'),
('160', 'Norway', 'NO', 'NOR', '0'),
('161', 'Oman', 'OM', 'OMN', '0'),
('162', 'Pakistan', 'PK', 'PAK', '0'),
('163', 'Palau', 'PW', 'PLW', '0'),
('164', 'Panama', 'PA', 'PAN', '0'),
('165', 'Papua New Guinea', 'PG', 'PNG', '0'),
('166', 'Paraguay', 'PY', 'PRY', '0'),
('167', 'Peru', 'PE', 'PER', '0'),
('168', 'Philippines', 'PH', 'PHL', '0'),
('169', 'Pitcairn', 'PN', 'PCN', '0'),
('170', 'Poland', 'PL', 'POL', '0'),
('171', 'Portugal', 'PT', 'PRT', '0'),
('172', 'Puerto Rico', 'PR', 'PRI', '0'),
('173', 'Qatar', 'QA', 'QAT', '0'),
('174', 'Reunion', 'RE', 'REU', '0'),
('175', 'Romania', 'RO', 'ROM', '0'),
('176', 'Russian Federation', 'RU', 'RUS', '0'),
('177', 'Rwanda', 'RW', 'RWA', '0'),
('178', 'Saint Kitts and Nevis', 'KN', 'KNA', '0'),
('179', 'Saint Lucia', 'LC', 'LCA', '0'),
('180', 'Saint Vincent and the Grenadines', 'VC', 'VCT', '0'),
('181', 'Samoa', 'WS', 'WSM', '0'),
('182', 'San Marino', 'SM', 'SMR', '0'),
('183', 'Sao Tome and Principe', 'ST', 'STP', '0'),
('184', 'Saudi Arabia', 'SA', 'SAU', '0'),
('185', 'Senegal', 'SN', 'SEN', '0'),
('186', 'Seychelles', 'SC', 'SYC', '0'),
('187', 'Sierra Leone', 'SL', 'SLE', '0'),
('188', 'Singapore', 'SG', 'SGP', '0'),
('189', 'Slovakia (Slovak Republic)', 'SK', 'SVK', '0'),
('190', 'Slovenia', 'SI', 'SVN', '0'),
('191', 'Solomon Islands', 'SB', 'SLB', '0'),
('192', 'Somalia', 'SO', 'SOM', '0'),
('193', 'South Africa', 'ZA', 'ZAF', '0'),
('194', 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', '0'),
('195', 'Spain', 'ES', 'ESP', '0'),
('196', 'Sri Lanka', 'LK', 'LKA', '0'),
('197', 'St. Helena', 'SH', 'SHN', '0'),
('198', 'St. Pierre and Miquelon', 'PM', 'SPM', '0'),
('199', 'Sudan', 'SD', 'SDN', '0'),
('200', 'Suriname', 'SR', 'SUR', '0'),
('201', 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '0'),
('202', 'Swaziland', 'SZ', 'SWZ', '0'),
('203', 'Sweden', 'SE', 'SWE', '0'),
('204', 'Schweiz', 'CH', 'CHE', '1'),
('205', 'Syrian Arab Republic', 'SY', 'SYR', '0'),
('206', 'Taiwan', 'TW', 'TWN', '0'),
('207', 'Tajikistan', 'TJ', 'TJK', '0'),
('208', 'Tanzania, United Republic of', 'TZ', 'TZA', '0'),
('209', 'Thailand', 'TH', 'THA', '0'),
('210', 'Togo', 'TG', 'TGO', '0'),
('211', 'Tokelau', 'TK', 'TKL', '0'),
('212', 'Tonga', 'TO', 'TON', '0'),
('213', 'Trinidad and Tobago', 'TT', 'TTO', '0'),
('214', 'Tunisia', 'TN', 'TUN', '0'),
('215', 'Turkey', 'TR', 'TUR', '0'),
('216', 'Turkmenistan', 'TM', 'TKM', '0'),
('217', 'Turks and Caicos Islands', 'TC', 'TCA', '0'),
('218', 'Tuvalu', 'TV', 'TUV', '0'),
('219', 'Uganda', 'UG', 'UGA', '0'),
('220', 'Ukraine', 'UA', 'UKR', '0'),
('221', 'United Arab Emirates', 'AE', 'ARE', '0'),
('222', 'United Kingdom', 'GB', 'GBR', '0'),
('223', 'United States', 'US', 'USA', '0'),
('224', 'United States Minor Outlying Islands', 'UM', 'UMI', '0'),
('225', 'Uruguay', 'UY', 'URY', '0'),
('226', 'Uzbekistan', 'UZ', 'UZB', '0'),
('227', 'Vanuatu', 'VU', 'VUT', '0'),
('228', 'Vatican City State (Holy See)', 'VA', 'VAT', '0'),
('229', 'Venezuela', 'VE', 'VEN', '0'),
('230', 'Viet Nam', 'VN', 'VNM', '0'),
('231', 'Virgin Islands (British)', 'VG', 'VGB', '0'),
('232', 'Virgin Islands (U.S.)', 'VI', 'VIR', '0'),
('233', 'Wallis and Futuna Islands', 'WF', 'WLF', '0'),
('234', 'Western Sahara', 'EH', 'ESH', '0'),
('235', 'Yemen', 'YE', 'YEM', '0'),
('236', 'Yugoslavia', 'YU', 'YUG', '0'),
('237', 'Zaire', 'ZR', 'ZAR', '0'),
('238', 'Zambia', 'ZM', 'ZMB', '0'),
('239', 'Zimbabwe', 'ZW', 'ZWE', '0');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_currencies
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_currencies`;

CREATE TABLE `contrexx_module_shop_currencies` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `code` char(3) NOT NULL default '',
 `symbol` varchar(20) NOT NULL default '',
 `name` varchar(50) NOT NULL default '',
 `rate` decimal(10,6) unsigned NOT NULL default '1.000000',
 `sort_order` smallint(4) unsigned NOT NULL default '0',
 `status` tinyint(1) unsigned NOT NULL default '1',
 `is_default` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5;

INSERT INTO `contrexx_module_shop_currencies` (`id`, `code`, `symbol`, `name`, `rate`, `sort_order`, `status`, `is_default`) VALUES 
('1', 'CHF', 'sFr.', 'Swiss Francs', '1.616840', '1', '1', '0'),
('4', 'EUR', 'EUR', 'EURO', '1.000000', '2', '1', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_customer_group
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_customer_group`;

CREATE TABLE `contrexx_module_shop_customer_group` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `name` varchar(255) NOT NULL default '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_shop_customers
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_customers`;

CREATE TABLE `contrexx_module_shop_customers` (
 `customerid` int(11) unsigned NOT NULL auto_increment,
 `username` varchar(255) NOT NULL default '',
 `password` varchar(32) NOT NULL default '',
 `prefix` varchar(50) NOT NULL default '',
 `company` varchar(100) NOT NULL default '',
 `firstname` varchar(50) NOT NULL default '',
 `lastname` varchar(100) NOT NULL default '',
 `address` varchar(40) NOT NULL default '',
 `city` varchar(20) NOT NULL default '',
 `zip` varchar(10) NULL,
 `country_id` int(11) unsigned NULL,
 `phone` varchar(20) NOT NULL default '',
 `fax` varchar(25) NOT NULL default '',
 `email` varchar(255) NOT NULL default '',
 `ccnumber` varchar(100) NOT NULL default '',
 `ccdate` varchar(10) NOT NULL default '',
 `ccname` varchar(100) NOT NULL default '',
 `cvc_code` varchar(5) NOT NULL default '',
 `company_note` text NOT NULL,
 `is_reseller` tinyint(1) unsigned NOT NULL default '0',
 `register_date` datetime NOT NULL default '0000-00-00 00:00:00',
 `customer_status` tinyint(1) unsigned NOT NULL default '0',
 `group_id` int(11) unsigned NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5;

INSERT INTO `contrexx_module_shop_customers` (`customerid`, `username`, `password`, `prefix`, `company`, `firstname`, `lastname`, `address`, `city`, `zip`, `country_id`, `phone`, `fax`, `email`, `ccnumber`, `ccdate`, `ccname`, `cvc_code`, `company_note`, `is_reseller`, `register_date`, `customer_status`, `group_id`) VALUES 
('4', 'reto.kohli@comvation.com', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', '', '', '', '', '204', '', '', 'reto.kohli@comvation.com', '', '', '', '', '', '0', '2008-11-06 04:11:21', '1', NULL);

#--------------------------------------------------------------
# Table:	contrexx_module_shop_discountgroup_count_name
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_discountgroup_count_name`;

CREATE TABLE `contrexx_module_shop_discountgroup_count_name` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `name` varchar(255) NOT NULL default '',
 `unit` varchar(255) NOT NULL default '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_shop_discountgroup_count_rate
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_discountgroup_count_rate`;

CREATE TABLE `contrexx_module_shop_discountgroup_count_rate` (
 `group_id` int(11) unsigned NOT NULL default '0',
 `count` int(11) unsigned NOT NULL default '1',
 `rate` decimal(5,2) unsigned NOT NULL default '0.00',
  PRIMARY KEY (`group_id`,`count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



#--------------------------------------------------------------
# Table:	contrexx_module_shop_importimg
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_importimg`;

CREATE TABLE `contrexx_module_shop_importimg` (
 `img_id` int(11) unsigned NOT NULL auto_increment,
 `img_name` varchar(255) NOT NULL default '',
 `img_cats` text NOT NULL,
 `img_fields_file` text NOT NULL,
 `img_fields_db` varchar(255) NOT NULL default '',
  PRIMARY KEY (`img_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_shop_lsv
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_lsv`;

CREATE TABLE `contrexx_module_shop_lsv` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `order_id` int(11) unsigned NOT NULL,
 `holder` tinytext NOT NULL,
 `bank` tinytext NOT NULL,
 `blz` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_shop_mail
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_mail`;

CREATE TABLE `contrexx_module_shop_mail` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `tplname` varchar(60) NOT NULL default '',
 `protected` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5;

INSERT INTO `contrexx_module_shop_mail` (`id`, `tplname`, `protected`) VALUES 
('1', 'Bestellungsbestätigung', '1'),
('2', 'Auftrag abgeschlossen', '1'),
('3', 'Logindaten', '1'),
('4', 'Bestellungsbestätigung mit Zugangsdaten', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_mail_content
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_mail_content`;

CREATE TABLE `contrexx_module_shop_mail_content` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `tpl_id` int(11) unsigned NOT NULL default '0',
 `lang_id` int(11) unsigned NOT NULL default '0',
 `from_mail` varchar(255) NOT NULL default '',
 `xsender` varchar(255) NOT NULL default '',
 `subject` varchar(255) NOT NULL default '',
 `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5;

INSERT INTO `contrexx_module_shop_mail_content` (`id`, `tpl_id`, `lang_id`, `from_mail`, `xsender`, `subject`, `message`) VALUES 
('1', '1', '1', 'info@example.com', 'Contrexx-Demo Online Shop', 'Contrexx Auftragsbestätigung vom <DATE>', 'Sehr geehrte Kundin, sehr geehrter Kunde\r\n\r\nHerzlichen Dank fuer Ihre Bestellung im Contrexx-Demo Online Store.\r\n\r\nIhre Auftrags-Nr. lautet: <ORDER_ID>\r\nIhre Kunden-Nr. lautet: <CUSTOMER_ID>\r\nBestellungszeit: <ORDER_TIME>\r\n\r\n<ORDER_DATA>\r\n\r\nIhre Kundenadresse:\r\n<CUSTOMER_COMPANY>\r\n<CUSTOMER_PREFIX> <CUSTOMER_FIRSTNAME> <CUSTOMER_LASTNAME>\r\n<CUSTOMER_ADDRESS>\r\n<CUSTOMER_ZIP> <CUSTOMER_CITY>\r\n<CUSTOMER_COUNTRY>\r\n\r\n\r\nLieferadresse:\r\n<SHIPPING_COMPANY>\r\n<SHIPPING_PREFIX> <SHIPPING_FIRSTNAME> <SHIPPING_LASTNAME>\r\n<SHIPPING_ADDRESS>\r\n<SHIPPING_ZIP> <SHIPPING_CITY>\r\n<SHIPPING_COUNTRY>\r\n\r\nIhr Link zum Online Store: http://www.contrexx.com/\r\n\r\nIhre Zugangsdaten zum Shop:\r\nBenutzername: <USERNAME>\r\nPasswort: <PASSWORD>\r\n\r\nWir freuen uns auf Ihren naechsten Besuch im Online Store und\r\nwuenschen Ihnen noch einen schoenen Tag.\r\n\r\nP.S. Diese Auftragsbestaetigung wurde gesendet an: <CUSTOMER_EMAIL>\r\n\r\nFreundliche Grüsse\r\nIhr Contrexx Team\r\n\r\nhttp://www.contrexx.com/'),
('2', '2', '1', 'info@example.com', 'Contrexx Demo Shop', 'Ihre Bestellung wurde am <DATE> ausgeführt', 'Sehr geehrter Contrexx-Demo Kunde\r\n\r\nIhre Bestellung wurde ausgeführt. Sie werden in den nächsten Tagen ihre Lieferung erhalten.\r\n\r\nMit freundlichen Grüssen\r\nIhr Contrexx Online Shop Team\r\n\r\n------------------------\r\nBeispiel AG'),
('3', '3', '1', 'info@example.com', 'Contrexx Demo Shop', 'Logindaten für  Contrexx Demo Shop', 'Sehr geehrte(r) <CUSTOMER_PREFIX> <CUSTOMER_LASTNAME>\r\n\r\nHier Ihre Zugangsdaten zum Shop:\r\nBenutzername: <USERNAME>\r\nPasswort: <PASSWORD>\r\n\r\nFreundliche Grüsse\r\nIhr Contrexx Team\r\n\r\nhttp://www.contrexx.com/\r\n\r\n'),
('4', '4', '1', 'info@example.com', 'Contrexx Demo Online Shop', 'Contrexx Auftragsbestätigung und Zugangsdaten vom <DATE>', 'Sehr geehrte Kundin, sehr geehrter Kunde\r\n\r\nHerzlichen Dank für Ihre Bestellung im Contrexx Demo Online Store.\r\n\r\nIhre Auftrags-Nr. lautet: <ORDER_ID>\r\nIhre Kunden-Nr. lautet: <CUSTOMER_ID>\r\nBestellungszeit: <ORDER_TIME>\r\n\r\n<ORDER_DATA>\r\n<LOGIN_DATA>\r\n\r\nIhre Kundenadresse:\r\n<CUSTOMER_COMPANY>\r\n<CUSTOMER_PREFIX> <CUSTOMER_FIRSTNAME> <CUSTOMER_LASTNAME>\r\n<CUSTOMER_ADDRESS>\r\n<CUSTOMER_ZIP> <CUSTOMER_CITY>\r\n<CUSTOMER_COUNTRY>\r\n\r\nLieferadresse:\r\n<SHIPPING_COMPANY>\r\n<SHIPPING_PREFIX> <SHIPPING_FIRSTNAME> <SHIPPING_LASTNAME>\r\n<SHIPPING_ADDRESS>\r\n<SHIPPING_ZIP> <SHIPPING_CITY>\r\n<SHIPPING_COUNTRY>\r\n\r\n\r\nIhre Zugangsdaten zum Shop:\r\nBenutzername: <USERNAME>\r\nPasswort: <PASSWORD>\r\n\r\nWir freuen uns auf Ihren nächsten Besuch im Online Store und\r\nwünschen Ihnen noch einen schönen Tag.\r\n\r\nP.S. Diese Auftragsbestätigung wurde gesendet an: <CUSTOMER_EMAIL>\r\n\r\nMit freundlichen Grüssen\r\nIhr Contrexx Team');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_manufacturer
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_manufacturer`;

CREATE TABLE `contrexx_module_shop_manufacturer` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `name` varchar(255) NOT NULL default '',
 `url` varchar(255) NOT NULL default '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3;

INSERT INTO `contrexx_module_shop_manufacturer` (`id`, `name`, `url`) VALUES 
('1', 'Comvation Internet Solutions', 'http://www.comvation.com'),
('2', 'Apple Inc.', 'http://www.apple.com/');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_order_items
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_order_items`;

CREATE TABLE `contrexx_module_shop_order_items` (
 `order_items_id` int(11) unsigned NOT NULL auto_increment,
 `orderid` int(11) unsigned NOT NULL default '0',
 `productid` varchar(13) NOT NULL default '',
 `product_name` varchar(100) NOT NULL default '',
 `price` decimal(10,2) NOT NULL default '0.00',
 `quantity` int(11) unsigned NOT NULL default '1',
 `vat_percent` decimal(5,2) unsigned NULL,
 `weight` int(11) unsigned NULL,
  PRIMARY KEY (`order_items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_shop_order_items_attributes
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_order_items_attributes`;

CREATE TABLE `contrexx_module_shop_order_items_attributes` (
 `orders_items_attributes_id` int(11) unsigned NOT NULL auto_increment,
 `order_items_id` int(11) unsigned NOT NULL default '0',
 `order_id` int(11) unsigned NOT NULL default '0',
 `product_id` int(11) unsigned NOT NULL default '0',
 `product_option_name` varchar(32) NOT NULL default '',
 `product_option_value` varchar(32) NOT NULL default '',
 `product_option_values_price` decimal(10,2) NOT NULL default '0.00',
 `price_prefix` enum('+','-') NOT NULL default '+',
  PRIMARY KEY (`orders_items_attributes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_shop_orders
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_orders`;

CREATE TABLE `contrexx_module_shop_orders` (
 `orderid` int(11) unsigned NOT NULL auto_increment,
 `customerid` int(11) unsigned NOT NULL default '0',
 `selected_currency_id` int(11) unsigned NOT NULL default '0',
 `order_sum` decimal(10,2) NOT NULL default '0.00',
 `currency_order_sum` decimal(10,2) NOT NULL default '0.00',
 `order_date` datetime NOT NULL default '0000-00-00 00:00:00',
 `order_status` tinyint(1) unsigned NOT NULL default '0',
 `ship_prefix` varchar(50) NOT NULL default '',
 `ship_company` varchar(100) NOT NULL default '',
 `ship_firstname` varchar(40) NOT NULL default '',
 `ship_lastname` varchar(100) NOT NULL default '',
 `ship_address` varchar(40) NOT NULL default '',
 `ship_city` varchar(20) NOT NULL default '',
 `ship_zip` varchar(10) NULL,
 `ship_country_id` int(11) unsigned NULL,
 `ship_phone` varchar(20) NOT NULL default '',
 `tax_price` decimal(10,2) NOT NULL default '0.00',
 `currency_ship_price` decimal(10,2) NOT NULL default '0.00',
 `shipping_id` int(11) unsigned NULL,
 `payment_id` int(11) unsigned NULL,
 `currency_payment_price` decimal(10,2) NOT NULL default '0.00',
 `customer_ip` varchar(50) NOT NULL default '',
 `customer_host` varchar(100) NOT NULL default '',
 `customer_lang` varchar(255) NOT NULL default '',
 `customer_browser` varchar(100) NOT NULL default '',
 `customer_note` text NOT NULL,
 `last_modified` datetime NOT NULL default '0000-00-00 00:00:00',
 `modified_by` varchar(50) NOT NULL default '',
  PRIMARY KEY (`orderid`),
  KEY `order_status` (`order_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_module_shop_payment
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_payment`;

CREATE TABLE `contrexx_module_shop_payment` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `name` varchar(50) NULL,
 `processor_id` int(11) unsigned NOT NULL default '0',
 `costs` decimal(10,2) NOT NULL default '0.00',
 `costs_free_sum` decimal(10,2) NOT NULL default '0.00',
 `sort_order` smallint(4) unsigned NULL default '0',
 `status` tinyint(1) unsigned NULL default '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15;

INSERT INTO `contrexx_module_shop_payment` (`id`, `name`, `processor_id`, `costs`, `costs_free_sum`, `sort_order`, `status`) VALUES 
('2', 'Euro-, Master-, Visacard', '1', '2.00', '20000.00', '0', '1'),
('9', 'Nachnahme', '4', '10.00', '15000.00', '0', '1'),
('12', 'Mastercard Paypal', '2', '2.00', '10000.00', '0', '1'),
('13', 'LSV', '9', '0.00', '0.00', '0', '0'),
('14', 'yellowpay', '3', '0.00', '0.00', '0', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_payment_processors
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_payment_processors`;

CREATE TABLE `contrexx_module_shop_payment_processors` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `type` enum('internal','external') NOT NULL default 'internal',
 `name` varchar(100) NOT NULL default '',
 `description` text NOT NULL,
 `company_url` varchar(255) NOT NULL default '',
 `status` tinyint(1) unsigned NULL default '1',
 `picture` varchar(100) NOT NULL default '',
 `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10;

INSERT INTO `contrexx_module_shop_payment_processors` (`id`, `type`, `name`, `description`, `company_url`, `status`, `picture`, `text`) VALUES 
('1', 'external', 'Saferpay_All_Cards', 'Saferpay is a comprehensive Internet payment platform, specially developed for commercial applications. It provides a guarantee of secure payment processes over the Internet for merchants as well as for cardholders. Merchants benefit from the easy integration of the payment method into their e-commerce platform, and from the modularity with which they can take account of current and future requirements. Cardholders benefit from the security of buying from any shop that uses Saferpay.', 'http://www.saferpay.com/', '1', 'logo_saferpay.gif', ''),
('2', 'external', 'Paypal', 'With more than 40 million member accounts in over 45 countries worldwide, PayPal is the world\'s largest online payment service. PayPal makes sending money as easy as sending email! Any PayPal member can instantly and securely send money to anyone in the U.S. with an email address. PayPal can also be used on a web-enabled cell phone. In the future, PayPal will be available to use on web-enabled pagers and other handheld devices.', 'http://www.paypal.com/', '1', 'logo_paypal.gif', ''),
('3', 'external', 'yellowpay', 'yellowpay vereinfacht das Inkasso im Online-Shop. Ihre Kunden bezahlen die Einkäufe direkt mit dem Gelben Konto oder einer Kreditkarte. Ihr Plus: Mit den Zahlungsarten \"PostFinance Debit Direct\" und \"PostFinance yellownet\" bieten Sie 2,4 Millionen Inhaberinnen und Inhabern eines Gelben Kontos eine kundenfreundliche und sichere Zahlungsmöglichkeit. ', 'https://www.postfinance.ch/FinancePortal/handle/evtCategory.do?category=payingbizdebitepayment', '1', 'logo_postfinance.gif', ''),
('4', 'internal', 'Internal', 'Internal no forms', '', '1', '', ''),
('5', 'internal', 'Internal_CreditCard', 'Internal with a Credit Card form', '', '1', '', ''),
('6', 'internal', 'Internal_Debit', 'Internal with a Bank Debit Form', '', '1', '', ''),
('7', 'external', 'Saferpay_Mastercard_Multipay_CAR', 'Saferpay is a comprehensive Internet payment platform, specially developed for commercial applications. It provides a guarantee of secure payment processes over the Internet for merchants as well as for cardholders. Merchants benefit from the easy integration of the payment method into their e-commerce platform, and from the modularity with which they can take account of current and future requirements. Cardholders benefit from the security of buying from any shop that uses Saferpay.', 'http://www.saferpay.com/', '1', 'logo_saferpay.gif', ''),
('8', 'external', 'Saferpay_Visa_Multipay_CAR', 'Saferpay is a comprehensive Internet payment platform, specially developed for commercial applications. It provides a guarantee of secure payment processes over the Internet for merchants as well as for cardholders. Merchants benefit from the easy integration of the payment method into their e-commerce platform, and from the modularity with which they can take account of current and future requirements. Cardholders benefit from the security of buying from any shop that uses Saferpay.', 'http://www.saferpay.com/', '1', 'logo_saferpay.gif', ''),
('9', 'internal', 'Internal_LSV', 'LSV with internal form', '', '1', '', '');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_pricelists
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_pricelists`;

CREATE TABLE `contrexx_module_shop_pricelists` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `name` varchar(25) NOT NULL default '',
 `lang_id` int(11) unsigned NOT NULL default '0',
 `border_on` tinyint(1) unsigned NOT NULL default '1',
 `header_on` tinyint(1) unsigned NOT NULL default '1',
 `header_left` text NULL,
 `header_right` text NULL,
 `footer_on` tinyint(1) unsigned NOT NULL default '0',
 `footer_left` text NULL,
 `footer_right` text NULL,
 `categories` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_module_shop_pricelists` (`id`, `name`, `lang_id`, `border_on`, `header_on`, `header_left`, `header_right`, `footer_on`, `footer_left`, `footer_right`, `categories`) VALUES 
('1', 'Beispiel Preisliste', '1', '1', '1', 'Beispiel Preisliste', NULL, '1', '<--DATE-->', '<--PAGENUMBER-->', '*');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_products
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_products`;

CREATE TABLE `contrexx_module_shop_products` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `product_id` tinytext NOT NULL,
 `picture` text NULL,
 `title` varchar(255) NOT NULL default '',
 `catid` int(11) unsigned NOT NULL default '1',
 `handler` enum('none','delivery','download') NOT NULL default 'delivery',
 `normalprice` decimal(10,2) NOT NULL default '0.00',
 `resellerprice` decimal(10,2) NOT NULL default '0.00',
 `shortdesc` text NOT NULL,
 `description` text NOT NULL,
 `stock` smallint(6) unsigned NOT NULL default '10',
 `stock_visibility` tinyint(1) unsigned NOT NULL default '1',
 `discountprice` decimal(10,2) NOT NULL default '0.00',
 `is_special_offer` tinyint(1) unsigned NOT NULL default '0',
 `property1` varchar(100) NULL default '',
 `property2` varchar(100) NULL default '',
 `status` tinyint(1) unsigned NOT NULL default '1',
 `b2b` tinyint(1) unsigned NOT NULL default '1',
 `b2c` tinyint(1) unsigned NOT NULL default '1',
 `startdate` datetime NOT NULL default '0000-00-00 00:00:00',
 `enddate` datetime NOT NULL default '0000-00-00 00:00:00',
 `thumbnail_percent` tinyint(2) unsigned NOT NULL default '0',
 `thumbnail_quality` tinyint(2) unsigned NOT NULL default '0',
 `manufacturer` int(11) unsigned NOT NULL,
 `manufacturer_url` varchar(255) NOT NULL default '',
 `external_link` varchar(255) NOT NULL default '',
 `sort_order` smallint(4) unsigned NOT NULL default '0',
 `vat_id` int(11) unsigned NULL,
 `weight` int(11) unsigned NULL,
 `flags` varchar(255) NOT NULL default '',
 `usergroups` varchar(255) NOT NULL default '',
 `group_id` int(11) unsigned NULL,
 `article_id` int(11) unsigned NULL,
 `keywords` text NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `shopindex` (`title`,`description`),
  FULLTEXT KEY `flags` (`flags`),
  FULLTEXT KEY `keywords` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7;

INSERT INTO `contrexx_module_shop_products` (`id`, `product_id`, `picture`, `title`, `catid`, `handler`, `normalprice`, `resellerprice`, `shortdesc`, `description`, `stock`, `stock_visibility`, `discountprice`, `is_special_offer`, `property1`, `property2`, `status`, `b2b`, `b2c`, `startdate`, `enddate`, `thumbnail_percent`, `thumbnail_quality`, `manufacturer`, `manufacturer_url`, `external_link`, `sort_order`, `vat_id`, `weight`, `flags`, `usergroups`, `group_id`, `article_id`, `keywords`) VALUES 
('1', '1', 'aVBob25lLmpwZw==?NDAw?MzAw:bm9fcGljdHVyZS5naWY=?MTAw?MTQw:bm9fcGljdHVyZS5naWY=?MTAw?MTQw', 'Neuer Artikel 1', '1', 'delivery', '399.00', '0.00', 'Wundersch&ouml;ner Neuer Artikel. Ein Mu&szlig; f&uuml;r jeden Artikelfreund. Ja, wir finden auch, dass man &uuml;ber den Text noch mal reden sollte. Das hier kann es jedenfalls nicht sein. Da muss wesentlich mehr Produktaussage rein.', 'Wundersch&ouml;ner Neuer Artikel. Ein Mu&szlig; f&uuml;r jeden Artikelfreund. Ja, wir finden auch, dass man &uuml;ber den Text noch mal reden sollte. Das hier kann es jedenfalls nicht sein. Da muss wesentlich mehr Produktaussage rein.<br />\r\nWundersch&ouml;ner Neuer Artikel. Ein Mu&szlig; f&uuml;r jeden Artikelfreund. Ja, wir finden auch, dass man &uuml;ber den Text noch mal reden sollte. Das hier kann es jedenfalls nicht sein. Da muss wesentlich mehr Produktaussage rein.<br />\r\nWundersch&ouml;ner Neuer Artikel. Ein Mu&szlig; f&uuml;r jeden Artikelfreund. Ja, wir finden auch, dass man &uuml;ber den Text noch mal reden sollte. Das hier kann es jedenfalls nicht sein. Da muss wesentlich mehr Produktaussage rein.', '32', '1', '299.00', '1', '0', '0', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '2', '', '', '1', '10', '0', '', '', NULL, NULL, ''),
('6', '', 'bWl0Z2xpZWRzY2hhZnRfNDAweDMwMC5qcGc=?NDAw?MzAw:bWl0Z2xpZWRzY2hhZnRfNDAweDMwMC5qcGc=?NDAw?MzAw:bm9fcGljdHVyZS5naWY=?MA==?MA==', 'Community Mitgliedschaft 1 Jahr', '3', 'download', '99.00', '0.00', 'Dies ist ein Beispiel Produkt vom Typ Benutzerkonto. Mit diesem Produkt wird automatisch ein neuer Benutzer in einer gew&uuml;nschten Benutzergruppe f&uuml;r eine vordefinierte G&uuml;ltigkeitsdauer generiert.<br type=\"_moz\" />', 'Dies ist ein Beispiel Produkt vom Typ Benutzerkonto. Mit diesem Produkt wird automatisch ein neuer Benutzer in einer gew&uuml;nschten Benutzergruppe f&uuml;r eine vordefinierte G&uuml;ltigkeitsdauer generiert.<br />\r\nDies ist ein Beispiel Produkt vom Typ Benutzerkonto. Mit diesem Produkt wird automatisch ein neuer Benutzer in einer gew&uuml;nschten Benutzergruppe f&uuml;r eine vordefinierte G&uuml;ltigkeitsdauer generiert.<br />\r\n<br />', '1000', '0', '89.00', '1', '', '', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '1', '', '', '0', '10', '0', '', '3,4', NULL, NULL, '');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_products_attributes
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_products_attributes`;

CREATE TABLE `contrexx_module_shop_products_attributes` (
 `attribute_id` int(11) unsigned NOT NULL auto_increment,
 `product_id` int(11) unsigned NOT NULL default '0',
 `attributes_name_id` int(11) unsigned NOT NULL default '0',
 `attributes_value_id` int(11) unsigned NOT NULL default '0',
 `sort_id` smallint(4) unsigned NOT NULL default '0',
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33;

INSERT INTO `contrexx_module_shop_products_attributes` (`attribute_id`, `product_id`, `attributes_name_id`, `attributes_value_id`, `sort_id`) VALUES 
('32', '1', '1', '2', '0'),
('31', '1', '1', '1', '0');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_products_attributes_name
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_products_attributes_name`;

CREATE TABLE `contrexx_module_shop_products_attributes_name` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `name` varchar(255) NOT NULL default '',
 `display_type` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_module_shop_products_attributes_name` (`id`, `name`, `display_type`) VALUES 
('1', 'Zusatzleistungen', '2');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_products_attributes_value
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_products_attributes_value`;

CREATE TABLE `contrexx_module_shop_products_attributes_value` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `name_id` int(11) unsigned NOT NULL default '0',
 `value` varchar(255) NOT NULL default '',
 `price` decimal(10,2) NULL default '0.00',
 `price_prefix` enum('+','-') NOT NULL default '+',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3;

INSERT INTO `contrexx_module_shop_products_attributes_value` (`id`, `name_id`, `value`, `price`, `price_prefix`) VALUES 
('1', '1', 'Leder-Etui', '19.00', '+'),
('2', '1', 'Pimp my Handy Kit', '400.00', '+');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_products_downloads
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_products_downloads`;

CREATE TABLE `contrexx_module_shop_products_downloads` (
 `products_downloads_id` int(11) unsigned NOT NULL default '0',
 `products_downloads_name` varchar(255) NOT NULL default '',
 `products_downloads_filename` varchar(255) NOT NULL default '',
 `products_downloads_maxdays` int(11) unsigned NULL default '0',
 `products_downloads_maxcount` int(11) unsigned NULL default '0',
  PRIMARY KEY (`products_downloads_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



#--------------------------------------------------------------
# Table:	contrexx_module_shop_rel_countries
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_rel_countries`;

CREATE TABLE `contrexx_module_shop_rel_countries` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `zones_id` int(11) unsigned NOT NULL default '0',
 `countries_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=480;

INSERT INTO `contrexx_module_shop_rel_countries` (`id`, `zones_id`, `countries_id`) VALUES 
('1', '1', '1'),
('2', '1', '2'),
('3', '1', '3'),
('4', '1', '4'),
('5', '1', '5'),
('6', '1', '6'),
('7', '1', '7'),
('8', '1', '8'),
('9', '1', '9'),
('10', '1', '10'),
('11', '1', '11'),
('12', '1', '12'),
('13', '1', '13'),
('14', '1', '14'),
('15', '1', '15'),
('16', '1', '16'),
('17', '1', '17'),
('18', '1', '18'),
('19', '1', '19'),
('20', '1', '20'),
('21', '1', '21'),
('22', '1', '22'),
('23', '1', '23'),
('24', '1', '24'),
('25', '1', '25'),
('26', '1', '26'),
('27', '1', '27'),
('28', '1', '28'),
('29', '1', '29'),
('30', '1', '30'),
('31', '1', '31'),
('32', '1', '32'),
('33', '1', '33'),
('34', '1', '34'),
('35', '1', '35'),
('36', '1', '36'),
('37', '1', '37'),
('38', '1', '38'),
('39', '1', '39'),
('40', '1', '40'),
('41', '1', '41'),
('42', '1', '42'),
('43', '1', '43'),
('44', '1', '44'),
('45', '1', '45'),
('46', '1', '46'),
('47', '1', '47'),
('48', '1', '48'),
('49', '1', '49'),
('50', '1', '50'),
('51', '1', '51'),
('52', '1', '52'),
('53', '1', '53'),
('54', '1', '54'),
('55', '1', '55'),
('56', '1', '56'),
('57', '1', '57'),
('58', '1', '58'),
('59', '1', '59'),
('60', '1', '60'),
('61', '1', '61'),
('62', '1', '62'),
('63', '1', '63'),
('64', '1', '64'),
('65', '1', '65'),
('66', '1', '66'),
('67', '1', '67'),
('68', '1', '68'),
('69', '1', '69'),
('70', '1', '70'),
('71', '1', '71'),
('72', '1', '72'),
('73', '1', '73'),
('74', '1', '74'),
('75', '1', '75'),
('76', '1', '76'),
('77', '1', '77'),
('78', '1', '78'),
('79', '1', '79'),
('80', '1', '80'),
('81', '1', '81'),
('82', '1', '82'),
('83', '1', '83'),
('84', '1', '84'),
('85', '1', '85'),
('86', '1', '86'),
('87', '1', '87'),
('88', '1', '88'),
('89', '1', '89'),
('90', '1', '90'),
('91', '1', '91'),
('92', '1', '92'),
('93', '1', '93'),
('94', '1', '94'),
('95', '1', '95'),
('96', '1', '96'),
('97', '1', '97'),
('98', '1', '98'),
('99', '1', '99'),
('100', '1', '101'),
('101', '1', '102'),
('102', '1', '103'),
('103', '1', '104'),
('104', '1', '105'),
('105', '1', '106'),
('106', '1', '107'),
('107', '1', '108'),
('108', '1', '109'),
('109', '1', '110'),
('110', '1', '111'),
('111', '1', '112'),
('112', '1', '113'),
('113', '1', '114'),
('114', '1', '115'),
('115', '1', '116'),
('116', '1', '117'),
('117', '1', '118'),
('118', '1', '119'),
('119', '1', '120'),
('120', '1', '121'),
('121', '1', '122'),
('122', '1', '123'),
('123', '1', '124'),
('124', '1', '125'),
('125', '1', '126'),
('126', '1', '127'),
('127', '1', '128'),
('128', '1', '129'),
('129', '1', '130'),
('130', '1', '131'),
('131', '1', '132'),
('132', '1', '133'),
('133', '1', '134'),
('134', '1', '135'),
('135', '1', '136'),
('136', '1', '137'),
('137', '1', '138'),
('138', '1', '139'),
('139', '1', '140'),
('140', '1', '141'),
('141', '1', '142'),
('142', '1', '143'),
('143', '1', '144'),
('144', '1', '145'),
('145', '1', '146'),
('146', '1', '147'),
('147', '1', '148'),
('148', '1', '149'),
('149', '1', '150'),
('150', '1', '151'),
('151', '1', '152'),
('152', '1', '153'),
('153', '1', '154'),
('154', '1', '155'),
('155', '1', '156'),
('156', '1', '157'),
('157', '1', '158'),
('158', '1', '159'),
('159', '1', '160'),
('160', '1', '161'),
('161', '1', '162'),
('162', '1', '163'),
('163', '1', '164'),
('164', '1', '165'),
('165', '1', '166'),
('166', '1', '167'),
('167', '1', '168'),
('168', '1', '169'),
('169', '1', '170'),
('170', '1', '171'),
('171', '1', '172'),
('172', '1', '173'),
('173', '1', '174'),
('174', '1', '175'),
('175', '1', '176'),
('176', '1', '177'),
('177', '1', '178'),
('178', '1', '179'),
('179', '1', '180'),
('180', '1', '181'),
('181', '1', '182'),
('182', '1', '183'),
('183', '1', '184'),
('184', '1', '185'),
('185', '1', '186'),
('186', '1', '187'),
('187', '1', '188'),
('188', '1', '189'),
('189', '1', '190'),
('190', '1', '191'),
('191', '1', '192'),
('192', '1', '193'),
('193', '1', '194'),
('194', '1', '195'),
('195', '1', '196'),
('196', '1', '197'),
('197', '1', '198'),
('198', '1', '199'),
('199', '1', '200'),
('200', '1', '201'),
('201', '1', '202'),
('202', '1', '203'),
('203', '1', '204'),
('204', '1', '205'),
('205', '1', '206'),
('206', '1', '207'),
('207', '1', '208'),
('208', '1', '209'),
('209', '1', '210'),
('210', '1', '211'),
('211', '1', '212'),
('212', '1', '213'),
('213', '1', '214'),
('214', '1', '215'),
('215', '1', '216'),
('216', '1', '217'),
('217', '1', '218'),
('218', '1', '219'),
('219', '1', '220'),
('220', '1', '221'),
('221', '1', '222'),
('222', '1', '223'),
('223', '1', '224'),
('224', '1', '225'),
('225', '1', '226'),
('226', '1', '227'),
('227', '1', '228'),
('228', '1', '229'),
('229', '1', '230'),
('230', '1', '231'),
('231', '1', '232'),
('232', '1', '233'),
('233', '1', '234'),
('234', '1', '235'),
('235', '1', '236'),
('236', '1', '237'),
('237', '1', '238'),
('238', '1', '239'),
('478', '2', '204'),
('479', '3', '14');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_rel_discount_group
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_rel_discount_group`;

CREATE TABLE `contrexx_module_shop_rel_discount_group` (
 `customer_group_id` int(11) unsigned NOT NULL default '0',
 `article_group_id` int(11) unsigned NOT NULL default '0',
 `rate` decimal(5,2) NOT NULL default '0.00',
  PRIMARY KEY (`customer_group_id`,`article_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



#--------------------------------------------------------------
# Table:	contrexx_module_shop_rel_payment
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_rel_payment`;

CREATE TABLE `contrexx_module_shop_rel_payment` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `zones_id` int(11) unsigned NOT NULL default '0',
 `payment_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25;

INSERT INTO `contrexx_module_shop_rel_payment` (`id`, `zones_id`, `payment_id`) VALUES 
('14', '1', '2'),
('19', '1', '9'),
('22', '1', '12'),
('23', '1', '13'),
('24', '1', '14');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_rel_shipment
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_rel_shipment`;

CREATE TABLE `contrexx_module_shop_rel_shipment` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `zones_id` int(11) unsigned NOT NULL default '0',
 `shipment_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11;

INSERT INTO `contrexx_module_shop_rel_shipment` (`id`, `zones_id`, `shipment_id`) VALUES 
('5', '1', '1'),
('8', '1', '2'),
('9', '1', '3'),
('10', '1', '4');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_shipment_cost
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_shipment_cost`;

CREATE TABLE `contrexx_module_shop_shipment_cost` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `shipper_id` int(11) unsigned NOT NULL,
 `max_weight` int(11) unsigned NULL,
 `cost` decimal(10,2) unsigned NULL,
 `price_free` decimal(10,2) unsigned NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4;

INSERT INTO `contrexx_module_shop_shipment_cost` (`id`, `shipper_id`, `max_weight`, `cost`, `price_free`) VALUES 
('1', '1', NULL, '20.00', '100.00'),
('2', '2', NULL, '35.00', '150.00'),
('3', '3', NULL, '0.00', '0.00');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_shipper
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_shipper`;

CREATE TABLE `contrexx_module_shop_shipper` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `name` tinytext NOT NULL,
 `status` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5;

INSERT INTO `contrexx_module_shop_shipper` (`id`, `name`, `status`) VALUES 
('1', 'PostPac Priority', '1'),
('2', 'Express Post', '1'),
('3', 'Schweizerische Post', '1'),
('4', 'Direct to Me', '1');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_vat
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_vat`;

CREATE TABLE `contrexx_module_shop_vat` (
 `id` int(11) unsigned NOT NULL auto_increment,
 `class` tinytext NOT NULL,
 `percent` decimal(5,2) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15;

INSERT INTO `contrexx_module_shop_vat` (`id`, `class`, `percent`) VALUES 
('1', 'Nicht Taxpflichtig', '0.00'),
('2', 'Deutschland Normalsatz', '19.00'),
('3', 'Deutschland ermässigt', '7.00'),
('4', 'Deutschland stark ermässigt', '5.50'),
('5', 'Deutschland Zwischensatz 1', '9.00'),
('6', 'Deutschland Zwischensatz 2', '16.00'),
('7', 'Österreich Normalsatz', '20.00'),
('8', 'Österreich ermässigt', '10.00'),
('9', 'Österreich Zwischensatz', '12.00'),
('10', 'Schweiz', '7.60'),
('11', 'Schweiz ermässigt 1', '3.60'),
('12', 'Schweiz ermässigt 2', '2.40'),
('13', 'Great Britain', '17.50'),
('14', 'Great Britain reduced', '5.00');

#--------------------------------------------------------------
# Table:	contrexx_module_shop_zones
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_module_shop_zones`;

CREATE TABLE `contrexx_module_shop_zones` (
 `zones_id` int(11) unsigned NOT NULL auto_increment,
 `zones_name` varchar(64) NOT NULL default '',
 `activation_status` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY (`zones_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4;

INSERT INTO `contrexx_module_shop_zones` (`zones_id`, `zones_name`, `activation_status`) VALUES 
('1', 'All', '1'),
('2', 'Schweiz', '1'),
('3', 'Deutschland', '1');

#--------------------------------------------------------------
# Table:	contrexx_modules
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_modules`;

CREATE TABLE `contrexx_modules` (
 `id` int(2) unsigned NULL,
 `name` varchar(250) NOT NULL default '',
 `description_variable` varchar(50) NOT NULL default '',
 `status` set('y','n') NOT NULL default 'n',
 `is_required` tinyint(1) NOT NULL default '0',
 `is_core` tinyint(4) NOT NULL default '0',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_modules` (`id`, `name`, `description_variable`, `status`, `is_required`, `is_core`) VALUES 
('0', '', '', 'n', '0', '1'),
('1', 'core', 'TXT_CORE_MODULE_DESCRIPTION', 'n', '1', '1'),
('2', 'stats', 'TXT_STATS_MODULE_DESCRIPTION', 'n', '0', '1'),
('3', 'gallery', 'TXT_GALLERY_MODULE_DESCRIPTION', 'y', '0', '0'),
('4', 'newsletter', 'TXT_NEWSLETTER_MODULE_DESCRIPTION', 'y', '0', '0'),
('5', 'search', 'TXT_SEARCH_MODULE_DESCRIPTION', 'y', '0', '1'),
('6', 'contact', 'TXT_CONTACT_MODULE_DESCRIPTION', 'y', '1', '1'),
('7', 'block', 'TXT_BLOCK_MODULE_DESCRIPTION', 'n', '0', '0'),
('8', 'news', 'TXT_NEWS_MODULE_DESCRIPTION', 'y', '1', '1'),
('9', 'media1', 'TXT_MEDIA_MODULE_DESCRIPTION', 'y', '0', '1'),
('10', 'guestbook', 'TXT_GUESTBOOK_MODULE_DESCRIPTION', 'y', '0', '0'),
('11', 'sitemap', 'TXT_SITEMAP_MODULE_DESCRIPTION', 'y', '0', '1'),
('12', 'directory', 'TXT_LINKS_MODULE_DESCRIPTION', 'y', '0', '0'),
('13', 'ids', 'TXT_IDS_MODULE_DESCRIPTION', 'y', '1', '1'),
('14', 'error', 'TXT_ERROR_MODULE_DESCRIPTION', 'y', '1', '1'),
('15', 'home', 'TXT_HOME_MODULE_DESCRIPTION', 'y', '1', '1'),
('16', 'shop', 'TXT_SHOP_MODULE_DESCRIPTION', 'y', '0', '0'),
('17', 'voting', 'TXT_VOTING_MODULE_DESCRIPTION', 'y', '0', '0'),
('18', 'login', 'TXT_LOGIN_MODULE_DESCRIPTION', 'y', '1', '1'),
('19', 'docsys', 'TXT_DOC_SYS_MODULE_DESCRIPTION', 'y', '0', '0'),
('20', 'forum', 'TXT_FORUM_MODULE_DESCRIPTION', 'y', '0', '0'),
('21', 'calendar', 'TXT_CALENDAR_MODULE_DESCRIPTION', 'y', '0', '0'),
('22', 'feed', 'TXT_FEED_MODULE_DESCRIPTION', 'y', '0', '0'),
('23', 'access', 'TXT_COMMUNITY_MODULE_DESCRIPTION', 'y', '0', '1'),
('24', 'media2', 'TXT_MEDIA_MODULE_DESCRIPTION', 'y', '0', '1'),
('25', 'media3', 'TXT_MEDIA_MODULE_DESCRIPTION', 'y', '0', '1'),
('26', 'fileBrowser', 'TXT_FILEBROWSER_DESCRIPTION', 'n', '1', '1'),
('27', 'recommend', 'TXT_RECOMMEND_MODULE_DESCRIPTION', 'y', '0', '0'),
('30', 'livecam', 'TXT_LIVECAM_MODULE_DESCRIPTION', 'y', '0', '0'),
('31', 'memberdir', 'TXT_MEMBERDIR_MODULE_DESCRIPTION', 'y', '0', '0'),
('32', 'nettools', 'TXT_NETTOOLS_MODULE_DESCRIPTION', 'n', '0', '1'),
('33', 'market', 'TXT_MARKET_MODULE_DESCRIPTION', 'y', '0', '0'),
('35', 'podcast', 'TXT_PODCAST_MODULE_DESCRIPTION', 'y', '0', '0'),
('38', 'egov', 'TXT_EGOVERNMENT_MODULE_DESCRIPTION', 'y', '0', '0'),
('39', 'media4', 'TXT_MEDIA_MODULE_DESCRIPTION', 'y', '0', '1'),
('41', 'alias', 'TXT_ALIAS_MODULE_DESCRIPTION', 'n', '0', '1'),
('42', 'hotel', 'TXT_HOTEL_MODULE_DESCRIPTION', 'y', '0', '0'),
('44', 'imprint', 'TXT_IMPRINT_MODULE_DESCRIPTION', 'y', '1', '1'),
('45', 'agb', 'TXT_AGB_MODULE_DESCRIPTION', 'y', '1', '1'),
('46', 'privacy', 'TXT_PRIVACY_MODULE_DESCRIPTION', 'y', '1', '1'),
('47', 'blog', 'TXT_BLOG_MODULE_DESCRIPTION', 'y', '0', '0'),
('48', 'data', 'TXT_DATA_MODULE_DESCRIPTION', 'y', '0', '0'),
('49', 'ecard', 'TXT_ECARD_MODULE_DESCRIPTION', 'y', '0', '0'),
('37', 'immo', 'TXT_IMMO_MODULE_DESCRIPTION', 'n', '0', '0');

#--------------------------------------------------------------
# Table:	contrexx_sessions
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_sessions`;

CREATE TABLE `contrexx_sessions` (
 `sessionid` varchar(255) NOT NULL default '',
 `startdate` varchar(14) NOT NULL default '',
 `lastupdated` varchar(14) NOT NULL default '',
 `status` varchar(20) NOT NULL default '',
 `user_id` int(10) unsigned NOT NULL default '0',
 `datavalue` text NULL,
  PRIMARY KEY (`sessionid`),
  KEY `LastUpdated` (`lastupdated`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_sessions` (`sessionid`, `startdate`, `lastupdated`, `status`, `user_id`, `datavalue`) VALUES 
('5f36f937d0200169bb534eb892940da8', '1226916776', '1226919573', 'backend', '1', 'userFrontendLangId|i:1;auth|a:2:{s:5:\"secid\";s:4:\"5F7C\";s:3:\"log\";b:1;}shop|a:1:{s:10:\"currencyId\";s:1:\"4\";}content|a:2:{s:9:\"expandAll\";b:0;s:9:\"expandCat\";i:31;}');

#--------------------------------------------------------------
# Table:	contrexx_settings
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_settings`;

CREATE TABLE `contrexx_settings` (
 `setid` int(6) unsigned NOT NULL auto_increment,
 `setname` varchar(250) NOT NULL default '',
 `setvalue` text NOT NULL,
 `setmodule` tinyint(2) NOT NULL default '0',
  PRIMARY KEY (`setid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=70;

INSERT INTO `contrexx_settings` (`setid`, `setname`, `setvalue`, `setmodule`) VALUES 
('3', 'dnsServer', 'ns1.contrexxhosting.com', '1'),
('4', 'bannerStatus', '0', '28'),
('5', 'spamKeywords', 'sex, viagra', '1'),
('11', 'coreAdminName', 'Administrator', '1'),
('18', 'corePagingLimit', '30', '1'),
('19', 'searchDescriptionLength', '150', '5'),
('23', 'coreIdsStatus', 'on', '1'),
('24', 'coreAdminEmail', 'info@example.com', '1'),
('29', 'contactFormEmail', 'info@example.com', '6'),
('34', 'sessionLifeTime', '3600', '1'),
('35', 'lastAccessId', '8', '1'),
('37', 'newsTeasersStatus', '0', '8'),
('39', 'feedNewsMLStatus', '0', '22'),
('40', 'calendarheadlines', '1', '21'),
('41', 'calendarheadlinescount', '5', '21'),
('42', 'blockStatus', '1', '7'),
('43', 'contentHistoryStatus', 'on', '1'),
('44', 'calendarheadlinescat', '0', '21'),
('45', 'calendardefaultcount', '16', '21'),
('48', 'blockRandom', '1', '7'),
('49', 'directoryHomeContent', '0', '12'),
('50', 'cacheEnabled', 'off', '1'),
('51', 'coreGlobalPageTitle', 'Contrexx Demo', '1'),
('52', 'cacheExpiration', '86400', '1'),
('53', 'domainUrl', 'pkg.contrexxlabs.com', '1'),
('54', 'xmlSitemapStatus', 'on', '1'),
('55', 'systemStatus', 'on', '1'),
('56', 'searchVisibleContentOnly', 'on', '1'),
('60', 'forumHomeContent', '1', '20'),
('61', 'aliasStatus', '0', '41'),
('62', 'coreSmtpServer', '0', '1'),
('63', 'languageDetection', 'on', '1'),
('64', 'podcastHomeContent', '1', '35'),
('65', 'googleMapsAPIKey', '', '1'),
('66', 'forumTagContent', '0', '20'),
('67', 'useVirtualLanguagePath', 'off', '1'),
('68', 'dataUseModule', '1', '48'),
('69', 'frontendEditingStatus', 'on', '1');

#--------------------------------------------------------------
# Table:	contrexx_settings_smtp
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_settings_smtp`;

CREATE TABLE `contrexx_settings_smtp` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `name` varchar(50) NOT NULL,
 `hostname` varchar(255) NOT NULL,
 `port` smallint(5) unsigned NOT NULL default '25',
 `username` varchar(255) NOT NULL,
 `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_skins
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_skins`;

CREATE TABLE `contrexx_skins` (
 `id` int(2) unsigned NOT NULL auto_increment,
 `themesname` varchar(50) NOT NULL default '',
 `foldername` varchar(50) NOT NULL default '',
 `expert` int(1) NOT NULL default '1',
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14;

INSERT INTO `contrexx_skins` (`id`, `themesname`, `foldername`, `expert`) VALUES 
('1', 'printview', 'printview', '1'),
('2', 'pdf', 'pdf', '1'),
('3', 'bluesmile', 'bluesmile', '1'),
('6', 'contrexx_theme_2_0', 'contrexx_theme_2_0', '1'),
('13', 'contrexx_theme_2_0_basic', 'contrexx_theme_2_0_basic', '1');

#--------------------------------------------------------------
# Table:	contrexx_stats_browser
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_stats_browser`;

CREATE TABLE `contrexx_stats_browser` (
 `id` int(6) unsigned NOT NULL auto_increment,
 `name` varchar(255) NOT NULL default '',
 `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_stats_browser` (`id`, `name`, `count`) VALUES 
('1', 'Firefox 2.0', '3');

#--------------------------------------------------------------
# Table:	contrexx_stats_colourdepth
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_stats_colourdepth`;

CREATE TABLE `contrexx_stats_colourdepth` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `depth` tinyint(3) unsigned NOT NULL default '0',
 `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`depth`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_stats_colourdepth` (`id`, `depth`, `count`) VALUES 
('1', '32', '3');

#--------------------------------------------------------------
# Table:	contrexx_stats_config
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_stats_config`;

CREATE TABLE `contrexx_stats_config` (
 `id` int(11) NOT NULL auto_increment,
 `name` varchar(64) NOT NULL default '',
 `value` varchar(255) NOT NULL default '',
 `status` int(1) NULL default '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20;

INSERT INTO `contrexx_stats_config` (`id`, `name`, `value`, `status`) VALUES 
('1', 'reload_block_time', '1800', '1'),
('2', 'online_timeout', '3000', '1'),
('3', 'paging_limit', '100', '1'),
('4', 'count_browser', '', '1'),
('5', 'count_operating_system', '', '1'),
('6', 'make_statistics', '', '1'),
('7', 'count_spiders', '', '0'),
('9', 'count_requests', '', '0'),
('10', 'remove_requests', '86400', '0'),
('11', 'count_search_terms', '', '1'),
('12', 'count_screen_resolution', '', '1'),
('13', 'count_colour_depth', '', '1'),
('14', 'count_javascript', '', '1'),
('15', 'count_referer', '', '1'),
('16', 'count_hostname', '', '1'),
('17', 'count_country', '', '1'),
('18', 'paging_limit_visitor_details', '100', '1'),
('19', 'count_visitor_number', '', '1');

#--------------------------------------------------------------
# Table:	contrexx_stats_country
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_stats_country`;

CREATE TABLE `contrexx_stats_country` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `country` varchar(100) NOT NULL default '',
 `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`country`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_stats_hostname
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_stats_hostname`;

CREATE TABLE `contrexx_stats_hostname` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `hostname` varchar(255) NOT NULL default '',
 `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`hostname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_stats_javascript
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_stats_javascript`;

CREATE TABLE `contrexx_stats_javascript` (
 `id` int(3) unsigned NOT NULL auto_increment,
 `support` enum('0','1') NULL default '0',
 `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_stats_operatingsystem
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_stats_operatingsystem`;

CREATE TABLE `contrexx_stats_operatingsystem` (
 `id` int(6) unsigned NOT NULL auto_increment,
 `name` varchar(255) NOT NULL default '',
 `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_stats_operatingsystem` (`id`, `name`, `count`) VALUES 
('1', 'Windows XP', '3');

#--------------------------------------------------------------
# Table:	contrexx_stats_referer
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_stats_referer`;

CREATE TABLE `contrexx_stats_referer` (
 `id` int(8) unsigned NOT NULL auto_increment,
 `uri` varchar(255) NOT NULL default '',
 `timestamp` int(11) unsigned NOT NULL default '0',
 `count` mediumint(8) unsigned NOT NULL default '0',
 `sid` varchar(32) NOT NULL default '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`uri`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_stats_requests
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_stats_requests`;

CREATE TABLE `contrexx_stats_requests` (
 `id` int(9) unsigned NOT NULL auto_increment,
 `timestamp` int(11) NULL default '0',
 `pageId` int(6) unsigned NOT NULL default '0',
 `page` varchar(255) NOT NULL default '',
 `visits` int(9) unsigned NOT NULL default '0',
 `sid` varchar(32) NOT NULL default '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4;

INSERT INTO `contrexx_stats_requests` (`id`, `timestamp`, `pageId`, `page`, `visits`, `sid`) VALUES 
('1', '1225461528', '31', '/index.php?section=shop', '1', '8b2acbed102deb1e79e59964adf85b85'),
('2', '1225461539', '31', '/index.php?section=shop&catId=4', '1', '8b2acbed102deb1e79e59964adf85b85'),
('3', '1225462057', '40', '/index.php?section=shop&cmd=cart', '1', '8b2acbed102deb1e79e59964adf85b85');

#--------------------------------------------------------------
# Table:	contrexx_stats_requests_summary
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_stats_requests_summary`;

CREATE TABLE `contrexx_stats_requests_summary` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `type` varchar(10) NOT NULL default '',
 `timestamp` int(11) NOT NULL default '0',
 `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`type`,`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6;

INSERT INTO `contrexx_stats_requests_summary` (`id`, `type`, `timestamp`, `count`) VALUES 
('1', 'hour', '1225458000', '2'),
('2', 'day', '1225407600', '3'),
('3', 'month', '1222812000', '3'),
('4', 'year', '1199142000', '3'),
('5', 'hour', '1225461600', '1');

#--------------------------------------------------------------
# Table:	contrexx_stats_screenresolution
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_stats_screenresolution`;

CREATE TABLE `contrexx_stats_screenresolution` (
 `id` int(5) unsigned NOT NULL auto_increment,
 `resolution` varchar(11) NOT NULL default '',
 `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`resolution`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

INSERT INTO `contrexx_stats_screenresolution` (`id`, `resolution`, `count`) VALUES 
('1', '1920x1200', '3');

#--------------------------------------------------------------
# Table:	contrexx_stats_search
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_stats_search`;

CREATE TABLE `contrexx_stats_search` (
 `id` int(5) unsigned NOT NULL auto_increment,
 `name` varchar(100) NOT NULL default '',
 `count` int(10) unsigned NOT NULL default '0',
 `sid` varchar(32) NOT NULL default '',
 `external` enum('0','1') NOT NULL default '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`name`,`external`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_stats_spiders
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_stats_spiders`;

CREATE TABLE `contrexx_stats_spiders` (
 `id` int(9) unsigned NOT NULL auto_increment,
 `last_indexed` int(14) NULL,
 `page` varchar(100) NULL,
 `pageId` mediumint(6) unsigned NOT NULL default '0',
 `count` int(11) NOT NULL default '0',
 `spider_useragent` varchar(255) NULL,
 `spider_ip` varchar(100) NULL,
 `spider_host` varchar(255) NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_stats_spiders_summary
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_stats_spiders_summary`;

CREATE TABLE `contrexx_stats_spiders_summary` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `name` varchar(255) NOT NULL default '',
 `timestamp` int(11) NOT NULL default '0',
 `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_stats_visitors
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_stats_visitors`;

CREATE TABLE `contrexx_stats_visitors` (
 `id` int(8) unsigned NOT NULL auto_increment,
 `sid` varchar(32) NOT NULL default '',
 `timestamp` int(11) NOT NULL default '0',
 `client_ip` varchar(100) NULL,
 `client_host` varchar(255) NULL,
 `client_useragent` varchar(255) NULL,
 `proxy_ip` varchar(100) NULL,
 `proxy_host` varchar(255) NULL,
 `proxy_useragent` varchar(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4;

INSERT INTO `contrexx_stats_visitors` (`id`, `sid`, `timestamp`, `client_ip`, `client_host`, `client_useragent`, `proxy_ip`, `proxy_host`, `proxy_useragent`) VALUES 
('1', '8b2acbed102deb1e79e59964adf85b85', '1225463902', '127.0.0.1', 'qwer.com', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.17) Gecko/20080829 Firefox/2.0.0.17', '', '', ''),
('2', '8b2acbed102deb1e79e59964adf85b85', '1226067017', '127.0.0.1', 'qwer.com', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.17) Gecko/20080829 Firefox/2.0.0.17', '', '', ''),
('3', '8b2acbed102deb1e79e59964adf85b85', '1226406863', '127.0.0.1', 'qwer.com', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.17) Gecko/20080829 Firefox/2.0.0.17', '', '', '');

#--------------------------------------------------------------
# Table:	contrexx_stats_visitors_summary
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_stats_visitors_summary`;

CREATE TABLE `contrexx_stats_visitors_summary` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `type` varchar(10) NOT NULL default '',
 `timestamp` int(11) NOT NULL default '0',
 `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`type`,`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10;

INSERT INTO `contrexx_stats_visitors_summary` (`id`, `type`, `timestamp`, `count`) VALUES 
('1', 'hour', '1225458000', '1'),
('2', 'day', '1225407600', '1'),
('3', 'month', '1222812000', '1'),
('4', 'year', '1199142000', '3'),
('5', 'hour', '1226066400', '1'),
('6', 'day', '1226012400', '1'),
('7', 'month', '1225494000', '2'),
('8', 'hour', '1226404800', '1'),
('9', 'day', '1226358000', '1');

#--------------------------------------------------------------
# Table:	contrexx_voting_additionaldata
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_voting_additionaldata`;

CREATE TABLE `contrexx_voting_additionaldata` (
 `id` int(11) NOT NULL auto_increment,
 `nickname` varchar(80) NOT NULL,
 `surname` varchar(80) NOT NULL,
 `phone` varchar(80) NOT NULL,
 `street` varchar(80) NOT NULL,
 `zip` varchar(30) NOT NULL,
 `city` varchar(80) NOT NULL,
 `email` varchar(80) NOT NULL,
 `voting_sytem_id` int(11) NOT NULL,
 `date_entered` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `voting_sytem_id` (`voting_sytem_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;



#--------------------------------------------------------------
# Table:	contrexx_voting_email
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_voting_email`;

CREATE TABLE `contrexx_voting_email` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `email` varchar(255) NOT NULL,
 `valid` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9;

INSERT INTO `contrexx_voting_email` (`id`, `email`, `valid`) VALUES 
('4', 'janik@comvation.com', '0'),
('5', 'janisk@comvation.com', '0'),
('6', 'janissssk@comvation.com', '0'),
('7', 'janwwwsdsdsdwwik@comvation.com', '0'),
('8', 'janwwwwwik@comvation.com', '0');

#--------------------------------------------------------------
# Table:	contrexx_voting_rel_email_system
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_voting_rel_email_system`;

CREATE TABLE `contrexx_voting_rel_email_system` (
 `email_id` int(10) unsigned NOT NULL,
 `system_id` int(10) unsigned NOT NULL,
 `voting_id` int(10) unsigned NOT NULL,
 `valid` enum('0','1') NOT NULL,
  UNIQUE KEY `email_id` (`email_id`,`system_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contrexx_voting_rel_email_system` (`email_id`, `system_id`, `voting_id`, `valid`) VALUES 
('4', '9', '36', '0'),
('5', '9', '36', '0'),
('6', '9', '36', '0'),
('7', '9', '36', '0'),
('8', '9', '38', '0');

#--------------------------------------------------------------
# Table:	contrexx_voting_results
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_voting_results`;

CREATE TABLE `contrexx_voting_results` (
 `id` int(11) NOT NULL auto_increment,
 `voting_system_id` int(11) NULL,
 `question` char(200) NULL,
 `votes` int(11) NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=47;

INSERT INTO `contrexx_voting_results` (`id`, `voting_system_id`, `question`, `votes`) VALUES 
('34', '8', 'Einfache und intuitive Bedienung', '0'),
('35', '8', 'Grösst mögliche Sicherheit', '0'),
('36', '9', 'Hammermässig', '4'),
('37', '9', 'Verdammt gut', '0'),
('38', '9', 'Sehr schön', '1'),
('39', '9', 'Nicht schlecht', '0'),
('40', '9', 'Geht so', '0'),
('41', '9', 'Habe schon besseres gesehen', '0'),
('42', '9', 'gefällt mir nicht', '0'),
('43', '8', 'Vielseitige Auswahl an Modulen', '0'),
('44', '8', 'Möglichst kurze Umsetzungszeit des Projektes', '0'),
('45', '8', 'Kompetente und schnelle Unterstützung', '0'),
('46', '8', 'Preis', '0');

#--------------------------------------------------------------
# Table:	contrexx_voting_system
#--------------------------------------------------------------
DROP TABLE IF EXISTS `contrexx_voting_system`;

CREATE TABLE `contrexx_voting_system` (
 `id` int(11) NOT NULL auto_increment,
 `date` timestamp NOT NULL default CURRENT_TIMESTAMP,
 `title` varchar(60) NOT NULL default '',
 `question` text NULL,
 `status` tinyint(1) NULL default '1',
 `submit_check` enum('cookie','email') NOT NULL default 'cookie',
 `votes` int(11) NULL default '0',
 `additional_nickname` tinyint(1) NOT NULL default '0',
 `additional_forename` tinyint(1) NOT NULL default '0',
 `additional_surname` tinyint(1) NOT NULL default '0',
 `additional_phone` tinyint(1) NOT NULL default '0',
 `additional_street` tinyint(1) NOT NULL default '0',
 `additional_zip` tinyint(1) NOT NULL default '0',
 `additional_email` tinyint(1) NOT NULL default '0',
 `additional_city` tinyint(1) NOT NULL default '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10;

INSERT INTO `contrexx_voting_system` (`id`, `date`, `title`, `question`, `status`, `submit_check`, `votes`, `additional_nickname`, `additional_forename`, `additional_surname`, `additional_phone`, `additional_street`, `additional_zip`, `additional_email`, `additional_city`) VALUES 
('8', '2008-06-18 08:45:47', 'Wichtige Eingenschaften', 'Welche wichtige Eigenschaften zeichnen ein anwenderfreundliches Content Management System aus?', '1', 'email', '0', '1', '1', '1', '0', '0', '0', '0', '1'),
('9', '2008-06-18 08:47:48', 'Wie finden Sie unsere neue Website?', 'Wie finden Sie unsere neue Website?', '0', 'email', '5', '0', '0', '0', '0', '0', '0', '0', '0');

