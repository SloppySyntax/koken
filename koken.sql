-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: test_koken
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

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
-- Table structure for table `koken_albums`
--

DROP TABLE IF EXISTS `koken_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_albums` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `old_slug` text,
  `summary` varchar(255) DEFAULT NULL,
  `description` text,
  `sort` varchar(255) DEFAULT 'manual ASC',
  `visibility` tinyint(1) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '1',
  `left_id` int(11) NOT NULL,
  `right_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `featured_on` int(10) DEFAULT NULL,
  `featured_order` int(11) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT '0',
  `video_count` int(11) NOT NULL DEFAULT '0',
  `published_on` int(10) DEFAULT NULL,
  `created_on` int(10) NOT NULL,
  `modified_on` int(10) NOT NULL,
  `album_type` tinyint(1) NOT NULL DEFAULT '0',
  `internal_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deleted` (`deleted`),
  KEY `level` (`level`),
  KEY `left_id` (`left_id`),
  KEY `right_id` (`right_id`),
  KEY `total_count` (`total_count`),
  KEY `video_count` (`video_count`),
  KEY `created_on` (`created_on`),
  KEY `published_on` (`published_on`),
  KEY `modified_on` (`modified_on`),
  KEY `album_type` (`album_type`),
  KEY `internal_id` (`internal_id`),
  KEY `featured_featured_order` (`featured`,`featured_order`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_albums`
--

LOCK TABLES `koken_albums` WRITE;
/*!40000 ALTER TABLE `koken_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `koken_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_applications`
--

DROP TABLE IF EXISTS `koken_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_applications` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `nonce` varchar(32) DEFAULT NULL,
  `token` varchar(32) DEFAULT NULL,
  `role` varchar(10) DEFAULT 'read',
  `name` varchar(255) DEFAULT NULL,
  `created_on` int(11) NOT NULL,
  `single_use` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `nonce` (`nonce`),
  KEY `token` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_applications`
--

LOCK TABLES `koken_applications` WRITE;
/*!40000 ALTER TABLE `koken_applications` DISABLE KEYS */;
INSERT INTO `koken_applications` VALUES (6,1,NULL,'61dda1ddef3f2b7d7fee46fac3b59aaa','god',NULL,1680957559,0);
/*!40000 ALTER TABLE `koken_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_categories`
--

DROP TABLE IF EXISTS `koken_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_categories` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `album_count` int(11) NOT NULL DEFAULT '0',
  `text_count` int(11) NOT NULL DEFAULT '0',
  `content_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `album_count` (`album_count`),
  KEY `content_count` (`content_count`),
  KEY `text_count` (`text_count`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_categories`
--

LOCK TABLES `koken_categories` WRITE;
/*!40000 ALTER TABLE `koken_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `koken_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_content`
--

DROP TABLE IF EXISTS `koken_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_content` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `old_slug` text,
  `filename` varchar(255) DEFAULT NULL,
  `caption` text,
  `visibility` tinyint(1) NOT NULL DEFAULT '0',
  `max_download` tinyint(1) NOT NULL DEFAULT '0',
  `license` char(3) NOT NULL DEFAULT 'all',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `featured_order` int(11) DEFAULT NULL,
  `favorite_order` int(11) DEFAULT NULL,
  `favorite` tinyint(1) NOT NULL DEFAULT '0',
  `favorited_on` int(10) DEFAULT NULL,
  `featured_on` int(10) DEFAULT NULL,
  `uploaded_on` int(10) NOT NULL,
  `captured_on` int(10) NOT NULL,
  `published_on` int(10) DEFAULT NULL,
  `modified_on` int(10) NOT NULL,
  `file_modified_on` int(10) NOT NULL,
  `focal_point` varchar(255) DEFAULT NULL,
  `filesize` int(11) NOT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `aspect_ratio` decimal(5,3) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `file_type` tinyint(1) NOT NULL DEFAULT '0',
  `lg_preview` varchar(255) DEFAULT NULL,
  `internal_id` char(32) NOT NULL,
  `has_exif` tinyint(1) NOT NULL DEFAULT '0',
  `has_iptc` tinyint(1) NOT NULL DEFAULT '0',
  `source` varchar(255) DEFAULT NULL,
  `source_url` varchar(255) DEFAULT NULL,
  `html` text,
  `storage_url` varchar(255) DEFAULT NULL,
  `storage_url_midsize` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filename` (`filename`),
  KEY `title` (`title`),
  KEY `deleted` (`deleted`),
  KEY `uploaded_on` (`uploaded_on`),
  KEY `captured_on` (`captured_on`),
  KEY `modified_on` (`modified_on`),
  KEY `published_on` (`published_on`),
  KEY `filesize` (`filesize`),
  KEY `file_type` (`file_type`),
  KEY `has_iptc` (`has_iptc`),
  KEY `has_exif` (`has_exif`),
  KEY `width` (`width`),
  KEY `height` (`height`),
  KEY `aspect_ratio` (`aspect_ratio`),
  KEY `featured_featured_order` (`featured`,`featured_order`),
  KEY `favorite_favorite_order` (`favorite`,`favorite_order`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=699 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_content`
--

LOCK TABLES `koken_content` WRITE;
/*!40000 ALTER TABLE `koken_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `koken_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_drafts`
--

DROP TABLE IF EXISTS `koken_drafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_drafts` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  `live_data` mediumtext,
  `data` mediumtext NOT NULL,
  `current` tinyint(1) NOT NULL DEFAULT '0',
  `draft` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` int(10) NOT NULL,
  `modified_on` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `path` (`path`),
  KEY `current` (`current`),
  KEY `draft` (`draft`),
  KEY `created_on` (`created_on`),
  KEY `modified_on` (`modified_on`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_drafts`
--

LOCK TABLES `koken_drafts` WRITE;
/*!40000 ALTER TABLE `koken_drafts` DISABLE KEYS */;
INSERT INTO `koken_drafts` VALUES (1,'elementary','{\"navigation\":{\"items\":[{\"auto\":\"home\",\"front\":true,\"path\":\"\\/home\\/\"},{\"auto\":\"timeline\"},{\"auto\":\"albums\"},{\"auto\":\"contents\"},{\"auto\":\"essays\"}],\"groups\":[{\"key\":\"footer\",\"label\":\"Footer\",\"items\":[{\"auto\":\"home\",\"front\":true,\"path\":\"\\/home\\/\"},{\"auto\":\"albums\"},{\"auto\":\"contents\"},{\"auto\":\"essays\"}]},{\"key\":\"aside_links\",\"label\":\"Aside links\",\"items\":[]}]}}','{\"navigation\":{\"items\":[{\"auto\":\"home\",\"front\":true,\"path\":\"\\/home\\/\",\"label\":\"Home\"},{\"auto\":\"timeline\",\"path\":\"\\/timeline\\/\",\"label\":\"Timeline\"},{\"auto\":\"albums\",\"path\":\"\\/albums\\/\",\"label\":\"Albums\"},{\"auto\":\"contents\",\"path\":\"\\/content\\/\",\"label\":\"Content\"},{\"auto\":\"essays\",\"path\":\"\\/essays\\/\",\"label\":\"Essays\"}],\"groups\":[{\"key\":\"footer\",\"label\":\"Footer\",\"items\":[{\"auto\":\"home\",\"front\":true,\"path\":\"\\/home\\/\",\"label\":\"Home\"},{\"auto\":\"albums\",\"path\":\"\\/albums\\/\",\"label\":\"Albums\"},{\"auto\":\"contents\",\"path\":\"\\/content\\/\",\"label\":\"Content\"},{\"auto\":\"essays\",\"path\":\"\\/essays\\/\",\"label\":\"Essays\"}],\"items_nested\":[{\"auto\":\"home\",\"front\":true,\"path\":\"\\/home\\/\",\"label\":\"Home\"},{\"auto\":\"albums\",\"path\":\"\\/albums\\/\",\"label\":\"Albums\"},{\"auto\":\"contents\",\"path\":\"\\/content\\/\",\"label\":\"Content\"},{\"auto\":\"essays\",\"path\":\"\\/essays\\/\",\"label\":\"Essays\"}]},{\"key\":\"aside_links\",\"label\":\"Aside links\",\"items\":[],\"items_nested\":[]}],\"items_nested\":[{\"auto\":\"home\",\"front\":true,\"path\":\"\\/home\\/\",\"label\":\"Home\"},{\"auto\":\"timeline\",\"path\":\"\\/timeline\\/\",\"label\":\"Timeline\"},{\"auto\":\"albums\",\"path\":\"\\/albums\\/\",\"label\":\"Albums\"},{\"auto\":\"contents\",\"path\":\"\\/content\\/\",\"label\":\"Content\"},{\"auto\":\"essays\",\"path\":\"\\/essays\\/\",\"label\":\"Essays\"}]},\"settings\":{\"__style\":\"gray\",\"color_bg\":\"#2b2b2b\",\"color_text\":\"#888\",\"color_text_reverse\":\"#2b2b2b\",\"color_hr\":\"#444\",\"color_links\":\"#eee\",\"color_links_hover\":\"#eee\",\"color_bq\":\"#666\",\"color_text_meta\":\"#888\",\"color_h\":\"#eee\",\"color_nav\":\"#888\",\"color_nav_hover\":\"#eee\",\"color_nav_current\":\"#eee\",\"color_essay_caption\":\"#222\",\"color_essay_caption_text\":\"#aaa\",\"firefox_alias\":\"grayscale\",\"built_with\":false,\"show_social\":false,\"font_title\":\"source_serif_pro\",\"show_tagline\":false},\"custom_css\":\"\",\"routes\":{\"\\/content\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/tags\\/:slug\\/content\\/\"},\"\\/content\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/categories\\/:slug\\/content\\/\"},\"\\/albums\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/tags\\/:slug\\/albums\\/\"},\"\\/albums\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/categories\\/:slug\\/albums\\/\"},\"\\/essays\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/tags\\/:slug\\/essays\\/\"},\"\\/essays\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/categories\\/:slug\\/essays\\/\"},\"\\/content\\/:id\\/in_album\\/:album_id(?P<lightbox>\\/lightbox)?\\/\":{\"template\":\"redirect:content\"},\"\\/archives(?:\\/:year(?:\\/:month)?)?\\/\":{\"template\":\"redirect:timeline\"},\"\\/sets\\/\":{\"template\":\"redirect:soft:albums\"},\"\\/pages\\/:id\\/\":{\"template\":\"redirect:page\"}}}',0,0,1541409867,1541413121),(2,'ensemble-605ea246-fa37-11f0-f078-d54c8a7cbd3c','{\"navigation\":{\"items\":[{\"auto\":\"album\",\"id\":1},{\"auto\":\"album\",\"id\":3},{\"auto\":\"album\",\"id\":4},{\"auto\":\"album\",\"id\":5},{\"auto\":\"album\",\"id\":6},{\"auto\":\"album\",\"id\":7},{\"auto\":\"album\",\"id\":8},{\"label\":\"[ Contact ]\",\"front\":false,\"auto\":\"page\",\"id\":1,\"allow_label\":true}],\"groups\":[],\"items_nested\":[{\"auto\":\"album\",\"id\":1,\"path\":\"\\/albums\\/astrophotography\\/\",\"label\":\"Astrophotography\"},{\"auto\":\"album\",\"id\":3,\"path\":\"\\/albums\\/higher-grounds\\/\",\"label\":\"Higher grounds\"},{\"auto\":\"album\",\"id\":4,\"path\":\"\\/albums\\/landscapes-landmarks\\/\",\"label\":\"Landscapes & Landmarks\"},{\"auto\":\"album\",\"id\":5,\"path\":\"\\/albums\\/urban-explorations\\/\",\"label\":\"Urban explorations\"},{\"auto\":\"album\",\"id\":6,\"path\":\"\\/albums\\/portret\\/\",\"label\":\"Portret\"},{\"auto\":\"album\",\"id\":7,\"path\":\"\\/albums\\/artistic-nude\\/\",\"label\":\"Artistic Nude\"},{\"auto\":\"album\",\"id\":8,\"path\":\"\\/albums\\/misc\\/\",\"label\":\"Misc\"},{\"auto\":\"page\",\"id\":1,\"path\":\"\\/pages\\/contact\\/\",\"label\":\"Contact\"}]},\"settings\":{\"__style\":\"black\",\"color_bg\":\"#000\",\"color_text\":\"#818181\",\"color_links\":\"#9e9e9e\",\"color_links_hover\":\"#fff\",\"color_text_meta\":\"#505050\",\"color_h\":\"#9e9e9e\",\"firefox_alias\":\"grayscale\",\"button_color\":\"#000\",\"font\":\"default\",\"site_title_weight\":\"400\",\"show_event_text\":true,\"show_event_caption\":false,\"show_event_categories\":false,\"show_event_tags\":false,\"show_event_date\":false,\"social_bttns_show_two\":false,\"show_album_dl\":false,\"show_rating\":false,\"built_with\":false,\"social_bttns_show_one\":false,\"show_content_title\":true,\"show_content_text\":false,\"show_content_rating\":false,\"show_disc_content\":false,\"show_content_source\":false,\"cd_show_more\":false,\"show_content_catstags\":true,\"show_summary\":false,\"show_more_albums\":false,\"show_title\":false,\"show_caption\":false,\"show_exif\":true},\"custom_css\":\"\",\"routes\":{\"\\/content\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/tags\\/:slug\\/content\\/\"},\"\\/content\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/categories\\/:slug\\/content\\/\"},\"\\/albums\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/tags\\/:slug\\/albums\\/\"},\"\\/albums\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/categories\\/:slug\\/albums\\/\"},\"\\/essays\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/tags\\/:slug\\/essays\\/\"},\"\\/essays\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/categories\\/:slug\\/essays\\/\"},\"\\/content\\/:id\\/in_album\\/:album_id(?P<lightbox>\\/lightbox)?\\/\":{\"template\":\"redirect:content\"},\"\\/archives(?:\\/:year(?:\\/:month)?)?\\/\":{\"template\":\"redirect:timeline\"},\"\\/sets\\/\":{\"template\":\"redirect:soft:albums\"},\"\\/pages\\/:id\\/\":{\"template\":\"redirect:page\"}}}','{\"navigation\":{\"items\":[{\"auto\":\"album\",\"id\":1},{\"auto\":\"album\",\"id\":3},{\"auto\":\"album\",\"id\":4},{\"auto\":\"album\",\"id\":5},{\"auto\":\"album\",\"id\":6},{\"auto\":\"album\",\"id\":7},{\"auto\":\"album\",\"id\":8},{\"label\":\"[ Contact ]\",\"front\":false,\"auto\":\"page\",\"id\":1,\"allow_label\":true}],\"groups\":[],\"items_nested\":[{\"auto\":\"album\",\"id\":1,\"path\":\"\\/albums\\/astrophotography\\/\",\"label\":\"Astrophotography\"},{\"auto\":\"album\",\"id\":3,\"path\":\"\\/albums\\/higher-grounds\\/\",\"label\":\"Higher grounds\"},{\"auto\":\"album\",\"id\":4,\"path\":\"\\/albums\\/landscapes-landmarks\\/\",\"label\":\"Landscapes & Landmarks\"},{\"auto\":\"album\",\"id\":5,\"path\":\"\\/albums\\/urban-explorations\\/\",\"label\":\"Urban explorations\"},{\"auto\":\"album\",\"id\":6,\"path\":\"\\/albums\\/portret\\/\",\"label\":\"Portret\"},{\"auto\":\"album\",\"id\":7,\"path\":\"\\/albums\\/artistic-nude\\/\",\"label\":\"Artistic Nude\"},{\"auto\":\"album\",\"id\":8,\"path\":\"\\/albums\\/misc\\/\",\"label\":\"Misc\"},{\"auto\":\"page\",\"id\":1,\"path\":\"\\/pages\\/contact\\/\",\"label\":\"Contact\"}]},\"settings\":{\"__style\":\"black\",\"color_bg\":\"#000\",\"color_text\":\"#818181\",\"color_links\":\"#9e9e9e\",\"color_links_hover\":\"#fff\",\"color_text_meta\":\"#505050\",\"color_h\":\"#9e9e9e\",\"firefox_alias\":\"grayscale\",\"button_color\":\"#000\",\"font\":\"default\",\"site_title_weight\":\"400\",\"show_event_text\":true,\"show_event_caption\":false,\"show_event_categories\":false,\"show_event_tags\":false,\"show_event_date\":false,\"social_bttns_show_two\":false,\"show_album_dl\":false,\"show_rating\":false,\"built_with\":false,\"social_bttns_show_one\":false,\"show_content_title\":true,\"show_content_text\":false,\"show_content_rating\":false,\"show_disc_content\":false,\"show_content_source\":false,\"cd_show_more\":false,\"show_content_catstags\":true,\"show_summary\":false,\"show_more_albums\":false,\"show_title\":false,\"show_caption\":false,\"show_exif\":true},\"custom_css\":\"\",\"routes\":{\"\\/content\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/tags\\/:slug\\/content\\/\"},\"\\/content\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/categories\\/:slug\\/content\\/\"},\"\\/albums\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/tags\\/:slug\\/albums\\/\"},\"\\/albums\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/categories\\/:slug\\/albums\\/\"},\"\\/essays\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/tags\\/:slug\\/essays\\/\"},\"\\/essays\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/categories\\/:slug\\/essays\\/\"},\"\\/content\\/:id\\/in_album\\/:album_id(?P<lightbox>\\/lightbox)?\\/\":{\"template\":\"redirect:content\"},\"\\/archives(?:\\/:year(?:\\/:month)?)?\\/\":{\"template\":\"redirect:timeline\"},\"\\/sets\\/\":{\"template\":\"redirect:soft:albums\"},\"\\/pages\\/:id\\/\":{\"template\":\"redirect:page\"}}}',0,0,1541412749,1541425641),(3,'chastain-d174e766-5a5f-19eb-d735-5b46ae673a6d','{\"navigation\":{\"items\":[{\"auto\":\"album\",\"id\":1},{\"auto\":\"album\",\"id\":3},{\"auto\":\"album\",\"id\":4},{\"auto\":\"album\",\"id\":5},{\"auto\":\"album\",\"id\":6},{\"auto\":\"album\",\"id\":7},{\"auto\":\"album\",\"id\":8},{\"label\":\"[ Contact ]\",\"front\":false,\"auto\":\"page\",\"id\":1,\"allow_label\":true},{\"label\":\"Flickr\",\"target\":\"_blank\",\"custom\":true,\"path\":\"http:\\/\\/www.flickr.com\\/photos\\/terrainscan\"},{\"label\":\"500px\",\"target\":\"_blank\",\"custom\":true,\"path\":\"https:\\/\\/500px.com\\/ArnoldvanRooij\"}],\"groups\":[],\"items_nested\":[{\"auto\":\"album\",\"id\":1,\"path\":\"\\/albums\\/astrophotography\\/\",\"label\":\"Astrophotography\"},{\"auto\":\"album\",\"id\":3,\"path\":\"\\/albums\\/higher-grounds\\/\",\"label\":\"Higher grounds\"},{\"auto\":\"album\",\"id\":4,\"path\":\"\\/albums\\/landscapes-landmarks\\/\",\"label\":\"Landscapes & Landmarks\"},{\"auto\":\"album\",\"id\":5,\"path\":\"\\/albums\\/urban-explorations\\/\",\"label\":\"Urban explorations\"},{\"auto\":\"album\",\"id\":6,\"path\":\"\\/albums\\/portret\\/\",\"label\":\"Portret\"},{\"auto\":\"album\",\"id\":7,\"path\":\"\\/albums\\/artistic-nude\\/\",\"label\":\"Artistic Nude\"},{\"auto\":\"album\",\"id\":8,\"path\":\"\\/albums\\/misc\\/\",\"label\":\"Misc\"},{\"label\":\"[ Contact ]\",\"front\":false,\"auto\":\"page\",\"id\":1,\"allow_label\":true,\"path\":\"\\/pages\\/contact\\/\"},{\"label\":\"Flickr\",\"target\":\"_blank\",\"custom\":true,\"path\":\"http:\\/\\/www.flickr.com\\/photos\\/terrainscan\"}]},\"settings\":{\"__style\":\"black\",\"background_color\":\"#000\",\"header_color\":\"#111\",\"footer_color\":\"#111\",\"title_color\":\"#fff\",\"font_color\":\"#818181\",\"meta_color\":\"#999\",\"link_color\":\"#fff\",\"link_hover_color\":\"#fff\",\"nav_current_color\":\"#fff\",\"firefox_alias\":\"grayscale\",\"button_color\":\"#111\",\"show_navigation\":true,\"social_bttns_show_one\":true,\"site_title_size\":\"26\",\"header_padding\":\"24\",\"footer_padding\":\"10\",\"show_caption\":false,\"show_album_dl\":false,\"show_title\":false},\"custom_css\":\"\",\"routes\":{\"\\/albums\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/albums\\/tags\\/:slug\\/\"},\"\\/albums\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/albums\\/categories\\/:slug\\/\"},\"\\/essays\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/essays\\/tags\\/:slug\\/\"},\"\\/essays\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/essays\\/categories\\/:slug\\/\"},\"\\/content\\/:id\\/in_album\\/:album_id(?P<lightbox>\\/lightbox)?\\/\":{\"template\":\"redirect:content\"},\"\\/archives(?:\\/:year(?:\\/:month)?)?\\/\":{\"template\":\"redirect:timeline\"},\"\\/sets\\/\":{\"template\":\"redirect:soft:albums\"},\"\\/pages\\/:id\\/\":{\"template\":\"redirect:page\"}}}','{\"navigation\":{\"items\":[{\"auto\":\"album\",\"id\":1},{\"auto\":\"album\",\"id\":3},{\"auto\":\"album\",\"id\":4},{\"auto\":\"album\",\"id\":5},{\"auto\":\"album\",\"id\":6},{\"auto\":\"album\",\"id\":7},{\"auto\":\"album\",\"id\":8},{\"label\":\"[ Contact ]\",\"front\":false,\"auto\":\"page\",\"id\":1,\"allow_label\":true},{\"label\":\"Flickr\",\"target\":\"_blank\",\"custom\":true,\"path\":\"http:\\/\\/www.flickr.com\\/photos\\/terrainscan\"},{\"label\":\"500px\",\"target\":\"_blank\",\"custom\":true,\"path\":\"https:\\/\\/500px.com\\/ArnoldvanRooij\"}],\"groups\":[],\"items_nested\":[{\"auto\":\"album\",\"id\":1,\"path\":\"\\/albums\\/astrophotography\\/\",\"label\":\"Astrophotography\"},{\"auto\":\"album\",\"id\":3,\"path\":\"\\/albums\\/higher-grounds\\/\",\"label\":\"Higher grounds\"},{\"auto\":\"album\",\"id\":4,\"path\":\"\\/albums\\/landscapes-landmarks\\/\",\"label\":\"Landscapes & Landmarks\"},{\"auto\":\"album\",\"id\":5,\"path\":\"\\/albums\\/urban-explorations\\/\",\"label\":\"Urban explorations\"},{\"auto\":\"album\",\"id\":6,\"path\":\"\\/albums\\/portret\\/\",\"label\":\"Portret\"},{\"auto\":\"album\",\"id\":7,\"path\":\"\\/albums\\/artistic-nude\\/\",\"label\":\"Artistic Nude\"},{\"auto\":\"album\",\"id\":8,\"path\":\"\\/albums\\/misc\\/\",\"label\":\"Misc\"},{\"label\":\"[ Contact ]\",\"front\":false,\"auto\":\"page\",\"id\":1,\"allow_label\":true,\"path\":\"\\/pages\\/contact\\/\"},{\"label\":\"Flickr\",\"target\":\"_blank\",\"custom\":true,\"path\":\"http:\\/\\/www.flickr.com\\/photos\\/terrainscan\"}]},\"settings\":{\"__style\":\"black\",\"background_color\":\"#000\",\"header_color\":\"#111\",\"footer_color\":\"#111\",\"title_color\":\"#fff\",\"font_color\":\"#818181\",\"meta_color\":\"#999\",\"link_color\":\"#fff\",\"link_hover_color\":\"#fff\",\"nav_current_color\":\"#fff\",\"firefox_alias\":\"grayscale\",\"button_color\":\"#111\",\"show_navigation\":true,\"social_bttns_show_one\":true,\"site_title_size\":\"26\",\"header_padding\":\"24\",\"footer_padding\":\"10\",\"show_caption\":false,\"show_album_dl\":false,\"show_title\":false},\"custom_css\":\"\",\"routes\":{\"\\/albums\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/albums\\/tags\\/:slug\\/\"},\"\\/albums\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/albums\\/categories\\/:slug\\/\"},\"\\/essays\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/essays\\/tags\\/:slug\\/\"},\"\\/essays\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/essays\\/categories\\/:slug\\/\"},\"\\/content\\/:id\\/in_album\\/:album_id(?P<lightbox>\\/lightbox)?\\/\":{\"template\":\"redirect:content\"},\"\\/archives(?:\\/:year(?:\\/:month)?)?\\/\":{\"template\":\"redirect:timeline\"},\"\\/sets\\/\":{\"template\":\"redirect:soft:albums\"},\"\\/pages\\/:id\\/\":{\"template\":\"redirect:page\"}}}',0,0,1541414059,1541429404),(4,'repertoire-fa8a5d39-01a5-dfd6-92ff-65a22af5d5ac','{\"navigation\":{\"items\":[{\"auto\":\"home\",\"front\":true,\"path\":\"\\/home\\/\",\"label\":\"Home\"},{\"auto\":\"timeline\",\"path\":\"\\/timeline\\/\",\"label\":\"Timeline\"},{\"auto\":\"albums\",\"path\":\"\\/albums\\/\",\"label\":\"Albums\"},{\"auto\":\"essays\",\"path\":\"\\/essays\\/\",\"label\":\"Essays\"},{\"auto\":\"album\",\"id\":1,\"path\":\"\\/albums\\/astrophotography\\/\",\"label\":\"Astrophotography\"},{\"auto\":\"album\",\"id\":3,\"path\":\"\\/albums\\/higher-grounds\\/\",\"label\":\"Higher grounds\"},{\"auto\":\"album\",\"id\":4,\"path\":\"\\/albums\\/landscapes-landmarks\\/\",\"label\":\"Landscapes & Landmarks\"},{\"auto\":\"album\",\"id\":5,\"path\":\"\\/albums\\/urban-explorations\\/\",\"label\":\"Urban explorations\"},{\"auto\":\"album\",\"id\":6,\"path\":\"\\/albums\\/portret\\/\",\"label\":\"Portret\"},{\"auto\":\"album\",\"id\":7,\"path\":\"\\/albums\\/artistic-nude\\/\",\"label\":\"Artistic Nude\"},{\"auto\":\"album\",\"id\":8,\"path\":\"\\/albums\\/misc\\/\",\"label\":\"Misc\"},{\"label\":\"[ Contact ]\",\"front\":false,\"auto\":\"page\",\"id\":1,\"allow_label\":true,\"path\":\"\\/pages\\/contact\\/\"}],\"groups\":[{\"key\":\"secondary\",\"label\":\"Secondary\",\"items\":[],\"items_nested\":[]},{\"key\":\"tertiary\",\"label\":\"Tertiary\",\"items\":[],\"items_nested\":[]}],\"items_nested\":[{\"auto\":\"home\",\"front\":true,\"path\":\"\\/home\\/\",\"label\":\"Home\"},{\"auto\":\"timeline\",\"path\":\"\\/timeline\\/\",\"label\":\"Timeline\"},{\"auto\":\"albums\",\"path\":\"\\/albums\\/\",\"label\":\"Albums\"},{\"auto\":\"essays\",\"path\":\"\\/essays\\/\",\"label\":\"Essays\"},{\"auto\":\"album\",\"id\":1,\"path\":\"\\/albums\\/astrophotography\\/\",\"label\":\"Astrophotography\"},{\"auto\":\"album\",\"id\":3,\"path\":\"\\/albums\\/higher-grounds\\/\",\"label\":\"Higher grounds\"},{\"auto\":\"album\",\"id\":4,\"path\":\"\\/albums\\/landscapes-landmarks\\/\",\"label\":\"Landscapes & Landmarks\"},{\"auto\":\"album\",\"id\":5,\"path\":\"\\/albums\\/urban-explorations\\/\",\"label\":\"Urban explorations\"},{\"auto\":\"album\",\"id\":6,\"path\":\"\\/albums\\/portret\\/\",\"label\":\"Portret\"},{\"auto\":\"album\",\"id\":7,\"path\":\"\\/albums\\/artistic-nude\\/\",\"label\":\"Artistic Nude\"},{\"auto\":\"album\",\"id\":8,\"path\":\"\\/albums\\/misc\\/\",\"label\":\"Misc\"},{\"label\":\"[ Contact ]\",\"front\":false,\"auto\":\"page\",\"id\":1,\"allow_label\":true,\"path\":\"\\/pages\\/contact\\/\"}]},\"settings\":{\"__style\":\"black\",\"color_bg\":\"#000\",\"color_text\":\"#999\",\"color_headers\":\"#dedede\",\"color_nav_link\":\"#999\",\"color_nav_link_hover\":\"#fff\",\"color_meta\":\"#666\",\"color_pag_link\":\"#dedede\",\"index_layout\":\"one\",\"albumd_show_categories\":false,\"built_with\":false,\"nav_show_secondary\":false,\"nav_show_tertiary\":false,\"albumd_show_year\":false,\"albumd_show_dl\":false,\"albumd_show_rating\":false,\"show_img_spinner\":false,\"nav_show_headers\":false,\"social_bttns_show_one\":false,\"show_rating\":false},\"custom_css\":\"\",\"routes\":{\"\\/albums\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/tags\\/:slug\\/albums\\/\"},\"\\/albums\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/categories\\/:slug\\/albums\\/\"},\"\\/essays\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/tags\\/:slug\\/essays\\/\"},\"\\/essays\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/categories\\/:slug\\/essays\\/\"},\"\\/content\\/:id\\/in_album\\/:album_id(?P<lightbox>\\/lightbox)?\\/\":{\"template\":\"redirect:content\"},\"\\/archives(?:\\/:year(?:\\/:month)?)?\\/\":{\"template\":\"redirect:timeline\"},\"\\/sets\\/\":{\"template\":\"redirect:soft:albums\"},\"\\/pages\\/:id\\/\":{\"template\":\"redirect:page\"}}}','{\"navigation\":{\"items\":[{\"auto\":\"home\",\"front\":true,\"path\":\"\\/home\\/\",\"label\":\"Home\"},{\"auto\":\"timeline\",\"path\":\"\\/timeline\\/\",\"label\":\"Timeline\"},{\"auto\":\"albums\",\"path\":\"\\/albums\\/\",\"label\":\"Albums\"},{\"auto\":\"essays\",\"path\":\"\\/essays\\/\",\"label\":\"Essays\"},{\"auto\":\"album\",\"id\":1,\"path\":\"\\/albums\\/astrophotography\\/\",\"label\":\"Astrophotography\"},{\"auto\":\"album\",\"id\":3,\"path\":\"\\/albums\\/higher-grounds\\/\",\"label\":\"Higher grounds\"},{\"auto\":\"album\",\"id\":4,\"path\":\"\\/albums\\/landscapes-landmarks\\/\",\"label\":\"Landscapes & Landmarks\"},{\"auto\":\"album\",\"id\":5,\"path\":\"\\/albums\\/urban-explorations\\/\",\"label\":\"Urban explorations\"},{\"auto\":\"album\",\"id\":6,\"path\":\"\\/albums\\/portret\\/\",\"label\":\"Portret\"},{\"auto\":\"album\",\"id\":7,\"path\":\"\\/albums\\/artistic-nude\\/\",\"label\":\"Artistic Nude\"},{\"auto\":\"album\",\"id\":8,\"path\":\"\\/albums\\/misc\\/\",\"label\":\"Misc\"},{\"label\":\"[ Contact ]\",\"front\":false,\"auto\":\"page\",\"id\":1,\"allow_label\":true,\"path\":\"\\/pages\\/contact\\/\"}],\"groups\":[{\"key\":\"secondary\",\"label\":\"Secondary\",\"items\":[],\"items_nested\":[]},{\"key\":\"tertiary\",\"label\":\"Tertiary\",\"items\":[],\"items_nested\":[]}],\"items_nested\":[{\"auto\":\"home\",\"front\":true,\"path\":\"\\/home\\/\",\"label\":\"Home\"},{\"auto\":\"timeline\",\"path\":\"\\/timeline\\/\",\"label\":\"Timeline\"},{\"auto\":\"albums\",\"path\":\"\\/albums\\/\",\"label\":\"Albums\"},{\"auto\":\"essays\",\"path\":\"\\/essays\\/\",\"label\":\"Essays\"},{\"auto\":\"album\",\"id\":1,\"path\":\"\\/albums\\/astrophotography\\/\",\"label\":\"Astrophotography\"},{\"auto\":\"album\",\"id\":3,\"path\":\"\\/albums\\/higher-grounds\\/\",\"label\":\"Higher grounds\"},{\"auto\":\"album\",\"id\":4,\"path\":\"\\/albums\\/landscapes-landmarks\\/\",\"label\":\"Landscapes & Landmarks\"},{\"auto\":\"album\",\"id\":5,\"path\":\"\\/albums\\/urban-explorations\\/\",\"label\":\"Urban explorations\"},{\"auto\":\"album\",\"id\":6,\"path\":\"\\/albums\\/portret\\/\",\"label\":\"Portret\"},{\"auto\":\"album\",\"id\":7,\"path\":\"\\/albums\\/artistic-nude\\/\",\"label\":\"Artistic Nude\"},{\"auto\":\"album\",\"id\":8,\"path\":\"\\/albums\\/misc\\/\",\"label\":\"Misc\"},{\"label\":\"[ Contact ]\",\"front\":false,\"auto\":\"page\",\"id\":1,\"allow_label\":true,\"path\":\"\\/pages\\/contact\\/\"}]},\"settings\":{\"__style\":\"black\",\"color_bg\":\"#000\",\"color_text\":\"#999\",\"color_headers\":\"#dedede\",\"color_nav_link\":\"#999\",\"color_nav_link_hover\":\"#fff\",\"color_meta\":\"#666\",\"color_pag_link\":\"#dedede\",\"index_layout\":\"one\",\"albumd_show_categories\":false,\"built_with\":false,\"nav_show_secondary\":false,\"nav_show_tertiary\":false,\"albumd_show_year\":false,\"albumd_show_dl\":false,\"albumd_show_rating\":false,\"show_img_spinner\":false,\"nav_show_headers\":false,\"social_bttns_show_one\":false,\"show_rating\":false},\"custom_css\":\"\",\"routes\":{\"\\/albums\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/tags\\/:slug\\/albums\\/\"},\"\\/albums\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/categories\\/:slug\\/albums\\/\"},\"\\/essays\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/tags\\/:slug\\/essays\\/\"},\"\\/essays\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/categories\\/:slug\\/essays\\/\"},\"\\/content\\/:id\\/in_album\\/:album_id(?P<lightbox>\\/lightbox)?\\/\":{\"template\":\"redirect:content\"},\"\\/archives(?:\\/:year(?:\\/:month)?)?\\/\":{\"template\":\"redirect:timeline\"},\"\\/sets\\/\":{\"template\":\"redirect:soft:albums\"},\"\\/pages\\/:id\\/\":{\"template\":\"redirect:page\"}}}',0,0,1541425867,1541426231),(5,'norma-master','{\"navigation\":{\"items\":[{\"label\":\"&nbsp;\",\"front\":true,\"auto\":\"home\",\"allow_label\":true,\"hide\":true},{\"auto\":\"album\",\"id\":77},{\"auto\":\"album\",\"id\":115},{\"auto\":\"album\",\"id\":93},{\"auto\":\"album\",\"id\":79},{\"auto\":\"album\",\"id\":119},{\"auto\":\"album\",\"id\":78},{\"label\":\"City & Landscapes \",\"front\":false,\"auto\":\"set\",\"id\":36,\"allow_label\":true},{\"auto\":\"set\",\"id\":22},{\"label\":\"[ News & exhibitions ]\",\"front\":false,\"auto\":\"essays\",\"allow_label\":true},{\"label\":\"[ Contact ]\",\"front\":false,\"auto\":\"page\",\"id\":1,\"allow_label\":true}],\"groups\":[],\"items_nested\":[{\"label\":\"&nbsp;\",\"front\":true,\"auto\":\"home\",\"allow_label\":true,\"hide\":true,\"path\":\"\\/home\\/\"},{\"auto\":\"album\",\"id\":119,\"path\":\"\\/albums\\/beeldbewerking\\/\",\"label\":\"Beeldbewerking\"},{\"label\":\"City & Landscapes \",\"front\":false,\"auto\":\"set\",\"id\":36,\"allow_label\":true,\"path\":\"\\/sets\\/places\\/\",\"set\":true,\"items\":[{\"auto\":\"album\",\"id\":77,\"path\":\"\\/albums\\/portraits\\/\",\"label\":\"Portraits\"},{\"auto\":\"album\",\"id\":115,\"path\":\"\\/albums\\/portraits-bw\\/\",\"label\":\"Portraits B&W\"},{\"auto\":\"album\",\"id\":93,\"path\":\"\\/albums\\/winter\\/\",\"label\":\"Portraits SFX\"},{\"auto\":\"album\",\"id\":78,\"path\":\"\\/albums\\/outdoor-1\\/\",\"label\":\"Outdoor\"},{\"auto\":\"album\",\"id\":79,\"path\":\"\\/albums\\/figure\\/\",\"label\":\"Artistic Nude\"}]},{\"auto\":\"set\",\"id\":22,\"path\":\"\\/sets\\/astro-1\\/\",\"label\":\"Astro\",\"set\":true},{\"label\":\"[ News & exhibitions ]\",\"front\":false,\"auto\":\"essays\",\"allow_label\":true,\"path\":\"\\/essays\\/\"},{\"label\":\"[ Contact ]\",\"front\":false,\"auto\":\"page\",\"id\":1,\"allow_label\":true,\"path\":\"\\/pages\\/contact\\/\"}]},\"custom_css\":\".time { display:none; }\\n\\/* .page-content a img { display:none; } *\\/\\n\\n\\/* image below menu on mobile devices *\\/\\n@media screen and (max-width: 540px) {\\n    #logo { display: none; }\\n}\\n@media screen and (max-width: 945px) { \\n    #logo { display: none; }\\n}\\n\\n\",\"routes\":{\"\\/content\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/tags\\/:slug\\/content\\/\"},\"\\/content\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/categories\\/:slug\\/content\\/\"},\"\\/albums\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/tags\\/:slug\\/albums\\/\"},\"\\/albums\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/categories\\/:slug\\/albums\\/\"},\"\\/essays\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/tags\\/:slug\\/essays\\/\"},\"\\/essays\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/categories\\/:slug\\/essays\\/\"},\"\\/content\\/:id\\/in_album\\/:album_id(?P<lightbox>\\/lightbox)?\\/\":{\"template\":\"redirect:content\"},\"\\/archives(?:\\/:year(?:\\/:month)?)?\\/\":{\"template\":\"redirect:timeline\"},\"\\/sets\\/\":{\"template\":\"redirect:soft:albums\"},\"\\/pages\\/:id\\/\":{\"template\":\"redirect:page\"}},\"settings\":{\"site_title_img_url\":\"https:\\/\\/arnoldvanrooij.com\\/logobw.png\",\"site_title_type\":\"image\"}}','{\"navigation\":{\"items\":[{\"label\":\"&nbsp;\",\"front\":true,\"auto\":\"home\",\"allow_label\":true,\"hide\":true},{\"auto\":\"album\",\"id\":77},{\"auto\":\"album\",\"id\":115},{\"auto\":\"album\",\"id\":93},{\"auto\":\"album\",\"id\":79},{\"auto\":\"album\",\"id\":119},{\"auto\":\"album\",\"id\":78},{\"label\":\"City & Landscapes \",\"front\":false,\"auto\":\"set\",\"id\":36,\"allow_label\":true},{\"auto\":\"set\",\"id\":22},{\"label\":\"[ News & exhibitions ]\",\"front\":false,\"auto\":\"essays\",\"allow_label\":true},{\"label\":\"[ Contact ]\",\"front\":false,\"auto\":\"page\",\"id\":1,\"allow_label\":true}],\"groups\":[],\"items_nested\":[{\"label\":\"&nbsp;\",\"front\":true,\"auto\":\"home\",\"allow_label\":true,\"hide\":true,\"path\":\"\\/home\\/\"},{\"auto\":\"album\",\"id\":119,\"path\":\"\\/albums\\/beeldbewerking\\/\",\"label\":\"Beeldbewerking\"},{\"label\":\"City & Landscapes \",\"front\":false,\"auto\":\"set\",\"id\":36,\"allow_label\":true,\"path\":\"\\/sets\\/places\\/\",\"set\":true,\"items\":[{\"auto\":\"album\",\"id\":77,\"path\":\"\\/albums\\/portraits\\/\",\"label\":\"Portraits\"},{\"auto\":\"album\",\"id\":115,\"path\":\"\\/albums\\/portraits-bw\\/\",\"label\":\"Portraits B&W\"},{\"auto\":\"album\",\"id\":93,\"path\":\"\\/albums\\/winter\\/\",\"label\":\"Portraits SFX\"},{\"auto\":\"album\",\"id\":78,\"path\":\"\\/albums\\/outdoor-1\\/\",\"label\":\"Outdoor\"},{\"auto\":\"album\",\"id\":79,\"path\":\"\\/albums\\/figure\\/\",\"label\":\"Artistic Nude\"}]},{\"auto\":\"set\",\"id\":22,\"path\":\"\\/sets\\/astro-1\\/\",\"label\":\"Astro\",\"set\":true},{\"label\":\"[ News & exhibitions ]\",\"front\":false,\"auto\":\"essays\",\"allow_label\":true,\"path\":\"\\/essays\\/\"},{\"label\":\"[ Contact ]\",\"front\":false,\"auto\":\"page\",\"id\":1,\"allow_label\":true,\"path\":\"\\/pages\\/contact\\/\"}]},\"custom_css\":\".time { display:none; }\\n\\/* .page-content a img { display:none; } *\\/\\n\\n\\/* image below menu on mobile devices *\\/\\n@media screen and (max-width: 540px) {\\n    #logo { display: none; }\\n}\\n@media screen and (max-width: 945px) { \\n    #logo { display: none; }\\n}\\n\\n\",\"routes\":{\"\\/content\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/tags\\/:slug\\/content\\/\"},\"\\/content\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/categories\\/:slug\\/content\\/\"},\"\\/albums\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/tags\\/:slug\\/albums\\/\"},\"\\/albums\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/categories\\/:slug\\/albums\\/\"},\"\\/essays\\/tags\\/:slug\\/\":{\"template\":\"redirect:\\/tags\\/:slug\\/essays\\/\"},\"\\/essays\\/categories\\/:slug\\/\":{\"template\":\"redirect:\\/categories\\/:slug\\/essays\\/\"},\"\\/content\\/:id\\/in_album\\/:album_id(?P<lightbox>\\/lightbox)?\\/\":{\"template\":\"redirect:content\"},\"\\/archives(?:\\/:year(?:\\/:month)?)?\\/\":{\"template\":\"redirect:timeline\"},\"\\/sets\\/\":{\"template\":\"redirect:soft:albums\"},\"\\/pages\\/:id\\/\":{\"template\":\"redirect:page\"}},\"settings\":{\"site_title_img_url\":\"https:\\/\\/arnoldvanrooij.com\\/logobw.png\",\"site_title_type\":\"image\"}}',1,1,1541429244,1652736520);
/*!40000 ALTER TABLE `koken_drafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_history`
--

DROP TABLE IF EXISTS `koken_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_history` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` text,
  `created_on` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_history`
--

LOCK TABLES `koken_history` WRITE;
/*!40000 ALTER TABLE `koken_history` DISABLE KEYS */;
INSERT INTO `koken_history` VALUES (1,1,'s:14:\"system:install\";',1541409867);
/*!40000 ALTER TABLE `koken_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_join_albums_categories`
--

DROP TABLE IF EXISTS `koken_join_albums_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_join_albums_categories` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_join_albums_categories`
--

LOCK TABLES `koken_join_albums_categories` WRITE;
/*!40000 ALTER TABLE `koken_join_albums_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `koken_join_albums_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_join_albums_content`
--

DROP TABLE IF EXISTS `koken_join_albums_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_join_albums_content` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `content_id` (`content_id`),
  KEY `order` (`order`)
) ENGINE=InnoDB AUTO_INCREMENT=968 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_join_albums_content`
--

LOCK TABLES `koken_join_albums_content` WRITE;
/*!40000 ALTER TABLE `koken_join_albums_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `koken_join_albums_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_join_albums_covers`
--

DROP TABLE IF EXISTS `koken_join_albums_covers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_join_albums_covers` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `cover_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `cover_id` (`cover_id`)
) ENGINE=InnoDB AUTO_INCREMENT=679 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_join_albums_covers`
--

LOCK TABLES `koken_join_albums_covers` WRITE;
/*!40000 ALTER TABLE `koken_join_albums_covers` DISABLE KEYS */;
/*!40000 ALTER TABLE `koken_join_albums_covers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_join_albums_tags`
--

DROP TABLE IF EXISTS `koken_join_albums_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_join_albums_tags` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_id` (`tag_id`),
  KEY `album_id` (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_join_albums_tags`
--

LOCK TABLES `koken_join_albums_tags` WRITE;
/*!40000 ALTER TABLE `koken_join_albums_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `koken_join_albums_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_join_albums_text`
--

DROP TABLE IF EXISTS `koken_join_albums_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_join_albums_text` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `text_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `text_id` (`text_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_join_albums_text`
--

LOCK TABLES `koken_join_albums_text` WRITE;
/*!40000 ALTER TABLE `koken_join_albums_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `koken_join_albums_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_join_categories_content`
--

DROP TABLE IF EXISTS `koken_join_categories_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_join_categories_content` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content_id` (`content_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_join_categories_content`
--

LOCK TABLES `koken_join_categories_content` WRITE;
/*!40000 ALTER TABLE `koken_join_categories_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `koken_join_categories_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_join_categories_text`
--

DROP TABLE IF EXISTS `koken_join_categories_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_join_categories_text` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `text_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `text_id` (`text_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_join_categories_text`
--

LOCK TABLES `koken_join_categories_text` WRITE;
/*!40000 ALTER TABLE `koken_join_categories_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `koken_join_categories_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_join_content_tags`
--

DROP TABLE IF EXISTS `koken_join_content_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_join_content_tags` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_id` (`tag_id`),
  KEY `content_id` (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_join_content_tags`
--

LOCK TABLES `koken_join_content_tags` WRITE;
/*!40000 ALTER TABLE `koken_join_content_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `koken_join_content_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_join_tags_text`
--

DROP TABLE IF EXISTS `koken_join_tags_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_join_tags_text` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `text_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `text_id` (`text_id`),
  KEY `tag_id` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_join_tags_text`
--

LOCK TABLES `koken_join_tags_text` WRITE;
/*!40000 ALTER TABLE `koken_join_tags_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `koken_join_tags_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_plugins`
--

DROP TABLE IF EXISTS `koken_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_plugins` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT '1',
  `data` longtext,
  PRIMARY KEY (`id`),
  KEY `path` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_plugins`
--

LOCK TABLES `koken_plugins` WRITE;
/*!40000 ALTER TABLE `koken_plugins` DISABLE KEYS */;
/*!40000 ALTER TABLE `koken_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_settings`
--

DROP TABLE IF EXISTS `koken_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_settings` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_settings`
--

LOCK TABLES `koken_settings` WRITE;
/*!40000 ALTER TABLE `koken_settings` DISABLE KEYS */;
INSERT INTO `koken_settings` VALUES (1,'site_timezone','Europe/Amsterdam'),(2,'console_show_notifications','yes'),(3,'console_enable_keyboard_shortcuts','yes'),(4,'uploading_default_license','all'),(5,'uploading_default_visibility','public'),(6,'uploading_default_album_visibility','public'),(7,'uploading_default_max_download_size','xlarge'),(8,'uploading_publish_on_captured_date','true'),(9,'site_title',''),(10,'site_page_title',''),(11,'site_tagline',''),(12,'site_copyright',''),(13,'site_description',''),(14,'site_keywords',''),(15,'site_date_format','F j, Y'),(16,'site_time_format','H:i'),(17,'site_privacy','public'),(18,'site_hidpi','false'),(19,'site_url','default'),(20,'use_default_labels_links','true'),(21,'uuid','c3ce8f92ffc61e028a1ab518e535aa12'),(22,'retain_image_metadata','false'),(23,'image_use_defaults','true'),(24,'image_tiny_quality','80'),(25,'image_small_quality','80'),(26,'image_medium_quality','85'),(27,'image_medium_large_quality','85'),(28,'image_large_quality','85'),(29,'image_xlarge_quality','90'),(30,'image_huge_quality','90'),(31,'image_tiny_sharpening','0.7'),(32,'image_small_sharpening','0.6'),(33,'image_medium_sharpening','0.6'),(34,'image_medium_large_sharpening','0.6'),(35,'image_large_sharpening','0.6'),(36,'image_xlarge_sharpening','0.3'),(37,'image_huge_sharpening','0'),(38,'last_upload','1680293823'),(39,'last_migration','43'),(40,'has_toured','true'),(41,'email_handler','DDI_Email'),(42,'email_delivery_address','your@email.address'),(43,'image_processing_library','imagick');
/*!40000 ALTER TABLE `koken_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_slugs`
--

DROP TABLE IF EXISTS `koken_slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_slugs` (
  `id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_slugs`
--

LOCK TABLES `koken_slugs` WRITE;
/*!40000 ALTER TABLE `koken_slugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `koken_slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_tags`
--

DROP TABLE IF EXISTS `koken_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_tags` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_on` int(10) NOT NULL,
  `modified_on` int(10) NOT NULL,
  `last_used` int(10) DEFAULT NULL,
  `album_count` int(11) NOT NULL DEFAULT '0',
  `text_count` int(11) NOT NULL DEFAULT '0',
  `content_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_tags`
--

LOCK TABLES `koken_tags` WRITE;
/*!40000 ALTER TABLE `koken_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `koken_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_text`
--

DROP TABLE IF EXISTS `koken_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_text` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` text,
  `draft_title` text,
  `slug` varchar(255) DEFAULT NULL,
  `old_slug` text,
  `featured_image_id` int(10) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `featured_on` int(10) DEFAULT NULL,
  `featured_order` int(11) DEFAULT NULL,
  `custom_featured_image` varchar(255) DEFAULT NULL,
  `content` longtext,
  `draft` longtext,
  `excerpt` varchar(255) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `page_type` int(1) NOT NULL DEFAULT '0',
  `published_on` int(10) DEFAULT NULL,
  `created_on` int(10) NOT NULL,
  `modified_on` int(10) NOT NULL,
  `internal_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `created_on` (`created_on`),
  KEY `modified_on` (`modified_on`),
  KEY `published_on` (`published_on`),
  KEY `page_type` (`page_type`),
  KEY `internal_id` (`internal_id`),
  KEY `featured_image_id` (`featured_image_id`),
  KEY `slug` (`slug`),
  KEY `featured_featured_order` (`featured`,`featured_order`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_text`
--

LOCK TABLES `koken_text` WRITE;
/*!40000 ALTER TABLE `koken_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `koken_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_trash`
--

DROP TABLE IF EXISTS `koken_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_trash` (
  `id` varchar(255) NOT NULL,
  `data` text,
  `created_on` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_on` (`created_on`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_trash`
--

LOCK TABLES `koken_trash` WRITE;
/*!40000 ALTER TABLE `koken_trash` DISABLE KEYS */;
/*!40000 ALTER TABLE `koken_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_urls`
--

DROP TABLE IF EXISTS `koken_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_urls` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `data` text,
  `created_on` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_urls`
--

LOCK TABLES `koken_urls` WRITE;
/*!40000 ALTER TABLE `koken_urls` DISABLE KEYS */;
INSERT INTO `koken_urls` VALUES (1,'a:10:{i:0;a:2:{s:4:\"type\";s:7:\"content\";s:4:\"data\";a:4:{s:8:\"singular\";s:7:\"Content\";s:6:\"plural\";s:7:\"Content\";s:5:\"order\";s:17:\"published_on DESC\";s:3:\"url\";s:4:\"slug\";}}i:1;a:2:{s:4:\"type\";s:8:\"favorite\";s:4:\"data\";a:3:{s:8:\"singular\";s:8:\"Favorite\";s:6:\"plural\";s:9:\"Favorites\";s:5:\"order\";s:10:\"manual ASC\";}}i:2;a:2:{s:4:\"type\";s:7:\"feature\";s:4:\"data\";a:3:{s:8:\"singular\";s:7:\"Feature\";s:6:\"plural\";s:8:\"Features\";s:5:\"order\";s:10:\"manual ASC\";}}i:3;a:2:{s:4:\"type\";s:5:\"album\";s:4:\"data\";a:4:{s:8:\"singular\";s:5:\"Album\";s:6:\"plural\";s:6:\"Albums\";s:5:\"order\";s:10:\"manual ASC\";s:3:\"url\";s:4:\"slug\";}}i:4;a:2:{s:4:\"type\";s:3:\"set\";s:4:\"data\";a:3:{s:8:\"singular\";s:3:\"Set\";s:6:\"plural\";s:4:\"Sets\";s:5:\"order\";s:9:\"title ASC\";}}i:5;a:2:{s:4:\"type\";s:5:\"essay\";s:4:\"data\";a:4:{s:8:\"singular\";s:5:\"Essay\";s:6:\"plural\";s:6:\"Essays\";s:5:\"order\";s:17:\"published_on DESC\";s:3:\"url\";s:9:\"date+slug\";}}i:6;a:2:{s:4:\"type\";s:4:\"page\";s:4:\"data\";a:3:{s:8:\"singular\";s:4:\"Page\";s:6:\"plural\";s:5:\"Pages\";s:3:\"url\";s:4:\"slug\";}}i:7;a:2:{s:4:\"type\";s:3:\"tag\";s:4:\"data\";a:2:{s:8:\"singular\";s:3:\"Tag\";s:6:\"plural\";s:4:\"Tags\";}}i:8;a:2:{s:4:\"type\";s:8:\"category\";s:4:\"data\";a:2:{s:8:\"singular\";s:8:\"Category\";s:6:\"plural\";s:10:\"Categories\";}}i:9;a:2:{s:4:\"type\";s:8:\"timeline\";s:4:\"data\";a:2:{s:8:\"singular\";s:8:\"Timeline\";s:6:\"plural\";s:8:\"Timeline\";}}}',1541409867),(2,'a:11:{i:0;a:2:{s:4:\"type\";s:7:\"content\";s:4:\"data\";a:4:{s:8:\"singular\";s:7:\"Content\";s:6:\"plural\";s:7:\"Content\";s:3:\"url\";s:4:\"slug\";s:5:\"order\";s:17:\"published_on DESC\";}}i:1;a:2:{s:4:\"type\";s:8:\"favorite\";s:4:\"data\";a:4:{s:8:\"singular\";s:8:\"Favorite\";s:6:\"plural\";s:9:\"Favorites\";s:3:\"url\";s:0:\"\";s:5:\"order\";s:10:\"manual ASC\";}}i:2;a:2:{s:4:\"type\";s:7:\"feature\";s:4:\"data\";a:4:{s:8:\"singular\";s:7:\"Feature\";s:6:\"plural\";s:8:\"Features\";s:3:\"url\";s:0:\"\";s:5:\"order\";s:10:\"manual ASC\";}}i:3;a:2:{s:4:\"type\";s:5:\"album\";s:4:\"data\";a:4:{s:8:\"singular\";s:5:\"Album\";s:6:\"plural\";s:6:\"Albums\";s:3:\"url\";s:4:\"slug\";s:5:\"order\";s:10:\"manual ASC\";}}i:4;a:2:{s:4:\"type\";s:3:\"set\";s:4:\"data\";a:3:{s:8:\"singular\";s:3:\"Set\";s:6:\"plural\";s:4:\"Sets\";s:5:\"order\";s:9:\"title ASC\";}}i:5;a:2:{s:4:\"type\";s:5:\"essay\";s:4:\"data\";a:4:{s:8:\"singular\";s:5:\"Essay\";s:6:\"plural\";s:6:\"Essays\";s:3:\"url\";s:9:\"date+slug\";s:5:\"order\";s:17:\"published_on DESC\";}}i:6;a:2:{s:4:\"type\";s:4:\"page\";s:4:\"data\";a:3:{s:8:\"singular\";s:4:\"Page\";s:6:\"plural\";s:5:\"Pages\";s:3:\"url\";s:7:\"sssslug\";}}i:7;a:2:{s:4:\"type\";s:3:\"tag\";s:4:\"data\";a:3:{s:8:\"singular\";s:3:\"Tag\";s:6:\"plural\";s:4:\"Tags\";s:5:\"order\";s:10:\"count DESC\";}}i:8;a:2:{s:4:\"type\";s:8:\"category\";s:4:\"data\";a:3:{s:8:\"singular\";s:8:\"Category\";s:6:\"plural\";s:10:\"Categories\";s:5:\"order\";s:9:\"title ASC\";}}i:9;a:2:{s:4:\"type\";s:8:\"timeline\";s:4:\"data\";a:2:{s:8:\"singular\";s:8:\"Timeline\";s:6:\"plural\";s:8:\"Timeline\";}}i:10;a:2:{s:4:\"type\";s:4:\"home\";s:4:\"data\";s:4:\"Home\";}}',1541412275),(3,'a:11:{i:0;a:2:{s:4:\"type\";s:7:\"content\";s:4:\"data\";a:4:{s:8:\"singular\";s:7:\"Content\";s:6:\"plural\";s:7:\"Content\";s:3:\"url\";s:4:\"slug\";s:5:\"order\";s:17:\"published_on DESC\";}}i:1;a:2:{s:4:\"type\";s:8:\"favorite\";s:4:\"data\";a:4:{s:8:\"singular\";s:8:\"Favorite\";s:6:\"plural\";s:9:\"Favorites\";s:3:\"url\";s:0:\"\";s:5:\"order\";s:10:\"manual ASC\";}}i:2;a:2:{s:4:\"type\";s:7:\"feature\";s:4:\"data\";a:4:{s:8:\"singular\";s:7:\"Feature\";s:6:\"plural\";s:8:\"Features\";s:3:\"url\";s:0:\"\";s:5:\"order\";s:10:\"manual ASC\";}}i:3;a:2:{s:4:\"type\";s:5:\"album\";s:4:\"data\";a:4:{s:8:\"singular\";s:5:\"Album\";s:6:\"plural\";s:6:\"Albums\";s:3:\"url\";s:4:\"slug\";s:5:\"order\";s:10:\"manual ASC\";}}i:4;a:2:{s:4:\"type\";s:3:\"set\";s:4:\"data\";a:3:{s:8:\"singular\";s:3:\"Set\";s:6:\"plural\";s:4:\"Sets\";s:5:\"order\";s:9:\"title ASC\";}}i:5;a:2:{s:4:\"type\";s:5:\"essay\";s:4:\"data\";a:4:{s:8:\"singular\";s:5:\"Essay\";s:6:\"plural\";s:6:\"Essays\";s:3:\"url\";s:9:\"date+slug\";s:5:\"order\";s:17:\"published_on DESC\";}}i:6;a:2:{s:4:\"type\";s:4:\"page\";s:4:\"data\";a:3:{s:8:\"singular\";s:4:\"Page\";s:6:\"plural\";s:5:\"Pages\";s:3:\"url\";s:4:\"slug\";}}i:7;a:2:{s:4:\"type\";s:3:\"tag\";s:4:\"data\";a:3:{s:8:\"singular\";s:3:\"Tag\";s:6:\"plural\";s:4:\"Tags\";s:5:\"order\";s:10:\"count DESC\";}}i:8;a:2:{s:4:\"type\";s:8:\"category\";s:4:\"data\";a:3:{s:8:\"singular\";s:8:\"Category\";s:6:\"plural\";s:10:\"Categories\";s:5:\"order\";s:9:\"title ASC\";}}i:9;a:2:{s:4:\"type\";s:8:\"timeline\";s:4:\"data\";a:2:{s:8:\"singular\";s:8:\"Timeline\";s:6:\"plural\";s:8:\"Timeline\";}}i:10;a:2:{s:4:\"type\";s:4:\"home\";s:4:\"data\";s:4:\"Home\";}}',1541428049),(4,'a:11:{i:0;a:2:{s:4:\"type\";s:7:\"content\";s:4:\"data\";a:4:{s:8:\"singular\";s:7:\"Content\";s:6:\"plural\";s:7:\"Content\";s:3:\"url\";s:4:\"slug\";s:5:\"order\";s:17:\"published_on DESC\";}}i:1;a:2:{s:4:\"type\";s:8:\"favorite\";s:4:\"data\";a:4:{s:8:\"singular\";s:8:\"Favorite\";s:6:\"plural\";s:9:\"Favorites\";s:3:\"url\";s:0:\"\";s:5:\"order\";s:10:\"manual ASC\";}}i:2;a:2:{s:4:\"type\";s:7:\"feature\";s:4:\"data\";a:4:{s:8:\"singular\";s:7:\"Feature\";s:6:\"plural\";s:8:\"Features\";s:3:\"url\";s:0:\"\";s:5:\"order\";s:10:\"manual ASC\";}}i:3;a:2:{s:4:\"type\";s:5:\"album\";s:4:\"data\";a:4:{s:8:\"singular\";s:5:\"Album\";s:6:\"plural\";s:6:\"Albums\";s:3:\"url\";s:4:\"slug\";s:5:\"order\";s:10:\"manual ASC\";}}i:4;a:2:{s:4:\"type\";s:3:\"set\";s:4:\"data\";a:3:{s:8:\"singular\";s:3:\"Set\";s:6:\"plural\";s:4:\"Sets\";s:5:\"order\";s:9:\"title ASC\";}}i:5;a:2:{s:4:\"type\";s:5:\"essay\";s:4:\"data\";a:4:{s:8:\"singular\";s:5:\"Essay\";s:6:\"plural\";s:6:\"Essays\";s:3:\"url\";s:9:\"date+slug\";s:5:\"order\";s:17:\"published_on DESC\";}}i:6;a:2:{s:4:\"type\";s:4:\"page\";s:4:\"data\";a:3:{s:8:\"singular\";s:4:\"Page\";s:6:\"plural\";s:5:\"Pages\";s:3:\"url\";s:7:\"sssslug\";}}i:7;a:2:{s:4:\"type\";s:3:\"tag\";s:4:\"data\";a:3:{s:8:\"singular\";s:3:\"Tag\";s:6:\"plural\";s:4:\"Tags\";s:5:\"order\";s:10:\"count DESC\";}}i:8;a:2:{s:4:\"type\";s:8:\"category\";s:4:\"data\";a:3:{s:8:\"singular\";s:8:\"Category\";s:6:\"plural\";s:10:\"Categories\";s:5:\"order\";s:9:\"title ASC\";}}i:9;a:2:{s:4:\"type\";s:8:\"timeline\";s:4:\"data\";a:2:{s:8:\"singular\";s:8:\"Timeline\";s:6:\"plural\";s:8:\"Timeline\";}}i:10;a:2:{s:4:\"type\";s:4:\"home\";s:4:\"data\";s:4:\"Home\";}}',1541433306);
/*!40000 ALTER TABLE `koken_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koken_users`
--

DROP TABLE IF EXISTS `koken_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koken_users` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `password` varchar(60) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_on` int(10) NOT NULL,
  `modified_on` int(10) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `public_first_name` varchar(255) DEFAULT NULL,
  `public_last_name` varchar(255) DEFAULT NULL,
  `public_display` varchar(255) DEFAULT 'both',
  `public_email` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  `internal_id` char(32) NOT NULL,
  `remember_me` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `password` (`password`),
  KEY `email` (`email`),
  KEY `internal_id` (`internal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koken_users`
--

LOCK TABLES `koken_users` WRITE;
/*!40000 ALTER TABLE `koken_users` DISABLE KEYS */;
INSERT INTO `koken_users` VALUES (1,'$2a$08$vVCQ3SYEVd8Xfl7wt/KG0OLHUzJ5Jl5y0tBh.NSMNLZFCWCGlQn4C','your@email.address',1541409867,1680957671,'Firstname','Lastname','Firstname','Lastname','both','your@email.address','','','','dce3795eb43794366456b6820afe460d','282e3394a7a62851df98c9c8454b2f60');
/*!40000 ALTER TABLE `koken_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-08 12:41:41
