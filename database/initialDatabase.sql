-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: db    Database: typo3
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `typo3`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `typo3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `typo3`;

--
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `config` text NOT NULL,
  `icon` text NOT NULL,
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `non_exclude_fields` text,
  `explicit_allowdeny` text,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `custom_options` text,
  `db_mountpoints` text,
  `pagetypes_select` varchar(255) NOT NULL DEFAULT '',
  `tables_select` text,
  `tables_modify` text,
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `groupMods` text,
  `file_mountpoints` text,
  `file_permissions` text,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `subgroup` text,
  `hide_in_lists` tinyint(4) NOT NULL DEFAULT '0',
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` varchar(255) NOT NULL DEFAULT '',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
INSERT INTO `be_groups` VALUES (1,0,1427443461,'All users','tt_content:imagecaption_position,tt_content:imageborder,tt_content:image_zoom,tt_content:colPos,tt_content:date,tt_content:image_effects,tt_content:image_frames,tt_content:imageheight,tt_content:hidden,tt_content:image_compression,tt_content:sys_language_uid,tt_content:image_link,tt_content:starttime,tt_content:endtime,tt_content:subheader,tt_content:l18n_parent,tt_content:header_layout,tt_content:imagewidth,pages:abstract,pages:author,pages:description,pages:author_email,pages:nav_hide,pages:hidden,pages:keywords,pages:layout,pages:nav_title,pages:shortcut_mode,pages:starttime,pages:endtime,tt_content:pi_flexform;login;sDEF;pages,tt_content:pi_flexform;9;s_misc;pages,tt_content:pi_flexform;9;s_misc;PIDitemDisplay,tt_content:pi_flexform;9;s_misc;backPid,tt_content:pi_flexform;9;s_misc;myTS','','','','','','pages,tt_content','',1427443461,2,'web,file,file_list,user_task,user_setup','','',0,'Basic configuration shared for all users. All other user groups can include this group as sub group to share a default set of permissions and options','',0,'','',0,0,'',''),(2,0,1427443461,'Simple editors','','tt_content:CType:header:ALLOW,tt_content:CType:text:ALLOW,tt_content:CType:textpic:ALLOW,tt_content:CType:bullets:ALLOW,tt_content:CType:table:ALLOW,tt_content:CType:multimedia:ALLOW,tt_content:CType:media:ALLOW,tt_content:CType:splash:ALLOW,tt_content:CType:menu:ALLOW,tt_content:CType:div:ALLOW','','','14','1,4','','pages,tt_content',1427443461,2,'web,web_layout,web_view,user,user_task,user_setup','3','',0,'The simple editors group demonstrates a handy and realistic set of permissions and options for every day  backend users who simply manages content and pages. More detailed and advanced features are hidden for embers of this user group to give a more simple interface\r\n','',0,'','1',0,0,'',''),(3,0,1427443461,'Advanced editors','','tt_content:CType:--div--:ALLOW,tt_content:CType:header:ALLOW,tt_content:CType:text:ALLOW,tt_content:CType:textpic:ALLOW,tt_content:CType:image:ALLOW,tt_content:CType:bullets:ALLOW,tt_content:CType:table:ALLOW,tt_content:CType:uploads:ALLOW,tt_content:CType:mailform:ALLOW,tt_content:CType:login:ALLOW,tt_content:CType:search:ALLOW,tt_content:CType:multimedia:ALLOW,tt_content:CType:media:ALLOW,tt_content:CType:splash:ALLOW,tt_content:CType:menu:ALLOW,tt_content:CType:shortcut:ALLOW,tt_content:CType:list:ALLOW,tt_content:CType:script:ALLOW,tt_content:CType:div:ALLOW,tt_content:CType:html:ALLOW,tt_content:list_type:9:ALLOW,tt_content:list_type:indexed_search:ALLOW,tt_content:list_type:indexedsearch_pi2:ALLOW','','','1','1,4,3','','pages,tt_content,pages_language_overlay,sys_note,tt_news,tt_news_cat',1427443461,2,'web,web_layout,web_view,web_list,web_info,web_perm,web_func,user,user_task,user_setup','3,2,1','',0,'The advanced editors user group, is an example implementation of a user group with a wide range of permissions and available options for making and editing an advanced set of features for pages and page content. The meta group \"All users\", which includes a basic configuration that can be applied to all user groups, is included as Sub Group below','',0,'','1',0,0,'','');
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) NOT NULL DEFAULT '',
  `ses_name` varchar(32) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` longtext,
  `ses_backuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
INSERT INTO `be_sessions` VALUES ('0aab5f1ab3cd03c79aed2a537db270ca','be_typo_user','192.168.59.3',142024911,1,1427697401,'a:2:{s:16:\"formSessionToken\";s:64:\"7020671ff829d5d78bf3b467a14eb7388dd1179f1b2f760423e767d4eb89e3f2\";s:27:\"core.template.flashMessages\";N;}',0);
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) NOT NULL DEFAULT '',
  `disable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` char(2) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `db_mountpoints` text,
  `options` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) NOT NULL DEFAULT '',
  `userMods` text,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `uc` mediumtext,
  `file_mountpoints` text,
  `file_permissions` text,
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `disableIPlock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` varchar(255) NOT NULL DEFAULT '',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1427443457,'admin','$P$ClijanJohpEitag8I5WtoXgpkptBRF0',1,'',0,0,0,'','',NULL,0,1427443457,0,'',NULL,'','a:23:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:9:{s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:6:\"web_ts\";a:7:{s:8:\"function\";s:85:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateInformationModuleFunctionController\";s:19:\"constant_editor_cat\";s:7:\"content\";s:15:\"ts_browser_type\";s:5:\"const\";s:16:\"ts_browser_const\";s:1:\"0\";s:19:\"ts_browser_fixedLgd\";s:1:\"1\";s:23:\"ts_browser_showComments\";s:1:\"1\";s:25:\"tsbrowser_depthKeys_const\";a:4:{s:6:\"plugin\";i:1;s:21:\"plugin.tx_cmisservice\";i:1;s:30:\"plugin.tx_cmisservice.settings\";i:1;s:35:\"plugin.tx_cmisservice.settings.cmis\";i:1;}}s:16:\"xMOD_alt_doc.php\";a:0:{}s:11:\"alt_doc.php\";a:2:{i:0;a:1:{s:32:\"8f746ff9af03ad2fae78054c2d8fec6e\";a:4:{i:0;s:13:\"Alfresco CMIS\";i:1;a:8:{s:4:\"edit\";a:1:{s:16:\"sys_file_storage\";a:1:{s:3:\"2,1\";s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";s:13:\"configuration\";s:7:\"disHelp\";s:1:\"1\";s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:137:\"&edit[sys_file_storage][2,1]=edit&defVals=&overrideVals=&columnsOnly=configuration&disHelp=1&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:16:\"sys_file_storage\";s:3:\"uid\";s:1:\"2\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}}i:1;s:32:\"8f746ff9af03ad2fae78054c2d8fec6e\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:16:\"opendocs::recent\";a:1:{s:32:\"abd19501d1e62ff385cf8ff5c7fbca9f\";a:4:{i:0;s:20:\"Introduction Package\";i:1;a:8:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:7:\"disHelp\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:117:\"&edit[sys_template][1]=edit&defVals=&overrideVals=&columnsOnly=&disHelp=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"1\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}}s:8:\"web_list\";a:0:{}s:9:\"file_list\";a:0:{}s:18:\"list/displayFields\";a:1:{s:16:\"sys_file_storage\";a:2:{i:0;s:6:\"driver\";i:1;s:13:\"configuration\";}}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:10:\"noMenuMode\";i:0;s:11:\"startModule\";s:17:\"help_aboutmodules\";s:18:\"hideSubmoduleIcons\";i:0;s:8:\"helpText\";i:1;s:8:\"titleLen\";i:50;s:18:\"edit_showFieldHelp\";s:4:\"icon\";s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:13:\"navFrameWidth\";s:0:\"\";s:17:\"navFrameResizable\";i:0;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1427443578;s:15:\"moduleSessionID\";a:9:{s:10:\"web_layout\";s:32:\"15b4f237fa709300846d38c8e57fc20c\";s:6:\"web_ts\";s:32:\"15b4f237fa709300846d38c8e57fc20c\";s:16:\"xMOD_alt_doc.php\";s:32:\"15b4f237fa709300846d38c8e57fc20c\";s:11:\"alt_doc.php\";s:32:\"0aab5f1ab3cd03c79aed2a537db270ca\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"0aab5f1ab3cd03c79aed2a537db270ca\";s:16:\"opendocs::recent\";s:32:\"15b4f237fa709300846d38c8e57fc20c\";s:8:\"web_list\";s:32:\"15b4f237fa709300846d38c8e57fc20c\";s:9:\"file_list\";s:32:\"15b4f237fa709300846d38c8e57fc20c\";s:18:\"list/displayFields\";s:32:\"0aab5f1ab3cd03c79aed2a537db270ca\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:2:{s:19:\"typo3-debug-console\";O:8:\"stdClass\":1:{s:9:\"collapsed\";b:1;}s:8:\"Pagetree\";O:8:\"stdClass\":1:{s:9:\"stateHash\";O:8:\"stdClass\":8:{s:1:\"0\";i:1;s:1:\"1\";i:1;s:1:\"2\";i:1;s:2:\"22\";i:1;s:2:\"23\";i:1;s:2:\"24\";i:1;s:4:\"root\";i:1;s:16:\"lastSelectedNode\";s:2:\"p0\";}}}}s:18:\"disablePMKTextarea\";i:1;s:11:\"browseTrees\";a:1:{s:6:\"folder\";s:64:\"a:2:{i:5171;a:1:{i:143347684;i:1;}i:9768;a:1:{i:262889193;i:1;}}\";}}',NULL,NULL,1,'',0,0,NULL,1427697181,0,NULL,0,1,'',''),(2,0,0,'_cli_lowlevel','',0,'',0,0,0,'','',NULL,0,0,0,'',NULL,'','a:19:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:0:{}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:10:\"noMenuMode\";i:0;s:11:\"startModule\";s:17:\"help_aboutmodules\";s:18:\"hideSubmoduleIcons\";i:0;s:8:\"helpText\";i:1;s:8:\"titleLen\";i:50;s:18:\"edit_showFieldHelp\";s:4:\"icon\";s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:13:\"navFrameWidth\";s:0:\"\";s:17:\"navFrameResizable\";i:0;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1427443458;}',NULL,NULL,1,'',0,0,NULL,0,0,NULL,0,1,'',''),(3,0,1427443461,'simple_editor','M$P$CFrUo0rk3dDVXQwpm.MQRiDsSgOw9Y.',0,'2',0,0,0,'','username@example.com','',3,1427443461,2,'Simple McEditor','','',NULL,'','',1,'',0,0,'',0,0,NULL,0,1,'',''),(4,0,1427443461,'advanced_editor','M$P$C/uVFJlFEorTMNPzBd3cX24EHXkcBo.',0,'3',0,0,0,'','username@example.com','',3,1427443461,2,'Advanced McEditor','','',NULL,'','',1,'',0,0,'',0,0,NULL,0,1,'','');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_imagesizes`
--

DROP TABLE IF EXISTS `cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_imagesizes` (
  `md5hash` varchar(32) NOT NULL DEFAULT '',
  `md5filename` varchar(32) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_imagesizes`
--

LOCK TABLES `cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_md5params`
--

DROP TABLE IF EXISTS `cache_md5params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_md5params` (
  `md5hash` varchar(20) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_md5params`
--

LOCK TABLES `cache_md5params` WRITE;
/*!40000 ALTER TABLE `cache_md5params` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_md5params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` char(32) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `treelist` text,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_typo3temp_log`
--

DROP TABLE IF EXISTS `cache_typo3temp_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_typo3temp_log` (
  `md5hash` varchar(32) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `orig_filename` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_typo3temp_log`
--

LOCK TABLES `cache_typo3temp_log` WRITE;
/*!40000 ALTER TABLE `cache_typo3temp_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_typo3temp_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_CmisServiceSimpleQueue`
--

DROP TABLE IF EXISTS `cf_CmisServiceSimpleQueue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_CmisServiceSimpleQueue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_CmisServiceSimpleQueue`
--

LOCK TABLES `cf_CmisServiceSimpleQueue` WRITE;
/*!40000 ALTER TABLE `cf_CmisServiceSimpleQueue` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_CmisServiceSimpleQueue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_CmisServiceSimpleQueue_tags`
--

DROP TABLE IF EXISTS `cf_CmisServiceSimpleQueue_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_CmisServiceSimpleQueue_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_CmisServiceSimpleQueue_tags`
--

LOCK TABLES `cf_CmisServiceSimpleQueue_tags` WRITE;
/*!40000 ALTER TABLE `cf_CmisServiceSimpleQueue_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_CmisServiceSimpleQueue_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash`
--

DROP TABLE IF EXISTS `cf_cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash`
--

LOCK TABLES `cf_cache_hash` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash_tags`
--

DROP TABLE IF EXISTS `cf_cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash_tags`
--

LOCK TABLES `cf_cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages`
--

DROP TABLE IF EXISTS `cf_cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages`
--

LOCK TABLES `cf_cache_pages` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages_tags`
--

DROP TABLE IF EXISTS `cf_cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages_tags`
--

LOCK TABLES `cf_cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection`
--

DROP TABLE IF EXISTS `cf_cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection`
--

LOCK TABLES `cf_cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection_tags`
--

DROP TABLE IF EXISTS `cf_cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection_tags`
--

LOCK TABLES `cf_cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline`
--

DROP TABLE IF EXISTS `cf_cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline`
--

LOCK TABLES `cf_cache_rootline` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline_tags`
--

DROP TABLE IF EXISTS `cf_cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline_tags`
--

LOCK TABLES `cf_cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap_tags`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap_tags`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object`
--

DROP TABLE IF EXISTS `cf_extbase_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object`
--

LOCK TABLES `cf_extbase_object` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object_tags`
--

DROP TABLE IF EXISTS `cf_extbase_object_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object_tags`
--

LOCK TABLES `cf_extbase_object_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection`
--

DROP TABLE IF EXISTS `cf_extbase_reflection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection`
--

LOCK TABLES `cf_extbase_reflection` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection_tags`
--

DROP TABLE IF EXISTS `cf_extbase_reflection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection_tags`
--

LOCK TABLES `cf_extbase_reflection_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_queries`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_queries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_queries`
--

LOCK TABLES `cf_extbase_typo3dbbackend_queries` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_queries_tags`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_queries_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_queries_tags`
--

LOCK TABLES `cf_extbase_typo3dbbackend_queries_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_tablecolumns`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_tablecolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_tablecolumns` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_tablecolumns`
--

LOCK TABLES `cf_extbase_typo3dbbackend_tablecolumns` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_tablecolumns_tags`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_tablecolumns_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_tablecolumns_tags`
--

LOCK TABLES `cf_extbase_typo3dbbackend_tablecolumns_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `subgroup` tinytext NOT NULL,
  `TSconfig` text NOT NULL,
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext,
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_session_data`
--

DROP TABLE IF EXISTS `fe_session_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_session_data` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `content` mediumblob,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`),
  KEY `tstamp` (`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_session_data`
--

LOCK TABLES `fe_session_data` WRITE;
/*!40000 ALTER TABLE `fe_session_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_session_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) NOT NULL DEFAULT '',
  `ses_name` varchar(32) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` blob,
  `ses_permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usergroup` tinytext,
  `disable` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uc` blob,
  `title` varchar(40) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(40) NOT NULL DEFAULT '',
  `www` varchar(80) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `image` tinytext,
  `TSconfig` text,
  `fe_cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext,
  `felogin_forgotHash` varchar(80) DEFAULT '',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`),
  KEY `username` (`username`),
  KEY `is_online` (`is_online`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_user` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_group` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `storage_pid` int(11) NOT NULL DEFAULT '0',
  `is_siteroot` tinyint(4) NOT NULL DEFAULT '0',
  `php_tree_stop` tinyint(4) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `url_scheme` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) NOT NULL DEFAULT '',
  `media` text,
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `no_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text,
  `module` varchar(10) NOT NULL DEFAULT '',
  `extendToSubpages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `nav_hide` tinyint(4) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` tinyint(4) NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL DEFAULT '',
  `l18n_cfg` tinyint(4) NOT NULL DEFAULT '0',
  `fe_login_mode` tinyint(4) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_realurl_pathsegment` varchar(255) NOT NULL DEFAULT '',
  `tx_realurl_pathoverride` int(1) NOT NULL DEFAULT '0',
  `tx_realurl_exclude` int(1) NOT NULL DEFAULT '0',
  `tx_realurl_nocache` int(1) NOT NULL DEFAULT '0',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`deleted`,`hidden`,`is_siteroot`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

--
-- Table structure for table `pages_language_overlay`
--

DROP TABLE IF EXISTS `pages_language_overlay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_language_overlay` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `media` text,
  `keywords` text,
  `description` text,
  `abstract` text,
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `url` varchar(255) NOT NULL DEFAULT '',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_realurl_pathsegment` varchar(255) NOT NULL DEFAULT '',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sys_language_uid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_language_overlay`
--

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) NOT NULL DEFAULT '',
  `url` text,
  `description` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sc_group` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `title` tinytext NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) NOT NULL DEFAULT '',
  `fieldname` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablenames` (`uid_foreign`,`tablenames`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(32) NOT NULL DEFAULT 'static',
  `table_name` tinytext,
  `items` int(11) NOT NULL DEFAULT '0',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_domain`
--

DROP TABLE IF EXISTS `sys_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `domainName` varchar(80) NOT NULL DEFAULT '',
  `redirectTo` varchar(255) NOT NULL DEFAULT '',
  `redirectHttpStatusCode` int(4) unsigned NOT NULL DEFAULT '301',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `prepend_params` int(10) NOT NULL DEFAULT '0',
  `forced` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `getSysDomain` (`redirectTo`,`hidden`),
  KEY `tx_realurl` (`domainName`,`hidden`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain`
--

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` tinyint(4) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier` text,
  `identifier_hash` varchar(40) NOT NULL DEFAULT '',
  `folder_hash` varchar(40) NOT NULL DEFAULT '',
  `extension` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `name` tinytext,
  `sha1` tinytext,
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`(40)),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,0,1427443462,0,0,1,'2',0,'/introduction/images/typo3-book-backend-style-settings.png','6b4b65ec5ae9f52afda6763a48d7782678fc935a','e1500cfc74aa6405848b1f4f4acfe1e7fa4120a8','png','image/png','typo3-book-backend-style-settings.png','9aff66051cf5267f5118564394bc32cb30015b77',237571,1427443462,1427443462,''),(2,0,1427443462,0,0,1,'2',0,'/introduction/images/about/team-t3board10.jpg','6f9b02785aee8d67269677b6bccde7fd35d3513d','800569e802ae677ef80143d749556561625e8a9b','jpg','image/jpeg','team-t3board10.jpg','ae6951147687ed1f94f60973fca7ef46e2ba2372',166843,1427443462,1427443462,''),(3,0,1427443462,0,0,1,'2',0,'/introduction/images/about/kasper-skarhoj1.jpg','719721b55cf378f5284bd2908440ed7887d2b795','800569e802ae677ef80143d749556561625e8a9b','jpg','image/jpeg','kasper-skarhoj1.jpg','05d8c6dda534a0b9e7023c3031e60e4b49c3da40',39037,1427443462,1427443462,''),(4,0,1427443462,0,0,1,'2',0,'/introduction/images/about/TYPO3-logo.png','9cb6c74b55537f451f5f0596a8703db3555a3203','800569e802ae677ef80143d749556561625e8a9b','png','image/png','TYPO3-logo.png','cdac36562aaa65d23831b25c48cd14863b5be2ad',1392,1427443462,1427443462,''),(5,0,1427443462,0,0,1,'2',0,'/introduction/images/news/kasper-skarhoj2.jpeg','7962deacd74969198afcdce7a999ee10ec6fe5a3','821ad58445f571d828d1bb6bd5f04148739c8e6b','jpeg','image/jpeg','kasper-skarhoj2.jpeg','1f0bfb6a49594900b9ccf64c5c92d0b4b0b8eddb',16832,1427443462,1427443462,''),(6,0,1427443462,0,0,1,'2',0,'/introduction/images/news/team-t3uxw09_01.jpg','43f36f0f367f2842e9b300640abbb8491de1a16b','821ad58445f571d828d1bb6bd5f04148739c8e6b','jpg','image/jpeg','team-t3uxw09_01.jpg','3f3ae3ad4f1c86249b36e9c0799d5286d1a7fada',134843,1427443462,1427443462,''),(7,0,1427443462,0,0,1,'5',0,'/introduction/downloads/TYPO3_Logo_Guide_v3.pdf','3a777b6bb5c93ad820179df0f4a0bb7afb048874','348a1b159d0d0171f670dba9a66e1a3b0af5b7aa','pdf','application/pdf','TYPO3_Logo_Guide_v3.pdf','197919fe88902e9a6209b30a3d5b99003dc6295b',210627,1427443462,1427443462,''),(8,0,1427443462,0,0,1,'2',0,'/introduction/images/examples/example_image2.jpg','8d4814aa5f01ce6374994e99a9c295a8bc564341','972903b99b43241d3c55583c9af8c7135f6286c7','jpg','image/jpeg','example_image2.jpg','5c8abb1110c2eada6793444492c3524614354e32',453106,1427443462,1427443462,''),(9,0,1427443462,0,0,1,'2',0,'/introduction/images/examples/example_image5.jpg','8057b4a9acc029d049c2dcf6e4746cc1660d6736','972903b99b43241d3c55583c9af8c7135f6286c7','jpg','image/jpeg','example_image5.jpg','cadfcc72ca0a8ca5fb67d490dd6157fb01f793f8',124495,1427443462,1427443462,''),(10,0,1427443462,0,0,1,'2',0,'/introduction/images/examples/a4.jpg','1dda2ee7659b6dcc0ccccf6b59772afed636ff1d','972903b99b43241d3c55583c9af8c7135f6286c7','jpg','image/jpeg','a4.jpg','731058c2fbaf9af2d27651f0d7265acf8bd718b7',12999,1427443462,1427443462,''),(11,0,1427443462,0,0,1,'2',0,'/introduction/images/examples/b4.jpg','f6d900753c6ee28e0ef126f09d38472002eb2f45','972903b99b43241d3c55583c9af8c7135f6286c7','jpg','image/jpeg','b4.jpg','7004cd1230743be2574dc8b3eecb2f00c64390e5',14322,1427443462,1427443462,''),(12,0,1427443462,0,0,1,'2',0,'/introduction/images/examples/c4.jpg','5c3aeb0adfb3351d70a4c6bf9efc7a611b9ab0d4','972903b99b43241d3c55583c9af8c7135f6286c7','jpg','image/jpeg','c4.jpg','46ad38307e678c56b0370de0644427e2b10b5f24',9939,1427443462,1427443462,''),(13,0,1427443462,0,0,1,'2',0,'/introduction/images/examples/example_image1.jpg','400d9ea80ce5552b1c1858d537c31ca62fc735ad','972903b99b43241d3c55583c9af8c7135f6286c7','jpg','image/jpeg','example_image1.jpg','bdce02f7f5fb53517d0b83b0ad7a6a0316a1ed88',573703,1427443462,1427443462,''),(14,0,1427443462,0,0,1,'2',0,'/introduction/images/examples/example_image10.jpg','8a593286e93f6123694b1e7cc1b4cf26cdcd923a','972903b99b43241d3c55583c9af8c7135f6286c7','jpg','image/jpeg','example_image10.jpg','e4c12b93ba217a7d76a62e96378d12fdd3fce8b7',110312,1427443462,1427443462,''),(15,0,1427443462,0,0,1,'2',0,'/introduction/images/examples/example_image3.jpg','715e5a56b1b683382810a76ef5cfddc244f01d94','972903b99b43241d3c55583c9af8c7135f6286c7','jpg','image/jpeg','example_image3.jpg','74fa6eac3e71e2b82b5eb173eb6db6b083d3f066',170281,1427443462,1427443462,''),(16,0,1427443462,0,0,1,'2',0,'/introduction/images/examples/example_image4.jpg','f1f4a5da924c7c3e032c2013368eb1b4eb50aeb8','972903b99b43241d3c55583c9af8c7135f6286c7','jpg','image/jpeg','example_image4.jpg','ac3ee74a537f611ae2c07472460c2d94c1714ff8',100679,1427443462,1427443462,''),(17,0,1427443462,0,0,1,'2',0,'/introduction/images/examples/a1.jpg','2361f2518d4d4692586d0311f2b86c863cf51d18','972903b99b43241d3c55583c9af8c7135f6286c7','jpg','image/jpeg','a1.jpg','cb4be93524c27a2e4c8cfcba2e3d64ad9dbc1d9b',6624,1427443462,1427443462,''),(18,0,1427443462,0,0,1,'2',0,'/introduction/images/examples/b2.jpg','c5c976ee4ea446ac08ba82dcd7b96b4026de4e3f','972903b99b43241d3c55583c9af8c7135f6286c7','jpg','image/jpeg','b2.jpg','4cd93d0c26da4190b19efde6392a775c8d52551f',15189,1427443462,1427443462,''),(19,0,1427443462,0,0,1,'2',0,'/introduction/images/examples/f6.jpg','579dd9ec9a498b763fcce04daa082bd58ffef8f8','972903b99b43241d3c55583c9af8c7135f6286c7','jpg','image/jpeg','f6.jpg','040301b6f523fc82f40de0aac0eb5a47f872b53a',4914,1427443462,1427443462,''),(20,0,1427443462,0,0,1,'2',0,'/introduction/images/examples/d4.jpg','b5254262143ed6cb8910d488dda00762621d37bd','972903b99b43241d3c55583c9af8c7135f6286c7','jpg','image/jpeg','d4.jpg','32a01f53f76c676a9c757dede5d6c9b883aec1db',7904,1427443462,1427443462,''),(21,0,1427443463,0,0,1,'2',0,'/introduction/images/examples/e5.jpg','5d3889b59d4e051c54ad8357cd7118f6218d3633','972903b99b43241d3c55583c9af8c7135f6286c7','jpg','image/jpeg','e5.jpg','43fda26263f5183bb7127e48b9eb92f7fe871b65',22079,1427443462,1427443462,''),(22,0,1427443463,0,0,1,'2',0,'/introduction/images/examples/c3.jpg','a4d05170b315cf9a500a05f0bd30620f4012fc71','972903b99b43241d3c55583c9af8c7135f6286c7','jpg','image/jpeg','c3.jpg','b826f2be36c43f4b6ba4a7ffc75c617b7fda3853',7656,1427443462,1427443462,''),(23,0,1427443463,0,0,1,'2',0,'/introduction/images/examples/example_image6.jpg','6900b446f22707d73e7b494727ddb0443ffaf7a6','972903b99b43241d3c55583c9af8c7135f6286c7','jpg','image/jpeg','example_image6.jpg','fa30ed559695539749aba3ca945b8e73226101e3',142539,1427443462,1427443462,''),(24,0,1427443463,0,0,1,'2',0,'/introduction/images/examples/example_image7.jpg','33b79277a6638a02f62642f83f0175b1fb85207d','972903b99b43241d3c55583c9af8c7135f6286c7','jpg','image/jpeg','example_image7.jpg','f158a0f0b93d395d3ff11c4730ecbe16b99fde5a',128573,1427443462,1427443462,''),(25,0,1427443463,0,0,1,'2',0,'/introduction/images/examples/example_image8.jpg','31bc9a826607ee8f7fb26edd47de9c69c0ee10f7','972903b99b43241d3c55583c9af8c7135f6286c7','jpg','image/jpeg','example_image8.jpg','f504147b6fdfe670220fee32c30de808b94c6bb4',377681,1427443462,1427443462,''),(26,0,1427443463,0,0,1,'2',0,'/introduction/images/examples/example_image9.jpeg','1b46fd4b80db0a19b4a4b305c67b649620c57887','972903b99b43241d3c55583c9af8c7135f6286c7','jpeg','image/jpeg','example_image9.jpeg','26c07e1361cbe8449b7f0498c5bd716b29837ce8',190594,1427443462,1427443462,''),(27,0,1427443463,0,0,1,'2',0,'/introduction/images/customizing/extensionmanager.png','3898acdd87d41000e15a19361d5c8f5f2dff4389','52f9b8d5266c43bff49d059ffe512444b1eb3a22','png','image/png','extensionmanager.png','1ada465292cec212c26b5978aa8add3636c59b11',71008,1427443462,1427443462,''),(28,0,1427443463,0,0,1,'2',0,'/introduction/images/customizing/extensionbuilder.png','4168214a56fdd521ee033a28057619972cf0047c','52f9b8d5266c43bff49d059ffe512444b1eb3a22','png','image/png','extensionbuilder.png','8fe23d8903aab52bfe1fe34115e8a5e57cae7beb',27658,1427443462,1427443462,''),(29,0,1427443463,0,0,1,'2',0,'/introduction/images/customizing/extbase.png','aa126b8981822357840c26dfce30d9672a83b341','52f9b8d5266c43bff49d059ffe512444b1eb3a22','png','image/png','extbase.png','50665db8af3b33cf80b598e469a7e5e6d7de3375',20261,1427443462,1427443462,''),(30,0,1427443463,0,0,1,'2',0,'/introduction/images/customizing/editor-shows-typo3-fluid.png','43435af592b31594a5cff980d65dc21d143c2fde','52f9b8d5266c43bff49d059ffe512444b1eb3a22','png','image/png','editor-shows-typo3-fluid.png','d9923ccfa270ff8741705b57a1bae549692bf497',67857,1427443462,1427443462,''),(31,0,1427443463,0,0,1,'2',0,'/introduction/images/features/typo3book-bubbels.png','669512dbd732ea2e2271d75ff2c20c76b21a1c91','64ac5ffcee7477d77b5c195cff849face1e61735','png','image/png','typo3book-bubbels.png','183b92714dbdc6ec2af305e07619c0fba8e6d88f',148731,1427443462,1427443462,''),(32,0,1427443463,0,0,1,'2',0,'/introduction/images/features/typo3book-composing-top.png','b9f6f19727d32093a525c8a08499fc0ac7f3b517','64ac5ffcee7477d77b5c195cff849face1e61735','png','image/png','typo3book-composing-top.png','bcc50dccb0a0cd75ea0caf25c22c29b316476feb',155453,1427443462,1427443462,''),(33,0,1427443463,0,0,1,'2',0,'/introduction/images/features/front-end-editing.png','5f52f4126b1da685ad1e153e2bd06939840c611b','64ac5ffcee7477d77b5c195cff849face1e61735','png','image/png','front-end-editing.png','3cc566eb3bfbbb0e740bbff802b197a1386a99e4',22306,1427443462,1427443462,''),(34,0,1427443463,0,0,1,'2',0,'/introduction/images/features/no-front-end-design-constraints.png','da501fb0b92a5d710f168e3cd365b1a6e0c2b328','64ac5ffcee7477d77b5c195cff849face1e61735','png','image/png','no-front-end-design-constraints.png','c51c0d47c6211f91847ce20e6dfd9bb6f7f811a1',22713,1427443462,1427443462,''),(35,0,1427443463,0,0,1,'2',0,'/introduction/images/features/granular-front-end-and-back-end-access-rights.png','8bcbdb3b11ff357ba6b5794ef45663c5a7c0667f','64ac5ffcee7477d77b5c195cff849face1e61735','png','image/png','granular-front-end-and-back-end-access-rights.png','dfc171d4576433edadf5fdd85f817ec908736bd6',38006,1427443462,1427443462,''),(36,0,1427443463,0,0,1,'2',0,'/introduction/images/features/multi-langauge-multi-domain.png','cb8f60adbc59743539c2b43feec6743d36208d3f','64ac5ffcee7477d77b5c195cff849face1e61735','png','image/png','multi-langauge-multi-domain.png','7ac041228765abc720b1c7d7729f99ed404ebf49',33027,1427443462,1427443462,''),(37,0,1427443463,0,0,1,'2',0,'/introduction/images/features/workspaces.png','7a1287cc14d6be666ed2ee883511322c6791b146','64ac5ffcee7477d77b5c195cff849face1e61735','png','image/png','workspaces.png','655668be292fee4e06eb626bc5871dbb443489c0',29204,1427443462,1427443462,''),(38,0,1427443463,0,0,1,'2',0,'/introduction/images/features/ease-of-use.png','502001c2dbdefee2185e6161a039a397d9889aa8','64ac5ffcee7477d77b5c195cff849face1e61735','png','image/png','ease-of-use.png','945528c6b526efa33c37e148c756c1508b5f2d88',21213,1427443462,1427443462,''),(39,0,1427443463,0,0,1,'2',0,'/introduction/images/background/typo3-silhouette-black.jpg','ba7372b23da2212f15b4c9f686c1517c93bac8ab','9be8657d534723bca1337bd2ce598225d0da074f','jpg','image/jpeg','typo3-silhouette-black.jpg','9ae1de1314b4e78cec854c437faae89dac9f3734',13581,1427443462,1427443462,'');
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `alternative` text,
  `categories` int(11) NOT NULL DEFAULT '0',
  `visible` int(11) unsigned NOT NULL DEFAULT '1',
  `status` varchar(24) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `caption` varchar(255) NOT NULL DEFAULT '',
  `creator_tool` varchar(255) NOT NULL DEFAULT '',
  `download_name` varchar(255) NOT NULL DEFAULT '',
  `creator` varchar(255) NOT NULL DEFAULT '',
  `publisher` varchar(45) NOT NULL DEFAULT '',
  `source` varchar(255) NOT NULL DEFAULT '',
  `location_country` varchar(45) NOT NULL DEFAULT '',
  `location_region` varchar(45) NOT NULL DEFAULT '',
  `location_city` varchar(45) NOT NULL DEFAULT '',
  `latitude` decimal(24,14) NOT NULL DEFAULT '0.00000000000000',
  `longitude` decimal(24,14) NOT NULL DEFAULT '0.00000000000000',
  `ranking` int(11) unsigned DEFAULT '0',
  `content_creation_date` int(11) unsigned DEFAULT '0',
  `content_modification_date` int(11) unsigned DEFAULT '0',
  `note` text NOT NULL,
  `unit` char(3) NOT NULL DEFAULT '',
  `duration` float unsigned NOT NULL DEFAULT '0',
  `color_space` varchar(4) NOT NULL DEFAULT '',
  `pages` int(4) unsigned NOT NULL DEFAULT '0',
  `language` varchar(12) NOT NULL DEFAULT '',
  `fe_groups` tinytext NOT NULL,
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES (1,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,384,NULL,1497,865,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(2,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,322,NULL,1024,683,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(3,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,320,NULL,401,600,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(4,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,324,NULL,238,100,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(5,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,321,NULL,200,301,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(6,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,339,NULL,500,333,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(7,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,297,NULL,1024,768,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(8,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,301,NULL,1024,683,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(9,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,310,NULL,260,260,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(10,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,312,NULL,260,260,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(11,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,314,NULL,260,260,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(12,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,299,NULL,768,1024,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(13,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,300,NULL,683,1024,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(14,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,298,NULL,1024,683,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(15,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,306,NULL,1024,474,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(16,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,309,NULL,400,150,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(17,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,311,NULL,400,200,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(18,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,319,NULL,200,400,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(19,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,315,NULL,260,260,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(20,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,317,NULL,260,400,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(21,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,313,NULL,400,260,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(22,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,302,NULL,1024,683,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(23,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,303,NULL,1024,683,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(24,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,304,NULL,1024,683,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(25,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,305,NULL,1024,768,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(26,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,387,NULL,540,312,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(27,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,388,NULL,540,430,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(28,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,386,NULL,540,210,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(29,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,385,NULL,540,323,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(30,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,375,NULL,1140,496,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(31,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,374,NULL,1140,496,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(32,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,371,NULL,220,220,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(33,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,372,NULL,220,220,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(34,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,368,NULL,220,220,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(35,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,369,NULL,220,220,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(36,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,370,NULL,220,220,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(37,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,367,NULL,220,220,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(38,0,1427443461,1427443461,2,0,0,'',0,0,0,'',0,0,0,0,0,0,355,NULL,1680,540,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','',''),(39,0,1427443461,1427443461,2,0,0,'a:4:{s:5:\"title\";N;s:11:\"description\";N;s:11:\"alternative\";N;s:10:\"categories\";N;}',0,0,0,'',0,0,0,0,0,0,325,'TYPO3 Logo Guide v3',0,0,NULL,NULL,0,1,'','','','','','','','','','','',0.00000000000000,0.00000000000000,0,0,0,'','',0,'',0,'','','');
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(512) NOT NULL DEFAULT '',
  `name` tinytext,
  `configuration` text,
  `configurationsha1` varchar(40) NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) NOT NULL DEFAULT '',
  `task_type` varchar(200) NOT NULL DEFAULT '',
  `checksum` varchar(255) NOT NULL DEFAULT '',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`,`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(199))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
INSERT INTO `sys_file_processedfile` VALUES (1,1427443747,1427443747,1,1,'/_processed_/preview_typo3-book-backend-style-settings_d6e804ef85.png','preview_typo3-book-backend-style-settings_d6e804ef85.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','9aff66051cf5267f5118564394bc32cb30015b77','Image.Preview','d6e804ef85',NULL,NULL);
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `fieldname` varchar(64) NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) NOT NULL DEFAULT '',
  `title` tinytext,
  `description` text,
  `alternative` tinytext,
  `link` varchar(1024) NOT NULL DEFAULT '',
  `downloadname` tinytext,
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
INSERT INTO `sys_file_reference` VALUES (1,1,1427443461,1427443461,2,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',39,1,'tx_bootstrappackage_carousel_item','background_image',10,'sys_file',NULL,NULL,NULL,'',NULL,''),(2,35,1427443461,1427443461,2,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',38,2,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(3,35,1427443461,1427443461,2,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',37,3,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(4,35,1427443461,1427443461,2,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',36,4,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(5,35,1427443461,1427443461,2,32,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',35,5,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(6,35,1427443461,1427443461,2,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',34,6,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(7,35,1427443461,1427443461,2,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',33,7,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(8,35,1427443461,1427443461,2,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',32,10,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(9,35,1427443461,1427443461,2,2,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',31,11,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(10,34,1427443461,1427443461,2,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',30,13,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(11,34,1427443461,1427443461,2,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',29,14,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(12,34,1427443461,1427443461,2,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',28,15,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(13,34,1427443461,1427443461,2,32,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',27,16,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(14,29,1427443461,1427443461,2,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',16,56,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(15,29,1427443461,1427443461,2,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',26,57,'tt_content','image',1,'sys_file','Title text of the image',NULL,'Alternative text of the image','',NULL,''),(16,29,1427443461,1427443461,2,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',25,58,'tt_content','image',1,'sys_file','Title text of the image',NULL,'Alternative text of the image','',NULL,''),(17,29,1427443461,1427443461,2,32,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',24,59,'tt_content','image',1,'sys_file','Title text of the image',NULL,'Alternative text of the image','',NULL,''),(18,29,1427443461,1427443461,2,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',23,60,'tt_content','image',1,'sys_file','Title text of the image',NULL,'Alternative text of the image','',NULL,''),(19,29,1427443461,1427443461,2,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',9,61,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(20,29,1427443461,1427443461,2,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',14,62,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(21,29,1427443461,1427443461,2,2,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',13,63,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(22,29,1427443461,1427443461,2,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',8,64,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(23,29,1427443461,1427443461,2,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',15,65,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(24,28,1427443461,1427443461,2,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:4:\"link\";N;}',25,68,'tt_content','image',2,'sys_file','title text for second image','click to typo3.org','alternative text for second image','www.typo3.org',NULL,''),(25,28,1427443461,1427443461,2,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:4:\"link\";N;}',24,68,'tt_content','image',1,'sys_file','title text for first image','click to startpage','alternative text for first image','1',NULL,''),(26,28,1427443461,1427443461,2,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',23,69,'tt_content','image',2,'sys_file','title text for second image','click enlarge','alternative text for second image','',NULL,''),(27,28,1427443461,1427443461,2,32,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',9,69,'tt_content','image',1,'sys_file','title text for first image','click on image shows large version','alternative text for first image','',NULL,''),(28,27,1427443461,1427443461,2,5376,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',22,72,'tt_content','image',6,'sys_file','','','','',NULL,''),(29,27,1427443461,1427443461,2,5120,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',21,72,'tt_content','image',5,'sys_file','','','','',NULL,''),(30,27,1427443461,1427443461,2,4864,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',20,72,'tt_content','image',4,'sys_file','','','','',NULL,''),(31,27,1427443461,1427443461,2,4608,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',19,72,'tt_content','image',3,'sys_file','','','','',NULL,''),(32,27,1427443461,1427443461,2,4352,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',18,72,'tt_content','image',2,'sys_file','','','','',NULL,''),(33,27,1427443461,1427443461,2,4096,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',17,72,'tt_content','image',1,'sys_file','','','','',NULL,''),(34,27,1427443461,1427443461,2,3840,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',19,73,'tt_content','image',6,'sys_file','','','','',NULL,''),(35,27,1427443461,1427443461,2,3584,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',21,73,'tt_content','image',5,'sys_file','','','','',NULL,''),(36,27,1427443461,1427443461,2,3328,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',20,73,'tt_content','image',4,'sys_file','','','','',NULL,''),(37,27,1427443461,1427443461,2,3072,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',22,73,'tt_content','image',3,'sys_file','','','','',NULL,''),(38,27,1427443461,1427443461,2,2816,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',18,73,'tt_content','image',2,'sys_file','','','','',NULL,''),(39,27,1427443461,1427443461,2,2560,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',17,73,'tt_content','image',1,'sys_file','','','','',NULL,''),(40,27,1427443461,1427443461,2,2304,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',22,74,'tt_content','image',6,'sys_file','','','','',NULL,''),(41,27,1427443461,1427443461,2,2048,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',21,74,'tt_content','image',5,'sys_file','','','','',NULL,''),(42,27,1427443461,1427443461,2,1792,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',20,74,'tt_content','image',4,'sys_file','','','','',NULL,''),(43,27,1427443461,1427443461,2,1536,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',19,74,'tt_content','image',3,'sys_file','','','','',NULL,''),(44,27,1427443461,1427443461,2,1280,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',18,74,'tt_content','image',2,'sys_file','','','','',NULL,''),(45,27,1427443461,1427443461,2,1024,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',17,74,'tt_content','image',1,'sys_file','','','','',NULL,''),(46,27,1427443461,1427443461,2,768,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',8,75,'tt_content','image',6,'sys_file',NULL,NULL,NULL,'',NULL,''),(47,27,1427443461,1427443461,2,512,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',9,75,'tt_content','image',5,'sys_file',NULL,NULL,NULL,'',NULL,''),(48,27,1427443461,1427443461,2,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',15,75,'tt_content','image',4,'sys_file',NULL,NULL,NULL,'',NULL,''),(49,27,1427443461,1427443461,2,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',16,75,'tt_content','image',3,'sys_file',NULL,NULL,NULL,'',NULL,''),(50,27,1427443461,1427443461,2,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',14,75,'tt_content','image',2,'sys_file',NULL,NULL,NULL,'',NULL,''),(51,27,1427443461,1427443461,2,32,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',13,75,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(52,27,1427443461,1427443461,2,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',16,76,'tt_content','image',6,'sys_file','','Image 6','','',NULL,''),(53,27,1427443461,1427443461,2,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',9,76,'tt_content','image',5,'sys_file','','Image 5','','',NULL,''),(54,27,1427443461,1427443461,2,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',15,76,'tt_content','image',4,'sys_file','','Image 4','','',NULL,''),(55,27,1427443461,1427443461,2,2,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',8,76,'tt_content','image',3,'sys_file','','Image 3','','',NULL,''),(56,27,1427443461,1427443461,2,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',14,76,'tt_content','image',2,'sys_file','','Image 2','','',NULL,''),(57,27,1427443461,1427443461,2,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',13,76,'tt_content','image',1,'sys_file','','Image 1','','',NULL,''),(58,26,1427443461,1427443461,2,5376,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',12,79,'tt_content','image',3,'sys_file','','','','',NULL,''),(59,26,1427443461,1427443461,2,5120,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',11,79,'tt_content','image',2,'sys_file','','','','',NULL,''),(60,26,1427443461,1427443461,2,4864,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',10,79,'tt_content','image',1,'sys_file','','','','',NULL,''),(61,26,1427443461,1427443461,2,4608,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',12,80,'tt_content','image',3,'sys_file','','','','',NULL,''),(62,26,1427443461,1427443461,2,4352,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',11,80,'tt_content','image',2,'sys_file','','','','',NULL,''),(63,26,1427443461,1427443461,2,4096,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',10,80,'tt_content','image',1,'sys_file','','','','',NULL,''),(64,26,1427443461,1427443461,2,3840,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',12,81,'tt_content','image',3,'sys_file','','','','',NULL,''),(65,26,1427443461,1427443461,2,3584,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',11,81,'tt_content','image',2,'sys_file','','','','',NULL,''),(66,26,1427443461,1427443461,2,3328,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',10,81,'tt_content','image',1,'sys_file','','','','',NULL,''),(67,26,1427443461,1427443461,2,3072,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',12,82,'tt_content','image',3,'sys_file','','','','',NULL,''),(68,26,1427443461,1427443461,2,2816,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',11,82,'tt_content','image',2,'sys_file','','','','',NULL,''),(69,26,1427443461,1427443461,2,2560,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',10,82,'tt_content','image',1,'sys_file','','','','',NULL,''),(70,26,1427443461,1427443461,2,2304,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',12,83,'tt_content','image',3,'sys_file','','','','',NULL,''),(71,26,1427443461,1427443461,2,2048,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',11,83,'tt_content','image',2,'sys_file','','','','',NULL,''),(72,26,1427443461,1427443461,2,1792,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',10,83,'tt_content','image',1,'sys_file','','','','',NULL,''),(73,26,1427443461,1427443461,2,1536,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',12,84,'tt_content','image',3,'sys_file','','','','',NULL,''),(74,26,1427443461,1427443461,2,1280,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',11,84,'tt_content','image',2,'sys_file','','','','',NULL,''),(75,26,1427443461,1427443461,2,1024,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',10,84,'tt_content','image',1,'sys_file','','','','',NULL,''),(76,26,1427443461,1427443461,2,768,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',12,85,'tt_content','image',3,'sys_file','','','','',NULL,''),(77,26,1427443461,1427443461,2,512,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',11,85,'tt_content','image',2,'sys_file','','','','',NULL,''),(78,26,1427443461,1427443461,2,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',10,85,'tt_content','image',1,'sys_file','','','','',NULL,''),(79,26,1427443461,1427443461,2,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',12,86,'tt_content','image',3,'sys_file','','','','',NULL,''),(80,26,1427443461,1427443461,2,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',11,86,'tt_content','image',2,'sys_file','','','','',NULL,''),(81,26,1427443461,1427443461,2,32,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',10,86,'tt_content','image',1,'sys_file','','','','',NULL,''),(82,26,1427443461,1427443461,2,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',12,87,'tt_content','image',3,'sys_file','','','','',NULL,''),(83,26,1427443461,1427443461,2,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',11,87,'tt_content','image',2,'sys_file','','','','',NULL,''),(84,26,1427443461,1427443461,2,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',10,87,'tt_content','image',1,'sys_file','','','','',NULL,''),(85,26,1427443461,1427443461,2,2,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',12,88,'tt_content','image',3,'sys_file','','','','',NULL,''),(86,26,1427443461,1427443461,2,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',11,88,'tt_content','image',2,'sys_file','','','','',NULL,''),(87,26,1427443461,1427443461,2,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',10,88,'tt_content','image',1,'sys_file','','','','',NULL,''),(88,22,1427443461,1427443461,2,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',9,113,'tt_content','media',2,'sys_file','Example Image 5','Description of the file',NULL,'',NULL,''),(89,22,1427443461,1427443461,2,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',8,113,'tt_content','media',1,'sys_file','Example Image 2','Description of the file',NULL,'',NULL,''),(90,22,1427443461,1427443461,2,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',7,114,'tt_content','media',1,'sys_file',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur est mi, tincidunt tristique consectetur sagittis, laoreet ut lectus.',NULL,'',NULL,''),(91,22,1427443461,1427443461,2,32,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',7,115,'tt_content','media',1,'sys_file','','',NULL,'',NULL,''),(92,22,1427443461,1427443461,2,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',7,116,'tt_content','media',1,'sys_file','','',NULL,'',NULL,''),(93,22,1427443461,1427443461,2,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',7,117,'tt_content','media',2,'sys_file','','',NULL,'',NULL,''),(94,22,1427443461,1427443461,2,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',7,117,'tt_content','media',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(95,18,1427443461,1427443461,2,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',6,128,'tt_content','image',1,'sys_file','30 hand-picked specializists participating in the T3UXW09','30 hand-picked specializists participating in the T3UXW09','30 hand-picked specializists participating in the T3UXW09','',NULL,''),(96,18,1427443461,1427443461,2,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',6,18,'pages','media',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(97,17,1427443461,1427443461,2,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',5,129,'tt_content','image',1,'sys_file','Kasper Skårhøj','TYPO3 Inventor: Kasper Skårhøj','Kasper Skårhøj','',NULL,''),(98,17,1427443461,1427443461,2,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',5,17,'pages','media',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(99,13,1427443461,1427443461,2,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',4,136,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(100,12,1427443461,1427443461,2,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',3,139,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(101,11,1427443461,1427443461,2,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:7:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',2,142,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,''),(102,1,1427443461,1427443461,2,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',1,168,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'',NULL,'');
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `driver` tinytext,
  `configuration` text,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_browsable` tinyint(4) NOT NULL DEFAULT '0',
  `is_public` tinyint(4) NOT NULL DEFAULT '0',
  `is_writable` tinyint(4) NOT NULL DEFAULT '0',
  `is_online` tinyint(4) NOT NULL DEFAULT '1',
  `processingfolder` tinytext,
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `deleted_hidden` (`deleted`,`hidden`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1427443461,1427443461,0,0,0,'fileadmin/ (auto-created)','This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,NULL,'');
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `path` varchar(120) NOT NULL DEFAULT '',
  `base` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
INSERT INTO `sys_filemounts` VALUES (1,0,1427443461,'News','/user_upload/news/',1,0,0,256,''),(2,0,1427443461,'Images','/user_upload/images/',1,0,0,128,''),(3,0,1427443461,'Documents','/user_upload/documents/',1,0,0,64,'');
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_log_uid` int(11) NOT NULL DEFAULT '0',
  `history_data` mediumtext,
  `fieldlist` text,
  `recuid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `history_files` mediumtext,
  `snapshot` int(11) NOT NULL DEFAULT '0',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `recordident_1` (`tablename`,`recuid`),
  KEY `recordident_2` (`tablename`,`tstamp`),
  KEY `sys_log_uid` (`sys_log_uid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_identity`
--

DROP TABLE IF EXISTS `sys_identity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_identity` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `foreign_tablename` varchar(255) NOT NULL DEFAULT '',
  `foreign_uid` int(11) NOT NULL DEFAULT '0',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_identity`
--

LOCK TABLES `sys_identity` WRITE;
/*!40000 ALTER TABLE `sys_identity` DISABLE KEYS */;
INSERT INTO `sys_identity` VALUES (1,'sys_log',33,'07e38c7a-1a32-4d84-b92d-a815e465f4bc'),(2,'sys_history',30,'3a0067e3-5c1c-46ea-b339-f72ad0ef204f'),(3,'sys_log',34,'9fb4a7e5-2d60-4366-9a84-f0e9a41b334e'),(4,'sys_log',35,'29ee8bbd-24a2-4ed3-87db-357df60638b9'),(5,'sys_history',31,'ecb57775-7aae-4cfe-91e0-478e2c733978'),(6,'sys_log',38,'356221ab-f449-4b81-86e4-a130b2e56d04'),(7,'sys_history',32,'fe5fa709-3987-4cd2-a12c-28a6a0768ef9'),(8,'sys_file_storage',2,'5daa3500-f766-4035-af4c-d1d636cc678c'),(9,'sys_log',41,'98544ad5-7e4e-45fe-9bc8-18bda9cf6a18'),(10,'sys_log',42,'e35f858f-3431-48be-b743-7855bab347a8'),(11,'sys_log',43,'b1ac6c86-bc9d-47aa-aa43-4502a7f8b0c5'),(12,'sys_history',33,'a9cacec2-86e4-4110-89ae-ae379585ea1d'),(13,'sys_log',44,'6342662f-cd38-4234-8892-54409c144b5d'),(14,'sys_log',45,'05c5feb7-795e-40da-a269-3d0ae64a056e'),(15,'sys_log',47,'ba541f65-ed60-4a4e-96cb-2a33f0ef31fc'),(16,'sys_history',34,'a876c3f4-9c41-4d51-b4fb-f428827c5d2a'),(17,'sys_log',50,'8697858e-7b88-4a45-a229-e271d23f6131'),(18,'sys_history',35,'86aac60a-8bc1-4ddc-ad05-59905a0844e1'),(19,'sys_log',53,'912ad015-e700-48df-ae79-46e3a591991a'),(20,'sys_history',36,'2550a682-5500-4312-bbd9-5ce4a725fdfa'),(21,'sys_log',54,'e9996f0c-3040-4eb3-b5d5-d0e33f902330');
/*!40000 ALTER TABLE `sys_identity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `flag` varchar(20) NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
INSERT INTO `sys_language` VALUES (1,0,1427443461,0,'German','de',0,''),(2,0,1427443461,0,'Dansk','dk',0,'');
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT '0',
  `record_pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `feuserid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `recuid` int(11) unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT '0',
  `error` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `details` text NOT NULL,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `details_nr` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `IP` varchar(39) NOT NULL DEFAULT '',
  `log_data` text,
  `event_pid` int(11) NOT NULL DEFAULT '-1',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `NEWid` varchar(20) NOT NULL DEFAULT '',
  `request_id` varchar(13) NOT NULL DEFAULT '',
  `time_micro` float NOT NULL DEFAULT '0',
  `component` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message` text,
  `data` text,
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`,`uid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext,
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
INSERT INTO `sys_news` VALUES (1,0,1427443461,1427443461,2,0,0,0,0,'Important Messages','You can edit the <b>Important Messages </b>shown on the Login screen very easily: As admin, just edit the records of type <i>System News</i> which are stored in the root folder.',''),(2,0,1427443461,1427443461,2,0,0,0,0,'Welcome to TYPO3','Explore the different roles. Login with one of the following usernames and the password that you choose during the installation routine:\r\n<ul><li><em>admin</em> = user with full access to the system</li><li><em>simple_editor </em>= very limited access, ideal for basic editing</li><li><em>advanced_editor </em>= more power, but still limited to exactly what an editor is supposed to do</li></ul>\r\nHave fun!','');
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text,
  `personal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT '0',
  `field` varchar(40) NOT NULL DEFAULT '',
  `flexpointer` varchar(255) NOT NULL DEFAULT '',
  `softref_key` varchar(30) NOT NULL DEFAULT '',
  `softref_id` varchar(40) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `ref_table` varchar(255) NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT '0',
  `ref_string` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`,`recuid`),
  KEY `lookup_uid` (`ref_table`,`ref_uid`),
  KEY `lookup_string` (`ref_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES ('010f1566f5142c60b23a30134ef65889','tt_content',161,'bodytext','','typolink_tag','20089aeb44f6b22de4228a3af651b3fb:1',-1,0,0,'pages',1,''),('01232a787839ee73b2573c61e7c2ca4c','sys_file_reference',60,'uid_local','','','',0,0,0,'sys_file',10,''),('01ed8e9f3437f7d82fe768fcae2564f2','tt_content',3,'image','','','',0,0,0,'sys_file_reference',3,''),('01fe59178dbe71cf0abb754637c40ab9','sys_file',32,'storage','','','',0,0,0,'sys_file_storage',1,''),('032d68907d2c3eb6e38aef2243740e3d','tt_content',128,'image','','','',0,0,0,'sys_file_reference',95,''),('035ce5d0d84c877614abd7d75a2dd345','sys_file_reference',98,'uid_local','','','',0,0,0,'sys_file',5,''),('0394f6c9f297f1aae8b5f421ae8154c8','tt_content',28,'bodytext','','typolink_tag','d6c960b4775ae2f66214dfda870a490f:3',-1,0,0,'_STRING',0,'http://typo3.org'),('041e4e8d535bdf171154fef852ac9554','tt_content',154,'records','','','',0,0,0,'tt_content',144,''),('042825b93439d4238fa28359fdcdabf6','tt_content',74,'image','','','',6,0,0,'sys_file_reference',23,''),('051874027492c3cff296b0591fb667ee','tt_content',80,'image','','','',4,0,0,'sys_file_reference',41,''),('0575f25249e65511974f17de4cff54e5','tt_content',113,'media','','','',1,0,0,'sys_file_reference',88,''),('0620e21b0b008976d76cdab135b95b01','tt_content',76,'image','','','',5,0,0,'sys_file_reference',52,''),('063df7e2970571a5770ff1072368d6e8','sys_file_metadata',15,'file','','','',0,0,0,'sys_file',306,''),('06f767e96f69ea033d729d0b4787d081','tt_content',142,'image','','','',0,0,0,'sys_file_reference',101,''),('07ba95007e237125e974ed11e30eaea5','sys_file_metadata',20,'file','','','',0,0,0,'sys_file',317,''),('07ec7a7f7818e77a45cc1a45bd6951f0','tt_content',74,'image','','','',5,0,0,'sys_file_reference',40,''),('0803574a76736ea3ce3945207078639f','tt_content',68,'image_link','','typolink','a6816c17abf24721131209d1affad516:0',-1,0,0,'_STRING',0,'1\ntypo3.org'),('088a9c028aaa1f5631ad375b58c2a8c4','tt_content',74,'image','','','',1,0,0,'sys_file_reference',44,''),('08dda64e164f907f66e2c75906225193','sys_file',14,'storage','','','',0,0,0,'sys_file_storage',1,''),('09cb6981fda1ffa6ede594afcc46ff25','tt_content',89,'image','','','',0,0,0,'sys_file_reference',58,''),('0a12f820bde46842a12d589532df3ced','tt_content',110,'media','','','',1,0,0,'sys_file_reference',89,''),('0a17fdb9679d81ce7d91082a3e0f0810','tt_content',73,'image','','','',6,0,0,'sys_file_reference',22,''),('0aaf650791f6263549e25ec5d375a91b','sys_file',28,'storage','','','',0,0,0,'sys_file_storage',1,''),('0c0d1ba7a08f88d05d93c4048e3ea774','tt_content',80,'image','','','',5,0,0,'sys_file_reference',42,''),('0c2a4d9d5a891b324e6649fdbf849b3f','tt_content',89,'image','','','',2,0,0,'sys_file_reference',60,''),('0d7ede0c75e6d6e10bdb08cef38b168f','sys_file_reference',55,'uid_local','','','',0,0,0,'sys_file',8,''),('0e68e9c5a9be17863f4209e3588afa40','sys_file_metadata',13,'file','','','',0,0,0,'sys_file',300,''),('0e90702f71756ecf0d6ed608fb0916fe','sys_file',38,'storage','','','',0,0,0,'sys_file_storage',1,''),('0ebd4e7565745553133f23152c7145d7','sys_file_reference',56,'uid_local','','','',0,0,0,'sys_file',14,''),('0f56fa47ccf1203a8c62c9789b857dc7','tt_content',5,'image','','','',0,0,0,'sys_file_reference',5,''),('0f701991a1f1e8a0b417e38b74ffedad','sys_file',7,'storage','','','',0,0,0,'sys_file_storage',1,''),('0fbbac58344418e11eff61e0600119dd','sys_file_reference',10,'uid_local','','','',0,0,0,'sys_file',30,''),('12e815dfe3cfd3c3356e90f4b74d2978','sys_file_reference',25,'link','','typolink','894000e8389180faae0c919e2bab0774:0',-1,0,0,'pages',1,''),('130bf2d0d7b637ca034f61ea15b94574','sys_file',15,'storage','','','',0,0,0,'sys_file_storage',1,''),('145b588356d5438fe9184cb084fc6ad1','sys_file',27,'storage','','','',0,0,0,'sys_file_storage',1,''),('15b4eba8b5eec0ff1d09178c562f0b38','be_users',4,'email','','email','2',-1,0,0,'_STRING',0,'username@example.com'),('15c68cf0f122779f10e66e6ff6c9e27e','tt_content',82,'image','','','',7,0,0,'sys_file_reference',38,''),('16079ce8249dc67a57b1b724cff74e1a','sys_file_reference',52,'uid_local','','','',0,0,0,'sys_file',16,''),('162269344d20ca6501c1964e15573a4c','sys_file_reference',41,'uid_local','','','',0,0,0,'sys_file',21,''),('1633bc712d39435eeb11597a02d96216','sys_file_reference',24,'link','','typolink','f03b3d8a85f255492be5febb652196ab:0',-1,0,0,'_STRING',0,'www.typo3.org'),('16754e9d9e1f69d9dc52ad64d1461a2a','pages_language_overlay',1,'sys_language_uid','','','',0,0,0,'sys_language',2,''),('1789e437c5c60c7dd82dd908108e7abb','sys_file',26,'storage','','','',0,0,0,'sys_file_storage',1,''),('196d0b3f7dddc334563aec89bef252f6','tt_content',166,'bodytext','','typolink_tag','75026b3dbf89b1f0696a88a6dcebb8bb:1',-1,0,0,'pages',14,''),('19c8d1e8425a78bb1bffd6940b70cc22','tt_content',15,'image','','','',0,0,0,'sys_file_reference',12,''),('19e5b061ef1da1de00a25252cfbef2e9','sys_file_metadata',35,'file','','','',0,0,0,'sys_file',369,''),('1a62f1aa54e1fe2d82285aba46368d90','sys_file_metadata',9,'file','','','',0,0,0,'sys_file',310,''),('1a74e5a5255186700515da283d17e713','tt_content',73,'image','','','',4,0,0,'sys_file_reference',35,''),('1afd8173d30b575369973b6224815e54','sys_file_metadata',38,'file','','','',0,0,0,'sys_file',355,''),('1b5726ade6714fe26b0dbe345c771d6e','tt_content',130,'pages','','','',0,0,0,'pages',16,''),('1ba2f48e43cdbfe5b83b0b39b0f21a1b','tt_content',59,'image','','','',0,0,0,'sys_file_reference',17,''),('1bfddc694ee4b77068ed7b995fd76734','tt_content',145,'bodytext','','typolink_tag','7265d041284b320af1bc59239b4a6b50:5',-1,0,0,'_STRING',0,'http://typo3.org/support/mailing-lists/'),('1c136eb415a92300badc35436f73f400','tt_content',163,'bodytext','','typolink_tag','b426472c37f864b3a8e9c16c26091619:11',-1,0,0,'_STRING',0,'https://plus.google.com/+typo3/'),('1c6b3ffd36f17c70f12a4768a19549cc','sys_file',8,'storage','','','',0,0,0,'sys_file_storage',1,''),('1eb4a282ab0e2cb36d83364886aaca94','tt_content',16,'image','','','',0,0,0,'sys_file_reference',13,''),('1fc8732efd25ca16fee54bada5600aae','tt_content',2,'image','','','',0,0,0,'sys_file_reference',2,''),('20b272d9751c21271674a572ce2c9b75','sys_file_reference',83,'uid_local','','','',0,0,0,'sys_file',11,''),('210af99a4c02bd7d1f07eb166b50faa1','tt_content',81,'image','','','',7,0,0,'sys_file_reference',32,''),('2130198bcc1957a034e0df10d388e7c6','sys_file_reference',75,'uid_local','','','',0,0,0,'sys_file',10,''),('217f49dde81184bb2595171d369df1a3','tt_content',66,'image','','','',0,0,0,'sys_file_reference',15,''),('218598d81921f6ec5a1ff65de34aae3b','sys_file_reference',31,'uid_local','','','',0,0,0,'sys_file',19,''),('21d5d0d322b69a5c4f3894e1fd1dbebe','sys_filemounts',3,'base','','','',0,0,0,'sys_file_storage',1,''),('21e211b93866e6bee54160a89648c7a2','sys_file_reference',28,'uid_local','','','',0,0,0,'sys_file',22,''),('22660618bf3c59deb227be12b519d2dc','tt_content',75,'image','','','',3,0,0,'sys_file_reference',48,''),('230a2ce26227122a6763bc4d87da903b','tt_content',163,'bodytext','','typolink_tag','32e4ee855ad99813f1540a611dce638c:3',-1,0,0,'_STRING',0,'http://www.facebook.com/typo3/'),('23a49c9344c0309d2aba273dab0e36d9','tt_content',162,'bodytext','','typolink_tag','ac848a223f39f283e1658aaaaffdad20:1',-1,0,0,'_STRING',0,'http://typo3.org/'),('23f856a42eb71b7be7bc6a2094d56f8d','tt_content',72,'image','','','',3,0,0,'sys_file_reference',30,''),('2400ae432f1cc05d350aeade61f4c11a','tt_content',119,'records','','','',0,0,0,'tt_content',23,''),('2584ad3ae7c3208953fd1a7fceadbe2a','tt_content',110,'media','','','',0,0,0,'sys_file_reference',88,''),('2601f9ad78b99222042c39edbe06b6ac','tt_content',78,'records','','','',0,0,0,'tt_content',23,''),('266dd8285cf268b83f187805e43c3de5','sys_file_reference',61,'uid_local','','','',0,0,0,'sys_file',12,''),('285da07eeadd63353f4749a0493ee3ae','tt_content',157,'bodytext','','email','2',-1,0,0,'_STRING',0,'john.doe@domain.com'),('288c6614b5b239f2ae8473fc12a91c9c','tt_content',67,'records','','','',0,0,0,'tt_content',23,''),('298a93912f4ad6c00f3a66c8abb7d327','sys_file_metadata',29,'file','','','',0,0,0,'sys_file',385,''),('299244d1592d6b172144a314d94dac39','tt_content',79,'image','','','',3,0,0,'sys_file_reference',26,''),('29e55edeb900fb71b0bc6d9283f744c2','pages',36,'shortcut','','','',0,0,0,'pages',1,''),('2a7329fd371d3cadb9101a1698440a48','tt_content',86,'image','','','',2,0,0,'sys_file_reference',79,''),('2ab6f099c562d3c34e28f5d18052d8a3','sys_file_reference',22,'uid_local','','','',0,0,0,'sys_file',8,''),('2aba2e701b5a9509e39807d27e4910b0','tt_content',164,'bodytext','','typolink_tag','7330788b454f8f97761538bb44d31d76:9',-1,0,0,'_STRING',0,'http://typo3.org/community/events/'),('2ade1fd04177aee3acd7e472dc03758c','tt_content',65,'image','','','',0,0,0,'sys_file_reference',23,''),('2c9aa7f14ea6f6aa680fae1d2a4cd24a','tt_content',73,'image','','','',0,0,0,'sys_file_reference',39,''),('2d87477e44e8b026976bfe70dcd64236','sys_file_reference',35,'uid_local','','','',0,0,0,'sys_file',21,''),('2e221d70bae09a31eed8484f81c9a910','sys_file_reference',38,'uid_local','','','',0,0,0,'sys_file',18,''),('2ec1cef14296e865b12ad4015ac29335','sys_file_reference',85,'uid_local','','','',0,0,0,'sys_file',12,''),('30e88990e221161d21b30dc3d6359abb','tt_content',7,'image','','','',0,0,0,'sys_file_reference',7,''),('30f84e5bf5f7c7a2e94fc5af0e182448','tt_content',85,'image','','','',1,0,0,'sys_file_reference',77,''),('31288ad5e9a3412af5851b03b6263f0f','sys_file_reference',72,'uid_local','','','',0,0,0,'sys_file',10,''),('3155d81517746a417ed91d51c06689a8','tt_content',76,'image','','','',0,0,0,'sys_file_reference',57,''),('316735dc5188fb8cb0b97119dd8e9ffa','tt_content',150,'bodytext','','typolink_tag','09a85e4f1841efff65b38088d0d6ea3d:5',-1,0,0,'_STRING',0,'http://wiki.typo3.org/index.php/Overview_Administrator_Manuals'),('3181fec9fa2611960153d915ba7a46d4','tt_content',25,'l18n_parent','','','',0,0,0,'tt_content',26,''),('322e9ba00e27c47a0fcbd5c5269ee9c7','sys_file_metadata',6,'file','','','',0,0,0,'sys_file',339,''),('324555aee4a0b561f15cd254c5fe80dd','sys_file',11,'storage','','','',0,0,0,'sys_file_storage',1,''),('32e59f6898ec81bcfbffd93cade6efd9','tt_content',75,'image','','','',5,0,0,'sys_file_reference',46,''),('32fff32d95e9403738a6b7cb6f849444','tt_content',75,'image','','','',4,0,0,'sys_file_reference',47,''),('3386b63a6d3af9a886e284f69bbfdf29','tt_content',58,'image','','','',0,0,0,'sys_file_reference',16,''),('3389d7292395152b962b9e1354c99684','tt_content',152,'bodytext','','typolink_tag','7944205f317e343347b57ad888d1f3f9:1',-1,0,0,'_STRING',0,'http://typo3.org/donate/online-donation/'),('340e226f3e099f24891c3dffb18bd99f','tt_content',87,'image','','','',3,0,0,'sys_file_reference',52,''),('3437154e8457714b0a72e6440f8fd293','sys_file_reference',51,'uid_local','','','',0,0,0,'sys_file',13,''),('343834832153e14d138b8ce1dec620d5','tt_content',73,'image','','','',2,0,0,'sys_file_reference',37,''),('3526848c214d15f8d4fd910865b2f21a','sys_file_reference',81,'uid_local','','','',0,0,0,'sys_file',10,''),('3667341874569e737278e403d545886d','tt_content',57,'image','','','',0,0,0,'sys_file_reference',15,''),('3781b04c3edd9bb0072c191d30ae576b','sys_file_reference',23,'uid_local','','','',0,0,0,'sys_file',15,''),('38149c272c77e0caa7737f6f83b9ca4e','be_groups',2,'subgroup','','','',0,0,0,'be_groups',1,''),('38e421611a3a3cba17d04d45418632b8','sys_file_reference',34,'uid_local','','','',0,0,0,'sys_file',19,''),('394a671c5296e1105a78bc494157df9a','tt_content',25,'sys_language_uid','','','',0,0,0,'sys_language',2,''),('3bb7679b5eb0a05b66b139a18324aed6','sys_file_reference',42,'uid_local','','','',0,0,0,'sys_file',20,''),('3bc7bbe23c8411ab822fff90375954e6','sys_file',13,'storage','','','',0,0,0,'sys_file_storage',1,''),('3be59a182b268570ef27653032cb9c95','sys_file_reference',57,'uid_local','','','',0,0,0,'sys_file',13,''),('3c960dda119f915bacf73c1a8afa8145','tt_content',112,'records','','','',0,0,0,'tt_content',23,''),('3c9ae919dff782f535ee58a146a0e8f0','sys_file_reference',6,'uid_local','','','',0,0,0,'sys_file',34,''),('3dd6ab99d421214b4a9a57c119785970','tt_content',147,'bodytext','','typolink_tag','05e2593c169ff7374a88eefc4ddb3300:1',-1,0,0,'_STRING',0,'http://typo3.com/Consultancies.1248.0.html'),('3def369efa00d857a4dc7215a6190d94','sys_file_reference',54,'uid_local','','','',0,0,0,'sys_file',15,''),('3e17bcc43cc9e1ba8b7a44442b172017','tt_content',79,'image','','','',2,0,0,'sys_file_reference',58,''),('3e51b5559cfe9111023d785880c44c63','tt_content',56,'image','','','',0,0,0,'sys_file_reference',14,''),('3e8ac3ed45aa1172e64c0b99e6bbd4c5','sys_file_metadata',1,'file','','','',0,0,0,'sys_file',384,''),('3ef07b135912c4a3e5451036691d7553','sys_file_reference',1,'uid_local','','','',0,0,0,'sys_file',39,''),('3f6b67c33cca6c2b7780753a402f6806','sys_file_metadata',32,'file','','','',0,0,0,'sys_file',371,''),('3fd84954748d63f54b96e48ebf954a26','sys_file',22,'storage','','','',0,0,0,'sys_file_storage',1,''),('3fe06791bc6d00b6e11f9028700de19c','sys_file_reference',66,'uid_local','','','',0,0,0,'sys_file',10,''),('4017e8fd1e693a83d5dccfe5fe854486','be_users',4,'usergroup','','','',0,0,0,'be_groups',3,''),('40903d99f4d34ea49bd62cd9d2312f94','tt_content',72,'image','','','',6,0,0,'sys_file_reference',21,''),('42f0365792737ec42cc1637d4982f29b','tt_content',71,'image','','','',0,0,0,'sys_file_reference',20,''),('437bdbcf25c115d910dde5708cddb835','tt_content',68,'image','','','',0,0,0,'sys_file_reference',25,''),('43ce72dba5f2bfbbe650cbe087f5fabe','tt_content',81,'image','','','',2,0,0,'sys_file_reference',64,''),('442db778da86625fbe548f490e578653','tt_content',97,'image','','','',2,0,0,'sys_file_reference',84,''),('446b53e340d933a577d2bcdf09ed0152','tt_content',80,'image','','','',1,0,0,'sys_file_reference',62,''),('4485281ec84eee3487ffd84cd589564c','tt_content',82,'image','','','',0,0,0,'sys_file_reference',69,''),('44db09ed380039917af00fbb43b56292','sys_file_reference',48,'uid_local','','','',0,0,0,'sys_file',15,''),('452645c2d511cb75a574fbe0901b0090','sys_file',30,'storage','','','',0,0,0,'sys_file_storage',1,''),('4795505b64f8edab363cd2f335224ab1','sys_file_metadata',8,'file','','','',0,0,0,'sys_file',301,''),('485797ec9e33f8fd6674c7eec8814b26','sys_file_reference',89,'uid_local','','','',0,0,0,'sys_file',8,''),('49ad5401b7f8869856fe38fb19599e9a','tt_content',106,'records','','','',0,0,0,'tt_content',23,''),('49fc71ff3cfb9f7ede0f076819af6a41','sys_file',19,'storage','','','',0,0,0,'sys_file_storage',1,''),('49fe84a06e764a1940e38b0e59fe5dbf','sys_file_reference',40,'uid_local','','','',0,0,0,'sys_file',22,''),('4a56d23fb1b48b0989b6582448f114b0','tt_content',80,'image','','','',3,0,0,'sys_file_reference',40,''),('4a6c14204e1190812f071c72a6907ee7','tt_content',73,'image','','','',1,0,0,'sys_file_reference',38,''),('4be9eeb4b86dff72631e90c5c7d80dc3','sys_file_reference',93,'uid_local','','','',0,0,0,'sys_file',7,''),('4c4e9a5677b8769104a0a8006509a296','tt_content',71,'records','','','',0,0,0,'tt_content',23,''),('4d7d34460a8fa3530385a75359d2a47a','sys_file_reference',47,'uid_local','','','',0,0,0,'sys_file',9,''),('4db64c3ca1991b95301fd2590d361436','sys_file',18,'storage','','','',0,0,0,'sys_file_storage',1,''),('4eb5ac3ae26b01c5099cdc04111a33fe','sys_file_metadata',24,'file','','','',0,0,0,'sys_file',304,''),('4f0e314ca405cb98d366ea982373a9c4','sys_file_metadata',22,'file','','','',0,0,0,'sys_file',302,''),('4f50874ad0c48612774fbee37d2cb995','tt_content',96,'image','','','',0,0,0,'sys_file_reference',79,''),('4f51b176d34ba700b167ddca7a104d34','tt_content',90,'image','','','',0,0,0,'sys_file_reference',61,''),('50344b17852786875d6c3d560345adc1','tt_content',131,'records','','','',0,0,0,'tt_content',23,''),('50aec6dc6c2fc8de2370d17e20d38e0b','tt_content',136,'image','','','',0,0,0,'sys_file_reference',99,''),('511ac1e80482537dd4461f9147fe6aa9','tt_content',60,'image','','','',0,0,0,'sys_file_reference',18,''),('511d883a27fcc91b0c2df3190fae008a','tt_content',168,'image','','','',0,0,0,'sys_file_reference',102,''),('51b32f78715b4eb45f555c6493534fff','tt_content',76,'image','','','',2,0,0,'sys_file_reference',55,''),('51b7d1b824b9598cd15e983f5cb97732','tt_content',163,'bodytext','','typolink_tag','8bb0b77fc5f1ebff47e1c594f297f0b7:7',-1,0,0,'_STRING',0,'http://www.linkedin.com/groups?gid=70999'),('53dce4ff674ff1483614e1cb2f8b6ac4','tt_content',87,'image','','','',6,0,0,'sys_file_reference',55,''),('541cb36518b442a53fec84d4a8a22d26','sys_file_reference',15,'uid_local','','','',0,0,0,'sys_file',26,''),('5446e0d96887276603564bb5e808bbef','sys_filemounts',2,'base','','','',0,0,0,'sys_file_storage',1,''),('549553bff55843f9f97b25b78f26395a','sys_file_reference',79,'uid_local','','','',0,0,0,'sys_file',12,''),('54c734c5c09befbf291e97c06bc830b1','sys_template',1,'constants','','url','2',-1,0,0,'_STRING',0,'http://alfresco:8080/alfresco/api/-default-/public/cmis/versions/1.1/browser'),('5669fb2f9bcfd0d2edf63aa9355b2f22','sys_file_metadata',26,'file','','','',0,0,0,'sys_file',387,''),('56892fedda93402ed7ef46c19a457e21','tt_content',167,'bodytext','','typolink_tag','18c2c7fd6fdbf2135403db1ad022b013:3',-1,0,0,'pages',34,''),('572a3207eda6d7d979c75c5a4a63fc9c','sys_file_reference',70,'uid_local','','','',0,0,0,'sys_file',12,''),('572d987c3dff8c73a0b364b2c6e9a53f','sys_file_reference',84,'uid_local','','','',0,0,0,'sys_file',10,''),('57b13db6656220ef60b89045c669255c','tt_content',67,'image','','','',0,0,0,'sys_file_reference',16,''),('58128444bb49563f98a83b722392e2a8','sys_file',35,'storage','','','',0,0,0,'sys_file_storage',1,''),('58546c035eb15fd1224f272c60119964','sys_file',33,'storage','','','',0,0,0,'sys_file_storage',1,''),('58f475f84ddf3cbdc9029fadac0672aa','tt_content',80,'image','','','',2,0,0,'sys_file_reference',61,''),('59c41b9f1d5338d9417c9b6817e2c542','sys_file',2,'storage','','','',0,0,0,'sys_file_storage',1,''),('5ada91cb401c327ee68d1b6b00d0efdb','sys_file_reference',27,'uid_local','','','',0,0,0,'sys_file',9,''),('5cbf157a57b6873ad90ddb435f77faf9','pages',20,'author_email','','email','2',-1,0,0,'_STRING',0,'max-musterman@typo3.org'),('5d48f5ac503b60d85cbe4012479a49df','sys_file_metadata',36,'file','','','',0,0,0,'sys_file',370,''),('5d5b106a4f55c07df83cadedfde00def','sys_file',39,'storage','','','',0,0,0,'sys_file_storage',1,''),('5d63152039632a3b825e3245d60fafe8','be_groups',3,'db_mountpoints','','','',0,0,0,'pages',1,''),('5d736e07731de05d466d5556fff7598d','tt_content',117,'media','','','',0,0,0,'sys_file_reference',94,''),('5d8b7a62be585572fe88fe349cc37ad4','sys_file_reference',25,'uid_local','','','',0,0,0,'sys_file',24,''),('5d94d0394f0450055e198a5f69b5bfe8','sys_file_metadata',7,'file','','','',0,0,0,'sys_file',297,''),('5daf481128b57ba73db484e79ad80032','sys_file_metadata',27,'file','','','',0,0,0,'sys_file',388,''),('5eca5d59e00eacbb0809ab8fb2517c54','sys_file',24,'storage','','','',0,0,0,'sys_file_storage',1,''),('5f93ac9397cc57a143a8f43e4887d321','tt_content',87,'image','','','',2,0,0,'sys_file_reference',82,''),('60375c47a9642ffde4bc8c9935f2e3f1','tt_content',97,'image','','','',0,0,0,'sys_file_reference',82,''),('604e0fdeb5db5058089b32a1842716ae','tt_content',150,'bodytext','','typolink_tag','6a61ecfef6b428bd52a4f5cbf49d3c23:9',-1,0,0,'_STRING',0,'http://typo3.org/documentation/api/'),('60a5fd82a6a7ab5d780cbb0be3642271','sys_file_reference',12,'uid_local','','','',0,0,0,'sys_file',28,''),('60ecd349d4c5bc42e6dd5c2309b57d02','tt_content',82,'image','','','',1,0,0,'sys_file_reference',68,''),('6133534f24727daf330dde37580d20c7','tt_content',22,'sys_language_uid','','','',0,0,0,'sys_language',2,''),('6209c0f5036d21a27042a85b0dd819da','tt_content',21,'sys_language_uid','','','',0,0,0,'sys_language',2,''),('6438c73e7e89bc9a39a39d8b80a820b2','tt_content',48,'header_link','','typolink','a59b23dd2d9ddcbaee742d7d72e43bb2:0',-1,0,0,'pages',30,''),('6441182f1fd597db7de31b9f722cafe0','tt_content',33,'records','','','',0,0,0,'tt_content',23,''),('644b88804e703b74315d43499408d4a6','tt_content',150,'bodytext','','typolink_tag','e322f2974df3cc2407595459d513c8e7:7',-1,0,0,'_STRING',0,'http://wiki.typo3.org/index.php/Overview_Developer_Manuals'),('6538dee3b21fcf0ff46039cfc5a34869','tt_content',47,'header_link','','typolink','16a97744f8ceec3afc8668224101c6e6:0',-1,0,0,'pages',30,''),('653d38568732786ae957f3d6010a5d94','tt_content',145,'bodytext','','typolink_tag','addfa428945558e9545905fe52b0e990:7',-1,0,0,'_STRING',0,'http://typo3.org/support/irc-chat/'),('6544eb95ad50f319b913129ba5c2a714','tt_content',136,'bodytext','','typolink_tag','39efe95de02a37ca00d5dca9813445d7:1',-1,0,0,'_STRING',0,'http://www.gnu.org/licenses/gpl.html'),('655993e1a639290c437d2980acdbdb39','sys_file',16,'storage','','','',0,0,0,'sys_file_storage',1,''),('656b2bc5a8d1c88d595f8e9ab2a914ac','sys_file',37,'storage','','','',0,0,0,'sys_file_storage',1,''),('6588728f1c2f2069b4b781ab1d102fff','sys_file',21,'storage','','','',0,0,0,'sys_file_storage',1,''),('65c26aa9d3d607713a6140e80ad7b957','tt_content',97,'image','','','',1,0,0,'sys_file_reference',83,''),('66a56afa7d865622de89aac894e9899a','be_groups',3,'file_mountpoints','','','',0,0,0,'sys_filemounts',3,''),('676cfb23d5ad9e3d1e2b873c38bba9ef','sys_file_reference',62,'uid_local','','','',0,0,0,'sys_file',11,''),('686e464a4c8530ef485d8a215af3d43b','tt_content',83,'image','','','',1,0,0,'sys_file_reference',71,''),('68e96e251d807f23b65c0ab499947e2b','sys_file_reference',17,'uid_local','','','',0,0,0,'sys_file',24,''),('68fc64d587867bebfd00cde139586153','tt_content',27,'records','','','',0,0,0,'tt_content',23,''),('69231c1795d263854c998e0850b5c3c1','sys_file_metadata',19,'file','','','',0,0,0,'sys_file',315,''),('69f9085f28b647a35cc8a8a19c7b8396','tt_content',135,'image','','','',0,0,0,'sys_file_reference',99,''),('6aa8bcfb81435b05e8e84cb84e242287','sys_file_reference',59,'uid_local','','','',0,0,0,'sys_file',11,''),('6ab5150701632f4af046b4b918b270b3','sys_template',1,'constants','','TStemplate','fileadminReferences.2',-1,0,0,'_FILE',0,'fileadmin/introduction/images/theme/IntroductionPackage.png'),('6c6c2f4872028d12c06ee1a788bc10fb','tt_content',113,'media','','','',0,0,0,'sys_file_reference',89,''),('6d96aaf2134025b06dd770d37dd1f21c','be_users',3,'usergroup','','','',0,0,0,'be_groups',2,''),('6db0ce14150cf6f96ea20440d41fe573','sys_file_metadata',34,'file','','','',0,0,0,'sys_file',368,''),('6e4f6cc3397b6d7955da69a15a97f3eb','sys_file_metadata',14,'file','','','',0,0,0,'sys_file',298,''),('6f47d66c59baf2f62984792db7dcbc11','tt_content',98,'image','','','',2,0,0,'sys_file_reference',87,''),('6fdaeb6b9a8d624927ffeb4309c75a54','tt_content',69,'image','','','',0,0,0,'sys_file_reference',27,''),('7022697cf1f641326c1f4ec1a29f17fe','sys_file_reference',101,'uid_local','','','',0,0,0,'sys_file',2,''),('707ada8d62b46ab19c2ad674501aec8b','tt_content',80,'image','','','',7,0,0,'sys_file_reference',44,''),('709306e1b1ef544da8d3a8ccc4b044fc','tt_content',46,'header_link','','typolink','72c6e94a27b50bedc6aaf9e4b0a55ec5:0',-1,0,0,'pages',30,''),('710d88793e41c52cfb0177f20c34c339','sys_file_metadata',4,'file','','','',0,0,0,'sys_file',324,''),('71bed8b24a986f9bb798eeb54a5e1c5a','sys_file_reference',91,'uid_local','','','',0,0,0,'sys_file',7,''),('7231a5c0e4527494a59c7dcf3900cd3e','tt_content',14,'image','','','',0,0,0,'sys_file_reference',11,''),('72ff22b93a1e6f8eb3dec344dec9af58','sys_file',17,'storage','','','',0,0,0,'sys_file_storage',1,''),('74320ef7101761a766500f968ec2c573','tt_content',72,'image','','','',5,0,0,'sys_file_reference',28,''),('7475e8236f2a999786e2c226f91fc4fb','be_groups',3,'subgroup','','','',0,0,0,'be_groups',1,''),('74d7fc3ff1f47fc0b48ff95049f8887f','sys_file_reference',71,'uid_local','','','',0,0,0,'sys_file',11,''),('75a20675573545f87122c5a02e251efe','tt_content',74,'image','','','',4,0,0,'sys_file_reference',41,''),('76010208a7c0e77e4fa1740a4142f4df','tt_content',85,'image','','','',2,0,0,'sys_file_reference',76,''),('764ed7b4d26b234a0b36628e00db1247','sys_file',5,'storage','','','',0,0,0,'sys_file_storage',1,''),('77cf74c7735b7ed06535ca691fbbfe07','sys_file',12,'storage','','','',0,0,0,'sys_file_storage',1,''),('797b9430b64dcb3ca68f0837b83fba13','sys_file_reference',94,'uid_local','','','',0,0,0,'sys_file',7,''),('79da208b4d4c15fdb7da28086cd1371e','tt_content',80,'image','','','',8,0,0,'sys_file_reference',45,''),('7afdb17749190f37f7106b4cf393b85a','sys_file_reference',73,'uid_local','','','',0,0,0,'sys_file',12,''),('7c29b05a1a9ab70c454f23c799f96733','tt_content',167,'bodytext','','typolink_tag','226e0d27bd192b82a13b7f32599bbcbf:1',-1,0,0,'pages',35,''),('7cef729d373913e3adb6c48ca9673154','tt_content',120,'bodytext','','email','2',-1,0,0,'_STRING',0,'john.doe@domain.com'),('7e2fd9b9e71bc8906d8046c1e21a2815','tt_content',96,'image','','','',1,0,0,'sys_file_reference',80,''),('7f64ec9340937f414d1842e00070ffdf','tt_content',88,'image','','','',1,0,0,'sys_file_reference',86,''),('7f6d262bf288d77f489006132658f9de','tt_content',77,'image','','','',1,0,0,'sys_file_reference',25,''),('7f787c78d67ddd78d4efca9d86d81f7c','be_groups',2,'file_mountpoints','','','',0,0,0,'sys_filemounts',3,''),('7ffe023a12785caf2e566548fc2bc51c','tt_content',116,'media','','','',0,0,0,'sys_file_reference',92,''),('809aa1d6b4bd2b85592c54737690f4e7','tt_content',21,'l18n_parent','','','',0,0,0,'tt_content',23,''),('80d416543da9f72e08ee342687bfe5f6','tt_content',79,'image','','','',0,0,0,'sys_file_reference',60,''),('816109125cb8984f09794dbe184d00ef','sys_file_reference',2,'uid_local','','','',0,0,0,'sys_file',38,''),('823fcecbb8dde803ccb7c1ed29ddaa97','sys_file_metadata',39,'file','','','',0,0,0,'sys_file',325,''),('826fcd477187924cd9e13e9f3ab3b345','tt_content',81,'image','','','',0,0,0,'sys_file_reference',66,''),('82a9f186528abc5a924de39cf2622b12','sys_file',34,'storage','','','',0,0,0,'sys_file_storage',1,''),('839314b32831ec0cfc61b21e0cd86ac1','tt_content',69,'image','','','',2,0,0,'sys_file_reference',18,''),('83ac951d8c25be6a8758d738d874a1ee','sys_file',10,'storage','','','',0,0,0,'sys_file_storage',1,''),('855c0ab4ce3bdf2df33414b302ee08f9','tt_content',86,'image','','','',0,0,0,'sys_file_reference',81,''),('8574b9825d355f169abb507c8f7c32b0','tt_content',75,'image','','','',1,0,0,'sys_file_reference',50,''),('86693c7749cb1a686c62a3df6e8c5596','tt_content',72,'image','','','',4,0,0,'sys_file_reference',29,''),('868f25df478816e60e15dda46f904ce3','sys_file_reference',90,'uid_local','','','',0,0,0,'sys_file',7,''),('869bde8f9ca429b0d40f083175418be4','tt_content',115,'media','','','',0,0,0,'sys_file_reference',91,''),('87591214e2d8fe47dfd33d7dbf7eaff9','sys_file_reference',88,'uid_local','','','',0,0,0,'sys_file',9,''),('87d329caa11de7d7c277bcc7878d02d8','tt_content',164,'bodytext','','typolink_tag','a03308e6d0b07cdf8594eee6e2cb9feb:3',-1,0,0,'_STRING',0,'http://typo3.org/documentation/'),('893e20b39f66903f90c681e8c41b6297','sys_file',3,'storage','','','',0,0,0,'sys_file_storage',1,''),('8abe6850cfc4a4db504f8decf2f26878','tt_content',145,'bodytext','','typolink_tag','1b1f11b5ee025318204a7e954d13cdc6:1',-1,0,0,'_STRING',0,'http://typo3.org/extensions/repository/'),('8b50d8c8e49f13411f2ef6faabb917a6','sys_file_reference',82,'uid_local','','','',0,0,0,'sys_file',12,''),('8bc53d0266a1e209c42ec7b6ca801446','be_groups',3,'file_mountpoints','','','',1,0,0,'sys_filemounts',2,''),('8c8fff6cf033703a1c144903bec898c8','tt_content',76,'image','','','',3,0,0,'sys_file_reference',54,''),('8fac4427cd53fd9cdc9b9e3ea6efb572','tt_content',156,'bodytext','','typolink_tag','27f5654ce25afd26c300db26c0abcfae:1',-1,0,0,'_STRING',0,'http://forge.typo3.org/projects/extension-introduction'),('8fd2b3848ff0837a3af51ee3b89c5bd2','tt_content',83,'image','','','',2,0,0,'sys_file_reference',70,''),('904f8c992813ef6f6ea2cee8ded54e9b','tt_content',86,'image','','','',1,0,0,'sys_file_reference',80,''),('91b056f084fb25a2af02c446e9a63b24','tt_content',163,'bodytext','','typolink_tag','f405877703fad82b66d352cf655b53ee:9',-1,0,0,'_STRING',0,'http://www.youtube.com/user/typo3'),('91e516044f5b9d753096ad71928645fb','tt_content',96,'image','','','',2,0,0,'sys_file_reference',81,''),('92924fd428aaf9afb5a89fcac439c7d0','sys_file_metadata',12,'file','','','',0,0,0,'sys_file',299,''),('92e88f68930dc214b341be942723a328','tt_content',90,'image','','','',2,0,0,'sys_file_reference',63,''),('92f34cf6eb02c7826d551ae9bb6ae4d2','sys_file_reference',96,'uid_local','','','',0,0,0,'sys_file',6,''),('9335d5a1263c3226487a43c24511e123','sys_file_metadata',18,'file','','','',0,0,0,'sys_file',319,''),('9550e5c368c1883b15533c8d73926485','sys_file_metadata',23,'file','','','',0,0,0,'sys_file',303,''),('95773200869bf1eb1d0da9539c9b6cb6','sys_file',25,'storage','','','',0,0,0,'sys_file_storage',1,''),('9629ac957f0742ffca62e2d0fa91edb5','sys_file_reference',78,'uid_local','','','',0,0,0,'sys_file',10,''),('96aaa2ace45b5effa3330b7124c27a53','sys_file_reference',33,'uid_local','','','',0,0,0,'sys_file',17,''),('97788b9c0ec854748d16f4ff5bf4d3ca','sys_file_reference',14,'uid_local','','','',0,0,0,'sys_file',16,''),('98505e15765f6131ef0f01841b440d75','sys_file_reference',4,'uid_local','','','',0,0,0,'sys_file',36,''),('9941c55763961a6dfdc05684841bd5fe','sys_file_reference',68,'uid_local','','','',0,0,0,'sys_file',11,''),('9a24ecc5bb59ba064bdbd8586c203b82','tt_content',87,'image','','','',7,0,0,'sys_file_reference',56,''),('9a9aec061ab398a9cc68fd933d500b30','sys_file_reference',77,'uid_local','','','',0,0,0,'sys_file',11,''),('9b559871a5c3275525030efb31f876c3','tt_content',164,'bodytext','','typolink_tag','e2152fa64412be2cbd94f05351af95f1:7',-1,0,0,'_STRING',0,'http://typo3.org/community/typo3-user-groups/'),('9be88245a630e09837e2ebf2c90d97a1','tt_content',132,'pages','','','',0,0,0,'pages',25,''),('9ca540c251ec0378eeee7f107f1c1ad9','sys_file_metadata',31,'file','','','',0,0,0,'sys_file',374,''),('9cd35c28c0a27a1def96cd5d72bf50c9','tt_content',163,'bodytext','','typolink_tag','6ccfc7e65e73a859199f9a53ee5fc5d9:1',-1,0,0,'_STRING',0,'http://twitter.com/typo3/'),('9ce985a667c63422a39214886fa21ee2','sys_file_reference',95,'uid_local','','','',0,0,0,'sys_file',6,''),('9cff080fb2d79efc3cba0a67f7c57df0','tt_content',75,'image','','','',2,0,0,'sys_file_reference',49,''),('9d0b628f8c1337e6c451a3fb5819ed20','sys_file_reference',50,'uid_local','','','',0,0,0,'sys_file',14,''),('9eaaba0ac89d2bf18733c7c483eee209','sys_file_reference',49,'uid_local','','','',0,0,0,'sys_file',16,''),('9f28dafc71d4e6c9e52424609ee59c04','sys_file_reference',16,'uid_local','','','',0,0,0,'sys_file',25,''),('9f47b8a35b9866743974f205172fd130','sys_file_reference',63,'uid_local','','','',0,0,0,'sys_file',10,''),('9f83854eb1f2c5c6096b20a90da7d8be','tt_content',84,'image','','','',1,0,0,'sys_file_reference',74,''),('a02ef7e81d5fd7cc3d85f18324b0c964','tt_content',81,'image','','','',4,0,0,'sys_file_reference',29,''),('a0c9ebc47fabfedbe0d0dfc518d0b53e','tt_content',82,'image','','','',8,0,0,'sys_file_reference',39,''),('a0e9f8719321122da8450fda1350d36e','tt_content',164,'bodytext','','typolink_tag','4cdad670b1a9dbccdd937fcdad132e29:5',-1,0,0,'_STRING',0,'http://typo3.org/support/mailing-lists/'),('a170c15f7c3baf7d221d8919facf2b0b','sys_file_metadata',11,'file','','','',0,0,0,'sys_file',314,''),('a22c3be93d47575dfcd82cdd7481a277','sys_file_reference',87,'uid_local','','','',0,0,0,'sys_file',10,''),('a2a9e3f05a315461858232268fb5d07e','sys_file_reference',26,'uid_local','','','',0,0,0,'sys_file',23,''),('a2b1a87ce22bcf4fb08221055e53d885','tt_content',83,'image','','','',0,0,0,'sys_file_reference',72,''),('a2f15b1ad25ba5e0afc0a303dd3de45b','tt_content',74,'image','','','',0,0,0,'sys_file_reference',45,''),('a33c22593a2e729f4758f70749b9ce98','tt_content',129,'image','','','',0,0,0,'sys_file_reference',97,''),('a3cec6ae4b5cc5eb36ed3a2035bee3db','tt_content',139,'image','','','',0,0,0,'sys_file_reference',100,''),('a3ff417f7be2678ba7194808c700fbe5','tt_content',162,'bodytext','','typolink_tag','927a1cf1865e67121137e21c5dd1ea50:3',-1,0,0,'_STRING',0,'http://typo3.org/donate/online-donation/'),('a40a01f24daad49151e3cf78f3910609','sys_file_reference',67,'uid_local','','','',0,0,0,'sys_file',12,''),('a59944415bb744ff03fdecec64fb4fd4','sys_file_reference',5,'uid_local','','','',0,0,0,'sys_file',35,''),('a5c6ecb1d83a692b5a32f622dc7d2bf9','tt_content',164,'bodytext','','typolink_tag','d934b98aa0d818947bfd59b72f58acbd:11',-1,0,0,'_STRING',0,'http://wiki.typo3.org/'),('a5f0fd4aaa32af4b98046f53326b6ce6','sys_file_reference',80,'uid_local','','','',0,0,0,'sys_file',11,''),('a60af627860d052409e017dd58cfcaaf','tt_content',88,'image','','','',2,0,0,'sys_file_reference',85,''),('a671ca900fcc8ef9702a06f9bcf0d4f9','sys_file_reference',19,'uid_local','','','',0,0,0,'sys_file',9,''),('a677ce2cf7f8fd8fe89c2b1ad9970391','tt_content',11,'image','','','',0,0,0,'sys_file_reference',9,''),('a77c5cd08702dd7d935e92a6e7c4be0e','tt_content',70,'image','','','',0,0,0,'sys_file_reference',19,''),('a8be2533f884962e8485dd0a991fa457','tt_content',45,'header_link','','typolink','acd7df507659b949fc76a5e575b3978c:0',-1,0,0,'pages',30,''),('a9585d2dab19478cc3162d6a1b834ab1','sys_file_metadata',37,'file','','','',0,0,0,'sys_file',367,''),('a9a87e46e3aa5079185f980cea59a7bf','tt_content',165,'bodytext','','typolink_tag','9f69e44cdbd7cfd4a61b5161a65a2efe:1',-1,0,0,'_STRING',0,'http://###BACKEND_URL###/'),('aa3a1480f52a472f8dac2f917a49860d','tt_content',76,'image','','','',1,0,0,'sys_file_reference',56,''),('aaa5449f90f3a6c718c5771d0b417fbf','sys_file_reference',24,'uid_local','','','',0,0,0,'sys_file',25,''),('abd044a4e02081ed925c3310166bb37b','tt_content',111,'media','','','',0,0,0,'sys_file_reference',90,''),('ac5a9a7584ae735bfda3e727b3928a6d','tt_content',87,'image','','','',5,0,0,'sys_file_reference',54,''),('acf5f2866d95312b7595099e151d1f89','tt_content',145,'bodytext','','typolink_tag','b8c232cb179469d1b6bc68075ec68eea:3',-1,0,0,'_STRING',0,'http://typo3.org/extensions/repository/'),('adb8ba3cfe6591a8c99c5cb5c76c2102','sys_file_reference',21,'uid_local','','','',0,0,0,'sys_file',13,''),('ae847c5645581a82b6c5fe149931e544','tt_content',72,'image','','','',1,0,0,'sys_file_reference',32,''),('aea806d0746df753d7b8d134e155788b','tt_content',65,'image','','','',1,0,0,'sys_file_reference',14,''),('aec153ff295dec53c32375e2a4152853','pages',17,'media','','','',0,0,0,'sys_file_reference',98,''),('aecf6ec5fb1666b9445550f31b168b3d','sys_file_reference',99,'uid_local','','','',0,0,0,'sys_file',4,''),('afbb73c0c0ea925f04e3de7bc7ebe91e','sys_file_reference',30,'uid_local','','','',0,0,0,'sys_file',20,''),('b095ee39bb476739f21fd0b2ef540f58','sys_file_metadata',2,'file','','','',0,0,0,'sys_file',322,''),('b0adb7a1c6cad6d43e8a24c4a22b9f44','sys_file_reference',9,'uid_local','','','',0,0,0,'sys_file',31,''),('b0e7a23cbcd3f7cdeee7c175935b8cc3','sys_file_reference',39,'uid_local','','','',0,0,0,'sys_file',17,''),('b0e94b86c97fd6bc6ec63f8a5e1f6abd','sys_file_reference',74,'uid_local','','','',0,0,0,'sys_file',11,''),('b1315f6a325027205050c81764294b72','sys_file',1,'storage','','','',0,0,0,'sys_file_storage',1,''),('b22e9913da3415420120e59ab4feb79c','tt_content',87,'image','','','',4,0,0,'sys_file_reference',53,''),('b2d31b44fe63202fbfd5ffb421b055e9','sys_file_reference',53,'uid_local','','','',0,0,0,'sys_file',9,''),('b415d3d5365934887a6a47b8b261305b','sys_file',23,'storage','','','',0,0,0,'sys_file_storage',1,''),('b48f6fa5f7c8ec46478bf8c34e8244fc','sys_file_reference',102,'uid_local','','','',0,0,0,'sys_file',1,''),('b4a1a20d68b878478188e915a98a90ed','sys_file_metadata',30,'file','','','',0,0,0,'sys_file',375,''),('b57101a52245616dcfd202e0e1510316','sys_file_metadata',33,'file','','','',0,0,0,'sys_file',372,''),('b5750ec09033695c7731eb515f82bab7','tt_content',151,'bodytext','','typolink_tag','406489bbbaf93c43bf1c916c4c827ffe:3',-1,0,0,'_STRING',0,'http://typo3.org/documentation/document-library/tutorials/doc_tut_quickstart/current/'),('b594119b47a5fd21423e140f50e6f460','sys_file_reference',18,'uid_local','','','',0,0,0,'sys_file',23,''),('b646f8e1cc6d097c9dc0da64408cfc22','tt_content',81,'image','','','',6,0,0,'sys_file_reference',31,''),('b6b9ec1fba7c9110f07b3aa82042fa1b','tt_content',62,'image','','','',0,0,0,'sys_file_reference',20,''),('b77036fd17b546357432d3e093b093ae','tt_content',81,'image','','','',1,0,0,'sys_file_reference',65,''),('b88c17570693a0eebc829a0ab3221c87','sys_file_reference',64,'uid_local','','','',0,0,0,'sys_file',12,''),('b8c9bd0e76920df8bc4f040c8de10ab2','tt_content',90,'records','','','',0,0,0,'tt_content',23,''),('b8f7c5f7a81efe6792630f9a8d6b15d0','sys_file',6,'storage','','','',0,0,0,'sys_file_storage',1,''),('b91256e9a2409d0b10c80ba47951af5d','tt_content',114,'media','','','',0,0,0,'sys_file_reference',90,''),('ba757380388d86ce7efe7cafb36f5cc0','sys_file_reference',7,'uid_local','','','',0,0,0,'sys_file',33,''),('baa34a32322fd60f96eaccc5927a4c7a','tt_content',76,'image','','','',4,0,0,'sys_file_reference',53,''),('bac9ece0768bb85491c7faac5683c146','be_groups',3,'file_mountpoints','','','',2,0,0,'sys_filemounts',1,''),('bad64d11655778fd3d3fe06e03d1e695','sys_file_metadata',16,'file','','','',0,0,0,'sys_file',309,''),('bbbc69d71f7ed618f39c8aab40a8eaa4','sys_file_reference',32,'uid_local','','','',0,0,0,'sys_file',18,''),('bcf622d38955e56aff1bbb9a6b2c8c58','sys_file_metadata',25,'file','','','',0,0,0,'sys_file',305,''),('bd450fd1517775ef4007d4af12829581','tt_content',150,'bodytext','','typolink_tag','49eddf55c62034fa345403247c4d6e65:3',-1,0,0,'_STRING',0,'http://wiki.typo3.org/index.php/Overview_User_Manuals'),('bea5f3dd0514d47e8e2f22ed1e5b6b53','tt_content',79,'image','','','',4,0,0,'sys_file_reference',27,''),('c0775ba7a67b6fc6c7de3e384bc9ab70','tt_content',146,'bodytext','','typolink_tag','2b511826b812aa153b2719bd7aa4e689:1',-1,0,0,'_STRING',0,'http://typo3.org'),('c0db953c8adc001f47fc16d09ce6c85e','tt_content',44,'header_link','','typolink','3fd670bc2be21d92bd6cf10cec7e4444:0',-1,0,0,'pages',30,''),('c142d8c87a096ada3245bc0040f47f38','tt_content',72,'image','','','',0,0,0,'sys_file_reference',33,''),('c14a29baa92a023199bd9a155368ddc5','tt_content',88,'image','','','',0,0,0,'sys_file_reference',87,''),('c202ee24019a7d92c1a98f0b65798ad3','tt_content',10,'image','','','',0,0,0,'sys_file_reference',8,''),('c2db2d185e97fb2ed9859cfebdbe6718','sys_file',9,'storage','','','',0,0,0,'sys_file_storage',1,''),('c31e1991950d2d11f3b82be385573ef8','tt_content',150,'bodytext','','typolink_tag','75cafc3cecb88b37a6d4d0e2badbca22:1',-1,0,0,'_STRING',0,'http://wiki.typo3.org/index.php/Main_Page'),('c36caacec05e7db3104e2db4afbe6ec5','sys_file_reference',44,'uid_local','','','',0,0,0,'sys_file',18,''),('c5e4a8bc27e94806f0693a6573285b2b','tt_content',87,'image','','','',0,0,0,'sys_file_reference',84,''),('c670918630837082d9d0246847e04372','tt_content',87,'image','','','',8,0,0,'sys_file_reference',57,''),('c6f6595f2a7af498d8f333273d1fe43c','sys_file_reference',45,'uid_local','','','',0,0,0,'sys_file',17,''),('c890fc6cae022b9023d9716ce1a17b0b','tt_content',64,'image','','','',0,0,0,'sys_file_reference',22,''),('c9155b9fc54ca6367968b075c7e53290','sys_file_reference',86,'uid_local','','','',0,0,0,'sys_file',11,''),('c97633ff378b67bf4ce7e96bc3c7d9c6','sys_file_metadata',5,'file','','','',0,0,0,'sys_file',321,''),('ca4d89b876da903774c14f1355b84a01','tt_content',89,'image','','','',1,0,0,'sys_file_reference',59,''),('cc53d64b7b85d144d4b56aee762b7198','tt_content',163,'image_link','','typolink','9d84db016e2d7316cb8f0abf55d468a4:0',-1,0,0,'_STRING',0,'http://twitter.com/typo3/\nhttp://www.facebook.com/typo3/\nhttp://www.slideshare.net/search/slideshow?q=typo3\nhttp://www.linkedin.com/groups?gid=70999\nhttp://vimeo.com/typo3/'),('cca3f0a97b61b004ee34fa3ba7ce91d8','pages',1,'shortcut','','','',0,0,0,'pages',36,''),('ccb3992cbb61922c9b80f6264f3309e4','be_groups',2,'db_mountpoints','','','',0,0,0,'pages',14,''),('cd7019fe3c6a20fdfcda521d3c9fbd3e','tt_content',80,'image','','','',0,0,0,'sys_file_reference',63,''),('cdd97b28551c1773f01fe5ac11725a19','tt_content',151,'bodytext','','typolink_tag','c9eba22ed896ec5c2e0766c7ca0c37f2:1',-1,0,0,'_STRING',0,'http://typo3.org/documentation/document-library/'),('cddd1b26b3edd7229d5cc4a924308f82','tt_content',77,'image','','','',0,0,0,'sys_file_reference',24,''),('ce89043309a99d02eed4d779a4aff156','tt_content',142,'longdescURL','','typolink','835f02e31e7ab1c46931ec78bc171576:0',-1,0,0,'_STRING',0,'http://www.flickr.com/photos/jocrau/4408947675/in/set-72157623535402924/'),('cf0385b4fae559768014e572945b30bb','tt_content',82,'image','','','',6,0,0,'sys_file_reference',37,''),('cf2a907b6da7498600eed3f0a422a8e7','sys_file_reference',69,'uid_local','','','',0,0,0,'sys_file',10,''),('cf2dfd26745c349e67c51b59ccb06200','tt_content',28,'bodytext','','typolink_tag','5d0465ea40f9f89222d3b5eaad8abaf9:5',-1,0,0,'_STRING',0,'test@test.net'),('cfbef14bc3d24c98e5ba498b9b21b42e','be_users',3,'email','','email','2',-1,0,0,'_STRING',0,'username@example.com'),('d043df07701e59661649b0699e2c1be4','tt_content',84,'image','','','',0,0,0,'sys_file_reference',75,''),('d0677f6f23f282972c95a7d397e05b47','tt_content',82,'image','','','',4,0,0,'sys_file_reference',35,''),('d06a61783b79959c89f278a393178570','sys_file_reference',29,'uid_local','','','',0,0,0,'sys_file',21,''),('d0b61c447c303bba3f6f3878aa3abfb5','tt_content',61,'image','','','',0,0,0,'sys_file_reference',19,''),('d0c80bf8341ae7d3c525acfe14c72ad1','sys_file_reference',36,'uid_local','','','',0,0,0,'sys_file',20,''),('d0e35e3a5d1545d2302ac14a4c6d68b2','tt_content',164,'bodytext','','typolink_tag','24f5fb842d2527f369a32509910954a8:1',-1,0,0,'_STRING',0,'http://typo3.org/documentation/document-library/'),('d1191410d1bb2720ef7b36cf4b92382f','tt_content',145,'bodytext','','typolink_tag','18dba74fb38717e90326f00d8199334e:9',-1,0,0,'_STRING',0,'http://typo3.com/Consultancies.1248.0.html?&L=1'),('d1657b650408849099784a78159bc058','sys_file',4,'storage','','','',0,0,0,'sys_file_storage',1,''),('d229b8f62a3c1229a518c8636567e875','tt_content',63,'image','','','',0,0,0,'sys_file_reference',21,''),('d259e2a29c85f13d9be30a1fc163c2b4','sys_file_reference',37,'uid_local','','','',0,0,0,'sys_file',22,''),('d26261b159761220d4260f83fdebf399','sys_file_metadata',21,'file','','','',0,0,0,'sys_file',313,''),('d28b153b965635b85ce92c2b630c6f61','tt_content',79,'image','','','',1,0,0,'sys_file_reference',59,''),('d35c1386a8cb2753c1f5d203c0b92171','pages',18,'media','','','',0,0,0,'sys_file_reference',96,''),('d39dfcdfd009c50a772ccc055227e439','sys_file',29,'storage','','','',0,0,0,'sys_file_storage',1,''),('d4147a00ca6e507199b6ddd63d263da3','tt_content',75,'image','','','',0,0,0,'sys_file_reference',51,''),('d4c96430dc7b1f7db2a18e00924b3454','sys_file_reference',11,'uid_local','','','',0,0,0,'sys_file',29,''),('d5bfb911bc3efb576ee843be8cb6e770','sys_file_metadata',28,'file','','','',0,0,0,'sys_file',386,''),('d719dc217bf5d197c3f32df034eb2eda','tt_content',98,'image','','','',0,0,0,'sys_file_reference',85,''),('d7c1232a70b606b7f70b732401d71642','tt_content',74,'image','','','',2,0,0,'sys_file_reference',43,''),('d858659f1eac26c44bdd9bf3c5c2bec8','sys_file',36,'storage','','','',0,0,0,'sys_file_storage',1,''),('da15994159a70bb82b0479d2af25f9d8','tt_content',159,'pages','','','',0,0,0,'pages',1,''),('da5704e8d0223d28dad2a2181cf844ee','tt_content',82,'image','','','',5,0,0,'sys_file_reference',36,''),('da5afff4256c16fb32f793e110c82fc5','tt_content',28,'bodytext','','typolink_tag','cbceea4194bb0f33a6bb0199c6fd286c:1',-1,0,0,'pages',31,''),('dc022431c22ad7c32056307f430ccbd7','tt_content',81,'image','','','',8,0,0,'sys_file_reference',33,''),('dd893628943ed55b825c0c8ff5fcba27','sys_file_reference',46,'uid_local','','','',0,0,0,'sys_file',8,''),('df3af9ad4af01bf869b847873f3e332b','tt_content',163,'bodytext','','typolink_tag','84daca16ca8a839d3f14407d029a674a:5',-1,0,0,'_STRING',0,'http://www.slideshare.net/search/slideshow?q=typo3'),('dfa3047f8589766bcec31c6d4c7efde5','sys_file_reference',92,'uid_local','','','',0,0,0,'sys_file',7,''),('e13b5f095b78676bc3616f7e91696583','tt_content',82,'image','','','',2,0,0,'sys_file_reference',67,''),('e2773d9ceb38ef665316861a191468a6','sys_filemounts',1,'base','','','',0,0,0,'sys_file_storage',1,''),('e289606d802e482a61bf867430c91c41','tt_content',73,'image','','','',5,0,0,'sys_file_reference',34,''),('e31809f57b6aa2bb7bac0e8750747596','tt_content',157,'pages','','','',0,0,0,'pages',4,''),('e44139df17b52bb54dc0d79242a006cf','sys_file_reference',13,'uid_local','','','',0,0,0,'sys_file',27,''),('e52954511b4322d7409006e449f07050','sys_file_metadata',17,'file','','','',0,0,0,'sys_file',311,''),('e5954c35c2072a3a4267c0fa44a50539','tt_content',80,'image','','','',6,0,0,'sys_file_reference',43,''),('e60c4a0d18256b64edb68ca38e5cbcda','tt_content',90,'image','','','',1,0,0,'sys_file_reference',62,''),('e68d3e3b234f74d2d1e98addf74f1c7d','tt_content',8,'bodytext','','typolink_tag','2a520c08168980925c24de2ce7ddf6ea:3',-1,0,0,'_STRING',0,'http://typo3.org/extensions/repository/'),('e6a8f27f1fa63339f802a24b4f2cde7d','tt_content',8,'bodytext','','typolink_tag','6594bb2f26867fd2f6f5a18539904c58:1',-1,0,0,'_STRING',0,'http://typo3.org/about/features/complete-feature-list/'),('e6bba084968f6963529de530ba55b286','sys_file_reference',97,'uid_local','','','',0,0,0,'sys_file',5,''),('e7dfe381cdb3dad0cc79375b25fb9280','tt_content',81,'image','','','',5,0,0,'sys_file_reference',30,''),('e8a4b39f1700c929be38e9c062489821','tt_content',85,'image','','','',0,0,0,'sys_file_reference',78,''),('e90f1ac5b82e8c7af9048faebdc6f515','tt_content',84,'image','','','',2,0,0,'sys_file_reference',73,''),('e9dbcb1ca71107c9dee9bf4cd3b3a7d6','tt_content',144,'bodytext','','typolink_tag','7e5e22f6b06d4d9cdc9bf8500d975327:1',-1,0,0,'_STRING',0,'http://shop.typo3.org/association/membership/apply-for-membership/ref/assoc/'),('eae80c8f074f9bea74f82f6d7145e6b2','sys_file',20,'storage','','','',0,0,0,'sys_file_storage',1,''),('eb274d6db217696cde49d6787621b6fa','sys_file_reference',58,'uid_local','','','',0,0,0,'sys_file',12,''),('ecca823880f2889c04e298d52e0d76b5','sys_file_reference',43,'uid_local','','','',0,0,0,'sys_file',19,''),('ed939cf46ec86e908d79788f0de204b4','tt_content',117,'media','','','',1,0,0,'sys_file_reference',93,''),('eebf49a4e4954ca2caff2e98c141fab3','sys_file_reference',100,'uid_local','','','',0,0,0,'sys_file',3,''),('ef0a4567d353741344a0ab3f626ac154','tt_content',81,'image','','','',3,0,0,'sys_file_reference',28,''),('eff7a86b7ff848d173e614b545ee973d','sys_file_reference',3,'uid_local','','','',0,0,0,'sys_file',37,''),('f081c3918776640ac1d1a37dfd164dff','tt_content',87,'image','','','',1,0,0,'sys_file_reference',83,''),('f125ee40ba4de9082fe7b83c49182fd6','tt_content',13,'image','','','',0,0,0,'sys_file_reference',10,''),('f12668ff058d2f1b5593223e645e5030','tt_content',72,'image','','','',2,0,0,'sys_file_reference',31,''),('f1d4947bd9e221d3d4345b57dc745bd4','sys_file_reference',76,'uid_local','','','',0,0,0,'sys_file',12,''),('f22aaac8848739eb2c0b88212b175b0b','sys_file_metadata',3,'file','','','',0,0,0,'sys_file',320,''),('f273a8823c99c1d85bf44c5344eda076','tt_content',6,'image','','','',0,0,0,'sys_file_reference',6,''),('f32f976500c9917c39e6146a67e82749','sys_file_reference',8,'uid_local','','','',0,0,0,'sys_file',32,''),('f4363608474c90d924c2bec2fe7cf0c7','tt_content',55,'records','','','',0,0,0,'tt_content',23,''),('f4d01bfc24582413ea1edaeae6c37892','sys_file_metadata',10,'file','','','',0,0,0,'sys_file',312,''),('f5064ba710d689462f7bb390a5e6409c','tt_content',69,'image','','','',1,0,0,'sys_file_reference',26,''),('f5a7c7a5a5840a0881b65451b9288c7f','tt_content',22,'l18n_parent','','','',0,0,0,'tt_content',24,''),('f70fd31749dcac8d8aa29779cfad92fb','tt_content',4,'image','','','',0,0,0,'sys_file_reference',4,''),('f9c3c09ed52e802628afc1bbcaa7cdb5','tt_content',68,'image','','','',1,0,0,'sys_file_reference',24,''),('f9c5514ecca38140ca453992d743dde6','sys_file_reference',20,'uid_local','','','',0,0,0,'sys_file',14,''),('fa7be1250955835998e86641da196b46','sys_file_reference',65,'uid_local','','','',0,0,0,'sys_file',11,''),('fb814dc0c0ec3e7e3b8eed6af39ff2e9','tt_content',97,'records','','','',0,0,0,'tt_content',23,''),('fc36a33202547d2434109fb8de1103db','tt_content',73,'image','','','',3,0,0,'sys_file_reference',36,''),('fc71c4e01e951315b4b1c8ae543ede84','sys_file',31,'storage','','','',0,0,0,'sys_file_storage',1,''),('fcc2ba2a6e7a59dbee5b1268ade649ba','tt_content',82,'image','','','',3,0,0,'sys_file_reference',34,''),('fd83b2ca7bcc23f8ac698d7ac62b9ced','tt_content',74,'image','','','',3,0,0,'sys_file_reference',42,''),('ff10fb6bdffd5c3f983fa8b51bd2458a','tt_content',98,'image','','','',1,0,0,'sys_file_reference',86,'');
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) NOT NULL DEFAULT '',
  `entry_key` varchar(128) NOT NULL DEFAULT '',
  `entry_value` blob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'extensionDataImport','typo3/sysext/scheduler/ext_tables_static+adt.sql','i:1;'),(2,'extensionDataImport','typo3/sysext/filemetadata/ext_tables_static+adt.sql','i:1;'),(3,'extensionDataImport','typo3conf/ext/introduction/Initialisation/Files','i:1;'),(4,'extensionDataImport','typo3conf/ext/introduction/ext_tables_static+adt.sql','i:1;'),(5,'extensionDataImport','typo3conf/ext/introduction/Initialisation/dataImported','i:1;'),(6,'extensionDataImport','typo3conf/ext/bootstrap_package/ext_tables_static+adt.sql','i:1;'),(7,'extensionDataImport','typo3conf/ext/realurl/ext_tables_static+adt.sql','i:1;'),(8,'extensionDataImport','typo3conf/ext/identity/ext_tables_static+adt.sql','i:1;'),(9,'extensionDataImport','typo3conf/ext/cmis_service/ext_tables_static+adt.sql','i:1;'),(10,'extensionDataImport','typo3conf/ext/cmis_fal/ext_tables_static+adt.sql','i:1;'),(11,'extensionDataImport','typo3conf/ext/contentdashboard/ext_tables_static+adt.sql','i:1;'),(12,'core','formSessionToken:1','s:64:\"7020671ff829d5d78bf3b467a14eb7388dd1179f1b2f760423e767d4eb89e3f2\";');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `sitetitle` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `root` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `clear` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text,
  `constants` text,
  `config` text,
  `nextLevel` varchar(5) NOT NULL DEFAULT '',
  `description` text,
  `basedOn` tinytext,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `tx_realurl` (`root`,`hidden`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `header_position` varchar(6) NOT NULL DEFAULT '',
  `bodytext` mediumtext,
  `image` text,
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageorient` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imagecaption` text,
  `imagecols` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imageborder` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `media` text,
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `cols` int(11) unsigned NOT NULL DEFAULT '0',
  `records` text,
  `pages` tinytext,
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `colPos` int(11) unsigned NOT NULL DEFAULT '0',
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `spaceBefore` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spaceAfter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `header_link` varchar(1024) NOT NULL DEFAULT '',
  `imagecaption_position` varchar(6) NOT NULL DEFAULT '',
  `image_link` text,
  `image_zoom` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_noRows` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_effects` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_compression` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `altText` text,
  `titleText` text,
  `longdescURL` text,
  `header_layout` varchar(30) NOT NULL DEFAULT '0',
  `menu_type` varchar(30) NOT NULL DEFAULT '0',
  `list_type` varchar(255) NOT NULL DEFAULT '0',
  `table_border` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_cellspacing` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_cellpadding` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_bgColor` int(11) unsigned NOT NULL DEFAULT '0',
  `select_key` varchar(80) NOT NULL DEFAULT '',
  `sectionIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `linkToTop` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file_collections` text,
  `filelink_size` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` tinytext NOT NULL,
  `target` varchar(30) NOT NULL DEFAULT '',
  `section_frame` int(11) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `multimedia` tinytext,
  `image_frames` int(11) unsigned NOT NULL DEFAULT '0',
  `recursive` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rte_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext,
  `accessibility_title` varchar(30) NOT NULL DEFAULT '',
  `accessibility_bypass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `selected_categories` text,
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `categories` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `icon_position` varchar(255) NOT NULL DEFAULT '',
  `icon_size` int(11) unsigned DEFAULT '0',
  `icon_type` int(11) unsigned DEFAULT '0',
  `icon_color` varchar(255) NOT NULL DEFAULT '',
  `icon_background` varchar(255) NOT NULL DEFAULT '',
  `tx_bootstrappackage_carousel_item` int(11) unsigned DEFAULT '0',
  `tx_bootstrappackage_accordion_item` int(11) unsigned DEFAULT '0',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,35,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,2816,'text','Upgrading TYPO3? No problem.','','From its inception TYPO3 has emphasized the importance of stable APIs and full&nbsp;backwards-compatibility.&nbsp; The TYPO3 core team follows a regular release schedule and take great care to ensure easy, non-breaking updates.','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,2,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,218,NULL,'',0,'',0,'a:19:{s:5:\"CType\";N;s:16:\"sys_language_uid\";N;s:6:\"colPos\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:12:\"sectionIndex\";N;s:6:\"hidden\";N;s:6:\"header\";N;s:15:\"header_position\";N;s:13:\"header_layout\";N;s:11:\"header_link\";N;s:4:\"date\";N;s:9:\"linkToTop\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;}','','',0,'','',0,0,'','',0,0,''),(2,35,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,2560,'textpic','Ease of Use','','TYPO3 is built around content management concepts that are intuitive and easy to master. Pages are organized into a hierarchical page tree. Each piece of content is clearly represented in the page module. All records can be accessed with a universal list module. Built-in WYSIWYG editors allow non-technical users to efficiently and effectively manage content.','1',0,25,NULL,2,0,'0',0,0,0,'','',0,0,30,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,329,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(3,35,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,2304,'textpic','Publishing Content','','TYPO3 contains built-in versioning functionality that allows users to revert content to a previous version with ease. TYPO3 also features “workspaces,” which make it possible for users to edit content in one or more draft workspaces, and to confirm editorial approval before content is published.','1',0,25,NULL,2,0,'0',0,0,0,'','',0,0,31,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,330,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(4,35,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,2048,'textpic','Multi-Language and Multiple Domains','','Support for multiple domains within a single TYPO3 installation and for multiple languages are built-in to the TYPO3 core and are integrated at every level of the system’s architecture.','1',0,25,NULL,2,0,'0',0,0,0,'','',0,0,32,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,331,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(5,35,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,1792,'textpic','Granular Frontend and Backend Access Rights','','All frontend pages and content can be limited to specific user groups. Backend editors can easily be restricted to specific sections of the page tree, modules, and directories in the file system.','1',0,25,NULL,2,0,'0',0,0,0,'','',0,0,33,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,332,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(6,35,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,1536,'textpic','No Frontend Design Constraints','','Because the TYPO3 frontend and backend are separate and distinct interfaces, developers have complete and total control of their frontend markup, CSS, and JavaScript, down to the most minute details.','1',0,25,NULL,1,0,'0',0,0,0,'','',0,0,34,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,333,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(7,35,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,1280,'textpic','Frontend Editing','','While the backend offers complete control over all site content, TYPO3 also includes a frontend editing interface for even faster, more intuitive content management by non-technical editors.','1',0,25,NULL,1,0,'0',0,0,0,'','',0,0,35,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,334,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(8,35,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,1024,'text','And More...','','For a full list of all that the TYPO3 core has to offer, take a look at the feature matrix on typo3.org. Or browse the list of over 6.000 extensions on the TYPO3 extension repository.\r\n<LINK http://typo3.org/about/features/complete-feature-list/ - btn btn-primary \"Opens external link in new window\">TYPO3 Feature Matrix</link>\r\n<LINK http://typo3.org/extensions/repository/ - btn btn-primary \"Opens external link in new window\">TYPO3 Extension Repository</link>','0',0,0,NULL,2,0,'0',0,0,0,'','',0,0,37,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,336,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',0,'','',0,0,'','',0,0,''),(9,35,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,768,'text','Enterprise Features','','In addition to everything one would expect in a sophisticated content management system, TYPO3 also possesses a number of important enterprise features including content-specific caching backends, a database abstraction layer, documented serviced-based APIs for authentication like LDAP and Active Directory, well-defined interfaces for third-party systems integration, reporting tools, a digital asset manager, and an interface for scheduled jobs.&nbsp;','0',0,0,NULL,2,0,'0',0,0,0,'','',0,0,36,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,335,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(10,35,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,512,'textpic','Feature Complete Out-of-the-box','center','<p class=\"text-center lead\">TYPO3 is unique in the quantity and quality of features that are part of its core. While there are over 6.000 extensions in the official TYPO3 Extension Repository, the following features are present without installing any community-developed extension.</p>','1',0,8,NULL,1,0,'0',0,0,0,'','',0,0,0,'',80,50,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,325,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(11,35,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'image','TYPO3 Book with Backend Screen','',NULL,'1',0,0,NULL,2,0,'0',0,0,0,'','',0,0,4,'',50,50,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'100','0','',0,0,0,0,'',1,0,'',0,'','',6,0,'',0,0,0,0,0,337,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(12,34,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'text','Extensive Configuration Options','','Nearly every aspect of the TYPO3 backend is configurable and customizable. Backend interfaces can often be configured using TSConfig. Nearly all rendered HTML content can be configured using TypoScript, a declarative configuration language used throughout TYPO3 for controlling front-end output.','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',12,0,'',0,0,0,0,0,220,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(13,34,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'textpic','Fluid: Next Generation Templating','','<p class=\"lead\">Fluid - TYPO3\'s next generation templating engine - is used for creating custom extension templates. </p>\r\nFluid was created for TYPO3 Flow and has been backported to TYPO3 CMS.\r\nFluid\'s approach to creating templates emphasizes simplicity, flexibility, extensibility, and easy of use. The syntax is XML-based and can be extended in any Web IDE. With its ViewHelpers, Fluid can be extended by powerful functionality that fits custom web project needs.\r\nFluid is used with Extbase by default, and can be used standalone in other PHP functions and has its own TypoScript Content Object &quot;FLUIDTEMPLATE&quot;.','1',0,26,NULL,2,0,'0',0,0,0,'','',0,0,0,'',80,80,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,346,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(14,34,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,64,'textpic','Extbase: TYPO3\'s Built-in MVC Framework','','<p class=\"lead\">Recent versions of TYPO3 CMS include a built-in Model-View-Controller (MVC) framework called Extbase, which allows developers to take advantage of this popular programming design pattern.</p>\r\nExtbase a nice Domain-Driven-Design (DDD) approach for persisting DB records, as well as an action-controller based structure, which can be used for dynamic plugins in any frontend page, as well as custom Backend modules in TYPO3 itself. In fact, most of the default backend modules run with Extbase.\r\nExtbase is a backport of features from TYPO3 FLOW to TYPO3 CMS.','1',0,25,NULL,2,0,'0',0,0,0,'','',0,0,0,'',80,80,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,347,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(15,34,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,32,'textpic','Extension Builder simplifies extension development','','<span style=\"font-size: 16px; line-height: 1.4;\">The Extension Builder helps you to build TYPO3 extensions based on the MVC framework Extbase and the Templating Engine Fluid. You can design your model with a graphic modeler and create Plugins or Backend modules.</span>\r\nAll required files are generated and you will have a basic extension where you can insert your domain logic.\r\nIn contrary to the former kickstarter extension the extension builder has an edit mode that enables the continuous use during development. You can modify the auto-generated PHP classes (add new methods, modify the method bodies, add comments and annotations) and the extension builder preserves your changes, even if you then rename models or properties in the modeler.','1',0,26,NULL,2,0,'0',0,0,0,'','',0,0,0,'',80,80,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,349,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(16,34,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,16,'textpic','6.000 Extensions and Counting','','<span style=\"line-height: 1.428571429;\">TYPO3 is an extremely modular system that can be easily enhanced with custom extensions. All TYPO3 sites are built on top of the TYPO3 core, which contains the systems\' fundamental functionality. Custom extensions interact with the core through the stable, clearly documented extension API. While the TYPO3 core does change in each new release, the interfaces between extensions and the core do not, ensuring easy updates and future-proof development.</span>\r\n<h2>The TYPO3 Extension Manager</h2>\r\nTYPO3 relies on the TYPO3 extension manager - included in the TYPO3 core - for installing, activating, and deactivating extensions on a given TYPO3 installation.&nbsp;<span style=\"line-height: 1.428571429;\">Extensions can be quickly imported and installed with just a couple clicks in the TYPO3 Admin Interface.</span>','1',0,25,NULL,2,0,'0',0,0,0,'','',0,0,0,'',80,80,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,348,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(17,34,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,8,'text','Incredible flexible','center','<div class=\"text-center\"><p class=\"lead\">More than 6.000 extensions like News, RealURL for sophisticated URL generation of pages, <span style=\"line-height: 1.428571429;\">or Grid Elements expand the TYPO3 base functionality. </span><span style=\"line-height: 1.428571429;\">Published by world-class developers around the&nbsp;</span><span style=\"line-height: 1.428571429;\">world. And your independence? Guaranteed by 1.800&nbsp;</span><span style=\"line-height: 1.428571429;\">agencies. Thus keeps your CMS flexible and your investments&nbsp;</span><span style=\"line-height: 1.428571429;\">save.</span></p></div>','0',0,0,NULL,2,0,'0',0,0,0,'','',0,0,0,'',80,80,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,350,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(18,33,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'text','Endless Possibilities','','The content elements that appear on subpages are just the core content elements. TYPO3 can be easily extended to include custom content elements. It is also possible to create dynamic, database-driven content elements (plug-ins) using the TYPO3 extension API and Extbase for instance.','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,235,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(19,33,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'text','','','These examples illustrate how - straight out-of-the-box - TYPO3 delivers a vast amount of freedom to content editors. Unlike more static content management systems, TYPO3 content management is highly element-based and granular. Click on any of the links in the secondary navigation, to the right, to see examples of each core content element.\r\nFeel free to log into the TYPO3 backend to see how easily these content elements (and pages) can be created, deleted, and modified!','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,234,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(20,33,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,64,'text','Content Management Made Easy','','<p class=\"lead\">To help get you started with TYPO3, we’ve included usage examples of the core content elements that have made TYPO3 so popular. </p>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,233,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(21,32,0,0,0,'',0,0,0,0,0,169,1427443461,1427443461,2,0,256,'bootstrap_package_panel','Om disse sider','','Siderne i dette underafsnit af introduktions-pakken, demonstrerer de forskellige indholdselementer tilgængelige for redaktører i TYPO3\'s backend interface, og hvorledes de ser ud i frontenden.\r\nUdseende og adfærd på disse indholdselementer er naturligvist fuldt ud konfigurérbar med Typoscript og CSS','0',0,0,'',1,0,'0',130,0,0,'','',0,0,0,'',50,0,'','','','',0,0,0,0,'','','','0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,2,297,'','',0,'',23,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}','','',0,'','',0,0,'','',0,0,''),(22,32,0,0,0,'',0,0,0,0,0,29,1427443461,1427443461,2,0,128,'text','Eksempler','','<ol><li><strong>Bulgarian:</strong> Жълтата дюля беше щастлива, че пухът, който цъфна, замръзна като гьон. </li><li><strong>Czech:</strong> Příliš žluťoučký kůň úpěl ďábelské kódy. </li><li><strong>Dutch:</strong> Pa\'s wĳze lynx bezag vroom het fikse aquaduct. </li><li><strong>English:</strong> The quick brown fox jumps over the lazy dog. </li><li><strong>Esperanto:</strong> Eĥoŝanĝo ĉiuĵaŭde. </li><li><strong>French:</strong> Les naïfs ægithales hâtifs pondant à Noël où il gèle sont sûrs d\'être déçus et de voir leurs drôles d\'œufs abîmés. </li><li><strong>German: </strong> Falsches Üben von Xylophonmusik quält jeden größeren Zwerg. (1) </li><li><strong>German: </strong> <span lang=\"da\">Im finsteren Jagdschloß am offenen Felsquellwasser patzte der affig-flatterhafte kauzig-höf‌liche Bäcker über seinem versifften kniffligen C-Xylophon.</span> (2) </li><li><strong>Greek</strong> (monotonic): ξεσκεπάζω την ψυχοφθόρα βδελυγμία </li><li><strong>Greek</strong> (polytonic): ξεσκεπάζω τὴν ψυχοφθόρα βδελυγμία </li><li><strong>Hebrew:</strong> <span dir=\"rtl\">זה כיף סתם לשמוע איך תנצח קרפד עץ טוב בגן.</span> </li><li><strong>Hungarian:</strong> Árvíztűrő tükörfúrógép. </li><li><strong>Icelandic:</strong> Sævör grét áðan því úlpan var ónýt. </li><li><strong>Irish:</strong> &quot;An ḃfuil do ċroí ag bualaḋ ó ḟaitíos an ġrá a ṁeall lena ṗóg éada ó ṡlí do leasa ṫú?&quot; &quot;D\'ḟuascail Íosa Úrṁac na hÓiġe Beannaiṫe pór Éava agus Áḋaiṁ.&quot; </li><li><strong>Jamaican:</strong> Chruu, a kwik di kwik brong fox a jomp huova di liezi daag de, yu no siit? </li><li><strong>Japanese</strong> (Hiragana):<br />いろはにほへど　ちりぬるを<br /> わがよたれぞ　つねならむ<br /> うゐのおくやま　けふこえて<br /> あさきゆめみじ　ゑひもせず (4)</li><li><strong>Polish:</strong> Pchnąć w tę łódź jeża lub ośm skrzyń fig. </li><li><strong>Portuguese:</strong> O próximo vôo à noite sobre o Atlântico, põe freqüentemente o único médico. (3) </li><li><strong>Sami (Northern):</strong> Vuol Ruoŧa geđggiid leat máŋga luosa ja čuovžža. </li><li><strong>Slovak:</strong> Starý kôň na hŕbe kníh žuje tíško povädnuté ruže, na stĺpe sa ďateľ učí kvákať novú ódu o živote. </li><li><strong>Spanish:</strong> El pingüino Wenceslao hizo kilómetros bajo exhaustiva lluvia y frío, añoraba a su querido cachorro. </li><li><strong>Swedish:</strong> Flygande bäckasiner söka strax hwila på mjuka tuvor. </li><li><strong>Russian:</strong> Съешь же ещё этих мягких французских булок да выпей чаю. </li><li><strong>Russian:</strong> В чащах юга жил-был цитрус? Да, но фальшивый экземпляр! ёъ. </li></ol>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'100','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,2,30,NULL,'',0,'',24,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}','','',0,'','',0,0,'','',0,0,''),(23,32,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,64,'bootstrap_package_panel','About These Pages','','The pages in this section of the introduction package demonstrate the various content elements available to editors in the TYPO3 backend interface, and their appearance in the front-end.\r\nThe layout and behavior of these examples are configurable via TypoScript and, of course, CSS.','0',0,0,NULL,1,0,'0',130,0,0,'','',0,0,0,'',50,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,169,NULL,'',0,'',0,'a:18:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(24,32,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,32,'text','Examples','','<ul><li><strong>Bulgarian:</strong> Жълтата дюля беше щастлива, че пухът, който цъфна, замръзна като гьон. </li><li><strong>Czech:</strong> Příliš žluťoučký kůň úpěl ďábelské kódy. </li><li><strong>Dutch:</strong> Pa\'s wĳze lynx bezag vroom het fikse aquaduct. </li><li><strong>English:</strong> The quick brown fox jumps over the lazy dog. </li><li><strong>Esperanto:</strong> Eĥoŝanĝo ĉiuĵaŭde. </li><li><strong>French:</strong> Les naïfs ægithales hâtifs pondant à Noël où il gèle sont sûrs d\'être déçus et de voir leurs drôles d\'œufs abîmés. </li><li><strong>German: </strong> Falsches Üben von Xylophonmusik quält jeden größeren Zwerg. (1) </li><li><strong>German: </strong> <span lang=\"da\">Im finsteren Jagdschloß am offenen Felsquellwasser patzte der affig-flatterhafte kauzig-höf‌liche Bäcker über seinem versifften kniffligen C-Xylophon.</span> (2) </li><li><strong>Greek</strong> (monotonic): ξεσκεπάζω την ψυχοφθόρα βδελυγμία </li><li><strong>Greek</strong> (polytonic): ξεσκεπάζω τὴν ψυχοφθόρα βδελυγμία </li><li><strong>Hebrew:</strong> <span dir=\"rtl\">זה כיף סתם לשמוע איך תנצח קרפד עץ טוב בגן.</span> </li><li><strong>Hungarian:</strong> Árvíztűrő tükörfúrógép. </li><li><strong>Icelandic:</strong> Sævör grét áðan því úlpan var ónýt. </li><li><strong>Irish:</strong> &quot;An ḃfuil do ċroí ag bualaḋ ó ḟaitíos an ġrá a ṁeall lena ṗóg éada ó ṡlí do leasa ṫú?&quot; &quot;D\'ḟuascail Íosa Úrṁac na hÓiġe Beannaiṫe pór Éava agus Áḋaiṁ.&quot; </li><li><strong>Jamaican:</strong> Chruu, a kwik di kwik brong fox a jomp huova di liezi daag de, yu no siit? </li><li><strong>Japanese</strong> (Hiragana):<br />いろはにほへど　ちりぬるを<br /> わがよたれぞ　つねならむ<br /> うゐのおくやま　けふこえて<br /> あさきゆめみじ　ゑひもせず (4)</li><li><strong>Polish:</strong> Pchnąć w tę łódź jeża lub ośm skrzyń fig. </li><li><strong>Portuguese:</strong> O próximo vôo à noite sobre o Atlântico, põe freqüentemente o único médico. (3) </li><li><strong>Sami (Northern):</strong> Vuol Ruoŧa geđggiid leat máŋga luosa ja čuovžža. </li><li><strong>Slovak:</strong> Starý kôň na hŕbe kníh žuje tíško povädnuté ruže, na stĺpe sa ďateľ učí kvákať novú ódu o živote. </li><li><strong>Spanish:</strong> El pingüino Wenceslao hizo kilómetros bajo exhaustiva lluvia y frío, añoraba a su querido cachorro. </li><li><strong>Swedish:</strong> Flygande bäckasiner söka strax hwila på mjuka tuvor. </li><li><strong>Russian:</strong> Съешь же ещё этих мягких французских булок да выпей чаю. </li><li><strong>Russian:</strong> В чащах юга жил-был цитрус? Да, но фальшивый экземпляр! ёъ. </li></ul>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'100','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,29,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(25,32,0,0,0,'',0,0,0,0,0,185,1427443461,1427443461,2,0,16,'text','TYPO3 kender ingen grænser','','<p class=\"lead\">TYPO3 understøtter alle sprog og tegnsæt. Alle frontend-, backend- og database-interaktioner understøtter fuldt ud UTF-8.</p>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,2,238,NULL,'',0,'',26,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}','','',0,'','',0,0,'','',0,0,''),(26,32,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,8,'text','TYPO3 Speaks Your Language','','<p class=\"lead\">TYPO3 supports all languages, characters and encoding out-of-the-box. All frontend, backend and database interactions run Unicode (UTF-8) by default.</p>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,185,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(27,31,0,0,0,'',0,0,0,0,0,172,1427443461,1427443461,2,0,256,'shortcut','About these pages','','','0',0,0,NULL,1,0,'0',0,0,0,'23','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,183,NULL,'',0,'',0,'a:1:{s:7:\"records\";N;}','','',0,'','',0,0,'','',0,0,''),(28,31,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'text','Links','','You can insert <LINK 31 - internal-link>internal links</link> (links to pages within the website), <LINK http://typo3.org - external-link-new-window>external links</link> (links to external sites) or <LINK test@test.net - mail>e-mail links</link> (links that open the user\'s email client when clicked).','0',0,0,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','3','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,63,'','',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',0,'','',0,0,'','',0,0,''),(29,31,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,64,'text','Lists','','<span style=\"line-height: 1.428571429;\">Bulleted list:</span>\r\n<ul><li>first level</li><li>first level<ul><li>second level</li><li>second level<ul><li>third level</li><li>third level</li></ul></li></ul></li></ul>\r\n<strong>Ordered list:</strong>\r\n<ol><li>first level</li><li>first level<ol><li>second level</li><li>second level<ol><li>third level</li><li>third level</li></ol></li></ol></li></ol>','0',0,0,NULL,2,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'3','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,295,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(30,31,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,32,'text','Blockquote','','Aenean ante elit, elementum et, varius ut, condimentum ut, sem. Aenean ante neque, imperdiet sed, ultricies vitae, aliquam dictum, arcu. Aenean arcu est, semper vitae, euismod quis, vehicula eu, risus.\r\n<blockquote>Aenean ante elit, elementum et, varius ut, condimentum ut, sem. Aenean ante neque, imperdiet sed, ultricies vitae, aliquam dictum, arcu. Aenean arcu est, semper vitae, euismod quis, vehicula eu, risus.</blockquote>\r\nAenean ante elit, elementum et, varius ut, condimentum ut, sem. Aenean ante neque, imperdiet sed, ultricies vitae, aliquam dictum, arcu. Aenean arcu est, semper vitae, euismod quis, vehicula eu, risus.','0',0,0,NULL,2,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'3','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,296,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(31,31,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,16,'text','Examples of Rich Text Content Elements ','','<strong>Continuous text:</strong> text, optional in <strong>bold</strong> or <em>italic</em> or in a combination of<em><strong> bold and italic</strong></em>. \r\n<strong>Special characters can be used</strong>: @ © ® ¢ ¼ ½ ¾ § ± a² m³ Ω π µ γ β α H<sub>2</sub>O\r\n<strong>Texts in foreign languages can be mixed on one page. </strong><br />The font has to be installed on the device though:\r\ncyrillic: Русская версия <br />chinese: 中文版<br />arabic: <span lang=\"ar\" xml:lang=\"ar\">الْعَرَبيّة</span> \r\n<p class=\"text-center\">Centered text</p>\r\n<p class=\"text-right\">Text justified right</p>','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,64,'','',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(32,31,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,8,'text','TYPO3\'s Built-in Rich Text Editor','','<p class=\"lead\">TYPO3 contains a sophisticated, built-in rich text editor (RTE). This editor contains all of the features one would expect from an Enterprise CMS, and is highly configurable.</p>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,201,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(33,30,0,0,0,'',0,0,0,0,0,172,1427443461,1427443461,2,0,5376,'shortcut','About these pages','','','0',0,0,NULL,1,0,'0',0,0,0,'23','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,177,NULL,'',0,'',0,'a:1:{s:7:\"records\";N;}','','',0,'','',0,0,'','',0,0,''),(34,30,0,0,0,'',0,0,0,0,0,44,1427443461,1427443461,2,0,5120,'header','Header 5. level (right-justified)','right','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','5','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,38,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',0,'','',0,0,'','',0,0,''),(35,30,0,0,0,'',0,0,0,0,0,43,1427443461,1427443461,2,0,4864,'header','Header 4. level (right-justified)','right','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','4','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,39,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',0,'','',0,0,'','',0,0,''),(36,30,0,0,0,'',0,0,0,0,0,42,1427443461,1427443461,2,0,4608,'header','Header 3. level (right-justified)','right','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','3','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,40,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',0,'','',0,0,'','',0,0,''),(37,30,0,0,0,'',0,0,0,0,0,41,1427443461,1427443461,2,0,4352,'header','Header 2. level (right-justified)','right','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,41,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',0,'','',0,0,'','',0,0,''),(38,30,0,0,0,'',0,0,0,0,0,40,1427443461,1427443461,2,0,4096,'header','Header 1. level (right-justified)','right','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,42,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',0,'','',0,0,'','',0,0,''),(39,30,0,0,0,'',0,0,0,0,0,44,1427443461,1427443461,2,0,3840,'header','Header 5. level (centered)','center','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','5','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,44,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',0,'','',0,0,'','',0,0,''),(40,30,0,0,0,'',0,0,0,0,0,43,1427443461,1427443461,2,0,3584,'header','Header 4. level (centered)','center','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','4','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,45,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',0,'','',0,0,'','',0,0,''),(41,30,0,0,0,'',0,0,0,0,0,42,1427443461,1427443461,2,0,3328,'header','Header 3. level (centered)','center','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','3','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,46,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',0,'','',0,0,'','',0,0,''),(42,30,0,0,0,'',0,0,0,0,0,41,1427443461,1427443461,2,0,3072,'header','Header 2. level (centered)','center','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,47,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',0,'','',0,0,'','',0,0,''),(43,30,0,0,0,'',0,0,0,0,0,40,1427443461,1427443461,2,0,2816,'header','Header 1. level (centered)','center','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,48,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',0,'','',0,0,'','',0,0,''),(44,30,0,0,0,'',0,0,0,0,0,44,1427443461,1427443461,2,0,2560,'header','Header 5. level (with link)','','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','30','','',0,0,0,0,'','','','5','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,50,'','',0,'',0,'a:1:{s:11:\"header_link\";N;}','','',0,'','',0,0,'','',0,0,''),(45,30,0,0,0,'',0,0,0,0,0,43,1427443461,1427443461,2,0,2304,'header','Header 4. level (with link)','','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','30','','',0,0,0,0,'','','','4','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,51,'','',0,'',0,'a:1:{s:11:\"header_link\";N;}','','',0,'','',0,0,'','',0,0,''),(46,30,0,0,0,'',0,0,0,0,0,42,1427443461,1427443461,2,0,2048,'header','Header 3. level (with link)','','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','30','','',0,0,0,0,'','','','3','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,52,'','',0,'',0,'a:1:{s:11:\"header_link\";N;}','','',0,'','',0,0,'','',0,0,''),(47,30,0,0,0,'',0,0,0,0,0,41,1427443461,1427443461,2,0,1792,'header','Header 2 level (with link)','','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','30','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,53,'','',0,'',0,'a:1:{s:11:\"header_link\";N;}','','',0,'','',0,0,'','',0,0,''),(48,30,0,0,0,'',0,0,0,0,0,40,1427443461,1427443461,2,0,1536,'header','Header 1. level (with link)','','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','30','','',0,0,0,0,'','','','0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,54,'','',0,'',0,'a:1:{s:11:\"header_link\";N;}','','',0,'','',0,0,'','',0,0,''),(49,30,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,1280,'header','Header 5 level','','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','5','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,56,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',0,'','',0,0,'','',0,0,''),(50,30,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,1024,'header','Header 4. level','','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','4','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,57,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',0,'','',0,0,'','',0,0,''),(51,30,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,768,'header','Header 3. level','','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','3','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,58,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',0,'','',0,0,'','',0,0,''),(52,30,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,512,'header','Header 2. level','','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,59,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',0,'','',0,0,'','',0,0,''),(53,30,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'header','Header 1. level','','','0',0,8,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,60,'','',0,'',0,'a:1:{s:5:\"CType\";N;}','','',0,'','',0,0,'','',0,0,''),(54,30,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'text','Full Control Over All Content Elements','','<p class=\"lead\">TYPO3 offers editors full control over all content elements; even simple content elements like headers are accompanied by several configuration options. Site administrators may, for example, predefine several different header layouts for editors to utilize across the site. </p>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,191,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(55,29,0,0,0,'',0,0,0,0,0,172,1427443461,1427443461,2,0,2816,'shortcut','About these pages','','','0',0,0,NULL,1,0,'0',0,0,0,'23','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,182,NULL,'',0,'',0,'a:1:{s:7:\"records\";N;}','','',0,'','',0,0,'','',0,0,''),(56,29,0,0,0,'',0,0,0,0,0,69,1427443461,1427443461,2,0,2560,'textpic','Position: Below, right','',' Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna. \r\nHambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor. ','1',500,9,'',1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'Alternative text of the image','Title text of the image','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,65,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(57,29,0,0,0,'',0,0,0,0,0,69,1427443461,1427443461,2,0,2304,'textpic','Position: Below, center','',' Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna. \r\nHambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor. ','1',500,8,'',1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'Alternative text of the image','Title text of the image','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,66,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(58,29,0,0,0,'',0,0,0,0,0,69,1427443461,1427443461,2,0,2048,'textpic','Position: Below, left','',' Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna. \r\nHambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor. ','1',500,10,'',1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'Alternative text of the image','Title text of the image','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,67,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(59,29,0,0,0,'',0,0,0,0,0,69,1427443461,1427443461,2,0,1792,'textpic','Position: Above, right','',' Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna. \r\nHambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor. ','1',500,1,'',1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'Alternative text of the image','Title text of the image','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,68,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(60,29,0,0,0,'',0,0,0,0,0,69,1427443461,1427443461,2,0,1536,'textpic','Position: Above, center','',' Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna. \r\nHambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor. ','1',500,0,'',2,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'Alternative text of the image','Title text of the image','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,69,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(61,29,0,0,0,'',0,0,0,0,0,69,1427443461,1427443461,2,0,1280,'textpic','Position: Above, left','',' Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna. \r\nHambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor. ','1',500,2,'',1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'Alternative text of the image','Title text of the image','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,70,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(62,29,0,0,0,'',0,0,0,0,0,66,1427443461,1427443461,2,0,1024,'textpic','Position:  Beside text, right','',' Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna. \r\nHambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor. ','1',0,25,'',1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'Alternative text of the image','Title text of the image','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,71,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(63,29,0,0,0,'',0,0,0,0,0,66,1427443461,1427443461,2,0,768,'textpic','Position: Beside text, left','',' Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna. \r\nHambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor. ','1',0,26,'',1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'Alternative text of the image','Title text of the image','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,72,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(64,29,0,0,0,'',0,0,0,0,0,66,1427443461,1427443461,2,0,512,'textpic','Position:  In text, right','',' Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna. \r\nHambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor. ','1',0,17,'',1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'Alternative text of the image','Title text of the image','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,73,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(65,29,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'textpic','Position:  In text, left','','Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna. \r\nHambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor. ','1',0,18,'',1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','center','',0,0,0,0,'Alternative text of the image','Title text of the image','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,74,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(66,29,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'text','Easily Position Text and Images','','<p class=\"lead\">TYPO3 makes working with text and images a snap. TYPO3\'s text with image content element gives editors precise control over captions, alternative text attributes, image size and quality, and layout. TYPO3\'s core tools for manipulating images can automatically optimize image files uploaded by back-end editors to reduce file size and reduce the time required to load a page.</p>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,200,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(67,28,0,0,0,'',0,0,0,0,0,172,1427443461,1427443461,2,0,256,'shortcut','About these pages','','','0',0,0,NULL,1,0,'0',0,0,0,'23','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,184,NULL,'',0,'',0,'a:1:{s:7:\"records\";N;}','','',0,'','',0,0,'','',0,0,''),(68,28,0,0,0,'',0,0,0,0,0,76,1427443461,1427443461,2,0,128,'textpic','Images Linked to Internal and External Pages','','Each image can be linked using the link field in the back-end. Multiple links can be added by separating each link with a comma. Values entered into the link field can be&nbsp;page id, a URL, or an&nbsp;e-mail address.','2',0,18,'click to startpage\r\nclick to typo3.org',2,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','1\ntypo3.org',0,0,0,0,'alternative text for first image\r\nalternative text for second image','title text for first image\r\ntitle text for second image','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,77,'','',0,'',0,'a:1:{s:10:\"image_link\";N;}','','',0,'','',0,0,'','',0,0,''),(69,28,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,64,'textpic','Image Click-enlarge Functionality','','Check the &quot;click-enlarge&quot; checkbox in the back-end to allow users to click to show the full-size image.\r\n\r\n','2',0,18,'click on image shows large version\r\nclick enlarge',2,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',1,0,0,0,'alternative text for first image\r\nalternative text for second image','title text for first image\r\ntitle text for second image','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,79,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(70,28,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,32,'text','No HTML Required','','<p class=\"lead\">With TYPO3, controlling the behavior of images is simple. Editors with no knowledge of HTML can easily manage&nbsp;links, popups, captions, alignment,&nbsp;and more.</p>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,197,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(71,27,0,0,0,'',0,0,0,0,0,172,1427443461,1427443461,2,0,256,'shortcut','About these pages','','','0',0,0,NULL,1,0,'0',0,0,0,'23','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,179,NULL,'',0,'',0,'a:1:{s:7:\"records\";N;}','','',0,'','',0,0,'','',0,0,''),(72,27,0,0,0,'',0,0,0,0,0,83,1427443461,1427443461,2,0,128,'textpic','Fixed width and \"no rows\"  flagged','','','6',100,10,'',3,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,1,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,81,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(73,27,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,64,'textpic','Fixed width for images with different width-height ratio','','','6',100,10,'',3,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,82,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(74,27,0,0,0,'',0,0,0,0,0,83,1427443461,1427443461,2,0,32,'textpic','Fixed height for images with different width-height ratio','','','6',0,10,'',3,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,80,0,0,80,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(75,27,0,0,0,'',0,0,0,0,0,87,1427443461,1427443461,2,0,16,'textpic','6 images in 3 columns','','','6',0,2,'Image 1\r\nImage 2\r\nImage 3\r\nImage 4\r\nImage 5\r\nImage 6',3,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,249,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(76,27,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,8,'textpic','6 images in 6 columns','','','6',0,2,'Image 1\r\nImage 2\r\nImage 3\r\nImage 4\r\nImage 5\r\nImage 6',6,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,87,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(77,27,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,4,'text','Multiple Image Layout Options','','<p class=\"lead\">TYPO3 provides users with numerous possibilities for laying out images on a page. The back-end interface provides users with easy control over image formats, sizes, widths, groupings, and quality.</p>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,196,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(78,26,0,0,0,'',0,0,0,0,0,172,1427443461,1427443461,2,0,2816,'shortcut','About these pages','','','0',0,0,NULL,1,0,'0',0,0,0,'23','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,178,NULL,'',0,'',0,'a:1:{s:7:\"records\";N;}','','',0,'','',0,0,'','',0,0,''),(79,26,0,0,0,'',0,0,0,0,0,91,1427443461,1427443461,2,0,2560,'image','Effect: darker','','','3',100,0,'',3,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,26,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,89,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(80,26,0,0,0,'',0,0,0,0,0,91,1427443461,1427443461,2,0,2304,'image','Effect: brighter','','','3',100,0,'',3,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,25,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,90,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(81,26,0,0,0,'',0,0,0,0,0,91,1427443461,1427443461,2,0,2048,'image','Effect: contrast','','','3',100,0,'',3,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,23,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,91,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(82,26,0,0,0,'',0,0,0,0,0,91,1427443461,1427443461,2,0,1792,'image','Effect: normalize','','','3',100,0,'',3,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,20,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,92,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(83,26,0,0,0,'',0,0,0,0,0,91,1427443461,1427443461,2,0,1536,'image','Effect: sharpen','','','3',100,0,'',3,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,11,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,93,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(84,26,0,0,0,'',0,0,0,0,0,87,1427443461,1427443461,2,0,1280,'image','Effect: grayscale','','','3',100,0,'',3,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,10,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,94,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(85,26,0,0,0,'',0,0,0,0,0,87,1427443461,1427443461,2,0,1024,'image','Rotate 180','','','3',100,0,'',3,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,3,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,95,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(86,26,0,0,0,'',0,0,0,0,0,87,1427443461,1427443461,2,0,768,'image','Rotate -90 CCW','','','3',100,0,'',3,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,2,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,96,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(87,26,0,0,0,'',0,0,0,0,0,87,1427443461,1427443461,2,0,512,'image','Rotate 90 CCW','','','3',100,0,'',3,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,1,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,97,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(88,26,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'image','Normal Version','','','3',100,0,'',3,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,98,'','',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(89,26,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'text','TYPO3 and ImageMagick','','<p class=\"lead\">TYPO3 takes full advantage of the rich functionality provided by the ImageMagick library including the ability to post-process images, manage colors, and apply effects. TYPO3 automates the tedious and time-consuming process of optimizing images for the web.</p>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,193,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(90,25,0,0,0,'',0,0,0,0,0,172,1427443461,1427443461,2,0,256,'shortcut','About these pages','','','0',0,0,NULL,1,0,'0',0,0,0,'23','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,181,NULL,'',0,'',0,'a:1:{s:7:\"records\";N;}','','',0,'','',0,0,'','',0,0,''),(91,25,0,0,0,'',0,0,0,0,0,100,1427443461,1427443461,2,0,128,'table','Condensed table','','|Area A|Area B|Area C\r\n2007|50.000|35.000|62.400\r\n2008|52.500|39.700|61.500\r\n2009|54.000|41.000|62.000','0',0,8,'',0,0,'0',150,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,299,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"acctables_caption\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"acctables_summary\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"acctables_tfoot\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"acctables_headerpos\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"acctables_nostyles\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"acctables_tableclass\">\n                    <value index=\"vDEF\">table table-condensed</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_parsing\">\n            <language index=\"lDEF\">\n                <field index=\"tableparsing_quote\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"tableparsing_delimiter\">\n                    <value index=\"vDEF\">124</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:11:\"pi_flexform\";N;}','','',0,'','',0,0,'','',0,0,''),(92,25,0,0,0,'',0,0,0,0,0,100,1427443461,1427443461,2,0,64,'table','Hover rows','','|Area A|Area B|Area C\r\n2007|50.000|35.000|62.400\r\n2008|52.500|39.700|61.500\r\n2009|54.000|41.000|62.000','0',0,8,'',0,0,'0',140,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,298,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"acctables_caption\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"acctables_summary\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"acctables_tfoot\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"acctables_headerpos\">\n                    <value index=\"vDEF\">top</value>\n                </field>\n                <field index=\"acctables_nostyles\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"acctables_tableclass\">\n                    <value index=\"vDEF\">table table-hover</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_parsing\">\n            <language index=\"lDEF\">\n                <field index=\"tableparsing_quote\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"tableparsing_delimiter\">\n                    <value index=\"vDEF\">124</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:11:\"pi_flexform\";N;}','','',0,'','',0,0,'','',0,0,''),(93,25,0,0,0,'',0,0,0,0,0,97,1427443461,1427443461,2,0,32,'table','Bordered table','','|Area A|Area B|Area C\r\n2007|50.000|35.000|62.400\r\n2008|52.500|39.700|61.500\r\n2009|54.000|41.000|62.000','0',0,8,'',0,0,'0',130,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,100,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"acctables_caption\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"acctables_summary\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"acctables_tfoot\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"acctables_headerpos\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"acctables_nostyles\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"acctables_tableclass\">\n                    <value index=\"vDEF\">table table-bordered</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_parsing\">\n            <language index=\"lDEF\">\n                <field index=\"tableparsing_quote\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"tableparsing_delimiter\">\n                    <value index=\"vDEF\">124</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:11:\"pi_flexform\";N;}','','',0,'','',0,0,'','',0,0,''),(94,25,0,0,0,'',0,0,0,0,0,97,1427443461,1427443461,2,0,16,'table','Striped rows','','|Area A|Area B|Area C\r\n2007|50.000|35.000|62.400\r\n2008|52.500|39.700|61.500\r\n2009|54.000|41.000|62.000','0',0,8,'',0,0,'0',120,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,101,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"acctables_caption\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"acctables_summary\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"acctables_tfoot\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"acctables_headerpos\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"acctables_nostyles\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"acctables_tableclass\">\n                    <value index=\"vDEF\">table table-striped</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_parsing\">\n            <language index=\"lDEF\">\n                <field index=\"tableparsing_quote\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"tableparsing_delimiter\">\n                    <value index=\"vDEF\">124</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:11:\"pi_flexform\";N;}','','',0,'','',0,0,'','',0,0,''),(95,25,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,8,'table','Basic example','','|Area A|Area B|Area C\r\n2007|50.000|35.000|62.400\r\n2008|52.500|39.700|61.500\r\n2009|54.000|41.000|62.000','0',0,8,'',0,0,'0',120,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,102,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"acctables_caption\">\n                    <value index=\"vDEF\">Caption</value>\n                </field>\n                <field index=\"acctables_summary\">\n                    <value index=\"vDEF\">Summary</value>\n                </field>\n                <field index=\"acctables_tfoot\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"acctables_headerpos\">\n                    <value index=\"vDEF\">top</value>\n                </field>\n                <field index=\"acctables_nostyles\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"acctables_tableclass\">\n                    <value index=\"vDEF\">table table-striped</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_parsing\">\n            <language index=\"lDEF\">\n                <field index=\"tableparsing_quote\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"tableparsing_delimiter\">\n                    <value index=\"vDEF\">124</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"lDEF\">\n            <language index=\"acctables_nostyles\">\n                <field index=\"vDEF\">1</field>\n            </language>\n            <language index=\"acctables_tableclass\">\n                <field index=\"vDEF\">table</field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:11:\"pi_flexform\";N;}','','',0,'','',0,0,'','',0,0,''),(96,25,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,4,'text','Tables','','<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor tellus vitae accumsan. Nulla aliquam tristique velit, at bibendum eros sagittis ut. Maecenas tincidunt neque ac augue convallis luctus. Quisque nulla arcu, euismod et neque fermentum, sollicitudin vestibulum dolor. In eget leo tincidunt, volutpat urna eu, suscipit odio. Quisque placerat porttitor iaculis. Cras non adipiscing ligula. Aenean egestas nisi eget nisi ultricies, non feugiat lectus blandit. Pellentesque non quam arcu.</p>','0',0,0,NULL,2,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,301,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(97,24,0,0,0,'',0,0,0,0,0,172,1427443461,1427443461,2,0,256,'shortcut','About these pages','','','0',0,0,NULL,1,0,'0',0,0,0,'23','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,176,NULL,'',0,'',0,'a:1:{s:7:\"records\";N;}','','',0,'','',0,0,'','',0,0,''),(98,24,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'text','Jumbotron','','Duis vitae ipsum et ante sollicitudin tincidunt a nec sem. Maecenas ultricies lacinia nunc at adipiscing? Nam ullamcorper commodo elit in euismod. Fusce nec varius tortor. Fusce justo diam, interdum quis egestas et, luctus a purus.','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',21,0,'',0,0,0,0,0,131,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(99,24,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,64,'text','Well','','Duis luctus, enim commodo auctor sodales, mi dui facilisis elit, a lobortis quam lacus nec velit. Nam pharetra, augue quis tristique consequat, arcu orci tincidunt dolor, et vehicula nulla risus vel nisi? Maecenas vel ligula lorem. Pellentesque ullamcorper dolor non justo faucibus eleifend. Sed nec sapien vel massa vulputate vehicula eget eu nisl. ','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',20,0,'',0,0,0,0,0,130,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(100,24,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,32,'text','Indent, 66/33%','','Proin rhoncus augue quis est eleifend consequat. Fusce varius vehicula feugiat. In quis ipsum neque. Sed venenatis risus diam. Praesent tincidunt lacinia pellentesque. Donec non justo eros, lacinia hendrerit est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas et urna sed lorem venenatis tempor quis vel eros? Proin pellentesque ultricies enim sed aliquet. ','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',12,0,'',0,0,0,0,0,129,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(101,24,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,16,'text','Indent, 33/66%','','Mauris magna nisl, dapibus dapibus faucibus ultrices, congue vehicula ligula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque ac quam sed odio blandit commodo! Vivamus dui urna, volutpat nec ultrices in, consectetur vitae sapien. Nulla facilisi.','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',11,0,'',0,0,0,0,0,128,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(102,24,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,8,'text','Indent','','Donec volutpat pulvinar enim tincidunt sagittis. Duis rutrum enim leo. Maecenas euismod congue blandit? Aliquam et auctor sapien. Phasellus ut pellentesque tellus. Sed ac libero vitae quam porttitor viverra. Nullam neque libero, luctus suscipit ultricies in, tincidunt ac justo?','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',10,0,'',0,0,0,0,0,127,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(103,24,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,4,'text','Ruler after','','Here the ruler is positioned after the element.','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',6,0,'',0,0,0,0,0,126,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(104,24,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,2,'text','Ruler before','','You can set a rulers before or after each content element.','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',5,0,'',0,0,0,0,0,125,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(105,24,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,1,'text','Content-specific Layouts','','<p class=\"lead\">Frames are centrally configured layouts for different content elements. Frames can be used, for example, to allow a content editor to apply a specific background image and/or color to specific content elements throughout the website.</p>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,189,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(106,23,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'shortcut','About these pages','','','0',0,0,NULL,1,0,'0',0,0,0,'23','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,172,NULL,'',0,'',0,'a:1:{s:7:\"records\";N;}','','',0,'','',0,0,'','',0,0,''),(107,23,0,0,0,'',0,0,0,0,0,135,1427443461,1427443461,2,0,128,'bullets','Inline List','','Morbi in sem quis\r\nPraesent dapibus\r\nPhasellus ultrices','0',0,0,'',0,0,'0',130,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,104,'','',0,'',0,'a:20:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(108,23,0,0,0,'',0,0,0,0,0,135,1427443461,1427443461,2,0,64,'bullets','Unstyled List','','Morbi in sem quis dui placerat ornare\r\nPraesent dapibus, neque id cursus faucibus\r\nPhasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus. Nam nulla quam, gravida non','0',0,0,'',0,0,'0',120,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,105,'','',0,'',0,'a:20:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(109,23,0,0,0,'',0,0,0,0,0,134,1427443461,1427443461,2,0,32,'bullets','Ordered List','','Morbi in sem quis dui placerat ornare\r\nPraesent dapibus, neque id cursus faucibus\r\nPhasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus. Nam nulla quam, gravida non','0',0,0,'',0,0,'0',110,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,106,'','',0,'',0,'a:20:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(110,23,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,16,'bullets','Unordered List','','Morbi in sem quis dui placerat ornare\r\nPraesent dapibus, neque id cursus faucibus\r\nPhasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus. Nam nulla quam, gravida non','0',0,0,'',0,0,'0',100,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,107,'','',0,'',0,'a:20:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(111,23,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,8,'text','Multiple Layouts for Standard Content Types','','<p class=\"lead\">Ordered and unordered lists are available in TYPO3&nbsp;as a standard content element.&nbsp;Users are able to create multiple&nbsp;predefined list layouts, which help to ensure site-wide visual consistency.</p>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,186,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(112,22,0,0,0,'',0,0,0,0,0,172,1427443461,1427443461,2,0,256,'shortcut','About these pages','','','0',0,0,NULL,1,0,'0',0,0,0,'23','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,174,NULL,'',0,'',0,'a:1:{s:7:\"records\";N;}','','',0,'','',0,0,'','',0,0,''),(113,22,0,0,0,'',0,0,0,0,0,111,1427443461,1427443461,2,0,128,'uploads','Download with preview, filesize and description','','','0',0,0,'',0,0,'2',2,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',1,'','',0,0,'',0,0,0,0,0,110,'','',0,'',0,'a:1:{s:5:\"media\";N;}','','',0,'','',0,0,'','',0,0,''),(114,22,0,0,0,'',0,0,0,0,0,111,1427443461,1427443461,2,0,64,'uploads','Download with icon, filesize and description','','','0',0,0,'',0,0,'1',1,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',1,'','',0,0,'',0,0,0,0,0,111,'','',0,'',0,'a:1:{s:5:\"media\";N;}','','',0,'','',0,0,'','',0,0,''),(115,22,0,0,0,'',0,0,0,0,0,109,1427443461,1427443461,2,0,32,'uploads','Download with icon and filesize','','','0',0,0,'',0,0,'1',1,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',1,'','',0,0,'',0,0,0,0,0,112,'','',0,'',0,'a:1:{s:5:\"media\";N;}','','',0,'','',0,0,'','',0,0,''),(116,22,0,0,0,'',0,0,0,0,0,109,1427443461,1427443461,2,0,16,'uploads','Download with icon, no filesize','','','0',0,0,'',0,0,'1',1,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,113,'','',0,'',0,'a:1:{s:5:\"media\";N;}','','',0,'','',0,0,'','',0,0,''),(117,22,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,8,'uploads','Download no icon, no filesize','','','0',0,0,'',0,0,'2',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,114,'','',0,'',0,'a:1:{s:5:\"media\";N;}','','',0,'','',0,0,'','',0,0,''),(118,22,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,4,'text','File Downloads','','<p class=\"lead\">Proin faucibus nisl posuere dui fringilla, et lobortis est dictum. Donec erat libero, auctor at ligula in, facilisis rhoncus nulla. Fusce tristique eget elit nec accumsan. Nulla tristique, orci tempor posuere imperdiet, quam ipsum fringilla enim, ac malesuada velit orci eget nisl.</p>','0',0,0,NULL,2,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,302,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(119,21,0,0,0,'',0,0,0,0,0,172,1427443461,1427443461,2,0,256,'shortcut','About these pages','','','0',0,0,NULL,1,0,'0',0,0,0,'23','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,175,NULL,'',0,'',0,'a:1:{s:7:\"records\";N;}','','',0,'','',0,0,'','',0,0,''),(120,21,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'mailform','Contactform','','prefix = tx_form\r\nconfirmation = \r\npostProcessor {\r\n	1 = mail\r\n	1 {\r\n		recipientEmail = \r\n		senderEmail = \r\n	}\r\n}\r\n10 = FIELDSET\r\n10 {\r\n	10 = TEXTLINE\r\n	10 {\r\n		name = name\r\n		label {\r\n			value = Name\r\n		}\r\n	}\r\n	20 = TEXTLINE\r\n	20 {\r\n		name = email\r\n		label {\r\n			value = E-Mail\r\n		}\r\n	}\r\n	30 = TEXTAREA\r\n	30 {\r\n		cols = 40\r\n		rows = 5\r\n		name = enquiry\r\n		label {\r\n			value = Your enquiry\r\n		}\r\n	}\r\n	40 = CHECKBOX\r\n	40 {\r\n		name = get-in-touch\r\n		value = yes\r\n		label {\r\n			value = Do you want us to get in touch?\r\n		}\r\n	}\r\n	50 = SUBMIT\r\n	50 {\r\n		name = submit\r\n		value = Send Feedback\r\n	}\r\n}\r\nrules {\r\n	1 = required\r\n	1 {\r\n		breakOnError = 0\r\n		showMessage = 1\r\n		message = *\r\n		error = This field is required\r\n		element = name\r\n	}\r\n	2 = required\r\n	2 {\r\n		breakOnError = 0\r\n		showMessage = 1\r\n		message = *\r\n		error = This field is required\r\n		element = email\r\n	}\r\n	3 = email\r\n	3 {\r\n		breakOnError = 0\r\n		showMessage = \r\n		message = (john.doe@domain.com)\r\n		error = This is not a valid email address\r\n		element = email\r\n	}\r\n	4 = required\r\n	4 {\r\n		breakOnError = 0\r\n		showMessage = 1\r\n		message = *\r\n		error = This field is required\r\n		element = enquiry\r\n	}\r\n}\r\n','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,253,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',0,'','',0,0,'','',0,0,''),(121,21,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,1,64,'login','Please login','','','0',0,0,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,109,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"showForgotPassword\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showPermaLogin\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showLogoutFormAfterLogin\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_redirect\">\n            <language index=\"lDEF\">\n                <field index=\"redirectMode\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectFirstMethod\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"redirectPageLogin\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectPageLoginError\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectPageLogout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectDisable\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_messages\">\n            <language index=\"lDEF\">\n                <field index=\"welcome_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"welcome_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"success_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"success_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"error_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"error_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"status_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"status_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"logout_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"logout_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"forgot_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"forgot_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"forgot_reset_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:11:\"pi_flexform\";N;}','','',0,'','',0,0,'','',0,0,''),(122,21,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,32,'text','Powerful Form Handling','','<p class=\"lead\">Setting up a contact or mail form is very easy. The layout of forms is handled centrally, which allows editors to focus on the content of the form.</p>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,188,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(123,20,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'text','','','<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; font-weight: bold;\">All the TYPO3 enthusiasts in the world: Keep up the great work!</span>','0',0,0,NULL,2,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'100','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,318,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(124,20,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'table','','','1997|The idea for TYPO3 is born\r\n2000|The TYPO3 community is born\r\n2005|The first TYPO3 conference is held\r\n2008|TYPO3 reaches a market share of close to 40% in central Europe\r\n2010|TYPO3 5.0 shakes up the CMS world\r\n2014|95% of the world\'s websites run on Open Source and 60% on TYPO3\r\n2017|Happy 20th Birthday TYPO3','0',0,0,NULL,2,0,'0',120,0,0,'','',0,0,0,'',20,20,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,317,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"acctables_nostyles\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"acctables_tableclass\">\n                    <value index=\"vDEF\">table table-striped</value>\n                </field>\n                <field index=\"acctables_caption\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"acctables_summary\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"acctables_tfoot\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"acctables_headerpos\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_parsing\">\n            <language index=\"lDEF\">\n                <field index=\"tableparsing_quote\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"tableparsing_delimiter\">\n                    <value index=\"vDEF\">124</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:1:{s:11:\"pi_flexform\";N;}','','',0,'','',0,0,'','',0,0,''),(125,20,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,64,'text','TYPO3 celebrates 20th anniversary','','<div>TYPO3 celebrates it\'s 20th anniversary. Having been one of the very first Content Management Systems on the market 20 years of market leadership is an achievement truly worth celebrating.</div>\r\n<div></div>\r\n<div>Let\'s take a minute to reflect on the 20 years passed:</div>','0',0,0,NULL,2,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,316,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(126,19,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'text','Goals and Objectives','','<div><ul><li><span style=\"line-height: 1.428571429;\">Fostering development of TYPO3;</span></li><li><span style=\"line-height: 1.428571429;\">Organisation of events for the purpose of information and education of its members;</span></li><li><span style=\"line-height: 1.428571429;\">Supporting the adaption of international software standards within TYPO3;</span></li><li><span style=\"line-height: 1.428571429;\">Education and certification to ensure quality of service;</span></li><li><span style=\"line-height: 1.428571429;\">Communication with its members and the general public, to spread and further knowledge and proficiency for the usage of the TYPO3 software, especially by virtue of it\'s project website;</span></li></ul></div>','0',0,0,NULL,2,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,315,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(127,19,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'text','The TYPO3 Association is founded','','<div>Months in the planning, on this very day the TYPO3 Association was founded by a group of long-time contributors headed by Kasper Skårhøj.</div>\r\n<div>Months in the planning, on this very day the TYPO3 Association was founded by a group of long-time contributors headed by Kasper Skårhøj. The Association is located in Switzerland and will act as a heart of the project by funding development of the system\'s core, providing certficiation and representing the project officially.</div>\r\n<div></div>','0',0,0,NULL,2,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',12,0,'',0,0,0,0,0,314,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(128,18,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'textpic','T3UXW09 - The first TYPO3 User eXperience Week','','<div>30 attendants for the T3UXW09 have arrived in rural Behringen (Germany) to work on TYPO3\'s usability for one whole week.</div>\r\n<div></div>\r\n<div><span style=\"line-height: 1.428571429;\">It is saturday the 14th of november. Almost everyone has arrived at the castle in Behringen at around 2-3 o\'clock in the afternoon. The castle is barrierfree, which means it is all adopted for disabled people. Although we are not working on accessibility I can safely assume most of the attendants support that. The castle itself is situated in a really nice rural environment. The air is really fresh. A welcome change for city dwellers. The whole castle belongs to the team this week. The network team, that rapidly volunteered, set up the whole wireless environment in a few hours. Punkt.de provided the switches they also use for the TYPO3 conferences. Joey brought a monster PC where he virtualised five servers. One for every team. Supportive tools like SVN, IRC and alike where all set up on this machine with the help of various people. Jens Hoffmann welcomed the attendants a little later in the afternoon and split up the available rooms among the attendants. After that the composition of the different teams was announced.</span></div>','1',0,8,NULL,2,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,313,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(129,17,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'textpic','TYPO3 - An idea is born','','<div>Kasper Skårhøj was contracted this week by a Danish company to build a content management solution for their corporate website.</div>\r\n<div></div>\r\n<div><span style=\"line-height: 1.428571429;\">Kasper Skårhøj was contracted today by a Danish company this week to build a content management solution for their corporate website. The term &quot;Content Management&quot; is still widely unknown. The idea of content management is a straight forward solution to an emerging problem for the young internet - as websites are going to grow and the complexity of them increase, the need for separation of design and content has become inevitable.</span></div>\r\n<div></div>\r\n<div>Over the next months many meetings will define the exact requirements for this new system, enabling the client to manage the content on their website independant from HTML coders.</div>\r\n<div></div>\r\n<div>Stay tuned on what will help with this experiment.</div>','1',0,18,NULL,2,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,312,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(130,16,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'menu','News','','','0',0,0,NULL,2,0,'0',0,0,0,'','16',0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','news','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,311,NULL,'',0,'',0,'a:1:{s:5:\"pages\";N;}','','0',0,'','',0,0,'','',0,0,''),(131,15,0,0,0,'',0,0,0,0,0,172,1427443461,1427443461,2,0,256,'shortcut','About these pages','','','0',0,0,NULL,1,0,'0',0,0,0,'23','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,180,NULL,'',0,'',0,'a:1:{s:7:\"records\";N;}','','',0,'','',0,0,'','',0,0,''),(132,15,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'menu','Section index (pagecontent w/Index checked)','','','0',0,0,'',0,0,'0',0,0,0,'','25',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','3','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,115,'','',0,'',0,'a:1:{s:5:\"pages\";N;}','','',0,'','',0,0,'','',0,0,''),(133,15,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,64,'menu','Sitemap','','','0',0,0,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','2','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,118,'','',0,'9',0,'a:1:{s:6:\"hidden\";N;}','','',0,'','',0,0,'','',0,0,''),(134,15,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,32,'menu','Related pages (based on keywords)','','','0',0,0,'',0,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','6','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,120,'','',0,'',0,'a:1:{s:6:\"hidden\";N;}','','',0,'','',0,0,'','',0,0,''),(135,15,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,16,'text','Dynamic Site Maps','','<p class=\"lead\">In addition to generating basic site maps based on the structure of the page tree, TYPO3 is able to build advanced site maps such as a key-word based site map of related pages.</p>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,199,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(136,13,0,0,0,'',0,0,0,0,0,3,1427443461,1427443461,2,0,256,'textpic','TYPO3 - The Enterprise CMS','','TYPO3 is a free, open source content management framework designed to simplify the creation of feature-rich websites that can be updated by nontechnical editors. It is written in PHP and is compatible with a number of popular databases, including MySQL. \r\n<h3>Feature-rich and Extensible Core</h3>\r\nTYPO3 stands out among other content management systems because of the impressive array of functionality that is incorporated into its core. This extensive core functionality allows users to quickly develop sophisticated sites with out-of-the-box TYPO3 installations. Moreover, TYPO3\'s well-documented extension-based architecture makes it possible for the system to grow to meet the unique needs of each individual or organization. During the course of the last ten years, tens of thousands of TYPO3 service providers and enthusiasts have created over 500,000 sites, including\r\n<ul><li>global, multi-language enterprise solutions</li><li>corporate web portals</li><li>community and government web portals </li><li>enterprise web applications</li><li>full-featured eCommerce sites</li><li>online brochure and catalog sites</li><li>small business sites</li><li>nonprofit web sites</li><li>personal and corporate weblogs</li></ul>\r\n<h3>Dedicated to Open Source</h3>\r\nTYPO3 is maintained by a nonprofit core development team and an active worldwide community of users. TYPO3 operates under the <LINK http://www.gnu.org/licenses/gpl.html - external-link-new-window>GPL license</link>.','1',125,18,'',1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'TYPO3 logo','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,135,'','',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',0,'','',0,0,'','',0,0,''),(137,13,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'text','TYPO3 History','','TYPO3 was conceived by Danish developer Kasper Skårhøj in 1997. The idea was to solve what had emerged as a problem for the young internet—as websites grew, the need to separate the management of design and content became apparent.<br /><br />By August 2000, the core components were distributed to a development community that extended the concept and functionality of TYPO3 into the robust, and richly featured CMS that it is today.<br /><br />TYPO3 now runs more than 500,000 websites worldwide and powers sites for many esteemed institutions, including Cisco Systems, General Electric, Mercedes-Benz, and Harvard University.','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,210,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(138,12,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'text','Commitment to Open Source','','TYPO3 was founded on the belief that true open source, community-oriented development can make tools that surpass proprietary solutions. It is free and open to everyone, yet powerful enough for mission-critical commercial use. TYPO3 is an ever-expanding open source project that draws its strength from the imagination and ingenuity of those who use it. You do not have to pay a licensing fee for TYPO3 and you never will—leading to significantly reduced total cost of ownership (TCO) in both the short and long-term.','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,247,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(139,12,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'textpic','From an Individual to a Vibrant Community','','In 1997, Kasper Skårhøj began developing TYPO3 from scratch. At the time, the term Content Management was still widely unheard of. Today there are many open source and proprietary CMS solutions on the market, but none come close to TYPO3 in terms of sheer functionality and maturity. After more than ten years of active, incremental development, TYPO3 is effectively feature-complete, making it an extremely compelling solution for web content management.','1',0,25,'',1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,'','','','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,246,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(140,12,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,64,'text','A Mature, Reliable CMS','','TYPO3 is a mature, stable, and secure platform that has been actively developed and improved for over ten years. Unlike many newer, less sophisticated CMS solutions, TYPO3 is a full-grown, enterprise CMS that has been widely adopted by companies of all sizes across the world, and is an established standard throughout many universities, governments and organizations. ','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,211,NULL,'',0,'',0,'a:20:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;}','','',0,'','',0,0,'','',0,0,''),(141,12,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,32,'text','Why \"TYPO3?\"','','In the late 1990s, after an evening of tireless development, Kasper Skårhøj—the creator of TYPO3—inadvertently entered a typo into the command line, instantly deleting over a week’s worth of work.\r\nAfter the initial shock at his mistake subsided, Kasper went back to work and eventually realized that the new code was significantly better than what he had lost.\r\nA typo, it seemed, had led him to build an even better product. Struck by this reminder that we can benefit from our mistakes, TYPO3 was born.','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,2,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'3','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,212,NULL,'',0,'',0,'a:20:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;}','','',0,'','',0,0,'','',0,0,''),(142,11,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'textpic','Community Events','','There are a number of recurring TYPO3 events and conferences. Each year, the TYPO3 Community organizes a snowboard tour &quot;T3Board&quot;&nbsp;in the mountains of central Europe, giving TYPO3 developers an opportunity to meet face-to-face. Furthermore, there is an annual &quot;Developer Days&quot; event that aims to give PHP developers a chance to collaborate and focus on the TYPO3 core.\r\nThere are annual conferences held in the US and in Europe with talks aimed at web marketers, site integrators and developers. Many regions also host active TYPO3 usergroups, which are invaluable sources of shared knowledge.','1',190,17,'Group photo at T3BOARD10<br />Photo by (c) <a href=\"http://www.flickr.com/photos/jocrau/4408947675/in/set-72157623535402924/\" target=\"_blank\">Jochen Rau</a>',1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',1,0,0,0,NULL,NULL,'http://www.flickr.com/photos/jocrau/4408947675/in/set-72157623535402924/','2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,214,NULL,'',0,'',0,'a:1:{s:11:\"longdescURL\";N;}','','',0,'','',0,0,'','',0,0,''),(143,11,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'text','TYPO3: Inspiring People to Share','','The real driving force behind TYPO3’s development is its expanding, vibrant community of nearly 100,000 members. Over the past decade, TYPO3 has been installed more than 500,000 times, and these numbers are growing daily. This truly international&nbsp;community is composed of&nbsp;individuals and consultancies working with TYPO3 in countries across the world.','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,213,NULL,'',0,'',0,'a:19:{s:5:\"CType\";N;s:16:\"sys_language_uid\";N;s:6:\"colPos\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:12:\"sectionIndex\";N;s:6:\"hidden\";N;s:6:\"header\";N;s:15:\"header_position\";N;s:13:\"header_layout\";N;s:11:\"header_link\";N;s:4:\"date\";N;s:9:\"linkToTop\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;}','','',0,'','',0,0,'','',0,0,''),(144,11,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,64,'text','Join the Association','','TYPO3 Association membership is open to anyone who is willing to endorse the goals and&nbsp; objectives of the TYPO3 Association.\r\nIndividuals and companies who use TYPO3 on a regular basis are encouraged to contribute by becoming a supporting member. Your support will help to ensure that TYPO3 continues to be the leading open source CMS solution.\r\n<LINK http://shop.typo3.org/association/membership/apply-for-membership/ref/assoc/ - external-link-new-window>Join the TYPO3 Association Today</link>.','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,2,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'3','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,215,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',0,'','',0,0,'','',0,0,''),(145,9,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'text','','','<h3>Core Team &amp; Active Contributors</h3>\r\nDevelopment and maintenance of TYPO3—and all of its built-in modules and features—is led by a handful of people, called the CMS team. A group of 40 volunteers and developers actively contribute to the TYPO3 core code base and develop the next versions of TYPO3.\r\n<h3>Extension Developers</h3>\r\nThe <LINK http://typo3.org/extensions/repository/ - external-link-new-window \"Opens external link in new window\">6,000+ extensions</link> of TYPO3 are created by savvy, enthusiastic users (like you!), and can be found in the vast <LINK http://typo3.org/extensions/repository/ - external-link-new-window \"Opens external link in new window\">TYPO3 Extension Repository</link> (TER). Here you will find everything from simple site templates to advanced plug-ins as well as user-generated documentation and tutorials.\r\n<h3>Finding Help</h3>\r\n<LINK http://typo3.org/support/mailing-lists/ - external-link-new-window \"Opens external link in new window\">Active mailing lists</link> are the heart of the TYPO3 open source community. Here you can ask questions, and seek out users who are engaged in similar projects or interests. There are hundreds of subscribers to the user list and most questions generate a helpful, timely response. Subscribe today and start meeting other members of the TYPO3 community.\r\nHelp is also available through Internet Relay Chat on the <LINK http://typo3.org/support/irc-chat/ - external-link-new-window \"Opens external link in new window\">TYPO3 IRC Channel</link>. If you want to join, log in to your&nbsp; favorite IRC client and direct it to irc.freenode.net, channel #typo3.\r\nFor more help in developing your project with TYPO3, consider also the services of one of many <LINK http://typo3.com/Consultancies.1248.0.html?&L=1 - external-link-new-window \"Opens external link in new window\">approved consultancies</link> that offer professional help with TYPO3 projects.','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,223,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',0,'','',0,0,'','',0,0,''),(146,9,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'text','TYPO3: A True Open Source Community','','A widespread, international community of users and developers contributes to the ongoing evolution and success of TYPO3. Get acquainted with the latest enhancements, view tutorials, screen shots, and sample sites at the hub of the TYPO3 community—<LINK http://typo3.org - external-link-new-window \"Opens external link in new window\">typo3.org</link>. Follow some of the links below to connect with like-minded users and developers.','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,222,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',0,'','',0,0,'','',0,0,''),(147,8,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'text','Need Help? Tap into the TYPO3 Consultancy Network','','Many of TYPO3\'s most knowledgeable contributors are the web developers and consultants around the world who use it everyday. These <LINK http://typo3.com/Consultancies.1248.0.html - external-link-new-window>certified consultants</link> are among the most active members of the TYPO3 community and offer proven professional services—whether you simply need help with hosting or a complete development strategy for building a new website.','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,225,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',0,'','',0,0,'','',0,0,''),(148,8,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'shortcut','','','','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,2,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,226,NULL,'',0,'',0,'a:1:{s:7:\"records\";N;}','','',0,'','',0,0,'','',0,0,''),(149,7,0,0,0,'',0,0,0,0,0,226,1427443461,1427443461,2,0,256,'shortcut','Pick Up a Book!','','','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,2,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,229,NULL,'',0,'',0,'a:1:{s:7:\"records\";N;}','','',0,'','',0,0,'','',0,0,''),(150,7,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'text','','','<h3>TYPO3 Wiki</h3>\r\nFind additional documentation in the <LINK http://wiki.typo3.org/index.php/Main_Page - external-link-new-window>TYPO3 Wiki</link>, which provides how-to guides conveniently classified for different types of TYPO3 users.\r\n<ul><li><LINK http://wiki.typo3.org/index.php/Overview_User_Manuals - external-link-new-window>Editors</link> can find documents on how to handle and manage their content.</li><li><LINK http://wiki.typo3.org/index.php/Overview_Administrator_Manuals - external-link-new-window>Administrators</link> can find documents on how to manage security, users, and fine-tune performance.</li><li><LINK http://wiki.typo3.org/index.php/Overview_Developer_Manuals - external-link-new-window>Developers</link> can find how-to guides to get started in creating their own TYPO3 extensions.</li></ul>\r\n<h3>TYPO3 API Documentation</h3>\r\nThe TYPO3 source code contains abundant internal documentation, which will allow developers to understand many functions and features just by browsing through the various classes and methods. Because TYPO3 uses JavaDoc style documentation, it is possible to automatically create a complete documentation of the TYPO3 core.<br /><br />Additionally, the <LINK http://typo3.org/documentation/api/ - external-link-new-window>TYPO3 Core APIs</link> manual from the Documentation Library describes important components of the API, and gives many examples how to use it.','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,228,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',0,'','',0,0,'','',0,0,''),(151,7,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,64,'text','Extensive Documentation','','As a global, user-supported project, documentation for TYPO3&nbsp;exists in many locations (and, thankfully, in many different languages). For the answer to most questions look first to the central <LINK http://typo3.org/documentation/document-library/ - external-link-new-window \"Opens external link in new window\">TYPO3 Document Library</link> where you will find several useful tutorials, and guides to installation, configuration, and getting started with TYPO3.\r\nThe Getting Started tutorial is based on the Introduction Package and is the number one resource to get you on your way with TYPO3.  The Getting Started tutorial\'s permanent URL is: <LINK http://typo3.org/documentation/document-library/tutorials/doc_tut_quickstart/current/ - external>http://typo3.org/documentation/document-library/tutorials/doc_tut_quickstart/current/</link>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,227,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',0,'','',0,0,'','',0,0,''),(152,6,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'text','Goals and Objectives','','The Association\'s overall goal is to promote TYPO3 and ensure the ongoing success and growth of the project. Specifically, the goals of the Association include:\r\n<ul><li>supporting ongoing development of the TYPO3 core</li><li>organizing and sponsoring TYPO3-related events</li><li>education and certification, to ensure quality service</li><li>promoting the use and adoption of TYPO3 </li></ul>\r\nThe TYPO3 Association depends heavily on the contribution of the users and developers who wish to support the project. <LINK http://typo3.org/donate/online-donation/ - external-link-new-window>Make a donation</link> to the TYPO3 Association to help them continue their work!','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'3','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,231,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',0,'','',0,0,'','',0,0,''),(153,6,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'textpic','Backed by the TYPO3 Association','','In November 2004 a group of longstanding contributors from the TYPO3 community, including Kasper Skårhøj, founded a non-profit organization called the TYPO3 Association. Since then, the Association has continued to drive TYPO3 development and foster community.','0',250,18,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,230,NULL,'',0,'',0,'a:31:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:5:\"image\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:17:\"image_compression\";N;s:13:\"image_effects\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:12:\"image_noRows\";N;s:21:\"imagecaption_position\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(154,6,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,64,'shortcut','','','','0',0,0,NULL,1,0,'0',0,0,0,'144','',0,0,2,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,232,NULL,'',0,'',0,'a:1:{s:7:\"records\";N;}','','',0,'','',0,0,'','',0,0,''),(155,4,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'text','Thank you for your feedback','','<p class=\"lead\">An email has been sent, we appreciate your feedback.</p>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,239,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(156,3,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'bootstrap_package_panel','About the Introduction Package','','This TYPO3 Introduction Package&nbsp;is maintained at <LINK http://forge.typo3.org/projects/extension-introduction - external-link-new-window>forge.typo3.org</link>, which is a repository and collaborative tool used by core and community TYPO3 developers.\r\nIf you have any issues with the&nbsp;Introduction Package&nbsp;or suggestions for improvements please don’t hesitate to get in touch with us.','0',0,0,NULL,1,0,'0',130,0,0,'','',0,0,0,'',50,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,205,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',0,'','',0,0,'','',0,0,''),(157,3,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'mailform','Contact us','','prefix = tx_form\r\nconfirmation = 1\r\npostProcessor {\r\n	1 = mail\r\n	1 {\r\n		recipientEmail = \r\n		senderEmail = \r\n	}\r\n}\r\n10 = FIELDSET\r\n10 {\r\n	10 = TEXTLINE\r\n	10 {\r\n		name = name\r\n		value = Enter your name here\r\n		label {\r\n			value = Name\r\n		}\r\n	}\r\n	20 = TEXTLINE\r\n	20 {\r\n		name = email\r\n		label {\r\n			value = E-Mail\r\n		}\r\n	}\r\n	30 = TEXTAREA\r\n	30 {\r\n		cols = 40\r\n		rows = 5\r\n		name = enquiry\r\n		label {\r\n			value = Your enquiry\r\n		}\r\n	}\r\n	40 = SUBMIT\r\n	40 {\r\n		name = submit\r\n		value = Send Feedback\r\n	}\r\n}\r\nrules {\r\n	1 = required\r\n	1 {\r\n		breakOnError = 0\r\n		showMessage = 1\r\n		message = *\r\n		error = This field is required\r\n		element = name\r\n	}\r\n	2 = required\r\n	2 {\r\n		breakOnError = 0\r\n		showMessage = 1\r\n		message = *\r\n		error = This field is required\r\n		element = email\r\n	}\r\n	3 = email\r\n	3 {\r\n		breakOnError = 0\r\n		showMessage = \r\n		message = (john.doe@domain.com)\r\n		error = This is not a valid email address\r\n		element = email\r\n	}\r\n	4 = required\r\n	4 {\r\n		breakOnError = 0\r\n		showMessage = 1\r\n		message = *\r\n		error = This field is required\r\n		element = enquiry\r\n	}\r\n}\r\n','0',0,0,NULL,1,0,'0',0,0,0,'','4',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,204,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',0,'','',0,0,'','',0,0,''),(158,3,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,64,'text','You Make TYPO3 Better!','','<p class=\"lead\">TYPO3 has always been about its users and about inspiring people to share. Share your experiences with us. Send us a note. Let us know how we can improve TYPO3 or, even better, let us know how you think you can improve TYPO3. We’re all ears!</p>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,236,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(159,2,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'menu','Sitemap','',NULL,'0',0,0,NULL,1,0,'0',0,0,0,'','1',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'2','2','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,208,NULL,'',0,'',0,'a:1:{s:5:\"pages\";N;}','','',0,'','',0,0,'','',0,0,''),(160,2,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'text','Page not found','','<p class=\"lead\"><span id=\"result_box\">The page you were looking for cannot be found. </span>You may have followed a bad link or mis-typed an URL<span id=\"result_box\">. </span>Possibly the page has been moved, discarded or is from the past. Our apologies.<br /><br /></p>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,207,NULL,'',0,'',0,'a:21:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(161,2,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,64,'text','What to do','','<p class=\"csc-frame-frame1\">The information might still be available.<br />You can try to look for  the information in the sitemap at this page. <br /><br />Also you can  try the <LINK 1 - internal-link \"Opens internal link in current window\">search</link>.</p>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,209,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',0,'','',0,0,'','',0,0,''),(162,1,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,256,'text','Powered by','','<ul class=\"list-unstyled\"><li><LINK http://typo3.org/ - - \"TYPO3 Open Source CMS\"><strong>TYPO3</strong> Enterprise Open Source CMS</link></li></ul>\r\n<h3>Donate</h3>\r\n<ul class=\"list-unstyled\"><li><LINK http://typo3.org/donate/online-donation/ - - \"TYPO3.org\">TYPO3.org</link></li></ul>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,11,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'3','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,194,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',0,'','',0,0,'','',0,0,''),(163,1,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,128,'textpic','TYPO3 in social networks','','<ul class=\"list-unstyled\"> <li><LINK http://twitter.com/typo3/ - - \"Link to Twitter\">Twitter</link></li> <li><LINK http://www.facebook.com/typo3/ - - \"Link to Facebook\">Facebook</link></li> <li><LINK http://www.slideshare.net/search/slideshow?q=typo3 - - \"Link to Slideshare\">SlideShare</link></li> <li><LINK http://www.linkedin.com/groups?gid=70999 - - \"Link to LinkedIn\">LinkedIn</link></li> <li><LINK http://www.youtube.com/user/typo3 - - \"Link to Youtube\">Youtube</link></li> <li><LINK https://plus.google.com/+typo3/ - - \"Link to Google+\">Google+</link></li> </ul>','0',0,2,'',3,0,'0',0,0,0,'','',0,0,12,'',0,0,'','','','http://twitter.com/typo3/\nhttp://www.facebook.com/typo3/\nhttp://www.slideshare.net/search/slideshow?q=typo3\nhttp://www.linkedin.com/groups?gid=70999\nhttp://vimeo.com/typo3/',0,0,0,1,'','','','3','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,195,NULL,'',0,'',0,'a:2:{s:8:\"bodytext\";N;s:10:\"image_link\";N;}','','',0,'','',0,0,'','',0,0,''),(164,1,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,64,'text','Related Links','','<ul class=\"list-unstyled\"><li><LINK http://typo3.org/documentation/document-library/ - external-link-new-window \"TYPO3 Documentation\">TYPO3 Documentation</link></li><li><LINK http://typo3.org/documentation/ - external-link-new-window \"TYPO3 Books\">TYPO3 Books</link></li><li><LINK http://typo3.org/support/mailing-lists/ - external-link-new-window \"TYPO3 mailing lists\">TYPO3 Mailing Lists</link></li><li><LINK http://typo3.org/community/typo3-user-groups/ - external-link-new-window \"TYPO3 User groups\">TYPO3 Usergroups</link></li><li><LINK http://typo3.org/community/events/ - external-link-new-window \"TYPO3 Events\">TYPO3 Events</link></li><li><LINK http://wiki.typo3.org/ - external-link-new-window \"TYPO3 Wiki\">TYPO3 Wiki</link></li></ul>','0',0,0,NULL,1,0,'0',0,0,0,'','',0,0,10,'',0,0,'','','','',0,0,0,0,NULL,NULL,NULL,'3','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,25,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',0,'','',0,0,'','',0,0,''),(165,1,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,32,'bootstrap_package_texticon','Test the CMS','center','<p class=\"text-center lead\">Explore TYPO3 CMS backend and the limitless possibilities of TYPO3 CMS by using one of the predefined users with different levels of access.</p>\r\n<p class=\"text-center\"><LINK http://###BACKEND_URL###/ - btn btn-primary \"Opens external link in new window\">Log into TYPO3</link></p>','0',0,0,NULL,2,0,'0',0,0,0,'','',0,0,22,'',30,30,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,303,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',0,'','',0,0,'','',0,0,''),(166,1,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,16,'bootstrap_package_texticon','Example Pages','center','<p class=\"text-center lead\">To help get you started with TYPO3 CMS, we’ve included usage examples of the standard content elements that have made TYPO3 CMS so popular.</p>\r\n<p class=\"text-center\"><LINK 14 - btn btn-primary \"Opens internal link in current window\">Examples</link></p>','0',0,0,NULL,2,0,'0',0,0,0,'','',0,0,21,'',30,30,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,304,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',0,'','',0,0,'','',0,0,''),(167,1,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,8,'bootstrap_package_texticon','Start browsing','center','<p class=\"text-center lead\">Grab a cup of coffee and start browsing to learn why TYPO3 CMS is the most powerful open source content management system.</p>\r\n<p class=\"text-center\"><LINK 35 - btn btn-primary \"Opens internal link in current window\">Features</link> <LINK 34 - btn btn-primary \"Opens internal link in current window\">Customizing</link></p>','0',0,0,NULL,2,0,'0',0,0,0,'','',0,0,20,'',30,30,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,305,NULL,'',0,'',0,'a:1:{s:8:\"bodytext\";N;}','','',0,'','',0,0,'','',0,0,''),(168,1,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,4,'textpic','Make it your own','','<p class=\"lead\">This distribution is developed to help you getting an easy entry into TYPO3 CMS. It can be used as an example to play around or to kickstart your own projects.</p>\r\n<span style=\"font-weight: bold;\">Included features of the Introduction Package</span>\r\n<ul><li><span style=\"line-height: 1.428571429;\">TYPO3 CMS custom theme for Twitter Bootstrap</span></li><li>Customize the theme via LESS editor backend module</li><li><span style=\"line-height: 1.428571429;\">All Content Elements mapped to fit Twitter Bootstrap</span></li><li>Example additional content elements for carousel and accordion</li><li><span style=\"line-height: 1.428571429;\">All settings editable via the TypoScript constant editor</span></li><li>Responsive images enabled</li></ul>','1',0,25,NULL,1,0,'0',0,0,0,'','',0,0,0,'',30,0,'','','',NULL,0,1,0,0,NULL,NULL,NULL,'2','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,307,NULL,'',0,'',0,'a:1:{s:5:\"image\";N;}','','',0,'','',0,0,'','',0,0,''),(169,1,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,2,'div','Divider','',NULL,'0',0,0,NULL,2,0,'0',0,0,0,'','',0,0,0,'',0,0,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'0','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,308,NULL,'',0,'',0,'a:15:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,''),(170,1,0,0,0,'',0,0,0,0,0,0,1427443461,1427443461,2,0,1,'bootstrap_package_carousel','Startpage Teaser','',NULL,'0',0,0,NULL,2,0,'0',100,0,0,'','',0,0,3,'',0,20,'','','',NULL,0,0,0,0,NULL,NULL,NULL,'100','0','',0,0,0,0,'',1,0,'',0,'','',0,0,'',0,0,0,0,0,322,NULL,'',0,'',0,'a:19:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:9:\"subheader\";N;s:13:\"header_layout\";N;s:11:\"header_link\";N;s:33:\"tx_bootstrappackage_carousel_item\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:10:\"categories\";N;}','','',0,'','',0,0,'','',0,0,'');
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_accordion_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_accordion_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_accordion_item` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tt_content` int(11) unsigned DEFAULT '0',
  `header` varchar(255) NOT NULL DEFAULT '',
  `bodytext` text NOT NULL,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_accordion_item`
--

LOCK TABLES `tx_bootstrappackage_accordion_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_accordion_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_accordion_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_carousel_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_carousel_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_carousel_item` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tt_content` int(11) unsigned DEFAULT '0',
  `item_type` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `bodytext` text NOT NULL,
  `image` int(11) unsigned DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `text_color` varchar(255) NOT NULL DEFAULT '',
  `background_color` varchar(255) NOT NULL DEFAULT '',
  `background_image` int(11) unsigned DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_carousel_item`
--

LOCK TABLES `tx_bootstrappackage_carousel_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_carousel_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_carousel_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) NOT NULL DEFAULT '',
  `repository` int(11) unsigned NOT NULL DEFAULT '1',
  `version` varchar(10) NOT NULL DEFAULT '',
  `alldownloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext,
  `state` int(4) NOT NULL DEFAULT '0',
  `review_state` int(4) NOT NULL DEFAULT '0',
  `category` int(4) NOT NULL DEFAULT '0',
  `last_updated` int(11) unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext,
  `author_name` varchar(100) NOT NULL DEFAULT '',
  `author_email` varchar(100) NOT NULL DEFAULT '',
  `ownerusername` varchar(50) NOT NULL DEFAULT '',
  `md5hash` varchar(35) NOT NULL DEFAULT '',
  `update_comment` mediumtext,
  `authorcompany` varchar(100) NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT '0',
  `current_version` int(3) NOT NULL DEFAULT '0',
  `lastreviewedversion` int(3) NOT NULL DEFAULT '0',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`),
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext,
  `wsdl_url` varchar(100) NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) NOT NULL DEFAULT '',
  `last_update` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_count` int(11) NOT NULL DEFAULT '0',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,0,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','http://typo3.org/wsdl/tx_ter_wsdl.php','http://repositories.typo3.org/mirrors.xml.gz',1346191200,0,'');
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `public` tinyint(3) NOT NULL DEFAULT '0',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `preset_data` blob,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_chashcache`
--

DROP TABLE IF EXISTS `tx_realurl_chashcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_chashcache` (
  `spurl_hash` char(32) NOT NULL DEFAULT '',
  `chash_string` varchar(32) NOT NULL DEFAULT '',
  `spurl_string` text,
  PRIMARY KEY (`spurl_hash`),
  KEY `chash_string` (`chash_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_chashcache`
--

LOCK TABLES `tx_realurl_chashcache` WRITE;
/*!40000 ALTER TABLE `tx_realurl_chashcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_chashcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_errorlog`
--

DROP TABLE IF EXISTS `tx_realurl_errorlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_errorlog` (
  `url_hash` int(11) NOT NULL DEFAULT '0',
  `url` text NOT NULL,
  `error` text NOT NULL,
  `last_referer` text NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0',
  `cr_date` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_hash`,`rootpage_id`),
  KEY `counter` (`counter`,`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_errorlog`
--

LOCK TABLES `tx_realurl_errorlog` WRITE;
/*!40000 ALTER TABLE `tx_realurl_errorlog` DISABLE KEYS */;
INSERT INTO `tx_realurl_errorlog` VALUES (145701492,'favicon.ico','File \"favicon.ico\" was not found (2)!','',2,1427697262,1427697262,1);
/*!40000 ALTER TABLE `tx_realurl_errorlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_pathcache`
--

DROP TABLE IF EXISTS `tx_realurl_pathcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_pathcache` (
  `cache_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `mpvar` tinytext NOT NULL,
  `pagepath` text NOT NULL,
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cache_id`),
  KEY `pathq1` (`rootpage_id`,`pagepath`(32),`expire`),
  KEY `pathq2` (`page_id`,`language_id`,`rootpage_id`,`expire`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_pathcache`
--

LOCK TABLES `tx_realurl_pathcache` WRITE;
/*!40000 ALTER TABLE `tx_realurl_pathcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_pathcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_redirects`
--

DROP TABLE IF EXISTS `tx_realurl_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_redirects` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `url_hash` int(11) NOT NULL DEFAULT '0',
  `url` text NOT NULL,
  `destination` text NOT NULL,
  `last_referer` text NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `has_moved` int(11) NOT NULL DEFAULT '0',
  `domain_limit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `sel01` (`url_hash`,`domain_limit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_redirects`
--

LOCK TABLES `tx_realurl_redirects` WRITE;
/*!40000 ALTER TABLE `tx_realurl_redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_uniqalias`
--

DROP TABLE IF EXISTS `tx_realurl_uniqalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_uniqalias` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `field_alias` varchar(255) NOT NULL DEFAULT '',
  `field_id` varchar(60) NOT NULL DEFAULT '',
  `value_alias` varchar(255) NOT NULL DEFAULT '',
  `value_id` int(11) NOT NULL DEFAULT '0',
  `lang` int(11) NOT NULL DEFAULT '0',
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `tablename` (`tablename`),
  KEY `bk_realurl01` (`field_alias`(20),`field_id`,`value_id`,`lang`,`expire`),
  KEY `bk_realurl02` (`tablename`(32),`field_alias`(20),`field_id`,`value_alias`(20),`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_uniqalias`
--

LOCK TABLES `tx_realurl_uniqalias` WRITE;
/*!40000 ALTER TABLE `tx_realurl_uniqalias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_uniqalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_urldecodecache`
--

DROP TABLE IF EXISTS `tx_realurl_urldecodecache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_urldecodecache` (
  `url_hash` char(32) NOT NULL DEFAULT '',
  `spurl` tinytext NOT NULL,
  `content` blob NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_hash`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_urldecodecache`
--

LOCK TABLES `tx_realurl_urldecodecache` WRITE;
/*!40000 ALTER TABLE `tx_realurl_urldecodecache` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_urldecodecache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_urlencodecache`
--

DROP TABLE IF EXISTS `tx_realurl_urlencodecache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_urlencodecache` (
  `url_hash` char(32) NOT NULL DEFAULT '',
  `origparams` tinytext NOT NULL,
  `internalExtras` tinytext NOT NULL,
  `content` text NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_hash`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_urlencodecache`
--

LOCK TABLES `tx_realurl_urlencodecache` WRITE;
/*!40000 ALTER TABLE `tx_realurl_urlencodecache` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_urlencodecache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rsaauth_keys`
--

DROP TABLE IF EXISTS `tx_rsaauth_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rsaauth_keys` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `key_value` text,
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `crdate` (`crdate`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rsaauth_keys`
--

LOCK TABLES `tx_rsaauth_keys` WRITE;
/*!40000 ALTER TABLE `tx_rsaauth_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rsaauth_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rtehtmlarea_acronym`
--

DROP TABLE IF EXISTS `tx_rtehtmlarea_acronym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rtehtmlarea_acronym` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `term` varchar(255) NOT NULL DEFAULT '',
  `acronym` varchar(255) NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rtehtmlarea_acronym`
--

LOCK TABLES `tx_rtehtmlarea_acronym` WRITE;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task`
--

DROP TABLE IF EXISTS `tx_scheduler_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `disable` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `nextexecution` int(11) unsigned NOT NULL DEFAULT '0',
  `lastexecution_time` int(11) unsigned NOT NULL DEFAULT '0',
  `lastexecution_failure` text NOT NULL,
  `lastexecution_context` char(3) NOT NULL DEFAULT '',
  `serialized_task_object` blob,
  `serialized_executions` blob,
  `task_group` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_nextexecution` (`nextexecution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task`
--

LOCK TABLES `tx_scheduler_task` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task_group`
--

DROP TABLE IF EXISTS `tx_scheduler_task_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task_group` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `groupName` varchar(80) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `uuid` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task_group`
--

LOCK TABLES `tx_scheduler_task_group` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-30  6:39:07
