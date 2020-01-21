-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.15

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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2019-12-20 22:14:46','2019-12-20 22:14:46','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=390 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://hudson-design.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://hudson-design.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Hudson Web Design','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Portfolio site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
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
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:145:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:12:\"portfolio/?$\";s:29:\"index.php?post_type=portfolio\";s:42:\"portfolio/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:37:\"portfolio/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:29:\"portfolio/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=portfolio&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"skills/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"skills/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"skills/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"skills/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"skills/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"skills/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"skills/([^/]+)/embed/?$\";s:39:\"index.php?skills=$matches[1]&embed=true\";s:27:\"skills/([^/]+)/trackback/?$\";s:33:\"index.php?skills=$matches[1]&tb=1\";s:35:\"skills/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?skills=$matches[1]&paged=$matches[2]\";s:42:\"skills/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?skills=$matches[1]&cpage=$matches[2]\";s:31:\"skills/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?skills=$matches[1]&page=$matches[2]\";s:23:\"skills/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"skills/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"skills/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"skills/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"skills/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"skills/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"slider/([^/]+)/embed/?$\";s:39:\"index.php?slider=$matches[1]&embed=true\";s:27:\"slider/([^/]+)/trackback/?$\";s:33:\"index.php?slider=$matches[1]&tb=1\";s:35:\"slider/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&paged=$matches[2]\";s:42:\"slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&cpage=$matches[2]\";s:31:\"slider/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?slider=$matches[1]&page=$matches[2]\";s:23:\"slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"portfolio/([^/]+)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:30:\"portfolio/([^/]+)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:50:\"portfolio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:45:\"portfolio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:38:\"portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:45:\"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:34:\"portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:26:\"portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:41:\"navz-photo-gallery/navz-photo-gallery.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','hudson-design','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','hudson-design','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','45805','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','10','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','8','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'admin_email_lifespan','1593988088','yes');
INSERT INTO `wp_options` VALUES (94,'initial_db_version','45805','yes');
INSERT INTO `wp_options` VALUES (95,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (96,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (103,'cron','a:4:{i:1579644887;a:5:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579645286;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579645287;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'nonce_key','`@!^W*Dx,phR&IEzc<F_:A[57$Gyvr~)9qb0iBt*f^c2{;|CK..yP9,DyZSXximV','no');
INSERT INTO `wp_options` VALUES (111,'nonce_salt','##Y0mBQ,Z(gIFTaz*x1Jsf9w]hbrPF%/WEtR+j*Yt]u#[]61k=CjhrRBeR{wpJ2}','no');
INSERT INTO `wp_options` VALUES (112,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (122,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1579641739;s:7:\"checked\";a:1:{s:13:\"hudson-design\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (123,'db_upgraded','','yes');
INSERT INTO `wp_options` VALUES (143,'theme_mods_twentytwenty','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1576880493;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (144,'current_theme','Hudson Design Custom Theme','yes');
INSERT INTO `wp_options` VALUES (145,'theme_mods_hudson-design','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:17:\"headerLocationOne\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (146,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (147,'recovery_mode_email_last_sent','1576880860','yes');
INSERT INTO `wp_options` VALUES (150,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (151,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (152,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (170,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1579641739;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (178,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (190,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (239,'recently_activated','a:1:{s:24:\"wpforms-lite/wpforms.php\";i:1578691463;}','yes');
INSERT INTO `wp_options` VALUES (270,'wpforms_version','1.5.7','yes');
INSERT INTO `wp_options` VALUES (271,'wpforms_activated','a:1:{s:4:\"lite\";i:1578690718;}','yes');
INSERT INTO `wp_options` VALUES (274,'widget_wpforms-widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (275,'wpforms_review','a:2:{s:4:\"time\";i:1578690719;s:9:\"dismissed\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (279,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.1.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1578692155;s:7:\"version\";s:5:\"5.1.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
INSERT INTO `wp_options` VALUES (312,'acf_version','5.8.7','yes');
INSERT INTO `wp_options` VALUES (316,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1579729484','no');
INSERT INTO `wp_options` VALUES (317,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (335,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1579641739;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:41:\"navz-photo-gallery/navz-photo-gallery.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/navz-photo-gallery\";s:4:\"slug\";s:18:\"navz-photo-gallery\";s:6:\"plugin\";s:41:\"navz-photo-gallery/navz-photo-gallery.php\";s:11:\"new_version\";s:5:\"1.6.5\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/navz-photo-gallery/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/navz-photo-gallery.1.6.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/navz-photo-gallery/assets/icon-128x128.png?rev=1561241\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/navz-photo-gallery/assets/banner-772x250.png?rev=1561242\";}s:11:\"banners_rtl\";a:0:{}}s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (367,'_site_transient_timeout_browser_970583a09bf433922754765d66dadf27','1579904175','no');
INSERT INTO `wp_options` VALUES (368,'_site_transient_browser_970583a09bf433922754765d66dadf27','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"79.0.3945.117\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (388,'_site_transient_timeout_theme_roots','1579643539','no');
INSERT INTO `wp_options` VALUES (389,'_site_transient_theme_roots','a:1:{s:13:\"hudson-design\";s:7:\"/themes\";}','no');
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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (4,5,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (5,5,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (6,5,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (7,5,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (8,5,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (9,5,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (10,5,'_menu_item_url','//localhost:3000/#skills');
INSERT INTO `wp_postmeta` VALUES (21,7,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (22,7,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (23,7,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (24,7,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (25,7,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (26,7,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (27,7,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (28,7,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (30,8,'_edit_lock','1578695503:1');
INSERT INTO `wp_postmeta` VALUES (31,10,'_edit_lock','1576883457:1');
INSERT INTO `wp_postmeta` VALUES (32,12,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (33,12,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (34,12,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (35,12,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (36,12,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (37,12,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (38,12,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (39,12,'_menu_item_url','//localhost:3000/#portfolio');
INSERT INTO `wp_postmeta` VALUES (41,13,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (42,13,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (43,13,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (44,13,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (45,13,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (46,13,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (47,13,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (48,13,'_menu_item_url','//localhost:3000/#about');
INSERT INTO `wp_postmeta` VALUES (50,14,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (51,14,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (52,14,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (53,14,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (54,14,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (55,14,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (56,14,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (57,14,'_menu_item_url','//localhost:3000/#contact');
INSERT INTO `wp_postmeta` VALUES (59,16,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (60,16,'_edit_lock','1578436025:1');
INSERT INTO `wp_postmeta` VALUES (61,16,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (62,16,'_wp_trash_meta_time','1578436174');
INSERT INTO `wp_postmeta` VALUES (63,16,'_wp_desired_post_slug','16');
INSERT INTO `wp_postmeta` VALUES (64,17,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (65,17,'_edit_lock','1578436226:1');
INSERT INTO `wp_postmeta` VALUES (66,17,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (67,17,'_wp_trash_meta_time','1578436381');
INSERT INTO `wp_postmeta` VALUES (68,17,'_wp_desired_post_slug','17');
INSERT INTO `wp_postmeta` VALUES (69,20,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (70,20,'_edit_lock','1578438087:1');
INSERT INTO `wp_postmeta` VALUES (71,21,'_wp_attached_file','2020/01/Add-a-heading-e1578438112884.png');
INSERT INTO `wp_postmeta` VALUES (72,21,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:40:\"2020/01/Add-a-heading-e1578438112884.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Add-a-heading-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Add-a-heading-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (73,20,'_thumbnail_id','21');
INSERT INTO `wp_postmeta` VALUES (74,23,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (75,23,'_edit_lock','1578437527:1');
INSERT INTO `wp_postmeta` VALUES (76,23,'_thumbnail_id','21');
INSERT INTO `wp_postmeta` VALUES (77,24,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (78,24,'_edit_lock','1578695643:1');
INSERT INTO `wp_postmeta` VALUES (79,24,'_thumbnail_id','21');
INSERT INTO `wp_postmeta` VALUES (80,25,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (81,25,'_edit_lock','1578438017:1');
INSERT INTO `wp_postmeta` VALUES (82,25,'_thumbnail_id','21');
INSERT INTO `wp_postmeta` VALUES (83,21,'_wp_attachment_backup_sizes','a:2:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"Add-a-heading.png\";}s:18:\"full-1578438112884\";a:3:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:32:\"Add-a-heading-e1578438089674.png\";}}');
INSERT INTO `wp_postmeta` VALUES (84,25,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (85,25,'_wp_trash_meta_time','1578520257');
INSERT INTO `wp_postmeta` VALUES (86,25,'_wp_desired_post_slug','hello-1234');
INSERT INTO `wp_postmeta` VALUES (87,26,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (88,26,'_edit_lock','1578524133:1');
INSERT INTO `wp_postmeta` VALUES (89,27,'_wp_attached_file','2020/01/back1-e1578522690458.png');
INSERT INTO `wp_postmeta` VALUES (90,27,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:454;s:4:\"file\";s:32:\"2020/01/back1-e1578522690458.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"back1-e1578522690458-300x76.png\";s:5:\"width\";i:300;s:6:\"height\";i:76;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"back1-e1578522690458-1024x258.png\";s:5:\"width\";i:1024;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"back1-e1578522690458-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"back1-e1578522690458-768x194.png\";s:5:\"width\";i:768;s:6:\"height\";i:194;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"back1-e1578522690458-1536x387.png\";s:5:\"width\";i:1536;s:6:\"height\";i:387;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"skillThumb\";a:4:{s:4:\"file\";s:32:\"back1-e1578522690458-250x200.png\";s:5:\"width\";i:250;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"imageSlider\";a:4:{s:4:\"file\";s:33:\"back1-e1578522690458-1500x454.png\";s:5:\"width\";i:1500;s:6:\"height\";i:454;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (91,28,'_wp_attached_file','2020/01/back3.png');
INSERT INTO `wp_postmeta` VALUES (92,28,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:700;s:4:\"file\";s:17:\"2020/01/back3.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"back3-300x117.png\";s:5:\"width\";i:300;s:6:\"height\";i:117;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"back3-1024x398.png\";s:5:\"width\";i:1024;s:6:\"height\";i:398;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"back3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"back3-768x299.png\";s:5:\"width\";i:768;s:6:\"height\";i:299;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"back3-1536x597.png\";s:5:\"width\";i:1536;s:6:\"height\";i:597;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"skillThumb\";a:4:{s:4:\"file\";s:17:\"back3-250x200.png\";s:5:\"width\";i:250;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"imageSlider\";a:4:{s:4:\"file\";s:18:\"back3-1500x500.png\";s:5:\"width\";i:1500;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (93,29,'_wp_attached_file','2020/01/back2.png');
INSERT INTO `wp_postmeta` VALUES (94,29,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:700;s:4:\"file\";s:17:\"2020/01/back2.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"back2-300x117.png\";s:5:\"width\";i:300;s:6:\"height\";i:117;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"back2-1024x398.png\";s:5:\"width\";i:1024;s:6:\"height\";i:398;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"back2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"back2-768x299.png\";s:5:\"width\";i:768;s:6:\"height\";i:299;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"back2-1536x597.png\";s:5:\"width\";i:1536;s:6:\"height\";i:597;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"skillThumb\";a:4:{s:4:\"file\";s:17:\"back2-250x200.png\";s:5:\"width\";i:250;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"imageSlider\";a:4:{s:4:\"file\";s:18:\"back2-1500x500.png\";s:5:\"width\";i:1500;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (95,26,'_thumbnail_id','27');
INSERT INTO `wp_postmeta` VALUES (96,27,'_wp_attachment_backup_sizes','a:8:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1800;s:6:\"height\";i:700;s:4:\"file\";s:9:\"back1.png\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:17:\"back1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:17:\"back1-300x117.png\";s:5:\"width\";i:300;s:6:\"height\";i:117;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:17:\"back1-768x299.png\";s:5:\"width\";i:768;s:6:\"height\";i:299;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"large-orig\";a:4:{s:4:\"file\";s:18:\"back1-1024x398.png\";s:5:\"width\";i:1024;s:6:\"height\";i:398;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"1536x1536-orig\";a:4:{s:4:\"file\";s:18:\"back1-1536x597.png\";s:5:\"width\";i:1536;s:6:\"height\";i:597;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"skillThumb-orig\";a:4:{s:4:\"file\";s:17:\"back1-250x200.png\";s:5:\"width\";i:250;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"imageSlider-orig\";a:4:{s:4:\"file\";s:18:\"back1-1500x500.png\";s:5:\"width\";i:1500;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}}');
INSERT INTO `wp_postmeta` VALUES (97,30,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (98,30,'_edit_lock','1578524895:1');
INSERT INTO `wp_postmeta` VALUES (99,30,'_thumbnail_id','28');
INSERT INTO `wp_postmeta` VALUES (100,31,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (101,31,'_edit_lock','1578954436:1');
INSERT INTO `wp_postmeta` VALUES (102,31,'_thumbnail_id','29');
INSERT INTO `wp_postmeta` VALUES (103,32,'_wp_attached_file','2020/01/Triathlon-posts.png');
INSERT INTO `wp_postmeta` VALUES (104,32,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:6728;s:4:\"file\";s:27:\"2020/01/Triathlon-posts.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Triathlon-posts-86x300.png\";s:5:\"width\";i:86;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"Triathlon-posts-292x1024.png\";s:5:\"width\";i:292;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Triathlon-posts-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Triathlon-posts-768x2691.png\";s:5:\"width\";i:768;s:6:\"height\";i:2691;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:28:\"Triathlon-posts-438x1536.png\";s:5:\"width\";i:438;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:28:\"Triathlon-posts-584x2048.png\";s:5:\"width\";i:584;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"skillThumb\";a:4:{s:4:\"file\";s:27:\"Triathlon-posts-250x200.png\";s:5:\"width\";i:250;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"imageSlider\";a:4:{s:4:\"file\";s:28:\"Triathlon-posts-1500x500.png\";s:5:\"width\";i:1500;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (105,33,'_wp_attached_file','2020/01/Ozone-project.png');
INSERT INTO `wp_postmeta` VALUES (106,33,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:514;s:4:\"file\";s:25:\"2020/01/Ozone-project.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Ozone-project-300x193.png\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Ozone-project-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Ozone-project-768x493.png\";s:5:\"width\";i:768;s:6:\"height\";i:493;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"skillThumb\";a:4:{s:4:\"file\";s:25:\"Ozone-project-250x200.png\";s:5:\"width\";i:250;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"imageSlider\";a:4:{s:4:\"file\";s:25:\"Ozone-project-800x500.png\";s:5:\"width\";i:800;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (107,34,'_wp_attached_file','2020/01/Planning-Hub.jpg');
INSERT INTO `wp_postmeta` VALUES (108,34,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:438;s:4:\"file\";s:24:\"2020/01/Planning-Hub.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Planning-Hub-300x219.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:219;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Planning-Hub-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"skillThumb\";a:4:{s:4:\"file\";s:24:\"Planning-Hub-250x200.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (109,35,'_wp_attached_file','2020/01/Presque-Vu-Home.png');
INSERT INTO `wp_postmeta` VALUES (110,35,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1496;s:6:\"height\";i:1716;s:4:\"file\";s:27:\"2020/01/Presque-Vu-Home.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Presque-Vu-Home-262x300.png\";s:5:\"width\";i:262;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"Presque-Vu-Home-893x1024.png\";s:5:\"width\";i:893;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Presque-Vu-Home-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Presque-Vu-Home-768x881.png\";s:5:\"width\";i:768;s:6:\"height\";i:881;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:29:\"Presque-Vu-Home-1339x1536.png\";s:5:\"width\";i:1339;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"skillThumb\";a:4:{s:4:\"file\";s:27:\"Presque-Vu-Home-250x200.png\";s:5:\"width\";i:250;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"imageSlider\";a:4:{s:4:\"file\";s:28:\"Presque-Vu-Home-1496x500.png\";s:5:\"width\";i:1496;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (111,36,'_wp_attached_file','2020/01/Presque-Vu-Post.png');
INSERT INTO `wp_postmeta` VALUES (112,36,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1496;s:6:\"height\";i:3851;s:4:\"file\";s:27:\"2020/01/Presque-Vu-Post.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Presque-Vu-Post-117x300.png\";s:5:\"width\";i:117;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"Presque-Vu-Post-398x1024.png\";s:5:\"width\";i:398;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Presque-Vu-Post-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Presque-Vu-Post-768x1977.png\";s:5:\"width\";i:768;s:6:\"height\";i:1977;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:28:\"Presque-Vu-Post-597x1536.png\";s:5:\"width\";i:597;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:28:\"Presque-Vu-Post-796x2048.png\";s:5:\"width\";i:796;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"skillThumb\";a:4:{s:4:\"file\";s:27:\"Presque-Vu-Post-250x200.png\";s:5:\"width\";i:250;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"imageSlider\";a:4:{s:4:\"file\";s:28:\"Presque-Vu-Post-1496x500.png\";s:5:\"width\";i:1496;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (113,37,'_wp_attached_file','2020/01/Presque-Vu-Projects.png');
INSERT INTO `wp_postmeta` VALUES (114,37,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1496;s:6:\"height\";i:1666;s:4:\"file\";s:31:\"2020/01/Presque-Vu-Projects.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Presque-Vu-Projects-269x300.png\";s:5:\"width\";i:269;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"Presque-Vu-Projects-920x1024.png\";s:5:\"width\";i:920;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Presque-Vu-Projects-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"Presque-Vu-Projects-768x855.png\";s:5:\"width\";i:768;s:6:\"height\";i:855;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"Presque-Vu-Projects-1379x1536.png\";s:5:\"width\";i:1379;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"skillThumb\";a:4:{s:4:\"file\";s:31:\"Presque-Vu-Projects-250x200.png\";s:5:\"width\";i:250;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"imageSlider\";a:4:{s:4:\"file\";s:32:\"Presque-Vu-Projects-1496x500.png\";s:5:\"width\";i:1496;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (115,38,'_wp_attached_file','2020/01/Presque-Vu-Home-thumb.jpg');
INSERT INTO `wp_postmeta` VALUES (116,38,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:453;s:4:\"file\";s:33:\"2020/01/Presque-Vu-Home-thumb.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Presque-Vu-Home-thumb-300x227.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:227;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Presque-Vu-Home-thumb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"skillThumb\";a:4:{s:4:\"file\";s:33:\"Presque-Vu-Home-thumb-250x200.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (117,39,'_wp_attached_file','2020/01/Triathlon-home-thumb.png');
INSERT INTO `wp_postmeta` VALUES (118,39,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:502;s:4:\"file\";s:32:\"2020/01/Triathlon-home-thumb.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Triathlon-home-thumb-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Triathlon-home-thumb-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"Triathlon-home-thumb-768x482.png\";s:5:\"width\";i:768;s:6:\"height\";i:482;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"skillThumb\";a:4:{s:4:\"file\";s:32:\"Triathlon-home-thumb-250x200.png\";s:5:\"width\";i:250;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"imageSlider\";a:4:{s:4:\"file\";s:32:\"Triathlon-home-thumb-800x500.png\";s:5:\"width\";i:800;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (119,40,'_wp_attached_file','2020/01/Triathlon-home.png');
INSERT INTO `wp_postmeta` VALUES (120,40,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1832;s:4:\"file\";s:26:\"2020/01/Triathlon-home.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Triathlon-home-300x286.png\";s:5:\"width\";i:300;s:6:\"height\";i:286;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"Triathlon-home-1024x977.png\";s:5:\"width\";i:1024;s:6:\"height\";i:977;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Triathlon-home-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"Triathlon-home-768x733.png\";s:5:\"width\";i:768;s:6:\"height\";i:733;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:28:\"Triathlon-home-1536x1466.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1466;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"skillThumb\";a:4:{s:4:\"file\";s:26:\"Triathlon-home-250x200.png\";s:5:\"width\";i:250;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"imageSlider\";a:4:{s:4:\"file\";s:27:\"Triathlon-home-1500x500.png\";s:5:\"width\";i:1500;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (121,41,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (122,41,'_edit_lock','1578954426:1');
INSERT INTO `wp_postmeta` VALUES (123,41,'_thumbnail_id','39');
INSERT INTO `wp_postmeta` VALUES (124,42,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (125,42,'_edit_lock','1578605060:1');
INSERT INTO `wp_postmeta` VALUES (126,42,'_thumbnail_id','33');
INSERT INTO `wp_postmeta` VALUES (127,43,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (128,43,'_edit_lock','1579215141:1');
INSERT INTO `wp_postmeta` VALUES (129,43,'_thumbnail_id','39');
INSERT INTO `wp_postmeta` VALUES (130,8,'_thumbnail_id','21');
INSERT INTO `wp_postmeta` VALUES (131,46,'_edit_lock','1578687952:1');
INSERT INTO `wp_postmeta` VALUES (132,46,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (133,46,'_wp_trash_meta_time','1578688097');
INSERT INTO `wp_postmeta` VALUES (134,46,'_wp_desired_post_slug','portfolio');
INSERT INTO `wp_postmeta` VALUES (135,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (136,2,'_wp_trash_meta_time','1578688846');
INSERT INTO `wp_postmeta` VALUES (137,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (138,54,'_edit_lock','1578693464:1');
INSERT INTO `wp_postmeta` VALUES (139,57,'_form','<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Submit\"]');
INSERT INTO `wp_postmeta` VALUES (140,57,'_mail','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:16:\"Contact form HDW\";s:6:\"sender\";s:45:\"hudson design <wordpress@hudson-design.local>\";s:9:\"recipient\";s:24:\"dev-email@flywheel.local\";s:4:\"body\";s:178:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on hudson design (http://hudson-design.local)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (141,57,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"hudson design \"[your-subject]\"\";s:6:\"sender\";s:45:\"hudson design <wordpress@hudson-design.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:120:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on hudson design (http://hudson-design.local)\";s:18:\"additional_headers\";s:34:\"Reply-To: dev-email@flywheel.local\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (142,57,'_messages','a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}');
INSERT INTO `wp_postmeta` VALUES (143,57,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (144,57,'_locale','en_US');
INSERT INTO `wp_postmeta` VALUES (145,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (146,60,'_edit_lock','1579124693:1');
INSERT INTO `wp_postmeta` VALUES (147,60,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (148,60,'_wp_trash_meta_time','1579124847');
INSERT INTO `wp_postmeta` VALUES (149,60,'_wp_desired_post_slug','group_5e1cf5b0beb0a');
INSERT INTO `wp_postmeta` VALUES (150,61,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (151,61,'_wp_trash_meta_time','1579124847');
INSERT INTO `wp_postmeta` VALUES (152,61,'_wp_desired_post_slug','field_5e1cf5b87c0f7');
INSERT INTO `wp_postmeta` VALUES (153,64,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (154,64,'_edit_lock','1579212519:1');
INSERT INTO `wp_postmeta` VALUES (155,43,'slides','40,39,38');
INSERT INTO `wp_postmeta` VALUES (156,66,'_edit_lock','1579211480:1');
INSERT INTO `wp_postmeta` VALUES (157,67,'_edit_lock','1579212004:1');
INSERT INTO `wp_postmeta` VALUES (158,43,'slideshow_images','40,39,38');
INSERT INTO `wp_postmeta` VALUES (159,64,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (160,64,'_wp_trash_meta_time','1579214069');
INSERT INTO `wp_postmeta` VALUES (161,64,'_wp_desired_post_slug','group_5e1f8871a8eb4');
INSERT INTO `wp_postmeta` VALUES (162,65,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (163,65,'_wp_trash_meta_time','1579214069');
INSERT INTO `wp_postmeta` VALUES (164,65,'_wp_desired_post_slug','field_5e1f88756377d');
INSERT INTO `wp_postmeta` VALUES (165,69,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (166,69,'_edit_lock','1579216175:1');
INSERT INTO `wp_postmeta` VALUES (167,43,'gallery_images','38,39,40');
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2019-12-20 22:14:46','2019-12-20 22:14:46','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2019-12-20 22:14:46','2019-12-20 22:14:46','',0,'http://hudson-design.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2019-12-20 22:14:46','2019-12-20 22:14:46','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://hudson-design.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2020-01-10 20:40:46','2020-01-10 20:40:46','',0,'http://hudson-design.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2019-12-20 22:14:46','2019-12-20 22:14:46','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://hudson-design.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2019-12-20 22:14:46','2019-12-20 22:14:46','',0,'http://hudson-design.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2019-12-20 23:09:48','2019-12-20 23:09:48','','Skills','','publish','closed','closed','','home','','','2019-12-20 23:47:33','2019-12-20 23:47:33','',0,'http://hudson-design.local/?p=5',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2019-12-20 23:10:37','2019-12-20 23:10:37',' ','','','publish','closed','closed','','7','','','2019-12-20 23:10:37','2019-12-20 23:10:37','',0,'http://hudson-design.local/?p=7',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2019-12-20 23:12:26','2019-12-20 23:12:26','<!-- wp:paragraph -->\n<p>Lorem ipsum dummy text sits here. Lorem ipsum dummy text sits here. Lorem ipsum dummy text sits here. Lorem ipsum dummy text sits here. Lorem ipsum dummy text sits here. Lorem ipsum dummy text sits here. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','About me','','publish','closed','closed','','home','','','2020-01-10 22:17:12','2020-01-10 22:17:12','',0,'http://hudson-design.local/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2019-12-20 23:12:26','2019-12-20 23:12:26','','Home','','inherit','closed','closed','','8-revision-v1','','','2019-12-20 23:12:26','2019-12-20 23:12:26','',8,'http://hudson-design.local/8-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2019-12-20 23:13:17','2019-12-20 23:13:17','','Blog','','publish','closed','closed','','blog','','','2019-12-20 23:13:17','2019-12-20 23:13:17','',0,'http://hudson-design.local/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2019-12-20 23:13:17','2019-12-20 23:13:17','','Blog','','inherit','closed','closed','','10-revision-v1','','','2019-12-20 23:13:17','2019-12-20 23:13:17','',10,'http://hudson-design.local/10-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2019-12-20 23:47:33','2019-12-20 23:47:33','','Portfolio','','publish','closed','closed','','portfolio','','','2019-12-20 23:47:33','2019-12-20 23:47:33','',0,'http://hudson-design.local/?p=12',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2019-12-20 23:47:33','2019-12-20 23:47:33','','About me','','publish','closed','closed','','about-me','','','2019-12-20 23:47:33','2019-12-20 23:47:33','',0,'http://hudson-design.local/?p=13',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2019-12-20 23:47:33','2019-12-20 23:47:33','','Get in touch','','publish','closed','closed','','get-in-touch','','','2019-12-20 23:47:33','2019-12-20 23:47:33','',0,'http://hudson-design.local/?p=14',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-01-07 22:28:30','2020-01-07 22:28:30','','','','trash','closed','closed','','16__trashed','','','2020-01-07 22:29:34','2020-01-07 22:29:34','',0,'http://hudson-design.local/?post_type=skills&#038;p=16',0,'skills','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-01-07 22:29:42','2020-01-07 22:29:42','','','','trash','closed','closed','','17__trashed','','','2020-01-07 22:33:01','2020-01-07 22:33:01','',0,'http://hudson-design.local/?post_type=skills&#038;p=17',0,'skills','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-01-07 22:35:43','2020-01-07 22:35:43','','Wordpress Development','Lorem ipsum dolres sed convalesum incubo devares malar, prostar sed duve locum.','publish','closed','closed','','wordpress-development','','','2020-01-07 23:02:53','2020-01-07 23:02:53','',0,'http://hudson-design.local/?post_type=skills&#038;p=20',0,'skills','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-01-07 22:35:38','2020-01-07 22:35:38','','Add a heading','','inherit','open','closed','','add-a-heading','','','2020-01-07 22:35:38','2020-01-07 22:35:38','',20,'http://hudson-design.local/wp-content/uploads/2020/01/Add-a-heading.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-01-07 22:54:20','2020-01-07 22:54:20','','SEO Management','Lorem ipsum dolres sed convalesum incubo devares malar, prostar sed duve locum.','publish','closed','closed','','seo-management','','','2020-01-07 22:54:30','2020-01-07 22:54:30','',0,'http://hudson-design.local/?post_type=skills&#038;p=23',0,'skills','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-01-07 22:54:42','2020-01-07 22:54:42','','Digital Marketing','Lorem ipsum dolres sed convalesum incubo devares malar, prostar sed duve locum.','publish','closed','closed','','digital-marketing','','','2020-01-07 22:54:42','2020-01-07 22:54:42','',0,'http://hudson-design.local/?post_type=skills&#038;p=24',0,'skills','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-01-07 23:01:04','2020-01-07 23:01:04','','Hello 1234','foaenf;oewfnew;ofnw;aeofn;wejfnwqe','trash','closed','closed','','hello-1234__trashed','','','2020-01-08 21:50:57','2020-01-08 21:50:57','',0,'http://hudson-design.local/?post_type=skills&#038;p=25',0,'skills','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-01-08 22:07:19','2020-01-08 22:07:19','','Welcome to my site','Take a look around and check it all out. ','publish','closed','closed','','welcome-to-my-site','','','2020-01-08 22:07:19','2020-01-08 22:07:19','',0,'http://hudson-design.local/?post_type=slider&#038;p=26',0,'slider','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-01-08 22:06:59','2020-01-08 22:06:59','','back1','','inherit','open','closed','','back1','','','2020-01-08 22:06:59','2020-01-08 22:06:59','',26,'http://hudson-design.local/wp-content/uploads/2020/01/back1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-01-08 22:07:11','2020-01-08 22:07:11','','back3','','inherit','open','closed','','back3','','','2020-01-08 22:07:11','2020-01-08 22:07:11','',26,'http://hudson-design.local/wp-content/uploads/2020/01/back3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-01-08 22:07:12','2020-01-08 22:07:12','','back2','','inherit','open','closed','','back2','','','2020-01-08 22:07:12','2020-01-08 22:07:12','',26,'http://hudson-design.local/wp-content/uploads/2020/01/back2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-01-08 22:58:16','2020-01-08 22:58:16','','Test number 2','Hello again there','publish','closed','closed','','test-number-2','','','2020-01-08 22:58:16','2020-01-08 22:58:16','',0,'http://hudson-design.local/?post_type=slider&#038;p=30',0,'slider','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-01-09 21:03:56','2020-01-09 21:03:56','','TESSST','Welcome again','publish','closed','closed','','tessst','','','2020-01-09 21:03:56','2020-01-09 21:03:56','',0,'http://hudson-design.local/?post_type=slider&#038;p=31',0,'slider','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-01-09 21:23:25','2020-01-09 21:23:25','','Triathlon posts','','inherit','open','closed','','triathlon-posts','','','2020-01-09 21:23:25','2020-01-09 21:23:25','',0,'http://hudson-design.local/wp-content/uploads/2020/01/Triathlon-posts.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-01-09 21:23:28','2020-01-09 21:23:28','','Ozone-project','','inherit','open','closed','','ozone-project','','','2020-01-09 21:23:28','2020-01-09 21:23:28','',0,'http://hudson-design.local/wp-content/uploads/2020/01/Ozone-project.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-01-09 21:23:28','2020-01-09 21:23:28','','Planning-Hub','','inherit','open','closed','','planning-hub','','','2020-01-09 21:23:28','2020-01-09 21:23:28','',0,'http://hudson-design.local/wp-content/uploads/2020/01/Planning-Hub.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-01-09 21:23:28','2020-01-09 21:23:28','','Presque Vu Home','','inherit','open','closed','','presque-vu-home','','','2020-01-09 21:23:28','2020-01-09 21:23:28','',0,'http://hudson-design.local/wp-content/uploads/2020/01/Presque-Vu-Home.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-01-09 21:23:30','2020-01-09 21:23:30','','Presque Vu Post','','inherit','open','closed','','presque-vu-post','','','2020-01-09 21:23:30','2020-01-09 21:23:30','',0,'http://hudson-design.local/wp-content/uploads/2020/01/Presque-Vu-Post.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-01-09 21:23:32','2020-01-09 21:23:32','','Presque Vu Projects','','inherit','open','closed','','presque-vu-projects','','','2020-01-09 21:23:32','2020-01-09 21:23:32','',0,'http://hudson-design.local/wp-content/uploads/2020/01/Presque-Vu-Projects.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-01-09 21:23:34','2020-01-09 21:23:34','','Presque-Vu-Home-thumb','','inherit','open','closed','','presque-vu-home-thumb','','','2020-01-09 21:23:34','2020-01-09 21:23:34','',0,'http://hudson-design.local/wp-content/uploads/2020/01/Presque-Vu-Home-thumb.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-01-09 21:23:34','2020-01-09 21:23:34','','Triathlon home thumb','','inherit','open','closed','','triathlon-home-thumb','','','2020-01-09 21:23:34','2020-01-09 21:23:34','',0,'http://hudson-design.local/wp-content/uploads/2020/01/Triathlon-home-thumb.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-01-09 21:23:34','2020-01-09 21:23:34','','Triathlon home','','inherit','open','closed','','triathlon-home','','','2020-01-09 21:23:34','2020-01-09 21:23:34','',0,'http://hudson-design.local/wp-content/uploads/2020/01/Triathlon-home.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-01-09 21:25:13','2020-01-09 21:25:13','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;','Hudson Triathlon','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','publish','closed','closed','','hudson-triathlon','','','2020-01-13 22:29:29','2020-01-13 22:29:29','',0,'http://hudson-design.local/?post_type=portfolio&#038;p=41',0,'portfolio','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-01-09 21:26:42','2020-01-09 21:26:42','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Ozone Project','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','publish','closed','closed','','ozone-project','','','2020-01-09 21:26:42','2020-01-09 21:26:42','',0,'http://hudson-design.local/?post_type=portfolio&#038;p=42',0,'portfolio','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-01-09 21:27:06','2020-01-09 21:27:06','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Fitness Made Easy','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','publish','closed','closed','','fitness-made-easy','','','2020-01-16 22:50:38','2020-01-16 22:50:38','',0,'http://hudson-design.local/?post_type=portfolio&#038;p=43',0,'portfolio','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-01-09 21:50:50','2020-01-09 21:50:50','<!-- wp:paragraph -->\n<p>Lorem ipsum dummy text sits here</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','8-revision-v1','','','2020-01-09 21:50:50','2020-01-09 21:50:50','',8,'http://hudson-design.local/8-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-01-09 21:54:44','2020-01-09 21:54:44','<!-- wp:paragraph -->\n<p>Lorem ipsum dummy text sits here</p>\n<!-- /wp:paragraph -->','About me','','inherit','closed','closed','','8-revision-v1','','','2020-01-09 21:54:44','2020-01-09 21:54:44','',8,'http://hudson-design.local/8-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-01-10 20:27:19','2020-01-10 20:27:19','','Portfolio','','trash','closed','closed','','portfolio__trashed','','','2020-01-10 20:28:17','2020-01-10 20:28:17','',8,'http://hudson-design.local/?page_id=46',0,'page','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-01-10 20:27:19','2020-01-10 20:27:19','','Portfolio','','inherit','closed','closed','','46-revision-v1','','','2020-01-10 20:27:19','2020-01-10 20:27:19','',46,'http://hudson-design.local/46-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-01-10 20:40:46','2020-01-10 20:40:46','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://hudson-design.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2020-01-10 20:40:46','2020-01-10 20:40:46','',2,'http://hudson-design.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-01-10 21:14:11','2020-01-10 21:14:11','{\"id\":\"49\",\"field_id\":3,\"fields\":[{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"h3\"},{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"css\":\"h3\"},{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"h3\"}],\"settings\":{\"form_title\":\"Get in touch\",\"form_desc\":\"\",\"form_class\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"submit_class\":\"btn-primary btn\",\"honeypot\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"Contact Form: HWD\",\"sender_name\":\"hudson design\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for getting in touch! I will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"8\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"contact\"}}','Get in touch','','publish','closed','closed','','simple-contact-form','','','2020-01-10 21:17:56','2020-01-10 21:17:56','',0,'http://hudson-design.local/?post_type=wpforms&#038;p=49',0,'wpforms','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2020-01-10 21:22:41','2020-01-10 21:22:41','<!-- wp:paragraph -->\n<p>Lorem ipsum dummy text sits here</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[wpforms id=\"49\" title=\"false\" description=\"false\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','About me','','inherit','closed','closed','','8-revision-v1','','','2020-01-10 21:22:41','2020-01-10 21:22:41','',8,'http://hudson-design.local/8-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2020-01-10 21:23:27','2020-01-10 21:23:27','<!-- wp:paragraph -->\n<p>Lorem ipsum dummy text sits here</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":168} -->\n<div style=\"height:168px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading -->\n<h2>Get in touch</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[wpforms id=\"49\" title=\"false\" description=\"false\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','About me','','inherit','closed','closed','','8-revision-v1','','','2020-01-10 21:23:27','2020-01-10 21:23:27','',8,'http://hudson-design.local/8-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2020-01-10 21:23:50','2020-01-10 21:23:50','<!-- wp:paragraph -->\n<p>Lorem ipsum dummy text sits here</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":168} -->\n<div style=\"height:168px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Get in touch</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[wpforms id=\"49\" title=\"false\" description=\"false\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','About me','','inherit','closed','closed','','8-revision-v1','','','2020-01-10 21:23:50','2020-01-10 21:23:50','',8,'http://hudson-design.local/8-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-01-10 21:24:00','2020-01-10 21:24:00','<!-- wp:paragraph -->\n<p>Lorem ipsum dummy text sits here</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":168} -->\n<div style=\"height:168px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"align\":\"left\"} -->\n<h2 class=\"has-text-align-left\">Get in touch</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[wpforms id=\"49\" title=\"false\" description=\"false\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','About me','','inherit','closed','closed','','8-revision-v1','','','2020-01-10 21:24:00','2020-01-10 21:24:00','',8,'http://hudson-design.local/8-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-01-10 21:32:04','2020-01-10 21:32:04','<!-- wp:paragraph -->\n<p>[contact-form-7 id=\"57\" title=\"Contact form\"]</p>\n<!-- /wp:paragraph -->','Contact us','','publish','closed','closed','','contact-us','','','2020-01-10 21:37:20','2020-01-10 21:37:20','',0,'http://hudson-design.local/?page_id=54',0,'page','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-01-10 21:32:04','2020-01-10 21:32:04','','Contact us','','inherit','closed','closed','','54-revision-v1','','','2020-01-10 21:32:04','2020-01-10 21:32:04','',54,'http://hudson-design.local/54-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2020-01-10 21:32:59','2020-01-10 21:32:59','<!-- wp:paragraph -->\n<p>Lorem ipsum dummy text sits here</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','About me','','inherit','closed','closed','','8-revision-v1','','','2020-01-10 21:32:59','2020-01-10 21:32:59','',8,'http://hudson-design.local/8-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-01-10 21:35:55','2020-01-10 21:35:55','<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Submit\"]\n1\nContact form HDW\nhudson design <wordpress@hudson-design.local>\ndev-email@flywheel.local\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on hudson design (http://hudson-design.local)\nReply-To: [your-email]\n\n\n\n\nhudson design \"[your-subject]\"\nhudson design <wordpress@hudson-design.local>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on hudson design (http://hudson-design.local)\nReply-To: dev-email@flywheel.local\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.','Contact form','','publish','closed','closed','','contact-form-1','','','2020-01-10 21:37:04','2020-01-10 21:37:04','',0,'http://hudson-design.local/?post_type=wpcf7_contact_form&#038;p=57',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2020-01-10 21:37:20','2020-01-10 21:37:20','<!-- wp:paragraph -->\n<p>[contact-form-7 id=\"57\" title=\"Contact form\"]</p>\n<!-- /wp:paragraph -->','Contact us','','inherit','closed','closed','','54-revision-v1','','','2020-01-10 21:37:20','2020-01-10 21:37:20','',54,'http://hudson-design.local/54-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2020-01-10 22:17:12','2020-01-10 22:17:12','<!-- wp:paragraph -->\n<p>Lorem ipsum dummy text sits here. Lorem ipsum dummy text sits here. Lorem ipsum dummy text sits here. Lorem ipsum dummy text sits here. Lorem ipsum dummy text sits here. Lorem ipsum dummy text sits here. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','About me','','inherit','closed','closed','','8-revision-v1','','','2020-01-10 22:17:12','2020-01-10 22:17:12','',8,'http://hudson-design.local/8-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-01-13 22:59:23','2020-01-13 22:59:23','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"portfolio\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Image gallery','image-gallery','trash','closed','closed','','group_5e1cf5b0beb0a__trashed','','','2020-01-15 21:47:27','2020-01-15 21:47:27','',0,'http://hudson-design.local/?post_type=acf-field-group&#038;p=60',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-01-13 22:59:23','2020-01-13 22:59:23','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Image gallery','image_gallery','trash','closed','closed','','field_5e1cf5b87c0f7__trashed','','','2020-01-15 21:47:27','2020-01-15 21:47:27','',60,'http://hudson-design.local/?post_type=acf-field&#038;p=61',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2020-01-15 21:44:44','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-01-15 21:44:44','0000-00-00 00:00:00','',0,'http://hudson-design.local/?p=62',0,'post','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2020-01-15 21:47:18','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-01-15 21:47:18','0000-00-00 00:00:00','',0,'http://hudson-design.local/?post_type=acf-field-group&p=63',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2020-01-15 21:48:40','2020-01-15 21:48:40','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"portfolio\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Slideshow','slideshow','trash','closed','closed','','group_5e1f8871a8eb4__trashed','','','2020-01-16 22:34:29','2020-01-16 22:34:29','',0,'http://hudson-design.local/?post_type=acf-field-group&#038;p=64',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2020-01-15 21:48:40','2020-01-15 21:48:40','a:7:{s:4:\"type\";s:13:\"photo_gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"fields[slides\";a:1:{s:10:\"edit_modal\";s:7:\"Default\";}s:10:\"edit_modal\";s:7:\"Default\";}','slideshow images','slideshow_images','trash','closed','closed','','field_5e1f88756377d__trashed','','','2020-01-16 22:34:29','2020-01-16 22:34:29','',64,'http://hudson-design.local/?post_type=acf-field&#038;p=65',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2020-01-16 21:52:59','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-01-16 21:52:59','0000-00-00 00:00:00','',0,'http://hudson-design.local/?page_id=66',0,'page','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2020-01-16 21:53:45','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-01-16 21:53:45','0000-00-00 00:00:00','',0,'http://hudson-design.local/?page_id=67',0,'page','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2020-01-16 22:34:30','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-01-16 22:34:30','0000-00-00 00:00:00','',0,'http://hudson-design.local/?post_type=acf-field-group&p=68',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2020-01-16 22:50:16','2020-01-16 22:50:16','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"portfolio\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Image gallery','image-gallery','publish','closed','closed','','group_5e20e5e881307','','','2020-01-16 22:50:22','2020-01-16 22:50:22','',0,'http://hudson-design.local/?post_type=acf-field-group&#038;p=69',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2020-01-16 22:50:16','2020-01-16 22:50:16','a:7:{s:4:\"type\";s:13:\"photo_gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:21:\"fields[gallery_images\";a:1:{s:10:\"edit_modal\";s:7:\"Default\";}s:10:\"edit_modal\";s:7:\"Default\";}','Gallery images','gallery_images','publish','closed','closed','','field_5e20e8808dc8d','','','2020-01-16 22:50:16','2020-01-16 22:50:16','',69,'http://hudson-design.local/?post_type=acf-field&p=70',0,'acf-field','',0);
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
INSERT INTO `wp_term_relationships` VALUES (5,2,0);
INSERT INTO `wp_term_relationships` VALUES (7,3,0);
INSERT INTO `wp_term_relationships` VALUES (12,2,0);
INSERT INTO `wp_term_relationships` VALUES (13,2,0);
INSERT INTO `wp_term_relationships` VALUES (14,2,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Main nav','main-nav',0);
INSERT INTO `wp_terms` VALUES (3,'Footer nav','footer-nav',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','hudson');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
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
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:4:{s:64:\"f7c3b1ddda078f515f252e9dfbf3a40ec58dcd9f2a7e4fe3bb72d07a5f6c8520\";a:4:{s:10:\"expiration\";i:1578693042;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1578520242;}s:64:\"aa5ac2bde78267ce4661dad14b949e1dca97a1e5661dd83f2465ada1a4f7e983\";a:4:{s:10:\"expiration\";i:1578776613;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1578603813;}s:64:\"168fbd589f9855e3679475d740154f59b3e39149fb0e2077a874c8fce2d21c35\";a:4:{s:10:\"expiration\";i:1579897514;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36\";s:5:\"login\";i:1578687914;}s:64:\"ddeb050ef24dc105911b850f8b0dd74a1535cb67311ae869f44a5c9dc7feab44\";a:4:{s:10:\"expiration\";i:1578863655;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36\";s:5:\"login\";i:1578690855;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings-time','1576880482');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_dashboard_quick_press_last_post_id','62');
INSERT INTO `wp_usermeta` VALUES (20,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (24,1,'default_password_nag','');
INSERT INTO `wp_usermeta` VALUES (25,1,'closedpostboxes_skills','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'metaboxhidden_skills','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'closedpostboxes_portfolio','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (28,1,'metaboxhidden_portfolio','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (29,1,'meta-box-order_portfolio','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:22:\"submitdiv,postimagediv\";s:6:\"normal\";s:43:\"acf-group_5e1f8871a8eb4,postexcerpt,slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (30,1,'screen_layout_portfolio','2');
INSERT INTO `wp_usermeta` VALUES (31,1,'wpcf7_hide_welcome_panel_on','a:1:{i:0;s:3:\"5.1\";}');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'hudson','$P$B7PNvjM/5doKPHHnlfkBswlzZQc3u//','hudson','dev-email@flywheel.local','','2019-12-20 22:14:46','',0,'hudson');
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

-- Dump completed on 2020-01-21 15:05:39
