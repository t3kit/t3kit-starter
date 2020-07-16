-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: dbt3kit10.t3.localhost_db    Database: t3kit10
-- ------------------------------------------------------
-- Server version	10.3.21-MariaDB-1:10.3.21+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_dashboards`
--

DROP TABLE IF EXISTS `be_dashboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_dashboards` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `identifier` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `widgets` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_dashboards`
--

LOCK TABLES `be_dashboards` WRITE;
/*!40000 ALTER TABLE `be_dashboards` DISABLE KEYS */;
INSERT INTO `be_dashboards` VALUES (1,0,1594827748,1594827748,1,0,0,0,0,'2acbeb4f771d030c6c0c11d600e1c3f1812e5071','My dashboard','{\"fd6603e2a51a3ed2cd16cdd752dd2aee08caef2a\":{\"identifier\":\"t3information\"},\"8c605be5281eefb85fa930d7885e504daa313d45\":{\"identifier\":\"t3news\"},\"4f4e7d7ee43a004c9e53c69905be3f1efbd58427\":{\"identifier\":\"docGettingStarted\"}}');
/*!40000 ALTER TABLE `be_dashboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `non_exclude_fields` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explicit_allowdeny` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allowed_languages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_mountpoints` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pagetypes_select` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tables_select` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tables_modify` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groupMods` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `availableWidgets` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_mountpoints` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `TSconfig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subgroup` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_perms` smallint(6) NOT NULL DEFAULT 1,
  `category_perms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` longblob DEFAULT NULL,
  `ses_backuserid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `avatar` int(10) unsigned NOT NULL DEFAULT 0,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT 0,
  `usergroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` smallint(5) unsigned NOT NULL DEFAULT 0,
  `realName` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allowed_languages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumblob DEFAULT NULL,
  `file_mountpoints` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_perms` smallint(6) NOT NULL DEFAULT 1,
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `disableIPlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `TSconfig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT 0,
  `createdByAction` int(11) NOT NULL DEFAULT 0,
  `usergroup_cached_list` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `category_perms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_reset_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1594827723,1594827723,0,0,0,0,0,NULL,'admin',0,'$argon2i$v=19$m=65536,t=16,p=1$WnpIcGkvTE50ejNacjJLcA$zDVvBSSAdjGQKg05rOY2/ODEMUBbzQ4ZeGXSs5R0New',1,'','','',NULL,0,'',NULL,'','a:14:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:3:{s:28:\"dashboard/current_dashboard/\";s:40:\"2acbeb4f771d030c6c0c11d600e1c3f1812e5071\";s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:12:\"system_dbint\";a:3:{s:8:\"function\";s:8:\"refindex\";s:6:\"search\";s:3:\"raw\";s:22:\"search_query_makeQuery\";s:3:\"all\";}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1594827744;s:15:\"moduleSessionID\";a:3:{s:28:\"dashboard/current_dashboard/\";s:32:\"ebdd2c16d77d18eafd299fe6790dfbf6\";s:10:\"web_layout\";s:32:\"ebdd2c16d77d18eafd299fe6790dfbf6\";s:12:\"system_dbint\";s:32:\"ebdd2c16d77d18eafd299fe6790dfbf6\";}s:7:\"reports\";a:1:{s:9:\"selection\";a:2:{s:9:\"extension\";s:2:\"sv\";s:6:\"report\";s:8:\"services\";}}}',NULL,NULL,1,'',0,NULL,1594830678,0,NULL,0,NULL,'');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_adminpanel_requestcache`
--

DROP TABLE IF EXISTS `cache_adminpanel_requestcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_adminpanel_requestcache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_adminpanel_requestcache`
--

LOCK TABLES `cache_adminpanel_requestcache` WRITE;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_adminpanel_requestcache_tags`
--

DROP TABLE IF EXISTS `cache_adminpanel_requestcache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_adminpanel_requestcache_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_adminpanel_requestcache_tags`
--

LOCK TABLES `cache_adminpanel_requestcache_tags` WRITE;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_hash`
--

DROP TABLE IF EXISTS `cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_hash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_hash`
--

LOCK TABLES `cache_hash` WRITE;
/*!40000 ALTER TABLE `cache_hash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_hash_tags`
--

DROP TABLE IF EXISTS `cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_hash_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_hash_tags`
--

LOCK TABLES `cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cache_hash_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_imagesizes`
--

DROP TABLE IF EXISTS `cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_imagesizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_imagesizes`
--

LOCK TABLES `cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_imagesizes_tags`
--

DROP TABLE IF EXISTS `cache_imagesizes_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_imagesizes_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_imagesizes_tags`
--

LOCK TABLES `cache_imagesizes_tags` WRITE;
/*!40000 ALTER TABLE `cache_imagesizes_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_imagesizes_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pages`
--

DROP TABLE IF EXISTS `cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pages`
--

LOCK TABLES `cache_pages` WRITE;
/*!40000 ALTER TABLE `cache_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pages_tags`
--

DROP TABLE IF EXISTS `cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pages_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pages_tags`
--

LOCK TABLES `cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cache_pages_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pagesection`
--

DROP TABLE IF EXISTS `cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pagesection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pagesection`
--

LOCK TABLES `cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cache_pagesection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pagesection_tags`
--

DROP TABLE IF EXISTS `cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pagesection_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pagesection_tags`
--

LOCK TABLES `cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cache_pagesection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_rootline`
--

DROP TABLE IF EXISTS `cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_rootline` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rootline`
--

LOCK TABLES `cache_rootline` WRITE;
/*!40000 ALTER TABLE `cache_rootline` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_rootline_tags`
--

DROP TABLE IF EXISTS `cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_rootline_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rootline_tags`
--

LOCK TABLES `cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cache_rootline_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT 0,
  `treelist` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tx_extbase_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subgroup` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TSconfig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` mediumblob DEFAULT NULL,
  `ses_permanent` smallint(5) unsigned NOT NULL DEFAULT 0,
  `ses_anonymous` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tx_extbase_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `usergroup` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `telephone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uc` blob DEFAULT NULL,
  `title` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TSconfig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT 0,
  `is_online` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`(100)),
  KEY `username` (`username`(100)),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doktype` int(10) unsigned NOT NULL DEFAULT 0,
  `TSconfig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_siteroot` smallint(6) NOT NULL DEFAULT 0,
  `php_tree_stop` smallint(6) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shortcut` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `target` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT 0,
  `cache_tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT 0,
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT 0,
  `abstract` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT 0,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT 0,
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT 0,
  `l18n_cfg` smallint(6) NOT NULL DEFAULT 0,
  `fe_login_mode` smallint(6) NOT NULL DEFAULT 0,
  `backend_layout` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legacy_overlay_uid` int(10) unsigned NOT NULL DEFAULT 0,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `no_index` smallint(6) NOT NULL DEFAULT 0,
  `no_follow` smallint(6) NOT NULL DEFAULT 0,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `og_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `twitter_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `canonical_link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sitemap_priority` decimal(1,1) NOT NULL DEFAULT 0.5,
  `sitemap_changefreq` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_icon_source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_icon_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_image` int(10) unsigned NOT NULL DEFAULT 0,
  `categories` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `slug` (`slug`(127)),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sc_group` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `items` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static',
  `table_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `last_indexed` int(11) NOT NULL DEFAULT 0,
  `missing` smallint(6) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT 0,
  `identifier` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identifier_hash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT 0,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `modification_date` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `folder` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recursive` smallint(6) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `file` int(11) NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible` int(10) unsigned DEFAULT 1,
  `status` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_tool` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `download_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `creator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `publisher` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `copyright` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_country` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location_region` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location_city` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `latitude` decimal(24,14) DEFAULT 0.00000000000000,
  `longitude` decimal(24,14) DEFAULT 0.00000000000000,
  `ranking` int(10) unsigned DEFAULT 0,
  `content_creation_date` int(10) unsigned DEFAULT 0,
  `content_modification_date` int(10) unsigned DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `duration` double DEFAULT 0,
  `color_space` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pages` int(10) unsigned DEFAULT 0,
  `language` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `fe_groups` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
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
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `original` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `configuration` blob DEFAULT NULL,
  `configurationsha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checksum` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`(100),`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(180))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  `table_local` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `crop` varchar(4000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `autoplay` smallint(6) NOT NULL DEFAULT 0,
  `description_position` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `picture_width` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `picture_border_radius` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `aspect_ratio` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `svg_width` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `driver` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `configuration` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` smallint(6) NOT NULL DEFAULT 0,
  `is_browsable` smallint(6) NOT NULL DEFAULT 0,
  `is_public` smallint(6) NOT NULL DEFAULT 0,
  `is_writable` smallint(6) NOT NULL DEFAULT 0,
  `is_online` smallint(6) NOT NULL DEFAULT 1,
  `auto_extract_metadata` smallint(6) NOT NULL DEFAULT 1,
  `processingfolder` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1594827760,1594827760,0,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','fileadmin/ (auto-created)','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `base` int(10) unsigned NOT NULL DEFAULT 0,
  `read_only` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `actiontype` smallint(6) NOT NULL DEFAULT 0,
  `usertype` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BE',
  `userid` int(10) unsigned DEFAULT NULL,
  `originaluserid` int(10) unsigned DEFAULT NULL,
  `recuid` int(11) NOT NULL DEFAULT 0,
  `tablename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `history_data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace` int(11) DEFAULT 0,
  `correlation_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `recordident_1` (`tablename`(100),`recuid`),
  KEY `recordident_2` (`tablename`(100),`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `title` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `flag` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_isocode` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `record_table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT 0,
  `record_pid` int(11) NOT NULL DEFAULT 0,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `feuserid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `action` smallint(5) unsigned NOT NULL DEFAULT 0,
  `recuid` int(10) unsigned NOT NULL DEFAULT 0,
  `tablename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT 0,
  `error` smallint(5) unsigned NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `details_nr` smallint(6) NOT NULL DEFAULT 0,
  `IP` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `log_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_pid` int(11) NOT NULL DEFAULT -1,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `NEWid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `request_id` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT 0,
  `component` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `level` smallint(5) unsigned NOT NULL DEFAULT 0,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `combined_1` (`tstamp`,`type`,`userid`),
  KEY `errorcount` (`tstamp`,`error`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal` smallint(5) unsigned NOT NULL DEFAULT 0,
  `category` smallint(5) unsigned NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_redirect`
--

DROP TABLE IF EXISTS `sys_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_redirect` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `updatedon` int(10) unsigned NOT NULL DEFAULT 0,
  `createdon` int(10) unsigned NOT NULL DEFAULT 0,
  `createdby` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disabled` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `source_host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `source_path` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_regexp` smallint(5) unsigned NOT NULL DEFAULT 0,
  `force_https` smallint(5) unsigned NOT NULL DEFAULT 0,
  `respect_query_parameters` smallint(5) unsigned NOT NULL DEFAULT 0,
  `keep_query_parameters` smallint(5) unsigned NOT NULL DEFAULT 0,
  `target` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target_statuscode` int(11) NOT NULL DEFAULT 307,
  `hitcount` int(11) NOT NULL DEFAULT 0,
  `lasthiton` int(11) NOT NULL DEFAULT 0,
  `disable_hitcount` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `index_source` (`source_host`(80),`source_path`(80)),
  KEY `parent` (`pid`,`deleted`,`disabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_redirect`
--

LOCK TABLES `sys_redirect` WRITE;
/*!40000 ALTER TABLE `sys_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tablename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT 0,
  `field` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `flexpointer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `ref_table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT 0,
  `ref_string` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`(100),`recuid`),
  KEY `lookup_uid` (`ref_table`(100),`ref_uid`),
  KEY `lookup_string` (`ref_string`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Typo3DbExtractionUpdate','i:1;'),(2,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FuncExtractionUpdate','i:1;'),(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateUrlTypesInPagesUpdate','i:1;'),(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectExtractionUpdate','i:1;'),(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserStartModuleUpdate','i:1;'),(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayUpdate','i:1;'),(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayBeGroupsAccessRights','i:1;'),(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendLayoutIconUpdateWizard','i:1;'),(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectsExtensionUpdate','i:1;'),(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\AdminPanelInstall','i:1;'),(11,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PopulatePageSlugs','i:1;'),(12,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Argon2iPasswordHashes','i:1;'),(13,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserConfigurationUpdate','i:1;'),(14,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RsaauthExtractionUpdate','i:1;'),(15,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FeeditExtractionUpdate','i:1;'),(16,'installUpdate','TYPO3\\CMS\\Install\\Updates\\TaskcenterExtractionUpdate','i:1;'),(17,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysActionExtractionUpdate','i:1;'),(18,'installUpdate','TYPO3\\CMS\\Form\\Hooks\\FormFileExtensionUpdate','i:1;'),(19,'installUpdateRows','rowUpdatersDone','a:1:{i:0;s:69:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\WorkspaceVersionRecordsMigration\";}'),(20,'core','formProtectionSessionToken:1','s:64:\"43040a6a74b91e77eead811d03e84218cedb480dcb7abf4d4dae01fbe3a1176c\";'),(21,'tx_reports','status.highestSeverity','i:1;'),(22,'extensionScannerNotAffected','e39682b901051ec48ee60fa6cfe12c48','s:32:\"e39682b901051ec48ee60fa6cfe12c48\";'),(23,'extensionScannerNotAffected','1d36af555ac8264786c3e72a2c251e38','s:32:\"1d36af555ac8264786c3e72a2c251e38\";'),(24,'extensionScannerNotAffected','2727a4091391f76e063b467ebc7f6d86','s:32:\"2727a4091391f76e063b467ebc7f6d86\";'),(25,'extensionScannerNotAffected','58464adfa2c4d03a24ae35dc3f25801c','s:32:\"58464adfa2c4d03a24ae35dc3f25801c\";'),(26,'extensionScannerNotAffected','eb370d58d94c52c8d3a4ee663f37568a','s:32:\"eb370d58d94c52c8d3a4ee663f37568a\";'),(27,'extensionScannerNotAffected','9b7bb233dfb418012c40d31c3fb9752b','s:32:\"9b7bb233dfb418012c40d31c3fb9752b\";'),(28,'extensionScannerNotAffected','b6058a0dc990a2c719ebaf093f5fc02f','s:32:\"b6058a0dc990a2c719ebaf093f5fc02f\";'),(29,'extensionScannerNotAffected','a2da539b9ee347a8e042edfaf888d512','s:32:\"a2da539b9ee347a8e042edfaf888d512\";'),(30,'extensionScannerNotAffected','e872218b822e4a3de6e5ae039fdd2f60','s:32:\"e872218b822e4a3de6e5ae039fdd2f60\";'),(31,'extensionScannerNotAffected','84958529cec39361876616e3725c4f9b','s:32:\"84958529cec39361876616e3725c4f9b\";'),(32,'extensionScannerNotAffected','4d29c858bfb700ee214348c776bd7fee','s:32:\"4d29c858bfb700ee214348c776bd7fee\";'),(33,'extensionScannerNotAffected','1c5a05a66768940687520074a52c2d99','s:32:\"1c5a05a66768940687520074a52c2d99\";'),(34,'extensionScannerNotAffected','27cb6bf0a45fb36cd7ac73a2c0a572ef','s:32:\"27cb6bf0a45fb36cd7ac73a2c0a572ef\";'),(35,'extensionScannerNotAffected','407bdf75e994d5e754cd62fe949c9e9b','s:32:\"407bdf75e994d5e754cd62fe949c9e9b\";'),(36,'extensionScannerNotAffected','256574d860279e77e16ec42976515826','s:32:\"256574d860279e77e16ec42976515826\";'),(37,'extensionScannerNotAffected','c5dd6f8903c59d422e06f980e5b36552','s:32:\"c5dd6f8903c59d422e06f980e5b36552\";'),(38,'extensionScannerNotAffected','09d630c80626c1b76089fcc5c01a6ebb','s:32:\"09d630c80626c1b76089fcc5c01a6ebb\";'),(39,'extensionScannerNotAffected','515ba3726a1dfded6ef6b83d1581ec83','s:32:\"515ba3726a1dfded6ef6b83d1581ec83\";'),(40,'extensionScannerNotAffected','7160b22e95d6e92862b7761a18a21cb9','s:32:\"7160b22e95d6e92862b7761a18a21cb9\";'),(41,'extensionScannerNotAffected','e009576208e2478646761c31e62ffff8','s:32:\"e009576208e2478646761c31e62ffff8\";'),(42,'extensionScannerNotAffected','eace7e4de80cf7847b30899b5c647e01','s:32:\"eace7e4de80cf7847b30899b5c647e01\";'),(43,'extensionScannerNotAffected','3f8faefc1fe5b54d8903efdfee5ac291','s:32:\"3f8faefc1fe5b54d8903efdfee5ac291\";'),(44,'extensionScannerNotAffected','3ea2e88429bdcbbd9cfe70d1705d0823','s:32:\"3ea2e88429bdcbbd9cfe70d1705d0823\";'),(45,'extensionScannerNotAffected','67442386f8c3115084d1214937e3b4a8','s:32:\"67442386f8c3115084d1214937e3b4a8\";'),(46,'extensionScannerNotAffected','aeba5d0706fd347bdc5272f996118fea','s:32:\"aeba5d0706fd347bdc5272f996118fea\";'),(47,'extensionScannerNotAffected','c406c1b4bb1a5dfd9c08d4559bb8e8ee','s:32:\"c406c1b4bb1a5dfd9c08d4559bb8e8ee\";'),(48,'extensionScannerNotAffected','66917c534366520df96a319aa595aadf','s:32:\"66917c534366520df96a319aa595aadf\";'),(49,'extensionScannerNotAffected','c7bfdc48f32344ba1d1ae63f65de7271','s:32:\"c7bfdc48f32344ba1d1ae63f65de7271\";'),(50,'extensionScannerNotAffected','b6955ff14a49b23c4b55a16ceda2f53f','s:32:\"b6955ff14a49b23c4b55a16ceda2f53f\";'),(51,'extensionScannerNotAffected','13d6f701b41fb36f0e0083a22bb85002','s:32:\"13d6f701b41fb36f0e0083a22bb85002\";'),(52,'extensionScannerNotAffected','4fb09912c38414756af594202cb2f690','s:32:\"4fb09912c38414756af594202cb2f690\";'),(53,'extensionScannerNotAffected','c0a7d44f061cb4c2deca56a6ce548669','s:32:\"c0a7d44f061cb4c2deca56a6ce548669\";'),(54,'extensionScannerNotAffected','02a805a392483b732732f93901406ceb','s:32:\"02a805a392483b732732f93901406ceb\";'),(55,'extensionScannerNotAffected','19376586fba8888a27efd8af6a4583cf','s:32:\"19376586fba8888a27efd8af6a4583cf\";'),(56,'extensionScannerNotAffected','0d9fbf4a461435c9eeedb3cc130dace5','s:32:\"0d9fbf4a461435c9eeedb3cc130dace5\";'),(57,'extensionScannerNotAffected','491537cef95923e1e1df8619a5bd9924','s:32:\"491537cef95923e1e1df8619a5bd9924\";'),(58,'extensionScannerNotAffected','2c3b83bfc1f271ba9a860c00e99d9b6f','s:32:\"2c3b83bfc1f271ba9a860c00e99d9b6f\";'),(59,'extensionScannerNotAffected','e307efdd6ecb8c3fd0bea412d0a0db1c','s:32:\"e307efdd6ecb8c3fd0bea412d0a0db1c\";'),(60,'extensionScannerNotAffected','a1ff42bfe65aa2a7250e8ef7e195bcd5','s:32:\"a1ff42bfe65aa2a7250e8ef7e195bcd5\";'),(61,'extensionScannerNotAffected','0d60eaef00c478199d475ca60d7340c7','s:32:\"0d60eaef00c478199d475ca60d7340c7\";'),(62,'extensionScannerNotAffected','bd1929903ae77d7a33efa0feb711cfb6','s:32:\"bd1929903ae77d7a33efa0feb711cfb6\";'),(63,'extensionScannerNotAffected','4579e1fbe7c94b5510b7796b672c2d80','s:32:\"4579e1fbe7c94b5510b7796b672c2d80\";'),(64,'extensionScannerNotAffected','0bee48ca87fa9b61a2a7047f53e638d9','s:32:\"0bee48ca87fa9b61a2a7047f53e638d9\";'),(65,'extensionScannerNotAffected','bb9a966a09e9ef5a034900a4bca6ef96','s:32:\"bb9a966a09e9ef5a034900a4bca6ef96\";'),(66,'extensionScannerNotAffected','b75fd56db65b57134ee3a392333164e6','s:32:\"b75fd56db65b57134ee3a392333164e6\";'),(67,'extensionScannerNotAffected','5dfdf6cf1184deae70be20b67437408a','s:32:\"5dfdf6cf1184deae70be20b67437408a\";'),(68,'extensionScannerNotAffected','3a288da8230d042aa0fefe3c9d010fc9','s:32:\"3a288da8230d042aa0fefe3c9d010fc9\";'),(69,'extensionScannerNotAffected','b1ab184e4a9874ce5e04c374155c7f03','s:32:\"b1ab184e4a9874ce5e04c374155c7f03\";'),(70,'extensionScannerNotAffected','7f95a3579a446aecec1217a456433f0f','s:32:\"7f95a3579a446aecec1217a456433f0f\";'),(71,'extensionScannerNotAffected','4fdf992e0b9d01d8b36830baffa7e987','s:32:\"4fdf992e0b9d01d8b36830baffa7e987\";'),(72,'extensionScannerNotAffected','12b246daad701f9511c661587d1f4e6a','s:32:\"12b246daad701f9511c661587d1f4e6a\";'),(73,'extensionScannerNotAffected','d1e1110b267f6c82aac369fe44d1026f','s:32:\"d1e1110b267f6c82aac369fe44d1026f\";'),(74,'extensionScannerNotAffected','71ebec4960c1b84c199c5a33277b084d','s:32:\"71ebec4960c1b84c199c5a33277b084d\";'),(75,'extensionScannerNotAffected','09e682d75e634e3ceb0f7f98527b1505','s:32:\"09e682d75e634e3ceb0f7f98527b1505\";'),(76,'extensionScannerNotAffected','0aaa78219033da9093ecded3a045d686','s:32:\"0aaa78219033da9093ecded3a045d686\";'),(77,'extensionScannerNotAffected','a8b76974d80653cd9d3e19cf8fbbc54d','s:32:\"a8b76974d80653cd9d3e19cf8fbbc54d\";'),(78,'extensionScannerNotAffected','e1a09d1fd8685d6062cf3e7799e126f9','s:32:\"e1a09d1fd8685d6062cf3e7799e126f9\";'),(79,'extensionScannerNotAffected','37263679ea002b67d6c926e96199e0cb','s:32:\"37263679ea002b67d6c926e96199e0cb\";'),(80,'extensionScannerNotAffected','e41e345fdcabb5d16cf9cbcaf5f6770c','s:32:\"e41e345fdcabb5d16cf9cbcaf5f6770c\";'),(81,'extensionScannerNotAffected','e164383a65972e81d1d4ceed1b787c5c','s:32:\"e164383a65972e81d1d4ceed1b787c5c\";'),(82,'extensionScannerNotAffected','31eabeee23cfbd2e810ec7163f298fe2','s:32:\"31eabeee23cfbd2e810ec7163f298fe2\";'),(83,'extensionScannerNotAffected','150c7c72278375a02383fdf867b9a14e','s:32:\"150c7c72278375a02383fdf867b9a14e\";'),(84,'extensionScannerNotAffected','ded4b923244fe03a0ba7a483e8000813','s:32:\"ded4b923244fe03a0ba7a483e8000813\";'),(85,'extensionScannerNotAffected','aee3aa4544e3318e32219407712cce1c','s:32:\"aee3aa4544e3318e32219407712cce1c\";'),(86,'extensionScannerNotAffected','b4310ab842bd0c4c910ee09f20037987','s:32:\"b4310ab842bd0c4c910ee09f20037987\";'),(87,'extensionScannerNotAffected','f4592d107f1f59a157f6c116814480fe','s:32:\"f4592d107f1f59a157f6c116814480fe\";'),(88,'extensionScannerNotAffected','6366dd14c672aa71ebf03205723f68a2','s:32:\"6366dd14c672aa71ebf03205723f68a2\";'),(89,'extensionScannerNotAffected','16aab8758e3be9a5eae25ab0ffc9ac50','s:32:\"16aab8758e3be9a5eae25ab0ffc9ac50\";'),(90,'extensionScannerNotAffected','e5fefe9c0e303befc6e3587e6015bd5f','s:32:\"e5fefe9c0e303befc6e3587e6015bd5f\";'),(91,'extensionScannerNotAffected','0de71175cd69f6922e46015ac1646084','s:32:\"0de71175cd69f6922e46015ac1646084\";'),(92,'extensionScannerNotAffected','5e3556a907f7c423702aafe5bd21283b','s:32:\"5e3556a907f7c423702aafe5bd21283b\";'),(93,'extensionScannerNotAffected','54278669581b9b9898c259be1c1d0e91','s:32:\"54278669581b9b9898c259be1c1d0e91\";'),(94,'extensionScannerNotAffected','5f19c061916be2a684833b270fd025ff','s:32:\"5f19c061916be2a684833b270fd025ff\";'),(95,'extensionScannerNotAffected','397c9a4bcca973b3b451be07aae2d85d','s:32:\"397c9a4bcca973b3b451be07aae2d85d\";'),(96,'extensionScannerNotAffected','63052e9b8451752e184e2d932bc7dd62','s:32:\"63052e9b8451752e184e2d932bc7dd62\";'),(97,'extensionScannerNotAffected','bf0cb1ebffe995bc39723cb13738ea6a','s:32:\"bf0cb1ebffe995bc39723cb13738ea6a\";'),(98,'extensionScannerNotAffected','23bb7c19b079c8fe437d78e2e66364e8','s:32:\"23bb7c19b079c8fe437d78e2e66364e8\";'),(99,'extensionScannerNotAffected','07123938cdaa13ee58f25d01cc26690b','s:32:\"07123938cdaa13ee58f25d01cc26690b\";'),(100,'extensionScannerNotAffected','d94828488045a36bc40849c6f8b195a0','s:32:\"d94828488045a36bc40849c6f8b195a0\";'),(101,'extensionScannerNotAffected','ae91c66cc4e4c53b3ebd277f63618ff3','s:32:\"ae91c66cc4e4c53b3ebd277f63618ff3\";'),(102,'extensionScannerNotAffected','6afcbbc7b716e87880a5467cf09fbd64','s:32:\"6afcbbc7b716e87880a5467cf09fbd64\";'),(103,'extensionScannerNotAffected','b0a2e8285534a393b573a86b00d1a17a','s:32:\"b0a2e8285534a393b573a86b00d1a17a\";'),(104,'extensionScannerNotAffected','aaa9710768df7d8203beffd77d3b3556','s:32:\"aaa9710768df7d8203beffd77d3b3556\";'),(105,'extensionScannerNotAffected','72e9f7b477e14d237e47b6e91ebc552a','s:32:\"72e9f7b477e14d237e47b6e91ebc552a\";'),(106,'extensionScannerNotAffected','713ce9cb95953fd15278aad8008700d0','s:32:\"713ce9cb95953fd15278aad8008700d0\";'),(107,'extensionScannerNotAffected','d3a2b981266c7afc2a62a0706ccd7cc2','s:32:\"d3a2b981266c7afc2a62a0706ccd7cc2\";'),(108,'extensionScannerNotAffected','137770a65b8c8d0819b78e386cc37f20','s:32:\"137770a65b8c8d0819b78e386cc37f20\";'),(109,'extensionScannerNotAffected','c9198802f9c124c1cb1a1cc0f9b21331','s:32:\"c9198802f9c124c1cb1a1cc0f9b21331\";'),(110,'extensionScannerNotAffected','bfea06cd79d77e5837f13f835af83116','s:32:\"bfea06cd79d77e5837f13f835af83116\";'),(111,'extensionScannerNotAffected','590492426cf773b2afbc30e44c7cb9a8','s:32:\"590492426cf773b2afbc30e44c7cb9a8\";'),(112,'extensionScannerNotAffected','679b3f7a5f265e78afa52568a7af81ea','s:32:\"679b3f7a5f265e78afa52568a7af81ea\";'),(113,'extensionScannerNotAffected','0b69b592c0282cff9221984287598585','s:32:\"0b69b592c0282cff9221984287598585\";'),(114,'extensionScannerNotAffected','c59521640be26ce42b563af41dc55133','s:32:\"c59521640be26ce42b563af41dc55133\";'),(115,'extensionScannerNotAffected','117f225b4a34c1f605917cb1164b4711','s:32:\"117f225b4a34c1f605917cb1164b4711\";'),(116,'extensionScannerNotAffected','f034819b88bc241ff173482a2ae0e3d3','s:32:\"f034819b88bc241ff173482a2ae0e3d3\";'),(117,'extensionScannerNotAffected','74d00dbf61e6cf5a5f7db8c5c49e8730','s:32:\"74d00dbf61e6cf5a5f7db8c5c49e8730\";'),(118,'extensionScannerNotAffected','dd5c4bc99a64380b59f54e297e6b0251','s:32:\"dd5c4bc99a64380b59f54e297e6b0251\";'),(119,'extensionScannerNotAffected','f746fe14df28161312ff6481b765fe6b','s:32:\"f746fe14df28161312ff6481b765fe6b\";'),(120,'extensionScannerNotAffected','10470ebd96c5d1be6ed052c35e88a572','s:32:\"10470ebd96c5d1be6ed052c35e88a572\";'),(121,'extensionScannerNotAffected','e5e622341da70adf63f6d8b8c8e49152','s:32:\"e5e622341da70adf63f6d8b8c8e49152\";'),(122,'extensionScannerNotAffected','3800d667a81ea56b0691a0c42e4aa735','s:32:\"3800d667a81ea56b0691a0c42e4aa735\";'),(123,'extensionScannerNotAffected','c7f481de96f5f6eb495f42a328b653f7','s:32:\"c7f481de96f5f6eb495f42a328b653f7\";'),(124,'extensionScannerNotAffected','77e5ec218f56f98dfa21beabdfb470aa','s:32:\"77e5ec218f56f98dfa21beabdfb470aa\";'),(125,'extensionScannerNotAffected','a60dfede9467734cd91d13a581ff993d','s:32:\"a60dfede9467734cd91d13a581ff993d\";'),(126,'extensionScannerNotAffected','9843224e8057c4b0a75986f2b1b0d7de','s:32:\"9843224e8057c4b0a75986f2b1b0d7de\";'),(127,'extensionScannerNotAffected','e644b224460392561dd815bddc13e280','s:32:\"e644b224460392561dd815bddc13e280\";'),(128,'extensionScannerNotAffected','aab92a3622f423c5bf6364e4b3720433','s:32:\"aab92a3622f423c5bf6364e4b3720433\";'),(129,'extensionScannerNotAffected','244de3e3bf16bd6ecc7abdd9f5134baa','s:32:\"244de3e3bf16bd6ecc7abdd9f5134baa\";'),(130,'extensionScannerNotAffected','3eae74ce8bf1dda88a3956580f0ee095','s:32:\"3eae74ce8bf1dda88a3956580f0ee095\";'),(131,'extensionScannerNotAffected','dc4027985e6fc1e36977379ef3f9dcf3','s:32:\"dc4027985e6fc1e36977379ef3f9dcf3\";'),(132,'extensionScannerNotAffected','7f24f3339010d86836d49812532da677','s:32:\"7f24f3339010d86836d49812532da677\";'),(133,'extensionScannerNotAffected','e1d1b139beff6b083fab80e2e6604a86','s:32:\"e1d1b139beff6b083fab80e2e6604a86\";'),(134,'extensionScannerNotAffected','cc57748e8798b0147782cf3a9e868015','s:32:\"cc57748e8798b0147782cf3a9e868015\";'),(135,'extensionScannerNotAffected','00d7d3a7bb4187e3a130a8207ce29332','s:32:\"00d7d3a7bb4187e3a130a8207ce29332\";'),(136,'extensionScannerNotAffected','8c0a471eb1e62a9df7e2a0ab710144ab','s:32:\"8c0a471eb1e62a9df7e2a0ab710144ab\";'),(137,'extensionScannerNotAffected','6325e8f1bf6ee47776eec4aa896ae498','s:32:\"6325e8f1bf6ee47776eec4aa896ae498\";'),(138,'extensionScannerNotAffected','51e7b5cfb13385843bcf4db3f3d80824','s:32:\"51e7b5cfb13385843bcf4db3f3d80824\";'),(139,'extensionScannerNotAffected','4446e163f2527d13cef9b690a59d41a0','s:32:\"4446e163f2527d13cef9b690a59d41a0\";'),(140,'extensionScannerNotAffected','c310acb623b8c522450745fddb89a18b','s:32:\"c310acb623b8c522450745fddb89a18b\";'),(141,'extensionScannerNotAffected','3b082c2f15d19c95a2274f2f9cf67936','s:32:\"3b082c2f15d19c95a2274f2f9cf67936\";'),(142,'extensionScannerNotAffected','7053139b178834fc4832de6ef3bb35e4','s:32:\"7053139b178834fc4832de6ef3bb35e4\";'),(143,'extensionScannerNotAffected','4a1ffb6acbac6b2a1330dec6a118e9b7','s:32:\"4a1ffb6acbac6b2a1330dec6a118e9b7\";'),(144,'extensionScannerNotAffected','0f72ecbde01e66ab8de6cda9f6ff6031','s:32:\"0f72ecbde01e66ab8de6cda9f6ff6031\";'),(145,'extensionScannerNotAffected','5d6acfcf63df912878a53dfb4f88f66c','s:32:\"5d6acfcf63df912878a53dfb4f88f66c\";'),(146,'extensionScannerNotAffected','7591886b875efd00b894eb60256ac0e9','s:32:\"7591886b875efd00b894eb60256ac0e9\";'),(147,'extensionScannerNotAffected','f55d0a8bf02260a90d0dfd562fd3011f','s:32:\"f55d0a8bf02260a90d0dfd562fd3011f\";'),(148,'extensionScannerNotAffected','9522a14ae76b26966c6383c435872cf2','s:32:\"9522a14ae76b26966c6383c435872cf2\";'),(149,'extensionScannerNotAffected','ba01e41c82b0218933f2c05542aec142','s:32:\"ba01e41c82b0218933f2c05542aec142\";'),(150,'extensionScannerNotAffected','d544bdbde714a2ec968cb3270273fc18','s:32:\"d544bdbde714a2ec968cb3270273fc18\";'),(151,'extensionScannerNotAffected','7bf45c02a5c39c6babccb5ea80a820ac','s:32:\"7bf45c02a5c39c6babccb5ea80a820ac\";'),(152,'extensionScannerNotAffected','c526c9a91d824901b33106452ac6e8ed','s:32:\"c526c9a91d824901b33106452ac6e8ed\";'),(153,'extensionScannerNotAffected','747e64fff64dd7432e84a08fe738067a','s:32:\"747e64fff64dd7432e84a08fe738067a\";'),(154,'extensionScannerNotAffected','8d99ace37d1d1b36fbab3a9d6304e918','s:32:\"8d99ace37d1d1b36fbab3a9d6304e918\";'),(155,'extensionScannerNotAffected','8e787af732d7f3edea4492626092bfb4','s:32:\"8e787af732d7f3edea4492626092bfb4\";'),(156,'extensionScannerNotAffected','da20688d2c914dfbb71b99797a2b5231','s:32:\"da20688d2c914dfbb71b99797a2b5231\";'),(157,'extensionScannerNotAffected','2b495b045a49a5002f033f663268e460','s:32:\"2b495b045a49a5002f033f663268e460\";'),(158,'extensionScannerNotAffected','c7d2136d519fa26627008c5c7ef0b7b8','s:32:\"c7d2136d519fa26627008c5c7ef0b7b8\";'),(159,'extensionScannerNotAffected','d8ddb8d308daf783e702d6ff4197b630','s:32:\"d8ddb8d308daf783e702d6ff4197b630\";'),(160,'extensionScannerNotAffected','329a78b9a0cb7a8fce549d1f99750626','s:32:\"329a78b9a0cb7a8fce549d1f99750626\";'),(161,'extensionScannerNotAffected','65d3c5339cf7b511f4f892427a5a294f','s:32:\"65d3c5339cf7b511f4f892427a5a294f\";'),(162,'extensionScannerNotAffected','8e57538a6b4eb5977b710dda86c19a79','s:32:\"8e57538a6b4eb5977b710dda86c19a79\";'),(163,'extensionScannerNotAffected','91ea87d2b06ea4f647e043148d951c52','s:32:\"91ea87d2b06ea4f647e043148d951c52\";'),(164,'extensionScannerNotAffected','dfaf4db240d3f4883278b2f285c5607e','s:32:\"dfaf4db240d3f4883278b2f285c5607e\";'),(165,'extensionScannerNotAffected','97f1cb270f7c6ce7261e229007892f53','s:32:\"97f1cb270f7c6ce7261e229007892f53\";'),(166,'extensionScannerNotAffected','db580c43603bc85dce820925c0391148','s:32:\"db580c43603bc85dce820925c0391148\";'),(167,'extensionScannerNotAffected','94935c6e14d0aff251bb66552a78774e','s:32:\"94935c6e14d0aff251bb66552a78774e\";'),(168,'extensionScannerNotAffected','8bcdcb5cb360544051b268949bfe5793','s:32:\"8bcdcb5cb360544051b268949bfe5793\";'),(169,'extensionScannerNotAffected','07be8a5d35d670955b5edd1cf6fb177e','s:32:\"07be8a5d35d670955b5edd1cf6fb177e\";'),(170,'extensionScannerNotAffected','782a296528be3f95640e8fb1ca72b61b','s:32:\"782a296528be3f95640e8fb1ca72b61b\";'),(171,'extensionScannerNotAffected','a59be9db96adc138df8439284a35f1b1','s:32:\"a59be9db96adc138df8439284a35f1b1\";'),(172,'extensionScannerNotAffected','e64f98e82453cb5e4ddcea3fbb6ea1f8','s:32:\"e64f98e82453cb5e4ddcea3fbb6ea1f8\";'),(173,'extensionScannerNotAffected','08f23e8308e19cd3b730c99b5724f918','s:32:\"08f23e8308e19cd3b730c99b5724f918\";'),(174,'extensionScannerNotAffected','d209ef32995636ed8252c304366460f0','s:32:\"d209ef32995636ed8252c304366460f0\";'),(175,'extensionScannerNotAffected','2de6f2010831b2dbebe1c566382968d9','s:32:\"2de6f2010831b2dbebe1c566382968d9\";'),(176,'extensionScannerNotAffected','a767d6a06ae489ffffd6c26bc25fb38a','s:32:\"a767d6a06ae489ffffd6c26bc25fb38a\";'),(177,'extensionScannerNotAffected','dcabdff470c575a8ed319d14fb9c424f','s:32:\"dcabdff470c575a8ed319d14fb9c424f\";'),(178,'extensionScannerNotAffected','da4784251913511a4be69adb66dc6248','s:32:\"da4784251913511a4be69adb66dc6248\";'),(179,'extensionScannerNotAffected','6e37d32633631b068e06299c8acffee3','s:32:\"6e37d32633631b068e06299c8acffee3\";'),(180,'extensionScannerNotAffected','144cc46f4036b271da85fa68c7e31ec6','s:32:\"144cc46f4036b271da85fa68c7e31ec6\";'),(181,'extensionScannerNotAffected','986062b4896ff2cd9eece3eef4ded45b','s:32:\"986062b4896ff2cd9eece3eef4ded45b\";'),(182,'extensionScannerNotAffected','97d8364d14683e5c99cf3d61d245757b','s:32:\"97d8364d14683e5c99cf3d61d245757b\";'),(183,'extensionScannerNotAffected','9be17234d688f35a777c9476d9f3c71b','s:32:\"9be17234d688f35a777c9476d9f3c71b\";'),(184,'extensionScannerNotAffected','b86bf8233a9c62ebca0cacff2f89d5e3','s:32:\"b86bf8233a9c62ebca0cacff2f89d5e3\";'),(185,'extensionScannerNotAffected','dd4f137389ebdeacaae2a4dec7d17993','s:32:\"dd4f137389ebdeacaae2a4dec7d17993\";'),(186,'extensionScannerNotAffected','6539b2eef11f6335580d5c96f1ba17de','s:32:\"6539b2eef11f6335580d5c96f1ba17de\";'),(187,'extensionScannerNotAffected','e76d8583899c660d9b8f059f1e70b398','s:32:\"e76d8583899c660d9b8f059f1e70b398\";'),(188,'extensionScannerNotAffected','bf64fd0e3399cba335ba6da86212a590','s:32:\"bf64fd0e3399cba335ba6da86212a590\";'),(189,'extensionScannerNotAffected','39927fae0bdc126decd803df9975697b','s:32:\"39927fae0bdc126decd803df9975697b\";'),(190,'extensionScannerNotAffected','543adcda9a07c1be6be6863f4fc3de89','s:32:\"543adcda9a07c1be6be6863f4fc3de89\";'),(191,'extensionScannerNotAffected','606a1ff02c65e772c51feaa1ea681234','s:32:\"606a1ff02c65e772c51feaa1ea681234\";'),(192,'extensionScannerNotAffected','181fece53aa7b13396193738a08ab7a5','s:32:\"181fece53aa7b13396193738a08ab7a5\";'),(193,'extensionScannerNotAffected','0401d8602099bcafdbdffb88a96a7a3c','s:32:\"0401d8602099bcafdbdffb88a96a7a3c\";'),(194,'extensionScannerNotAffected','cbd21e7f03086cafbdc9e29aca0d7de9','s:32:\"cbd21e7f03086cafbdc9e29aca0d7de9\";'),(195,'extensionScannerNotAffected','27ab68dff32c68264a8f5052ce2bfa39','s:32:\"27ab68dff32c68264a8f5052ce2bfa39\";'),(196,'extensionScannerNotAffected','6b28fe44430f57ad36119ad15d1aed79','s:32:\"6b28fe44430f57ad36119ad15d1aed79\";'),(197,'extensionScannerNotAffected','66ed9c10913b6a895e8f53f17d242d2a','s:32:\"66ed9c10913b6a895e8f53f17d242d2a\";'),(198,'extensionScannerNotAffected','a2541c8ae57e07e86192ed8cc132718a','s:32:\"a2541c8ae57e07e86192ed8cc132718a\";'),(199,'extensionScannerNotAffected','e145f6079b7f9d0ec06e99a2b076c0a8','s:32:\"e145f6079b7f9d0ec06e99a2b076c0a8\";'),(200,'extensionScannerNotAffected','538801047ed609227d9cf1ff6302f69d','s:32:\"538801047ed609227d9cf1ff6302f69d\";'),(201,'extensionScannerNotAffected','72dcabf4098f87f91ffbd0680358d214','s:32:\"72dcabf4098f87f91ffbd0680358d214\";'),(202,'extensionScannerNotAffected','2d7e49260d1feaedd48d810213ffb538','s:32:\"2d7e49260d1feaedd48d810213ffb538\";'),(203,'extensionScannerNotAffected','ad00c9bfc110d595723c667ef024d8e9','s:32:\"ad00c9bfc110d595723c667ef024d8e9\";'),(204,'extensionScannerNotAffected','1476ca2c06acc6b6cb8bac78b0633bf6','s:32:\"1476ca2c06acc6b6cb8bac78b0633bf6\";'),(205,'extensionScannerNotAffected','9f6b69352cc9437112c62aa2b5543692','s:32:\"9f6b69352cc9437112c62aa2b5543692\";'),(206,'extensionScannerNotAffected','fd1adc61cb6d986a3e7a4dd65609fcba','s:32:\"fd1adc61cb6d986a3e7a4dd65609fcba\";'),(207,'extensionScannerNotAffected','b53560dfb6ad7c0d067ec228b9d158d6','s:32:\"b53560dfb6ad7c0d067ec228b9d158d6\";'),(208,'extensionScannerNotAffected','83d762e1a46c1363d7f5fabf77da2db4','s:32:\"83d762e1a46c1363d7f5fabf77da2db4\";'),(209,'extensionScannerNotAffected','9db18807754661411e84d91946f6c47b','s:32:\"9db18807754661411e84d91946f6c47b\";'),(210,'extensionScannerNotAffected','9fe318e826cbedb8fd1a26941d19005a','s:32:\"9fe318e826cbedb8fd1a26941d19005a\";'),(211,'extensionScannerNotAffected','3af67f0226440b92916c9ac47ecc0f45','s:32:\"3af67f0226440b92916c9ac47ecc0f45\";'),(212,'extensionScannerNotAffected','dd717b8dee96d5b999879b4de8d35ec5','s:32:\"dd717b8dee96d5b999879b4de8d35ec5\";'),(213,'extensionScannerNotAffected','7ca777fd910da99f301f8d6791dd8477','s:32:\"7ca777fd910da99f301f8d6791dd8477\";'),(214,'extensionScannerNotAffected','95a788a9e8bdf766bb7b24c46f66589b','s:32:\"95a788a9e8bdf766bb7b24c46f66589b\";'),(215,'extensionScannerNotAffected','bd3841546ff3c306e782b477cda497f0','s:32:\"bd3841546ff3c306e782b477cda497f0\";'),(216,'extensionScannerNotAffected','0a6f2835e55a235c905a1705df41cee7','s:32:\"0a6f2835e55a235c905a1705df41cee7\";'),(217,'extensionScannerNotAffected','40e5025c405909578400ab83e7761b74','s:32:\"40e5025c405909578400ab83e7761b74\";'),(218,'extensionScannerNotAffected','388a9b5cf2dc024abce1ccda0c00666b','s:32:\"388a9b5cf2dc024abce1ccda0c00666b\";'),(219,'extensionScannerNotAffected','53f2e9f92611d61893d2d1b9d2131d15','s:32:\"53f2e9f92611d61893d2d1b9d2131d15\";'),(220,'extensionScannerNotAffected','c2cb531b3769bfe93d36c2d6a43a436a','s:32:\"c2cb531b3769bfe93d36c2d6a43a436a\";'),(221,'extensionScannerNotAffected','858a87554a870c3f8cba49b81e5fc3a3','s:32:\"858a87554a870c3f8cba49b81e5fc3a3\";'),(222,'extensionScannerNotAffected','aea1390a84313285af1f87cb50d8213e','s:32:\"aea1390a84313285af1f87cb50d8213e\";'),(223,'extensionScannerNotAffected','96c7a3f1fc0fe11bcdc7115a31b16f93','s:32:\"96c7a3f1fc0fe11bcdc7115a31b16f93\";'),(224,'extensionScannerNotAffected','ff0771e45e03394ed17c8783e5e083d6','s:32:\"ff0771e45e03394ed17c8783e5e083d6\";'),(225,'extensionScannerNotAffected','f9d942cb02be7865d4818bda14172e5e','s:32:\"f9d942cb02be7865d4818bda14172e5e\";'),(226,'extensionScannerNotAffected','dc7a8fcd17770995da8b75572938b712','s:32:\"dc7a8fcd17770995da8b75572938b712\";'),(227,'extensionScannerNotAffected','d70cecc33fb1c59414665bc6865b8684','s:32:\"d70cecc33fb1c59414665bc6865b8684\";'),(228,'extensionScannerNotAffected','8181fb86d49358beab7d215f40f9b9d0','s:32:\"8181fb86d49358beab7d215f40f9b9d0\";'),(229,'extensionScannerNotAffected','dfece2da8779abcfde7e861097700523','s:32:\"dfece2da8779abcfde7e861097700523\";'),(230,'extensionScannerNotAffected','4255b4e13f24dca784d7ae424348d85d','s:32:\"4255b4e13f24dca784d7ae424348d85d\";'),(231,'extensionScannerNotAffected','10a393838d816503c8ce35d6d0d30ed1','s:32:\"10a393838d816503c8ce35d6d0d30ed1\";'),(232,'extensionScannerNotAffected','2d912704d94dcb07c72395b5d36442b5','s:32:\"2d912704d94dcb07c72395b5d36442b5\";'),(233,'extensionScannerNotAffected','05f060662b83bd28d7aa26c2f64386ac','s:32:\"05f060662b83bd28d7aa26c2f64386ac\";'),(234,'extensionScannerNotAffected','790028fa75f9039383e9d0ebb280e53e','s:32:\"790028fa75f9039383e9d0ebb280e53e\";'),(235,'extensionScannerNotAffected','846385e26abb209c7484fae2f0e714a4','s:32:\"846385e26abb209c7484fae2f0e714a4\";'),(236,'extensionScannerNotAffected','f7cc244676b74f17ca6bdb46707637f4','s:32:\"f7cc244676b74f17ca6bdb46707637f4\";'),(237,'extensionScannerNotAffected','ec85f46288965aa648ce9a1e37f2b58a','s:32:\"ec85f46288965aa648ce9a1e37f2b58a\";'),(238,'extensionScannerNotAffected','97459c0367812d1fb78d00f024ff20aa','s:32:\"97459c0367812d1fb78d00f024ff20aa\";'),(239,'extensionScannerNotAffected','863ddf6720a9e18761c46aad87485cf4','s:32:\"863ddf6720a9e18761c46aad87485cf4\";'),(240,'extensionScannerNotAffected','cddb0fb7e5108ed5d6bb3c3952e19af4','s:32:\"cddb0fb7e5108ed5d6bb3c3952e19af4\";'),(241,'extensionScannerNotAffected','36da4a1ba33eb2b96ed2c0a9e9a51ed7','s:32:\"36da4a1ba33eb2b96ed2c0a9e9a51ed7\";'),(242,'extensionScannerNotAffected','97bc7c077b1b5bfb83a571fa05800762','s:32:\"97bc7c077b1b5bfb83a571fa05800762\";'),(243,'extensionScannerNotAffected','33b6736583d84af8775af507206d46ca','s:32:\"33b6736583d84af8775af507206d46ca\";'),(244,'extensionScannerNotAffected','2bf671b90e2eb5e6c6b5f9c021354e14','s:32:\"2bf671b90e2eb5e6c6b5f9c021354e14\";'),(245,'extensionScannerNotAffected','ac85e53ac53a48d35776941798ab4d76','s:32:\"ac85e53ac53a48d35776941798ab4d76\";'),(246,'extensionScannerNotAffected','0334dc151fef8bb6bcaac48afc7044c6','s:32:\"0334dc151fef8bb6bcaac48afc7044c6\";'),(247,'extensionScannerNotAffected','f8debb461bd74853fed5bb2961457fa6','s:32:\"f8debb461bd74853fed5bb2961457fa6\";'),(248,'extensionScannerNotAffected','bca64e0231d1758d70893cc3e2457290','s:32:\"bca64e0231d1758d70893cc3e2457290\";'),(249,'extensionScannerNotAffected','d41ca0207dec38e21c9aa3e2091fcb63','s:32:\"d41ca0207dec38e21c9aa3e2091fcb63\";'),(250,'extensionScannerNotAffected','44dacc3b01548666f4f58735c461e0a3','s:32:\"44dacc3b01548666f4f58735c461e0a3\";'),(251,'extensionScannerNotAffected','ff5e28aa4ac849a3b1de2225626cadbd','s:32:\"ff5e28aa4ac849a3b1de2225626cadbd\";'),(252,'extensionScannerNotAffected','306a11d301aef636a577b043a9bc10fa','s:32:\"306a11d301aef636a577b043a9bc10fa\";'),(253,'extensionScannerNotAffected','ff5567f61828e66dcdd45a7e864014db','s:32:\"ff5567f61828e66dcdd45a7e864014db\";'),(254,'extensionScannerNotAffected','77f867e32a06e84b4c1cd0edfe595ce7','s:32:\"77f867e32a06e84b4c1cd0edfe595ce7\";'),(255,'extensionScannerNotAffected','1ec7fc989b025a9c8356317485bde146','s:32:\"1ec7fc989b025a9c8356317485bde146\";'),(256,'extensionScannerNotAffected','5eba200f09bc23b1b2a0a12bd87926bd','s:32:\"5eba200f09bc23b1b2a0a12bd87926bd\";'),(257,'extensionScannerNotAffected','eb9460c6d1a003d9527ce9cf48729e14','s:32:\"eb9460c6d1a003d9527ce9cf48729e14\";'),(258,'extensionScannerNotAffected','ed704db15bf9e2a071d87d3eba0e1c50','s:32:\"ed704db15bf9e2a071d87d3eba0e1c50\";'),(259,'extensionScannerNotAffected','f388ddfb65f283d07517bd727e72f0ce','s:32:\"f388ddfb65f283d07517bd727e72f0ce\";'),(260,'extensionScannerNotAffected','f7ffff32fb53be1a4f44895e1468fef1','s:32:\"f7ffff32fb53be1a4f44895e1468fef1\";'),(261,'extensionScannerNotAffected','2dec44f31d4d8868fe0fafe592b1c93e','s:32:\"2dec44f31d4d8868fe0fafe592b1c93e\";');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sitetitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `root` smallint(5) unsigned NOT NULL DEFAULT 0,
  `clear` smallint(5) unsigned NOT NULL DEFAULT 0,
  `include_static_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `constants` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basedOn` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT 0,
  `static_file_mode` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rowDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `CType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `assets` int(10) unsigned NOT NULL DEFAULT 0,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `imagewidth` int(10) unsigned NOT NULL DEFAULT 0,
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT 0,
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `frame_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `cols` int(10) unsigned NOT NULL DEFAULT 0,
  `space_before_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `records` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pages` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colPos` int(10) unsigned NOT NULL DEFAULT 0,
  `subheader` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header_link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  `header_layout` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT 0,
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `file_collections` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT 0,
  `filelink_sorting` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT 0,
  `recursive` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageheight` int(10) unsigned NOT NULL DEFAULT 0,
  `pi_flexform` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accessibility_title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT 0,
  `accessibility_bypass_text` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `selected_categories` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_field` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `header_style` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `subheader_style` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `content_position` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_position_center` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `section_container_width` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_zoom_width` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `simple_image` int(10) unsigned NOT NULL DEFAULT 0,
  `svg_image` int(10) unsigned NOT NULL DEFAULT 0,
  `picture` int(10) unsigned NOT NULL DEFAULT 0,
  `advanced_image` int(10) unsigned NOT NULL DEFAULT 0,
  `advanced_media` int(10) unsigned NOT NULL DEFAULT 0,
  `height` int(10) unsigned NOT NULL DEFAULT 0,
  `icon_source` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icon_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `accessible_link_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_position` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subheader_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_as_button` smallint(5) unsigned NOT NULL DEFAULT 0,
  `button_size` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `button_style` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `button_full_width` smallint(5) unsigned NOT NULL DEFAULT 0,
  `button_no_bg` smallint(5) unsigned NOT NULL DEFAULT 0,
  `page_links_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_links_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_links_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `extension_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `repository` int(10) unsigned NOT NULL DEFAULT 1,
  `version` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `downloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `review_state` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `last_updated` int(10) unsigned NOT NULL DEFAULT 0,
  `serialized_dependencies` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `update_comment` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorcompany` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT 0,
  `current_version` int(11) NOT NULL DEFAULT 0,
  `lastreviewedversion` int(11) NOT NULL DEFAULT 0,
  `documentation_link` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wsdl_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_update` int(10) unsigned NOT NULL DEFAULT 0,
  `extension_count` int(11) NOT NULL DEFAULT 0,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','https://typo3.org/wsdl/tx_ter_wsdl.php','https://repositories.typo3.org/mirrors.xml.gz',1346191200,0,0);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_linkvalidator_link`
--

DROP TABLE IF EXISTS `tx_linkvalidator_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_linkvalidator_link` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `record_uid` int(11) NOT NULL DEFAULT 0,
  `record_pid` int(11) NOT NULL DEFAULT 0,
  `language` int(11) NOT NULL DEFAULT -1,
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `element_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_response` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_check` int(11) NOT NULL DEFAULT 0,
  `link_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `needs_recheck` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_linkvalidator_link`
--

LOCK TABLES `tx_linkvalidator_link` WRITE;
/*!40000 ALTER TABLE `tx_linkvalidator_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_linkvalidator_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task`
--

DROP TABLE IF EXISTS `tx_scheduler_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nextexecution` int(10) unsigned NOT NULL DEFAULT 0,
  `lastexecution_time` int(10) unsigned NOT NULL DEFAULT 0,
  `lastexecution_failure` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastexecution_context` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `serialized_task_object` mediumblob DEFAULT NULL,
  `serialized_executions` mediumblob DEFAULT NULL,
  `task_group` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `index_nextexecution` (`nextexecution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `groupName` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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

-- Dump completed on 2020-07-15 16:31:34
