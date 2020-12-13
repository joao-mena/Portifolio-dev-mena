/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100206
 Source Host           : localhost:3306
 Source Schema         : entreirmaos

 Target Server Type    : MySQL
 Target Server Version : 100206
 File Encoding         : 65001

 Date: 01/12/2020 23:44:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ent_commentmeta
-- ----------------------------
DROP TABLE IF EXISTS `ent_commentmeta`;
CREATE TABLE `ent_commentmeta`  (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`meta_id`) USING BTREE,
  INDEX `comment_id`(`comment_id`) USING BTREE,
  INDEX `meta_key`(`meta_key`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ent_commentmeta
-- ----------------------------

-- ----------------------------
-- Table structure for ent_comments
-- ----------------------------
DROP TABLE IF EXISTS `ent_comments`;
CREATE TABLE `ent_comments`  (
  `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`) USING BTREE,
  INDEX `comment_post_ID`(`comment_post_ID`) USING BTREE,
  INDEX `comment_approved_date_gmt`(`comment_approved`, `comment_date_gmt`) USING BTREE,
  INDEX `comment_date_gmt`(`comment_date_gmt`) USING BTREE,
  INDEX `comment_parent`(`comment_parent`) USING BTREE,
  INDEX `comment_author_email`(`comment_author_email`(10)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ent_comments
-- ----------------------------
INSERT INTO `ent_comments` VALUES (1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-11-06 21:12:42', '2020-11-06 23:12:42', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- ----------------------------
-- Table structure for ent_links
-- ----------------------------
DROP TABLE IF EXISTS `ent_links`;
CREATE TABLE `ent_links`  (
  `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int NOT NULL DEFAULT 0,
  `link_updated` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`) USING BTREE,
  INDEX `link_visible`(`link_visible`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ent_links
-- ----------------------------

-- ----------------------------
-- Table structure for ent_options
-- ----------------------------
DROP TABLE IF EXISTS `ent_options`;
CREATE TABLE `ent_options`  (
  `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`) USING BTREE,
  UNIQUE INDEX `option_name`(`option_name`) USING BTREE,
  INDEX `autoload`(`autoload`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 656 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ent_options
-- ----------------------------
INSERT INTO `ent_options` VALUES (1, 'siteurl', 'http://localhost', 'yes');
INSERT INTO `ent_options` VALUES (2, 'home', 'http://localhost', 'yes');
INSERT INTO `ent_options` VALUES (3, 'blogname', 'Entre Irmãos', 'yes');
INSERT INTO `ent_options` VALUES (4, 'blogdescription', 'Só mais um site WordPress', 'yes');
INSERT INTO `ent_options` VALUES (5, 'users_can_register', '0', 'yes');
INSERT INTO `ent_options` VALUES (6, 'admin_email', 'jsemeaomen@hotmail.com', 'yes');
INSERT INTO `ent_options` VALUES (7, 'start_of_week', '0', 'yes');
INSERT INTO `ent_options` VALUES (8, 'use_balanceTags', '0', 'yes');
INSERT INTO `ent_options` VALUES (9, 'use_smilies', '1', 'yes');
INSERT INTO `ent_options` VALUES (10, 'require_name_email', '1', 'yes');
INSERT INTO `ent_options` VALUES (11, 'comments_notify', '1', 'yes');
INSERT INTO `ent_options` VALUES (12, 'posts_per_rss', '10', 'yes');
INSERT INTO `ent_options` VALUES (13, 'rss_use_excerpt', '0', 'yes');
INSERT INTO `ent_options` VALUES (14, 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO `ent_options` VALUES (15, 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO `ent_options` VALUES (16, 'mailserver_pass', 'password', 'yes');
INSERT INTO `ent_options` VALUES (17, 'mailserver_port', '110', 'yes');
INSERT INTO `ent_options` VALUES (18, 'default_category', '1', 'yes');
INSERT INTO `ent_options` VALUES (19, 'default_comment_status', 'open', 'yes');
INSERT INTO `ent_options` VALUES (20, 'default_ping_status', 'open', 'yes');
INSERT INTO `ent_options` VALUES (21, 'default_pingback_flag', '1', 'yes');
INSERT INTO `ent_options` VALUES (22, 'posts_per_page', '10', 'yes');
INSERT INTO `ent_options` VALUES (23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes');
INSERT INTO `ent_options` VALUES (24, 'time_format', 'H:i', 'yes');
INSERT INTO `ent_options` VALUES (25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes');
INSERT INTO `ent_options` VALUES (26, 'comment_moderation', '0', 'yes');
INSERT INTO `ent_options` VALUES (27, 'moderation_notify', '1', 'yes');
INSERT INTO `ent_options` VALUES (28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes');
INSERT INTO `ent_options` VALUES (29, 'rewrite_rules', 'a:163:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:16:\"profissionais/?$\";s:33:\"index.php?post_type=profissionais\";s:46:\"profissionais/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=profissionais&feed=$matches[1]\";s:41:\"profissionais/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=profissionais&feed=$matches[1]\";s:33:\"profissionais/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=profissionais&paged=$matches[1]\";s:10:\"eventos/?$\";s:27:\"index.php?post_type=eventos\";s:40:\"eventos/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=eventos&feed=$matches[1]\";s:35:\"eventos/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=eventos&feed=$matches[1]\";s:27:\"eventos/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=eventos&paged=$matches[1]\";s:17:\"especialidades/?$\";s:34:\"index.php?post_type=especialidades\";s:47:\"especialidades/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=especialidades&feed=$matches[1]\";s:42:\"especialidades/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=especialidades&feed=$matches[1]\";s:34:\"especialidades/page/([0-9]{1,})/?$\";s:52:\"index.php?post_type=especialidades&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"profissionais/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"profissionais/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"profissionais/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"profissionais/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"profissionais/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"profissionais/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"profissionais/(.+?)/embed/?$\";s:46:\"index.php?profissionais=$matches[1]&embed=true\";s:32:\"profissionais/(.+?)/trackback/?$\";s:40:\"index.php?profissionais=$matches[1]&tb=1\";s:52:\"profissionais/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?profissionais=$matches[1]&feed=$matches[2]\";s:47:\"profissionais/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?profissionais=$matches[1]&feed=$matches[2]\";s:40:\"profissionais/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?profissionais=$matches[1]&paged=$matches[2]\";s:47:\"profissionais/(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?profissionais=$matches[1]&cpage=$matches[2]\";s:36:\"profissionais/(.+?)(?:/([0-9]+))?/?$\";s:52:\"index.php?profissionais=$matches[1]&page=$matches[2]\";s:50:\"profissao/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?profissao=$matches[1]&feed=$matches[2]\";s:45:\"profissao/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?profissao=$matches[1]&feed=$matches[2]\";s:26:\"profissao/([^/]+)/embed/?$\";s:42:\"index.php?profissao=$matches[1]&embed=true\";s:38:\"profissao/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?profissao=$matches[1]&paged=$matches[2]\";s:20:\"profissao/([^/]+)/?$\";s:31:\"index.php?profissao=$matches[1]\";s:33:\"eventos/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"eventos/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"eventos/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"eventos/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"eventos/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"eventos/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"eventos/(.+?)/embed/?$\";s:40:\"index.php?eventos=$matches[1]&embed=true\";s:26:\"eventos/(.+?)/trackback/?$\";s:34:\"index.php?eventos=$matches[1]&tb=1\";s:46:\"eventos/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?eventos=$matches[1]&feed=$matches[2]\";s:41:\"eventos/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?eventos=$matches[1]&feed=$matches[2]\";s:34:\"eventos/(.+?)/page/?([0-9]{1,})/?$\";s:47:\"index.php?eventos=$matches[1]&paged=$matches[2]\";s:41:\"eventos/(.+?)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?eventos=$matches[1]&cpage=$matches[2]\";s:30:\"eventos/(.+?)(?:/([0-9]+))?/?$\";s:46:\"index.php?eventos=$matches[1]&page=$matches[2]\";s:55:\"tipo-de-evento/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?tipo=$matches[1]&feed=$matches[2]\";s:50:\"tipo-de-evento/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?tipo=$matches[1]&feed=$matches[2]\";s:31:\"tipo-de-evento/([^/]+)/embed/?$\";s:37:\"index.php?tipo=$matches[1]&embed=true\";s:43:\"tipo-de-evento/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?tipo=$matches[1]&paged=$matches[2]\";s:25:\"tipo-de-evento/([^/]+)/?$\";s:26:\"index.php?tipo=$matches[1]\";s:40:\"especialidades/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"especialidades/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"especialidades/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"especialidades/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"especialidades/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"especialidades/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"especialidades/(.+?)/embed/?$\";s:47:\"index.php?especialidades=$matches[1]&embed=true\";s:33:\"especialidades/(.+?)/trackback/?$\";s:41:\"index.php?especialidades=$matches[1]&tb=1\";s:53:\"especialidades/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?especialidades=$matches[1]&feed=$matches[2]\";s:48:\"especialidades/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?especialidades=$matches[1]&feed=$matches[2]\";s:41:\"especialidades/(.+?)/page/?([0-9]{1,})/?$\";s:54:\"index.php?especialidades=$matches[1]&paged=$matches[2]\";s:48:\"especialidades/(.+?)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?especialidades=$matches[1]&cpage=$matches[2]\";s:37:\"especialidades/(.+?)(?:/([0-9]+))?/?$\";s:53:\"index.php?especialidades=$matches[1]&page=$matches[2]\";s:53:\"faixa-etaria/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?faixa-etaria=$matches[1]&feed=$matches[2]\";s:48:\"faixa-etaria/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?faixa-etaria=$matches[1]&feed=$matches[2]\";s:29:\"faixa-etaria/([^/]+)/embed/?$\";s:45:\"index.php?faixa-etaria=$matches[1]&embed=true\";s:41:\"faixa-etaria/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?faixa-etaria=$matches[1]&paged=$matches[2]\";s:23:\"faixa-etaria/([^/]+)/?$\";s:34:\"index.php?faixa-etaria=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes');
INSERT INTO `ent_options` VALUES (30, 'hack_file', '0', 'yes');
INSERT INTO `ent_options` VALUES (31, 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `ent_options` VALUES (32, 'moderation_keys', '', 'no');
INSERT INTO `ent_options` VALUES (33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:27:\"svg-support/svg-support.php\";}', 'yes');
INSERT INTO `ent_options` VALUES (34, 'category_base', '', 'yes');
INSERT INTO `ent_options` VALUES (35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `ent_options` VALUES (36, 'comment_max_links', '2', 'yes');
INSERT INTO `ent_options` VALUES (37, 'gmt_offset', '0', 'yes');
INSERT INTO `ent_options` VALUES (38, 'default_email_category', '1', 'yes');
INSERT INTO `ent_options` VALUES (39, 'recently_edited', '', 'no');
INSERT INTO `ent_options` VALUES (40, 'template', 'entre-irmaos-theme', 'yes');
INSERT INTO `ent_options` VALUES (41, 'stylesheet', 'entre-irmaos-theme', 'yes');
INSERT INTO `ent_options` VALUES (42, 'comment_registration', '0', 'yes');
INSERT INTO `ent_options` VALUES (43, 'html_type', 'text/html', 'yes');
INSERT INTO `ent_options` VALUES (44, 'use_trackback', '0', 'yes');
INSERT INTO `ent_options` VALUES (45, 'default_role', 'subscriber', 'yes');
INSERT INTO `ent_options` VALUES (46, 'db_version', '48748', 'yes');
INSERT INTO `ent_options` VALUES (47, 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO `ent_options` VALUES (48, 'upload_path', '', 'yes');
INSERT INTO `ent_options` VALUES (49, 'blog_public', '1', 'yes');
INSERT INTO `ent_options` VALUES (50, 'default_link_category', '2', 'yes');
INSERT INTO `ent_options` VALUES (51, 'show_on_front', 'page', 'yes');
INSERT INTO `ent_options` VALUES (52, 'tag_base', '', 'yes');
INSERT INTO `ent_options` VALUES (53, 'show_avatars', '1', 'yes');
INSERT INTO `ent_options` VALUES (54, 'avatar_rating', 'G', 'yes');
INSERT INTO `ent_options` VALUES (55, 'upload_url_path', '', 'yes');
INSERT INTO `ent_options` VALUES (56, 'thumbnail_size_w', '150', 'yes');
INSERT INTO `ent_options` VALUES (57, 'thumbnail_size_h', '150', 'yes');
INSERT INTO `ent_options` VALUES (58, 'thumbnail_crop', '1', 'yes');
INSERT INTO `ent_options` VALUES (59, 'medium_size_w', '300', 'yes');
INSERT INTO `ent_options` VALUES (60, 'medium_size_h', '300', 'yes');
INSERT INTO `ent_options` VALUES (61, 'avatar_default', 'mystery', 'yes');
INSERT INTO `ent_options` VALUES (62, 'large_size_w', '1024', 'yes');
INSERT INTO `ent_options` VALUES (63, 'large_size_h', '1024', 'yes');
INSERT INTO `ent_options` VALUES (64, 'image_default_link_type', 'none', 'yes');
INSERT INTO `ent_options` VALUES (65, 'image_default_size', '', 'yes');
INSERT INTO `ent_options` VALUES (66, 'image_default_align', '', 'yes');
INSERT INTO `ent_options` VALUES (67, 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO `ent_options` VALUES (68, 'close_comments_days_old', '14', 'yes');
INSERT INTO `ent_options` VALUES (69, 'thread_comments', '1', 'yes');
INSERT INTO `ent_options` VALUES (70, 'thread_comments_depth', '5', 'yes');
INSERT INTO `ent_options` VALUES (71, 'page_comments', '0', 'yes');
INSERT INTO `ent_options` VALUES (72, 'comments_per_page', '50', 'yes');
INSERT INTO `ent_options` VALUES (73, 'default_comments_page', 'newest', 'yes');
INSERT INTO `ent_options` VALUES (74, 'comment_order', 'asc', 'yes');
INSERT INTO `ent_options` VALUES (75, 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO `ent_options` VALUES (76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `ent_options` VALUES (77, 'widget_text', 'a:0:{}', 'yes');
INSERT INTO `ent_options` VALUES (78, 'widget_rss', 'a:0:{}', 'yes');
INSERT INTO `ent_options` VALUES (79, 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO `ent_options` VALUES (80, 'timezone_string', 'America/Sao_Paulo', 'yes');
INSERT INTO `ent_options` VALUES (81, 'page_for_posts', '161', 'yes');
INSERT INTO `ent_options` VALUES (82, 'page_on_front', '5', 'yes');
INSERT INTO `ent_options` VALUES (83, 'default_post_format', '0', 'yes');
INSERT INTO `ent_options` VALUES (84, 'link_manager_enabled', '0', 'yes');
INSERT INTO `ent_options` VALUES (85, 'finished_splitting_shared_terms', '1', 'yes');
INSERT INTO `ent_options` VALUES (86, 'site_icon', '0', 'yes');
INSERT INTO `ent_options` VALUES (87, 'medium_large_size_w', '768', 'yes');
INSERT INTO `ent_options` VALUES (88, 'medium_large_size_h', '0', 'yes');
INSERT INTO `ent_options` VALUES (89, 'wp_page_for_privacy_policy', '3', 'yes');
INSERT INTO `ent_options` VALUES (90, 'show_comments_cookies_opt_in', '1', 'yes');
INSERT INTO `ent_options` VALUES (91, 'admin_email_lifespan', '1620256361', 'yes');
INSERT INTO `ent_options` VALUES (92, 'disallowed_keys', '', 'no');
INSERT INTO `ent_options` VALUES (93, 'comment_previously_approved', '1', 'yes');
INSERT INTO `ent_options` VALUES (94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no');
INSERT INTO `ent_options` VALUES (95, 'initial_db_version', '48748', 'yes');
INSERT INTO `ent_options` VALUES (96, 'ent_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes');
INSERT INTO `ent_options` VALUES (97, 'fresh_site', '0', 'yes');
INSERT INTO `ent_options` VALUES (98, 'WPLANG', 'pt_BR', 'yes');
INSERT INTO `ent_options` VALUES (99, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `ent_options` VALUES (100, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `ent_options` VALUES (101, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `ent_options` VALUES (102, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `ent_options` VALUES (103, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `ent_options` VALUES (104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes');
INSERT INTO `ent_options` VALUES (105, 'cron', 'a:7:{i:1606878762;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1606907562;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1606950762;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606950786;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606950787;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607209962;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes');
INSERT INTO `ent_options` VALUES (106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `ent_options` VALUES (107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `ent_options` VALUES (108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `ent_options` VALUES (109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `ent_options` VALUES (110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `ent_options` VALUES (111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `ent_options` VALUES (112, 'nonce_key', '1SrY+]iM`CuWpJh{[Q2ENq>6JS!7ut-+{#z2In+j=8F|YIF=2`q!XITg-Uk-ZoW*', 'no');
INSERT INTO `ent_options` VALUES (113, 'nonce_salt', 'foFWZo5dc4jVX,<#YClAh6fT>8YRjUOOdp1Nu9Sn(pa|OC2A1BrHsXf0 TikB|3{', 'no');
INSERT INTO `ent_options` VALUES (114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `ent_options` VALUES (115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `ent_options` VALUES (116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `ent_options` VALUES (118, 'recovery_keys', 'a:0:{}', 'yes');
INSERT INTO `ent_options` VALUES (122, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604704673;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes');
INSERT INTO `ent_options` VALUES (126, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.5.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1606864453;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `ent_options` VALUES (127, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1606864456;s:7:\"checked\";a:4:{s:18:\"entre-irmaos-theme\";s:5:\"2.0.0\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `ent_options` VALUES (129, 'auth_key', '>B_o?BVeh(I #JMc1IJeV6lha|t(~X/j[}/loP_[$.Ia5-HvC342~Whk-fIySxP`', 'no');
INSERT INTO `ent_options` VALUES (130, 'auth_salt', 'c#8UtukwLO@.@dS08CWp2|*AJ.3;DT)rGE4u4=R]5h(b^7T:ZU14cr+3}2oTUzk.', 'no');
INSERT INTO `ent_options` VALUES (131, 'logged_in_key', 'c`O)sGoQ+5ec05^6;,paS6T0MIPz}r:U4Q]6w&dC}id_AC KN&V|,u0RV!MJq-?_', 'no');
INSERT INTO `ent_options` VALUES (132, 'logged_in_salt', '5Iu!)O7;9@h}L]D.NI@=f2P~f<!MJ>iZ>?s]#)9Ga^PdqLdCTbZ]*=y}SboB`Mw3', 'no');
INSERT INTO `ent_options` VALUES (140, 'can_compress_scripts', '1', 'no');
INSERT INTO `ent_options` VALUES (153, 'finished_updating_comment_type', '1', 'yes');
INSERT INTO `ent_options` VALUES (154, 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO `ent_options` VALUES (155, 'current_theme', 'Theme Alianza Cormeticos', 'yes');
INSERT INTO `ent_options` VALUES (156, 'theme_mods_entre-irmaos-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"principal\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes');
INSERT INTO `ent_options` VALUES (157, 'theme_switched', '', 'yes');
INSERT INTO `ent_options` VALUES (162, 'bodhi_svgs_plugin_version', '2.3.18', 'yes');
INSERT INTO `ent_options` VALUES (164, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1606864456;s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.3\";s:19:\"akismet/akismet.php\";s:5:\"4.1.7\";s:27:\"svg-support/svg-support.php\";s:6:\"2.3.18\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:6:\"2.3.18\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/svg-support.2.3.18.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/svg-support/assets/icon-256x256.png?rev=1417738\";s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');
INSERT INTO `ent_options` VALUES (165, 'acf_version', '5.9.3', 'yes');
INSERT INTO `ent_options` VALUES (169, 'options_favicon_png', '52', 'no');
INSERT INTO `ent_options` VALUES (170, '_options_favicon_png', 'field_59e52718c7d50', 'no');
INSERT INTO `ent_options` VALUES (171, 'options_conteudo_footer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac consectetur elit. Praesent auctor leo in quam ornare molestie.', 'no');
INSERT INTO `ent_options` VALUES (172, '_options_conteudo_footer', 'field_5f62bd1ec5154', 'no');
INSERT INTO `ent_options` VALUES (173, 'options_logo', '10', 'no');
INSERT INTO `ent_options` VALUES (174, '_options_logo', 'field_5f26243ae91e5', 'no');
INSERT INTO `ent_options` VALUES (175, 'options_bg_header_mobile', '11', 'no');
INSERT INTO `ent_options` VALUES (176, '_options_bg_header_mobile', 'field_5f26243ae91qwee5', 'no');
INSERT INTO `ent_options` VALUES (177, 'options_link_instagram', '#', 'no');
INSERT INTO `ent_options` VALUES (178, '_options_link_instagram', 'field_5d3728adec701', 'no');
INSERT INTO `ent_options` VALUES (179, 'options_link_facebook', '#', 'no');
INSERT INTO `ent_options` VALUES (180, '_options_link_facebook', 'field_5d3728e5ec703', 'no');
INSERT INTO `ent_options` VALUES (181, 'options_link_linkedin', '#', 'no');
INSERT INTO `ent_options` VALUES (182, '_options_link_linkedin', 'field_5d37291eec705', 'no');
INSERT INTO `ent_options` VALUES (183, 'options_link_youtube', '', 'no');
INSERT INTO `ent_options` VALUES (184, '_options_link_youtube', 'field_5d37297aec707', 'no');
INSERT INTO `ent_options` VALUES (185, 'options_link_twitter', '', 'no');
INSERT INTO `ent_options` VALUES (186, '_options_link_twitter', 'field_5d3729744aec707', 'no');
INSERT INTO `ent_options` VALUES (187, 'options_imagens_page_imagem_desk', '12', 'no');
INSERT INTO `ent_options` VALUES (188, '_options_imagens_page_imagem_desk', 'field_5f5e0f6119496', 'no');
INSERT INTO `ent_options` VALUES (189, 'options_imagens_page_imagem_mobile', '8', 'no');
INSERT INTO `ent_options` VALUES (190, '_options_imagens_page_imagem_mobile', 'field_5f5e0f7a19497', 'no');
INSERT INTO `ent_options` VALUES (191, 'options_imagens_page', '', 'no');
INSERT INTO `ent_options` VALUES (192, '_options_imagens_page', 'field_5f5e0f4119495', 'no');
INSERT INTO `ent_options` VALUES (193, 'options_contatos_telefone', '99133 9907', 'no');
INSERT INTO `ent_options` VALUES (194, '_options_contatos_telefone', 'field_5f2622f1405fd', 'no');
INSERT INTO `ent_options` VALUES (195, 'options_contatos_whatsapp', '99133-9907', 'no');
INSERT INTO `ent_options` VALUES (196, '_options_contatos_whatsapp', 'field_5f2622f8405fe', 'no');
INSERT INTO `ent_options` VALUES (197, 'options_contatos_mensagem_whatsapp', 'gostaria de agendar:', 'no');
INSERT INTO `ent_options` VALUES (198, '_options_contatos_mensagem_whatsapp', 'field_5f2f49248e865', 'no');
INSERT INTO `ent_options` VALUES (199, 'options_contatos_email', 'contato@espacoentreirmaos.com ', 'no');
INSERT INTO `ent_options` VALUES (200, '_options_contatos_email', 'field_5f262302405ff', 'no');
INSERT INTO `ent_options` VALUES (201, 'options_contatos', '', 'no');
INSERT INTO `ent_options` VALUES (202, '_options_contatos', 'field_5f2622e6405fc', 'no');
INSERT INTO `ent_options` VALUES (203, 'options_endereco', 'R. Guaraiuva, 1586 - Cidade Monções São Paulo - SP - 04569-003', 'no');
INSERT INTO `ent_options` VALUES (204, '_options_endereco', 'field_5f26235c40602', 'no');
INSERT INTO `ent_options` VALUES (205, 'options_imagens', 'a:9:{i:0;s:2:\"34\";i:1;s:2:\"35\";i:2;s:2:\"36\";i:3;s:2:\"37\";i:4;s:2:\"38\";i:5;s:2:\"39\";i:6;s:2:\"40\";i:7;s:2:\"77\";i:8;s:2:\"41\";}', 'no');
INSERT INTO `ent_options` VALUES (206, '_options_imagens', 'field_5f26255d59171', 'no');
INSERT INTO `ent_options` VALUES (207, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes');
INSERT INTO `ent_options` VALUES (238, '_transient_health-check-site-status-result', '{\"good\":\"10\",\"recommended\":\"9\",\"critical\":\"0\"}', 'yes');
INSERT INTO `ent_options` VALUES (261, 'options_icone__contato', '78', 'no');
INSERT INTO `ent_options` VALUES (262, '_options_icone__contato', 'field_5f5e0f61qwe19496', 'no');
INSERT INTO `ent_options` VALUES (263, 'options_icone__endereco', '79', 'no');
INSERT INTO `ent_options` VALUES (264, '_options_icone__endereco', 'field_5asf5e0f61qwe19496', 'no');
INSERT INTO `ent_options` VALUES (266, 'options_titulo_mapa', '', 'no');
INSERT INTO `ent_options` VALUES (267, '_options_titulo_mapa', 'field_5f2626049ebad', 'no');
INSERT INTO `ent_options` VALUES (268, 'options_frase_mapa', '', 'no');
INSERT INTO `ent_options` VALUES (269, '_options_frase_mapa', 'field_5f2626109ebae', 'no');
INSERT INTO `ent_options` VALUES (270, '_options_mapa', 'field_5f31e5408fe0a', 'no');
INSERT INTO `ent_options` VALUES (369, 'recovery_mode_email_last_sent', '1605307464', 'yes');
INSERT INTO `ent_options` VALUES (404, 'tipo_children', 'a:0:{}', 'yes');
INSERT INTO `ent_options` VALUES (415, 'tipo-especialidade_children', 'a:0:{}', 'yes');
INSERT INTO `ent_options` VALUES (544, 'profissao_children', 'a:0:{}', 'yes');
INSERT INTO `ent_options` VALUES (569, '_site_transient_timeout_browser_0348215151a4c646280509d77ae2365a', '1607121781', 'no');
INSERT INTO `ent_options` VALUES (570, '_site_transient_browser_0348215151a4c646280509d77ae2365a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"87.0.4280.66\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');
INSERT INTO `ent_options` VALUES (587, 'faixa-etaria_children', 'a:0:{}', 'yes');
INSERT INTO `ent_options` VALUES (631, 'category_children', 'a:0:{}', 'yes');
INSERT INTO `ent_options` VALUES (649, '_transient_timeout_acf_plugin_updates', '1607037255', 'no');
INSERT INTO `ent_options` VALUES (650, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.3\";}}', 'no');
INSERT INTO `ent_options` VALUES (651, '_site_transient_timeout_theme_roots', '1606866256', 'no');
INSERT INTO `ent_options` VALUES (652, '_site_transient_theme_roots', 'a:4:{s:18:\"entre-irmaos-theme\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no');

-- ----------------------------
-- Table structure for ent_postmeta
-- ----------------------------
DROP TABLE IF EXISTS `ent_postmeta`;
CREATE TABLE `ent_postmeta`  (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`meta_id`) USING BTREE,
  INDEX `post_id`(`post_id`) USING BTREE,
  INDEX `meta_key`(`meta_key`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1693 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ent_postmeta
-- ----------------------------
INSERT INTO `ent_postmeta` VALUES (1, 2, '_wp_page_template', 'default');
INSERT INTO `ent_postmeta` VALUES (2, 3, '_wp_page_template', 'default');
INSERT INTO `ent_postmeta` VALUES (3, 5, '_edit_lock', '1606182377:1');
INSERT INTO `ent_postmeta` VALUES (6, 5, 'inline_featured_image', '0');
INSERT INTO `ent_postmeta` VALUES (7, 5, '_wp_page_template', 'template-home.php');
INSERT INTO `ent_postmeta` VALUES (8, 5, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (9, 5, 'banners', '4');
INSERT INTO `ent_postmeta` VALUES (10, 5, '_banners', 'field_5f42a8ffdd04c');
INSERT INTO `ent_postmeta` VALUES (11, 5, 'titulo_bv', 'Bem vindo ao Espaço Entre Irmãos');
INSERT INTO `ent_postmeta` VALUES (12, 5, '_titulo_bv', 'field_5f9f36954cae3');
INSERT INTO `ent_postmeta` VALUES (13, 5, 'texto_bv', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (14, 5, '_texto_bv', 'field_5f9f38904cae4');
INSERT INTO `ent_postmeta` VALUES (15, 5, 'logo_bv', '52');
INSERT INTO `ent_postmeta` VALUES (16, 5, '_logo_bv', 'field_5f9f38ba4cae5');
INSERT INTO `ent_postmeta` VALUES (17, 5, 'cards_de_conteudos', '3');
INSERT INTO `ent_postmeta` VALUES (18, 5, '_cards_de_conteudos', 'field_5f9f38fb4cae6');
INSERT INTO `ent_postmeta` VALUES (19, 6, 'banners', '');
INSERT INTO `ent_postmeta` VALUES (20, 6, '_banners', 'field_5f42a8ffdd04c');
INSERT INTO `ent_postmeta` VALUES (21, 6, 'titulo_bv', '');
INSERT INTO `ent_postmeta` VALUES (22, 6, '_titulo_bv', 'field_5f9f36954cae3');
INSERT INTO `ent_postmeta` VALUES (23, 6, 'texto_bv', '');
INSERT INTO `ent_postmeta` VALUES (24, 6, '_texto_bv', 'field_5f9f38904cae4');
INSERT INTO `ent_postmeta` VALUES (25, 6, 'logo_bv', '');
INSERT INTO `ent_postmeta` VALUES (26, 6, '_logo_bv', 'field_5f9f38ba4cae5');
INSERT INTO `ent_postmeta` VALUES (27, 6, 'cards_de_conteudos', '');
INSERT INTO `ent_postmeta` VALUES (28, 6, '_cards_de_conteudos', 'field_5f9f38fb4cae6');
INSERT INTO `ent_postmeta` VALUES (29, 8, '_wp_attached_file', '2020/11/menu_MOBILE1.jpg');
INSERT INTO `ent_postmeta` VALUES (30, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:376;s:6:\"height\";i:304;s:4:\"file\";s:24:\"2020/11/menu_MOBILE1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"menu_MOBILE1-300x243.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:243;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"menu_MOBILE1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (31, 9, '_wp_attached_file', '2020/11/Header_MOBILE.jpg');
INSERT INTO `ent_postmeta` VALUES (32, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:534;s:4:\"file\";s:25:\"2020/11/Header_MOBILE.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Header_MOBILE-211x300.jpg\";s:5:\"width\";i:211;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Header_MOBILE-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (33, 10, '_wp_attached_file', '2020/11/logo_entre_irmao.svg');
INSERT INTO `ent_postmeta` VALUES (34, 10, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:121;s:6:\"height\";i:92;s:4:\"file\";s:29:\"/2020/11/logo_entre_irmao.svg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:20:\"logo_entre_irmao.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:20:\"logo_entre_irmao.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:20:\"logo_entre_irmao.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:20:\"logo_entre_irmao.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:20:\"logo_entre_irmao.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:20:\"logo_entre_irmao.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"fullhd\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:20:\"logo_entre_irmao.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:7:\"desktop\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:20:\"logo_entre_irmao.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"mobile\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:20:\"logo_entre_irmao.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}');
INSERT INTO `ent_postmeta` VALUES (35, 11, '_wp_attached_file', '2020/11/header_mobile_02.jpg');
INSERT INTO `ent_postmeta` VALUES (36, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:297;s:6:\"height\";i:616;s:4:\"file\";s:28:\"2020/11/header_mobile_02.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"header_mobile_02-145x300.jpg\";s:5:\"width\";i:145;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"header_mobile_02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (37, 12, '_wp_attached_file', '2020/11/Header.jpg');
INSERT INTO `ent_postmeta` VALUES (38, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:680;s:4:\"file\";s:18:\"2020/11/Header.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"Header-300x149.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"Header-1024x510.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"Header-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"Header-768x382.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:382;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"mobile\";a:4:{s:4:\"file\";s:18:\"Header-500x249.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (39, 13, '_wp_attached_file', '2020/11/logo_entre_irmao.png');
INSERT INTO `ent_postmeta` VALUES (40, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:121;s:6:\"height\";i:92;s:4:\"file\";s:28:\"2020/11/logo_entre_irmao.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (41, 5, 'banners_0_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (42, 5, '_banners_0_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (43, 5, 'banners_0_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (44, 5, '_banners_0_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (45, 5, 'banners_0_imagens', '');
INSERT INTO `ent_postmeta` VALUES (46, 5, '_banners_0_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (47, 5, 'banners_0_conteudoBanner_titulo_banner', 'Trabalhamos pela cura da cura no Mundo.');
INSERT INTO `ent_postmeta` VALUES (48, 5, '_banners_0_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (49, 5, 'banners_0_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (50, 5, '_banners_0_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (51, 5, 'banners_0_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (52, 5, '_banners_0_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (53, 5, 'banners_0_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (54, 5, '_banners_0_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (55, 5, 'banners_0_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (56, 5, '_banners_0_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (57, 5, 'banners_1_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (58, 5, '_banners_1_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (59, 5, 'banners_1_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (60, 5, '_banners_1_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (61, 5, 'banners_1_imagens', '');
INSERT INTO `ent_postmeta` VALUES (62, 5, '_banners_1_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (63, 5, 'banners_1_conteudoBanner_titulo_banner', 'Trabalhamos pela cura da cura no Mundo.');
INSERT INTO `ent_postmeta` VALUES (64, 5, '_banners_1_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (65, 5, 'banners_1_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (66, 5, '_banners_1_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (67, 5, 'banners_1_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (68, 5, '_banners_1_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (69, 5, 'banners_1_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (70, 5, '_banners_1_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (71, 5, 'banners_1_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (72, 5, '_banners_1_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (73, 5, 'banners_2_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (74, 5, '_banners_2_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (75, 5, 'banners_2_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (76, 5, '_banners_2_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (77, 5, 'banners_2_imagens', '');
INSERT INTO `ent_postmeta` VALUES (78, 5, '_banners_2_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (79, 5, 'banners_2_conteudoBanner_titulo_banner', 'Trabalhamos pela cura da cura no Mundo.');
INSERT INTO `ent_postmeta` VALUES (80, 5, '_banners_2_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (81, 5, 'banners_2_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (82, 5, '_banners_2_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (83, 5, 'banners_2_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (84, 5, '_banners_2_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (85, 5, 'banners_2_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (86, 5, '_banners_2_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (87, 5, 'banners_2_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (88, 5, '_banners_2_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (89, 5, 'banners_3_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (90, 5, '_banners_3_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (91, 5, 'banners_3_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (92, 5, '_banners_3_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (93, 5, 'banners_3_imagens', '');
INSERT INTO `ent_postmeta` VALUES (94, 5, '_banners_3_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (95, 5, 'banners_3_conteudoBanner_titulo_banner', 'Trabalhamos pela cura da cura no Mundo.');
INSERT INTO `ent_postmeta` VALUES (96, 5, '_banners_3_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (97, 5, 'banners_3_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (98, 5, '_banners_3_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (99, 5, 'banners_3_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (100, 5, '_banners_3_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (101, 5, 'banners_3_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (102, 5, '_banners_3_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (103, 5, 'banners_3_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (104, 5, '_banners_3_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (105, 14, 'banners', '4');
INSERT INTO `ent_postmeta` VALUES (106, 14, '_banners', 'field_5f42a8ffdd04c');
INSERT INTO `ent_postmeta` VALUES (107, 14, 'titulo_bv', '');
INSERT INTO `ent_postmeta` VALUES (108, 14, '_titulo_bv', 'field_5f9f36954cae3');
INSERT INTO `ent_postmeta` VALUES (109, 14, 'texto_bv', '');
INSERT INTO `ent_postmeta` VALUES (110, 14, '_texto_bv', 'field_5f9f38904cae4');
INSERT INTO `ent_postmeta` VALUES (111, 14, 'logo_bv', '');
INSERT INTO `ent_postmeta` VALUES (112, 14, '_logo_bv', 'field_5f9f38ba4cae5');
INSERT INTO `ent_postmeta` VALUES (113, 14, 'cards_de_conteudos', '');
INSERT INTO `ent_postmeta` VALUES (114, 14, '_cards_de_conteudos', 'field_5f9f38fb4cae6');
INSERT INTO `ent_postmeta` VALUES (115, 14, 'banners_0_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (116, 14, '_banners_0_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (117, 14, 'banners_0_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (118, 14, '_banners_0_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (119, 14, 'banners_0_imagens', '');
INSERT INTO `ent_postmeta` VALUES (120, 14, '_banners_0_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (121, 14, 'banners_0_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (122, 14, '_banners_0_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (123, 14, 'banners_0_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (124, 14, '_banners_0_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (125, 14, 'banners_0_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (126, 14, '_banners_0_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (127, 14, 'banners_0_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (128, 14, '_banners_0_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (129, 14, 'banners_0_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (130, 14, '_banners_0_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (131, 14, 'banners_1_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (132, 14, '_banners_1_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (133, 14, 'banners_1_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (134, 14, '_banners_1_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (135, 14, 'banners_1_imagens', '');
INSERT INTO `ent_postmeta` VALUES (136, 14, '_banners_1_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (137, 14, 'banners_1_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (138, 14, '_banners_1_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (139, 14, 'banners_1_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (140, 14, '_banners_1_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (141, 14, 'banners_1_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (142, 14, '_banners_1_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (143, 14, 'banners_1_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (144, 14, '_banners_1_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (145, 14, 'banners_1_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (146, 14, '_banners_1_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (147, 14, 'banners_2_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (148, 14, '_banners_2_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (149, 14, 'banners_2_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (150, 14, '_banners_2_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (151, 14, 'banners_2_imagens', '');
INSERT INTO `ent_postmeta` VALUES (152, 14, '_banners_2_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (153, 14, 'banners_2_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (154, 14, '_banners_2_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (155, 14, 'banners_2_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (156, 14, '_banners_2_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (157, 14, 'banners_2_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (158, 14, '_banners_2_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (159, 14, 'banners_2_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (160, 14, '_banners_2_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (161, 14, 'banners_2_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (162, 14, '_banners_2_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (163, 14, 'banners_3_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (164, 14, '_banners_3_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (165, 14, 'banners_3_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (166, 14, '_banners_3_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (167, 14, 'banners_3_imagens', '');
INSERT INTO `ent_postmeta` VALUES (168, 14, '_banners_3_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (169, 14, 'banners_3_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (170, 14, '_banners_3_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (171, 14, 'banners_3_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (172, 14, '_banners_3_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (173, 14, 'banners_3_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (174, 14, '_banners_3_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (175, 14, 'banners_3_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (176, 14, '_banners_3_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (177, 14, 'banners_3_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (178, 14, '_banners_3_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (179, 5, 'cards_de_conteudos_0_imagem', '30');
INSERT INTO `ent_postmeta` VALUES (180, 5, '_cards_de_conteudos_0_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (181, 5, 'cards_de_conteudos_0_titulo_conteudo', 'SOBRE');
INSERT INTO `ent_postmeta` VALUES (182, 5, '_cards_de_conteudos_0_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (183, 5, 'cards_de_conteudos_0_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (184, 5, '_cards_de_conteudos_0_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (185, 5, 'cards_de_conteudos_0_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (186, 5, '_cards_de_conteudos_0_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (187, 5, 'cards_de_conteudos_0_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (188, 5, '_cards_de_conteudos_0_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (189, 5, 'cards_de_conteudos_1_imagem', '31');
INSERT INTO `ent_postmeta` VALUES (190, 5, '_cards_de_conteudos_1_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (191, 5, 'cards_de_conteudos_1_titulo_conteudo', 'MISSÃO');
INSERT INTO `ent_postmeta` VALUES (192, 5, '_cards_de_conteudos_1_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (193, 5, 'cards_de_conteudos_1_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (194, 5, '_cards_de_conteudos_1_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (195, 5, 'cards_de_conteudos_1_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (196, 5, '_cards_de_conteudos_1_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (197, 5, 'cards_de_conteudos_1_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (198, 5, '_cards_de_conteudos_1_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (199, 5, 'cards_de_conteudos_2_imagem', '32');
INSERT INTO `ent_postmeta` VALUES (200, 5, '_cards_de_conteudos_2_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (201, 5, 'cards_de_conteudos_2_titulo_conteudo', 'ESTRUTURA');
INSERT INTO `ent_postmeta` VALUES (202, 5, '_cards_de_conteudos_2_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (203, 5, 'cards_de_conteudos_2_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (204, 5, '_cards_de_conteudos_2_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (205, 5, 'cards_de_conteudos_2_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (206, 5, '_cards_de_conteudos_2_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (207, 5, 'cards_de_conteudos_2_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (208, 5, '_cards_de_conteudos_2_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (209, 15, 'banners', '4');
INSERT INTO `ent_postmeta` VALUES (210, 15, '_banners', 'field_5f42a8ffdd04c');
INSERT INTO `ent_postmeta` VALUES (211, 15, 'titulo_bv', 'Bem-vindo ao Entre Irmãos');
INSERT INTO `ent_postmeta` VALUES (212, 15, '_titulo_bv', 'field_5f9f36954cae3');
INSERT INTO `ent_postmeta` VALUES (213, 15, 'texto_bv', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (214, 15, '_texto_bv', 'field_5f9f38904cae4');
INSERT INTO `ent_postmeta` VALUES (215, 15, 'logo_bv', '10');
INSERT INTO `ent_postmeta` VALUES (216, 15, '_logo_bv', 'field_5f9f38ba4cae5');
INSERT INTO `ent_postmeta` VALUES (217, 15, 'cards_de_conteudos', '3');
INSERT INTO `ent_postmeta` VALUES (218, 15, '_cards_de_conteudos', 'field_5f9f38fb4cae6');
INSERT INTO `ent_postmeta` VALUES (219, 15, 'banners_0_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (220, 15, '_banners_0_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (221, 15, 'banners_0_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (222, 15, '_banners_0_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (223, 15, 'banners_0_imagens', '');
INSERT INTO `ent_postmeta` VALUES (224, 15, '_banners_0_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (225, 15, 'banners_0_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (226, 15, '_banners_0_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (227, 15, 'banners_0_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (228, 15, '_banners_0_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (229, 15, 'banners_0_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (230, 15, '_banners_0_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (231, 15, 'banners_0_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (232, 15, '_banners_0_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (233, 15, 'banners_0_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (234, 15, '_banners_0_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (235, 15, 'banners_1_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (236, 15, '_banners_1_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (237, 15, 'banners_1_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (238, 15, '_banners_1_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (239, 15, 'banners_1_imagens', '');
INSERT INTO `ent_postmeta` VALUES (240, 15, '_banners_1_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (241, 15, 'banners_1_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (242, 15, '_banners_1_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (243, 15, 'banners_1_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (244, 15, '_banners_1_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (245, 15, 'banners_1_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (246, 15, '_banners_1_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (247, 15, 'banners_1_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (248, 15, '_banners_1_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (249, 15, 'banners_1_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (250, 15, '_banners_1_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (251, 15, 'banners_2_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (252, 15, '_banners_2_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (253, 15, 'banners_2_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (254, 15, '_banners_2_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (255, 15, 'banners_2_imagens', '');
INSERT INTO `ent_postmeta` VALUES (256, 15, '_banners_2_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (257, 15, 'banners_2_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (258, 15, '_banners_2_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (259, 15, 'banners_2_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (260, 15, '_banners_2_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (261, 15, 'banners_2_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (262, 15, '_banners_2_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (263, 15, 'banners_2_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (264, 15, '_banners_2_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (265, 15, 'banners_2_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (266, 15, '_banners_2_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (267, 15, 'banners_3_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (268, 15, '_banners_3_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (269, 15, 'banners_3_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (270, 15, '_banners_3_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (271, 15, 'banners_3_imagens', '');
INSERT INTO `ent_postmeta` VALUES (272, 15, '_banners_3_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (273, 15, 'banners_3_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (274, 15, '_banners_3_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (275, 15, 'banners_3_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (276, 15, '_banners_3_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (277, 15, 'banners_3_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (278, 15, '_banners_3_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (279, 15, 'banners_3_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (280, 15, '_banners_3_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (281, 15, 'banners_3_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (282, 15, '_banners_3_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (283, 15, 'cards_de_conteudos_0_imagem', '');
INSERT INTO `ent_postmeta` VALUES (284, 15, '_cards_de_conteudos_0_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (285, 15, 'cards_de_conteudos_0_titulo_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (286, 15, '_cards_de_conteudos_0_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (287, 15, 'cards_de_conteudos_0_texto_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (288, 15, '_cards_de_conteudos_0_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (289, 15, 'cards_de_conteudos_0_texto_botao_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (290, 15, '_cards_de_conteudos_0_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (291, 15, 'cards_de_conteudos_0_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (292, 15, '_cards_de_conteudos_0_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (293, 15, 'cards_de_conteudos_1_imagem', '');
INSERT INTO `ent_postmeta` VALUES (294, 15, '_cards_de_conteudos_1_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (295, 15, 'cards_de_conteudos_1_titulo_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (296, 15, '_cards_de_conteudos_1_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (297, 15, 'cards_de_conteudos_1_texto_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (298, 15, '_cards_de_conteudos_1_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (299, 15, 'cards_de_conteudos_1_texto_botao_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (300, 15, '_cards_de_conteudos_1_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (301, 15, 'cards_de_conteudos_1_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (302, 15, '_cards_de_conteudos_1_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (303, 15, 'cards_de_conteudos_2_imagem', '');
INSERT INTO `ent_postmeta` VALUES (304, 15, '_cards_de_conteudos_2_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (305, 15, 'cards_de_conteudos_2_titulo_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (306, 15, '_cards_de_conteudos_2_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (307, 15, 'cards_de_conteudos_2_texto_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (308, 15, '_cards_de_conteudos_2_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (309, 15, 'cards_de_conteudos_2_texto_botao_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (310, 15, '_cards_de_conteudos_2_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (311, 15, 'cards_de_conteudos_2_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (312, 15, '_cards_de_conteudos_2_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (313, 2, '_wp_trash_meta_status', 'publish');
INSERT INTO `ent_postmeta` VALUES (314, 2, '_wp_trash_meta_time', '1604708223');
INSERT INTO `ent_postmeta` VALUES (315, 2, '_wp_desired_post_slug', 'pagina-exemplo');
INSERT INTO `ent_postmeta` VALUES (316, 2, 'inline_featured_image', '0');
INSERT INTO `ent_postmeta` VALUES (317, 3, '_wp_trash_meta_status', 'draft');
INSERT INTO `ent_postmeta` VALUES (318, 3, '_wp_trash_meta_time', '1604708225');
INSERT INTO `ent_postmeta` VALUES (319, 3, '_wp_desired_post_slug', 'politica-de-privacidade');
INSERT INTO `ent_postmeta` VALUES (320, 3, 'inline_featured_image', '0');
INSERT INTO `ent_postmeta` VALUES (321, 18, 'inline_featured_image', '0');
INSERT INTO `ent_postmeta` VALUES (322, 18, '_edit_lock', '1604852275:1');
INSERT INTO `ent_postmeta` VALUES (323, 18, '_wp_page_template', 'template-quem-somos.php');
INSERT INTO `ent_postmeta` VALUES (324, 20, 'inline_featured_image', '0');
INSERT INTO `ent_postmeta` VALUES (325, 20, '_edit_lock', '1604869180:1');
INSERT INTO `ent_postmeta` VALUES (326, 20, '_wp_page_template', 'template-contato.php');
INSERT INTO `ent_postmeta` VALUES (327, 22, 'inline_featured_image', '0');
INSERT INTO `ent_postmeta` VALUES (328, 22, '_edit_lock', '1605649146:1');
INSERT INTO `ent_postmeta` VALUES (329, 22, '_wp_page_template', 'default');
INSERT INTO `ent_postmeta` VALUES (330, 24, 'inline_featured_image', '0');
INSERT INTO `ent_postmeta` VALUES (331, 24, '_edit_lock', '1605057464:1');
INSERT INTO `ent_postmeta` VALUES (332, 24, '_wp_page_template', 'default');
INSERT INTO `ent_postmeta` VALUES (333, 26, 'inline_featured_image', '0');
INSERT INTO `ent_postmeta` VALUES (334, 26, '_edit_lock', '1604708172:1');
INSERT INTO `ent_postmeta` VALUES (335, 26, '_wp_page_template', 'template-eventos.php');
INSERT INTO `ent_postmeta` VALUES (336, 28, 'inline_featured_image', '0');
INSERT INTO `ent_postmeta` VALUES (337, 28, '_edit_lock', '1605830306:1');
INSERT INTO `ent_postmeta` VALUES (338, 28, '_wp_page_template', 'default');
INSERT INTO `ent_postmeta` VALUES (339, 30, '_wp_attached_file', '2020/11/icon_fogueira.svg');
INSERT INTO `ent_postmeta` VALUES (340, 30, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:109;s:6:\"height\";i:109;s:4:\"file\";s:26:\"/2020/11/icon_fogueira.svg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:17:\"icon_fogueira.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"icon_fogueira.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"icon_fogueira.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"icon_fogueira.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"icon_fogueira.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"icon_fogueira.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"fullhd\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"icon_fogueira.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:7:\"desktop\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"icon_fogueira.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"mobile\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"icon_fogueira.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}');
INSERT INTO `ent_postmeta` VALUES (341, 31, '_wp_attached_file', '2020/11/icon_montanha.svg');
INSERT INTO `ent_postmeta` VALUES (342, 31, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:109;s:6:\"height\";i:109;s:4:\"file\";s:26:\"/2020/11/icon_montanha.svg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:17:\"icon_montanha.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"icon_montanha.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"icon_montanha.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"icon_montanha.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"icon_montanha.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"icon_montanha.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"fullhd\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"icon_montanha.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:7:\"desktop\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"icon_montanha.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"mobile\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"icon_montanha.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}');
INSERT INTO `ent_postmeta` VALUES (343, 32, '_wp_attached_file', '2020/11/icon_montanhao.svg');
INSERT INTO `ent_postmeta` VALUES (344, 32, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:109;s:6:\"height\";i:109;s:4:\"file\";s:27:\"/2020/11/icon_montanhao.svg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:18:\"icon_montanhao.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"icon_montanhao.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"icon_montanhao.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"icon_montanhao.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:18:\"icon_montanhao.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:18:\"icon_montanhao.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"fullhd\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:18:\"icon_montanhao.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:7:\"desktop\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:18:\"icon_montanhao.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"mobile\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:18:\"icon_montanhao.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}');
INSERT INTO `ent_postmeta` VALUES (345, 33, 'banners', '4');
INSERT INTO `ent_postmeta` VALUES (346, 33, '_banners', 'field_5f42a8ffdd04c');
INSERT INTO `ent_postmeta` VALUES (347, 33, 'titulo_bv', 'Bem-vindo ao Entre Irmãos');
INSERT INTO `ent_postmeta` VALUES (348, 33, '_titulo_bv', 'field_5f9f36954cae3');
INSERT INTO `ent_postmeta` VALUES (349, 33, 'texto_bv', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (350, 33, '_texto_bv', 'field_5f9f38904cae4');
INSERT INTO `ent_postmeta` VALUES (351, 33, 'logo_bv', '10');
INSERT INTO `ent_postmeta` VALUES (352, 33, '_logo_bv', 'field_5f9f38ba4cae5');
INSERT INTO `ent_postmeta` VALUES (353, 33, 'cards_de_conteudos', '3');
INSERT INTO `ent_postmeta` VALUES (354, 33, '_cards_de_conteudos', 'field_5f9f38fb4cae6');
INSERT INTO `ent_postmeta` VALUES (355, 33, 'banners_0_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (356, 33, '_banners_0_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (357, 33, 'banners_0_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (358, 33, '_banners_0_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (359, 33, 'banners_0_imagens', '');
INSERT INTO `ent_postmeta` VALUES (360, 33, '_banners_0_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (361, 33, 'banners_0_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (362, 33, '_banners_0_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (363, 33, 'banners_0_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (364, 33, '_banners_0_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (365, 33, 'banners_0_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (366, 33, '_banners_0_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (367, 33, 'banners_0_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (368, 33, '_banners_0_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (369, 33, 'banners_0_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (370, 33, '_banners_0_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (371, 33, 'banners_1_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (372, 33, '_banners_1_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (373, 33, 'banners_1_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (374, 33, '_banners_1_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (375, 33, 'banners_1_imagens', '');
INSERT INTO `ent_postmeta` VALUES (376, 33, '_banners_1_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (377, 33, 'banners_1_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (378, 33, '_banners_1_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (379, 33, 'banners_1_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (380, 33, '_banners_1_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (381, 33, 'banners_1_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (382, 33, '_banners_1_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (383, 33, 'banners_1_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (384, 33, '_banners_1_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (385, 33, 'banners_1_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (386, 33, '_banners_1_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (387, 33, 'banners_2_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (388, 33, '_banners_2_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (389, 33, 'banners_2_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (390, 33, '_banners_2_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (391, 33, 'banners_2_imagens', '');
INSERT INTO `ent_postmeta` VALUES (392, 33, '_banners_2_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (393, 33, 'banners_2_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (394, 33, '_banners_2_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (395, 33, 'banners_2_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (396, 33, '_banners_2_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (397, 33, 'banners_2_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (398, 33, '_banners_2_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (399, 33, 'banners_2_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (400, 33, '_banners_2_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (401, 33, 'banners_2_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (402, 33, '_banners_2_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (403, 33, 'banners_3_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (404, 33, '_banners_3_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (405, 33, 'banners_3_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (406, 33, '_banners_3_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (407, 33, 'banners_3_imagens', '');
INSERT INTO `ent_postmeta` VALUES (408, 33, '_banners_3_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (409, 33, 'banners_3_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (410, 33, '_banners_3_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (411, 33, 'banners_3_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (412, 33, '_banners_3_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (413, 33, 'banners_3_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (414, 33, '_banners_3_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (415, 33, 'banners_3_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (416, 33, '_banners_3_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (417, 33, 'banners_3_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (418, 33, '_banners_3_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (419, 33, 'cards_de_conteudos_0_imagem', '30');
INSERT INTO `ent_postmeta` VALUES (420, 33, '_cards_de_conteudos_0_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (421, 33, 'cards_de_conteudos_0_titulo_conteudo', 'SOBRE');
INSERT INTO `ent_postmeta` VALUES (422, 33, '_cards_de_conteudos_0_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (423, 33, 'cards_de_conteudos_0_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (424, 33, '_cards_de_conteudos_0_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (425, 33, 'cards_de_conteudos_0_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (426, 33, '_cards_de_conteudos_0_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (427, 33, 'cards_de_conteudos_0_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (428, 33, '_cards_de_conteudos_0_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (429, 33, 'cards_de_conteudos_1_imagem', '31');
INSERT INTO `ent_postmeta` VALUES (430, 33, '_cards_de_conteudos_1_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (431, 33, 'cards_de_conteudos_1_titulo_conteudo', 'MISSÃO');
INSERT INTO `ent_postmeta` VALUES (432, 33, '_cards_de_conteudos_1_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (433, 33, 'cards_de_conteudos_1_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (434, 33, '_cards_de_conteudos_1_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (435, 33, 'cards_de_conteudos_1_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (436, 33, '_cards_de_conteudos_1_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (437, 33, 'cards_de_conteudos_1_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (438, 33, '_cards_de_conteudos_1_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (439, 33, 'cards_de_conteudos_2_imagem', '32');
INSERT INTO `ent_postmeta` VALUES (440, 33, '_cards_de_conteudos_2_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (441, 33, 'cards_de_conteudos_2_titulo_conteudo', 'ESTRUTURA');
INSERT INTO `ent_postmeta` VALUES (442, 33, '_cards_de_conteudos_2_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (443, 33, 'cards_de_conteudos_2_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (444, 33, '_cards_de_conteudos_2_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (445, 33, 'cards_de_conteudos_2_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (446, 33, '_cards_de_conteudos_2_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (447, 33, 'cards_de_conteudos_2_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (448, 33, '_cards_de_conteudos_2_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (449, 34, '_wp_attached_file', '2020/11/estrutura01.jpg');
INSERT INTO `ent_postmeta` VALUES (450, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:676;s:6:\"height\";i:418;s:4:\"file\";s:23:\"2020/11/estrutura01.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"estrutura01-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"estrutura01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"mobile\";a:4:{s:4:\"file\";s:23:\"estrutura01-500x309.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:309;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (451, 35, '_wp_attached_file', '2020/11/estrutura02.jpg');
INSERT INTO `ent_postmeta` VALUES (452, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:108;s:6:\"height\";i:67;s:4:\"file\";s:23:\"2020/11/estrutura02.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (453, 36, '_wp_attached_file', '2020/11/estrutura03.jpg');
INSERT INTO `ent_postmeta` VALUES (454, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:108;s:6:\"height\";i:67;s:4:\"file\";s:23:\"2020/11/estrutura03.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (455, 37, '_wp_attached_file', '2020/11/estrutura04.jpg');
INSERT INTO `ent_postmeta` VALUES (456, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:108;s:6:\"height\";i:67;s:4:\"file\";s:23:\"2020/11/estrutura04.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (457, 38, '_wp_attached_file', '2020/11/estrutura05.jpg');
INSERT INTO `ent_postmeta` VALUES (458, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:108;s:6:\"height\";i:67;s:4:\"file\";s:23:\"2020/11/estrutura05.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (459, 39, '_wp_attached_file', '2020/11/estrutura06.jpg');
INSERT INTO `ent_postmeta` VALUES (460, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:108;s:6:\"height\";i:67;s:4:\"file\";s:23:\"2020/11/estrutura06.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (461, 40, '_wp_attached_file', '2020/11/missao-scaled.jpg');
INSERT INTO `ent_postmeta` VALUES (462, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:25:\"2020/11/missao-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"missao-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"missao-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"missao-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"missao-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"missao-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:20:\"missao-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"fullhd\";a:4:{s:4:\"file\";s:20:\"missao-1920x1280.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"desktop\";a:4:{s:4:\"file\";s:19:\"missao-1366x911.jpg\";s:5:\"width\";i:1366;s:6:\"height\";i:911;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"mobile\";a:4:{s:4:\"file\";s:18:\"missao-500x333.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:333;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:129:\"Businessman hand placing or pulling wooden block on the tower. Business planning, Risk Management, Solution and strategy Concepts\";s:17:\"created_timestamp\";s:10:\"1538783037\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:50:{i:0;s:7:\"balance\";i:1;s:5:\"block\";i:2;s:5:\"brick\";i:3;s:8:\"building\";i:4;s:8:\"business\";i:5;s:11:\"businessman\";i:6;s:6:\"change\";i:7;s:6:\"choice\";i:8;s:7:\"concept\";i:9;s:4:\"core\";i:10;s:6:\"danger\";i:11;s:6:\"domino\";i:12;s:8:\"economic\";i:13;s:6:\"effect\";i:14;s:7:\"falling\";i:15;s:7:\"finance\";i:16;s:8:\"gambling\";i:17;s:4:\"game\";i:18;s:5:\"goals\";i:19;s:4:\"hand\";i:20;s:7:\"holding\";i:21;s:11:\"instability\";i:22;s:9:\"insurance\";i:23;s:10:\"investment\";i:24;s:5:\"jenga\";i:25;s:10:\"leadership\";i:26;s:3:\"man\";i:27;s:10:\"management\";i:28;s:7:\"manager\";i:29;s:6:\"market\";i:30;s:8:\"metaphor\";i:31;s:7:\"mission\";i:32;s:11:\"opportunity\";i:33;s:12:\"organization\";i:34;s:8:\"planning\";i:35;s:7:\"problem\";i:36;s:7:\"process\";i:37;s:7:\"project\";i:38;s:6:\"puzzle\";i:39;s:4:\"risk\";i:40;s:8:\"solution\";i:41;s:9:\"stability\";i:42;s:4:\"stop\";i:43;s:8:\"strategy\";i:44;s:7:\"success\";i:45;s:5:\"tower\";i:46;s:11:\"uncertainty\";i:47;s:5:\"value\";i:48;s:6:\"vision\";i:49;s:6:\"wooden\";}}s:14:\"original_image\";s:10:\"missao.jpg\";}');
INSERT INTO `ent_postmeta` VALUES (463, 41, '_wp_attached_file', '2020/11/sobre.jpg');
INSERT INTO `ent_postmeta` VALUES (464, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:578;s:6:\"height\";i:476;s:4:\"file\";s:17:\"2020/11/sobre.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"sobre-300x247.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:247;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"sobre-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"mobile\";a:4:{s:4:\"file\";s:17:\"sobre-500x412.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:412;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (465, 42, 'banners', '4');
INSERT INTO `ent_postmeta` VALUES (466, 42, '_banners', 'field_5f42a8ffdd04c');
INSERT INTO `ent_postmeta` VALUES (467, 42, 'titulo_bv', 'Bem-vindo ao Entre Irmãos');
INSERT INTO `ent_postmeta` VALUES (468, 42, '_titulo_bv', 'field_5f9f36954cae3');
INSERT INTO `ent_postmeta` VALUES (469, 42, 'texto_bv', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (470, 42, '_texto_bv', 'field_5f9f38904cae4');
INSERT INTO `ent_postmeta` VALUES (471, 42, 'logo_bv', '10');
INSERT INTO `ent_postmeta` VALUES (472, 42, '_logo_bv', 'field_5f9f38ba4cae5');
INSERT INTO `ent_postmeta` VALUES (473, 42, 'cards_de_conteudos', '3');
INSERT INTO `ent_postmeta` VALUES (474, 42, '_cards_de_conteudos', 'field_5f9f38fb4cae6');
INSERT INTO `ent_postmeta` VALUES (475, 42, 'banners_0_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (476, 42, '_banners_0_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (477, 42, 'banners_0_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (478, 42, '_banners_0_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (479, 42, 'banners_0_imagens', '');
INSERT INTO `ent_postmeta` VALUES (480, 42, '_banners_0_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (481, 42, 'banners_0_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (482, 42, '_banners_0_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (483, 42, 'banners_0_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (484, 42, '_banners_0_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (485, 42, 'banners_0_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (486, 42, '_banners_0_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (487, 42, 'banners_0_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (488, 42, '_banners_0_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (489, 42, 'banners_0_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (490, 42, '_banners_0_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (491, 42, 'banners_1_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (492, 42, '_banners_1_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (493, 42, 'banners_1_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (494, 42, '_banners_1_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (495, 42, 'banners_1_imagens', '');
INSERT INTO `ent_postmeta` VALUES (496, 42, '_banners_1_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (497, 42, 'banners_1_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (498, 42, '_banners_1_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (499, 42, 'banners_1_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (500, 42, '_banners_1_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (501, 42, 'banners_1_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (502, 42, '_banners_1_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (503, 42, 'banners_1_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (504, 42, '_banners_1_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (505, 42, 'banners_1_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (506, 42, '_banners_1_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (507, 42, 'banners_2_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (508, 42, '_banners_2_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (509, 42, 'banners_2_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (510, 42, '_banners_2_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (511, 42, 'banners_2_imagens', '');
INSERT INTO `ent_postmeta` VALUES (512, 42, '_banners_2_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (513, 42, 'banners_2_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (514, 42, '_banners_2_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (515, 42, 'banners_2_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (516, 42, '_banners_2_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (517, 42, 'banners_2_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (518, 42, '_banners_2_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (519, 42, 'banners_2_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (520, 42, '_banners_2_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (521, 42, 'banners_2_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (522, 42, '_banners_2_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (523, 42, 'banners_3_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (524, 42, '_banners_3_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (525, 42, 'banners_3_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (526, 42, '_banners_3_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (527, 42, 'banners_3_imagens', '');
INSERT INTO `ent_postmeta` VALUES (528, 42, '_banners_3_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (529, 42, 'banners_3_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (530, 42, '_banners_3_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (531, 42, 'banners_3_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (532, 42, '_banners_3_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (533, 42, 'banners_3_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (534, 42, '_banners_3_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (535, 42, 'banners_3_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (536, 42, '_banners_3_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (537, 42, 'banners_3_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (538, 42, '_banners_3_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (539, 42, 'cards_de_conteudos_0_imagem', '30');
INSERT INTO `ent_postmeta` VALUES (540, 42, '_cards_de_conteudos_0_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (541, 42, 'cards_de_conteudos_0_titulo_conteudo', 'SOBRE');
INSERT INTO `ent_postmeta` VALUES (542, 42, '_cards_de_conteudos_0_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (543, 42, 'cards_de_conteudos_0_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (544, 42, '_cards_de_conteudos_0_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (545, 42, 'cards_de_conteudos_0_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (546, 42, '_cards_de_conteudos_0_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (547, 42, 'cards_de_conteudos_0_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (548, 42, '_cards_de_conteudos_0_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (549, 42, 'cards_de_conteudos_1_imagem', '31');
INSERT INTO `ent_postmeta` VALUES (550, 42, '_cards_de_conteudos_1_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (551, 42, 'cards_de_conteudos_1_titulo_conteudo', 'MISSÃO');
INSERT INTO `ent_postmeta` VALUES (552, 42, '_cards_de_conteudos_1_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (553, 42, 'cards_de_conteudos_1_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (554, 42, '_cards_de_conteudos_1_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (555, 42, 'cards_de_conteudos_1_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (556, 42, '_cards_de_conteudos_1_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (557, 42, 'cards_de_conteudos_1_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (558, 42, '_cards_de_conteudos_1_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (559, 42, 'cards_de_conteudos_2_imagem', '32');
INSERT INTO `ent_postmeta` VALUES (560, 42, '_cards_de_conteudos_2_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (561, 42, 'cards_de_conteudos_2_titulo_conteudo', 'ESTRUTURA');
INSERT INTO `ent_postmeta` VALUES (562, 42, '_cards_de_conteudos_2_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (563, 42, 'cards_de_conteudos_2_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (564, 42, '_cards_de_conteudos_2_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (565, 42, 'cards_de_conteudos_2_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (566, 42, '_cards_de_conteudos_2_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (567, 42, 'cards_de_conteudos_2_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (568, 42, '_cards_de_conteudos_2_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (569, 43, 'banners', '4');
INSERT INTO `ent_postmeta` VALUES (570, 43, '_banners', 'field_5f42a8ffdd04c');
INSERT INTO `ent_postmeta` VALUES (571, 43, 'titulo_bv', 'Bem-vindo ao Entre Irmãos');
INSERT INTO `ent_postmeta` VALUES (572, 43, '_titulo_bv', 'field_5f9f36954cae3');
INSERT INTO `ent_postmeta` VALUES (573, 43, 'texto_bv', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (574, 43, '_texto_bv', 'field_5f9f38904cae4');
INSERT INTO `ent_postmeta` VALUES (575, 43, 'logo_bv', '10');
INSERT INTO `ent_postmeta` VALUES (576, 43, '_logo_bv', 'field_5f9f38ba4cae5');
INSERT INTO `ent_postmeta` VALUES (577, 43, 'cards_de_conteudos', '3');
INSERT INTO `ent_postmeta` VALUES (578, 43, '_cards_de_conteudos', 'field_5f9f38fb4cae6');
INSERT INTO `ent_postmeta` VALUES (579, 43, 'banners_0_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (580, 43, '_banners_0_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (581, 43, 'banners_0_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (582, 43, '_banners_0_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (583, 43, 'banners_0_imagens', '');
INSERT INTO `ent_postmeta` VALUES (584, 43, '_banners_0_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (585, 43, 'banners_0_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (586, 43, '_banners_0_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (587, 43, 'banners_0_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (588, 43, '_banners_0_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (589, 43, 'banners_0_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (590, 43, '_banners_0_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (591, 43, 'banners_0_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (592, 43, '_banners_0_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (593, 43, 'banners_0_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (594, 43, '_banners_0_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (595, 43, 'banners_1_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (596, 43, '_banners_1_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (597, 43, 'banners_1_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (598, 43, '_banners_1_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (599, 43, 'banners_1_imagens', '');
INSERT INTO `ent_postmeta` VALUES (600, 43, '_banners_1_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (601, 43, 'banners_1_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (602, 43, '_banners_1_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (603, 43, 'banners_1_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (604, 43, '_banners_1_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (605, 43, 'banners_1_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (606, 43, '_banners_1_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (607, 43, 'banners_1_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (608, 43, '_banners_1_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (609, 43, 'banners_1_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (610, 43, '_banners_1_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (611, 43, 'banners_2_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (612, 43, '_banners_2_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (613, 43, 'banners_2_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (614, 43, '_banners_2_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (615, 43, 'banners_2_imagens', '');
INSERT INTO `ent_postmeta` VALUES (616, 43, '_banners_2_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (617, 43, 'banners_2_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (618, 43, '_banners_2_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (619, 43, 'banners_2_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (620, 43, '_banners_2_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (621, 43, 'banners_2_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (622, 43, '_banners_2_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (623, 43, 'banners_2_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (624, 43, '_banners_2_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (625, 43, 'banners_2_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (626, 43, '_banners_2_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (627, 43, 'banners_3_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (628, 43, '_banners_3_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (629, 43, 'banners_3_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (630, 43, '_banners_3_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (631, 43, 'banners_3_imagens', '');
INSERT INTO `ent_postmeta` VALUES (632, 43, '_banners_3_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (633, 43, 'banners_3_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (634, 43, '_banners_3_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (635, 43, 'banners_3_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (636, 43, '_banners_3_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (637, 43, 'banners_3_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (638, 43, '_banners_3_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (639, 43, 'banners_3_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (640, 43, '_banners_3_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (641, 43, 'banners_3_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (642, 43, '_banners_3_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (643, 43, 'cards_de_conteudos_0_imagem', '30');
INSERT INTO `ent_postmeta` VALUES (644, 43, '_cards_de_conteudos_0_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (645, 43, 'cards_de_conteudos_0_titulo_conteudo', 'SOBRE');
INSERT INTO `ent_postmeta` VALUES (646, 43, '_cards_de_conteudos_0_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (647, 43, 'cards_de_conteudos_0_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (648, 43, '_cards_de_conteudos_0_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (649, 43, 'cards_de_conteudos_0_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (650, 43, '_cards_de_conteudos_0_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (651, 43, 'cards_de_conteudos_0_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (652, 43, '_cards_de_conteudos_0_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (653, 43, 'cards_de_conteudos_1_imagem', '31');
INSERT INTO `ent_postmeta` VALUES (654, 43, '_cards_de_conteudos_1_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (655, 43, 'cards_de_conteudos_1_titulo_conteudo', 'MISSÃO');
INSERT INTO `ent_postmeta` VALUES (656, 43, '_cards_de_conteudos_1_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (657, 43, 'cards_de_conteudos_1_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (658, 43, '_cards_de_conteudos_1_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (659, 43, 'cards_de_conteudos_1_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (660, 43, '_cards_de_conteudos_1_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (661, 43, 'cards_de_conteudos_1_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (662, 43, '_cards_de_conteudos_1_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (663, 43, 'cards_de_conteudos_2_imagem', '32');
INSERT INTO `ent_postmeta` VALUES (664, 43, '_cards_de_conteudos_2_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (665, 43, 'cards_de_conteudos_2_titulo_conteudo', 'ESTRUTURA');
INSERT INTO `ent_postmeta` VALUES (666, 43, '_cards_de_conteudos_2_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (667, 43, 'cards_de_conteudos_2_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (668, 43, '_cards_de_conteudos_2_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (669, 43, 'cards_de_conteudos_2_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (670, 43, '_cards_de_conteudos_2_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (671, 43, 'cards_de_conteudos_2_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (672, 43, '_cards_de_conteudos_2_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (673, 44, '_menu_item_type', 'custom');
INSERT INTO `ent_postmeta` VALUES (674, 44, '_menu_item_menu_item_parent', '0');
INSERT INTO `ent_postmeta` VALUES (675, 44, '_menu_item_object_id', '44');
INSERT INTO `ent_postmeta` VALUES (676, 44, '_menu_item_object', 'custom');
INSERT INTO `ent_postmeta` VALUES (677, 44, '_menu_item_target', '');
INSERT INTO `ent_postmeta` VALUES (678, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `ent_postmeta` VALUES (679, 44, '_menu_item_xfn', '');
INSERT INTO `ent_postmeta` VALUES (680, 44, '_menu_item_url', 'http://localhost/');
INSERT INTO `ent_postmeta` VALUES (681, 44, '_menu_item_orphaned', '1604709891');
INSERT INTO `ent_postmeta` VALUES (691, 46, '_menu_item_type', 'post_type');
INSERT INTO `ent_postmeta` VALUES (692, 46, '_menu_item_menu_item_parent', '0');
INSERT INTO `ent_postmeta` VALUES (693, 46, '_menu_item_object_id', '20');
INSERT INTO `ent_postmeta` VALUES (694, 46, '_menu_item_object', 'page');
INSERT INTO `ent_postmeta` VALUES (695, 46, '_menu_item_target', '');
INSERT INTO `ent_postmeta` VALUES (696, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `ent_postmeta` VALUES (697, 46, '_menu_item_xfn', '');
INSERT INTO `ent_postmeta` VALUES (698, 46, '_menu_item_url', '');
INSERT INTO `ent_postmeta` VALUES (709, 48, '_menu_item_type', 'post_type');
INSERT INTO `ent_postmeta` VALUES (710, 48, '_menu_item_menu_item_parent', '0');
INSERT INTO `ent_postmeta` VALUES (711, 48, '_menu_item_object_id', '26');
INSERT INTO `ent_postmeta` VALUES (712, 48, '_menu_item_object', 'page');
INSERT INTO `ent_postmeta` VALUES (713, 48, '_menu_item_target', '');
INSERT INTO `ent_postmeta` VALUES (714, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `ent_postmeta` VALUES (715, 48, '_menu_item_xfn', '');
INSERT INTO `ent_postmeta` VALUES (716, 48, '_menu_item_url', '');
INSERT INTO `ent_postmeta` VALUES (718, 49, '_menu_item_type', 'post_type');
INSERT INTO `ent_postmeta` VALUES (719, 49, '_menu_item_menu_item_parent', '0');
INSERT INTO `ent_postmeta` VALUES (720, 49, '_menu_item_object_id', '5');
INSERT INTO `ent_postmeta` VALUES (721, 49, '_menu_item_object', 'page');
INSERT INTO `ent_postmeta` VALUES (722, 49, '_menu_item_target', '');
INSERT INTO `ent_postmeta` VALUES (723, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `ent_postmeta` VALUES (724, 49, '_menu_item_xfn', '');
INSERT INTO `ent_postmeta` VALUES (725, 49, '_menu_item_url', '');
INSERT INTO `ent_postmeta` VALUES (736, 51, '_menu_item_type', 'post_type');
INSERT INTO `ent_postmeta` VALUES (737, 51, '_menu_item_menu_item_parent', '0');
INSERT INTO `ent_postmeta` VALUES (738, 51, '_menu_item_object_id', '18');
INSERT INTO `ent_postmeta` VALUES (739, 51, '_menu_item_object', 'page');
INSERT INTO `ent_postmeta` VALUES (740, 51, '_menu_item_target', '');
INSERT INTO `ent_postmeta` VALUES (741, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `ent_postmeta` VALUES (742, 51, '_menu_item_xfn', '');
INSERT INTO `ent_postmeta` VALUES (743, 51, '_menu_item_url', '');
INSERT INTO `ent_postmeta` VALUES (745, 52, '_wp_attached_file', '2020/11/icone_entre_irmaos.svg');
INSERT INTO `ent_postmeta` VALUES (746, 52, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:208;s:6:\"height\";i:205;s:4:\"file\";s:31:\"/2020/11/icone_entre_irmaos.svg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:22:\"icone_entre_irmaos.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:22:\"icone_entre_irmaos.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:22:\"icone_entre_irmaos.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:22:\"icone_entre_irmaos.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:22:\"icone_entre_irmaos.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:22:\"icone_entre_irmaos.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"fullhd\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:22:\"icone_entre_irmaos.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:7:\"desktop\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:22:\"icone_entre_irmaos.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"mobile\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:22:\"icone_entre_irmaos.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}');
INSERT INTO `ent_postmeta` VALUES (747, 53, 'banners', '4');
INSERT INTO `ent_postmeta` VALUES (748, 53, '_banners', 'field_5f42a8ffdd04c');
INSERT INTO `ent_postmeta` VALUES (749, 53, 'titulo_bv', 'Bem-vindo ao Entre Irmãos');
INSERT INTO `ent_postmeta` VALUES (750, 53, '_titulo_bv', 'field_5f9f36954cae3');
INSERT INTO `ent_postmeta` VALUES (751, 53, 'texto_bv', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (752, 53, '_texto_bv', 'field_5f9f38904cae4');
INSERT INTO `ent_postmeta` VALUES (753, 53, 'logo_bv', '52');
INSERT INTO `ent_postmeta` VALUES (754, 53, '_logo_bv', 'field_5f9f38ba4cae5');
INSERT INTO `ent_postmeta` VALUES (755, 53, 'cards_de_conteudos', '3');
INSERT INTO `ent_postmeta` VALUES (756, 53, '_cards_de_conteudos', 'field_5f9f38fb4cae6');
INSERT INTO `ent_postmeta` VALUES (757, 53, 'banners_0_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (758, 53, '_banners_0_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (759, 53, 'banners_0_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (760, 53, '_banners_0_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (761, 53, 'banners_0_imagens', '');
INSERT INTO `ent_postmeta` VALUES (762, 53, '_banners_0_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (763, 53, 'banners_0_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (764, 53, '_banners_0_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (765, 53, 'banners_0_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (766, 53, '_banners_0_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (767, 53, 'banners_0_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (768, 53, '_banners_0_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (769, 53, 'banners_0_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (770, 53, '_banners_0_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (771, 53, 'banners_0_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (772, 53, '_banners_0_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (773, 53, 'banners_1_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (774, 53, '_banners_1_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (775, 53, 'banners_1_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (776, 53, '_banners_1_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (777, 53, 'banners_1_imagens', '');
INSERT INTO `ent_postmeta` VALUES (778, 53, '_banners_1_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (779, 53, 'banners_1_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (780, 53, '_banners_1_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (781, 53, 'banners_1_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (782, 53, '_banners_1_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (783, 53, 'banners_1_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (784, 53, '_banners_1_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (785, 53, 'banners_1_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (786, 53, '_banners_1_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (787, 53, 'banners_1_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (788, 53, '_banners_1_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (789, 53, 'banners_2_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (790, 53, '_banners_2_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (791, 53, 'banners_2_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (792, 53, '_banners_2_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (793, 53, 'banners_2_imagens', '');
INSERT INTO `ent_postmeta` VALUES (794, 53, '_banners_2_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (795, 53, 'banners_2_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (796, 53, '_banners_2_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (797, 53, 'banners_2_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (798, 53, '_banners_2_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (799, 53, 'banners_2_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (800, 53, '_banners_2_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (801, 53, 'banners_2_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (802, 53, '_banners_2_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (803, 53, 'banners_2_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (804, 53, '_banners_2_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (805, 53, 'banners_3_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (806, 53, '_banners_3_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (807, 53, 'banners_3_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (808, 53, '_banners_3_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (809, 53, 'banners_3_imagens', '');
INSERT INTO `ent_postmeta` VALUES (810, 53, '_banners_3_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (811, 53, 'banners_3_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (812, 53, '_banners_3_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (813, 53, 'banners_3_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (814, 53, '_banners_3_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (815, 53, 'banners_3_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (816, 53, '_banners_3_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (817, 53, 'banners_3_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (818, 53, '_banners_3_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (819, 53, 'banners_3_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (820, 53, '_banners_3_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (821, 53, 'cards_de_conteudos_0_imagem', '30');
INSERT INTO `ent_postmeta` VALUES (822, 53, '_cards_de_conteudos_0_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (823, 53, 'cards_de_conteudos_0_titulo_conteudo', 'SOBRE');
INSERT INTO `ent_postmeta` VALUES (824, 53, '_cards_de_conteudos_0_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (825, 53, 'cards_de_conteudos_0_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (826, 53, '_cards_de_conteudos_0_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (827, 53, 'cards_de_conteudos_0_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (828, 53, '_cards_de_conteudos_0_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (829, 53, 'cards_de_conteudos_0_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (830, 53, '_cards_de_conteudos_0_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (831, 53, 'cards_de_conteudos_1_imagem', '31');
INSERT INTO `ent_postmeta` VALUES (832, 53, '_cards_de_conteudos_1_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (833, 53, 'cards_de_conteudos_1_titulo_conteudo', 'MISSÃO');
INSERT INTO `ent_postmeta` VALUES (834, 53, '_cards_de_conteudos_1_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (835, 53, 'cards_de_conteudos_1_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (836, 53, '_cards_de_conteudos_1_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (837, 53, 'cards_de_conteudos_1_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (838, 53, '_cards_de_conteudos_1_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (839, 53, 'cards_de_conteudos_1_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (840, 53, '_cards_de_conteudos_1_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (841, 53, 'cards_de_conteudos_2_imagem', '32');
INSERT INTO `ent_postmeta` VALUES (842, 53, '_cards_de_conteudos_2_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (843, 53, 'cards_de_conteudos_2_titulo_conteudo', 'ESTRUTURA');
INSERT INTO `ent_postmeta` VALUES (844, 53, '_cards_de_conteudos_2_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (845, 53, 'cards_de_conteudos_2_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (846, 53, '_cards_de_conteudos_2_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (847, 53, 'cards_de_conteudos_2_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (848, 53, '_cards_de_conteudos_2_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (849, 53, 'cards_de_conteudos_2_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (850, 53, '_cards_de_conteudos_2_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (851, 54, 'banners', '4');
INSERT INTO `ent_postmeta` VALUES (852, 54, '_banners', 'field_5f42a8ffdd04c');
INSERT INTO `ent_postmeta` VALUES (853, 54, 'titulo_bv', 'Bem-vindo ao Entre Irmãos');
INSERT INTO `ent_postmeta` VALUES (854, 54, '_titulo_bv', 'field_5f9f36954cae3');
INSERT INTO `ent_postmeta` VALUES (855, 54, 'texto_bv', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (856, 54, '_texto_bv', 'field_5f9f38904cae4');
INSERT INTO `ent_postmeta` VALUES (857, 54, 'logo_bv', '52');
INSERT INTO `ent_postmeta` VALUES (858, 54, '_logo_bv', 'field_5f9f38ba4cae5');
INSERT INTO `ent_postmeta` VALUES (859, 54, 'cards_de_conteudos', '3');
INSERT INTO `ent_postmeta` VALUES (860, 54, '_cards_de_conteudos', 'field_5f9f38fb4cae6');
INSERT INTO `ent_postmeta` VALUES (861, 54, 'banners_0_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (862, 54, '_banners_0_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (863, 54, 'banners_0_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (864, 54, '_banners_0_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (865, 54, 'banners_0_imagens', '');
INSERT INTO `ent_postmeta` VALUES (866, 54, '_banners_0_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (867, 54, 'banners_0_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (868, 54, '_banners_0_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (869, 54, 'banners_0_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (870, 54, '_banners_0_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (871, 54, 'banners_0_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (872, 54, '_banners_0_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (873, 54, 'banners_0_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (874, 54, '_banners_0_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (875, 54, 'banners_0_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (876, 54, '_banners_0_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (877, 54, 'banners_1_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (878, 54, '_banners_1_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (879, 54, 'banners_1_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (880, 54, '_banners_1_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (881, 54, 'banners_1_imagens', '');
INSERT INTO `ent_postmeta` VALUES (882, 54, '_banners_1_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (883, 54, 'banners_1_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (884, 54, '_banners_1_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (885, 54, 'banners_1_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (886, 54, '_banners_1_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (887, 54, 'banners_1_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (888, 54, '_banners_1_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (889, 54, 'banners_1_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (890, 54, '_banners_1_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (891, 54, 'banners_1_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (892, 54, '_banners_1_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (893, 54, 'banners_2_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (894, 54, '_banners_2_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (895, 54, 'banners_2_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (896, 54, '_banners_2_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (897, 54, 'banners_2_imagens', '');
INSERT INTO `ent_postmeta` VALUES (898, 54, '_banners_2_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (899, 54, 'banners_2_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (900, 54, '_banners_2_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (901, 54, 'banners_2_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (902, 54, '_banners_2_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (903, 54, 'banners_2_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (904, 54, '_banners_2_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (905, 54, 'banners_2_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (906, 54, '_banners_2_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (907, 54, 'banners_2_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (908, 54, '_banners_2_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (909, 54, 'banners_3_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (910, 54, '_banners_3_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (911, 54, 'banners_3_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (912, 54, '_banners_3_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (913, 54, 'banners_3_imagens', '');
INSERT INTO `ent_postmeta` VALUES (914, 54, '_banners_3_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (915, 54, 'banners_3_conteudoBanner_titulo_banner', 'Trabalhamos pela cura no mundo');
INSERT INTO `ent_postmeta` VALUES (916, 54, '_banners_3_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (917, 54, 'banners_3_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (918, 54, '_banners_3_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (919, 54, 'banners_3_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (920, 54, '_banners_3_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (921, 54, 'banners_3_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (922, 54, '_banners_3_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (923, 54, 'banners_3_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (924, 54, '_banners_3_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (925, 54, 'cards_de_conteudos_0_imagem', '30');
INSERT INTO `ent_postmeta` VALUES (926, 54, '_cards_de_conteudos_0_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (927, 54, 'cards_de_conteudos_0_titulo_conteudo', 'SOBRE');
INSERT INTO `ent_postmeta` VALUES (928, 54, '_cards_de_conteudos_0_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (929, 54, 'cards_de_conteudos_0_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (930, 54, '_cards_de_conteudos_0_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (931, 54, 'cards_de_conteudos_0_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (932, 54, '_cards_de_conteudos_0_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (933, 54, 'cards_de_conteudos_0_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (934, 54, '_cards_de_conteudos_0_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (935, 54, 'cards_de_conteudos_1_imagem', '31');
INSERT INTO `ent_postmeta` VALUES (936, 54, '_cards_de_conteudos_1_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (937, 54, 'cards_de_conteudos_1_titulo_conteudo', 'MISSÃO');
INSERT INTO `ent_postmeta` VALUES (938, 54, '_cards_de_conteudos_1_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (939, 54, 'cards_de_conteudos_1_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (940, 54, '_cards_de_conteudos_1_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (941, 54, 'cards_de_conteudos_1_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (942, 54, '_cards_de_conteudos_1_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (943, 54, 'cards_de_conteudos_1_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (944, 54, '_cards_de_conteudos_1_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (945, 54, 'cards_de_conteudos_2_imagem', '32');
INSERT INTO `ent_postmeta` VALUES (946, 54, '_cards_de_conteudos_2_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (947, 54, 'cards_de_conteudos_2_titulo_conteudo', 'ESTRUTURA');
INSERT INTO `ent_postmeta` VALUES (948, 54, '_cards_de_conteudos_2_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (949, 54, 'cards_de_conteudos_2_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (950, 54, '_cards_de_conteudos_2_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (951, 54, 'cards_de_conteudos_2_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (952, 54, '_cards_de_conteudos_2_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (953, 54, 'cards_de_conteudos_2_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (954, 54, '_cards_de_conteudos_2_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (955, 55, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (956, 55, '_edit_lock', '1604721465:1');
INSERT INTO `ent_postmeta` VALUES (957, 18, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (958, 18, 'topicos__quemSomos_icone__sobre', '30');
INSERT INTO `ent_postmeta` VALUES (959, 18, '_topicos__quemSomos_icone__sobre', 'field_5fa60a1275634');
INSERT INTO `ent_postmeta` VALUES (960, 18, 'topicos__quemSomos_titulo__sobre', 'Sobre');
INSERT INTO `ent_postmeta` VALUES (961, 18, '_topicos__quemSomos_titulo__sobre', 'field_5fa60a2d75635');
INSERT INTO `ent_postmeta` VALUES (962, 18, 'topicos__quemSomos_texto__sobre', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (963, 18, '_topicos__quemSomos_texto__sobre', 'field_5fa60a4075636');
INSERT INTO `ent_postmeta` VALUES (964, 18, 'topicos__quemSomos_imagem__sobre', '41');
INSERT INTO `ent_postmeta` VALUES (965, 18, '_topicos__quemSomos_imagem__sobre', 'field_5fa60a5775637');
INSERT INTO `ent_postmeta` VALUES (966, 18, 'topicos__quemSomos_icone__missao', '31');
INSERT INTO `ent_postmeta` VALUES (967, 18, '_topicos__quemSomos_icone__missao', 'field_5fa60a7675639');
INSERT INTO `ent_postmeta` VALUES (968, 18, 'topicos__quemSomos_titulo__missao', 'Missão');
INSERT INTO `ent_postmeta` VALUES (969, 18, '_topicos__quemSomos_titulo__missao', 'field_5fa60a8c7563a');
INSERT INTO `ent_postmeta` VALUES (970, 18, 'topicos__quemSomos_texto__missao', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (971, 18, '_topicos__quemSomos_texto__missao', 'field_5fa60a9f7563b');
INSERT INTO `ent_postmeta` VALUES (972, 18, 'topicos__quemSomos_imagem__missao', '74');
INSERT INTO `ent_postmeta` VALUES (973, 18, '_topicos__quemSomos_imagem__missao', 'field_5fa60aaa7563c');
INSERT INTO `ent_postmeta` VALUES (974, 18, 'topicos__quemSomos_icone__estrutura', '32');
INSERT INTO `ent_postmeta` VALUES (975, 18, '_topicos__quemSomos_icone__estrutura', 'field_5fa60ae17563e');
INSERT INTO `ent_postmeta` VALUES (976, 18, 'topicos__quemSomos_titulo__estrutura', 'Estrutura');
INSERT INTO `ent_postmeta` VALUES (977, 18, '_topicos__quemSomos_titulo__estrutura', 'field_5fa60af37563f');
INSERT INTO `ent_postmeta` VALUES (978, 18, 'topicos__quemSomos_texto__estrutura', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (979, 18, '_topicos__quemSomos_texto__estrutura', 'field_5fa60b29497ae');
INSERT INTO `ent_postmeta` VALUES (980, 18, 'topicos__quemSomos', '');
INSERT INTO `ent_postmeta` VALUES (981, 18, '_topicos__quemSomos', 'field_5fa609df75632');
INSERT INTO `ent_postmeta` VALUES (982, 71, 'topicos__quemSomos_icone__sobre', '30');
INSERT INTO `ent_postmeta` VALUES (983, 71, '_topicos__quemSomos_icone__sobre', 'field_5fa60a1275634');
INSERT INTO `ent_postmeta` VALUES (984, 71, 'topicos__quemSomos_titulo__sobre', 'Sobre');
INSERT INTO `ent_postmeta` VALUES (985, 71, '_topicos__quemSomos_titulo__sobre', 'field_5fa60a2d75635');
INSERT INTO `ent_postmeta` VALUES (986, 71, 'topicos__quemSomos_texto__sobre', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (987, 71, '_topicos__quemSomos_texto__sobre', 'field_5fa60a4075636');
INSERT INTO `ent_postmeta` VALUES (988, 71, 'topicos__quemSomos_imagem__sobre', '');
INSERT INTO `ent_postmeta` VALUES (989, 71, '_topicos__quemSomos_imagem__sobre', 'field_5fa60a5775637');
INSERT INTO `ent_postmeta` VALUES (990, 71, 'topicos__quemSomos_icone__missao', '');
INSERT INTO `ent_postmeta` VALUES (991, 71, '_topicos__quemSomos_icone__missao', 'field_5fa60a7675639');
INSERT INTO `ent_postmeta` VALUES (992, 71, 'topicos__quemSomos_titulo__missao', '');
INSERT INTO `ent_postmeta` VALUES (993, 71, '_topicos__quemSomos_titulo__missao', 'field_5fa60a8c7563a');
INSERT INTO `ent_postmeta` VALUES (994, 71, 'topicos__quemSomos_texto__missao', '');
INSERT INTO `ent_postmeta` VALUES (995, 71, '_topicos__quemSomos_texto__missao', 'field_5fa60a9f7563b');
INSERT INTO `ent_postmeta` VALUES (996, 71, 'topicos__quemSomos_imagem__missao', '');
INSERT INTO `ent_postmeta` VALUES (997, 71, '_topicos__quemSomos_imagem__missao', 'field_5fa60aaa7563c');
INSERT INTO `ent_postmeta` VALUES (998, 71, 'topicos__quemSomos_icone__estrutura', '');
INSERT INTO `ent_postmeta` VALUES (999, 71, '_topicos__quemSomos_icone__estrutura', 'field_5fa60ae17563e');
INSERT INTO `ent_postmeta` VALUES (1000, 71, 'topicos__quemSomos_titulo__estrutura', '');
INSERT INTO `ent_postmeta` VALUES (1001, 71, '_topicos__quemSomos_titulo__estrutura', 'field_5fa60af37563f');
INSERT INTO `ent_postmeta` VALUES (1002, 71, 'topicos__quemSomos_texto__estrutura', '');
INSERT INTO `ent_postmeta` VALUES (1003, 71, '_topicos__quemSomos_texto__estrutura', 'field_5fa60b29497ae');
INSERT INTO `ent_postmeta` VALUES (1004, 71, 'topicos__quemSomos', '');
INSERT INTO `ent_postmeta` VALUES (1005, 71, '_topicos__quemSomos', 'field_5fa609df75632');
INSERT INTO `ent_postmeta` VALUES (1006, 72, 'topicos__quemSomos_icone__sobre', '30');
INSERT INTO `ent_postmeta` VALUES (1007, 72, '_topicos__quemSomos_icone__sobre', 'field_5fa60a1275634');
INSERT INTO `ent_postmeta` VALUES (1008, 72, 'topicos__quemSomos_titulo__sobre', 'Sobre');
INSERT INTO `ent_postmeta` VALUES (1009, 72, '_topicos__quemSomos_titulo__sobre', 'field_5fa60a2d75635');
INSERT INTO `ent_postmeta` VALUES (1010, 72, 'topicos__quemSomos_texto__sobre', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (1011, 72, '_topicos__quemSomos_texto__sobre', 'field_5fa60a4075636');
INSERT INTO `ent_postmeta` VALUES (1012, 72, 'topicos__quemSomos_imagem__sobre', '41');
INSERT INTO `ent_postmeta` VALUES (1013, 72, '_topicos__quemSomos_imagem__sobre', 'field_5fa60a5775637');
INSERT INTO `ent_postmeta` VALUES (1014, 72, 'topicos__quemSomos_icone__missao', '31');
INSERT INTO `ent_postmeta` VALUES (1015, 72, '_topicos__quemSomos_icone__missao', 'field_5fa60a7675639');
INSERT INTO `ent_postmeta` VALUES (1016, 72, 'topicos__quemSomos_titulo__missao', 'Missão');
INSERT INTO `ent_postmeta` VALUES (1017, 72, '_topicos__quemSomos_titulo__missao', 'field_5fa60a8c7563a');
INSERT INTO `ent_postmeta` VALUES (1018, 72, 'topicos__quemSomos_texto__missao', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (1019, 72, '_topicos__quemSomos_texto__missao', 'field_5fa60a9f7563b');
INSERT INTO `ent_postmeta` VALUES (1020, 72, 'topicos__quemSomos_imagem__missao', '');
INSERT INTO `ent_postmeta` VALUES (1021, 72, '_topicos__quemSomos_imagem__missao', 'field_5fa60aaa7563c');
INSERT INTO `ent_postmeta` VALUES (1022, 72, 'topicos__quemSomos_icone__estrutura', '');
INSERT INTO `ent_postmeta` VALUES (1023, 72, '_topicos__quemSomos_icone__estrutura', 'field_5fa60ae17563e');
INSERT INTO `ent_postmeta` VALUES (1024, 72, 'topicos__quemSomos_titulo__estrutura', '');
INSERT INTO `ent_postmeta` VALUES (1025, 72, '_topicos__quemSomos_titulo__estrutura', 'field_5fa60af37563f');
INSERT INTO `ent_postmeta` VALUES (1026, 72, 'topicos__quemSomos_texto__estrutura', '');
INSERT INTO `ent_postmeta` VALUES (1027, 72, '_topicos__quemSomos_texto__estrutura', 'field_5fa60b29497ae');
INSERT INTO `ent_postmeta` VALUES (1028, 72, 'topicos__quemSomos', '');
INSERT INTO `ent_postmeta` VALUES (1029, 72, '_topicos__quemSomos', 'field_5fa609df75632');
INSERT INTO `ent_postmeta` VALUES (1030, 73, 'topicos__quemSomos_icone__sobre', '30');
INSERT INTO `ent_postmeta` VALUES (1031, 73, '_topicos__quemSomos_icone__sobre', 'field_5fa60a1275634');
INSERT INTO `ent_postmeta` VALUES (1032, 73, 'topicos__quemSomos_titulo__sobre', 'Sobre');
INSERT INTO `ent_postmeta` VALUES (1033, 73, '_topicos__quemSomos_titulo__sobre', 'field_5fa60a2d75635');
INSERT INTO `ent_postmeta` VALUES (1034, 73, 'topicos__quemSomos_texto__sobre', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (1035, 73, '_topicos__quemSomos_texto__sobre', 'field_5fa60a4075636');
INSERT INTO `ent_postmeta` VALUES (1036, 73, 'topicos__quemSomos_imagem__sobre', '41');
INSERT INTO `ent_postmeta` VALUES (1037, 73, '_topicos__quemSomos_imagem__sobre', 'field_5fa60a5775637');
INSERT INTO `ent_postmeta` VALUES (1038, 73, 'topicos__quemSomos_icone__missao', '31');
INSERT INTO `ent_postmeta` VALUES (1039, 73, '_topicos__quemSomos_icone__missao', 'field_5fa60a7675639');
INSERT INTO `ent_postmeta` VALUES (1040, 73, 'topicos__quemSomos_titulo__missao', 'Missão');
INSERT INTO `ent_postmeta` VALUES (1041, 73, '_topicos__quemSomos_titulo__missao', 'field_5fa60a8c7563a');
INSERT INTO `ent_postmeta` VALUES (1042, 73, 'topicos__quemSomos_texto__missao', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (1043, 73, '_topicos__quemSomos_texto__missao', 'field_5fa60a9f7563b');
INSERT INTO `ent_postmeta` VALUES (1044, 73, 'topicos__quemSomos_imagem__missao', '40');
INSERT INTO `ent_postmeta` VALUES (1045, 73, '_topicos__quemSomos_imagem__missao', 'field_5fa60aaa7563c');
INSERT INTO `ent_postmeta` VALUES (1046, 73, 'topicos__quemSomos_icone__estrutura', '32');
INSERT INTO `ent_postmeta` VALUES (1047, 73, '_topicos__quemSomos_icone__estrutura', 'field_5fa60ae17563e');
INSERT INTO `ent_postmeta` VALUES (1048, 73, 'topicos__quemSomos_titulo__estrutura', 'Estrutura');
INSERT INTO `ent_postmeta` VALUES (1049, 73, '_topicos__quemSomos_titulo__estrutura', 'field_5fa60af37563f');
INSERT INTO `ent_postmeta` VALUES (1050, 73, 'topicos__quemSomos_texto__estrutura', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (1051, 73, '_topicos__quemSomos_texto__estrutura', 'field_5fa60b29497ae');
INSERT INTO `ent_postmeta` VALUES (1052, 73, 'topicos__quemSomos', '');
INSERT INTO `ent_postmeta` VALUES (1053, 73, '_topicos__quemSomos', 'field_5fa609df75632');
INSERT INTO `ent_postmeta` VALUES (1054, 74, '_wp_attached_file', '2020/11/missao-copy.jpg');
INSERT INTO `ent_postmeta` VALUES (1055, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:578;s:6:\"height\";i:476;s:4:\"file\";s:23:\"2020/11/missao-copy.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"missao-copy-300x247.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:247;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"missao-copy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"mobile\";a:4:{s:4:\"file\";s:23:\"missao-copy-500x412.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:412;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (1056, 75, 'topicos__quemSomos_icone__sobre', '30');
INSERT INTO `ent_postmeta` VALUES (1057, 75, '_topicos__quemSomos_icone__sobre', 'field_5fa60a1275634');
INSERT INTO `ent_postmeta` VALUES (1058, 75, 'topicos__quemSomos_titulo__sobre', 'Sobre');
INSERT INTO `ent_postmeta` VALUES (1059, 75, '_topicos__quemSomos_titulo__sobre', 'field_5fa60a2d75635');
INSERT INTO `ent_postmeta` VALUES (1060, 75, 'topicos__quemSomos_texto__sobre', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (1061, 75, '_topicos__quemSomos_texto__sobre', 'field_5fa60a4075636');
INSERT INTO `ent_postmeta` VALUES (1062, 75, 'topicos__quemSomos_imagem__sobre', '41');
INSERT INTO `ent_postmeta` VALUES (1063, 75, '_topicos__quemSomos_imagem__sobre', 'field_5fa60a5775637');
INSERT INTO `ent_postmeta` VALUES (1064, 75, 'topicos__quemSomos_icone__missao', '31');
INSERT INTO `ent_postmeta` VALUES (1065, 75, '_topicos__quemSomos_icone__missao', 'field_5fa60a7675639');
INSERT INTO `ent_postmeta` VALUES (1066, 75, 'topicos__quemSomos_titulo__missao', 'Missão');
INSERT INTO `ent_postmeta` VALUES (1067, 75, '_topicos__quemSomos_titulo__missao', 'field_5fa60a8c7563a');
INSERT INTO `ent_postmeta` VALUES (1068, 75, 'topicos__quemSomos_texto__missao', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (1069, 75, '_topicos__quemSomos_texto__missao', 'field_5fa60a9f7563b');
INSERT INTO `ent_postmeta` VALUES (1070, 75, 'topicos__quemSomos_imagem__missao', '74');
INSERT INTO `ent_postmeta` VALUES (1071, 75, '_topicos__quemSomos_imagem__missao', 'field_5fa60aaa7563c');
INSERT INTO `ent_postmeta` VALUES (1072, 75, 'topicos__quemSomos_icone__estrutura', '32');
INSERT INTO `ent_postmeta` VALUES (1073, 75, '_topicos__quemSomos_icone__estrutura', 'field_5fa60ae17563e');
INSERT INTO `ent_postmeta` VALUES (1074, 75, 'topicos__quemSomos_titulo__estrutura', 'Estrutura');
INSERT INTO `ent_postmeta` VALUES (1075, 75, '_topicos__quemSomos_titulo__estrutura', 'field_5fa60af37563f');
INSERT INTO `ent_postmeta` VALUES (1076, 75, 'topicos__quemSomos_texto__estrutura', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (1077, 75, '_topicos__quemSomos_texto__estrutura', 'field_5fa60b29497ae');
INSERT INTO `ent_postmeta` VALUES (1078, 75, 'topicos__quemSomos', '');
INSERT INTO `ent_postmeta` VALUES (1079, 75, '_topicos__quemSomos', 'field_5fa609df75632');
INSERT INTO `ent_postmeta` VALUES (1080, 77, '_wp_attached_file', '2020/11/sobre-1.jpg');
INSERT INTO `ent_postmeta` VALUES (1081, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:578;s:6:\"height\";i:476;s:4:\"file\";s:19:\"2020/11/sobre-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"sobre-1-300x247.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:247;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"sobre-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"mobile\";a:4:{s:4:\"file\";s:19:\"sobre-1-500x412.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:412;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (1082, 78, '_wp_attached_file', '2020/11/contato.svg');
INSERT INTO `ent_postmeta` VALUES (1083, 78, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:101;s:6:\"height\";i:96;s:4:\"file\";s:20:\"/2020/11/contato.svg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:11:\"contato.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"contato.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"contato.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"contato.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:11:\"contato.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:11:\"contato.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"fullhd\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:11:\"contato.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:7:\"desktop\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:11:\"contato.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"mobile\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:11:\"contato.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}');
INSERT INTO `ent_postmeta` VALUES (1084, 79, '_wp_attached_file', '2020/11/pin.svg');
INSERT INTO `ent_postmeta` VALUES (1085, 79, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:101;s:6:\"height\";i:96;s:4:\"file\";s:16:\"/2020/11/pin.svg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:7:\"pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:7:\"pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:7:\"pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"fullhd\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:7:\"pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:7:\"desktop\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:7:\"pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"mobile\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:7:\"pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}');
INSERT INTO `ent_postmeta` VALUES (1086, 81, 'inline_featured_image', '0');
INSERT INTO `ent_postmeta` VALUES (1087, 81, '_edit_lock', '1605668248:1');
INSERT INTO `ent_postmeta` VALUES (1088, 81, '_wp_page_template', 'template-blog.php');
INSERT INTO `ent_postmeta` VALUES (1103, 91, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1104, 91, '_edit_lock', '1605569666:1');
INSERT INTO `ent_postmeta` VALUES (1105, 92, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1106, 92, '_edit_lock', '1606532391:1');
INSERT INTO `ent_postmeta` VALUES (1107, 93, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1108, 93, '_edit_lock', '1606875957:1');
INSERT INTO `ent_postmeta` VALUES (1109, 94, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1110, 94, '_edit_lock', '1606875110:1');
INSERT INTO `ent_postmeta` VALUES (1111, 91, '_wp_trash_meta_status', 'publish');
INSERT INTO `ent_postmeta` VALUES (1112, 91, '_wp_trash_meta_time', '1605569810');
INSERT INTO `ent_postmeta` VALUES (1113, 91, '_wp_desired_post_slug', 'ana-paula-melo');
INSERT INTO `ent_postmeta` VALUES (1114, 98, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1115, 98, '_edit_lock', '1606783014:1');
INSERT INTO `ent_postmeta` VALUES (1116, 104, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1117, 104, '_edit_lock', '1606354110:1');
INSERT INTO `ent_postmeta` VALUES (1118, 105, '_wp_attached_file', '2020/11/ferramentas.svg');
INSERT INTO `ent_postmeta` VALUES (1119, 105, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:55;s:6:\"height\";i:55;s:4:\"file\";s:24:\"/2020/11/ferramentas.svg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:15:\"ferramentas.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"ferramentas.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"ferramentas.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"ferramentas.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:15:\"ferramentas.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:15:\"ferramentas.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"fullhd\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:15:\"ferramentas.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:7:\"desktop\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:15:\"ferramentas.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"mobile\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:15:\"ferramentas.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}');
INSERT INTO `ent_postmeta` VALUES (1120, 106, '_wp_attached_file', '2020/11/everton.png');
INSERT INTO `ent_postmeta` VALUES (1121, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:169;s:6:\"height\";i:170;s:4:\"file\";s:19:\"2020/11/everton.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"everton-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (1122, 104, 'nome__profissionais', 'ana paula melo');
INSERT INTO `ent_postmeta` VALUES (1123, 104, '_nome__profissionais', 'field_5fb31292d122c');
INSERT INTO `ent_postmeta` VALUES (1124, 104, 'icone__profissionais', '105');
INSERT INTO `ent_postmeta` VALUES (1125, 104, '_icone__profissionais', 'field_5fb313b7d122f');
INSERT INTO `ent_postmeta` VALUES (1126, 104, 'foto__profissionais', '106');
INSERT INTO `ent_postmeta` VALUES (1127, 104, '_foto__profissionais', 'field_5fb31398d122e');
INSERT INTO `ent_postmeta` VALUES (1128, 104, 'texto__profissionais', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat.');
INSERT INTO `ent_postmeta` VALUES (1129, 104, '_texto__profissionais', 'field_5fb313dad1230');
INSERT INTO `ent_postmeta` VALUES (1130, 107, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1131, 107, '_edit_lock', '1606354393:1');
INSERT INTO `ent_postmeta` VALUES (1132, 107, 'nome__profissionais', 'Marília moraes');
INSERT INTO `ent_postmeta` VALUES (1133, 107, '_nome__profissionais', 'field_5fb31292d122c');
INSERT INTO `ent_postmeta` VALUES (1134, 107, 'icone__profissionais', '105');
INSERT INTO `ent_postmeta` VALUES (1135, 107, '_icone__profissionais', 'field_5fb313b7d122f');
INSERT INTO `ent_postmeta` VALUES (1136, 107, 'foto__profissionais', '106');
INSERT INTO `ent_postmeta` VALUES (1137, 107, '_foto__profissionais', 'field_5fb31398d122e');
INSERT INTO `ent_postmeta` VALUES (1138, 107, 'texto__profissionais', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat.');
INSERT INTO `ent_postmeta` VALUES (1139, 107, '_texto__profissionais', 'field_5fb313dad1230');
INSERT INTO `ent_postmeta` VALUES (1140, 108, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1141, 108, 'nome__profissionais', 'everton SOTO');
INSERT INTO `ent_postmeta` VALUES (1142, 108, '_nome__profissionais', 'field_5fb31292d122c');
INSERT INTO `ent_postmeta` VALUES (1143, 108, 'icone__profissionais', '105');
INSERT INTO `ent_postmeta` VALUES (1144, 108, '_icone__profissionais', 'field_5fb313b7d122f');
INSERT INTO `ent_postmeta` VALUES (1145, 108, 'foto__profissionais', '106');
INSERT INTO `ent_postmeta` VALUES (1146, 108, '_foto__profissionais', 'field_5fb31398d122e');
INSERT INTO `ent_postmeta` VALUES (1147, 108, 'texto__profissionais', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat.');
INSERT INTO `ent_postmeta` VALUES (1148, 108, '_texto__profissionais', 'field_5fb313dad1230');
INSERT INTO `ent_postmeta` VALUES (1149, 108, '_edit_lock', '1606354136:1');
INSERT INTO `ent_postmeta` VALUES (1150, 109, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1151, 109, 'nome__profissionais', 'Jimmy Smith');
INSERT INTO `ent_postmeta` VALUES (1152, 109, '_nome__profissionais', 'field_5fb31292d122c');
INSERT INTO `ent_postmeta` VALUES (1153, 109, 'icone__profissionais', '105');
INSERT INTO `ent_postmeta` VALUES (1154, 109, '_icone__profissionais', 'field_5fb313b7d122f');
INSERT INTO `ent_postmeta` VALUES (1155, 109, 'foto__profissionais', '106');
INSERT INTO `ent_postmeta` VALUES (1156, 109, '_foto__profissionais', 'field_5fb31398d122e');
INSERT INTO `ent_postmeta` VALUES (1157, 109, 'texto__profissionais', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat.');
INSERT INTO `ent_postmeta` VALUES (1158, 109, '_texto__profissionais', 'field_5fb313dad1230');
INSERT INTO `ent_postmeta` VALUES (1159, 109, '_edit_lock', '1606354233:1');
INSERT INTO `ent_postmeta` VALUES (1160, 110, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1161, 110, '_edit_lock', '1606354261:1');
INSERT INTO `ent_postmeta` VALUES (1162, 110, 'nome__profissionais', 'marielle brito');
INSERT INTO `ent_postmeta` VALUES (1163, 110, '_nome__profissionais', 'field_5fb31292d122c');
INSERT INTO `ent_postmeta` VALUES (1164, 110, 'icone__profissionais', '105');
INSERT INTO `ent_postmeta` VALUES (1165, 110, '_icone__profissionais', 'field_5fb313b7d122f');
INSERT INTO `ent_postmeta` VALUES (1166, 110, 'foto__profissionais', '106');
INSERT INTO `ent_postmeta` VALUES (1167, 110, '_foto__profissionais', 'field_5fb31398d122e');
INSERT INTO `ent_postmeta` VALUES (1168, 110, 'texto__profissionais', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat.');
INSERT INTO `ent_postmeta` VALUES (1169, 110, '_texto__profissionais', 'field_5fb313dad1230');
INSERT INTO `ent_postmeta` VALUES (1170, 111, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1171, 111, 'nome__profissionais', 'fernanda santos');
INSERT INTO `ent_postmeta` VALUES (1172, 111, '_nome__profissionais', 'field_5fb31292d122c');
INSERT INTO `ent_postmeta` VALUES (1173, 111, 'icone__profissionais', '105');
INSERT INTO `ent_postmeta` VALUES (1174, 111, '_icone__profissionais', 'field_5fb313b7d122f');
INSERT INTO `ent_postmeta` VALUES (1175, 111, 'foto__profissionais', '106');
INSERT INTO `ent_postmeta` VALUES (1176, 111, '_foto__profissionais', 'field_5fb31398d122e');
INSERT INTO `ent_postmeta` VALUES (1177, 111, 'texto__profissionais', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat.');
INSERT INTO `ent_postmeta` VALUES (1178, 111, '_texto__profissionais', 'field_5fb313dad1230');
INSERT INTO `ent_postmeta` VALUES (1179, 111, '_edit_lock', '1606354212:1');
INSERT INTO `ent_postmeta` VALUES (1180, 113, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1181, 113, '_edit_lock', '1606875690:1');
INSERT INTO `ent_postmeta` VALUES (1182, 94, 'nome__evento', 'Cuide do coração');
INSERT INTO `ent_postmeta` VALUES (1183, 94, '_nome__evento', 'field_5fb3163957ac1');
INSERT INTO `ent_postmeta` VALUES (1184, 94, 'data__evento', '2020-11-28 20:02:00');
INSERT INTO `ent_postmeta` VALUES (1185, 94, '_data__evento', 'field_5fb3169a57ac2');
INSERT INTO `ent_postmeta` VALUES (1186, 94, 'local__evento', 'LOCAL: CURSO ONLINE');
INSERT INTO `ent_postmeta` VALUES (1187, 94, '_local__evento', 'field_5fb317a957ac3');
INSERT INTO `ent_postmeta` VALUES (1188, 94, 'texto__evento', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies.');
INSERT INTO `ent_postmeta` VALUES (1189, 94, '_texto__evento', 'field_5fb317bb57ac4');
INSERT INTO `ent_postmeta` VALUES (1190, 94, 'imagem__evento', '128');
INSERT INTO `ent_postmeta` VALUES (1191, 94, '_imagem__evento', 'field_5fb317cf57ac5');
INSERT INTO `ent_postmeta` VALUES (1192, 93, 'nome__evento', 'mãos a obra');
INSERT INTO `ent_postmeta` VALUES (1193, 93, '_nome__evento', 'field_5fb3163957ac1');
INSERT INTO `ent_postmeta` VALUES (1194, 93, 'data__evento', '2020-11-17 21:14:08');
INSERT INTO `ent_postmeta` VALUES (1195, 93, '_data__evento', 'field_5fb3169a57ac2');
INSERT INTO `ent_postmeta` VALUES (1196, 93, 'local__evento', 'R. Guaraiuva, 1586 - Cidade Monções São Paulo - SP - 04569-003');
INSERT INTO `ent_postmeta` VALUES (1197, 93, '_local__evento', 'field_5fb317a957ac3');
INSERT INTO `ent_postmeta` VALUES (1198, 93, 'texto__evento', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies.');
INSERT INTO `ent_postmeta` VALUES (1199, 93, '_texto__evento', 'field_5fb317bb57ac4');
INSERT INTO `ent_postmeta` VALUES (1200, 93, 'imagem__evento', '129');
INSERT INTO `ent_postmeta` VALUES (1201, 93, '_imagem__evento', 'field_5fb317cf57ac5');
INSERT INTO `ent_postmeta` VALUES (1202, 92, 'nome__evento', 'o despertar da nova era da saúde');
INSERT INTO `ent_postmeta` VALUES (1203, 92, '_nome__evento', 'field_5fb3163957ac1');
INSERT INTO `ent_postmeta` VALUES (1204, 92, 'data__evento', '2020-11-17 21:14:19');
INSERT INTO `ent_postmeta` VALUES (1205, 92, '_data__evento', 'field_5fb3169a57ac2');
INSERT INTO `ent_postmeta` VALUES (1206, 92, 'local__evento', 'LOCAL: CURSO ONLINE');
INSERT INTO `ent_postmeta` VALUES (1207, 92, '_local__evento', 'field_5fb317a957ac3');
INSERT INTO `ent_postmeta` VALUES (1208, 92, 'texto__evento', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies.');
INSERT INTO `ent_postmeta` VALUES (1209, 92, '_texto__evento', 'field_5fb317bb57ac4');
INSERT INTO `ent_postmeta` VALUES (1210, 92, 'imagem__evento', '130');
INSERT INTO `ent_postmeta` VALUES (1211, 92, '_imagem__evento', 'field_5fb317cf57ac5');
INSERT INTO `ent_postmeta` VALUES (1212, 121, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1213, 121, '_edit_lock', '1606268633:1');
INSERT INTO `ent_postmeta` VALUES (1214, 123, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1215, 123, '_edit_lock', '1606782918:1');
INSERT INTO `ent_postmeta` VALUES (1216, 121, 'texto__especialidade', '<div>Esta especialidade irá direcionar a nutrição adequada de tentantes, gestantes, puérperas e Serzinhos de Luz.  Garantir a demanda nutricional de tentantes, dos Serzinhos de Luz na gestação, das mamães durante amamentação  e uma introdução alimentar adequada podem ressignificar a relação de sua família com os alimentos para sempre.</div>\r\n<div></div>');
INSERT INTO `ent_postmeta` VALUES (1217, 121, '_texto__especialidade', 'field_5fb31fe2cff28');
INSERT INTO `ent_postmeta` VALUES (1218, 125, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1219, 125, '_edit_lock', '1606783050:1');
INSERT INTO `ent_postmeta` VALUES (1220, 125, 'texto__especialidade', '<div>Voltada para o restabelecimento e promoção de saúde em crianças, adolescentes e pré-adolescentes, considerando-se sua individualidade e o seu contexto familiar. Aqui os príncipes e princesas são acolhidos com amor e presença por profissionais atualizados.</div>\r\n<div>Em salas de parto, asseguram um tratamento humanizado ao Serzinho de Luz recém chegado, além de estarem prontos para intervenções, caso necessário.</div>');
INSERT INTO `ent_postmeta` VALUES (1221, 125, '_texto__especialidade', 'field_5fb31fe2cff28');
INSERT INTO `ent_postmeta` VALUES (1222, 126, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1223, 126, '_edit_lock', '1606268347:1');
INSERT INTO `ent_postmeta` VALUES (1224, 126, 'texto__especialidade', '<div>Trata-se da área da medicina que,  além de auxiliar no restabelecimento de saúde,  a promove em todo seu potencial.</div>\r\n<div>Com uma abordagem individualizada e alinhada aos seus objetivos pessoais, os ajustes e suplementações nutricionais devidamente prescritos podem contribuir diretamente para uma vida mais plena e feliz consigo mesmo e com sua família.</div>\r\n<div></div>');
INSERT INTO `ent_postmeta` VALUES (1225, 126, '_texto__especialidade', 'field_5fb31fe2cff28');
INSERT INTO `ent_postmeta` VALUES (1226, 127, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1227, 127, 'texto__especialidade', '<div>Há uma beleza infinita em cuidar da mulher. Acolher todas as suas fases, e ajudar no seu despertar.</div>\r\n<div>Cuidar do aparelho reprodutor feminino é simbolizar a vida que nasce através dele.</div>\r\n<div>Aqui fazemos isso com amor, acolhimento e imenso respeito, considerando a individualidade de todas as irmãs que confiam essa linda missão a nós.</div>');
INSERT INTO `ent_postmeta` VALUES (1228, 127, '_texto__especialidade', 'field_5fb31fe2cff28');
INSERT INTO `ent_postmeta` VALUES (1229, 127, '_edit_lock', '1606268660:1');
INSERT INTO `ent_postmeta` VALUES (1230, 128, '_wp_attached_file', '2020/11/EVENTOS01.jpg');
INSERT INTO `ent_postmeta` VALUES (1231, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:672;s:6:\"height\";i:450;s:4:\"file\";s:21:\"2020/11/EVENTOS01.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"EVENTOS01-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"EVENTOS01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"mobile\";a:4:{s:4:\"file\";s:21:\"EVENTOS01-500x335.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:335;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (1232, 129, '_wp_attached_file', '2020/11/EVENTOS02.jpg');
INSERT INTO `ent_postmeta` VALUES (1233, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:672;s:6:\"height\";i:450;s:4:\"file\";s:21:\"2020/11/EVENTOS02.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"EVENTOS02-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"EVENTOS02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"mobile\";a:4:{s:4:\"file\";s:21:\"EVENTOS02-500x335.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:335;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (1234, 130, '_wp_attached_file', '2020/11/EVENTOS03.jpg');
INSERT INTO `ent_postmeta` VALUES (1235, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:672;s:6:\"height\";i:450;s:4:\"file\";s:21:\"2020/11/EVENTOS03.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"EVENTOS03-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"EVENTOS03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"mobile\";a:4:{s:4:\"file\";s:21:\"EVENTOS03-500x335.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:335;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (1236, 131, 'inline_featured_image', '0');
INSERT INTO `ent_postmeta` VALUES (1237, 131, '_edit_lock', '1605666927:1');
INSERT INTO `ent_postmeta` VALUES (1238, 134, '_wp_attached_file', '2020/11/cabeca.jpg');
INSERT INTO `ent_postmeta` VALUES (1239, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1367;s:6:\"height\";i:320;s:4:\"file\";s:18:\"2020/11/cabeca.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"cabeca-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"cabeca-1024x240.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"cabeca-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"cabeca-768x180.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"mobile\";a:4:{s:4:\"file\";s:18:\"cabeca-500x117.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:117;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (1240, 135, '_wp_attached_file', '2020/11/fumaca.jpg');
INSERT INTO `ent_postmeta` VALUES (1241, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1367;s:6:\"height\";i:320;s:4:\"file\";s:18:\"2020/11/fumaca.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"fumaca-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"fumaca-1024x240.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"fumaca-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"fumaca-768x180.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"mobile\";a:4:{s:4:\"file\";s:18:\"fumaca-500x117.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:117;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (1242, 136, '_wp_attached_file', '2020/11/meditacao.jpg');
INSERT INTO `ent_postmeta` VALUES (1243, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1367;s:6:\"height\";i:320;s:4:\"file\";s:21:\"2020/11/meditacao.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"meditacao-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"meditacao-1024x240.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"meditacao-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"meditacao-768x180.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"mobile\";a:4:{s:4:\"file\";s:21:\"meditacao-500x117.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:117;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (1244, 137, '_wp_attached_file', '2020/11/succao.jpg');
INSERT INTO `ent_postmeta` VALUES (1245, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1367;s:6:\"height\";i:320;s:4:\"file\";s:18:\"2020/11/succao.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"succao-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"succao-1024x240.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"succao-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"succao-768x180.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"mobile\";a:4:{s:4:\"file\";s:18:\"succao-500x117.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:117;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (1246, 138, '_wp_attached_file', '2020/11/fumaca_mobile.jpg');
INSERT INTO `ent_postmeta` VALUES (1247, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:384;s:4:\"file\";s:25:\"2020/11/fumaca_mobile.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"fumaca_mobile-293x300.jpg\";s:5:\"width\";i:293;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"fumaca_mobile-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (1248, 139, '_wp_attached_file', '2020/11/pessoa_deitada_mobile.jpg');
INSERT INTO `ent_postmeta` VALUES (1249, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:384;s:4:\"file\";s:33:\"2020/11/pessoa_deitada_mobile.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"pessoa_deitada_mobile-293x300.jpg\";s:5:\"width\";i:293;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"pessoa_deitada_mobile-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (1250, 140, '_wp_attached_file', '2020/11/succao_mobile.jpg');
INSERT INTO `ent_postmeta` VALUES (1251, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:384;s:4:\"file\";s:25:\"2020/11/succao_mobile.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"succao_mobile-293x300.jpg\";s:5:\"width\";i:293;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"succao_mobile-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (1252, 141, '_wp_attached_file', '2020/11/testa_mobile.jpg');
INSERT INTO `ent_postmeta` VALUES (1253, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:384;s:4:\"file\";s:24:\"2020/11/testa_mobile.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"testa_mobile-293x300.jpg\";s:5:\"width\";i:293;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"testa_mobile-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (1254, 125, 'imagem-home__especialidade', '141');
INSERT INTO `ent_postmeta` VALUES (1255, 125, '_imagem-home__especialidade', 'field_5fb47e1048d0f');
INSERT INTO `ent_postmeta` VALUES (1256, 125, 'imagem__especialidade', '134');
INSERT INTO `ent_postmeta` VALUES (1257, 125, '_imagem__especialidade', 'field_5fb47e84d36a6');
INSERT INTO `ent_postmeta` VALUES (1258, 126, 'imagem-home__especialidade', '141');
INSERT INTO `ent_postmeta` VALUES (1259, 126, '_imagem-home__especialidade', 'field_5fb47e1048d0f');
INSERT INTO `ent_postmeta` VALUES (1260, 126, 'imagem__especialidade', '134');
INSERT INTO `ent_postmeta` VALUES (1261, 126, '_imagem__especialidade', 'field_5fb47e84d36a6');
INSERT INTO `ent_postmeta` VALUES (1262, 121, 'imagem-home__especialidade', '141');
INSERT INTO `ent_postmeta` VALUES (1263, 121, '_imagem-home__especialidade', 'field_5fb47e1048d0f');
INSERT INTO `ent_postmeta` VALUES (1264, 121, 'imagem__especialidade', '134');
INSERT INTO `ent_postmeta` VALUES (1265, 121, '_imagem__especialidade', 'field_5fb47e84d36a6');
INSERT INTO `ent_postmeta` VALUES (1266, 127, 'imagem-home__especialidade', '141');
INSERT INTO `ent_postmeta` VALUES (1267, 127, '_imagem-home__especialidade', 'field_5fb47e1048d0f');
INSERT INTO `ent_postmeta` VALUES (1268, 127, 'imagem__especialidade', '134');
INSERT INTO `ent_postmeta` VALUES (1269, 127, '_imagem__especialidade', 'field_5fb47e84d36a6');
INSERT INTO `ent_postmeta` VALUES (1270, 125, 'texto-home__especialidade', 'Em salas de parto, asseguram um tratamento humanizado ao Serzinho de Luz recém chegado, além de estarem prontos para intervenções, caso necessário.');
INSERT INTO `ent_postmeta` VALUES (1271, 125, '_texto-home__especialidade', 'field_5fb48644f3810');
INSERT INTO `ent_postmeta` VALUES (1272, 126, 'texto-home__especialidade', '<div>Trata-se da área da medicina que,  além de auxiliar no restabelecimento de saúde,  a promove em todo seu potencial.</div>\r\n<div></div>');
INSERT INTO `ent_postmeta` VALUES (1273, 126, '_texto-home__especialidade', 'field_5fb48644f3810');
INSERT INTO `ent_postmeta` VALUES (1274, 121, 'texto-home__especialidade', 'Esta especialidade irá direcionar a nutrição adequada de tentantes, gestantes, puérperas e Serzinhos de Luz.');
INSERT INTO `ent_postmeta` VALUES (1275, 121, '_texto-home__especialidade', 'field_5fb48644f3810');
INSERT INTO `ent_postmeta` VALUES (1276, 127, 'texto-home__especialidade', '<div>Há uma beleza infinita em cuidar da mulher. Acolher todas as suas fases, e ajudar no seu despertar.</div>\r\n<div>Cuidar do aparelho reprodutor feminino é simbolizar a vida que nasce através dele.</div>');
INSERT INTO `ent_postmeta` VALUES (1277, 127, '_texto-home__especialidade', 'field_5fb48644f3810');
INSERT INTO `ent_postmeta` VALUES (1278, 1, '_wp_trash_meta_status', 'publish');
INSERT INTO `ent_postmeta` VALUES (1279, 1, '_wp_trash_meta_time', '1605666939');
INSERT INTO `ent_postmeta` VALUES (1280, 1, '_wp_desired_post_slug', 'ola-mundo');
INSERT INTO `ent_postmeta` VALUES (1281, 1, 'inline_featured_image', '0');
INSERT INTO `ent_postmeta` VALUES (1282, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}');
INSERT INTO `ent_postmeta` VALUES (1283, 144, '_wp_attached_file', '2020/11/foto01.jpg');
INSERT INTO `ent_postmeta` VALUES (1284, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:682;s:6:\"height\";i:483;s:4:\"file\";s:18:\"2020/11/foto01.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"foto01-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"foto01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"mobile\";a:4:{s:4:\"file\";s:18:\"foto01-500x354.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:354;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (1285, 145, '_wp_attached_file', '2020/11/foto02.jpg');
INSERT INTO `ent_postmeta` VALUES (1286, 145, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:341;s:6:\"height\";i:241;s:4:\"file\";s:18:\"2020/11/foto02.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"foto02-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"foto02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (1287, 146, '_wp_attached_file', '2020/11/foto03.jpg');
INSERT INTO `ent_postmeta` VALUES (1288, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:341;s:6:\"height\";i:241;s:4:\"file\";s:18:\"2020/11/foto03.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"foto03-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"foto03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (1289, 147, '_wp_attached_file', '2020/11/foto04.jpg');
INSERT INTO `ent_postmeta` VALUES (1290, 147, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:341;s:6:\"height\";i:241;s:4:\"file\";s:18:\"2020/11/foto04.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"foto04-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"foto04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (1291, 148, '_wp_attached_file', '2020/11/foto05.jpg');
INSERT INTO `ent_postmeta` VALUES (1292, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:341;s:6:\"height\";i:241;s:4:\"file\";s:18:\"2020/11/foto05.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"foto05-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"foto05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `ent_postmeta` VALUES (1295, 131, '_wp_old_date', '2020-11-17');
INSERT INTO `ent_postmeta` VALUES (1296, 131, '_thumbnail_id', '144');
INSERT INTO `ent_postmeta` VALUES (1297, 150, 'inline_featured_image', '0');
INSERT INTO `ent_postmeta` VALUES (1298, 150, '_edit_lock', '1605666967:1');
INSERT INTO `ent_postmeta` VALUES (1301, 150, '_thumbnail_id', '147');
INSERT INTO `ent_postmeta` VALUES (1302, 152, 'inline_featured_image', '0');
INSERT INTO `ent_postmeta` VALUES (1303, 152, '_edit_lock', '1605666993:1');
INSERT INTO `ent_postmeta` VALUES (1306, 152, '_thumbnail_id', '147');
INSERT INTO `ent_postmeta` VALUES (1307, 154, 'inline_featured_image', '0');
INSERT INTO `ent_postmeta` VALUES (1308, 154, '_edit_lock', '1605667028:1');
INSERT INTO `ent_postmeta` VALUES (1311, 154, '_thumbnail_id', '148');
INSERT INTO `ent_postmeta` VALUES (1312, 156, 'inline_featured_image', '0');
INSERT INTO `ent_postmeta` VALUES (1313, 156, '_edit_lock', '1605667071:1');
INSERT INTO `ent_postmeta` VALUES (1316, 156, '_thumbnail_id', '146');
INSERT INTO `ent_postmeta` VALUES (1317, 81, '_wp_trash_meta_status', 'publish');
INSERT INTO `ent_postmeta` VALUES (1318, 81, '_wp_trash_meta_time', '1605668395');
INSERT INTO `ent_postmeta` VALUES (1319, 81, '_wp_desired_post_slug', 'blog');
INSERT INTO `ent_postmeta` VALUES (1320, 28, '_wp_trash_meta_status', 'publish');
INSERT INTO `ent_postmeta` VALUES (1321, 28, '_wp_trash_meta_time', '1605830457');
INSERT INTO `ent_postmeta` VALUES (1322, 28, '_wp_desired_post_slug', 'blog');
INSERT INTO `ent_postmeta` VALUES (1323, 24, '_wp_trash_meta_status', 'publish');
INSERT INTO `ent_postmeta` VALUES (1324, 24, '_wp_trash_meta_time', '1605830463');
INSERT INTO `ent_postmeta` VALUES (1325, 24, '_wp_desired_post_slug', 'especialidades');
INSERT INTO `ent_postmeta` VALUES (1326, 22, '_wp_trash_meta_status', 'publish');
INSERT INTO `ent_postmeta` VALUES (1327, 22, '_wp_trash_meta_time', '1605830466');
INSERT INTO `ent_postmeta` VALUES (1328, 22, '_wp_desired_post_slug', 'profissionais');
INSERT INTO `ent_postmeta` VALUES (1329, 159, '_menu_item_type', 'post_type_archive');
INSERT INTO `ent_postmeta` VALUES (1330, 159, '_menu_item_menu_item_parent', '0');
INSERT INTO `ent_postmeta` VALUES (1331, 159, '_menu_item_object_id', '-47');
INSERT INTO `ent_postmeta` VALUES (1332, 159, '_menu_item_object', 'especialidades');
INSERT INTO `ent_postmeta` VALUES (1333, 159, '_menu_item_target', '');
INSERT INTO `ent_postmeta` VALUES (1334, 159, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `ent_postmeta` VALUES (1335, 159, '_menu_item_xfn', '');
INSERT INTO `ent_postmeta` VALUES (1336, 159, '_menu_item_url', '');
INSERT INTO `ent_postmeta` VALUES (1338, 160, '_menu_item_type', 'post_type_archive');
INSERT INTO `ent_postmeta` VALUES (1339, 160, '_menu_item_menu_item_parent', '0');
INSERT INTO `ent_postmeta` VALUES (1340, 160, '_menu_item_object_id', '-27');
INSERT INTO `ent_postmeta` VALUES (1341, 160, '_menu_item_object', 'profissionais');
INSERT INTO `ent_postmeta` VALUES (1342, 160, '_menu_item_target', '');
INSERT INTO `ent_postmeta` VALUES (1343, 160, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `ent_postmeta` VALUES (1344, 160, '_menu_item_xfn', '');
INSERT INTO `ent_postmeta` VALUES (1345, 160, '_menu_item_url', '');
INSERT INTO `ent_postmeta` VALUES (1347, 161, 'inline_featured_image', '0');
INSERT INTO `ent_postmeta` VALUES (1348, 161, '_edit_lock', '1605830639:1');
INSERT INTO `ent_postmeta` VALUES (1349, 163, '_menu_item_type', 'post_type');
INSERT INTO `ent_postmeta` VALUES (1350, 163, '_menu_item_menu_item_parent', '0');
INSERT INTO `ent_postmeta` VALUES (1351, 163, '_menu_item_object_id', '161');
INSERT INTO `ent_postmeta` VALUES (1352, 163, '_menu_item_object', 'page');
INSERT INTO `ent_postmeta` VALUES (1353, 163, '_menu_item_target', '');
INSERT INTO `ent_postmeta` VALUES (1354, 163, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `ent_postmeta` VALUES (1355, 163, '_menu_item_xfn', '');
INSERT INTO `ent_postmeta` VALUES (1356, 163, '_menu_item_url', '');
INSERT INTO `ent_postmeta` VALUES (1359, 165, 'banners', '4');
INSERT INTO `ent_postmeta` VALUES (1360, 165, '_banners', 'field_5f42a8ffdd04c');
INSERT INTO `ent_postmeta` VALUES (1361, 165, 'titulo_bv', 'Bem vindo ao Espaço Entre Irmãos');
INSERT INTO `ent_postmeta` VALUES (1362, 165, '_titulo_bv', 'field_5f9f36954cae3');
INSERT INTO `ent_postmeta` VALUES (1363, 165, 'texto_bv', 'Trabalhamos pela <strong>Cura da Cura no Mundo</strong>. Atendemos com amor e acolhimento, integrados à conhecimentos clínicos e práticos atualizados, consciência e espiritualidade.\r\n\r\n&nbsp;\r\n\r\nHonestidade, transparência, presença, sustentabilidade e igualdade à serviço do amor e da individualidade de cada paciente/ irmão.\r\n\r\n&nbsp;\r\n\r\n<strong>Criaremos uma nova e amorosa forma de cuidar</strong>, que será compartilhada com o mundo Entre Irmãos.');
INSERT INTO `ent_postmeta` VALUES (1364, 165, '_texto_bv', 'field_5f9f38904cae4');
INSERT INTO `ent_postmeta` VALUES (1365, 165, 'logo_bv', '52');
INSERT INTO `ent_postmeta` VALUES (1366, 165, '_logo_bv', 'field_5f9f38ba4cae5');
INSERT INTO `ent_postmeta` VALUES (1367, 165, 'cards_de_conteudos', '3');
INSERT INTO `ent_postmeta` VALUES (1368, 165, '_cards_de_conteudos', 'field_5f9f38fb4cae6');
INSERT INTO `ent_postmeta` VALUES (1369, 165, 'banners_0_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (1370, 165, '_banners_0_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (1371, 165, 'banners_0_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (1372, 165, '_banners_0_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (1373, 165, 'banners_0_imagens', '');
INSERT INTO `ent_postmeta` VALUES (1374, 165, '_banners_0_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (1375, 165, 'banners_0_conteudoBanner_titulo_banner', 'Trabalhamos pela cura da cura no Mundo.');
INSERT INTO `ent_postmeta` VALUES (1376, 165, '_banners_0_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (1377, 165, 'banners_0_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (1378, 165, '_banners_0_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (1379, 165, 'banners_0_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (1380, 165, '_banners_0_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (1381, 165, 'banners_0_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (1382, 165, '_banners_0_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (1383, 165, 'banners_0_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (1384, 165, '_banners_0_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (1385, 165, 'banners_1_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (1386, 165, '_banners_1_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (1387, 165, 'banners_1_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (1388, 165, '_banners_1_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (1389, 165, 'banners_1_imagens', '');
INSERT INTO `ent_postmeta` VALUES (1390, 165, '_banners_1_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (1391, 165, 'banners_1_conteudoBanner_titulo_banner', 'Trabalhamos pela cura da cura no Mundo.');
INSERT INTO `ent_postmeta` VALUES (1392, 165, '_banners_1_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (1393, 165, 'banners_1_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (1394, 165, '_banners_1_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (1395, 165, 'banners_1_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (1396, 165, '_banners_1_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (1397, 165, 'banners_1_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (1398, 165, '_banners_1_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (1399, 165, 'banners_1_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (1400, 165, '_banners_1_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (1401, 165, 'banners_2_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (1402, 165, '_banners_2_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (1403, 165, 'banners_2_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (1404, 165, '_banners_2_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (1405, 165, 'banners_2_imagens', '');
INSERT INTO `ent_postmeta` VALUES (1406, 165, '_banners_2_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (1407, 165, 'banners_2_conteudoBanner_titulo_banner', 'Trabalhamos pela cura da cura no Mundo.');
INSERT INTO `ent_postmeta` VALUES (1408, 165, '_banners_2_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (1409, 165, 'banners_2_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (1410, 165, '_banners_2_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (1411, 165, 'banners_2_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (1412, 165, '_banners_2_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (1413, 165, 'banners_2_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (1414, 165, '_banners_2_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (1415, 165, 'banners_2_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (1416, 165, '_banners_2_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (1417, 165, 'banners_3_imagens_desktop', '12');
INSERT INTO `ent_postmeta` VALUES (1418, 165, '_banners_3_imagens_desktop', 'field_5f42a946dd04f');
INSERT INTO `ent_postmeta` VALUES (1419, 165, 'banners_3_imagens_mobile', '9');
INSERT INTO `ent_postmeta` VALUES (1420, 165, '_banners_3_imagens_mobile', 'field_5f42a946dd04fqqwe');
INSERT INTO `ent_postmeta` VALUES (1421, 165, 'banners_3_imagens', '');
INSERT INTO `ent_postmeta` VALUES (1422, 165, '_banners_3_imagens', 'field_5f42a915dd04d');
INSERT INTO `ent_postmeta` VALUES (1423, 165, 'banners_3_conteudoBanner_titulo_banner', 'Trabalhamos pela cura da cura no Mundo.');
INSERT INTO `ent_postmeta` VALUES (1424, 165, '_banners_3_conteudoBanner_titulo_banner', 'field_5f42a9addd05qwe5');
INSERT INTO `ent_postmeta` VALUES (1425, 165, 'banners_3_conteudoBanner_texto_banner', 'Existimos para Despertar a Cura <br> em todos os corações.');
INSERT INTO `ent_postmeta` VALUES (1426, 165, '_banners_3_conteudoBanner_texto_banner', 'field_5f4er2a9addd055');
INSERT INTO `ent_postmeta` VALUES (1427, 165, 'banners_3_conteudoBanner_texto_botao_banner', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (1428, 165, '_banners_3_conteudoBanner_texto_botao_banner', 'field_5f4er2a9adasdd055');
INSERT INTO `ent_postmeta` VALUES (1429, 165, 'banners_3_conteudoBanner_link_banner', '');
INSERT INTO `ent_postmeta` VALUES (1430, 165, '_banners_3_conteudoBanner_link_banner', 'field_5f42a9addd055');
INSERT INTO `ent_postmeta` VALUES (1431, 165, 'banners_3_conteudoBanner', '');
INSERT INTO `ent_postmeta` VALUES (1432, 165, '_banners_3_conteudoBanner', 'field_5f42a991dd053');
INSERT INTO `ent_postmeta` VALUES (1433, 165, 'cards_de_conteudos_0_imagem', '30');
INSERT INTO `ent_postmeta` VALUES (1434, 165, '_cards_de_conteudos_0_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (1435, 165, 'cards_de_conteudos_0_titulo_conteudo', 'SOBRE');
INSERT INTO `ent_postmeta` VALUES (1436, 165, '_cards_de_conteudos_0_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (1437, 165, 'cards_de_conteudos_0_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (1438, 165, '_cards_de_conteudos_0_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (1439, 165, 'cards_de_conteudos_0_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (1440, 165, '_cards_de_conteudos_0_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (1441, 165, 'cards_de_conteudos_0_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (1442, 165, '_cards_de_conteudos_0_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (1443, 165, 'cards_de_conteudos_1_imagem', '31');
INSERT INTO `ent_postmeta` VALUES (1444, 165, '_cards_de_conteudos_1_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (1445, 165, 'cards_de_conteudos_1_titulo_conteudo', 'MISSÃO');
INSERT INTO `ent_postmeta` VALUES (1446, 165, '_cards_de_conteudos_1_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (1447, 165, 'cards_de_conteudos_1_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (1448, 165, '_cards_de_conteudos_1_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (1449, 165, 'cards_de_conteudos_1_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (1450, 165, '_cards_de_conteudos_1_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (1451, 165, 'cards_de_conteudos_1_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (1452, 165, '_cards_de_conteudos_1_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (1453, 165, 'cards_de_conteudos_2_imagem', '32');
INSERT INTO `ent_postmeta` VALUES (1454, 165, '_cards_de_conteudos_2_imagem', 'field_5f9f39254cae7');
INSERT INTO `ent_postmeta` VALUES (1455, 165, 'cards_de_conteudos_2_titulo_conteudo', 'ESTRUTURA');
INSERT INTO `ent_postmeta` VALUES (1456, 165, '_cards_de_conteudos_2_titulo_conteudo', 'field_5f9f393b4cae8');
INSERT INTO `ent_postmeta` VALUES (1457, 165, 'cards_de_conteudos_2_texto_conteudo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel odio vel felis placerat pharetra ut vitae felis.');
INSERT INTO `ent_postmeta` VALUES (1458, 165, '_cards_de_conteudos_2_texto_conteudo', 'field_5f9f39584cae9');
INSERT INTO `ent_postmeta` VALUES (1459, 165, 'cards_de_conteudos_2_texto_botao_conteudo', 'SAIBA MAIS');
INSERT INTO `ent_postmeta` VALUES (1460, 165, '_cards_de_conteudos_2_texto_botao_conteudo', 'field_5f9f39774caea');
INSERT INTO `ent_postmeta` VALUES (1461, 165, 'cards_de_conteudos_2_link_conteudo', '');
INSERT INTO `ent_postmeta` VALUES (1462, 165, '_cards_de_conteudos_2_link_conteudo', 'field_5f9f39944caeb');
INSERT INTO `ent_postmeta` VALUES (1463, 104, 'link_instagram_profi', '@drabiancamello');
INSERT INTO `ent_postmeta` VALUES (1464, 104, '_link_instagram_profi', 'field_5fbc69300a240');
INSERT INTO `ent_postmeta` VALUES (1465, 168, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1466, 168, '_edit_lock', '1606268698:1');
INSERT INTO `ent_postmeta` VALUES (1467, 168, 'imagem-home__especialidade', '141');
INSERT INTO `ent_postmeta` VALUES (1468, 168, '_imagem-home__especialidade', 'field_5fb47e1048d0f');
INSERT INTO `ent_postmeta` VALUES (1469, 168, 'imagem__especialidade', '134');
INSERT INTO `ent_postmeta` VALUES (1470, 168, '_imagem__especialidade', 'field_5fb47e84d36a6');
INSERT INTO `ent_postmeta` VALUES (1471, 168, 'texto__especialidade', '<div>Amamentar para nós é um ato de amor. É a forma que a mãe natureza encontrou de conexão entre mamãe e Serzinho de Luz onde a nutrição pode ser observada em seu aspecto mais amplo. Muitas vezes esta jornada requer uma mão amiga, amorosa e competente. Estamos aqui para apoiar e te suportar nesta nobre decisão.</div>\r\n<div></div>');
INSERT INTO `ent_postmeta` VALUES (1472, 168, '_texto__especialidade', 'field_5fb31fe2cff28');
INSERT INTO `ent_postmeta` VALUES (1473, 168, 'texto-home__especialidade', '<div>Amamentar para nós é um ato de amor. É a forma que a mãe natureza encontrou de conexão entre mamãe e Serzinho de Luz onde a nutrição pode ser observada em seu aspecto mais amplo. Muitas vezes esta jornada requer uma mão amiga, amorosa e competente. Estamos aqui para apoiar e te suportar nesta nobre decisão.</div>\r\n<div></div>');
INSERT INTO `ent_postmeta` VALUES (1474, 168, '_texto-home__especialidade', 'field_5fb48644f3810');
INSERT INTO `ent_postmeta` VALUES (1475, 169, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1476, 169, '_edit_lock', '1606268717:1');
INSERT INTO `ent_postmeta` VALUES (1477, 169, 'imagem-home__especialidade', '141');
INSERT INTO `ent_postmeta` VALUES (1478, 169, '_imagem-home__especialidade', 'field_5fb47e1048d0f');
INSERT INTO `ent_postmeta` VALUES (1479, 169, 'imagem__especialidade', '134');
INSERT INTO `ent_postmeta` VALUES (1480, 169, '_imagem__especialidade', 'field_5fb47e84d36a6');
INSERT INTO `ent_postmeta` VALUES (1481, 169, 'texto__especialidade', 'Quando príncipes, princesas e adolescentes necessitam de avaliação e tratamento para doenças autoimunes, restabelecimento da saúde no tecido conjuntivo e sistema musculoesquelético, esta é a área da medicina a ser consultada.');
INSERT INTO `ent_postmeta` VALUES (1482, 169, '_texto__especialidade', 'field_5fb31fe2cff28');
INSERT INTO `ent_postmeta` VALUES (1483, 169, 'texto-home__especialidade', 'Quando príncipes, princesas e adolescentes necessitam de avaliação e tratamento para doenças autoimunes, restabelecimento da saúde no tecido conjuntivo e sistema musculoesquelético, esta é a área da medicina a ser consultada.');
INSERT INTO `ent_postmeta` VALUES (1484, 169, '_texto-home__especialidade', 'field_5fb48644f3810');
INSERT INTO `ent_postmeta` VALUES (1485, 170, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1486, 170, '_edit_lock', '1606871042:1');
INSERT INTO `ent_postmeta` VALUES (1487, 170, 'imagem-home__especialidade', '141');
INSERT INTO `ent_postmeta` VALUES (1488, 170, '_imagem-home__especialidade', 'field_5fb47e1048d0f');
INSERT INTO `ent_postmeta` VALUES (1489, 170, 'imagem__especialidade', '134');
INSERT INTO `ent_postmeta` VALUES (1490, 170, '_imagem__especialidade', 'field_5fb47e84d36a6');
INSERT INTO `ent_postmeta` VALUES (1491, 170, 'texto__especialidade', '<div>Se nossas queridas crianças necessitam de atenção e tratamento, com amor, para o restabelecimento de saúde associado a alergias ou disfunções no sistema imunológico, nós também estamos de braços e corações abertos para lhes acolher.</div>\r\n<div></div>');
INSERT INTO `ent_postmeta` VALUES (1492, 170, '_texto__especialidade', 'field_5fb31fe2cff28');
INSERT INTO `ent_postmeta` VALUES (1493, 170, 'texto-home__especialidade', '<div>Se nossas queridas crianças necessitam de atenção e tratamento, com amor, para o restabelecimento de saúde associado a alergias ou disfunções no sistema imunológico, nós também estamos de braços e corações abertos para lhes acolher.</div>\r\n<div></div>');
INSERT INTO `ent_postmeta` VALUES (1494, 170, '_texto-home__especialidade', 'field_5fb48644f3810');
INSERT INTO `ent_postmeta` VALUES (1495, 171, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1496, 171, '_edit_lock', '1606268756:1');
INSERT INTO `ent_postmeta` VALUES (1497, 171, 'imagem-home__especialidade', '141');
INSERT INTO `ent_postmeta` VALUES (1498, 171, '_imagem-home__especialidade', 'field_5fb47e1048d0f');
INSERT INTO `ent_postmeta` VALUES (1499, 171, 'imagem__especialidade', '134');
INSERT INTO `ent_postmeta` VALUES (1500, 171, '_imagem__especialidade', 'field_5fb47e84d36a6');
INSERT INTO `ent_postmeta` VALUES (1501, 171, 'texto__especialidade', 'Nossa percepção do mundo está diretamente relacionada aos nossos sentidos. Cuidar da saúde do ouvido, nariz, garganta e estruturas relacionadas é o que fazem os médicos desta especialidade. Tudo com muito amor, sorriso no rosto e acolhimento.');
INSERT INTO `ent_postmeta` VALUES (1502, 171, '_texto__especialidade', 'field_5fb31fe2cff28');
INSERT INTO `ent_postmeta` VALUES (1503, 171, 'texto-home__especialidade', 'Nossa percepção do mundo está diretamente relacionada aos nossos sentidos. Cuidar da saúde do ouvido, nariz, garganta e estruturas relacionadas é o que fazem os médicos desta especialidade. Tudo com muito amor, sorriso no rosto e acolhimento.');
INSERT INTO `ent_postmeta` VALUES (1504, 171, '_texto-home__especialidade', 'field_5fb48644f3810');
INSERT INTO `ent_postmeta` VALUES (1505, 172, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1506, 172, '_edit_lock', '1606268896:1');
INSERT INTO `ent_postmeta` VALUES (1507, 172, 'imagem-home__especialidade', '141');
INSERT INTO `ent_postmeta` VALUES (1508, 172, '_imagem-home__especialidade', 'field_5fb47e1048d0f');
INSERT INTO `ent_postmeta` VALUES (1509, 172, 'imagem__especialidade', '134');
INSERT INTO `ent_postmeta` VALUES (1510, 172, '_imagem__especialidade', 'field_5fb47e84d36a6');
INSERT INTO `ent_postmeta` VALUES (1511, 172, 'texto__especialidade', 'Com muito amor e acolhimento, esta especialidade atua na prevenção, intervenção e reabilitação das funções orofaciais e comportamentais envolvidas na comunicação, na fala e na alimentação humana. Assim podemos expressar nosso amor em todas as direções que o vento sopra.');
INSERT INTO `ent_postmeta` VALUES (1512, 172, '_texto__especialidade', 'field_5fb31fe2cff28');
INSERT INTO `ent_postmeta` VALUES (1513, 172, 'texto-home__especialidade', 'Com muito amor e acolhimento, esta especialidade atua na prevenção, intervenção e reabilitação das funções orofaciais e comportamentais envolvidas na comunicação, na fala e na alimentação humana. Assim podemos expressar nosso amor em todas as direções que o vento sopra.');
INSERT INTO `ent_postmeta` VALUES (1514, 172, '_texto-home__especialidade', 'field_5fb48644f3810');
INSERT INTO `ent_postmeta` VALUES (1515, 173, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1516, 173, '_edit_lock', '1606268915:1');
INSERT INTO `ent_postmeta` VALUES (1517, 173, 'imagem-home__especialidade', '141');
INSERT INTO `ent_postmeta` VALUES (1518, 173, '_imagem-home__especialidade', 'field_5fb47e1048d0f');
INSERT INTO `ent_postmeta` VALUES (1519, 173, 'imagem__especialidade', '134');
INSERT INTO `ent_postmeta` VALUES (1520, 173, '_imagem__especialidade', 'field_5fb47e84d36a6');
INSERT INTO `ent_postmeta` VALUES (1521, 173, 'texto__especialidade', '<div>Esta especialidade nos ajuda a fluir pela linda jornada da vida, trabalhando no diagnóstico, prevenção e recuperação de funções motoras intercorrentes em órgãos e sistemas de nosso corpo.</div>\r\n<div></div>');
INSERT INTO `ent_postmeta` VALUES (1522, 173, '_texto__especialidade', 'field_5fb31fe2cff28');
INSERT INTO `ent_postmeta` VALUES (1523, 173, 'texto-home__especialidade', '<div>Esta especialidade nos ajuda a fluir pela linda jornada da vida, trabalhando no diagnóstico, prevenção e recuperação de funções motoras intercorrentes em órgãos e sistemas de nosso corpo.</div>\r\n<div></div>');
INSERT INTO `ent_postmeta` VALUES (1524, 173, '_texto-home__especialidade', 'field_5fb48644f3810');
INSERT INTO `ent_postmeta` VALUES (1525, 174, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1526, 174, '_edit_lock', '1606268932:1');
INSERT INTO `ent_postmeta` VALUES (1527, 174, 'imagem-home__especialidade', '141');
INSERT INTO `ent_postmeta` VALUES (1528, 174, '_imagem-home__especialidade', 'field_5fb47e1048d0f');
INSERT INTO `ent_postmeta` VALUES (1529, 174, 'imagem__especialidade', '134');
INSERT INTO `ent_postmeta` VALUES (1530, 174, '_imagem__especialidade', 'field_5fb47e84d36a6');
INSERT INTO `ent_postmeta` VALUES (1531, 174, 'texto__especialidade', '<div>Com presença, amor e acolhimento, a Psicologia Comportamental atua na promoção e manutenção da saúde mental considerando-se as interações entre emoções, pensamentos, comportamentos e estados fisiológicos.</div>\r\n<div></div>');
INSERT INTO `ent_postmeta` VALUES (1532, 174, '_texto__especialidade', 'field_5fb31fe2cff28');
INSERT INTO `ent_postmeta` VALUES (1533, 174, 'texto-home__especialidade', '<div>Com presença, amor e acolhimento, a Psicologia Comportamental atua na promoção e manutenção da saúde mental considerando-se as interações entre emoções, pensamentos, comportamentos e estados fisiológicos.</div>\r\n<div></div>');
INSERT INTO `ent_postmeta` VALUES (1534, 174, '_texto-home__especialidade', 'field_5fb48644f3810');
INSERT INTO `ent_postmeta` VALUES (1535, 175, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1536, 175, '_edit_lock', '1606688410:1');
INSERT INTO `ent_postmeta` VALUES (1537, 175, 'imagem-home__especialidade', '141');
INSERT INTO `ent_postmeta` VALUES (1538, 175, '_imagem-home__especialidade', 'field_5fb47e1048d0f');
INSERT INTO `ent_postmeta` VALUES (1539, 175, 'imagem__especialidade', '134');
INSERT INTO `ent_postmeta` VALUES (1540, 175, '_imagem__especialidade', 'field_5fb47e84d36a6');
INSERT INTO `ent_postmeta` VALUES (1541, 175, 'texto__especialidade', 'Esta especialidade trabalha com o restabelecimento de saúde dos Serzinhos de Luz que apresentam distúrbios nas glândulas endócrinas, tais como variações no peso e crescimento físico, desenvolvimento da puberdade e diabetes entre outras.');
INSERT INTO `ent_postmeta` VALUES (1542, 175, '_texto__especialidade', 'field_5fb31fe2cff28');
INSERT INTO `ent_postmeta` VALUES (1543, 175, 'texto-home__especialidade', 'Esta especialidade trabalha com o restabelecimento de saúde dos Serzinhos de Luz que apresentam distúrbios nas glândulas endócrinas, tais como variações no peso e crescimento físico, desenvolvimento da puberdade e diabetes entre outras.');
INSERT INTO `ent_postmeta` VALUES (1544, 175, '_texto-home__especialidade', 'field_5fb48644f3810');
INSERT INTO `ent_postmeta` VALUES (1545, 176, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1546, 176, '_edit_lock', '1606781165:1');
INSERT INTO `ent_postmeta` VALUES (1547, 176, 'imagem-home__especialidade', '141');
INSERT INTO `ent_postmeta` VALUES (1548, 176, '_imagem-home__especialidade', 'field_5fb47e1048d0f');
INSERT INTO `ent_postmeta` VALUES (1549, 176, 'imagem__especialidade', '134');
INSERT INTO `ent_postmeta` VALUES (1550, 176, '_imagem__especialidade', 'field_5fb47e84d36a6');
INSERT INTO `ent_postmeta` VALUES (1551, 176, 'texto__especialidade', '<div>É a área que cuida da saúde bucal, dos dentes e de toda a face de adultos, gestantes, crianças e bebês. Nunca deixe de presentear todos em seu caminho com um belo sorriso.</div>\r\n<div></div>');
INSERT INTO `ent_postmeta` VALUES (1552, 176, '_texto__especialidade', 'field_5fb31fe2cff28');
INSERT INTO `ent_postmeta` VALUES (1553, 176, 'texto-home__especialidade', '<div>É a área que cuida da saúde bucal, dos dentes e de toda a face de adultos, gestantes, crianças e bebês. Nunca deixe de presentear todos em seu caminho com um belo sorriso.</div>\r\n<div></div>');
INSERT INTO `ent_postmeta` VALUES (1554, 176, '_texto-home__especialidade', 'field_5fb48644f3810');
INSERT INTO `ent_postmeta` VALUES (1555, 107, 'destaque', '1');
INSERT INTO `ent_postmeta` VALUES (1556, 107, '_destaque', 'field_5fbef380ac83d');
INSERT INTO `ent_postmeta` VALUES (1557, 107, 'link_instagram_profi', '@dramariliamoraes ');
INSERT INTO `ent_postmeta` VALUES (1558, 107, '_link_instagram_profi', 'field_5fbc69300a240');
INSERT INTO `ent_postmeta` VALUES (1559, 108, 'destaque', '0');
INSERT INTO `ent_postmeta` VALUES (1560, 108, '_destaque', 'field_5fbef380ac83d');
INSERT INTO `ent_postmeta` VALUES (1561, 108, 'link_instagram_profi', '@dr.viniciusmaia ');
INSERT INTO `ent_postmeta` VALUES (1562, 108, '_link_instagram_profi', 'field_5fbc69300a240');
INSERT INTO `ent_postmeta` VALUES (1563, 111, 'destaque', '0');
INSERT INTO `ent_postmeta` VALUES (1564, 111, '_destaque', 'field_5fbef380ac83d');
INSERT INTO `ent_postmeta` VALUES (1565, 111, 'link_instagram_profi', '@rhubianutri');
INSERT INTO `ent_postmeta` VALUES (1566, 111, '_link_instagram_profi', 'field_5fbc69300a240');
INSERT INTO `ent_postmeta` VALUES (1567, 109, 'destaque', '0');
INSERT INTO `ent_postmeta` VALUES (1568, 109, '_destaque', 'field_5fbef380ac83d');
INSERT INTO `ent_postmeta` VALUES (1569, 109, 'link_instagram_profi', '@dra.fernandapediatra');
INSERT INTO `ent_postmeta` VALUES (1570, 109, '_link_instagram_profi', 'field_5fbc69300a240');
INSERT INTO `ent_postmeta` VALUES (1571, 110, 'destaque', '1');
INSERT INTO `ent_postmeta` VALUES (1572, 110, '_destaque', 'field_5fbef380ac83d');
INSERT INTO `ent_postmeta` VALUES (1573, 110, 'link_instagram_profi', '@dramariellebrito ');
INSERT INTO `ent_postmeta` VALUES (1574, 110, '_link_instagram_profi', 'field_5fbc69300a240');
INSERT INTO `ent_postmeta` VALUES (1575, 104, 'destaque', '0');
INSERT INTO `ent_postmeta` VALUES (1576, 104, '_destaque', 'field_5fbef380ac83d');
INSERT INTO `ent_postmeta` VALUES (1577, 179, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1578, 179, '_edit_lock', '1606354399:1');
INSERT INTO `ent_postmeta` VALUES (1579, 179, 'destaque', '0');
INSERT INTO `ent_postmeta` VALUES (1580, 179, '_destaque', 'field_5fbef380ac83d');
INSERT INTO `ent_postmeta` VALUES (1581, 179, 'icone__profissionais', '105');
INSERT INTO `ent_postmeta` VALUES (1582, 179, '_icone__profissionais', 'field_5fb313b7d122f');
INSERT INTO `ent_postmeta` VALUES (1583, 179, 'foto__profissionais', '106');
INSERT INTO `ent_postmeta` VALUES (1584, 179, '_foto__profissionais', 'field_5fb31398d122e');
INSERT INTO `ent_postmeta` VALUES (1585, 179, 'link_instagram_profi', '@dralaistome');
INSERT INTO `ent_postmeta` VALUES (1586, 179, '_link_instagram_profi', 'field_5fbc69300a240');
INSERT INTO `ent_postmeta` VALUES (1587, 179, 'texto__profissionais', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat.');
INSERT INTO `ent_postmeta` VALUES (1588, 179, '_texto__profissionais', 'field_5fb313dad1230');
INSERT INTO `ent_postmeta` VALUES (1589, 180, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1590, 180, '_edit_lock', '1606354389:1');
INSERT INTO `ent_postmeta` VALUES (1591, 180, 'destaque', '0');
INSERT INTO `ent_postmeta` VALUES (1592, 180, '_destaque', 'field_5fbef380ac83d');
INSERT INTO `ent_postmeta` VALUES (1593, 180, 'icone__profissionais', '105');
INSERT INTO `ent_postmeta` VALUES (1594, 180, '_icone__profissionais', 'field_5fb313b7d122f');
INSERT INTO `ent_postmeta` VALUES (1595, 180, 'foto__profissionais', '106');
INSERT INTO `ent_postmeta` VALUES (1596, 180, '_foto__profissionais', 'field_5fb31398d122e');
INSERT INTO `ent_postmeta` VALUES (1597, 180, 'link_instagram_profi', '@nutrimarinaperez');
INSERT INTO `ent_postmeta` VALUES (1598, 180, '_link_instagram_profi', 'field_5fbc69300a240');
INSERT INTO `ent_postmeta` VALUES (1599, 180, 'texto__profissionais', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat.');
INSERT INTO `ent_postmeta` VALUES (1600, 180, '_texto__profissionais', 'field_5fb313dad1230');
INSERT INTO `ent_postmeta` VALUES (1601, 181, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1602, 181, '_edit_lock', '1606354455:1');
INSERT INTO `ent_postmeta` VALUES (1603, 181, 'destaque', '0');
INSERT INTO `ent_postmeta` VALUES (1604, 181, '_destaque', 'field_5fbef380ac83d');
INSERT INTO `ent_postmeta` VALUES (1605, 181, 'icone__profissionais', '105');
INSERT INTO `ent_postmeta` VALUES (1606, 181, '_icone__profissionais', 'field_5fb313b7d122f');
INSERT INTO `ent_postmeta` VALUES (1607, 181, 'foto__profissionais', '106');
INSERT INTO `ent_postmeta` VALUES (1608, 181, '_foto__profissionais', 'field_5fb31398d122e');
INSERT INTO `ent_postmeta` VALUES (1609, 181, 'link_instagram_profi', '@draannelyse');
INSERT INTO `ent_postmeta` VALUES (1610, 181, '_link_instagram_profi', 'field_5fbc69300a240');
INSERT INTO `ent_postmeta` VALUES (1611, 181, 'texto__profissionais', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat.');
INSERT INTO `ent_postmeta` VALUES (1612, 181, '_texto__profissionais', 'field_5fb313dad1230');
INSERT INTO `ent_postmeta` VALUES (1613, 182, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1614, 182, '_edit_lock', '1606355098:1');
INSERT INTO `ent_postmeta` VALUES (1615, 182, 'destaque', '0');
INSERT INTO `ent_postmeta` VALUES (1616, 182, '_destaque', 'field_5fbef380ac83d');
INSERT INTO `ent_postmeta` VALUES (1617, 182, 'icone__profissionais', '105');
INSERT INTO `ent_postmeta` VALUES (1618, 182, '_icone__profissionais', 'field_5fb313b7d122f');
INSERT INTO `ent_postmeta` VALUES (1619, 182, 'foto__profissionais', '106');
INSERT INTO `ent_postmeta` VALUES (1620, 182, '_foto__profissionais', 'field_5fb31398d122e');
INSERT INTO `ent_postmeta` VALUES (1621, 182, 'link_instagram_profi', '@fonoandreabaldi');
INSERT INTO `ent_postmeta` VALUES (1622, 182, '_link_instagram_profi', 'field_5fbc69300a240');
INSERT INTO `ent_postmeta` VALUES (1623, 182, 'texto__profissionais', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat.');
INSERT INTO `ent_postmeta` VALUES (1624, 182, '_texto__profissionais', 'field_5fb313dad1230');
INSERT INTO `ent_postmeta` VALUES (1625, 183, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1626, 183, '_edit_lock', '1606354570:1');
INSERT INTO `ent_postmeta` VALUES (1627, 183, 'destaque', '0');
INSERT INTO `ent_postmeta` VALUES (1628, 183, '_destaque', 'field_5fbef380ac83d');
INSERT INTO `ent_postmeta` VALUES (1629, 183, 'icone__profissionais', '105');
INSERT INTO `ent_postmeta` VALUES (1630, 183, '_icone__profissionais', 'field_5fb313b7d122f');
INSERT INTO `ent_postmeta` VALUES (1631, 183, 'foto__profissionais', '106');
INSERT INTO `ent_postmeta` VALUES (1632, 183, '_foto__profissionais', 'field_5fb31398d122e');
INSERT INTO `ent_postmeta` VALUES (1633, 183, 'link_instagram_profi', '@desenvolvecrianca');
INSERT INTO `ent_postmeta` VALUES (1634, 183, '_link_instagram_profi', 'field_5fbc69300a240');
INSERT INTO `ent_postmeta` VALUES (1635, 183, 'texto__profissionais', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat.');
INSERT INTO `ent_postmeta` VALUES (1636, 183, '_texto__profissionais', 'field_5fb313dad1230');
INSERT INTO `ent_postmeta` VALUES (1637, 184, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1638, 184, '_edit_lock', '1606354713:1');
INSERT INTO `ent_postmeta` VALUES (1639, 184, 'destaque', '0');
INSERT INTO `ent_postmeta` VALUES (1640, 184, '_destaque', 'field_5fbef380ac83d');
INSERT INTO `ent_postmeta` VALUES (1641, 184, 'icone__profissionais', '105');
INSERT INTO `ent_postmeta` VALUES (1642, 184, '_icone__profissionais', 'field_5fb313b7d122f');
INSERT INTO `ent_postmeta` VALUES (1643, 184, 'foto__profissionais', '106');
INSERT INTO `ent_postmeta` VALUES (1644, 184, '_foto__profissionais', 'field_5fb31398d122e');
INSERT INTO `ent_postmeta` VALUES (1645, 184, 'link_instagram_profi', '@juliana.schio ');
INSERT INTO `ent_postmeta` VALUES (1646, 184, '_link_instagram_profi', 'field_5fbc69300a240');
INSERT INTO `ent_postmeta` VALUES (1647, 184, 'texto__profissionais', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat.');
INSERT INTO `ent_postmeta` VALUES (1648, 184, '_texto__profissionais', 'field_5fb313dad1230');
INSERT INTO `ent_postmeta` VALUES (1649, 186, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1650, 186, '_edit_lock', '1606782541:1');
INSERT INTO `ent_postmeta` VALUES (1651, 186, 'destaque', '0');
INSERT INTO `ent_postmeta` VALUES (1652, 186, '_destaque', 'field_5fbef380ac83d');
INSERT INTO `ent_postmeta` VALUES (1653, 186, 'icone__profissionais', '105');
INSERT INTO `ent_postmeta` VALUES (1654, 186, '_icone__profissionais', 'field_5fb313b7d122f');
INSERT INTO `ent_postmeta` VALUES (1655, 186, 'foto__profissionais', '106');
INSERT INTO `ent_postmeta` VALUES (1656, 186, '_foto__profissionais', 'field_5fb31398d122e');
INSERT INTO `ent_postmeta` VALUES (1657, 186, 'link_instagram_profi', '@dra.anapaulamelo');
INSERT INTO `ent_postmeta` VALUES (1658, 186, '_link_instagram_profi', 'field_5fbc69300a240');
INSERT INTO `ent_postmeta` VALUES (1659, 186, 'texto__profissionais', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat.');
INSERT INTO `ent_postmeta` VALUES (1660, 186, '_texto__profissionais', 'field_5fb313dad1230');
INSERT INTO `ent_postmeta` VALUES (1661, 187, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1662, 187, '_edit_lock', '1606354790:1');
INSERT INTO `ent_postmeta` VALUES (1663, 187, 'destaque', '0');
INSERT INTO `ent_postmeta` VALUES (1664, 187, '_destaque', 'field_5fbef380ac83d');
INSERT INTO `ent_postmeta` VALUES (1665, 187, 'icone__profissionais', '105');
INSERT INTO `ent_postmeta` VALUES (1666, 187, '_icone__profissionais', 'field_5fb313b7d122f');
INSERT INTO `ent_postmeta` VALUES (1667, 187, 'foto__profissionais', '106');
INSERT INTO `ent_postmeta` VALUES (1668, 187, '_foto__profissionais', 'field_5fb31398d122e');
INSERT INTO `ent_postmeta` VALUES (1669, 187, 'link_instagram_profi', '@nahvalli.odontologia');
INSERT INTO `ent_postmeta` VALUES (1670, 187, '_link_instagram_profi', 'field_5fbc69300a240');
INSERT INTO `ent_postmeta` VALUES (1671, 187, 'texto__profissionais', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat.');
INSERT INTO `ent_postmeta` VALUES (1672, 187, '_texto__profissionais', 'field_5fb313dad1230');
INSERT INTO `ent_postmeta` VALUES (1673, 188, '_edit_last', '1');
INSERT INTO `ent_postmeta` VALUES (1674, 188, '_edit_lock', '1606354823:1');
INSERT INTO `ent_postmeta` VALUES (1675, 188, 'destaque', '0');
INSERT INTO `ent_postmeta` VALUES (1676, 188, '_destaque', 'field_5fbef380ac83d');
INSERT INTO `ent_postmeta` VALUES (1677, 188, 'icone__profissionais', '105');
INSERT INTO `ent_postmeta` VALUES (1678, 188, '_icone__profissionais', 'field_5fb313b7d122f');
INSERT INTO `ent_postmeta` VALUES (1679, 188, 'foto__profissionais', '106');
INSERT INTO `ent_postmeta` VALUES (1680, 188, '_foto__profissionais', 'field_5fb31398d122e');
INSERT INTO `ent_postmeta` VALUES (1681, 188, 'link_instagram_profi', '@danielarinaldipediatra');
INSERT INTO `ent_postmeta` VALUES (1682, 188, '_link_instagram_profi', 'field_5fbc69300a240');
INSERT INTO `ent_postmeta` VALUES (1683, 188, 'texto__profissionais', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat.');
INSERT INTO `ent_postmeta` VALUES (1684, 188, '_texto__profissionais', 'field_5fb313dad1230');
INSERT INTO `ent_postmeta` VALUES (1685, 186, 'especialidades__prof', 'a:2:{i:0;s:3:\"125\";i:1;s:3:\"175\";}');
INSERT INTO `ent_postmeta` VALUES (1686, 186, '_especialidades__prof', 'field_5fc58bfc234a4');
INSERT INTO `ent_postmeta` VALUES (1687, 186, 'outras_especialidades', 'sala de parto');
INSERT INTO `ent_postmeta` VALUES (1688, 186, '_outras_especialidades', 'field_5fc58d6a5f649');
INSERT INTO `ent_postmeta` VALUES (1689, 93, 'link_do_evento', 'https://www.codigofonte.com.br/dicas/como-criar-uma-janela-modal-sem-javascript');
INSERT INTO `ent_postmeta` VALUES (1690, 93, '_link_do_evento', 'field_5fc6f77ff3873');
INSERT INTO `ent_postmeta` VALUES (1691, 93, 'cor_escura', '1');
INSERT INTO `ent_postmeta` VALUES (1692, 93, '_cor_escura', 'field_5fc6f812e05a5');

-- ----------------------------
-- Table structure for ent_posts
-- ----------------------------
DROP TABLE IF EXISTS `ent_posts`;
CREATE TABLE `ent_posts`  (
  `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT 0,
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `post_name`(`post_name`(191)) USING BTREE,
  INDEX `type_status_date`(`post_type`, `post_status`, `post_date`, `ID`) USING BTREE,
  INDEX `post_parent`(`post_parent`) USING BTREE,
  INDEX `post_author`(`post_author`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 193 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ent_posts
-- ----------------------------
INSERT INTO `ent_posts` VALUES (1, 1, '2020-11-06 21:12:42', '2020-11-06 23:12:42', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'trash', 'open', 'open', '', 'ola-mundo__trashed', '', '', '2020-11-18 00:35:39', '2020-11-18 02:35:39', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1);
INSERT INTO `ent_posts` VALUES (2, 1, '2020-11-06 21:12:42', '2020-11-06 23:12:42', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2020-11-06 22:17:03', '2020-11-07 00:17:03', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0);
INSERT INTO `ent_posts` VALUES (3, 1, '2020-11-06 21:12:42', '2020-11-06 23:12:42', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>O endereço do nosso site é: http://localhost.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais dados pessoais coletamos e porque</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentários</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulários de contato</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia incorporada de outros sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Análises</h3><!-- /wp:heading --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Suas informações de contato</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informações adicionais</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Como protegemos seus dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais são nossos procedimentos contra violação de dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De quais terceiros nós recebemos dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3><!-- /wp:heading -->', 'Política de privacidade', '', 'trash', 'closed', 'open', '', 'politica-de-privacidade__trashed', '', '', '2020-11-06 22:17:05', '2020-11-07 00:17:05', '', 0, 'http://localhost/?page_id=3', 0, 'page', '', 0);
INSERT INTO `ent_posts` VALUES (5, 1, '2020-11-06 21:14:07', '2020-11-06 23:14:07', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-11-23 23:29:58', '2020-11-24 01:29:58', '', 0, 'http://localhost/?page_id=5', 0, 'page', '', 0);
INSERT INTO `ent_posts` VALUES (6, 1, '2020-11-06 21:14:07', '2020-11-06 23:14:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-11-06 21:14:07', '2020-11-06 23:14:07', '', 5, 'http://localhost/2020/11/06/5-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (8, 1, '2020-11-06 22:09:02', '2020-11-07 00:09:02', '', 'menu_MOBILE1', '', 'inherit', 'open', 'closed', '', 'menu_mobile1', '', '', '2020-11-06 22:09:02', '2020-11-07 00:09:02', '', 5, 'http://localhost/wp-content/uploads/2020/11/menu_MOBILE1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (9, 1, '2020-11-06 22:09:16', '2020-11-07 00:09:16', '', 'Header_MOBILE', '', 'inherit', 'open', 'closed', '', 'header_mobile', '', '', '2020-11-06 22:09:16', '2020-11-07 00:09:16', '', 5, 'http://localhost/wp-content/uploads/2020/11/Header_MOBILE.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (10, 1, '2020-11-06 22:09:56', '2020-11-07 00:09:56', '', 'logo_entre_irmao', '', 'inherit', 'open', 'closed', '', 'logo_entre_irmao', '', '', '2020-11-06 22:09:56', '2020-11-07 00:09:56', '', 5, 'http://localhost/wp-content/uploads/2020/11/logo_entre_irmao.svg', 0, 'attachment', 'image/svg+xml', 0);
INSERT INTO `ent_posts` VALUES (11, 1, '2020-11-06 22:10:12', '2020-11-07 00:10:12', '', 'header_mobile_02', '', 'inherit', 'open', 'closed', '', 'header_mobile_02', '', '', '2020-11-06 22:10:12', '2020-11-07 00:10:12', '', 5, 'http://localhost/wp-content/uploads/2020/11/header_mobile_02.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (12, 1, '2020-11-06 22:10:31', '2020-11-07 00:10:31', '', 'Header', '', 'inherit', 'open', 'closed', '', 'header', '', '', '2020-11-06 22:10:31', '2020-11-07 00:10:31', '', 5, 'http://localhost/wp-content/uploads/2020/11/Header.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (13, 1, '2020-11-06 22:10:43', '2020-11-07 00:10:43', '', 'logo_entre_irmao', '', 'inherit', 'open', 'closed', '', 'logo_entre_irmao-2', '', '', '2020-11-06 22:10:43', '2020-11-07 00:10:43', '', 5, 'http://localhost/wp-content/uploads/2020/11/logo_entre_irmao.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `ent_posts` VALUES (14, 1, '2020-11-06 22:13:59', '2020-11-07 00:13:59', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-11-06 22:13:59', '2020-11-07 00:13:59', '', 5, 'http://localhost/2020/11/06/5-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (15, 1, '2020-11-06 22:16:32', '2020-11-07 00:16:32', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-11-06 22:16:32', '2020-11-07 00:16:32', '', 5, 'http://localhost/2020/11/06/5-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (16, 1, '2020-11-06 22:17:03', '2020-11-07 00:17:03', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-11-06 22:17:03', '2020-11-07 00:17:03', '', 2, 'http://localhost/2020/11/06/2-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (17, 1, '2020-11-06 22:17:05', '2020-11-07 00:17:05', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>O endereço do nosso site é: http://localhost.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais dados pessoais coletamos e porque</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentários</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulários de contato</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia incorporada de outros sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Análises</h3><!-- /wp:heading --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Suas informações de contato</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informações adicionais</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Como protegemos seus dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais são nossos procedimentos contra violação de dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De quais terceiros nós recebemos dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3><!-- /wp:heading -->', 'Política de privacidade', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-11-06 22:17:05', '2020-11-07 00:17:05', '', 3, 'http://localhost/2020/11/06/3-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (18, 1, '2020-11-06 22:17:28', '2020-11-07 00:17:28', '', 'Quem Somos', '', 'publish', 'closed', 'closed', '', 'quem-somos', '', '', '2020-11-07 02:00:41', '2020-11-07 04:00:41', '', 0, 'http://localhost/?page_id=18', 0, 'page', '', 0);
INSERT INTO `ent_posts` VALUES (19, 1, '2020-11-06 22:17:28', '2020-11-07 00:17:28', '', 'Quem Somos', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-11-06 22:17:28', '2020-11-07 00:17:28', '', 18, 'http://localhost/2020/11/06/18-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (20, 1, '2020-11-06 22:17:46', '2020-11-07 00:17:46', '', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2020-11-06 22:17:46', '2020-11-07 00:17:46', '', 0, 'http://localhost/?page_id=20', 0, 'page', '', 0);
INSERT INTO `ent_posts` VALUES (21, 1, '2020-11-06 22:17:46', '2020-11-07 00:17:46', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2020-11-06 22:17:46', '2020-11-07 00:17:46', '', 20, 'http://localhost/2020/11/06/20-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (22, 1, '2020-11-06 22:18:00', '2020-11-07 00:18:00', '', 'Profissionais', '', 'trash', 'closed', 'closed', '', 'profissionais__trashed', '', '', '2020-11-19 22:01:06', '2020-11-20 00:01:06', '', 0, 'http://localhost/?page_id=22', 0, 'page', '', 0);
INSERT INTO `ent_posts` VALUES (23, 1, '2020-11-06 22:18:00', '2020-11-07 00:18:00', '', 'Profissionais', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-11-06 22:18:00', '2020-11-07 00:18:00', '', 22, 'http://localhost/2020/11/06/22-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (24, 1, '2020-11-06 22:18:21', '2020-11-07 00:18:21', '', 'Especialidades', '', 'trash', 'closed', 'closed', '', 'especialidades__trashed', '', '', '2020-11-19 22:01:03', '2020-11-20 00:01:03', '', 0, 'http://localhost/?page_id=24', 0, 'page', '', 0);
INSERT INTO `ent_posts` VALUES (25, 1, '2020-11-06 22:18:21', '2020-11-07 00:18:21', '', 'Especialidades', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2020-11-06 22:18:21', '2020-11-07 00:18:21', '', 24, 'http://localhost/2020/11/06/24-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (26, 1, '2020-11-06 22:18:33', '2020-11-07 00:18:33', '', 'Eventos', '', 'publish', 'closed', 'closed', '', 'eventos', '', '', '2020-11-06 22:18:33', '2020-11-07 00:18:33', '', 0, 'http://localhost/?page_id=26', 0, 'page', '', 0);
INSERT INTO `ent_posts` VALUES (27, 1, '2020-11-06 22:18:33', '2020-11-07 00:18:33', '', 'Eventos', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-11-06 22:18:33', '2020-11-07 00:18:33', '', 26, 'http://localhost/2020/11/06/26-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (28, 1, '2020-11-06 22:18:50', '2020-11-07 00:18:50', '', 'Blog', '', 'trash', 'closed', 'closed', '', 'blog__trashed-2', '', '', '2020-11-19 22:00:57', '2020-11-20 00:00:57', '', 0, 'http://localhost/?page_id=28', 0, 'page', '', 0);
INSERT INTO `ent_posts` VALUES (29, 1, '2020-11-06 22:18:50', '2020-11-07 00:18:50', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2020-11-06 22:18:50', '2020-11-07 00:18:50', '', 28, 'http://localhost/2020/11/06/28-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (30, 1, '2020-11-06 22:19:20', '2020-11-07 00:19:20', '', 'icon_fogueira', '', 'inherit', 'open', 'closed', '', 'icon_fogueira', '', '', '2020-11-06 22:19:20', '2020-11-07 00:19:20', '', 5, 'http://localhost/wp-content/uploads/2020/11/icon_fogueira.svg', 0, 'attachment', 'image/svg+xml', 0);
INSERT INTO `ent_posts` VALUES (31, 1, '2020-11-06 22:19:20', '2020-11-07 00:19:20', '', 'icon_montanha', '', 'inherit', 'open', 'closed', '', 'icon_montanha', '', '', '2020-11-06 22:19:20', '2020-11-07 00:19:20', '', 5, 'http://localhost/wp-content/uploads/2020/11/icon_montanha.svg', 0, 'attachment', 'image/svg+xml', 0);
INSERT INTO `ent_posts` VALUES (32, 1, '2020-11-06 22:19:21', '2020-11-07 00:19:21', '', 'icon_montanhao', '', 'inherit', 'open', 'closed', '', 'icon_montanhao', '', '', '2020-11-06 22:19:21', '2020-11-07 00:19:21', '', 5, 'http://localhost/wp-content/uploads/2020/11/icon_montanhao.svg', 0, 'attachment', 'image/svg+xml', 0);
INSERT INTO `ent_posts` VALUES (33, 1, '2020-11-06 22:20:16', '2020-11-07 00:20:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-11-06 22:20:16', '2020-11-07 00:20:16', '', 5, 'http://localhost/2020/11/06/5-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (34, 1, '2020-11-06 22:24:02', '2020-11-07 00:24:02', '', 'estrutura01', '', 'inherit', 'open', 'closed', '', 'estrutura01', '', '', '2020-11-06 22:24:20', '2020-11-07 00:24:20', '', 0, 'http://localhost/wp-content/uploads/2020/11/estrutura01.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (35, 1, '2020-11-06 22:24:03', '2020-11-07 00:24:03', '', 'estrutura02', '', 'inherit', 'open', 'closed', '', 'estrutura02', '', '', '2020-11-06 22:24:03', '2020-11-07 00:24:03', '', 0, 'http://localhost/wp-content/uploads/2020/11/estrutura02.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (36, 1, '2020-11-06 22:24:03', '2020-11-07 00:24:03', '', 'estrutura03', '', 'inherit', 'open', 'closed', '', 'estrutura03', '', '', '2020-11-06 22:24:03', '2020-11-07 00:24:03', '', 0, 'http://localhost/wp-content/uploads/2020/11/estrutura03.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (37, 1, '2020-11-06 22:24:03', '2020-11-07 00:24:03', '', 'estrutura04', '', 'inherit', 'open', 'closed', '', 'estrutura04', '', '', '2020-11-06 22:24:03', '2020-11-07 00:24:03', '', 0, 'http://localhost/wp-content/uploads/2020/11/estrutura04.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (38, 1, '2020-11-06 22:24:03', '2020-11-07 00:24:03', '', 'estrutura05', '', 'inherit', 'open', 'closed', '', 'estrutura05', '', '', '2020-11-06 22:24:03', '2020-11-07 00:24:03', '', 0, 'http://localhost/wp-content/uploads/2020/11/estrutura05.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (39, 1, '2020-11-06 22:24:04', '2020-11-07 00:24:04', '', 'estrutura06', '', 'inherit', 'open', 'closed', '', 'estrutura06', '', '', '2020-11-06 22:24:04', '2020-11-07 00:24:04', '', 0, 'http://localhost/wp-content/uploads/2020/11/estrutura06.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (40, 1, '2020-11-06 22:24:04', '2020-11-07 00:24:04', '', 'missao', 'Businessman hand placing or pulling wooden block on the tower. Business planning, Risk Management, Solution and strategy Concepts', 'inherit', 'open', 'closed', '', 'missao', '', '', '2020-11-08 14:20:37', '2020-11-08 16:20:37', '', 18, 'http://localhost/wp-content/uploads/2020/11/missao.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (41, 1, '2020-11-06 22:24:12', '2020-11-07 00:24:12', '', 'sobre', '', 'inherit', 'open', 'closed', '', 'sobre', '', '', '2020-11-08 17:01:31', '2020-11-08 19:01:31', '', 18, 'http://localhost/wp-content/uploads/2020/11/sobre.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (42, 1, '2020-11-06 22:33:18', '2020-11-07 00:33:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-11-06 22:33:18', '2020-11-07 00:33:18', '', 5, 'http://localhost/2020/11/06/5-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (43, 1, '2020-11-06 22:37:35', '2020-11-07 00:37:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-11-06 22:37:35', '2020-11-07 00:37:35', '', 5, 'http://localhost/2020/11/06/5-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (44, 1, '2020-11-06 22:44:51', '0000-00-00 00:00:00', '', 'Início', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-06 22:44:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=44', 1, 'nav_menu_item', '', 0);
INSERT INTO `ent_posts` VALUES (46, 1, '2020-11-06 22:45:32', '2020-11-07 00:45:32', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2020-11-19 22:07:54', '2020-11-20 00:07:54', '', 0, 'http://localhost/?p=46', 7, 'nav_menu_item', '', 0);
INSERT INTO `ent_posts` VALUES (48, 1, '2020-11-06 22:45:32', '2020-11-07 00:45:32', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2020-11-19 22:07:54', '2020-11-20 00:07:54', '', 0, 'http://localhost/?p=48', 5, 'nav_menu_item', '', 0);
INSERT INTO `ent_posts` VALUES (49, 1, '2020-11-06 22:45:31', '2020-11-07 00:45:31', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2020-11-19 22:07:54', '2020-11-20 00:07:54', '', 0, 'http://localhost/?p=49', 1, 'nav_menu_item', '', 0);
INSERT INTO `ent_posts` VALUES (51, 1, '2020-11-06 22:45:31', '2020-11-07 00:45:31', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2020-11-19 22:07:54', '2020-11-20 00:07:54', '', 0, 'http://localhost/?p=51', 2, 'nav_menu_item', '', 0);
INSERT INTO `ent_posts` VALUES (52, 1, '2020-11-06 22:52:24', '2020-11-07 00:52:24', '', 'icone_entre_irmaos', '', 'inherit', 'open', 'closed', '', 'icone_entre_irmaos', '', '', '2020-11-06 22:54:44', '2020-11-07 00:54:44', '', 5, 'http://localhost/wp-content/uploads/2020/11/icone_entre_irmaos.svg', 0, 'attachment', 'image/svg+xml', 0);
INSERT INTO `ent_posts` VALUES (53, 1, '2020-11-06 22:54:44', '2020-11-07 00:54:44', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-11-06 22:54:44', '2020-11-07 00:54:44', '', 5, 'http://localhost/2020/11/06/5-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (54, 1, '2020-11-06 22:54:53', '2020-11-07 00:54:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-11-06 22:54:53', '2020-11-07 00:54:53', '', 5, 'http://localhost/2020/11/06/5-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (55, 1, '2020-11-07 00:49:03', '2020-11-07 02:49:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"template-quem-somos.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Quem Somos', 'quem-somos', 'publish', 'closed', 'closed', '', 'group_5fa609ca9dfcf', '', '', '2020-11-07 00:52:01', '2020-11-07 02:52:01', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=55', 0, 'acf-field-group', '', 0);
INSERT INTO `ent_posts` VALUES (56, 1, '2020-11-07 00:49:03', '2020-11-07 02:49:03', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Tópicos', 'topicos__quemSomos', 'publish', 'closed', 'closed', '', 'field_5fa609df75632', '', '', '2020-11-07 00:50:44', '2020-11-07 02:50:44', '', 55, 'http://localhost/?post_type=acf-field&#038;p=56', 0, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (57, 1, '2020-11-07 00:49:03', '2020-11-07 02:49:03', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Sobre', 'sobre', 'publish', 'closed', 'closed', '', 'field_5fa60a0075633', '', '', '2020-11-07 00:49:03', '2020-11-07 02:49:03', '', 56, 'http://localhost/?post_type=acf-field&p=57', 0, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (58, 1, '2020-11-07 00:49:03', '2020-11-07 02:49:03', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'icone', 'icone__sobre', 'publish', 'closed', 'closed', '', 'field_5fa60a1275634', '', '', '2020-11-07 00:49:03', '2020-11-07 02:49:03', '', 56, 'http://localhost/?post_type=acf-field&p=58', 1, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (59, 1, '2020-11-07 00:49:03', '2020-11-07 02:49:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo', 'titulo__sobre', 'publish', 'closed', 'closed', '', 'field_5fa60a2d75635', '', '', '2020-11-07 00:49:03', '2020-11-07 02:49:03', '', 56, 'http://localhost/?post_type=acf-field&p=59', 2, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (60, 1, '2020-11-07 00:49:03', '2020-11-07 02:49:03', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto__sobre', 'publish', 'closed', 'closed', '', 'field_5fa60a4075636', '', '', '2020-11-07 00:49:03', '2020-11-07 02:49:03', '', 56, 'http://localhost/?post_type=acf-field&p=60', 3, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (61, 1, '2020-11-07 00:49:03', '2020-11-07 02:49:03', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem__sobre', 'publish', 'closed', 'closed', '', 'field_5fa60a5775637', '', '', '2020-11-07 00:52:01', '2020-11-07 02:52:01', '', 56, 'http://localhost/?post_type=acf-field&#038;p=61', 4, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (62, 1, '2020-11-07 00:49:03', '2020-11-07 02:49:03', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Missão', 'missao', 'publish', 'closed', 'closed', '', 'field_5fa60a6875638', '', '', '2020-11-07 00:49:03', '2020-11-07 02:49:03', '', 56, 'http://localhost/?post_type=acf-field&p=62', 5, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (63, 1, '2020-11-07 00:49:03', '2020-11-07 02:49:03', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'icone', 'icone__missao', 'publish', 'closed', 'closed', '', 'field_5fa60a7675639', '', '', '2020-11-07 00:49:03', '2020-11-07 02:49:03', '', 56, 'http://localhost/?post_type=acf-field&p=63', 6, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (64, 1, '2020-11-07 00:49:03', '2020-11-07 02:49:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo', 'titulo__missao', 'publish', 'closed', 'closed', '', 'field_5fa60a8c7563a', '', '', '2020-11-07 00:49:03', '2020-11-07 02:49:03', '', 56, 'http://localhost/?post_type=acf-field&p=64', 7, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (65, 1, '2020-11-07 00:49:03', '2020-11-07 02:49:03', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto__missao', 'publish', 'closed', 'closed', '', 'field_5fa60a9f7563b', '', '', '2020-11-07 00:49:03', '2020-11-07 02:49:03', '', 56, 'http://localhost/?post_type=acf-field&p=65', 8, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (66, 1, '2020-11-07 00:49:03', '2020-11-07 02:49:03', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem__missao', 'publish', 'closed', 'closed', '', 'field_5fa60aaa7563c', '', '', '2020-11-07 00:49:03', '2020-11-07 02:49:03', '', 56, 'http://localhost/?post_type=acf-field&p=66', 9, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (67, 1, '2020-11-07 00:49:03', '2020-11-07 02:49:03', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Estrutura', 'estrutura', 'publish', 'closed', 'closed', '', 'field_5fa60ad77563d', '', '', '2020-11-07 00:49:03', '2020-11-07 02:49:03', '', 56, 'http://localhost/?post_type=acf-field&p=67', 10, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (68, 1, '2020-11-07 00:49:03', '2020-11-07 02:49:03', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Icone', 'icone__estrutura', 'publish', 'closed', 'closed', '', 'field_5fa60ae17563e', '', '', '2020-11-07 00:49:03', '2020-11-07 02:49:03', '', 56, 'http://localhost/?post_type=acf-field&p=68', 11, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (69, 1, '2020-11-07 00:49:03', '2020-11-07 02:49:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo', 'titulo__estrutura', 'publish', 'closed', 'closed', '', 'field_5fa60af37563f', '', '', '2020-11-07 00:49:03', '2020-11-07 02:49:03', '', 56, 'http://localhost/?post_type=acf-field&p=69', 12, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (70, 1, '2020-11-07 00:49:25', '2020-11-07 02:49:25', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto__estrutura', 'publish', 'closed', 'closed', '', 'field_5fa60b29497ae', '', '', '2020-11-07 00:49:25', '2020-11-07 02:49:25', '', 56, 'http://localhost/?post_type=acf-field&p=70', 13, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (71, 1, '2020-11-07 00:51:42', '2020-11-07 02:51:42', '', 'Quem Somos', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-11-07 00:51:42', '2020-11-07 02:51:42', '', 18, 'http://localhost/2020/11/07/18-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (72, 1, '2020-11-07 00:52:59', '2020-11-07 02:52:59', '', 'Quem Somos', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-11-07 00:52:59', '2020-11-07 02:52:59', '', 18, 'http://localhost/2020/11/07/18-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (73, 1, '2020-11-07 00:53:28', '2020-11-07 02:53:28', '', 'Quem Somos', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-11-07 00:53:28', '2020-11-07 02:53:28', '', 18, 'http://localhost/2020/11/07/18-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (74, 1, '2020-11-07 02:00:37', '2020-11-07 04:00:37', '', 'missao copy', '', 'inherit', 'open', 'closed', '', 'missao-copy', '', '', '2020-11-07 02:00:37', '2020-11-07 04:00:37', '', 18, 'http://localhost/wp-content/uploads/2020/11/missao-copy.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (75, 1, '2020-11-07 02:00:41', '2020-11-07 04:00:41', '', 'Quem Somos', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-11-07 02:00:41', '2020-11-07 04:00:41', '', 18, 'http://localhost/2020/11/07/18-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (77, 1, '2020-11-08 17:01:27', '2020-11-08 19:01:27', '', 'sobre', '', 'inherit', 'open', 'closed', '', 'sobre-2', '', '', '2020-11-08 17:01:27', '2020-11-08 19:01:27', '', 0, 'http://localhost/wp-content/uploads/2020/11/sobre-1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (78, 1, '2020-11-08 17:22:50', '2020-11-08 19:22:50', '', 'contato', '', 'inherit', 'open', 'closed', '', 'contato-2', '', '', '2020-11-08 17:22:50', '2020-11-08 19:22:50', '', 0, 'http://localhost/wp-content/uploads/2020/11/contato.svg', 0, 'attachment', 'image/svg+xml', 0);
INSERT INTO `ent_posts` VALUES (79, 1, '2020-11-08 17:22:50', '2020-11-08 19:22:50', '', 'pin', '', 'inherit', 'open', 'closed', '', 'pin', '', '', '2020-11-08 17:22:50', '2020-11-08 19:22:50', '', 0, 'http://localhost/wp-content/uploads/2020/11/pin.svg', 0, 'attachment', 'image/svg+xml', 0);
INSERT INTO `ent_posts` VALUES (80, 1, '2020-11-11 20:46:29', '2020-11-11 22:46:29', '', 'Blog2', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2020-11-11 20:46:29', '2020-11-11 22:46:29', '', 28, 'http://localhost/2020/11/11/28-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (81, 1, '2020-11-11 20:47:04', '2020-11-11 22:47:04', '', 'Blog', '', 'trash', 'closed', 'closed', '', 'blog__trashed', '', '', '2020-11-18 00:59:55', '2020-11-18 02:59:55', '', 0, 'http://localhost/?page_id=81', 0, 'page', '', 0);
INSERT INTO `ent_posts` VALUES (82, 1, '2020-11-11 20:47:04', '2020-11-11 22:47:04', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2020-11-11 20:47:04', '2020-11-11 22:47:04', '', 81, 'http://localhost/2020/11/11/81-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (84, 1, '2020-11-11 21:25:23', '2020-11-11 23:25:23', '', 'Blogs', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2020-11-11 21:25:23', '2020-11-11 23:25:23', '', 28, 'http://localhost/2020/11/11/28-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (91, 1, '2020-11-16 21:26:13', '2020-11-16 23:26:13', '', 'ana paula melo', '', 'trash', 'closed', 'closed', '', 'ana-paula-melo__trashed', '', '', '2020-11-16 21:36:50', '2020-11-16 23:36:50', '', 0, 'http://localhost/?post_type=profissionais&#038;p=91', 0, 'profissionais', '', 0);
INSERT INTO `ent_posts` VALUES (92, 1, '2020-11-16 21:27:53', '2020-11-16 23:27:53', '', 'o despertar da nova era da saúde', '', 'publish', 'closed', 'closed', '', 'o-despertar-da-nova-era-da-saude', '', '', '2020-11-27 22:16:44', '2020-11-28 00:16:44', '', 0, 'http://localhost/?post_type=eventos&#038;p=92', 0, 'eventos', '', 0);
INSERT INTO `ent_posts` VALUES (93, 1, '2020-11-16 21:28:18', '2020-11-16 23:28:18', '', 'mãos a obra', '', 'publish', 'closed', 'closed', '', 'maos-a-obra', '', '', '2020-12-02 00:25:57', '2020-12-02 02:25:57', '', 0, 'http://localhost/?post_type=eventos&#038;p=93', 0, 'eventos', '', 0);
INSERT INTO `ent_posts` VALUES (94, 1, '2020-11-16 21:28:27', '2020-11-16 23:28:27', '', 'Cuide do coração', '', 'publish', 'closed', 'closed', '', 'cuide-do-coracao', '', '', '2020-11-27 22:16:12', '2020-11-28 00:16:12', '', 0, 'http://localhost/?post_type=eventos&#038;p=94', 0, 'eventos', '', 0);
INSERT INTO `ent_posts` VALUES (98, 1, '2020-11-16 22:06:27', '2020-11-17 00:06:27', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"profissionais\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Conteúdo Profissional', 'conteudo-profissional', 'publish', 'closed', 'closed', '', 'group_5fb3125d1281d', '', '', '2020-11-30 22:38:04', '2020-12-01 00:38:04', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=98', 0, 'acf-field-group', '', 0);
INSERT INTO `ent_posts` VALUES (101, 1, '2020-11-16 22:06:27', '2020-11-17 00:06:27', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'icone', 'icone__profissionais', 'publish', 'closed', 'closed', '', 'field_5fb313b7d122f', '', '', '2020-11-25 22:16:08', '2020-11-26 00:16:08', '', 98, 'http://localhost/?post_type=acf-field&#038;p=101', 1, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (102, 1, '2020-11-16 22:06:27', '2020-11-17 00:06:27', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Foto', 'foto__profissionais', 'publish', 'closed', 'closed', '', 'field_5fb31398d122e', '', '', '2020-11-25 22:16:08', '2020-11-26 00:16:08', '', 98, 'http://localhost/?post_type=acf-field&#038;p=102', 2, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (103, 1, '2020-11-16 22:06:27', '2020-11-17 00:06:27', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto__profissionais', 'publish', 'closed', 'closed', '', 'field_5fb313dad1230', '', '', '2020-11-25 22:16:08', '2020-11-26 00:16:08', '', 98, 'http://localhost/?post_type=acf-field&#038;p=103', 4, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (104, 1, '2020-11-16 22:10:43', '2020-11-17 00:10:43', '', 'Bianca Mello', '', 'publish', 'closed', 'closed', '', 'ana-paula-melo', '', '', '2020-11-25 23:30:53', '2020-11-26 01:30:53', '', 0, 'http://localhost/?post_type=profissionais&#038;p=104', 0, 'profissionais', '', 0);
INSERT INTO `ent_posts` VALUES (105, 1, '2020-11-16 22:10:03', '2020-11-17 00:10:03', '', 'ferramentas', '', 'inherit', 'open', 'closed', '', 'ferramentas', '', '', '2020-11-16 22:10:03', '2020-11-17 00:10:03', '', 104, 'http://localhost/wp-content/uploads/2020/11/ferramentas.svg', 0, 'attachment', 'image/svg+xml', 0);
INSERT INTO `ent_posts` VALUES (106, 1, '2020-11-16 22:10:22', '2020-11-17 00:10:22', '', 'everton', '', 'inherit', 'open', 'closed', '', 'everton', '', '', '2020-11-16 22:10:22', '2020-11-17 00:10:22', '', 104, 'http://localhost/wp-content/uploads/2020/11/everton.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `ent_posts` VALUES (107, 1, '2020-11-16 22:11:18', '2020-11-17 00:11:18', '', 'Marília moraes', '', 'publish', 'closed', 'closed', '', 'marilia-moraes', '', '', '2020-11-25 23:33:53', '2020-11-26 01:33:53', '', 0, 'http://localhost/?post_type=profissionais&#038;p=107', 0, 'profissionais', '', 0);
INSERT INTO `ent_posts` VALUES (108, 1, '2020-11-16 22:11:40', '2020-11-17 00:11:40', '', 'Vinícius Maia', '', 'publish', 'closed', 'closed', '', '108-2', '', '', '2020-11-25 23:31:19', '2020-11-26 01:31:19', '', 0, 'http://localhost/?post_type=profissionais&#038;p=108', 0, 'profissionais', '', 0);
INSERT INTO `ent_posts` VALUES (109, 1, '2020-11-16 22:12:01', '2020-11-17 00:12:01', '', 'Fernanda dos Santos', '', 'publish', 'closed', 'closed', '', '109-2', '', '', '2020-11-25 23:32:56', '2020-11-26 01:32:56', '', 0, 'http://localhost/?post_type=profissionais&#038;p=109', 0, 'profissionais', '', 0);
INSERT INTO `ent_posts` VALUES (110, 1, '2020-11-16 22:12:28', '2020-11-17 00:12:28', '', 'marielle brito', '', 'publish', 'closed', 'closed', '', 'marielle-brito', '', '', '2020-11-25 23:33:24', '2020-11-26 01:33:24', '', 0, 'http://localhost/?post_type=profissionais&#038;p=110', 0, 'profissionais', '', 0);
INSERT INTO `ent_posts` VALUES (111, 1, '2020-11-16 22:12:47', '2020-11-17 00:12:47', '', 'Rhubia Araujo', '', 'publish', 'closed', 'closed', '', '111-2', '', '', '2020-11-25 23:32:36', '2020-11-26 01:32:36', '', 0, 'http://localhost/?post_type=profissionais&#038;p=111', 0, 'profissionais', '', 0);
INSERT INTO `ent_posts` VALUES (113, 1, '2020-11-16 22:22:55', '2020-11-17 00:22:55', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"eventos\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Conteúdo Evento', 'conteudo-evento', 'publish', 'closed', 'closed', '', 'group_5fb3162d02878', '', '', '2020-12-02 00:23:53', '2020-12-02 02:23:53', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=113', 0, 'acf-field-group', '', 0);
INSERT INTO `ent_posts` VALUES (114, 1, '2020-11-16 22:22:55', '2020-11-17 00:22:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Nome', 'nome__evento', 'publish', 'closed', 'closed', '', 'field_5fb3163957ac1', '', '', '2020-11-16 22:22:55', '2020-11-17 00:22:55', '', 113, 'http://localhost/?post_type=acf-field&p=114', 0, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (115, 1, '2020-11-16 22:22:55', '2020-11-17 00:22:55', 'a:8:{s:4:\"type\";s:16:\"date_time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:9:\"d/m/Y H:i\";s:13:\"return_format\";s:9:\"d/m/Y H:i\";s:9:\"first_day\";i:1;}', 'Data', 'data__evento', 'publish', 'closed', 'closed', '', 'field_5fb3169a57ac2', '', '', '2020-11-17 20:02:22', '2020-11-17 22:02:22', '', 113, 'http://localhost/?post_type=acf-field&#038;p=115', 1, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (116, 1, '2020-11-16 22:22:55', '2020-11-17 00:22:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Local', 'local__evento', 'publish', 'closed', 'closed', '', 'field_5fb317a957ac3', '', '', '2020-11-16 22:22:55', '2020-11-17 00:22:55', '', 113, 'http://localhost/?post_type=acf-field&p=116', 2, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (117, 1, '2020-11-16 22:22:55', '2020-11-17 00:22:55', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto__evento', 'publish', 'closed', 'closed', '', 'field_5fb317bb57ac4', '', '', '2020-11-16 22:22:55', '2020-11-17 00:22:55', '', 113, 'http://localhost/?post_type=acf-field&p=117', 3, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (118, 1, '2020-11-16 22:22:55', '2020-11-17 00:22:55', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem__evento', 'publish', 'closed', 'closed', '', 'field_5fb317cf57ac5', '', '', '2020-11-16 22:22:55', '2020-11-17 00:22:55', '', 113, 'http://localhost/?post_type=acf-field&p=118', 4, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (121, 1, '2020-11-16 22:55:45', '2020-11-17 00:55:45', '', 'Nutrição Materno Infantil', '', 'publish', 'closed', 'closed', '', 'pediatria', '', '', '2020-12-01 23:07:25', '2020-12-02 01:07:25', '', 0, 'http://localhost/?post_type=especialidades&#038;p=121', 0, 'especialidades', '', 0);
INSERT INTO `ent_posts` VALUES (123, 1, '2020-11-16 22:57:37', '2020-11-17 00:57:37', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"especialidades\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Conteúdo Especialidade', 'conteudo-especialidade', 'publish', 'closed', 'closed', '', 'group_5fb31fcdc2236', '', '', '2020-11-18 00:26:29', '2020-11-18 02:26:29', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=123', 0, 'acf-field-group', '', 0);
INSERT INTO `ent_posts` VALUES (124, 1, '2020-11-16 22:57:37', '2020-11-17 00:57:37', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto__especialidade', 'publish', 'closed', 'closed', '', 'field_5fb31fe2cff28', '', '', '2020-11-17 23:53:33', '2020-11-18 01:53:33', '', 123, 'http://localhost/?post_type=acf-field&#038;p=124', 2, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (125, 1, '2020-11-16 22:58:05', '2020-11-17 00:58:05', '', 'Pediatria', '', 'publish', 'closed', 'closed', '', 'acumpultura', '', '', '2020-12-01 23:07:25', '2020-12-02 01:07:25', '', 0, 'http://localhost/?post_type=especialidades&#038;p=125', 0, 'especialidades', '', 0);
INSERT INTO `ent_posts` VALUES (126, 1, '2020-11-16 22:58:15', '2020-11-17 00:58:15', '', 'Nutrologia', '', 'publish', 'closed', 'closed', '', 'nutricao', '', '', '2020-12-01 23:07:25', '2020-12-02 01:07:25', '', 0, 'http://localhost/?post_type=especialidades&#038;p=126', 0, 'especialidades', '', 0);
INSERT INTO `ent_posts` VALUES (127, 1, '2020-11-16 22:58:31', '2020-11-17 00:58:31', '', 'Ginecologia e obstetrícia', '', 'publish', 'closed', 'closed', '', 'psicologia', '', '', '2020-12-01 23:07:09', '2020-12-02 01:07:09', '', 0, 'http://localhost/?post_type=especialidades&#038;p=127', 0, 'especialidades', '', 0);
INSERT INTO `ent_posts` VALUES (128, 1, '2020-11-17 21:13:54', '2020-11-17 23:13:54', '', 'EVENTOS01', '', 'inherit', 'open', 'closed', '', 'eventos01', '', '', '2020-11-17 21:13:54', '2020-11-17 23:13:54', '', 94, 'http://localhost/wp-content/uploads/2020/11/EVENTOS01.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (129, 1, '2020-11-17 21:14:00', '2020-11-17 23:14:00', '', 'EVENTOS02', '', 'inherit', 'open', 'closed', '', 'eventos02', '', '', '2020-11-17 21:14:00', '2020-11-17 23:14:00', '', 94, 'http://localhost/wp-content/uploads/2020/11/EVENTOS02.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (130, 1, '2020-11-17 21:14:00', '2020-11-17 23:14:00', '', 'EVENTOS03', '', 'inherit', 'open', 'closed', '', 'eventos03', '', '', '2020-11-17 21:14:00', '2020-11-17 23:14:00', '', 94, 'http://localhost/wp-content/uploads/2020/11/EVENTOS03.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (131, 1, '2020-11-18 00:37:45', '2020-11-18 02:37:45', '', 'o despertar da nova era da saúde', '“Não há ninguém que ame a dor por si só, que a busque e queira tê-la, simplesmente ser dor…” Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat. Praesent id dui non massa molestie feugiat ac eget dolor. Cras eget pharetra nisi. Suspendisse iaculis gravida erat, in bibendum metus elementum at. Mauris a ante id mi ornare interdum ac vitae nunc. Suspendisse non eros arcu. Pellentesque convallis ligula in elit fringilla dignissim. Donec pellentesque vehicula est sed pellentesque.', 'publish', 'open', 'open', '', 'o-despertar-da-nova-era-da-saude', '', '', '2020-11-18 00:37:45', '2020-11-18 02:37:45', '', 0, 'http://localhost/?p=131', 0, 'post', '', 0);
INSERT INTO `ent_posts` VALUES (132, 1, '2020-11-17 23:51:31', '2020-11-18 01:51:31', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem Home', 'imagem-home__especialidade', 'publish', 'closed', 'closed', '', 'field_5fb47e1048d0f', '', '', '2020-11-17 23:55:30', '2020-11-18 01:55:30', '', 123, 'http://localhost/?post_type=acf-field&#038;p=132', 0, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (133, 1, '2020-11-17 23:53:33', '2020-11-18 01:53:33', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem__especialidade', 'publish', 'closed', 'closed', '', 'field_5fb47e84d36a6', '', '', '2020-11-17 23:55:30', '2020-11-18 01:55:30', '', 123, 'http://localhost/?post_type=acf-field&#038;p=133', 1, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (134, 1, '2020-11-17 23:53:56', '2020-11-18 01:53:56', '', 'cabeça', '', 'inherit', 'open', 'closed', '', 'cabeca', '', '', '2020-11-17 23:53:56', '2020-11-18 01:53:56', '', 125, 'http://localhost/wp-content/uploads/2020/11/cabeca.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (135, 1, '2020-11-17 23:53:56', '2020-11-18 01:53:56', '', 'fumaca', '', 'inherit', 'open', 'closed', '', 'fumaca', '', '', '2020-11-17 23:53:56', '2020-11-18 01:53:56', '', 125, 'http://localhost/wp-content/uploads/2020/11/fumaca.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (136, 1, '2020-11-17 23:53:57', '2020-11-18 01:53:57', '', 'meditacao', '', 'inherit', 'open', 'closed', '', 'meditacao', '', '', '2020-11-17 23:53:57', '2020-11-18 01:53:57', '', 125, 'http://localhost/wp-content/uploads/2020/11/meditacao.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (137, 1, '2020-11-17 23:53:57', '2020-11-18 01:53:57', '', 'succao', '', 'inherit', 'open', 'closed', '', 'succao', '', '', '2020-11-17 23:53:57', '2020-11-18 01:53:57', '', 125, 'http://localhost/wp-content/uploads/2020/11/succao.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (138, 1, '2020-11-17 23:54:46', '2020-11-18 01:54:46', '', 'fumaca_mobile', '', 'inherit', 'open', 'closed', '', 'fumaca_mobile', '', '', '2020-11-17 23:54:46', '2020-11-18 01:54:46', '', 125, 'http://localhost/wp-content/uploads/2020/11/fumaca_mobile.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (139, 1, '2020-11-17 23:54:46', '2020-11-18 01:54:46', '', 'pessoa_deitada_mobile', '', 'inherit', 'open', 'closed', '', 'pessoa_deitada_mobile', '', '', '2020-11-17 23:54:46', '2020-11-18 01:54:46', '', 125, 'http://localhost/wp-content/uploads/2020/11/pessoa_deitada_mobile.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (140, 1, '2020-11-17 23:54:46', '2020-11-18 01:54:46', '', 'succao_mobile', '', 'inherit', 'open', 'closed', '', 'succao_mobile', '', '', '2020-11-17 23:54:46', '2020-11-18 01:54:46', '', 125, 'http://localhost/wp-content/uploads/2020/11/succao_mobile.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (141, 1, '2020-11-17 23:54:47', '2020-11-18 01:54:47', '', 'testa_mobile', '', 'inherit', 'open', 'closed', '', 'testa_mobile', '', '', '2020-11-17 23:54:47', '2020-11-18 01:54:47', '', 125, 'http://localhost/wp-content/uploads/2020/11/testa_mobile.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (142, 1, '2020-11-18 00:26:29', '2020-11-18 02:26:29', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto Home', 'texto-home__especialidade', 'publish', 'closed', 'closed', '', 'field_5fb48644f3810', '', '', '2020-11-18 00:26:29', '2020-11-18 02:26:29', '', 123, 'http://localhost/?post_type=acf-field&p=142', 3, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (143, 1, '2020-11-18 00:35:39', '2020-11-18 02:35:39', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-11-18 00:35:39', '2020-11-18 02:35:39', '', 1, 'http://localhost/2020/11/18/1-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (144, 1, '2020-11-18 00:36:34', '2020-11-18 02:36:34', '', 'foto01', '', 'inherit', 'open', 'closed', '', 'foto01', '', '', '2020-11-18 00:36:34', '2020-11-18 02:36:34', '', 131, 'http://localhost/wp-content/uploads/2020/11/foto01.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (145, 1, '2020-11-18 00:36:34', '2020-11-18 02:36:34', '', 'foto02', '', 'inherit', 'open', 'closed', '', 'foto02', '', '', '2020-11-18 00:36:34', '2020-11-18 02:36:34', '', 131, 'http://localhost/wp-content/uploads/2020/11/foto02.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (146, 1, '2020-11-18 00:36:34', '2020-11-18 02:36:34', '', 'foto03', '', 'inherit', 'open', 'closed', '', 'foto03', '', '', '2020-11-18 00:36:34', '2020-11-18 02:36:34', '', 131, 'http://localhost/wp-content/uploads/2020/11/foto03.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (147, 1, '2020-11-18 00:36:35', '2020-11-18 02:36:35', '', 'foto04', '', 'inherit', 'open', 'closed', '', 'foto04', '', '', '2020-11-18 00:36:35', '2020-11-18 02:36:35', '', 131, 'http://localhost/wp-content/uploads/2020/11/foto04.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (148, 1, '2020-11-18 00:36:35', '2020-11-18 02:36:35', '', 'foto05', '', 'inherit', 'open', 'closed', '', 'foto05', '', '', '2020-11-18 00:36:35', '2020-11-18 02:36:35', '', 131, 'http://localhost/wp-content/uploads/2020/11/foto05.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ent_posts` VALUES (149, 1, '2020-11-18 00:37:45', '2020-11-18 02:37:45', '', 'o despertar da nova era da saúde', '“Não há ninguém que ame a dor por si só, que a busque e queira tê-la, simplesmente ser dor…” Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat. Praesent id dui non massa molestie feugiat ac eget dolor. Cras eget pharetra nisi. Suspendisse iaculis gravida erat, in bibendum metus elementum at. Mauris a ante id mi ornare interdum ac vitae nunc. Suspendisse non eros arcu. Pellentesque convallis ligula in elit fringilla dignissim. Donec pellentesque vehicula est sed pellentesque.', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2020-11-18 00:37:45', '2020-11-18 02:37:45', '', 131, 'http://localhost/2020/11/18/131-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (150, 1, '2020-11-18 00:38:27', '2020-11-18 02:38:27', '', 'o despertar da nova era da saúde', '“Não há ninguém que ame a dor por si só, que a busque e queira tê-la, simplesmente ser dor…” Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat. Praesent id dui non massa molestie feugiat ac eget dolor. Cras eget pharetra nisi. Suspendisse iaculis gravida erat, in bibendum metus elementum at. Mauris a ante id mi ornare interdum ac vitae nunc. Suspendisse non eros arcu. Pellentesque convallis ligula in elit fringilla dignissim. Donec pellentesque vehicula est sed pellentesque.', 'publish', 'open', 'open', '', 'o-despertar-da-nova-era-da-saude-2', '', '', '2020-11-18 00:38:27', '2020-11-18 02:38:27', '', 0, 'http://localhost/?p=150', 0, 'post', '', 0);
INSERT INTO `ent_posts` VALUES (151, 1, '2020-11-18 00:38:27', '2020-11-18 02:38:27', '', 'o despertar da nova era da saúde', '“Não há ninguém que ame a dor por si só, que a busque e queira tê-la, simplesmente ser dor…” Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat. Praesent id dui non massa molestie feugiat ac eget dolor. Cras eget pharetra nisi. Suspendisse iaculis gravida erat, in bibendum metus elementum at. Mauris a ante id mi ornare interdum ac vitae nunc. Suspendisse non eros arcu. Pellentesque convallis ligula in elit fringilla dignissim. Donec pellentesque vehicula est sed pellentesque.', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2020-11-18 00:38:27', '2020-11-18 02:38:27', '', 150, 'http://localhost/2020/11/18/150-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (152, 1, '2020-11-18 00:38:57', '2020-11-18 02:38:57', '', 'o despertar da nova era da saúde', '“Não há ninguém que ame a dor por si só, que a busque e queira tê-la, simplesmente ser dor…” Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat. Praesent id dui non massa molestie feugiat ac eget dolor. Cras eget pharetra nisi. Suspendisse iaculis gravida erat, in bibendum metus elementum at. Mauris a ante id mi ornare interdum ac vitae nunc. Suspendisse non eros arcu. Pellentesque convallis ligula in elit fringilla dignissim. Donec pellentesque vehicula est sed pellentesque.', 'publish', 'open', 'open', '', 'o-despertar-da-nova-era-da-saude-3', '', '', '2020-11-18 00:38:57', '2020-11-18 02:38:57', '', 0, 'http://localhost/?p=152', 0, 'post', '', 0);
INSERT INTO `ent_posts` VALUES (153, 1, '2020-11-18 00:38:57', '2020-11-18 02:38:57', '', 'o despertar da nova era da saúde', '“Não há ninguém que ame a dor por si só, que a busque e queira tê-la, simplesmente ser dor…” Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat. Praesent id dui non massa molestie feugiat ac eget dolor. Cras eget pharetra nisi. Suspendisse iaculis gravida erat, in bibendum metus elementum at. Mauris a ante id mi ornare interdum ac vitae nunc. Suspendisse non eros arcu. Pellentesque convallis ligula in elit fringilla dignissim. Donec pellentesque vehicula est sed pellentesque.', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2020-11-18 00:38:57', '2020-11-18 02:38:57', '', 152, 'http://localhost/2020/11/18/152-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (154, 1, '2020-11-18 00:39:31', '2020-11-18 02:39:31', '', 'o despertar da nova era da saúde', '“Não há ninguém que ame a dor por si só, que a busque e queira tê-la, simplesmente ser dor…” Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat. Praesent id dui non massa molestie feugiat ac eget dolor. Cras eget pharetra nisi. Suspendisse iaculis gravida erat, in bibendum metus elementum at. Mauris a ante id mi ornare interdum ac vitae nunc. Suspendisse non eros arcu. Pellentesque convallis ligula in elit fringilla dignissim. Donec pellentesque vehicula est sed pellentesque.', 'publish', 'open', 'open', '', 'o-despertar-da-nova-era-da-saude-4', '', '', '2020-11-18 00:39:31', '2020-11-18 02:39:31', '', 0, 'http://localhost/?p=154', 0, 'post', '', 0);
INSERT INTO `ent_posts` VALUES (155, 1, '2020-11-18 00:39:31', '2020-11-18 02:39:31', '', 'o despertar da nova era da saúde', '“Não há ninguém que ame a dor por si só, que a busque e queira tê-la, simplesmente ser dor…” Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat. Praesent id dui non massa molestie feugiat ac eget dolor. Cras eget pharetra nisi. Suspendisse iaculis gravida erat, in bibendum metus elementum at. Mauris a ante id mi ornare interdum ac vitae nunc. Suspendisse non eros arcu. Pellentesque convallis ligula in elit fringilla dignissim. Donec pellentesque vehicula est sed pellentesque.', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2020-11-18 00:39:31', '2020-11-18 02:39:31', '', 154, 'http://localhost/2020/11/18/154-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (156, 1, '2020-11-18 00:40:13', '2020-11-18 02:40:13', '', 'o despertar da nova era da saúde', '“Não há ninguém que ame a dor por si só, que a busque e queira tê-la, simplesmente ser dor…” Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat. Praesent id dui non massa molestie feugiat ac eget dolor. Cras eget pharetra nisi. Suspendisse iaculis gravida erat, in bibendum metus elementum at. Mauris a ante id mi ornare interdum ac vitae nunc. Suspendisse non eros arcu. Pellentesque convallis ligula in elit fringilla dignissim. Donec pellentesque vehicula est sed pellentesque.', 'publish', 'open', 'open', '', 'o-despertar-da-nova-era-da-saude-5', '', '', '2020-11-18 00:40:13', '2020-11-18 02:40:13', '', 0, 'http://localhost/?p=156', 0, 'post', '', 0);
INSERT INTO `ent_posts` VALUES (157, 1, '2020-11-18 00:40:13', '2020-11-18 02:40:13', '', 'o despertar da nova era da saúde', '“Não há ninguém que ame a dor por si só, que a busque e queira tê-la, simplesmente ser dor…” Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam arcu nulla, elementum et sem cursus, ornare porta lacus. Phasellus non euismod urna. Etiam sodales dolor eu lectus aliquet ultricies. Pellentesque id nunc id lorem lobortis mattis et sit amet mauris. Vestibulum bibendum est at risus placerat egestas. Proin rutrum feugiat mi, sed vehicula est bibendum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies sapien sed dolor fermentum placerat. Praesent id dui non massa molestie feugiat ac eget dolor. Cras eget pharetra nisi. Suspendisse iaculis gravida erat, in bibendum metus elementum at. Mauris a ante id mi ornare interdum ac vitae nunc. Suspendisse non eros arcu. Pellentesque convallis ligula in elit fringilla dignissim. Donec pellentesque vehicula est sed pellentesque.', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2020-11-18 00:40:13', '2020-11-18 02:40:13', '', 156, 'http://localhost/2020/11/18/156-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (158, 1, '2020-11-18 01:09:02', '2020-11-18 03:09:02', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2020-11-18 01:09:02', '2020-11-18 03:09:02', '', 28, 'http://localhost/2020/11/18/28-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (159, 1, '2020-11-19 22:02:21', '2020-11-20 00:02:21', '', 'Especialidades', '', 'publish', 'closed', 'closed', '', 'especialidades', '', '', '2020-11-19 22:07:54', '2020-11-20 00:07:54', '', 0, 'http://localhost/?p=159', 3, 'nav_menu_item', '', 0);
INSERT INTO `ent_posts` VALUES (160, 1, '2020-11-19 22:02:21', '2020-11-20 00:02:21', '', 'Profissionais', '', 'publish', 'closed', 'closed', '', 'profissionais', '', '', '2020-11-19 22:07:54', '2020-11-20 00:07:54', '', 0, 'http://localhost/?p=160', 4, 'nav_menu_item', '', 0);
INSERT INTO `ent_posts` VALUES (161, 1, '2020-11-19 22:06:03', '2020-11-20 00:06:03', '', 'blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-11-19 22:06:03', '2020-11-20 00:06:03', '', 0, 'http://localhost/?page_id=161', 0, 'page', '', 0);
INSERT INTO `ent_posts` VALUES (162, 1, '2020-11-19 22:06:03', '2020-11-20 00:06:03', '', 'blog', '', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2020-11-19 22:06:03', '2020-11-20 00:06:03', '', 161, 'http://localhost/2020/11/19/161-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (163, 1, '2020-11-19 22:07:46', '2020-11-20 00:07:46', ' ', '', '', 'publish', 'closed', 'closed', '', '163', '', '', '2020-11-19 22:07:54', '2020-11-20 00:07:54', '', 0, 'http://localhost/?p=163', 6, 'nav_menu_item', '', 0);
INSERT INTO `ent_posts` VALUES (165, 1, '2020-11-23 23:29:58', '2020-11-24 01:29:58', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-11-23 23:29:58', '2020-11-24 01:29:58', '', 5, 'http://localhost/2020/11/23/5-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (166, 1, '2020-11-24 00:00:56', '2020-11-24 02:00:56', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link Instagram', 'link_instagram_profi', 'publish', 'closed', 'closed', '', 'field_5fbc69300a240', '', '', '2020-11-25 22:16:08', '2020-11-26 00:16:08', '', 98, 'http://localhost/?post_type=acf-field&#038;p=166', 3, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (167, 1, '2020-11-24 23:42:43', '2020-11-25 01:42:43', '', 'Nutrição Materno Infantil', '', 'inherit', 'closed', 'closed', '', '121-autosave-v1', '', '', '2020-11-24 23:42:43', '2020-11-25 01:42:43', '', 121, 'http://localhost/2020/11/24/121-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (168, 1, '2020-11-24 23:47:20', '2020-11-25 01:47:20', '', 'Consultoria de Amamentação', '', 'publish', 'closed', 'closed', '', 'consultoria-de-amamentacao', '', '', '2020-12-01 23:07:09', '2020-12-02 01:07:09', '', 0, 'http://localhost/?post_type=especialidades&#038;p=168', 0, 'especialidades', '', 0);
INSERT INTO `ent_posts` VALUES (169, 1, '2020-11-24 23:47:41', '2020-11-25 01:47:41', '', 'Reumatopediatria', '', 'publish', 'closed', 'closed', '', 'reumatopediatria', '', '', '2020-12-01 23:07:25', '2020-12-02 01:07:25', '', 0, 'http://localhost/?post_type=especialidades&#038;p=169', 0, 'especialidades', '', 0);
INSERT INTO `ent_posts` VALUES (170, 1, '2020-11-24 23:48:01', '2020-11-25 01:48:01', '', 'Alergia/ Imunologia Pediátrica', '', 'publish', 'closed', 'closed', '', 'alergia-imunologia-pediatrica', '', '', '2020-12-01 23:07:09', '2020-12-02 01:07:09', '', 0, 'http://localhost/?post_type=especialidades&#038;p=170', 0, 'especialidades', '', 0);
INSERT INTO `ent_posts` VALUES (171, 1, '2020-11-24 23:48:19', '2020-11-25 01:48:19', '', 'Otorrinolaringologia', '', 'publish', 'closed', 'closed', '', 'otorrinolaringologia', '', '', '2020-12-01 23:07:25', '2020-12-02 01:07:25', '', 0, 'http://localhost/?post_type=especialidades&#038;p=171', 0, 'especialidades', '', 0);
INSERT INTO `ent_posts` VALUES (172, 1, '2020-11-24 23:50:39', '2020-11-25 01:50:39', '', 'Fonoaudiologia', '', 'publish', 'closed', 'closed', '', 'fonoaudiologia', '', '', '2020-12-01 23:07:09', '2020-12-02 01:07:09', '', 0, 'http://localhost/?post_type=especialidades&#038;p=172', 0, 'especialidades', '', 0);
INSERT INTO `ent_posts` VALUES (173, 1, '2020-11-24 23:50:58', '2020-11-25 01:50:58', '', 'Fisioterapia', '', 'publish', 'closed', 'closed', '', 'fisioterapia', '', '', '2020-12-01 23:07:09', '2020-12-02 01:07:09', '', 0, 'http://localhost/?post_type=especialidades&#038;p=173', 0, 'especialidades', '', 0);
INSERT INTO `ent_posts` VALUES (174, 1, '2020-11-24 23:51:16', '2020-11-25 01:51:16', '', 'Psicologia Comportamental', '', 'publish', 'closed', 'closed', '', 'psicologia-comportamental', '', '', '2020-12-01 23:07:25', '2020-12-02 01:07:25', '', 0, 'http://localhost/?post_type=especialidades&#038;p=174', 0, 'especialidades', '', 0);
INSERT INTO `ent_posts` VALUES (175, 1, '2020-11-24 23:51:34', '2020-11-25 01:51:34', '', 'Endocrinologia Pediátrica', '', 'publish', 'closed', 'closed', '', 'endocrinologia-pediatrica', '', '', '2020-12-01 23:07:09', '2020-12-02 01:07:09', '', 0, 'http://localhost/?post_type=especialidades&#038;p=175', 0, 'especialidades', '', 0);
INSERT INTO `ent_posts` VALUES (176, 1, '2020-11-24 23:51:53', '2020-11-25 01:51:53', '', 'Odontologia', '', 'publish', 'closed', 'closed', '', 'odontologia', '', '', '2020-12-01 23:07:25', '2020-12-02 01:07:25', '', 0, 'http://localhost/?post_type=especialidades&#038;p=176', 0, 'especialidades', '', 0);
INSERT INTO `ent_posts` VALUES (177, 1, '2020-11-25 22:16:08', '2020-11-26 00:16:08', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Destaque', 'destaque', 'publish', 'closed', 'closed', '', 'field_5fbef380ac83d', '', '', '2020-11-25 22:16:08', '2020-11-26 00:16:08', '', 98, 'http://localhost/?post_type=acf-field&p=177', 0, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (178, 1, '2020-11-25 23:29:33', '2020-11-26 01:29:33', '', 'Bianca Mello', '', 'inherit', 'closed', 'closed', '', '104-autosave-v1', '', '', '2020-11-25 23:29:33', '2020-11-26 01:29:33', '', 104, 'http://localhost/2020/11/25/104-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO `ent_posts` VALUES (179, 1, '2020-11-25 23:34:30', '2020-11-26 01:34:30', '', 'Laís G Tomé', '', 'publish', 'closed', 'closed', '', 'lais-g-tome', '', '', '2020-11-25 23:35:43', '2020-11-26 01:35:43', '', 0, 'http://localhost/?post_type=profissionais&#038;p=179', 0, 'profissionais', '', 0);
INSERT INTO `ent_posts` VALUES (180, 1, '2020-11-25 23:35:25', '2020-11-26 01:35:25', '', 'Marina Perez', '', 'publish', 'closed', 'closed', '', 'marina-perez', '', '', '2020-11-25 23:35:25', '2020-11-26 01:35:25', '', 0, 'http://localhost/?post_type=profissionais&#038;p=180', 0, 'profissionais', '', 0);
INSERT INTO `ent_posts` VALUES (181, 1, '2020-11-25 23:36:37', '2020-11-26 01:36:37', '', 'Annelyse Pereira', '', 'publish', 'closed', 'closed', '', 'annelyse-pereira', '', '', '2020-11-25 23:36:37', '2020-11-26 01:36:37', '', 0, 'http://localhost/?post_type=profissionais&#038;p=181', 0, 'profissionais', '', 0);
INSERT INTO `ent_posts` VALUES (182, 1, '2020-11-25 23:37:05', '2020-11-26 01:37:05', '', 'Andrea Baldi', '', 'publish', 'closed', 'closed', '', 'andrea-baldi', '', '', '2020-11-25 23:47:21', '2020-11-26 01:47:21', '', 0, 'http://localhost/?post_type=profissionais&#038;p=182', 0, 'profissionais', '', 0);
INSERT INTO `ent_posts` VALUES (183, 1, '2020-11-25 23:37:33', '2020-11-26 01:37:33', '', 'Ligia Conte', '', 'publish', 'closed', 'closed', '', 'ligia-conte', '', '', '2020-11-25 23:38:31', '2020-11-26 01:38:31', '', 0, 'http://localhost/?post_type=profissionais&#038;p=183', 0, 'profissionais', '', 0);
INSERT INTO `ent_posts` VALUES (184, 1, '2020-11-25 23:38:56', '2020-11-26 01:38:56', '', 'Juliana Schio', '', 'publish', 'closed', 'closed', '', 'juliana-schio', '', '', '2020-11-25 23:40:56', '2020-11-26 01:40:56', '', 0, 'http://localhost/?post_type=profissionais&#038;p=184', 0, 'profissionais', '', 0);
INSERT INTO `ent_posts` VALUES (185, 1, '2020-11-25 23:40:59', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-11-25 23:40:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/?post_type=profissionais&p=185', 0, 'profissionais', '', 0);
INSERT INTO `ent_posts` VALUES (186, 1, '2020-11-25 23:41:25', '2020-11-26 01:41:25', '', 'Ana Paula Melo', '', 'publish', 'closed', 'closed', '', 'ana-paula-melo-2', '', '', '2020-11-30 22:30:57', '2020-12-01 00:30:57', '', 0, 'http://localhost/?post_type=profissionais&#038;p=186', 0, 'profissionais', '', 0);
INSERT INTO `ent_posts` VALUES (187, 1, '2020-11-25 23:42:09', '2020-11-26 01:42:09', '', 'Natalia Valli de Almeida', '', 'publish', 'closed', 'closed', '', 'natalia-valli-de-almeida', '', '', '2020-11-25 23:42:09', '2020-11-26 01:42:09', '', 0, 'http://localhost/?post_type=profissionais&#038;p=187', 0, 'profissionais', '', 0);
INSERT INTO `ent_posts` VALUES (188, 1, '2020-11-25 23:42:43', '2020-11-26 01:42:43', '', 'Daniela Rinaldi', '', 'publish', 'closed', 'closed', '', 'daniela-rinaldi', '', '', '2020-11-25 23:42:43', '2020-11-26 01:42:43', '', 0, 'http://localhost/?post_type=profissionais&#038;p=188', 0, 'profissionais', '', 0);
INSERT INTO `ent_posts` VALUES (189, 1, '2020-11-30 22:21:06', '2020-12-01 00:21:06', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:14:\"especialidades\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:1;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'Especialidades', 'especialidades__prof', 'publish', 'closed', 'closed', '', 'field_5fc58bfc234a4', '', '', '2020-11-30 22:38:04', '2020-12-01 00:38:04', '', 98, 'http://localhost/?post_type=acf-field&#038;p=189', 5, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (190, 1, '2020-11-30 22:28:00', '2020-12-01 00:28:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:90:\"Caso não encontre a Especialidade no campo acima, preencha esse campo, separando por \",\".\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Outras Especialidades', 'outras_especialidades', 'publish', 'closed', 'closed', '', 'field_5fc58d6a5f649', '', '', '2020-11-30 22:29:24', '2020-12-01 00:29:24', '', 98, 'http://localhost/?post_type=acf-field&#038;p=190', 6, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (191, 1, '2020-12-02 00:10:27', '2020-12-02 02:10:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link do Evento', 'link_do_evento', 'publish', 'closed', 'closed', '', 'field_5fc6f77ff3873', '', '', '2020-12-02 00:10:27', '2020-12-02 02:10:27', '', 113, 'http://localhost/?post_type=acf-field&p=191', 5, 'acf-field', '', 0);
INSERT INTO `ent_posts` VALUES (192, 1, '2020-12-02 00:13:24', '2020-12-02 02:13:24', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Cor escura do texto sobre a imagem', 'cor_escura', 'publish', 'closed', 'closed', '', 'field_5fc6f812e05a5', '', '', '2020-12-02 00:14:34', '2020-12-02 02:14:34', '', 113, 'http://localhost/?post_type=acf-field&#038;p=192', 6, 'acf-field', '', 0);

-- ----------------------------
-- Table structure for ent_term_relationships
-- ----------------------------
DROP TABLE IF EXISTS `ent_term_relationships`;
CREATE TABLE `ent_term_relationships`  (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`, `term_taxonomy_id`) USING BTREE,
  INDEX `term_taxonomy_id`(`term_taxonomy_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ent_term_relationships
-- ----------------------------
INSERT INTO `ent_term_relationships` VALUES (1, 1, 0);
INSERT INTO `ent_term_relationships` VALUES (46, 2, 0);
INSERT INTO `ent_term_relationships` VALUES (48, 2, 0);
INSERT INTO `ent_term_relationships` VALUES (49, 2, 0);
INSERT INTO `ent_term_relationships` VALUES (51, 2, 0);
INSERT INTO `ent_term_relationships` VALUES (92, 4, 0);
INSERT INTO `ent_term_relationships` VALUES (92, 28, 0);
INSERT INTO `ent_term_relationships` VALUES (93, 3, 0);
INSERT INTO `ent_term_relationships` VALUES (93, 27, 0);
INSERT INTO `ent_term_relationships` VALUES (94, 4, 0);
INSERT INTO `ent_term_relationships` VALUES (94, 28, 0);
INSERT INTO `ent_term_relationships` VALUES (104, 15, 0);
INSERT INTO `ent_term_relationships` VALUES (107, 21, 0);
INSERT INTO `ent_term_relationships` VALUES (108, 16, 0);
INSERT INTO `ent_term_relationships` VALUES (109, 10, 0);
INSERT INTO `ent_term_relationships` VALUES (110, 9, 0);
INSERT INTO `ent_term_relationships` VALUES (111, 17, 0);
INSERT INTO `ent_term_relationships` VALUES (121, 11, 0);
INSERT INTO `ent_term_relationships` VALUES (121, 27, 0);
INSERT INTO `ent_term_relationships` VALUES (125, 12, 0);
INSERT INTO `ent_term_relationships` VALUES (125, 27, 0);
INSERT INTO `ent_term_relationships` VALUES (126, 13, 0);
INSERT INTO `ent_term_relationships` VALUES (126, 27, 0);
INSERT INTO `ent_term_relationships` VALUES (127, 14, 0);
INSERT INTO `ent_term_relationships` VALUES (127, 28, 0);
INSERT INTO `ent_term_relationships` VALUES (131, 1, 0);
INSERT INTO `ent_term_relationships` VALUES (150, 1, 0);
INSERT INTO `ent_term_relationships` VALUES (152, 1, 0);
INSERT INTO `ent_term_relationships` VALUES (154, 1, 0);
INSERT INTO `ent_term_relationships` VALUES (156, 1, 0);
INSERT INTO `ent_term_relationships` VALUES (159, 2, 0);
INSERT INTO `ent_term_relationships` VALUES (160, 2, 0);
INSERT INTO `ent_term_relationships` VALUES (163, 2, 0);
INSERT INTO `ent_term_relationships` VALUES (168, 28, 0);
INSERT INTO `ent_term_relationships` VALUES (169, 27, 0);
INSERT INTO `ent_term_relationships` VALUES (170, 28, 0);
INSERT INTO `ent_term_relationships` VALUES (171, 27, 0);
INSERT INTO `ent_term_relationships` VALUES (172, 28, 0);
INSERT INTO `ent_term_relationships` VALUES (173, 28, 0);
INSERT INTO `ent_term_relationships` VALUES (174, 27, 0);
INSERT INTO `ent_term_relationships` VALUES (175, 28, 0);
INSERT INTO `ent_term_relationships` VALUES (176, 27, 0);
INSERT INTO `ent_term_relationships` VALUES (179, 18, 0);
INSERT INTO `ent_term_relationships` VALUES (180, 19, 0);
INSERT INTO `ent_term_relationships` VALUES (181, 20, 0);
INSERT INTO `ent_term_relationships` VALUES (182, 22, 0);
INSERT INTO `ent_term_relationships` VALUES (183, 23, 0);
INSERT INTO `ent_term_relationships` VALUES (184, 24, 0);
INSERT INTO `ent_term_relationships` VALUES (186, 25, 0);
INSERT INTO `ent_term_relationships` VALUES (187, 26, 0);
INSERT INTO `ent_term_relationships` VALUES (188, 15, 0);

-- ----------------------------
-- Table structure for ent_term_taxonomy
-- ----------------------------
DROP TABLE IF EXISTS `ent_term_taxonomy`;
CREATE TABLE `ent_term_taxonomy`  (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`) USING BTREE,
  UNIQUE INDEX `term_id_taxonomy`(`term_id`, `taxonomy`) USING BTREE,
  INDEX `taxonomy`(`taxonomy`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ent_term_taxonomy
-- ----------------------------
INSERT INTO `ent_term_taxonomy` VALUES (1, 1, 'category', '', 0, 5);
INSERT INTO `ent_term_taxonomy` VALUES (2, 2, 'nav_menu', '', 0, 7);
INSERT INTO `ent_term_taxonomy` VALUES (3, 3, 'tipo', '', 0, 1);
INSERT INTO `ent_term_taxonomy` VALUES (4, 4, 'tipo', '', 0, 2);
INSERT INTO `ent_term_taxonomy` VALUES (5, 5, 'profissao', '', 0, 0);
INSERT INTO `ent_term_taxonomy` VALUES (6, 6, 'profissao', '', 0, 0);
INSERT INTO `ent_term_taxonomy` VALUES (7, 7, 'profissao', '', 0, 0);
INSERT INTO `ent_term_taxonomy` VALUES (8, 8, 'profissao', '', 0, 0);
INSERT INTO `ent_term_taxonomy` VALUES (9, 9, 'profissao', '', 0, 1);
INSERT INTO `ent_term_taxonomy` VALUES (10, 10, 'profissao', '', 0, 1);
INSERT INTO `ent_term_taxonomy` VALUES (11, 11, 'tipo-especialidade', '', 0, 1);
INSERT INTO `ent_term_taxonomy` VALUES (12, 12, 'tipo-especialidade', '', 0, 1);
INSERT INTO `ent_term_taxonomy` VALUES (13, 13, 'tipo-especialidade', '', 0, 1);
INSERT INTO `ent_term_taxonomy` VALUES (14, 14, 'tipo-especialidade', '', 0, 1);
INSERT INTO `ent_term_taxonomy` VALUES (15, 15, 'profissao', '', 0, 2);
INSERT INTO `ent_term_taxonomy` VALUES (16, 16, 'profissao', '', 0, 1);
INSERT INTO `ent_term_taxonomy` VALUES (17, 17, 'profissao', '', 0, 1);
INSERT INTO `ent_term_taxonomy` VALUES (18, 18, 'profissao', '', 0, 1);
INSERT INTO `ent_term_taxonomy` VALUES (19, 19, 'profissao', '', 0, 1);
INSERT INTO `ent_term_taxonomy` VALUES (20, 20, 'profissao', '', 0, 1);
INSERT INTO `ent_term_taxonomy` VALUES (21, 21, 'profissao', '', 0, 1);
INSERT INTO `ent_term_taxonomy` VALUES (22, 22, 'profissao', '', 0, 1);
INSERT INTO `ent_term_taxonomy` VALUES (23, 23, 'profissao', '', 0, 1);
INSERT INTO `ent_term_taxonomy` VALUES (24, 24, 'profissao', '', 0, 1);
INSERT INTO `ent_term_taxonomy` VALUES (25, 25, 'profissao', '', 0, 1);
INSERT INTO `ent_term_taxonomy` VALUES (26, 26, 'profissao', '', 0, 1);
INSERT INTO `ent_term_taxonomy` VALUES (27, 27, 'faixa-etaria', '', 0, 7);
INSERT INTO `ent_term_taxonomy` VALUES (28, 28, 'faixa-etaria', '', 0, 6);

-- ----------------------------
-- Table structure for ent_termmeta
-- ----------------------------
DROP TABLE IF EXISTS `ent_termmeta`;
CREATE TABLE `ent_termmeta`  (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`meta_id`) USING BTREE,
  INDEX `term_id`(`term_id`) USING BTREE,
  INDEX `meta_key`(`meta_key`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ent_termmeta
-- ----------------------------

-- ----------------------------
-- Table structure for ent_terms
-- ----------------------------
DROP TABLE IF EXISTS `ent_terms`;
CREATE TABLE `ent_terms`  (
  `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`) USING BTREE,
  INDEX `slug`(`slug`(191)) USING BTREE,
  INDEX `name`(`name`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ent_terms
-- ----------------------------
INSERT INTO `ent_terms` VALUES (1, 'Sem categoria', 'sem-categoria', 0);
INSERT INTO `ent_terms` VALUES (2, 'Menu 1', 'menu-1', 0);
INSERT INTO `ent_terms` VALUES (3, 'presencial', 'presencial', 0);
INSERT INTO `ent_terms` VALUES (4, 'online', 'online', 0);
INSERT INTO `ent_terms` VALUES (5, 'Endocrinopediatria', 'endocrinopediatria', 0);
INSERT INTO `ent_terms` VALUES (6, 'Alergia Pediátrica', 'alergia-pediatrica', 0);
INSERT INTO `ent_terms` VALUES (7, 'Terapeuta Xamânico', 'terapeuta-xamanico', 0);
INSERT INTO `ent_terms` VALUES (8, 'Marketing Manager', 'marketing-manager', 0);
INSERT INTO `ent_terms` VALUES (9, 'Otorrinolaringologista', 'otorrinolaringologista', 0);
INSERT INTO `ent_terms` VALUES (10, 'Pediatra', 'pediatra', 0);
INSERT INTO `ent_terms` VALUES (11, 'Pediatria', 'pediatria', 0);
INSERT INTO `ent_terms` VALUES (12, 'Acumpultura', 'acumpultura', 0);
INSERT INTO `ent_terms` VALUES (13, 'nutrição', 'nutricao', 0);
INSERT INTO `ent_terms` VALUES (14, 'psicologia', 'psicologia', 0);
INSERT INTO `ent_terms` VALUES (15, 'Pediatria e Sala de Parto', 'pediatria-e-sala-de-parto', 0);
INSERT INTO `ent_terms` VALUES (16, 'Nutrologia', 'nutrologia', 0);
INSERT INTO `ent_terms` VALUES (17, 'Nutrição Materno Infantil', 'nutricao-materno-infantil', 0);
INSERT INTO `ent_terms` VALUES (18, 'Ginecologia', 'ginecologia', 0);
INSERT INTO `ent_terms` VALUES (19, 'Nutrição e Consultoria de Amamentação', 'nutricao-e-consultoria-de-amamentacao', 0);
INSERT INTO `ent_terms` VALUES (20, 'Pediatria e Reumatopediatria', 'pediatria-e-reumatopediatria', 0);
INSERT INTO `ent_terms` VALUES (21, 'Pediatria e Alergista', 'pediatria-e-alergista', 0);
INSERT INTO `ent_terms` VALUES (22, 'Fonoaudiologia', 'fonoaudiologia', 0);
INSERT INTO `ent_terms` VALUES (23, 'Fisioterapia', 'fisioterapia', 0);
INSERT INTO `ent_terms` VALUES (24, 'Psicologia', 'psicologia', 0);
INSERT INTO `ent_terms` VALUES (25, 'Pediatria e Endocrinologia Pediátrica', 'pediatria-e-endocrinologia-pediatrica', 0);
INSERT INTO `ent_terms` VALUES (26, 'Ortodontia', 'ortodontia', 0);
INSERT INTO `ent_terms` VALUES (27, 'Infantil', 'infantil', 0);
INSERT INTO `ent_terms` VALUES (28, 'Adulto', 'adulto', 0);

-- ----------------------------
-- Table structure for ent_usermeta
-- ----------------------------
DROP TABLE IF EXISTS `ent_usermeta`;
CREATE TABLE `ent_usermeta`  (
  `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`umeta_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `meta_key`(`meta_key`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ent_usermeta
-- ----------------------------
INSERT INTO `ent_usermeta` VALUES (1, 1, 'nickname', 'codeduck');
INSERT INTO `ent_usermeta` VALUES (2, 1, 'first_name', '');
INSERT INTO `ent_usermeta` VALUES (3, 1, 'last_name', '');
INSERT INTO `ent_usermeta` VALUES (4, 1, 'description', '');
INSERT INTO `ent_usermeta` VALUES (5, 1, 'rich_editing', 'true');
INSERT INTO `ent_usermeta` VALUES (6, 1, 'syntax_highlighting', 'true');
INSERT INTO `ent_usermeta` VALUES (7, 1, 'comment_shortcuts', 'false');
INSERT INTO `ent_usermeta` VALUES (8, 1, 'admin_color', 'fresh');
INSERT INTO `ent_usermeta` VALUES (9, 1, 'use_ssl', '0');
INSERT INTO `ent_usermeta` VALUES (10, 1, 'show_admin_bar_front', 'true');
INSERT INTO `ent_usermeta` VALUES (11, 1, 'locale', '');
INSERT INTO `ent_usermeta` VALUES (12, 1, 'ent_capabilities', 'a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `ent_usermeta` VALUES (13, 1, 'ent_user_level', '10');
INSERT INTO `ent_usermeta` VALUES (14, 1, 'dismissed_wp_pointers', '');
INSERT INTO `ent_usermeta` VALUES (15, 1, 'show_welcome_panel', '1');
INSERT INTO `ent_usermeta` VALUES (16, 1, 'session_tokens', 'a:2:{s:64:\"4a390b31ce31ad81826f7944fe5e1e6e2f47ee021212dd6c49cde626e86bb09c\";a:4:{s:10:\"expiration\";i:1607038662;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36\";s:5:\"login\";i:1605829062;}s:64:\"34d2f197969fcff8377f7390b13d9d1367df4f0043e58fe68845a51ddec70d54\";a:4:{s:10:\"expiration\";i:1607043982;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36\";s:5:\"login\";i:1606871182;}}');
INSERT INTO `ent_usermeta` VALUES (17, 1, 'ent_dashboard_quick_press_last_post_id', '164');
INSERT INTO `ent_usermeta` VALUES (18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `ent_usermeta` VALUES (19, 1, 'ent_user-settings', 'libraryContent=browse');
INSERT INTO `ent_usermeta` VALUES (20, 1, 'ent_user-settings-time', '1604710392');
INSERT INTO `ent_usermeta` VALUES (21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `ent_usermeta` VALUES (22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `ent_usermeta` VALUES (23, 1, 'closedpostboxes_page', 'a:0:{}');
INSERT INTO `ent_usermeta` VALUES (24, 1, 'metaboxhidden_page', 'a:0:{}');
INSERT INTO `ent_usermeta` VALUES (25, 1, 'nav_menu_recently_edited', '2');
INSERT INTO `ent_usermeta` VALUES (26, 1, 'closedpostboxes_profissionais', 'a:0:{}');
INSERT INTO `ent_usermeta` VALUES (27, 1, 'metaboxhidden_profissionais', 'a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `ent_usermeta` VALUES (28, 1, 'meta-box-order_toplevel_page_acf-options-header-e-footer', 'a:2:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:123:\"acf-group_59e5270abcc53,acf-group_5f62bd09f1070,acf-group_5f2624199df95,acf-group_5d37fdfd270c41085,acf-group_5f5e0f25b63af\";}');
INSERT INTO `ent_usermeta` VALUES (29, 1, 'screen_layout_toplevel_page_acf-options-header-e-footer', '2');

-- ----------------------------
-- Table structure for ent_users
-- ----------------------------
DROP TABLE IF EXISTS `ent_users`;
CREATE TABLE `ent_users`  (
  `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT 0,
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `user_login_key`(`user_login`) USING BTREE,
  INDEX `user_nicename`(`user_nicename`) USING BTREE,
  INDEX `user_email`(`user_email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ent_users
-- ----------------------------
INSERT INTO `ent_users` VALUES (1, 'codeduck', '$P$B/gTyyfhJkFnVaCBChq0P/2/hrZp5e0', 'codeduck', 'jsemeaomen@hotmail.com', 'http://localhost', '2020-11-06 23:12:42', '', 0, 'codeduck');

SET FOREIGN_KEY_CHECKS = 1;
