-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-09-04 09:08:38','2020-09-04 09:08:38','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=491 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Amazing University','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','We are pretty good','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','1','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:183:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"campuses/?$\";s:26:\"index.php?post_type=campus\";s:41:\"campuses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:36:\"campuses/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:28:\"campuses/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=campus&paged=$matches[1]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"campuses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"campuses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"campuses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"campuses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"campuses/([^/]+)/embed/?$\";s:39:\"index.php?campus=$matches[1]&embed=true\";s:29:\"campuses/([^/]+)/trackback/?$\";s:33:\"index.php?campus=$matches[1]&tb=1\";s:49:\"campuses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:44:\"campuses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:37:\"campuses/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&paged=$matches[2]\";s:44:\"campuses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&cpage=$matches[2]\";s:33:\"campuses/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?campus=$matches[1]&page=$matches[2]\";s:25:\"campuses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"campuses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"campuses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"campuses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=39&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:39:\"manual-image-crop/manual-image-crop.php\";i:2;s:19:\"members/members.php\";i:3;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','48748','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','41','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','39','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1614762517','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'initial_db_version','48748','yes');
INSERT INTO `wp_options` VALUES (96,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:96:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:16:\"restrict_content\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:12:\"delete_roles\";b:1;s:10:\"edit_roles\";b:1;s:13:\"delete_events\";b:1;s:20:\"delete_others_events\";b:1;s:21:\"delete_private_events\";b:1;s:23:\"delete_published_events\";b:1;s:11:\"edit_events\";b:1;s:18:\"edit_others_events\";b:1;s:19:\"edit_private_events\";b:1;s:21:\"edit_published_events\";b:1;s:14:\"publish_events\";b:1;s:19:\"read_private_events\";b:1;s:14:\"delete_campuss\";b:1;s:21:\"delete_others_campuss\";b:1;s:22:\"delete_private_campuss\";b:1;s:24:\"delete_published_campuss\";b:1;s:12:\"edit_campuss\";b:1;s:19:\"edit_others_campuss\";b:1;s:20:\"edit_private_campuss\";b:1;s:22:\"edit_published_campuss\";b:1;s:15:\"publish_campuss\";b:1;s:20:\"read_private_campuss\";b:1;s:10:\"edit_notes\";b:1;s:17:\"edit_others_notes\";b:1;s:12:\"delete_notes\";b:1;s:13:\"publish_notes\";b:1;s:18:\"read_private_notes\";b:1;s:20:\"delete_private_notes\";b:1;s:22:\"delete_published_notes\";b:1;s:19:\"delete_others_notes\";b:1;s:18:\"edit_private_notes\";b:1;s:20:\"edit_published_notes\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:5:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_notes\";b:1;s:10:\"edit_notes\";b:1;s:13:\"publish_notes\";b:1;}}s:13:\"event_planner\";a:2:{s:4:\"name\";s:13:\"Event Planner\";s:12:\"capabilities\";a:11:{s:4:\"read\";b:1;s:11:\"edit_events\";b:1;s:18:\"edit_others_events\";b:1;s:13:\"delete_events\";b:1;s:14:\"publish_events\";b:1;s:19:\"read_private_events\";b:1;s:21:\"delete_private_events\";b:1;s:23:\"delete_published_events\";b:1;s:20:\"delete_others_events\";b:1;s:19:\"edit_private_events\";b:1;s:21:\"edit_published_events\";b:1;}}s:14:\"campus_manager\";a:2:{s:4:\"name\";s:14:\"Campus Manager\";s:12:\"capabilities\";a:11:{s:4:\"read\";b:1;s:12:\"edit_campuss\";b:1;s:19:\"edit_others_campuss\";b:1;s:14:\"delete_campuss\";b:1;s:15:\"publish_campuss\";b:1;s:20:\"read_private_campuss\";b:1;s:22:\"delete_private_campuss\";b:1;s:24:\"delete_published_campuss\";b:1;s:21:\"delete_others_campuss\";b:1;s:20:\"edit_private_campuss\";b:1;s:22:\"edit_published_campuss\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (97,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (98,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:6:{i:1600585721;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1600592921;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600593083;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600593085;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601111321;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'nonce_key','-(|$l9Qn:f@yz-,6F/HB6piY[,[E~2Qx0({}AYOv@<MT[hV6M(0PdzGo>T$J,ru}','no');
INSERT INTO `wp_options` VALUES (112,'nonce_salt','q.IU#)6*zRx;;Ma |gW`hiudC1{h!F7?PmnGnJFtG:kdmWO N6n!PA_=ce63Nu@1','no');
INSERT INTO `wp_options` VALUES (113,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (118,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1600584029;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1600584031;s:7:\"checked\";a:1:{s:26:\"fictional-university-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1599211978;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (132,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (145,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (148,'current_theme','Fictional University','yes');
INSERT INTO `wp_options` VALUES (149,'theme_mods_fictional-university-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:17:\"footerLocationOne\";i:3;s:17:\"footerLocationTwo\";i:5;s:18:\"headerMenuLocation\";i:6;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (150,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (153,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (154,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (158,'recovery_mode_email_last_sent','1600064315','yes');
INSERT INTO `wp_options` VALUES (172,'_transient_health-check-site-status-result','{\"good\":11,\"recommended\":9,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (190,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (192,'_wp_suggested_policy_text_has_changed','not-changed','yes');
INSERT INTO `wp_options` VALUES (207,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (258,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (259,'acf_version','5.9.1','yes');
INSERT INTO `wp_options` VALUES (321,'mic_make2x','true','yes');
INSERT INTO `wp_options` VALUES (436,'_transient_timeout_members_30days_flag','1602780805','no');
INSERT INTO `wp_options` VALUES (437,'_transient_members_30days_flag','1','no');
INSERT INTO `wp_options` VALUES (438,'members_addons_migrated','1','yes');
INSERT INTO `wp_options` VALUES (439,'widget_members-widget-login','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (440,'widget_members-widget-users','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (484,'members_review_prompt_removed','1','yes');
INSERT INTO `wp_options` VALUES (485,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1600584029;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"members/members.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/members\";s:4:\"slug\";s:7:\"members\";s:6:\"plugin\";s:19:\"members/members.php\";s:11:\"new_version\";s:5:\"3.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/members/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/members.3.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/members/assets/icon-256x256.png?rev=2126126\";s:2:\"1x\";s:60:\"https://ps.w.org/members/assets/icon-128x128.png?rev=2126126\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/members/assets/banner-1544x500.jpg?rev=2314844\";s:2:\"1x\";s:62:\"https://ps.w.org/members/assets/banner-772x250.jpg?rev=2314844\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.3\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (487,'_site_transient_timeout_theme_roots','1600585830','no');
INSERT INTO `wp_options` VALUES (488,'_site_transient_theme_roots','a:1:{s:26:\"fictional-university-theme\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (489,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1601188832','no');
INSERT INTO `wp_options` VALUES (490,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=469 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1599211099:1');
INSERT INTO `wp_postmeta` VALUES (6,7,'_edit_lock','1599211215:1');
INSERT INTO `wp_postmeta` VALUES (9,9,'_edit_lock','1599214310:1');
INSERT INTO `wp_postmeta` VALUES (10,11,'_edit_lock','1599441664:1');
INSERT INTO `wp_postmeta` VALUES (13,11,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (14,11,'_wp_trash_meta_time','1599441821');
INSERT INTO `wp_postmeta` VALUES (15,11,'_wp_desired_post_slug','about-us');
INSERT INTO `wp_postmeta` VALUES (16,13,'_edit_lock','1599705534:1');
INSERT INTO `wp_postmeta` VALUES (17,3,'_edit_lock','1599453496:1');
INSERT INTO `wp_postmeta` VALUES (18,16,'_edit_lock','1599447357:1');
INSERT INTO `wp_postmeta` VALUES (19,18,'_edit_lock','1599449003:1');
INSERT INTO `wp_postmeta` VALUES (20,20,'_edit_lock','1599453922:1');
INSERT INTO `wp_postmeta` VALUES (21,22,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (22,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (23,22,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (24,22,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (25,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (26,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (27,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (28,22,'_menu_item_url','http://fictional-university.local/');
INSERT INTO `wp_postmeta` VALUES (29,22,'_menu_item_orphaned','1599448837');
INSERT INTO `wp_postmeta` VALUES (39,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (40,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (41,24,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (42,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (43,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (44,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (45,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (46,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (47,24,'_menu_item_orphaned','1599448837');
INSERT INTO `wp_postmeta` VALUES (57,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (58,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (59,26,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (60,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (61,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (62,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (63,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (64,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (65,26,'_menu_item_orphaned','1599448837');
INSERT INTO `wp_postmeta` VALUES (66,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (67,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (68,27,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (69,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (70,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (71,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (72,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (73,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (74,27,'_menu_item_orphaned','1599448837');
INSERT INTO `wp_postmeta` VALUES (75,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (76,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (77,28,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (78,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (79,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (80,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (81,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (82,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (83,28,'_menu_item_orphaned','1599448837');
INSERT INTO `wp_postmeta` VALUES (84,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (85,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (86,29,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (87,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (88,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (89,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (90,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (91,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (92,29,'_menu_item_orphaned','1599448837');
INSERT INTO `wp_postmeta` VALUES (93,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (94,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (95,30,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (96,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (97,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (98,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (99,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (100,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (102,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (103,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (104,31,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (105,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (106,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (107,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (108,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (109,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (129,3,'_wp_suggested_privacy_policy_content','a:3:{s:11:\"plugin_name\";s:9:\"WordPress\";s:11:\"policy_text\";s:11792:\"<div class=\"wp-suggested-text\"><h2>Who we are</h2><p class=\"privacy-policy-tutorial\">In this section you should note your site URL, as well as the name of the company, organization, or individual behind it, and some accurate contact information.</p><p class=\"privacy-policy-tutorial\">The amount of information you may be required to show will vary depending on your local or national business regulations. You may, for example, be required to display a physical address, a registered address, or your company registration number.</p><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://fictional-university.local.</p><h2>What personal data we collect and why we collect it</h2><p class=\"privacy-policy-tutorial\">In this section you should note what personal data you collect from users and site visitors. This may include personal data, such as name, email address, personal account preferences; transactional data, such as purchase information; and technical data, such as information about cookies.</p><p class=\"privacy-policy-tutorial\">You should also note any collection and retention of sensitive personal data, such as data concerning health.</p><p class=\"privacy-policy-tutorial\">In addition to listing what personal data you collect, you need to note why you collect it. These explanations must note either the legal basis for your data collection and retention or the active consent the user has given.</p><p class=\"privacy-policy-tutorial\">Personal data is not just created by a user&#8217;s interactions with your site. Personal data is also generated from technical processes such as contact forms, comments, cookies, analytics, and third party embeds.</p><p class=\"privacy-policy-tutorial\">By default WordPress does not collect any personal data about visitors, and only collects the data shown on the User Profile screen from registered users. However some of your plugins may collect personal data. You should add the relevant information below.</p><h3>Comments</h3><p class=\"privacy-policy-tutorial\">In this subsection you should note what information is captured through comments. We have noted the data which WordPress collects by default.</p><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p class=\"privacy-policy-tutorial\">In this subsection you should note what information may be disclosed by users who can upload media files. All uploaded files are usually publicly accessible.</p><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><p class=\"privacy-policy-tutorial\">By default, WordPress does not include a contact form. If you use a contact form plugin, use this subsection to note what personal data is captured when someone submits a contact form, and how long you keep it. For example, you may note that you keep contact form submissions for a certain period for customer service purposes, but you do not use the information submitted through them for marketing purposes.</p><h3>Cookies</h3><p class=\"privacy-policy-tutorial\">In this subsection you should list the cookies your web site uses, including those set by your plugins, social media, and analytics. We have provided the cookies which WordPress installs by default.</p><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><p class=\"privacy-policy-tutorial\">In this subsection you should note what analytics package you use, how users can opt out of analytics tracking, and a link to your analytics provider&#8217;s privacy policy, if any.</p><p class=\"privacy-policy-tutorial\">By default WordPress does not collect any analytics data. However, many web hosting accounts collect some anonymous analytics data. You may also have installed a WordPress plugin that provides analytics services. In that case, add information from that plugin here.</p><h2>Who we share your data with</h2><p class=\"privacy-policy-tutorial\">In this section you should name and list all third party providers with whom you share site data, including partners, cloud-based services, payment processors, and third party service providers, and note what data you share with them and why. Link to their own privacy policies if possible.</p><p class=\"privacy-policy-tutorial\">By default WordPress does not share any personal data with anyone.</p><h2>How long we retain your data</h2><p class=\"privacy-policy-tutorial\">In this section you should explain how long you retain personal data collected or processed by the web site. While it is your responsibility to come up with the schedule of how long you keep each dataset for and why you keep it, that information does need to be listed here. For example, you may want to say that you keep contact form entries for six months, analytics records for a year, and customer purchase records for ten years.</p><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p class=\"privacy-policy-tutorial\">In this section you should explain what rights your users have over their data and how they can invoke those rights.</p><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p class=\"privacy-policy-tutorial\">In this section you should list all transfers of your site data outside the European Union and describe the means by which that data is safeguarded to European data protection standards. This could include your web hosting, cloud storage, or other third party services.</p><p class=\"privacy-policy-tutorial\">European data protection law requires data about European residents which is transferred outside the European Union to be safeguarded to the same standards as if the data was in Europe. So in addition to listing where data goes, you should describe how you ensure that these standards are met either by yourself or by your third party providers, whether that is through an agreement such as Privacy Shield, model clauses in your contracts, or binding corporate rules.</p><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><p class=\"privacy-policy-tutorial\">In this section you should provide a contact method for privacy-specific concerns. If you are required to have a Data Protection Officer, list their name and full contact details here as well.</p><h2>Additional information</h2><p class=\"privacy-policy-tutorial\">If you use your site for commercial purposes and you engage in more complex collection or processing of personal data, you should note the following information in your privacy policy in addition to the information we have already discussed.</p><h3>How we protect your data</h3><p class=\"privacy-policy-tutorial\">In this section you should explain what measures you have taken to protect your users&#8217; data. This could include technical measures such as encryption; security measures such as two factor authentication; and measures such as staff training in data protection. If you have carried out a Privacy Impact Assessment, you can mention it here too.</p><h3>What data breach procedures we have in place</h3><p class=\"privacy-policy-tutorial\">In this section you should explain what procedures you have in place to deal with data breaches, either potential or real, such as internal reporting systems, contact mechanisms, or bug bounties.</p><h3>What third parties we receive data from</h3><p class=\"privacy-policy-tutorial\">If your web site receives data about users from third parties, including advertisers, this information must be included within the section of your privacy policy dealing with third party data.</p><h3>What automated decision making and/or profiling we do with user data</h3><p class=\"privacy-policy-tutorial\">If your web site provides a service which includes automated decision making - for example, allowing customers to apply for credit, or aggregating their data into an advertising profile - you must note that this is taking place, and include information about how that information is used, what decisions are made with that aggregated data, and what rights users have over decisions made without human intervention.</p><h3>Industry regulatory disclosure requirements</h3><p class=\"privacy-policy-tutorial\">If you are a member of a regulated industry, or if you are subject to additional privacy laws, you may be required to disclose that information here.</p></div>\";s:5:\"added\";i:1599453641;}');
INSERT INTO `wp_postmeta` VALUES (130,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (131,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (132,34,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (133,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (134,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (135,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (136,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (137,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (148,36,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (149,36,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (150,36,'_menu_item_object_id','36');
INSERT INTO `wp_postmeta` VALUES (151,36,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (152,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (153,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (154,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (155,36,'_menu_item_url','http://www.google.com');
INSERT INTO `wp_postmeta` VALUES (157,37,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (158,37,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (159,37,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (160,37,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (161,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (162,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (163,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (164,37,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (166,38,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (167,38,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (168,38,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (169,38,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (170,38,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (171,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (172,38,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (173,38,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (175,39,'_edit_lock','1599486373:1');
INSERT INTO `wp_postmeta` VALUES (176,41,'_edit_lock','1599486161:1');
INSERT INTO `wp_postmeta` VALUES (177,43,'_edit_lock','1599533192:1');
INSERT INTO `wp_postmeta` VALUES (184,46,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (185,46,'_edit_lock','1599693255:1');
INSERT INTO `wp_postmeta` VALUES (186,47,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (187,47,'_edit_lock','1600079775:1');
INSERT INTO `wp_postmeta` VALUES (188,48,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (189,48,'_edit_lock','1600079775:1');
INSERT INTO `wp_postmeta` VALUES (194,52,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (195,52,'_edit_lock','1599534956:1');
INSERT INTO `wp_postmeta` VALUES (196,48,'event_date','20210910');
INSERT INTO `wp_postmeta` VALUES (197,48,'_event_date','field_5f56f5671e4be');
INSERT INTO `wp_postmeta` VALUES (198,47,'event_date','20201231');
INSERT INTO `wp_postmeta` VALUES (199,47,'_event_date','field_5f56f5671e4be');
INSERT INTO `wp_postmeta` VALUES (200,46,'event_date','20210921');
INSERT INTO `wp_postmeta` VALUES (201,46,'_event_date','field_5f56f5671e4be');
INSERT INTO `wp_postmeta` VALUES (202,54,'_edit_lock','1599539239:1');
INSERT INTO `wp_postmeta` VALUES (203,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (204,54,'event_date','20201230');
INSERT INTO `wp_postmeta` VALUES (205,54,'_event_date','field_5f56f5671e4be');
INSERT INTO `wp_postmeta` VALUES (206,55,'_edit_lock','1599540629:1');
INSERT INTO `wp_postmeta` VALUES (207,57,'_edit_lock','1599707205:1');
INSERT INTO `wp_postmeta` VALUES (208,57,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (209,57,'event_date','20190101');
INSERT INTO `wp_postmeta` VALUES (210,57,'_event_date','field_5f56f5671e4be');
INSERT INTO `wp_postmeta` VALUES (211,58,'_edit_lock','1600084815:1');
INSERT INTO `wp_postmeta` VALUES (212,59,'_edit_lock','1600065966:1');
INSERT INTO `wp_postmeta` VALUES (213,60,'_edit_lock','1599625821:1');
INSERT INTO `wp_postmeta` VALUES (215,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (216,62,'_edit_lock','1599693906:1');
INSERT INTO `wp_postmeta` VALUES (217,47,'related_programs','a:2:{i:0;s:2:\"59\";i:1;s:2:\"58\";}');
INSERT INTO `wp_postmeta` VALUES (218,47,'_related_programs','field_5f585f32c3dc8');
INSERT INTO `wp_postmeta` VALUES (219,46,'related_programs','');
INSERT INTO `wp_postmeta` VALUES (220,46,'_related_programs','field_5f585f32c3dc8');
INSERT INTO `wp_postmeta` VALUES (221,48,'related_programs','a:1:{i:0;s:2:\"60\";}');
INSERT INTO `wp_postmeta` VALUES (222,48,'_related_programs','field_5f585f32c3dc8');
INSERT INTO `wp_postmeta` VALUES (223,47,'_wp_old_date','2021-09-07');
INSERT INTO `wp_postmeta` VALUES (224,46,'_wp_old_date','2021-09-07');
INSERT INTO `wp_postmeta` VALUES (225,64,'_edit_lock','1599698989:1');
INSERT INTO `wp_postmeta` VALUES (226,65,'_edit_lock','1600194670:1');
INSERT INTO `wp_postmeta` VALUES (227,65,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (228,65,'related_programs','a:1:{i:0;s:2:\"59\";}');
INSERT INTO `wp_postmeta` VALUES (229,65,'_related_programs','field_5f585f32c3dc8');
INSERT INTO `wp_postmeta` VALUES (230,66,'_wp_attached_file','2020/09/barksalot.jpg');
INSERT INTO `wp_postmeta` VALUES (231,66,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:400;s:6:\"height\";i:260;s:4:\"file\";s:21:\"2020/09/barksalot.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"barksalot-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"barksalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (232,67,'_wp_attached_file','2020/09/barksalot-1-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (233,67,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:30:\"2020/09/barksalot-1-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"barksalot-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"barksalot-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"barksalot-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"barksalot-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"barksalot-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:25:\"barksalot-1-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:23:\"barksalot-1-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:23:\"barksalot-1-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"barksalot-1.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (234,68,'_wp_attached_file','2020/09/frog-bio-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (235,68,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1999;s:4:\"file\";s:27:\"2020/09/frog-bio-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"frog-bio-300x234.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"frog-bio-1024x800.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"frog-bio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"frog-bio-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"frog-bio-1536x1199.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"frog-bio-2048x1599.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:20:\"frog-bio-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:20:\"frog-bio-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"frog-bio.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (236,69,'_wp_attached_file','2020/09/meowsalot-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (237,69,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2020/09/meowsalot-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"meowsalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"meowsalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"meowsalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"meowsalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"meowsalot-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"meowsalot-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"meowsalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:21:\"meowsalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"meowsalot.jpg\";s:15:\"micSelectedArea\";a:2:{s:18:\"professorLandscape\";a:5:{s:1:\"x\";s:2:\"71\";s:1:\"y\";s:2:\"37\";s:1:\"w\";s:18:\"369.23076923075996\";s:1:\"h\";s:3:\"240\";s:5:\"scale\";s:4:\"5.12\";}s:17:\"professorPortrait\";a:5:{s:1:\"x\";s:3:\"118\";s:1:\"y\";s:2:\"10\";s:1:\"w\";s:18:\"225.23076923076968\";s:1:\"h\";s:3:\"305\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (238,65,'_thumbnail_id','67');
INSERT INTO `wp_postmeta` VALUES (239,64,'_thumbnail_id','69');
INSERT INTO `wp_postmeta` VALUES (240,64,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (241,64,'related_programs','a:1:{i:0;s:2:\"59\";}');
INSERT INTO `wp_postmeta` VALUES (242,64,'_related_programs','field_5f585f32c3dc8');
INSERT INTO `wp_postmeta` VALUES (243,70,'_edit_lock','1599697951:1');
INSERT INTO `wp_postmeta` VALUES (244,70,'_thumbnail_id','68');
INSERT INTO `wp_postmeta` VALUES (245,70,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (246,70,'related_programs','a:1:{i:0;s:2:\"58\";}');
INSERT INTO `wp_postmeta` VALUES (247,70,'_related_programs','field_5f585f32c3dc8');
INSERT INTO `wp_postmeta` VALUES (248,71,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (249,71,'_edit_lock','1599699163:1');
INSERT INTO `wp_postmeta` VALUES (250,74,'_wp_attached_file','2020/09/field-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (251,74,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:24:\"2020/09/field-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"field-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"field-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"field-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"field-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"field-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:19:\"field-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:17:\"field-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:17:\"field-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:18:\"field-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:9:\"field.jpg\";s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:3:\"172\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"116.66666666666629\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (252,65,'page_banner_subtitle','The leading voice on barking and biology.');
INSERT INTO `wp_postmeta` VALUES (253,65,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (254,65,'page_banner_background_image','74');
INSERT INTO `wp_postmeta` VALUES (255,65,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (256,75,'_wp_attached_file','2020/09/building-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (257,75,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:27:\"2020/09/building-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"building-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"building-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"building-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"building-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"building-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"building-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:20:\"building-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:20:\"building-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:21:\"building-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"building.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (258,13,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (259,13,'page_banner_subtitle','We are a great school tha has been around for a long time.');
INSERT INTO `wp_postmeta` VALUES (260,13,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (261,13,'page_banner_background_image','75');
INSERT INTO `wp_postmeta` VALUES (262,13,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (263,76,'page_banner_subtitle','We are a great school tha has been around for a long time.');
INSERT INTO `wp_postmeta` VALUES (264,76,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (265,76,'page_banner_background_image','75');
INSERT INTO `wp_postmeta` VALUES (266,76,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (267,77,'_wp_attached_file','2020/09/notebook-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (268,77,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1922;s:4:\"file\";s:27:\"2020/09/notebook-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"notebook-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"notebook-1024x769.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:769;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"notebook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"notebook-768x577.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"notebook-1536x1153.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1153;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"notebook-2048x1538.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:20:\"notebook-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:20:\"notebook-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:21:\"notebook-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"notebook.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (269,48,'page_banner_subtitle','The greatest day of the year.');
INSERT INTO `wp_postmeta` VALUES (270,48,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (271,48,'page_banner_background_image','77');
INSERT INTO `wp_postmeta` VALUES (272,48,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (273,79,'_edit_lock','1599802087:1');
INSERT INTO `wp_postmeta` VALUES (274,79,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (275,79,'page_banner_subtitle','A beautiful campus in the heart of  donwtown.');
INSERT INTO `wp_postmeta` VALUES (276,79,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (277,79,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (278,79,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (279,80,'_edit_lock','1599802001:1');
INSERT INTO `wp_postmeta` VALUES (280,80,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (281,80,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (282,80,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (283,80,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (284,80,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (285,81,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (286,81,'_edit_lock','1599799159:1');
INSERT INTO `wp_postmeta` VALUES (287,80,'map_location','a:10:{s:7:\"address\";s:105:\"Japan, 〒100-0012 Tōkyō-to, Chiyoda City, Hibiyakōen, 1−４ 千代田区立日比谷図書文化館\";s:3:\"lat\";d:35.672149273279075;s:3:\"lng\";d:139.75476264953613;s:4:\"zoom\";i:14;s:8:\"place_id\";s:27:\"ChIJcxBje-2LGGARfMO9gyvRuqw\";s:4:\"city\";s:12:\"Chiyoda City\";s:5:\"state\";s:10:\"Tōkyō-to\";s:9:\"post_code\";s:8:\"100-0012\";s:7:\"country\";s:5:\"Japan\";s:13:\"country_short\";s:2:\"JP\";}');
INSERT INTO `wp_postmeta` VALUES (288,80,'_map_location','field_5f5affc273b4b');
INSERT INTO `wp_postmeta` VALUES (289,79,'map_location','a:10:{s:7:\"address\";s:30:\"京王永山　クリナード\";s:3:\"lat\";d:35.629196200000003;s:3:\"lng\";d:139.44827269999999;s:4:\"zoom\";i:14;s:8:\"place_id\";s:27:\"ChIJFRzNCVX7GGARm7yxpWzay-A\";s:4:\"city\";s:4:\"Tama\";s:5:\"state\";s:10:\"Tōkyō-to\";s:9:\"post_code\";s:8:\"206-0025\";s:7:\"country\";s:5:\"Japan\";s:13:\"country_short\";s:2:\"JP\";}');
INSERT INTO `wp_postmeta` VALUES (290,79,'_map_location','field_5f5affc273b4b');
INSERT INTO `wp_postmeta` VALUES (291,83,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (292,83,'_edit_lock','1599804057:1');
INSERT INTO `wp_postmeta` VALUES (293,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (294,58,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (295,58,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (296,58,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (297,58,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (298,58,'related_campus','a:1:{i:0;s:2:\"79\";}');
INSERT INTO `wp_postmeta` VALUES (299,58,'_related_campus','field_5f5b12f365b64');
INSERT INTO `wp_postmeta` VALUES (300,85,'_edit_lock','1599995102:1');
INSERT INTO `wp_postmeta` VALUES (303,85,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (304,85,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (305,85,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (306,85,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (307,85,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (308,86,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (309,86,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (310,86,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (311,86,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (312,59,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (313,59,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (314,59,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (315,59,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (316,59,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (317,59,'related_campus','');
INSERT INTO `wp_postmeta` VALUES (318,59,'_related_campus','field_5f5b12f365b64');
INSERT INTO `wp_postmeta` VALUES (319,87,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (320,87,'_edit_lock','1600065500:1');
INSERT INTO `wp_postmeta` VALUES (321,59,'main_body_content','<!-- wp:paragraph -->\r\n\r\nThe biology program works closely with the math program.\r\n\r\n<!-- /wp:paragraph --> <!-- wp:paragraph -->\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n<!-- /wp:paragraph -->');
INSERT INTO `wp_postmeta` VALUES (322,59,'_main_body_content','field_5f5f101f8fb27');
INSERT INTO `wp_postmeta` VALUES (323,47,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (324,47,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (325,47,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (326,47,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (327,89,'_edit_lock','1600186036:1');
INSERT INTO `wp_postmeta` VALUES (328,89,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (329,89,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (330,89,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (331,89,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (332,89,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (333,90,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (334,90,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (335,90,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (336,90,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (337,92,'_edit_lock','1600190040:2');
INSERT INTO `wp_postmeta` VALUES (338,92,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (339,92,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (340,92,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (341,92,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (342,92,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (343,92,'event_date','20201227');
INSERT INTO `wp_postmeta` VALUES (344,92,'_event_date','field_5f56f5671e4be');
INSERT INTO `wp_postmeta` VALUES (345,92,'related_programs','a:1:{i:0;s:2:\"58\";}');
INSERT INTO `wp_postmeta` VALUES (346,92,'_related_programs','field_5f585f32c3dc8');
INSERT INTO `wp_postmeta` VALUES (347,93,'_edit_lock','1600231229:1');
INSERT INTO `wp_postmeta` VALUES (348,93,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (349,93,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (350,93,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (351,93,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (352,93,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (353,94,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (354,94,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (355,94,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (356,94,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (357,95,'_edit_lock','1600231498:1');
INSERT INTO `wp_postmeta` VALUES (358,95,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (359,95,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (360,95,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (361,95,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (362,95,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (363,96,'_edit_lock','1600235545:1');
INSERT INTO `wp_postmeta` VALUES (364,96,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (365,96,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (366,96,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (367,96,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (368,96,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (372,96,'_wp_old_slug','math-lecture-1__trashed');
INSERT INTO `wp_postmeta` VALUES (379,95,'_wp_old_slug','biology-lecture-4__trashed');
INSERT INTO `wp_postmeta` VALUES (392,98,'_edit_lock','1600404387:1');
INSERT INTO `wp_postmeta` VALUES (393,98,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (394,98,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (395,98,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (396,98,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (397,98,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (398,104,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (399,104,'_wp_trash_meta_time','1600405491');
INSERT INTO `wp_postmeta` VALUES (400,104,'_wp_desired_post_slug','hello-world-5000-2');
INSERT INTO `wp_postmeta` VALUES (407,107,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (408,107,'_wp_trash_meta_time','1600406328');
INSERT INTO `wp_postmeta` VALUES (409,107,'_wp_desired_post_slug','cat-note-1');
INSERT INTO `wp_postmeta` VALUES (410,108,'_edit_lock','1600406816:1');
INSERT INTO `wp_postmeta` VALUES (411,108,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (412,108,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (413,108,'_page_banner_subtitle','field_5f5978cfb5722');
INSERT INTO `wp_postmeta` VALUES (414,108,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (415,108,'_page_banner_background_image','field_5f5978efb5723');
INSERT INTO `wp_postmeta` VALUES (416,101,'_edit_lock','1600406717:1');
INSERT INTO `wp_postmeta` VALUES (417,106,'_wp_old_slug','caths-love-math__trashed');
INSERT INTO `wp_postmeta` VALUES (418,105,'_wp_old_slug','hello-world-5000-3__trashed');
INSERT INTO `wp_postmeta` VALUES (419,105,'_edit_lock','1600406830:1');
INSERT INTO `wp_postmeta` VALUES (420,105,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (421,105,'_wp_trash_meta_time','1600406986');
INSERT INTO `wp_postmeta` VALUES (422,105,'_wp_desired_post_slug','hello-world-5000-3');
INSERT INTO `wp_postmeta` VALUES (423,113,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (424,113,'_wp_trash_meta_time','1600407918');
INSERT INTO `wp_postmeta` VALUES (425,113,'_wp_desired_post_slug','new-privacy-test');
INSERT INTO `wp_postmeta` VALUES (426,117,'_edit_lock','1600411570:1');
INSERT INTO `wp_postmeta` VALUES (427,117,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (428,117,'_wp_trash_meta_time','1600408627');
INSERT INTO `wp_postmeta` VALUES (429,117,'_wp_desired_post_slug','subscriber-html-test');
INSERT INTO `wp_postmeta` VALUES (430,119,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (431,119,'_wp_trash_meta_time','1600409350');
INSERT INTO `wp_postmeta` VALUES (432,119,'_wp_desired_post_slug','this-post-is-amazing-2');
INSERT INTO `wp_postmeta` VALUES (433,118,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (434,118,'_wp_trash_meta_time','1600409449');
INSERT INTO `wp_postmeta` VALUES (435,118,'_wp_desired_post_slug','this-post-is-amazing');
INSERT INTO `wp_postmeta` VALUES (436,115,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (437,115,'_wp_trash_meta_time','1600409731');
INSERT INTO `wp_postmeta` VALUES (438,115,'_wp_desired_post_slug','malcious-user');
INSERT INTO `wp_postmeta` VALUES (439,115,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (440,115,'_wp_trash_meta_time','1600409732');
INSERT INTO `wp_postmeta` VALUES (441,115,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (442,115,'_wp_trash_meta_time','1600409734');
INSERT INTO `wp_postmeta` VALUES (443,120,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (444,120,'_wp_trash_meta_time','1600410648');
INSERT INTO `wp_postmeta` VALUES (445,120,'_wp_desired_post_slug','this-post-is-amazing-3');
INSERT INTO `wp_postmeta` VALUES (446,115,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (447,115,'_wp_trash_meta_time','1600411406');
INSERT INTO `wp_postmeta` VALUES (448,114,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (449,114,'_wp_trash_meta_time','1600411409');
INSERT INTO `wp_postmeta` VALUES (450,114,'_wp_desired_post_slug','asfdasfdasfsafd');
INSERT INTO `wp_postmeta` VALUES (451,121,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (452,121,'_wp_trash_meta_time','1600411522');
INSERT INTO `wp_postmeta` VALUES (453,121,'_wp_desired_post_slug','afasdfasf');
INSERT INTO `wp_postmeta` VALUES (454,122,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (455,122,'_wp_trash_meta_time','1600411640');
INSERT INTO `wp_postmeta` VALUES (456,122,'_wp_desired_post_slug','sdfasdfas');
INSERT INTO `wp_postmeta` VALUES (457,123,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (458,123,'_wp_trash_meta_time','1600422142');
INSERT INTO `wp_postmeta` VALUES (459,123,'_wp_desired_post_slug','testtes');
INSERT INTO `wp_postmeta` VALUES (460,124,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (461,124,'_wp_trash_meta_time','1600422150');
INSERT INTO `wp_postmeta` VALUES (462,124,'_wp_desired_post_slug','sdfsdfa');
INSERT INTO `wp_postmeta` VALUES (463,125,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (464,125,'_wp_trash_meta_time','1600422487');
INSERT INTO `wp_postmeta` VALUES (465,125,'_wp_desired_post_slug','test');
INSERT INTO `wp_postmeta` VALUES (466,126,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (467,126,'_wp_trash_meta_time','1600422619');
INSERT INTO `wp_postmeta` VALUES (468,126,'_wp_desired_post_slug','sfasdfsfdsa');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-09-04 09:08:38','2020-09-04 09:08:38','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-09-04 09:08:38','2020-09-04 09:08:38','',0,'http://fictional-university.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-09-04 09:08:38','2020-09-04 09:08:38','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://fictional-university.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-09-04 09:08:38','2020-09-04 09:08:38','',0,'http://fictional-university.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-09-04 09:08:38','2020-09-04 09:08:38','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://fictional-university.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2020-09-07 01:24:18','2020-09-07 01:24:18','',0,'http://fictional-university.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2020-09-04 09:20:40','2020-09-04 09:20:40','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','First Post','','publish','open','open','','first-post','','','2020-09-04 09:20:40','2020-09-04 09:20:40','',0,'http://fictional-university.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-09-04 09:20:40','2020-09-04 09:20:40','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','First Post','','inherit','closed','closed','','5-revision-v1','','','2020-09-04 09:20:40','2020-09-04 09:20:40','',5,'http://fictional-university.local/5-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-09-04 09:21:05','2020-09-04 09:21:05','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Second Test Post','','publish','open','open','','second-test-post','','','2020-09-04 09:21:05','2020-09-04 09:21:05','',0,'http://fictional-university.local/?p=7',0,'post','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-09-04 09:21:05','2020-09-04 09:21:05','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Second Test Post','','inherit','closed','closed','','7-revision-v1','','','2020-09-04 09:21:05','2020-09-04 09:21:05','',7,'http://fictional-university.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-09-04 10:04:15','2020-09-04 10:04:15','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Test   Page 123','','publish','closed','closed','','test-page-123','','','2020-09-04 10:04:15','2020-09-04 10:04:15','',0,'http://fictional-university.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-09-04 10:04:15','2020-09-04 10:04:15','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Test   Page 123','','inherit','closed','closed','','9-revision-v1','','','2020-09-04 10:04:15','2020-09-04 10:04:15','',9,'http://fictional-university.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-09-07 01:23:26','2020-09-07 01:23:26','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','About US','','trash','open','open','','about-us__trashed','','','2020-09-07 01:23:41','2020-09-07 01:23:41','',0,'http://fictional-university.local/?p=11',0,'post','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-09-07 01:23:26','2020-09-07 01:23:26','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','About US','','inherit','closed','closed','','11-revision-v1','','','2020-09-07 01:23:26','2020-09-07 01:23:26','',11,'http://fictional-university.local/11-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-09-07 01:23:57','2020-09-07 01:23:57','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2020-09-10 02:29:16','2020-09-10 02:29:16','',0,'http://fictional-university.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-09-07 01:23:57','2020-09-07 01:23:57','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','13-revision-v1','','','2020-09-07 01:23:57','2020-09-07 01:23:57','',13,'http://fictional-university.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-09-07 01:24:18','2020-09-07 01:24:18','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://fictional-university.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-09-07 01:24:18','2020-09-07 01:24:18','',3,'http://fictional-university.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-09-07 01:45:28','2020-09-07 01:45:28','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2020-09-07 02:58:20','2020-09-07 02:58:20','',13,'http://fictional-university.local/?page_id=16',1,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-09-07 01:45:28','2020-09-07 01:45:28','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','16-revision-v1','','','2020-09-07 01:45:28','2020-09-07 01:45:28','',16,'http://fictional-university.local/16-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-09-07 01:46:00','2020-09-07 01:46:00','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2020-09-07 02:58:33','2020-09-07 02:58:33','',13,'http://fictional-university.local/?page_id=18',2,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-09-07 01:46:00','2020-09-07 01:46:00','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','18-revision-v1','','','2020-09-07 01:46:00','2020-09-07 01:46:00','',18,'http://fictional-university.local/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-09-07 02:00:16','2020-09-07 02:00:16','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2020-09-07 02:00:16','2020-09-07 02:00:16','',3,'http://fictional-university.local/?page_id=20',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-09-07 02:00:16','2020-09-07 02:00:16','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','20-revision-v1','','','2020-09-07 02:00:16','2020-09-07 02:00:16','',20,'http://fictional-university.local/20-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-09-07 03:20:37','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2020-09-07 03:20:37','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=22',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-09-07 03:20:37','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-09-07 03:20:37','0000-00-00 00:00:00','',3,'http://fictional-university.local/?p=24',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-09-07 03:20:37','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-09-07 03:20:37','0000-00-00 00:00:00','',13,'http://fictional-university.local/?p=26',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-09-07 03:20:37','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-09-07 03:20:37','0000-00-00 00:00:00','',13,'http://fictional-university.local/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-09-07 03:20:37','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-09-07 03:20:37','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-09-07 03:20:37','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-09-07 03:20:37','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-09-07 04:33:36','2020-09-07 04:33:36',' ','','','publish','closed','closed','','30','','','2020-09-07 04:53:06','2020-09-07 04:53:06','',0,'http://fictional-university.local/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-09-07 04:33:36','2020-09-07 04:33:36',' ','','','publish','closed','closed','','31','','','2020-09-07 04:53:06','2020-09-07 04:53:06','',3,'http://fictional-university.local/?p=31',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-09-07 04:56:25','2020-09-07 04:56:25',' ','','','publish','closed','closed','','34','','','2020-09-07 05:01:35','2020-09-07 05:01:35','',0,'http://fictional-university.local/?p=34',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-09-07 05:01:35','2020-09-07 05:01:35','','Google','','publish','closed','closed','','google','','','2020-09-07 05:01:35','2020-09-07 05:01:35','',0,'http://fictional-university.local/?p=36',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-09-07 05:04:50','2020-09-07 05:04:50',' ','','','publish','closed','closed','','37','','','2020-09-07 05:05:14','2020-09-07 05:05:14','',0,'http://fictional-university.local/?p=37',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-09-07 05:04:50','2020-09-07 05:04:50',' ','','','publish','closed','closed','','38','','','2020-09-07 05:05:14','2020-09-07 05:05:14','',0,'http://fictional-university.local/?p=38',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-09-07 05:20:57','2020-09-07 05:20:57','','Home','','publish','closed','closed','','home','','','2020-09-07 05:20:57','2020-09-07 05:20:57','',0,'http://fictional-university.local/?page_id=39',0,'page','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-09-07 05:20:57','2020-09-07 05:20:57','','Home','','inherit','closed','closed','','39-revision-v1','','','2020-09-07 05:20:57','2020-09-07 05:20:57','',39,'http://fictional-university.local/39-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-09-07 05:21:27','2020-09-07 05:21:27','','Blog','','publish','closed','closed','','blog','','','2020-09-07 05:21:27','2020-09-07 05:21:27','',0,'http://fictional-university.local/?page_id=41',0,'page','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-09-07 05:21:27','2020-09-07 05:21:27','','Blog','','inherit','closed','closed','','41-revision-v1','','','2020-09-07 05:21:27','2020-09-07 05:21:27','',41,'http://fictional-university.local/41-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-09-07 05:44:55','2020-09-07 05:44:55','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','We won An Award!','Our  school has won another awrd this year.','publish','open','open','','we-won-an-award','','','2020-09-08 02:41:57','2020-09-08 02:41:57','',0,'http://fictional-university.local/?p=43',0,'post','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-09-07 05:44:55','2020-09-07 05:44:55','','We won An Award!','','inherit','closed','closed','','43-revision-v1','','','2020-09-07 05:44:55','2020-09-07 05:44:55','',43,'http://fictional-university.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-09-07 13:28:47','2020-09-07 13:28:47','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','We won An Award!','','inherit','closed','closed','','43-revision-v1','','','2020-09-07 13:28:47','2020-09-07 13:28:47','',43,'http://fictional-university.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-09-09 23:14:14','2020-09-09 23:14:14','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Math Meetup','','publish','closed','closed','','math-meetup','','','2020-09-09 23:14:14','2020-09-09 23:14:14','',0,'http://fictional-university.local/?post_type=event&#038;p=46',0,'event','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-09-09 23:13:39','2020-09-09 23:13:39','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','The Science of Cats','','publish','closed','closed','','the-science-of-cats','','','2020-09-14 10:36:13','2020-09-14 10:36:13','',0,'http://fictional-university.local/?post_type=event&#038;p=47',0,'event','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-09-07 19:00:23','2020-09-07 19:00:23','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Poetry Day','Poetry day is going to be amazing/','publish','closed','closed','','poetry-day','','','2020-09-14 10:36:51','2020-09-14 10:36:51','',0,'http://fictional-university.local/?post_type=event&#038;p=48',0,'event','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2020-09-08 02:41:57','2020-09-08 02:41:57','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','We won An Award!','Our  school has won another awrd this year.','inherit','closed','closed','','43-revision-v1','','','2020-09-08 02:41:57','2020-09-08 02:41:57','',43,'http://fictional-university.local/2020/09/08/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2020-09-08 03:09:51','2020-09-08 03:09:51','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Event Date','event-date','publish','closed','closed','','group_5f56f54f62972','','','2020-09-08 03:09:51','2020-09-08 03:09:51','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=52',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-09-08 03:09:51','2020-09-08 03:09:51','a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_5f56f5671e4be','','','2020-09-08 03:09:51','2020-09-08 03:09:51','',52,'http://fictional-university.local/?post_type=acf-field&p=53',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-09-08 04:28:53','2020-09-08 04:28:53','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Winter Study Night','','publish','closed','closed','','winter-study-night','','','2020-09-08 04:28:54','2020-09-08 04:28:54','',0,'http://fictional-university.local/?post_type=event&#038;p=54',0,'event','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-09-08 04:31:24','2020-09-08 04:31:24','','Past Events','','publish','closed','closed','','past-events','','','2020-09-08 04:31:24','2020-09-08 04:31:24','',0,'http://fictional-university.local/?page_id=55',0,'page','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2020-09-08 04:31:24','2020-09-08 04:31:24','','Past Events','','inherit','closed','closed','','55-revision-v1','','','2020-09-08 04:31:24','2020-09-08 04:31:24','',55,'http://fictional-university.local/2020/09/08/55-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-09-08 04:55:01','2020-09-08 04:55:01','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','New Year 2019','','publish','closed','closed','','new-year-2019','','','2020-09-08 04:55:01','2020-09-08 04:55:01','',0,'http://fictional-university.local/?post_type=event&#038;p=57',0,'event','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2020-09-09 04:31:27','2020-09-09 04:31:27','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Math','','publish','closed','closed','','math','','','2020-09-11 06:03:40','2020-09-11 06:03:40','',0,'http://fictional-university.local/?post_type=program&#038;p=58',0,'program','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2020-09-09 04:32:16','2020-09-09 04:32:16','','Biology','','publish','closed','closed','','biology','','','2020-09-14 06:41:45','2020-09-14 06:41:45','',0,'http://fictional-university.local/?post_type=program&#038;p=59',0,'program','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-09-09 04:32:36','2020-09-09 04:32:36','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','English','','publish','closed','closed','','english','','','2020-09-09 04:32:36','2020-09-09 04:32:36','',0,'http://fictional-university.local/?post_type=program&#038;p=60',0,'program','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2020-09-09 04:52:51','2020-09-09 04:52:51','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Related Program','related-program','publish','closed','closed','','group_5f585f24a1891','','','2020-09-09 23:27:08','2020-09-09 23:27:08','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=62',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2020-09-09 04:52:51','2020-09-09 04:52:51','a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}','Related Program(s)','related_programs','publish','closed','closed','','field_5f585f32c3dc8','','','2020-09-09 04:52:51','2020-09-09 04:52:51','',62,'http://fictional-university.local/?post_type=acf-field&p=63',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2020-09-09 23:21:20','2020-09-09 23:21:20','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Dr.Meowsalot','','publish','closed','closed','','dr-meowsalot','','','2020-09-10 00:00:50','2020-09-10 00:00:50','',0,'http://fictional-university.local/?post_type=professor&#038;p=64',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2020-09-09 23:21:49','2020-09-09 23:21:49','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>biology</p>\n<!-- /wp:paragraph -->','Dr.Barksalot','','publish','closed','closed','','dr-barksalot','','','2020-09-15 16:10:14','2020-09-15 16:10:14','',0,'http://fictional-university.local/?post_type=professor&#038;p=65',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2020-09-09 23:58:31','2020-09-09 23:58:31','','barksalot','','inherit','open','closed','','barksalot','','','2020-09-09 23:58:31','2020-09-09 23:58:31','',65,'http://fictional-university.local/wp-content/uploads/2020/09/barksalot.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (67,1,'2020-09-09 23:59:39','2020-09-09 23:59:39','','barksalot','','inherit','open','closed','','barksalot-2','','','2020-09-09 23:59:39','2020-09-09 23:59:39','',65,'http://fictional-university.local/wp-content/uploads/2020/09/barksalot-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (68,1,'2020-09-09 23:59:45','2020-09-09 23:59:45','','frog-bio','','inherit','open','closed','','frog-bio','','','2020-09-09 23:59:45','2020-09-09 23:59:45','',65,'http://fictional-university.local/wp-content/uploads/2020/09/frog-bio.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (69,1,'2020-09-09 23:59:54','2020-09-09 23:59:54','','meowsalot','','inherit','open','closed','','meowsalot','','','2020-09-09 23:59:54','2020-09-09 23:59:54','',65,'http://fictional-university.local/wp-content/uploads/2020/09/meowsalot.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (70,1,'2020-09-10 00:32:07','2020-09-10 00:32:07','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Dr.Froggerson','','publish','closed','closed','','dr-froggerson','','','2020-09-10 00:32:08','2020-09-10 00:32:08','',0,'http://fictional-university.local/?post_type=professor&#038;p=70',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2020-09-10 00:54:31','2020-09-10 00:54:31','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','age Banner','age-banner','publish','closed','closed','','group_5f5978c228429','','','2020-09-10 00:54:32','2020-09-10 00:54:32','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=71',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2020-09-10 00:54:31','2020-09-10 00:54:31','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Page Banner Subtitle','page_banner_subtitle','publish','closed','closed','','field_5f5978cfb5722','','','2020-09-10 00:54:31','2020-09-10 00:54:31','',71,'http://fictional-university.local/?post_type=acf-field&p=72',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2020-09-10 00:54:31','2020-09-10 00:54:31','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Page Banner Background Image','page_banner_background_image','publish','closed','closed','','field_5f5978efb5723','','','2020-09-10 00:54:31','2020-09-10 00:54:31','',71,'http://fictional-university.local/?post_type=acf-field&p=73',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2020-09-10 00:57:57','2020-09-10 00:57:57','','field','','inherit','open','closed','','field','','','2020-09-10 00:57:57','2020-09-10 00:57:57','',65,'http://fictional-university.local/wp-content/uploads/2020/09/field.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (75,1,'2020-09-10 02:28:55','2020-09-10 02:28:55','','building','','inherit','open','closed','','building','','','2020-09-10 02:28:55','2020-09-10 02:28:55','',13,'http://fictional-university.local/wp-content/uploads/2020/09/building.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (76,1,'2020-09-10 02:29:16','2020-09-10 02:29:16','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','13-revision-v1','','','2020-09-10 02:29:16','2020-09-10 02:29:16','',13,'http://fictional-university.local/2020/09/10/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2020-09-10 03:10:17','2020-09-10 03:10:17','','notebook','','inherit','open','closed','','notebook','','','2020-09-10 03:10:17','2020-09-10 03:10:17','',48,'http://fictional-university.local/wp-content/uploads/2020/09/notebook.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (79,1,'2020-09-11 04:37:50','2020-09-11 04:37:50','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Donwtonw West','','publish','closed','closed','','donwtonw-west','','','2020-09-11 05:27:18','2020-09-11 05:27:18','',0,'http://fictional-university.local/?post_type=campus&#038;p=79',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2020-09-11 04:38:49','2020-09-11 04:38:49','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Downtown East','','publish','closed','closed','','downtown-east','','','2020-09-11 05:26:40','2020-09-11 05:26:40','',0,'http://fictional-university.local/?post_type=campus&#038;p=80',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2020-09-11 04:41:37','2020-09-11 04:41:37','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"campus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Map Location','map-location','publish','closed','closed','','group_5f5affb6221cf','','','2020-09-11 04:41:37','2020-09-11 04:41:37','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=81',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2020-09-11 04:41:37','2020-09-11 04:41:37','a:9:{s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}','Map Location','map_location','publish','closed','closed','','field_5f5affc273b4b','','','2020-09-11 04:41:37','2020-09-11 04:41:37','',81,'http://fictional-university.local/?post_type=acf-field&p=82',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2020-09-11 06:03:13','2020-09-11 06:03:13','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Related Campus(es)','related-campuses','publish','closed','closed','','group_5f5b12e367e68','','','2020-09-11 06:03:13','2020-09-11 06:03:13','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=83',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2020-09-11 06:03:13','2020-09-11 06:03:13','a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:6:\"campus\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}','Related Campus(es)','related_campus','publish','closed','closed','','field_5f5b12f365b64','','','2020-09-11 06:03:13','2020-09-11 06:03:13','',83,'http://fictional-university.local/?post_type=acf-field&p=84',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2020-09-13 08:47:51','2020-09-13 08:47:51','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Biology is Cool','','publish','open','open','','biology-is-cool','','','2020-09-13 08:47:52','2020-09-13 08:47:52','',0,'http://fictional-university.local/?p=85',0,'post','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2020-09-13 08:47:51','2020-09-13 08:47:51','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Biology is Cool','','inherit','closed','closed','','85-revision-v1','','','2020-09-13 08:47:51','2020-09-13 08:47:51','',85,'http://fictional-university.local/2020/09/13/85-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2020-09-14 06:40:33','2020-09-14 06:40:33','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Main Body Content','main-body-content','publish','closed','closed','','group_5f5f101403b65','','','2020-09-14 06:40:33','2020-09-14 06:40:33','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=87',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2020-09-14 06:40:33','2020-09-14 06:40:33','a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Main Body Content','main_body_content','publish','closed','closed','','field_5f5f101f8fb27','','','2020-09-14 06:40:33','2020-09-14 06:40:33','',87,'http://fictional-university.local/?post_type=acf-field&p=88',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2020-09-15 15:21:11','2020-09-15 15:21:11','','Search','','publish','closed','closed','','search','','','2020-09-15 15:21:11','2020-09-15 15:21:11','',0,'http://fictional-university.local/?page_id=89',0,'page','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2020-09-15 15:21:11','2020-09-15 15:21:11','','Search','','inherit','closed','closed','','89-revision-v1','','','2020-09-15 15:21:11','2020-09-15 15:21:11','',89,'http://fictional-university.local/2020/09/15/89-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (91,2,'2020-09-15 16:50:53','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-09-15 16:50:53','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=91',0,'post','',0);
INSERT INTO `wp_posts` VALUES (92,2,'2020-09-15 17:06:07','2020-09-15 17:06:07','<!-- wp:paragraph -->\n<p>lorem ipsum dummy text.</p>\n<!-- /wp:paragraph -->','Math Event','','publish','closed','closed','','math-event','','','2020-09-15 17:06:08','2020-09-15 17:06:08','',0,'http://fictional-university.local/?post_type=event&#038;p=92',0,'event','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2020-09-16 04:32:49','2020-09-16 04:32:49','','My Notes','','publish','closed','closed','','my-notes','','','2020-09-16 04:32:49','2020-09-16 04:32:49','',0,'http://fictional-university.local/?page_id=93',0,'page','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2020-09-16 04:32:49','2020-09-16 04:32:49','','My Notes','','inherit','closed','closed','','93-revision-v1','','','2020-09-16 04:32:49','2020-09-16 04:32:49','',93,'http://fictional-university.local/2020/09/16/93-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2020-09-16 04:44:57','2020-09-16 04:44:57','<!-- wp:paragraph -->\n<p>I learned 5,000 amazing things in class today. This was the best biology lecture ever.</p>\n<!-- /wp:paragraph -->','Biology Lecture #4','','private','closed','closed','','biology-lecture-4','','','2020-09-18 05:29:11','2020-09-18 05:29:11','',0,'http://fictional-university.local/?post_type=note&#038;p=95',0,'note','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2020-09-16 04:46:18','2020-09-16 04:46:18','Math is so fun.','My New magical Title','','private','closed','closed','','math-lecture-1','','','2020-09-18 05:29:11','2020-09-18 05:29:11','',0,'http://fictional-university.local/?post_type=note&#038;p=96',0,'note','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2020-09-18 04:35:35','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-09-18 04:35:35','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=97',0,'post','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2020-09-18 04:46:25','2020-09-18 04:46:25','lorem ipsum////','FrontEnd','','private','closed','closed','','frontend','','','2020-09-18 05:29:11','2020-09-18 05:29:11','',0,'http://fictional-university.local/?post_type=note&#038;p=98',0,'note','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2020-09-18 05:29:11','2020-09-18 05:29:11','lorem ipusum','Another new post','','private','closed','closed','','another-new-post','','','2020-09-18 05:29:11','2020-09-18 05:29:11','',0,'http://fictional-university.local/?post_type=note&#038;p=99',0,'note','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2020-09-18 05:29:11','2020-09-18 05:29:11','This is a super amazing note.\n','Testing Once Aganin','','private','closed','closed','','testing-once-aganin','','','2020-09-18 05:29:11','2020-09-18 05:29:11','',0,'http://fictional-university.local/?post_type=note&#038;p=100',0,'note','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2020-09-18 05:29:11','2020-09-18 05:29:11','test ageain','Another sample post','','private','closed','closed','','another-sample-post','','','2020-09-18 05:29:11','2020-09-18 05:29:11','',0,'http://fictional-university.local/?post_type=note&#038;p=101',0,'note','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2020-09-18 04:54:16','0000-00-00 00:00:00','hi there\n','Hello World 5000','','draft','closed','closed','','','','','2020-09-18 04:54:16','0000-00-00 00:00:00','',0,'http://fictional-university.local/?post_type=note&p=102',0,'note','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2020-09-18 04:54:16','2020-09-18 04:54:16','hi there\n','Hello World 5000','','private','closed','closed','','hello-world-5000','','','2020-09-18 05:29:11','2020-09-18 05:29:11','',0,'http://fictional-university.local/note/hello-world-5000/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2020-09-18 04:54:16','2020-09-18 04:54:16','hi there\n','Hello World 5000','','trash','closed','closed','','hello-world-5000-2__trashed','','','2020-09-18 05:04:51','2020-09-18 05:04:51','',0,'http://fictional-university.local/note/hello-world-5000-2/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2020-09-18 04:54:16','2020-09-18 04:54:16','hi there\n','Hello World 5000','','trash','closed','closed','','hello-world-5000-3__trashed','','','2020-09-18 05:29:46','2020-09-18 05:29:46','',0,'http://fictional-university.local/note/hello-world-5000-3/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2020-09-18 05:04:35','2020-09-18 05:04:35','Lorem ipsum.','Dogs Love Math','','private','closed','closed','','caths-love-math','','','2020-09-18 05:29:11','2020-09-18 05:29:11','',0,'http://fictional-university.local/note/caths-love-math/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (107,3,'2020-09-18 05:18:26','2020-09-18 05:18:26','Lorme ipsum test.','Modified Cat Note #1','','trash','closed','closed','','cat-note-1__trashed','','','2020-09-18 05:18:48','2020-09-18 05:18:48','',0,'http://fictional-university.local/note/cat-note-1/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2020-09-18 05:19:15','2020-09-18 05:19:15','Lorem ipsum testing 123.','new Cat Note','','private','closed','closed','','new-cat-note','','','2020-09-18 05:29:11','2020-09-18 05:29:11','',0,'http://fictional-university.local/note/new-cat-note/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (109,3,'2020-09-18 05:31:34','2020-09-18 05:31:34','lorem testing','Cat Note #2','','publish','closed','closed','','cat-note-2','','','2020-09-18 05:31:34','2020-09-18 05:31:34','',0,'http://fictional-university.local/note/cat-note-2/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (110,3,'2020-09-18 05:31:34','2020-09-18 05:31:34','lorem testing','Cat Note #2','','private','closed','closed','','cat-note-2','','','2020-09-18 05:31:34','2020-09-18 05:31:34','',0,'http://fictional-university.local/note/cat-note-2/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (111,3,'2020-09-18 05:32:38','2020-09-18 05:32:38','lorem ipsum .','cat note #3','','private','closed','closed','','cat-note-3','','','2020-09-18 05:32:38','2020-09-18 05:32:38','',0,'http://fictional-university.local/note/cat-note-3/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (112,3,'2020-09-18 05:38:53','2020-09-18 05:38:53','edited lorem ipsum.','Edited New Privacy Test','','private','closed','closed','','new-privacy-test-2','','','2020-09-18 05:45:12','2020-09-18 05:45:12','',0,'http://fictional-university.local/note/new-privacy-test/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (113,3,'2020-09-18 05:38:53','2020-09-18 05:38:53','lorem ipsum.','New Privacy Test','','trash','closed','closed','','new-privacy-test__trashed','','','2020-09-18 05:45:18','2020-09-18 05:45:18','',0,'http://fictional-university.local/note/new-privacy-test/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (114,3,'2020-09-18 05:45:36','2020-09-18 05:45:36','dsafasfdsafsafdafafasf','asfdasfdasfsafd','','trash','closed','closed','','asfdasfdasfsafd__trashed','','','2020-09-18 06:43:29','2020-09-18 06:43:29','',0,'http://fictional-university.local/note/asfdasfdasfsafd/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (115,3,'2020-09-18 05:47:11','2020-09-18 05:47:11','alert(\'hello);','Limit test malcious user','','trash','closed','closed','','malcious-user__trashed','','','2020-09-18 06:43:26','2020-09-18 06:43:26','',0,'http://fictional-university.local/note/malcious-user/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2020-09-18 05:49:21','2020-09-18 05:49:21','<script>alert(\"hellor);</script>','Hack Test','','private','closed','closed','','hack-test','','','2020-09-18 05:49:21','2020-09-18 05:49:21','',0,'http://fictional-university.local/note/hack-test/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (117,3,'2020-09-18 05:55:57','2020-09-18 05:55:57','alert(\'hey\');\n<ul>\n<li>Hello 1</li>\n<li>Hello 2</li>\n<li>Hello 3</li>\n</ul>','Subscriber HtML Test','','trash','closed','closed','','subscriber-html-test__trashed','','','2020-09-18 05:57:07','2020-09-18 05:57:07','',0,'http://fictional-university.local/note/subscriber-html-test/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (118,3,'2020-09-18 06:00:46','2020-09-18 06:00:46','this is a test\nHeading test\nList item test','This post is amazing','','trash','closed','closed','','this-post-is-amazing__trashed','','','2020-09-18 06:10:49','2020-09-18 06:10:49','',0,'http://fictional-university.local/note/this-post-is-amazing/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (119,3,'2020-09-18 06:03:53','2020-09-18 06:03:53','this is a test\nheading test\nList item test','This post is Amazing','','trash','closed','closed','','this-post-is-amazing-2__trashed','','','2020-09-18 06:09:10','2020-09-18 06:09:10','',0,'http://fictional-university.local/note/this-post-is-amazing-2/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (120,3,'2020-09-18 06:08:56','2020-09-18 06:08:56','This is a test\nHeading test\nList test','This post is Amazing','','trash','closed','closed','','this-post-is-amazing-3__trashed','','','2020-09-18 06:30:48','2020-09-18 06:30:48','',0,'http://fictional-university.local/note/this-post-is-amazing-3/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (121,3,'2020-09-18 06:45:15','2020-09-18 06:45:15','sfasdfasdfsf','afasdfasf','','trash','closed','closed','','afasdfasf__trashed','','','2020-09-18 06:45:22','2020-09-18 06:45:22','',0,'http://fictional-university.local/note/afasdfasf/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (122,3,'2020-09-18 06:46:56','2020-09-18 06:46:56','sdfasdfasdfasf','sdfasdfas','','trash','closed','closed','','sdfasdfas__trashed','','','2020-09-18 06:47:20','2020-09-18 06:47:20','',0,'http://fictional-university.local/note/sdfasdfas/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (123,3,'2020-09-18 09:42:14','2020-09-18 09:42:14','testtes','testtes','','trash','closed','closed','','testtes__trashed','','','2020-09-18 09:42:22','2020-09-18 09:42:22','',0,'http://fictional-university.local/note/testtes/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (124,3,'2020-09-18 09:42:26','2020-09-18 09:42:26','sdfsadfasdf','sdfsdfa','','trash','closed','closed','','sdfsdfa__trashed','','','2020-09-18 09:42:30','2020-09-18 09:42:30','',0,'http://fictional-university.local/note/sdfsdfa/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (125,3,'2020-09-18 09:44:22','2020-09-18 09:44:22','test','test','','trash','closed','closed','','test__trashed','','','2020-09-18 09:48:07','2020-09-18 09:48:07','',0,'http://fictional-university.local/note/test/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (126,3,'2020-09-18 09:48:10','2020-09-18 09:48:10','dsfadafdfafdsaf','sfasdfsfdsa','','trash','closed','closed','','sfasdfsfdsa__trashed','','','2020-09-18 09:50:19','2020-09-18 09:50:19','',0,'http://fictional-university.local/note/sfasdfsfdsa/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (127,3,'2020-09-18 09:50:21','2020-09-18 09:50:21','test','test','','private','closed','closed','','test','','','2020-09-18 09:50:21','2020-09-18 09:50:21','',0,'http://fictional-university.local/note/test/',0,'note','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,1,0);
INSERT INTO `wp_term_relationships` VALUES (7,1,0);
INSERT INTO `wp_term_relationships` VALUES (11,1,0);
INSERT INTO `wp_term_relationships` VALUES (30,3,0);
INSERT INTO `wp_term_relationships` VALUES (31,3,0);
INSERT INTO `wp_term_relationships` VALUES (34,5,0);
INSERT INTO `wp_term_relationships` VALUES (36,5,0);
INSERT INTO `wp_term_relationships` VALUES (37,6,0);
INSERT INTO `wp_term_relationships` VALUES (38,6,0);
INSERT INTO `wp_term_relationships` VALUES (43,7,0);
INSERT INTO `wp_term_relationships` VALUES (85,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'category','we love to blog about our awards',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (3,'My Magical Menu','my-magical-menu',0);
INSERT INTO `wp_terms` VALUES (5,'Super Amazing Menu','super-amazing-menu',0);
INSERT INTO `wp_terms` VALUES (6,'My Main Header Menu','my-main-header-menu',0);
INSERT INTO `wp_terms` VALUES (7,'Awards','awards',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','SHOTARO');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','testing helo world 1321');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','97');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','6');
INSERT INTO `wp_usermeta` VALUES (21,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (22,1,'closedpostboxes_event','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_event','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_professor','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_professor','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (27,1,'wp_user-settings-time','1599696009');
INSERT INTO `wp_usermeta` VALUES (28,2,'nickname','smat');
INSERT INTO `wp_usermeta` VALUES (29,2,'first_name','');
INSERT INTO `wp_usermeta` VALUES (30,2,'last_name','');
INSERT INTO `wp_usermeta` VALUES (31,2,'description','');
INSERT INTO `wp_usermeta` VALUES (32,2,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (33,2,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (34,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (35,2,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (36,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (37,2,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (38,2,'locale','');
INSERT INTO `wp_usermeta` VALUES (39,2,'wp_capabilities','a:2:{s:13:\"event_planner\";b:1;s:14:\"campus_manager\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (40,2,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (41,2,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (43,2,'wp_dashboard_quick_press_last_post_id','91');
INSERT INTO `wp_usermeta` VALUES (44,3,'nickname','smat01');
INSERT INTO `wp_usermeta` VALUES (45,3,'first_name','');
INSERT INTO `wp_usermeta` VALUES (46,3,'last_name','');
INSERT INTO `wp_usermeta` VALUES (47,3,'description','');
INSERT INTO `wp_usermeta` VALUES (48,3,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (49,3,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (50,3,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (51,3,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (52,3,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (53,3,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (54,3,'locale','');
INSERT INTO `wp_usermeta` VALUES (55,3,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (56,3,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (57,3,'default_password_nag','');
INSERT INTO `wp_usermeta` VALUES (61,1,'session_tokens','a:2:{s:64:\"72b6e3158a03b75f85291f85b9f636a9113406c571660e5765c40b13ed7dd7c2\";a:4:{s:10:\"expiration\";i:1600576535;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\";s:5:\"login\";i:1600403735;}s:64:\"4233e2e61e352e781484956f24ba4185d601bb2c07cbb85ebd81622248f05ebf\";a:4:{s:10:\"expiration\";i:1600594763;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\";s:5:\"login\";i:1600421963;}}');
INSERT INTO `wp_usermeta` VALUES (62,3,'session_tokens','a:2:{s:64:\"ab4723f703b4566929568c6dcefdc8dc65134b1401307a588a1ff308422e5fb0\";a:4:{s:10:\"expiration\";i:1600578616;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\";s:5:\"login\";i:1600405816;}s:64:\"8e76e0ffe2ff43249ca7b59f9f8a37611ee8b319a8049735ca9c8df61eb9ccef\";a:4:{s:10:\"expiration\";i:1600594918;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\";s:5:\"login\";i:1600422118;}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'ShotaroMatsuya','$P$Bz7sGLuZdHMD7lC9U6xqGuZRY13o/c0','shotaromatsuya','dev-email@flywheel.local','http://fictional-university.local','2020-09-04 09:08:38','',0,'SHOTARO');
INSERT INTO `wp_users` VALUES (2,'smat','$P$BiVKsjEB1xFFx6hrZ5i9psOMCffjjb.','smat','matsuya@h01.itscom.net','','2020-09-15 16:49:25','1600188565:$P$ByUxV8xTTPSmQpCwVnKl9U66s/L8YX/',0,'smat');
INSERT INTO `wp_users` VALUES (3,'smat01','$P$B.Q2sMOOZp0wIy4fVNWx2g8eJi7dEe1','smat01','super_sonic_rainbow@yahoo.co.jp','','2020-09-15 17:25:26','',0,'smat01');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-20 16:32:48
