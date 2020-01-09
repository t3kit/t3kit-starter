-- MySQL dump 10.16  Distrib 10.1.41-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: t3kit9.local_db    Database: t3kit10
-- ------------------------------------------------------
-- Server version	10.3.17-MariaDB-1:10.3.17+maria~bionic

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
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
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
  `felogin_redirectPid` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `felogin_redirectPid` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `felogin_forgotHash` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT '',
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
  `categories` int(11) NOT NULL DEFAULT 0,
  `nav_icon` int(10) unsigned NOT NULL DEFAULT 0,
  `nav_image` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,1573833624,1571737387,1,0,0,0,0,'',512,NULL,0,0,0,0,NULL,0,'a:52:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:8:\"nav_icon\";N;s:9:\"seo_title\";N;s:11:\"description\";N;s:8:\"no_index\";N;s:9:\"no_follow\";N;s:14:\"canonical_link\";N;s:18:\"sitemap_changefreq\";N;s:16:\"sitemap_priority\";N;s:8:\"og_title\";N;s:14:\"og_description\";N;s:8:\"og_image\";N;s:13:\"twitter_title\";N;s:19:\"twitter_description\";N;s:13:\"twitter_image\";N;s:12:\"twitter_card\";N;s:8:\"abstract\";N;s:8:\"keywords\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:9:\"nav_image\";N;s:16:\"content_from_pid\";N;s:6:\"target\";N;s:13:\"cache_timeout\";N;s:10:\"cache_tags\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:6:\"module\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,1,1,31,31,1,'Home','/',1,NULL,1,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1573833624,NULL,'',0,'','','',0,0,0,0,0,0,'pagets__start_page','pagets__sidenav25_1column75',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0,0,0),(2,0,1571747279,1571741569,1,1,0,0,0,'',256,NULL,0,0,0,0,NULL,0,'a:50:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:9:\"seo_title\";N;s:8:\"no_index\";N;s:9:\"no_follow\";N;s:14:\"canonical_link\";N;s:18:\"sitemap_changefreq\";N;s:16:\"sitemap_priority\";N;s:8:\"og_title\";N;s:14:\"og_description\";N;s:8:\"og_image\";N;s:13:\"twitter_title\";N;s:19:\"twitter_description\";N;s:13:\"twitter_image\";N;s:12:\"twitter_card\";N;s:8:\"abstract\";N;s:8:\"keywords\";N;s:11:\"description\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:16:\"content_from_pid\";N;s:6:\"target\";N;s:13:\"cache_timeout\";N;s:10:\"cache_tags\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:6:\"module\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,1,0,31,27,0,'test','/',1,NULL,1,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0,0,0),(3,0,1571747275,1571741966,1,1,1,0,0,'0',768,NULL,0,0,0,0,NULL,0,'a:1:{s:4:\"slug\";N;}',0,0,0,0,0,0,0,1,0,31,27,0,'test2','/',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0,0,0),(4,1,1571748812,1571748580,1,0,0,0,0,'0',2,NULL,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,1,0,31,27,0,'Page layouts','/page-layouts',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1571748812,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0,0,0),(5,1,1571748810,1571748590,1,0,0,0,0,'0',3,NULL,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,1,0,31,27,0,'Content','/content',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1571748810,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0,0,0),(6,1,1571748807,1571748643,1,0,0,0,0,'0',131,NULL,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,1,0,31,27,0,'Examples','/examples',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0,0,0),(7,1,1571749022,1571748653,1,0,0,0,0,'',259,NULL,0,0,0,0,NULL,0,'a:32:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:3:\"url\";N;s:8:\"abstract\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:6:\"target\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,1,0,31,27,0,'Documentation','/documentation',3,NULL,0,0,'https://t3kit.gitbook.io/doc/',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0,0,0),(8,1,1571748876,1571748665,1,0,0,0,0,'',518,NULL,0,0,0,0,NULL,0,'a:32:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:3:\"url\";N;s:8:\"abstract\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:6:\"target\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,1,0,31,27,0,'Github','/github',3,NULL,0,0,'https://github.com/t3kit',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0,0,0),(9,1,1571748954,1571748673,1,0,0,0,0,'',520,NULL,0,0,0,0,NULL,0,'a:32:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:3:\"url\";N;s:8:\"abstract\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:6:\"target\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,1,0,31,27,0,'Support','/support',3,NULL,0,0,'https://github.com/t3kit/.github/blob/master/SUPPORT.md',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0,0,0),(10,1,1571749050,1571748682,1,0,1,0,0,'0',195,NULL,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,1,0,31,27,0,'Demo','/demo',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0,0,0),(11,1,1571749169,1571748735,1,0,0,0,0,'0',1024,'This is similar to the \"Folder\" type, but indicates that the content is meant for removal. However it offers no cleanup function. It is just a visual indication.',0,0,0,0,NULL,0,'a:7:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:6:\"hidden\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,1,0,31,27,0,'Recycler','/recycler',255,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0,0,0),(12,1,1571749204,1571749185,1,0,0,0,0,'0',772,'A folder-type page is simply a container. It will not appear in the frontend. It is generally used to store other types of records than pages or content elements.',0,0,0,0,NULL,0,'a:13:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:6:\"module\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:6:\"hidden\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,1,0,31,27,0,'Storage','/storage',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,0,1578047483,0,0,1,'2',0,'/user_upload/4k-resolution.jpg','9a007bb9f22a4ea775fd82fdbd5d552ade238c46','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','4k-resolution.jpg','3dc4e77931b7c2a68099d134c788c168d9fc1a50',10651086,1558700488,1489603437),(2,0,1578047483,0,0,1,'5',0,'/user_upload/aimpoint-9000l_productsheet.pdf','dec14abf821aede84a0f00d3ebfdda0c66287c31','19669f1e02c2f16705ec7587044c66443be70725','pdf','application/pdf','aimpoint-9000l_productsheet.pdf','8ae3bead4744ba9030473eeb98e008c164448d0b',270003,1578043422,1578043422),(3,0,1578047483,0,0,1,'0',0,'/user_upload/index.html','c25533f303185517ca3e1e24b215d53aa74076d2','19669f1e02c2f16705ec7587044c66443be70725','html','inode/x-empty','index.html','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,1553263535,1553263535),(4,0,1578047483,0,0,1,'2',0,'/user_upload/Markus_Rosenberg_-_FootyRenders.png','bd32d369a11cb8d27d1886bdcc6f4e01f535bc75','19669f1e02c2f16705ec7587044c66443be70725','png','image/png','Markus_Rosenberg_-_FootyRenders.png','9c34ff5b7a3fdfbeda6724865bca85840b5d6566',615910,1577973986,1577973986),(5,0,1578047483,0,0,1,'4',0,'/user_upload/Trailer__Mackan.youtube','553c4aef57fed2943cad0eb1a0cdd06f23f001f4','19669f1e02c2f16705ec7587044c66443be70725','youtube','video/youtube','Trailer__Mackan.youtube','d13d21106c8cdc7472417d7e8f78b46be52a7332',11,1577974848,1577974848),(6,0,1578054951,0,0,1,'2',0,'/example_content/images/example_image_1.jpg','7d1022d2a2ec82539e7ee0263b07591c38a45414','bafc190e1520693a38531a215aa201a4eac7db4b','jpg','image/jpeg','example_image_1.jpg','8ad118d023dacb72e006956075c4cd19f1f0db57',295590,1578054915,1566302417),(7,0,1578054951,0,0,1,'2',0,'/example_content/images/example_image_2.jpg','639fdbeda2aa3f40520ce834990c4fe09ec9651f','bafc190e1520693a38531a215aa201a4eac7db4b','jpg','image/jpeg','example_image_2.jpg','2f43ecc04d627c7c529e30ebed131c18c5393915',573783,1578054922,1566302417),(8,0,1578054951,0,0,1,'2',0,'/example_content/images/example_image_3.jpg','64dddd42d269f3298bc5807ed199a44e3fd599d3','bafc190e1520693a38531a215aa201a4eac7db4b','jpg','image/jpeg','example_image_3.jpg','f50b0691c8d78c5066b4d0c24119898eb70a5753',373354,1578054930,1566302417),(9,0,1578055312,0,0,1,'5',0,'/example_content/documents/TCA-Cheat-Sheet-Schoko-Vanille-Mint.pdf','ef58d41f73fb687f2c4d585915db5b7c2976b1fe','295cf7c8836fcf94ffe56305ee75d86c1cd0361f','pdf','application/pdf','TCA-Cheat-Sheet-Schoko-Vanille-Mint.pdf','fe021d30da9f44dfbcaf0ea3ad6d26ac8ed4e1b7',1528863,1578055271,1578055214),(10,0,1578055685,0,0,0,'2',0,'/typo3conf/ext/t3kit/Resources/Public/Icons/FileIcons/jpg.svg','318bc89327dcb8dbb9ffa3b33812689a4c03e109','a483d74b015e20a295d112eeb6de24ee309b0732','svg','image/svg+xml','jpg.svg','11af0ef72448883e3af908c1cfb26daf43d89dbb',1535,1565953954,1565953954),(11,0,1578055685,0,0,0,'2',0,'/typo3conf/ext/t3kit/Resources/Public/Icons/FileIcons/pdf.svg','8bf1ceff040c5452f71ce00bf8548ba8e48f91c4','a483d74b015e20a295d112eeb6de24ee309b0732','svg','image/svg+xml','pdf.svg','a6981532565f852ab7a9c1a595998b774d9d86bc',1412,1565953954,1565953954),(12,0,1578056220,0,0,1,'4',0,'/example_content/media/Tech_Tip_-_Minimal_Extension.youtube','0ea68b96161e7ceb103111389b607d740bfb2084','ceed8ac0cc09b0138c5f0cdee9c21771e9992b1b','youtube','video/youtube','Tech_Tip_-_Minimal_Extension.youtube','75bb1769b5909a075ca62651cc6b0f94f5840e22',11,1578056220,1578056220);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
INSERT INTO `sys_file_collection` VALUES (1,1,1578055347,1578055347,1,0,0,0,0,'',0,0,NULL,0,'',0,0,0,0,0,0,0,'Example File Collection','static',4,0,'',0,0);
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
  `categories` int(11) NOT NULL DEFAULT 0,
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
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES (1,0,1578047483,1578047483,1,0,0,NULL,0,'',0,0,0,0,0,0,0,1,NULL,4096,2160,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL),(2,0,1578047483,1578047483,1,0,0,NULL,0,'',0,0,0,0,0,0,0,2,NULL,0,0,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL),(3,0,1578047483,1578047483,1,0,0,NULL,0,'',0,0,0,0,0,0,0,3,NULL,0,0,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL),(4,0,1578047483,1578047483,1,0,0,NULL,0,'',0,0,0,0,0,0,0,4,NULL,521,767,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL),(5,0,1578047483,1578047483,1,0,0,NULL,0,'',0,0,0,0,0,0,0,5,'Trailer: Mackan',480,270,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL),(6,0,1578055607,1578054951,1,0,0,NULL,0,'a:25:{s:5:\"title\";N;s:11:\"description\";N;s:7:\"ranking\";N;s:8:\"keywords\";N;s:11:\"alternative\";N;s:7:\"caption\";N;s:13:\"download_name\";N;s:16:\"sys_language_uid\";N;s:7:\"creator\";N;s:12:\"creator_tool\";N;s:9:\"publisher\";N;s:6:\"source\";N;s:9:\"copyright\";N;s:8:\"language\";N;s:16:\"location_country\";N;s:15:\"location_region\";N;s:13:\"location_city\";N;s:8:\"latitude\";N;s:9:\"longitude\";N;s:21:\"content_creation_date\";N;s:25:\"content_modification_date\";N;s:7:\"visible\";N;s:6:\"status\";N;s:9:\"fe_groups\";N;s:10:\"categories\";N;}',0,0,0,0,0,0,0,6,'Title of example image 1',1920,1280,'Description of example image 1','Alternative of example image 1',0,1,'1',NULL,'Caption of example image 1','','Download Name of example image 1','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL),(7,0,1578055572,1578054951,1,0,0,NULL,0,'a:25:{s:5:\"title\";N;s:11:\"description\";N;s:7:\"ranking\";N;s:8:\"keywords\";N;s:11:\"alternative\";N;s:7:\"caption\";N;s:13:\"download_name\";N;s:16:\"sys_language_uid\";N;s:7:\"creator\";N;s:12:\"creator_tool\";N;s:9:\"publisher\";N;s:6:\"source\";N;s:9:\"copyright\";N;s:8:\"language\";N;s:16:\"location_country\";N;s:15:\"location_region\";N;s:13:\"location_city\";N;s:8:\"latitude\";N;s:9:\"longitude\";N;s:21:\"content_creation_date\";N;s:25:\"content_modification_date\";N;s:7:\"visible\";N;s:6:\"status\";N;s:9:\"fe_groups\";N;s:10:\"categories\";N;}',0,0,0,0,0,0,0,7,'Title of example image 2',1920,1281,'Description of example image 2','Alternative of example image 2',0,1,'1',NULL,'Caption of example image 2','','Download Name of example image 2','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL),(8,0,1578056578,1578054951,1,0,0,NULL,0,'a:25:{s:5:\"title\";N;s:11:\"description\";N;s:7:\"ranking\";N;s:8:\"keywords\";N;s:11:\"alternative\";N;s:7:\"caption\";N;s:13:\"download_name\";N;s:16:\"sys_language_uid\";N;s:7:\"creator\";N;s:12:\"creator_tool\";N;s:9:\"publisher\";N;s:6:\"source\";N;s:9:\"copyright\";N;s:8:\"language\";N;s:16:\"location_country\";N;s:15:\"location_region\";N;s:13:\"location_city\";N;s:8:\"latitude\";N;s:9:\"longitude\";N;s:21:\"content_creation_date\";N;s:25:\"content_modification_date\";N;s:7:\"visible\";N;s:6:\"status\";N;s:9:\"fe_groups\";N;s:10:\"categories\";N;}',0,0,0,0,0,0,0,8,'Title of example image 3',1920,1280,'Description of example image 3','Alternative of example image 3',0,1,'1',NULL,'Caption of example image 3','','Download Name of example image 3','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL),(9,0,1578055439,1578055312,1,0,0,NULL,0,'a:22:{s:5:\"title\";N;s:11:\"description\";N;s:7:\"ranking\";N;s:8:\"keywords\";N;s:7:\"caption\";N;s:13:\"download_name\";N;s:16:\"sys_language_uid\";N;s:7:\"creator\";N;s:12:\"creator_tool\";N;s:9:\"publisher\";N;s:6:\"source\";N;s:9:\"copyright\";N;s:8:\"language\";N;s:16:\"location_country\";N;s:15:\"location_region\";N;s:13:\"location_city\";N;s:21:\"content_creation_date\";N;s:25:\"content_modification_date\";N;s:7:\"visible\";N;s:6:\"status\";N;s:9:\"fe_groups\";N;s:10:\"categories\";N;}',0,0,0,0,0,0,0,9,'Title of TCA Cheat Sheet',0,0,'Description of file with TCA Cheat Sheet ',NULL,0,1,'1',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL),(10,0,1578055685,1578055685,1,0,0,NULL,0,'',0,0,0,0,0,0,0,10,NULL,32,32,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL),(11,0,1578055685,1578055685,1,0,0,NULL,0,'',0,0,0,0,0,0,0,11,NULL,32,32,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL),(12,0,1578056294,1578056220,1,0,0,NULL,0,'a:20:{s:5:\"title\";N;s:11:\"description\";N;s:7:\"ranking\";N;s:8:\"keywords\";N;s:7:\"caption\";N;s:13:\"download_name\";N;s:16:\"sys_language_uid\";N;s:7:\"creator\";N;s:12:\"creator_tool\";N;s:9:\"publisher\";N;s:6:\"source\";N;s:9:\"copyright\";N;s:8:\"language\";N;s:21:\"content_creation_date\";N;s:25:\"content_modification_date\";N;s:8:\"duration\";N;s:7:\"visible\";N;s:6:\"status\";N;s:9:\"fe_groups\";N;s:10:\"categories\";N;}',0,0,0,0,0,0,0,12,'Title of Tech Tip - Minimal Extension',480,270,'Description of Tech Tip - Minimal Extension',NULL,0,1,'1',NULL,'Caption of Tech Tip - Minimal Extension','','Download Name of Tech Tip - Minimal Extension','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL);
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
  `configuration` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
INSERT INTO `sys_file_reference` VALUES (1,1,1578055347,1578055347,1,0,0,0,0,NULL,'',0,0,0,0,0,0,0,6,1,'sys_file_collection','files',1,'sys_file',NULL,NULL,NULL,'','',0),(2,1,1578055347,1578055347,1,0,0,0,0,NULL,'',0,0,0,0,0,0,0,7,1,'sys_file_collection','files',2,'sys_file',NULL,NULL,NULL,'','',0),(3,1,1578055347,1578055347,1,0,0,0,0,NULL,'',0,0,0,0,0,0,0,8,1,'sys_file_collection','files',3,'sys_file',NULL,NULL,NULL,'','',0),(4,1,1578055347,1578055347,1,0,0,0,0,NULL,'',0,0,0,0,0,0,0,9,1,'sys_file_collection','files',4,'sys_file',NULL,NULL,NULL,'','',0),(5,5,1578055988,1578055988,1,0,0,0,0,NULL,'',0,0,0,0,0,0,0,6,16,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),(6,5,1578056259,1578056259,1,0,0,0,0,NULL,'',0,0,0,0,0,0,0,12,18,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'','',0),(7,5,1578056544,1578056544,1,0,0,0,0,NULL,'',0,0,0,0,0,0,0,6,21,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),(8,5,1578056544,1578056544,1,0,0,0,0,NULL,'',0,0,0,0,0,0,0,7,21,'tt_content','image',2,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),(9,5,1578056544,1578056544,1,0,0,0,0,NULL,'',0,0,0,0,0,0,0,8,21,'tt_content','image',3,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0);
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
INSERT INTO `sys_file_storage` VALUES (1,0,1571741572,1571741572,0,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','fileadmin/ (auto-created)','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
INSERT INTO `sys_language` VALUES (1,0,1571747339,0,256,'Swedish','se','sv'),(2,0,1571747379,0,128,'German','de','de'),(3,0,1571747428,0,64,'Norwegian','no','no'),(4,0,1571747473,0,32,'Danish','dk','da'),(5,0,1571747506,0,16,'French','fr','fr');
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
INSERT INTO `sys_lockedrecords` VALUES (130,1,1578061075,'tt_content',25,5,'admin',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_redirect`
--

LOCK TABLES `sys_redirect` WRITE;
/*!40000 ALTER TABLE `sys_redirect` DISABLE KEYS */;
INSERT INTO `sys_redirect` VALUES (1,0,1571748920,1571748920,1,0,0,0,0,'t3kit10.local','/slack',0,0,0,0,'/support',307,0,0,0),(2,0,1571749013,1571749013,1,0,0,0,0,'t3kit10.local','/documentation',0,0,0,0,'/documentationn',307,0,0,0),(3,0,1571749022,1571749022,1,0,0,0,0,'t3kit10.local','/documentationn',0,0,0,0,'/documentation',307,0,0,0);
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
INSERT INTO `sys_refindex` VALUES ('03ee0a643ed0195fb54c522a6c95985b','sys_file_metadata',8,'file','','','',0,0,0,'sys_file',8,''),('0f701991a1f1e8a0b417e38b74ffedad','sys_file',7,'storage','','','',0,0,0,'sys_file_storage',1,''),('1a0bebda8af3734351dd08be282d88dc','sys_file_reference',1,'uid_local','','','',0,0,0,'sys_file',6,''),('1b59f8395ade6d46b0561f88be1556be','tt_content',21,'image','','','',0,0,0,'sys_file_reference',7,''),('1c6b3ffd36f17c70f12a4768a19549cc','sys_file',8,'storage','','','',0,0,0,'sys_file_storage',1,''),('1f8fa2d5a5d878a715e3176ef3c9be8b','sys_file_collection',1,'files','','','',2,0,0,'sys_file_reference',3,''),('4a2ae332c1137b6867282bdcd368153e','sys_file_collection',1,'files','','','',3,0,0,'sys_file_reference',4,''),('5120b28bbcd5eaf9057b9ccd8767d204','tt_content',24,'link','','typolink','0f5b1321cb4c9299e7ce5a1168e3585e:0',-1,0,0,'pages',1,''),('517724d8de14aa37e8419771cee0c8d6','sys_file_metadata',6,'file','','','',0,0,0,'sys_file',6,''),('521e5173a1f3e30df224eb6cf29a5cf3','tt_content',23,'link','','typolink','b7f8fed71d20b2e77d7c17a0a217c9c1:0',-1,0,0,'pages',1,''),('535f11438a6359a1501e1615e384a668','tt_content',18,'assets','','','',0,0,0,'sys_file_reference',6,''),('570ba67b05ce466c3c161f06fca7620b','tt_content',12,'file_collections','','','',0,0,0,'sys_file_collection',1,''),('592702bc39be05ccc230d8b53382ca0d','sys_file_metadata',9,'file','','','',0,0,0,'sys_file',9,''),('59c41b9f1d5338d9417c9b6817e2c542','sys_file',2,'storage','','','',0,0,0,'sys_file_storage',1,''),('64027ecd11a83686fcebdb124fcfb880','sys_file_reference',4,'uid_local','','','',0,0,0,'sys_file',9,''),('6e31ce17321c553e6029bcb20ec43ade','tt_content',25,'link','','typolink','57ec5fdec59d915a98f2c460618c8810:0',-1,0,0,'pages',1,''),('764ed7b4d26b234a0b36628e00db1247','sys_file',5,'storage','','','',0,0,0,'sys_file_storage',1,''),('767bb2446ff331b05374d491dfb687e9','sys_file_metadata',7,'file','','','',0,0,0,'sys_file',7,''),('77cf74c7735b7ed06535ca691fbbfe07','sys_file',12,'storage','','','',0,0,0,'sys_file_storage',1,''),('78c4ef65d535b01f08fed2a6a4181d95','sys_file_collection',1,'files','','','',1,0,0,'sys_file_reference',2,''),('7aa5e4a1791dd828d7822e15da804816','sys_file_reference',2,'uid_local','','','',0,0,0,'sys_file',7,''),('8016114641c0014a637e29a1711ec584','tt_content',11,'file_collections','','','',0,0,0,'sys_file_collection',1,''),('8094da6831f230e8d06145f96c405daf','sys_file_reference',9,'uid_local','','','',0,0,0,'sys_file',8,''),('893e20b39f66903f90c681e8c41b6297','sys_file',3,'storage','','','',0,0,0,'sys_file_storage',1,''),('8f8e076cd5d2f1c771289250086927c1','sys_file_reference',8,'uid_local','','','',0,0,0,'sys_file',7,''),('957d6dc0f9afb9f6d9d2ac0408d45d42','sys_file_collection',1,'files','','','',0,0,0,'sys_file_reference',1,''),('9c3df5c6f56ff0a9c8bb6cd768adb9ad','sys_file_reference',6,'uid_local','','','',0,0,0,'sys_file',12,''),('a6596bb156904aba21cbdf38eceebcce','tt_content',21,'image','','','',2,0,0,'sys_file_reference',9,''),('afd76e6f2f88f6086640e9c74163893b','tt_content',2,'header_link','','typolink','81b8b33df54ef433f1cbc7c3e513e6c4:0',-1,1,0,'pages',1,''),('b1315f6a325027205050c81764294b72','sys_file',1,'storage','','','',0,0,0,'sys_file_storage',1,''),('b8f7c5f7a81efe6792630f9a8d6b15d0','sys_file',6,'storage','','','',0,0,0,'sys_file_storage',1,''),('bf89fdbec28d4945c5c85a72173608f3','sys_file_reference',7,'uid_local','','','',0,0,0,'sys_file',6,''),('c2db2d185e97fb2ed9859cfebdbe6718','sys_file',9,'storage','','','',0,0,0,'sys_file_storage',1,''),('d1657b650408849099784a78159bc058','sys_file',4,'storage','','','',0,0,0,'sys_file_storage',1,''),('d38f1f078546e608098aa9d64ed0c31b','sys_file_metadata',12,'file','','','',0,0,0,'sys_file',12,''),('e74962514db5424a4961df988288001b','sys_file_reference',3,'uid_local','','','',0,0,0,'sys_file',8,''),('ec94917ebe6c8d6fcc16fb794c9eaff7','tt_content',16,'image','','','',0,0,0,'sys_file_reference',5,''),('f158c276b68b78193b6d8b655bbabd7e','tt_content',4,'header_link','','typolink','6e311ef6da871410c737b95116694a38:0',-1,0,0,'pages',1,''),('f229ece5bd1dc48fe375e3c091334dd8','sys_file_reference',5,'uid_local','','','',0,0,0,'sys_file',6,''),('f6db70abdefe99f46e138481e1229f4c','tt_content',21,'image','','','',1,0,0,'sys_file_reference',8,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'installUpdate','TYPO3\\CMS\\Form\\Hooks\\FormFileExtensionUpdate','i:1;'),(2,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ExtensionManagerTables','i:1;'),(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Typo3DbExtractionUpdate','i:1;'),(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FuncExtractionUpdate','i:1;'),(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateUrlTypesInPagesUpdate','i:1;'),(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SeparateSysHistoryFromSysLogUpdate','i:1;'),(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectExtractionUpdate','i:1;'),(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserStartModuleUpdate','i:1;'),(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayUpdate','i:1;'),(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayBeGroupsAccessRights','i:1;'),(11,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendLayoutIconUpdateWizard','i:1;'),(12,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectsExtensionUpdate','i:1;'),(13,'installUpdate','TYPO3\\CMS\\Install\\Updates\\AdminPanelInstall','i:1;'),(14,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PopulatePageSlugs','i:1;'),(15,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Argon2iPasswordHashes','i:1;'),(16,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RsaauthExtractionUpdate','i:1;'),(17,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FeeditExtractionUpdate','i:1;'),(18,'installUpdate','TYPO3\\CMS\\Install\\Updates\\TaskcenterExtractionUpdate','i:1;'),(19,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysActionExtractionUpdate','i:1;'),(20,'installUpdate','TYPO3\\CMS\\Felogin\\Updates\\MigrateFeloginPlugins','i:1;'),(21,'core','formProtectionSessionToken:1','s:64:\"55ecede0fd1a7a4d149b16833ade70260c765c3f3f76c9ceeef72e85da4feeb3\";'),(22,'tx_reports','status.highestSeverity','i:1;'),(23,'extensionDataImport','typo3/sysext/recycler/ext_tables_static+adt.sql','s:0:\"\";'),(24,'extensionDataImport','typo3/sysext/filemetadata/ext_tables_static+adt.sql','s:0:\"\";'),(25,'extensionDataImport','typo3/sysext/extensionmanager/ext_tables_static+adt.sql','s:32:\"9beb0be917f14fdde2c9cb940a47d38e\";'),(26,'extensionDataImport','typo3/sysext/opendocs/ext_tables_static+adt.sql','s:0:\"\";'),(27,'extensionDataImport','typo3/sysext/linkvalidator/ext_tables_static+adt.sql','s:0:\"\";'),(28,'extensionDataImport','typo3/sysext/scheduler/ext_tables_static+adt.sql','s:0:\"\";'),(29,'core','sys_refindex_lastUpdate','i:1571754174;'),(30,'extensionDataImport','typo3/sysext/about/ext_tables_static+adt.sql','s:0:\"\";'),(31,'extensionDataImport','typo3/sysext/adminpanel/ext_tables_static+adt.sql','s:0:\"\";'),(32,'extensionDataImport','typo3/sysext/belog/ext_tables_static+adt.sql','s:0:\"\";'),(33,'extensionDataImport','typo3/sysext/beuser/ext_tables_static+adt.sql','s:0:\"\";'),(34,'extensionDataImport','typo3/sysext/felogin/ext_tables_static+adt.sql','s:0:\"\";'),(35,'extensionDataImport','typo3/sysext/form/ext_tables_static+adt.sql','s:0:\"\";'),(36,'extensionDataImport','typo3/sysext/info/ext_tables_static+adt.sql','s:0:\"\";'),(37,'extensionDataImport','typo3/sysext/lowlevel/ext_tables_static+adt.sql','s:0:\"\";'),(38,'extensionDataImport','typo3/sysext/redirects/ext_tables_static+adt.sql','s:0:\"\";'),(39,'extensionDataImport','typo3/sysext/viewpage/ext_tables_static+adt.sql','s:0:\"\";'),(40,'extensionDataImport','typo3/sysext/tstemplate/ext_tables_static+adt.sql','s:0:\"\";'),(41,'extensionDataImport','typo3/sysext/t3editor/ext_tables_static+adt.sql','s:0:\"\";'),(42,'extensionDataImport','typo3/sysext/sys_note/ext_tables_static+adt.sql','s:0:\"\";'),(43,'extensionDataImport','typo3/sysext/setup/ext_tables_static+adt.sql','s:0:\"\";'),(44,'extensionDataImport','typo3/sysext/seo/ext_tables_static+adt.sql','s:0:\"\";'),(45,'extensionDataImport','typo3/sysext/rte_ckeditor/ext_tables_static+adt.sql','s:0:\"\";'),(46,'extensionDataImport','typo3/sysext/reports/ext_tables_static+adt.sql','s:0:\"\";');
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
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,1572250508,1571737387,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'t3kit10','TYPO3 :: t3kit10 :: Dev mode *(local)',1,3,'EXT:form/Configuration/TypoScript/,EXT:seo/Configuration/TypoScript/XmlSitemap,EXT:t3kit/Configuration/TypoScript','','',NULL,0,0);
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
  `rowDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `categories` int(11) NOT NULL DEFAULT 0,
  `custom_header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_subheader` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `add_background` smallint(5) unsigned NOT NULL DEFAULT 0,
  `background_color_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `background_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `background` int(10) unsigned NOT NULL DEFAULT 0,
  `background_parallax` smallint(5) unsigned NOT NULL DEFAULT 0,
  `full_width_background` smallint(5) unsigned NOT NULL DEFAULT 0,
  `content_alignment` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_alignment_center` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skipLinks_mainNavigation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skipLinks_mainContent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `headerTop` int(10) unsigned NOT NULL DEFAULT 0,
  `headerTopContacts` int(10) unsigned NOT NULL DEFAULT 0,
  `headerTopLangMenu` int(10) unsigned NOT NULL DEFAULT 0,
  `headerTopSearch` int(10) unsigned NOT NULL DEFAULT 0,
  `headerTopNavigation` int(10) unsigned NOT NULL DEFAULT 0,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_icon` int(10) unsigned NOT NULL DEFAULT 0,
  `email_show_title` int(10) unsigned NOT NULL DEFAULT 0,
  `phone_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone_text` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone_icon` int(10) unsigned NOT NULL DEFAULT 0,
  `phone_show_title` int(10) unsigned NOT NULL DEFAULT 0,
  `headerMiddle` int(10) unsigned NOT NULL DEFAULT 0,
  `mainNavigation` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,1,1573833639,1573833639,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'','siteHeader','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,1,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(2,5,1578046915,1578046685,1,1,0,0,0,'',256,0,0,0,0,NULL,0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:14:\"add_background\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,'','header','Mauris eget cursus mauris, id bibendum sem.','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'In gravida tellus mattis','t3://page?uid=1',0,'1','',1,0,NULL,0,'','','',1578009600,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(3,5,1578047658,1578046781,1,0,0,0,0,'',128,0,0,0,0,NULL,0,'a:2:{s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;}',0,0,0,0,0,0,0,'','header','Mauris eget cursus mauris, id bibendum sem.','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,60,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(4,5,1578046907,1578046859,1,0,0,0,0,'',192,0,0,0,0,NULL,0,'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:14:\"add_background\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,'','text','Ut suscipit vel arcu ac finibus.','','<p>Ut rhoncus suscipit massa, ac scelerisque sapien mollis pulvinar. In vestibulum nibh libero, vel interdum eros mollis vitae. Vivamus quis ex non ex sodales consequat. Vivamus efficitur accumsan mauris sit amet posuere. Pellentesque bibendum condimentum justo, fringilla rutrum nisi aliquet vel. Morbi auctor, mi a convallis fringilla, risus nisi vulputate leo, ut cursus sapien quam vel purus. Sed eu tempus arcu, at tempus orci. Duis mattis vitae quam at facilisis. In efficitur eros et dolor tempus, ornare consequat mauris bibendum. In id pharetra purus.</p>\r\n<p>Suspendisse enim justo, aliquet a sollicitudin ut, pellentesque sodales dolor. Suspendisse potenti. Ut condimentum facilisis enim, vitae gravida felis euismod ac. Suspendisse congue condimentum eros, ac suscipit sem sagittis sit amet. Quisque ornare, mi ut tincidunt ullamcorper, eros tortor porttitor urna, et bibendum metus sapien eu nisl. Nulla pulvinar tincidunt nunc quis aliquet. Integer non vulputate orci. Sed dui lectus, feugiat non scelerisque in, ullamcorper eu nibh. Nunc non leo vitae erat tincidunt pharetra. Proin sed arcu elit. In non erat hendrerit, ullamcorper est ac, laoreet augue. Nullam sed metus eu nisl ullamcorper lacinia id sed eros. Etiam non diam quis felis pellentesque malesuada. Pellentesque aliquet sapien vitae ligula dignissim, eu ultrices enim fermentum. Vivamus vulputate nulla id ex lobortis porta.</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'Mauris eget cursus mauris','t3://page?uid=1',0,'1','',1,0,NULL,0,'','','',1577836800,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(5,5,1578046998,1578046998,1,0,0,0,0,'',448,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'','bullets','Ut vitae luctus eros.','','\r\nMauris eu velit nulla.\r\nInterdum et malesuada fames ac ante ipsum primis in faucibus.\r\nProin ut justo urna.\r\nDuis et metus velit.\r\nDonec velit dolor, iaculis mattis magna sed, dapibus tristique arcu.\r\nNam laoreet lacinia velit, eu porta lectus vulputate id.\r\nNullam tempus semper erat, in molestie ante mollis id.',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'1','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(6,5,1578047092,1578047076,1,0,0,0,0,'',704,0,0,0,0,NULL,0,'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:12:\"bullets_type\";N;s:8:\"bodytext\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:14:\"add_background\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,'','bullets','Sed id imperdiet libero.','','In urna magna, convallis ac magna nec, congue dignissim nunc.\r\nDuis tempus elit lorem, ut consectetur massa luctus id.\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\r\nFusce commodo neque in molestie interdum.\r\nNulla ac condimentum nunc.\r\nMaecenas vestibulum turpis rhoncus, convallis urna a, tempor nunc.\r\nMaecenas pharetra et magna non commodo.\r\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\r\nNullam ligula sapien, viverra eu eros at, commodo ultricies ex.\r\nMaecenas fermentum tincidunt mattis.',1,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'1','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(7,5,1578047177,1578047177,1,0,0,0,0,'',960,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'','bullets','Mauris congue nunc sed ex vulputate','','Pellentesque in massa a neque volutpat bibendum.|Phasellus est augue, tincidunt vitae ex nec, consequat auctor ligula.\r\nAenean pulvinar volutpat auctor.|Etiam bibendum, dui sit amet vestibulum fermentum, sem erat vehicula lectus, quis ornare dui quam sed mauris.\r\nIn eu orci condimentum, scelerisque arcu eget, dapibus ipsum.|Nam vulputate nunc enim.\r\nSed euismod odio nisl, eget posuere nulla varius sed.|Morbi vestibulum dui turpis, non condimentum lectus tristique tincidunt.',2,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'1','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(8,5,1578047413,1578047287,1,0,0,0,0,'',1216,0,0,0,0,NULL,0,'a:31:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:15:\"table_delimiter\";N;s:15:\"table_enclosure\";N;s:13:\"table_caption\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:14:\"add_background\";N;s:4:\"cols\";N;s:11:\"table_class\";N;s:21:\"table_header_position\";N;s:11:\"table_tfoot\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,'','table','Aliquam congue rhoncus','','Morbi at elit ante.|Curabitur in dictum libero.|Sed nec nulla eu ante sagittis rutrum.\r\nNulla condimentum leo vitae ante pretium fringilla.|Morbi ut magna iaculis odio consectetur blandit.|Nam ac rhoncus arcu.\r\nPellentesque imperdiet commodo augue, a cursus lorem.|Aenean quis diam nec lorem hendrerit porttitor pharetra sed lectus.|Sed congue, turpis consectetur mollis consequat',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'1','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','table-dark','',124,0,2,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(9,5,1578047459,1578047459,1,0,0,0,0,'',1472,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'','table','Maecenas condimentum cursus','','Morbi at elit ante.|Curabitur in dictum libero.|Sed nec nulla eu ante sagittis rutrum.\r\nNulla condimentum leo vitae ante pretium fringilla.|Morbi ut magna iaculis odio consectetur blandit.|Nam ac rhoncus arcu.\r\nPellentesque imperdiet commodo augue, a cursus lorem.|Aenean quis diam nec lorem hendrerit porttitor pharetra sed lectus.|Sed congue, turpis consectetur mollis consequat',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'1','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','table-striped,table-bordered,table-hover','',124,0,1,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(10,5,1578056375,1578047555,1,0,0,0,0,'',64,0,0,0,0,NULL,0,'a:2:{s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;}',0,0,0,0,0,0,0,'','div','[Regular Text Element]','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(11,5,1578055683,1578055683,1,0,0,0,0,'',1728,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'','uploads','Morbi at elit ante. Curabitur in dictum libero','',NULL,0,1,1,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'1','',1,0,'1',1,'creation_date','','_blank',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(12,5,1578055748,1578055748,1,0,0,0,0,'',1984,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'','uploads','Aliquam molestie felis diam','',NULL,0,1,2,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'1','',1,0,'1',1,'creation_date','asc','_blank',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(13,5,1578056457,1578055798,1,0,0,0,0,'',1088,0,0,0,0,NULL,0,'a:18:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:14:\"add_background\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,'','div','[Table]','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(14,5,1578056467,1578055901,1,0,0,0,0,'',1600,0,0,0,0,NULL,0,'a:18:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:14:\"add_background\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,'','div','[File Links]','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(15,5,1578056441,1578055927,1,0,0,0,0,'',384,0,0,0,0,NULL,0,'a:18:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:14:\"add_background\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,'','div','[Bullet List]','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(16,5,1578055988,1578055988,1,0,0,0,0,'',352,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'','textpic','Nunc scelerisque neque arcu, a ultrices justo porta a','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eu velit dictum, tempus metus eget, molestie massa. Nulla eu gravida tortor, nec dictum quam. Donec sit amet neque sit amet sapien ullamcorper bibendum ac sit amet tortor. Aliquam eget ante vulputate, euismod ante quis, molestie magna. Mauris non pulvinar lorem. Pellentesque euismod libero et nulla varius, eu semper lacus viverra. Nam eleifend, dolor et mattis sollicitudin, lectus risus tempor est, vel viverra dui sem vel odio. Nulla et vehicula turpis. Cras scelerisque tellus a dolor vulputate, id rhoncus nulla tempor. Mauris quis porta magna.</p>\r\n<p>Donec tristique turpis quis arcu pharetra malesuada. Fusce vitae imperdiet lectus, non tempor dui. Duis interdum ante sed venenatis pretium. Fusce sodales purus quam, dapibus faucibus arcu fringilla sed. Nulla vestibulum mattis tortor, aliquam aliquet tortor vulputate vitae. Maecenas urna dui, placerat eu consequat ut, sollicitudin id orci. Maecenas scelerisque, felis sed ultricies lobortis, erat neque ullamcorper turpis, quis accumsan mauris justo sed eros. Quisque eu ultrices felis, et tincidunt neque. Nullam suscipit pharetra nulla, vitae consequat nunc interdum vel. Morbi sodales efficitur ullamcorper.</p>\r\n<p>Etiam quis iaculis arcu. Donec fringilla, nibh ac tempor rhoncus, nisl quam posuere risus, quis venenatis odio nisl et enim. Praesent vitae metus bibendum, hendrerit leo eget, feugiat felis. Ut vel tempus sapien. Curabitur libero urna, feugiat ut ante et, mattis molestie purus. Mauris augue eros, iaculis dignissim massa vitae, maximus ornare arcu. Mauris nec ante non elit ullamcorper sollicitudin quis et libero. Donec erat nulla, sagittis a faucibus a, condimentum non orci.</p>',0,0,0,0,1,0,17,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'1','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(17,5,1578056418,1578056032,1,0,0,0,0,'',368,0,0,0,0,NULL,0,'a:18:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:14:\"add_background\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,'','div','[Text & Media]','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(18,5,1578056259,1578056192,1,0,0,0,0,'',376,0,0,0,0,NULL,0,'a:31:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:14:\"add_background\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,'','textmedia','Ut vel tempus sapien.','','<p>Nunc scelerisque neque arcu, a ultrices justo porta a. Curabitur sem massa, auctor sed magna eu, tristique rhoncus augue. Aenean a eros tincidunt, volutpat lectus ac, dapibus magna. Nullam vitae venenatis justo. Morbi pulvinar sagittis facilisis. Nam ullamcorper ligula purus, id mollis tortor tristique id. Nam blandit arcu sit amet mauris euismod, lacinia aliquam velit blandit. Suspendisse posuere efficitur risus, at porttitor odio. Aliquam erat volutpat. Duis at malesuada tellus. Integer feugiat non orci ac ultricies.</p>\r\n<p>Ut vel tincidunt dui. Nulla nibh enim, vulputate in libero vel, ultrices viverra nisi. Pellentesque interdum eros nisl, sed dapibus nibh congue non. Morbi felis lectus, tempor id vestibulum nec, feugiat in ante. Praesent pharetra sollicitudin ultrices. Curabitur nulla arcu, faucibus non rutrum ac, elementum ac velit. Ut pulvinar ac nisi ac pellentesque. Pellentesque congue, elit vel pulvinar auctor, ligula purus dignissim felis, non dictum nibh quam at lectus. Proin eu auctor massa. Sed viverra laoreet feugiat. Donec et pretium arcu. Phasellus imperdiet, urna ac cursus condimentum, sapien nulla venenatis nisl, id auctor enim magna ac urna. Nam id erat ultricies, suscipit nulla non, ultrices ante. Quisque sit amet purus sed arcu vehicula commodo nec sit amet nisl. In et orci dui.</p>',0,0,0,1,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'1','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(19,5,1578056387,1578056387,1,0,0,0,0,'',272,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'','div','[Text & Images]','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(20,5,1578056490,1578056490,1,0,0,0,0,'',380,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'','div','[Images only]','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(21,5,1578056544,1578056544,1,0,0,0,0,'',382,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'','image','Quisque eu ultrices felis, et tincidunt neque','',NULL,0,0,0,0,3,200,0,3,0,0,0,'default',0,'','',NULL,NULL,101,'','',1,'1','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(22,5,1578056647,1578056647,1,0,0,0,0,'',2240,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'','div','[Big icon, Text and Button]','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','','','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(23,5,1578060830,1578056709,1,0,0,0,0,'',2496,0,0,0,0,NULL,0,'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:8:\"bodytext\";N;s:10:\"link_title\";N;s:4:\"link\";N;s:24:\"content_alignment_center\";N;s:11:\"pi_flexform\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:14:\"add_background\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,'','bigIconTextButton','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','','Suspendisse ut purus lorem. Donec at justo accumsan ex vehicula ornare ut sit amet arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus laoreet congue congue. Donec pharetra nunc nibh, nec fringilla nunc tristique quis. Aliquam nisi turpis, sodales id aliquam at, rutrum in dolor. Maecenas porttitor nunc sit amet massa consectetur imperdiet. Donec in felis lorem. Donec ultrices at nulla nec sagittis.',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'1','',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"disableWholeAreaLink\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"btnAsLink\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','Nulla facilisi','t3://page?uid=1','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(24,5,1578060883,1578060883,1,0,0,0,0,'',2752,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'','bigIconTextButton','Proin felis nibh, mollis non risus','','Suspendisse ut purus lorem. Donec at justo accumsan ex vehicula ornare ut sit amet arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus laoreet congue congue. Donec pharetra nunc nibh, nec fringilla nunc tristique quis. Aliquam nisi turpis, sodales id aliquam at, rutrum in dolor. Maecenas porttitor nunc sit amet massa consectetur imperdiet. Donec in felis lorem. Donec ultrices at nulla nec sagittis.',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'1','',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"disableWholeAreaLink\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"btnAsLink\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','Etiam nisi nisi','t3://page?uid=1','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0),(25,5,1578061075,1578061075,1,0,0,0,0,'',3008,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'','bigIconTextButton','Nunc semper orci dolor, nec volutpat','','Donec et lacinia arcu. Vivamus commodo erat sit amet sodales mattis. Maecenas efficitur consectetur quam, in consectetur elit vehicula et. Proin sapien leo, sollicitudin nec urna ut, convallis pulvinar arcu. Pellentesque a nulla ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse posuere blandit ultricies.',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,101,'','',0,'1','',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"disableWholeAreaLink\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"btnAsLink\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,'','',0,'none','#fff',0,0,0,'left','center','Praesent sem mi','t3://page?uid=1','','',0,0,0,0,0,'','',0,0,'','','',0,0,0,0);
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

-- Dump completed on 2020-01-03 14:36:33
-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: t3kit10.local_db    Database: t3kit10
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.17-MariaDB-1:10.3.17+maria~bionic

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
INSERT INTO `be_users` VALUES (1,0,1571750575,1571750507,0,0,0,0,0,'Example of BE user with *Admin* rights (system maintainer).\r\nlogin: admin\r\npass: admin1234\r\n\r\nShould be removed or changed on a real project! ','admin',0,'$argon2i$v=19$m=65536,t=16,p=2$U3N3YzFxbDRlSnAzWC9rQg$UEBU3iqqpUBIvoO4GCnFW9kcqarX4vI6U4pAeEoKJw8',1,'','','',NULL,0,'',NULL,'',_binary 'a:15:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:4:{s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:9:\"tx_beuser\";s:532:\"O:40:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\ModuleData\":2:{s:9:\"\0*\0demand\";O:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\":12:{s:11:\"\0*\0userName\";s:0:\"\";s:11:\"\0*\0userType\";i:0;s:9:\"\0*\0status\";i:0;s:9:\"\0*\0logins\";i:0;s:19:\"\0*\0backendUserGroup\";i:0;s:6:\"\0*\0uid\";N;s:16:\"\0*\0_localizedUid\";N;s:15:\"\0*\0_languageUid\";N;s:16:\"\0*\0_versionedUid\";N;s:6:\"\0*\0pid\";N;s:61:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_isClone\";b:0;s:69:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_cleanProperties\";a:0:{}}s:18:\"\0*\0compareUserList\";a:0:{}}\";s:10:\"FormEngine\";a:2:{i:0;a:1:{s:32:\"89494ca03c0d71614c20797c37296c5a\";a:4:{i:0;s:5:\"admin\";i:1;a:6:{s:4:\"edit\";a:1:{s:8:\"be_users\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:31:\"&edit%5Bbe_users%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:8:\"be_users\";s:3:\"uid\";i:1;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}i:1;s:32:\"89494ca03c0d71614c20797c37296c5a\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:15:\"help_AboutAbout\";s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1571750525;s:15:\"moduleSessionID\";a:4:{s:10:\"web_layout\";s:32:\"b9ba2efdbdf4811ba07022f5070faff7\";s:9:\"tx_beuser\";s:32:\"b9ba2efdbdf4811ba07022f5070faff7\";s:10:\"FormEngine\";s:32:\"b9ba2efdbdf4811ba07022f5070faff7\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"b9ba2efdbdf4811ba07022f5070faff7\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";a:1:{s:9:\"stateHash\";a:1:{s:3:\"0_1\";s:1:\"1\";}}}}}',NULL,NULL,1,'',0,'options.showDuplicate = 1',1571750525,0,NULL,0,NULL);
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-22 13:24:14
