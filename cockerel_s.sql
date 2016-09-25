-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Sep 25, 2016 at 02:38 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cockerel_s`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=4601 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/cockerel_s', 'yes'),
(2, 'home', 'http://localhost/cockerel_s', 'yes'),
(3, 'blogname', 'Cockerel_s', 'yes'),
(4, 'blogdescription', 'Cockerel_s base theme', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nicholas.guest@roostergrin.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:10:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:17:"bantam/bantam.php";i:2;s:47:"bootstrap-3-shortcodes/bootstrap-shortcodes.php";i:3;s:25:"bwp-minify/bwp-minify.php";i:4;s:36:"contact-form-7/wp-contact-form-7.php";i:5;s:65:"html-editor-syntax-highlighter/html-editor-syntax-highlighter.php";i:6;s:24:"rooster-slider/index.php";i:7;s:47:"rvg-optimize-database/rvg-optimize-database.php";i:8;s:29:"versionpress/versionpress.php";i:9;s:31:"wp-lightbox-2/wp-lightbox-2.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '-8', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'cockerel_s', 'yes'),
(42, 'stylesheet', 'cockerel_s', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '36686', 'yes'),
(50, 'uploads_use_yearmonth_folders', '', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'none', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:47:"rvg-optimize-database/rvg-optimize-database.php";a:2:{i:0;s:16:"OptimizeDatabase";i:1;s:26:"odb_uninstallation_handler";}}', 'no'),
(83, 'timezone_string', '', 'yes'),
(85, 'page_on_front', '416', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31535', 'yes'),
(89, 'wp_user_roles', 'a:6:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:79:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"manage_slp";b:1;s:16:"manage_slp_admin";b:1;s:15:"manage_slp_user";b:1;s:20:"manage_wpsl_settings";b:1;s:10:"edit_store";b:1;s:10:"read_store";b:1;s:12:"delete_store";b:1;s:11:"edit_stores";b:1;s:18:"edit_others_stores";b:1;s:14:"publish_stores";b:1;s:19:"read_private_stores";b:1;s:13:"delete_stores";b:1;s:21:"delete_private_stores";b:1;s:23:"delete_published_stores";b:1;s:20:"delete_others_stores";b:1;s:19:"edit_private_stores";b:1;s:21:"edit_published_stores";b:1;s:10:"copy_posts";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:26:"wpsl_store_locator_manager";a:2:{s:4:"name";s:21:"Store Locator Manager";s:12:"capabilities";a:37:{s:4:"read";b:1;s:10:"edit_posts";b:1;s:12:"delete_posts";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:19:"delete_others_pages";b:1;s:19:"delete_others_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:17:"edit_others_pages";b:1;s:17:"edit_others_posts";b:1;s:10:"edit_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:20:"edit_published_pages";b:1;s:20:"edit_published_posts";b:1;s:17:"moderate_comments";b:1;s:13:"publish_pages";b:1;s:13:"publish_posts";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_store";b:1;s:10:"read_store";b:1;s:12:"delete_store";b:1;s:11:"edit_stores";b:1;s:18:"edit_others_stores";b:1;s:14:"publish_stores";b:1;s:19:"read_private_stores";b:1;s:13:"delete_stores";b:1;s:21:"delete_private_stores";b:1;s:23:"delete_published_stores";b:1;s:20:"delete_others_stores";b:1;s:19:"edit_private_stores";b:1;s:21:"edit_published_stores";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:4:{i:0;s:14:"recent-posts-2";i:1;s:17:"recent-comments-2";i:2;s:12:"categories-2";i:3;s:10:"archives-2";}s:9:"sidebar-1";a:0:{}s:18:"orphaned_widgets_1";a:1:{i:0;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:5:{i:1474416036;a:1:{s:44:"vp_commit_frequently_written_entities_hourly";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1474449156;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1474492402;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1474497254;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(108, '_transient_random_seed', 'c1f1ccbcad47cd253ae8c4d432002fa6', 'yes'),
(132, 'recently_activated', 'a:0:{}', 'yes'),
(134, 'theme_mods_twentyfifteen', 'a:2:{s:18:"nav_menu_locations";a:2:{s:7:"primary";i:2;s:6:"social";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1451610457;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:5:{i:0;s:6:"meta-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:12:"categories-2";i:4;s:10:"archives-2";}s:18:"orphaned_widgets_1";a:0:{}}}}', 'yes'),
(135, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(137, '_transient_twentyfifteen_categories', '1', 'yes'),
(154, 'current_theme', 'cockerel_s-child', 'yes'),
(155, 'theme_mods_Corsa', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1435080109;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:15:"default_sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:12:"footer_first";N;s:13:"footer_second";N;s:12:"footer_third";N;}}}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(157, 'Corsa_options', 'a:142:{s:17:"responsive_layout";s:1:"1";s:9:"preloader";s:15:"Shows Spinner 1";s:15:"fullscreen_home";s:1:"1";s:17:"home_align_center";s:1:"1";s:11:"custom_logo";s:0:"";s:11:"logo_height";s:2:"50";s:18:"logo_height_mobile";s:2:"30";s:12:"logo_as_text";s:1:"1";s:9:"logo_text";s:5:"Corsa";s:14:"custom_favicon";s:0:"";s:13:"tracking_code";s:0:"";s:12:"color_scheme";s:10:"White Cyan";s:20:"change_header_colors";s:1:"0";s:17:"header_background";s:4:"#fff";s:29:"header_background_alternative";s:7:"#f5f5f5";s:13:"header_border";s:7:"#e8e8e8";s:17:"header_navigation";s:4:"#666";s:23:"header_navigation_hover";s:4:"#444";s:24:"header_navigation_active";s:7:"#31c5c7";s:26:"change_main_content_colors";s:1:"0";s:15:"main_background";s:4:"#fff";s:27:"main_background_alternative";s:7:"#f2f2f2";s:11:"main_border";s:7:"#e8e8e8";s:9:"main_text";s:4:"#444";s:12:"main_primary";s:7:"#31c5c7";s:14:"main_secondary";s:4:"#444";s:9:"main_fade";s:4:"#999";s:31:"change_alternate_content_colors";s:1:"0";s:14:"alt_background";s:7:"#f2f2f2";s:26:"alt_background_alternative";s:4:"#fff";s:10:"alt_border";s:4:"#ddd";s:8:"alt_text";s:4:"#444";s:11:"alt_primary";s:7:"#31c5c7";s:13:"alt_secondary";s:4:"#444";s:8:"alt_fade";s:4:"#999";s:20:"change_footer_colors";s:1:"0";s:17:"footer_background";s:4:"#333";s:13:"footer_border";s:4:"#444";s:11:"footer_text";s:4:"#999";s:11:"footer_link";s:7:"#31c5c7";s:17:"footer_link_hover";s:4:"#fff";s:10:"custom_css";s:0:"";s:17:"header_full_width";s:1:"1";s:15:"header_position";s:30:"At the TOP of the Home Section";s:16:"header_is_sticky";s:1:"1";s:16:"mobile_nav_width";s:4:"1024";s:21:"header_menu_togglable";s:1:"0";s:19:"header_show_socials";s:1:"1";s:20:"facebook_header_link";s:0:"";s:19:"twitter_header_link";s:0:"";s:18:"google_header_link";s:0:"";s:20:"linkedin_header_link";s:0:"";s:19:"youtube_header_link";s:0:"";s:17:"vimeo_header_link";s:0:"";s:18:"flickr_header_link";s:0:"";s:21:"instagram_header_link";s:0:"";s:19:"behance_header_link";s:0:"";s:21:"pinterest_header_link";s:0:"";s:17:"skype_header_link";s:0:"";s:18:"tumblr_header_link";s:0:"";s:20:"dribbble_header_link";s:0:"";s:14:"vk_header_link";s:0:"";s:16:"xing_header_link";s:0:"";s:16:"yelp_header_link";s:0:"";s:18:"twitch_header_link";s:0:"";s:22:"soundcloud_header_link";s:0:"";s:19:"footer_show_widgets";s:1:"1";s:16:"footer_copyright";s:61:"Built by <a href="http://www.roostergrin.com">Roostergrin</a>";s:19:"footer_show_socials";s:1:"1";s:13:"facebook_link";s:0:"";s:12:"twitter_link";s:0:"";s:11:"google_link";s:0:"";s:13:"linkedin_link";s:0:"";s:12:"youtube_link";s:0:"";s:10:"vimeo_link";s:0:"";s:11:"flickr_link";s:0:"";s:14:"instagram_link";s:0:"";s:12:"behance_link";s:0:"";s:14:"pinterest_link";s:0:"";s:10:"skype_link";s:0:"";s:11:"tumblr_link";s:0:"";s:13:"dribbble_link";s:0:"";s:7:"vk_link";s:0:"";s:9:"xing_link";s:0:"";s:9:"yelp_link";s:0:"";s:11:"twitch_link";s:0:"";s:15:"soundcloud_link";s:0:"";s:12:"heading_font";s:5:"Dosis";s:23:"heading_font_weight_200";s:1:"0";s:23:"heading_font_weight_300";s:1:"0";s:23:"heading_font_weight_400";s:1:"1";s:23:"heading_font_weight_600";s:1:"0";s:23:"heading_font_weight_700";s:1:"1";s:25:"heading_font_style_italic";s:1:"0";s:11:"h1_fontsize";s:2:"54";s:18:"h1_fontsize_mobile";s:2:"30";s:11:"h2_fontsize";s:2:"44";s:18:"h2_fontsize_mobile";s:2:"26";s:11:"h3_fontsize";s:2:"36";s:18:"h3_fontsize_mobile";s:2:"24";s:11:"h4_fontsize";s:2:"30";s:18:"h4_fontsize_mobile";s:2:"22";s:11:"h5_fontsize";s:2:"24";s:18:"h5_fontsize_mobile";s:2:"20";s:11:"h6_fontsize";s:2:"20";s:18:"h6_fontsize_mobile";s:2:"18";s:14:"body_text_font";s:7:"PT Sans";s:20:"body_font_weight_200";s:1:"0";s:20:"body_font_weight_300";s:1:"0";s:20:"body_font_weight_400";s:1:"1";s:20:"body_font_weight_600";s:1:"0";s:20:"body_font_weight_700";s:1:"1";s:22:"body_font_style_italic";s:1:"1";s:16:"regular_fontsize";s:2:"16";s:23:"regular_fontsize_mobile";s:2:"14";s:18:"regular_lineheight";s:2:"26";s:25:"regular_lineheight_mobile";s:2:"24";s:15:"navigation_font";s:5:"Dosis";s:19:"nav_font_weight_200";s:1:"0";s:19:"nav_font_weight_300";s:1:"0";s:19:"nav_font_weight_400";s:1:"0";s:19:"nav_font_weight_600";s:1:"0";s:19:"nav_font_weight_700";s:1:"1";s:21:"nav_font_style_italic";s:1:"0";s:12:"nav_fontsize";s:2:"17";s:19:"nav_fontsize_mobile";s:2:"17";s:15:"subnav_fontsize";s:2:"15";s:22:"subnav_fontsize_mobile";s:2:"15";s:11:"font_subset";s:5:"latin";s:19:"blog_excerpt_length";s:2:"22";s:16:"blog_sidebar_pos";s:10:"No Sidebar";s:16:"post_sidebar_pos";s:10:"No Sidebar";s:18:"contact_form_email";s:0:"";s:25:"contact_form_button_align";s:6:"Center";s:23:"contact_form_name_field";s:15:"Shown, required";s:24:"contact_form_email_field";s:15:"Shown, required";s:24:"contact_form_phone_field";s:15:"Shown, required";s:26:"contact_form_message_field";s:15:"Shown, required";s:25:"contact_form_button_color";s:21:"Primary (theme color)";s:24:"contact_form_button_text";s:12:"Send Message";s:20:"themeforest_username";s:0:"";s:19:"themeforest_api_key";s:0:"";}', 'yes'),
(158, 'us_custom_css_version', '1.7.3', 'yes'),
(161, 'WPLANG', '', 'yes'),
(169, 'theme_mods_Corsa-child', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:15:"corsa-main-menu";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1435192095;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:4:{i:0;s:14:"recent-posts-2";i:1;s:17:"recent-comments-2";i:2;s:12:"categories-2";i:3;s:10:"archives-2";}s:15:"default_sidebar";a:1:{i:0;s:8:"search-2";}s:12:"footer_first";a:1:{i:0;s:6:"meta-2";}s:13:"footer_second";a:0:{}s:12:"footer_third";a:0:{}}}}', 'yes'),
(170, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(171, 'widget_contact', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(172, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(173, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(175, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(180, 'metaslider_systemcheck', 'a:2:{s:16:"wordPressVersion";b:0;s:12:"imageLibrary";b:0;}', 'yes'),
(181, 'ml-slider_children', 'a:0:{}', 'yes'),
(215, 'widget_metaslider_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(217, 'theme_mods_test_s', 'a:6:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:12:"header_image";s:69:"http://localhost/wordpress/wp-content/uploads/2015/06/logo-filler.png";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:35;s:3:"url";s:69:"http://localhost/wordpress/wp-content/uploads/2015/06/logo-filler.png";s:13:"thumbnail_url";s:69:"http://localhost/wordpress/wp-content/uploads/2015/06/logo-filler.png";s:6:"height";i:50;s:5:"width";i:250;}s:16:"header_textcolor";s:5:"blank";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1435597802;s:4:"data";a:4:{s:15:"default_sidebar";a:1:{i:0;s:8:"search-2";}s:12:"footer_first";a:1:{i:0;s:6:"meta-2";}s:19:"wp_inactive_widgets";a:4:{i:0;s:14:"recent-posts-2";i:1;s:17:"recent-comments-2";i:2;s:12:"categories-2";i:3;s:10:"archives-2";}s:9:"sidebar-1";a:0:{}}}}', 'yes'),
(218, 'theme_switched_via_customizer', '', 'yes'),
(310, 'wpcf7', 'a:1:{s:7:"version";s:3:"4.5";}', 'yes'),
(354, 'theme_mods_cockerel_s', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:2;s:8:"shiftnav";i:2;}s:12:"header_image";s:13:"remove-header";}', 'yes'),
(362, 'testimonial_slider_scounter', '1', 'yes'),
(368, 'widget_testimonial_ssliderc_wid', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(369, 'widget_testimonial_ssliderr_wid', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(370, 'widget_testimonial_sslider_wid', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(378, 'testimonial_category_children', 'a:0:{}', 'yes'),
(444, 'acf_version', '4.4.9', 'yes'),
(506, 'my_option_name', 'a:6:{s:4:"mode";s:10:"horizontal";s:5:"speed";s:4:"2000";s:8:"controls";s:4:"true";s:5:"pager";s:5:"false";s:11:"randomstart";s:4:"true";s:4:"auto";s:4:"true";}', 'yes'),
(519, 'shiftnav_shiftnav-main', 'a:6:{s:12:"display_main";s:2:"on";s:4:"edge";s:4:"left";s:10:"swipe_open";s:3:"off";s:4:"skin";s:13:"standard-dark";s:15:"indent_submenus";s:3:"off";s:18:"display_site_title";s:2:"on";}', 'yes'),
(520, 'shiftnav_togglebar', 'a:12:{s:14:"display_toggle";s:2:"on";s:10:"breakpoint";s:3:"640";s:15:"hide_theme_menu";s:0:"";s:13:"hide_ubermenu";s:3:"off";s:14:"toggle_content";s:0:"";s:13:"toggle_target";s:11:"burger_only";s:17:"toggle_close_icon";s:1:"x";s:15:"toggle_position";s:5:"fixed";s:5:"align";s:6:"center";s:16:"background_color";s:0:"";s:10:"text_color";s:0:"";s:9:"font_size";s:0:"";}', 'yes'),
(521, 'shiftnav_general', '', 'yes'),
(602, 'theme_mods_cockerel_s-child', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:8:"shiftnav";i:2;s:7:"primary";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1451606791;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:4:{i:0;s:14:"recent-posts-2";i:1;s:17:"recent-comments-2";i:2;s:12:"categories-2";i:3;s:10:"archives-2";}s:9:"sidebar-1";a:0:{}s:18:"orphaned_widgets_1";a:1:{i:0;s:6:"meta-2";}}}}', 'yes'),
(1152, 'db_upgraded', '', 'yes'),
(1155, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:30:"nicholas.guest@roostergrin.com";s:7:"version";s:5:"4.5.4";s:9:"timestamp";i:1473797980;}', 'yes'),
(1338, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1474412061;s:7:"checked";a:1:{s:10:"cockerel_s";s:5:"1.0.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(1937, 'bs_options', 'a:12:{s:23:"chk_default_options_css";s:1:"1";s:22:"chk_default_options_js";s:1:"1";s:24:"chk_default_options_grid";s:1:"1";s:24:"chk_default_options_tabs";s:1:"1";s:28:"chk_default_options_collapse";s:1:"1";s:26:"chk_default_options_alerts";s:1:"1";s:25:"chk_default_options_wells";s:1:"1";s:27:"chk_default_options_buttons";s:1:"1";s:26:"chk_default_options_labels";s:1:"1";s:25:"chk_default_options_icons";s:1:"1";s:24:"chk_default_options_lead";s:1:"1";s:27:"chk_default_options_tooltip";s:1:"1";}', 'yes'),
(2131, 'csl-slplus-db_version', '4.3.14', 'yes'),
(2132, 'csl-slplus-installed_base_version', '4.3.14', 'yes'),
(2134, 'csl-slplus-options_nojs', 'a:31:{s:24:"admin_locations_per_page";s:2:"10";s:19:"broadcast_timestamp";i:1446250804;s:12:"build_target";s:10:"production";s:16:"data_is_extended";b:0;s:15:"default_country";s:12:"unitedstates";s:20:"extended_data_tested";s:1:"0";s:13:"force_load_js";s:1:"0";s:16:"google_client_id";s:0:"";s:18:"google_private_key";s:0:"";s:17:"has_extended_data";s:0:"";s:12:"http_timeout";s:2:"10";s:12:"instructions";s:65:"Enter an address or zip code and click the find locations button.";s:21:"invalid_query_message";s:60:"Store Locator Plus did not send back a valid JSONP response.";s:11:"label_image";s:5:"Image";s:11:"label_hours";s:5:"Hours";s:10:"map_height";s:3:"480";s:16:"map_height_units";s:2:"px";s:12:"map_language";s:2:"en";s:9:"map_width";s:3:"100";s:15:"map_width_units";s:1:"%";s:20:"max_results_returned";s:2:"25";s:13:"next_field_id";i:1;s:17:"next_field_ported";s:1:"1";s:22:"php_max_execution_time";s:3:"600";s:15:"premium_user_id";s:0:"";s:23:"premium_subscription_id";s:0:"";s:14:"remove_credits";s:1:"1";s:19:"retry_maximum_delay";s:3:"5.0";s:16:"slplus_plugindir";s:97:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/";s:15:"slplus_basename";s:37:"store-locator-le/store-locator-le.php";s:5:"theme";s:19:"twentyfifteen_rev02";}', 'yes'),
(2135, 'slplus_broadcast', '<style type="text/css">div#socialbar {\n    padding-right: 30px;\n    position: absolute;\n    right: 1px;\n    text-align: center;\n    top: 1px;\n}\n#socialbar img {\n    margin-top: 6px;\n}\ndiv.csa_details {\n    margin-left: 30px;\n}\n\n/* From JetPack */\n.csa-module-container {\n    overflow: hidden;\n    min-width: 740px;\n    margin: 25px 0;\n    width: 100%;\n}\n\n.csa-top-module p,\n.csa-top-module div\n{\n    padding-left: 2em;\n}\n.csa-top-module ul {\n    padding-left: 50px;\n    list-style: disc;\n}\n\n.csa-module {\n	position: relative;\n	float: left;\n	width: 210px;\n	min-height: 160px;\n	max-height: 220px;\n	margin: 0 0 15px 15px;\n	border: 1px solid #dedede;\n	-moz-border-radius: 3px;\n	-webkit-border-radius: 3px;\n	border-radius: 3px;\n	background: #fff;\n	padding: 15px 0 35px 15px;\n	-webkit-box-shadow: inset 0 1px 0 #fff, inset 0 0 20px rgba(0,0,0,0.05), 0 1px 2px rgba( 0,0,0,0.1 );\n	-moz-box-shadow: inset 0 1px 0 #fff, inset 0 0 20px rgba(0,0,0,0.05), 0 1px 2px rgba( 0,0,0,0.1 );\n	box-shadow: inset 0 1px 0 #fff, inset 0 0 20px rgba(0,0,0,0.05), 0 1px 2px rgba( 0,0,0,0.1 );\n	-webkit-transition-duration: .4s;\n	-moz-transition-duration: .4s\n}\n\n.csa-module.active {\n    background-color: #FFFFDD;\n}\n.csa-module.active-info {\n    background-color: #F0F0F0;\n}\n\n.csa-module.outdated {\n    background-color: #EEEECC;\n}\n\n.csa-module-installed {\n    color: #888;\n}\n\n\n.csa-module-description p {\n    line-height: 1.2em;\n    font-family: Georgia,"Times New Roman","Bitstream Charter",Times,serif;\n    margin-bottom: 1.2em;\n    padding-right: 1em;\n    color: #666;\n}\n\n.csa-module .csa-module-actions {\n    position: absolute;\n    bottom: 20px;\n    left: 15px;\n    background: transparent;\n    display: block;\n    width: 200px;\n}\n\n.csa-module .csa-module-actions a {\n    position: relative;\n    font-weight: bold;\n    color: #888;\n    font-family: "Helvetica Neue",Helvetica,Arial,"Lucida Grande",Verdana,"Bitstream Vera Sans",sans-serif;\n}\n\n.csa-module div.module-image {\n    float: right;\n    margin: 0 0 5px 10px;\n    padding: 0;\n    background: #444488;\n    width: 60px;\n	border: 1px solid #dedede;\n    -webkit-border-top-left-radius: 3px;\n    -moz-border-radius-topleft: 3px;\n    border-top-left-radius: 3px;\n    -webkit-border-bottom-left-radius: 3px;\n    -moz-border-radius-bottomleft: 3px;\n    border-bottom-left-radius: 3px;\n    background-repeat: no-repeat;\n}\n\n.csa-module div.module-image p {\n    background-color: #444488;\n    color: #fff;\n    text-shadow: 1px 1px 0px rgba(0,0,0,0.2);\n    text-align: center;\n    margin: 0;\n    padding: 0;\n    clear: both;\n    font-family: "Helvetica Neue",Helvetica,Arial,"Lucida Grande",Verdana,"Bitstream Vera Sans",sans-serif;\n    -webkit-font-smoothing: antialiased;\n    -webkit-border-bottom-left-radius: 2px;\n    -moz-border-radius-bottomleft: 2px;\n    border-bottom-left-radius: 2px;\n}\n.csa-module-meta {\n    color: #AAA;\n    display: inline-block;\n    font-size: 10px;\n    padding-left: 9px;\n    text-align:left;\n    vertical-align: text-bottom;\n}\n\n#wpcsl-option-plugin_news {\n    padding-top: 0.25em;\n}</style><h4>CSA News Feed</h4><p style="padding-left: 15px;">From the <a href="http://www.charlestonsw.com/mindset/news-and-info/" target="csa">Latests News</a> feed on the CSA website.</p><p style="padding-left: 30px;">Thu, 15 Oct 2015 : <a href="http://www.storelocatorplus.com/slp-base-plugin-4-3-14-fixes-blank-map-style-and-zoom-adjustments-tagalong-updated-and-enhanced-and-premier-pack-4-3-04-new-features/" target="csa">SLP base plugin 4.3.14 fixes Blank Map style and Zoom adjustments, Tagalong updated and enhanced, and Premier Pack 4.3.04 New features</a></p><p style="padding-left: 30px;">Mon, 12 Oct 2015 : <a href="http://www.storelocatorplus.com/widgets-4-3-02-store-locator-plus-4-3-13-and-pages-4-3-02-released-for-production-site-download/" target="csa">Widgets 4.3.02 , Store Locator Plus 4.3.13 , and  Pages 4.3.02 Released for Production site download</a></p><p style="padding-left: 30px;">Mon, 05 Oct 2015 : <a href="http://www.storelocatorplus.com/pages-add-on-to-store-locator-plus-is-in-pre-release-4-3-01-patches-and-a-new-default-template/" target="csa">Pages Add-on to Store Locator Plus is in Pre-release 4.3.01: Patches and a new Default Template</a></p><p style="padding-left: 30px;">Tue, 22 Sep 2015 : <a href="http://www.storelocatorplus.com/store-locator-plus-4-3-09-patches-and-enhancement-modal-pop-up-map-rendering/" target="csa">Store Locator Plus 4.3.09 Patches and Enhancement: Modal Pop-up Map rendering</a></p><p style="padding-left: 30px;">Tue, 22 Sep 2015 : <a href="http://www.storelocatorplus.com/php-switch-vs-if-performance/" target="csa">PHP Switch Vs If Performance</a></p><p style="padding-left: 30px;">Fri, 18 Sep 2015 : <a href="http://www.storelocatorplus.com/increase-in-wordpress-malware-detected-by-sucuri/" target="csa">Increase In WordPress Malware Detected by Sucuri</a></p><p style="padding-left: 30px;">Tue, 15 Sep 2015 : <a href="http://www.storelocatorplus.com/store-locator-plus-release-4-3-08-patches-php-time-out-jquery-version-warning-modifiers-in-results/" target="csa">Store Locator Plus release 4.3.08 patches PhP  time-out,  jQuery version warning, modifiers in results.</a></p><p style="padding-left: 30px;">Tue, 15 Sep 2015 : <a href="http://www.storelocatorplus.com/store-locator-plus-premier-release-4-3-02-adds-new-search-and-results-layout-and-styling-functions/" target="csa">Store Locator Plus Premier Release 4.3.02 Adds New Search and Results Layout and Styling Functions</a></p><p style="padding-left: 30px;">Tue, 08 Sep 2015 : <a href="http://www.storelocatorplus.com/store-locator-plus-4-3-07-release-patches-the-results-listing-closest-to-farthest-and-adds-new-feature-for-enhanced-layouts/" target="csa">Store Locator Plus 4.3.07 release patches the results listing, closest to farthest, and adds new feature for Enhanced layouts</a></p><p style="padding-left: 30px;">Thu, 03 Sep 2015 : <a href="http://www.storelocatorplus.com/store-locator-plus-release-4-3-06-effects-wpml-interface/" target="csa">Store Locator Plus  Release  4.3.06 effects WPML interface</a></p><div class="csa-top-module"><h4>Rate This Plugin</h4>\n<p>\n    The best way to support my work is to <a href="http://wordpress.org/support/view/plugin-reviews/store-locator-le/" target="csa">rate this plugin at the WordPress directory</a>.<br/>\n    If you do not feel the plugin has earned 5 stars, please <a href="http://www.storelocatorplus.com/mindset/contact-us/" target="csa">let me know why</a> and give me the opportunity to address your concerns.\n</p>\n\n\n<!-- Follow -->\n<h4>Follow Me</h4>\n<p>\n    Store Locator Plus updates are posted on my blog and Twitter feeds:<br/>\n    <a href="http://www.storelocatorplus.com/news-and-info"             rel="nofollow" target="csa"><img src="http://www.storelocatorplus.com/paypal/ico-blog.png"              alt="Blog" title="Blog"></a>\n    <a href="https://twitter.com/locatorplus"                           rel="nofollow" target="csa"><img src="http://www.storelocatorplus.com/paypal/ico-social-twitter.png"    alt="Twitter"  title="Twitter" ></a>\n    <a href="https://www.youtube.com/channel/UCy4jpDFyx3NHZmxslD5d5zQ"  rel="nofollow" target="csa"><img src="http://www.storelocatorplus.com/paypal/ico-social-youtube.png"    alt="YouTube"  title="YouTube" ></a>\n</p>\n\n<!-- Issues -->\n<h4>Need Help?</h4>\n<p>The most common cause is not upgrading your add-on packs after upgrading the base base plugin.  Visit the <a href="http://www.storelocatorplus.com/" target="csa">CSA website</a> for more info.\nThe latest versions are listed in the Premium Add-On Packs table below.\n</p>\n\n<p>\n    Still having issues?  The best way to get help is via the forums:<br/>\n    <a href="http://www.storelocatorplus.com/forums/forum/support-2/"   rel="nofollow" target="csa"><img src="http://www.storelocatorplus.com/paypal/ico-forum.png"   alt="Forum" title="Forum"></a>\n    <a href="http://www.storelocatorplus.com/mindset/contact-us/"       rel="nofollow" target="csa"><img src="http://www.storelocatorplus.com/paypal/email.png"       alt="Email" title="Email"></a>\n</p>\n\n<!-- Translate -->\n<h4>Looking For Translators</h4>\n<p>\n    Help <a href="http://www.storelocatorplus.com/support/documentation/store-locator-plus/user-experience/map/countries-and-languages/" target="csa">translate the plugin</a> into a new language, get free stuff!\n</p>\n<div class="csa-module-actions"><a class="button-secondary more-info-link" target="csa" href="http://www.charlestonsw.com/product/store-locator-plus-4">Learn More</a></div></div><br/><h3>Premium Add-On Packs</h3><p style="padding-left: 18px;">Buying add-on packs supports development of future releases.<br/>Everything you see here and on my website is created by one guy working from a home office.<br/>Every purchase helps.  Think of it as a donation with benefits!</p><div class="csa-module-container"><div class="csa-module csa-newline" style="height: 176px;"><h4>Contact Extender</h4><div class="csa-module-description"><p>Add a dozen new contact related fields to you location data.\n    Extended data fields work like built-in fields including location editing, importing, results output, info bubble output, and SEO page output.\n</p>\n</div><div class="csa-module-actions"><a class="button-secondary more-info-link" target="csa" href="http://www.charlestonsw.com/product/slp4-contact-extender">Buy Now</a><span class="csa-module-meta">2015-08-18</span></div></div><div class="csa-module csa-newline" style="height: 176px;"><h4>Directory Builder</h4><div class="csa-module-description"><p>Create directory lists based on location data.\n    Automatically generate lists of cities, states, and countries where you have a presence with live links to the locator map.\n</p>\n</div><div class="csa-module-actions"><a class="button-secondary more-info-link" target="csa" href="http://www.charlestonsw.com/product/directory-builder">Buy Now</a><span class="csa-module-meta">2015-08-18</span></div></div><div class="csa-module csa-newline" style="height: 176px;"><h4>Enhanced Map</h4><div class="csa-module-description"><p>Get more control over the map look-and-feel with more map settings and info bubble layout controls.</p>\n</div><div class="csa-module-actions"><a class="button-secondary more-info-link" target="csa" href="http://www.charlestonsw.com/product/slp4-enhanced-map">Buy Now</a><span class="csa-module-meta">2015-08-18</span></div></div><div class="csa-module csa-newline" style="height: 176px;"><h4>Enhanced Results</h4><div class="csa-module-description"><p>Manage the search results with a variety of settings, sort orders, and HTML and shortcode control over the results layout.</p></div><div class="csa-module-actions"><a class="button-secondary more-info-link" target="csa" href="http://www.charlestonsw.com/product/slp4-enhanced-results">Buy Now</a><span class="csa-module-meta">2015-09-9</span></div></div><div class="csa-module csa-newline" style="height: 176px;"><h4>Enhanced Search</h4><div class="csa-module-description"><p>Modify the search layout using HTML and shortcodes, change the find button text, and more.</p></div><div class="csa-module-actions"><a class="button-secondary more-info-link" target="csa" href="http://www.charlestonsw.com/product/slp4-enhanced-search">Buy Now</a><span class="csa-module-meta">2015-09-3</span></div></div><div class="csa-module csa-newline" style="height: 176px;"><h4>Location Extender</h4><div class="csa-module-description"><p>Add a dozen new location related fields to you location data.\n    Extended data fields work like built-in fields including location editing, importing, results output, info bubble output, and SEO page output.\n</p>\n</div><div class="csa-module-actions"><a class="button-secondary more-info-link" target="csa" href="http://www.charlestonsw.com/product/slp4-location-extender">Buy Now</a><span class="csa-module-meta"></span></div></div><div class="csa-module csa-newline" style="height: 176px;"><h4>Pro Pack</h4><div class="csa-module-description"><p>Enterprise updates to Store Locator Plus including\n    bulk import and overall map page layout control with HTML and shortcodes.\n    Manage locations en masse.\n</p></div><div class="csa-module-actions"><a class="button-secondary more-info-link" target="csa" href="http://www.charlestonsw.com/product/slp4-pro">Buy Now</a><span class="csa-module-meta">2015-09-15</span></div></div><div class="csa-module csa-newline" style="height: 176px;"><h4>Social Media Extender</h4><div class="csa-module-description"><p>Add social media links for ANY social site to your locations. Pre-configured with FaceBook and Twitter ready-to-go.</p></div><div class="csa-module-actions"><a class="button-secondary more-info-link" target="csa" href="http://www.charlestonsw.com/product/slp4-social-media-extender">Buy Now</a><span class="csa-module-meta">2015-09-1</span></div></div><div class="csa-module csa-newline" style="height: 176px;"><h4>Store Pages</h4><div class="csa-module-description"><p>\nTurn your Store Locator Plus data into SEO friendly Store Pages, a special WordPress page type built from your location data.  \nManage the pages and categories without affecting the rest of your site.</p></div><div class="csa-module-actions"><a class="button-secondary more-info-link" target="csa" href="http://www.charlestonsw.com/product/slp4-store-pages">Buy Now</a><span class="csa-module-meta">2015-10-6</span></div></div><div class="csa-module csa-newline" style="height: 176px;"><h4>Tagalong</h4><div class="csa-module-description"><p>Assign custom store categories to your store locations.  Tagalong categories can display custom map markers.  Compatible with Store Pages categories.</p></div><div class="csa-module-actions"><a class="button-secondary more-info-link" target="csa" href="http://www.charlestonsw.com/product/slp4-tagalong">Buy Now</a><span class="csa-module-meta">2015-10-14</span></div></div><div class="csa-module csa-newline" style="height: 176px;"><h4>User Managed Locations</h4><div class="csa-module-description"><p>Allow selected users to add, edit, delete and otherwise manage locations they own or have been assigned.</p></div><div class="csa-module-actions"><a class="button-secondary more-info-link" target="csa" href="http://www.charlestonsw.com/product/slp4-user-managed-locations">Buy Now</a><span class="csa-module-meta">2015-08-23</span></div></div><div class="csa-module csa-newline" style="height: 176px;"><h4>Widgets</h4><div class="csa-module-description"><p>Add a location finder widget to your sidebar, or any widget-enabled area, of your site. Provides a mini-search form and results listing in the sidebar.</p></div><div class="csa-module-actions"><a class="button-secondary more-info-link" target="csa" href="http://www.charlestonsw.com/product/slp4-widgets">Buy Now</a><span class="csa-module-meta">2015-10-12</span></div></div><div class="csa-module active-info" style="height: 176px;"><h4>About Add On Packs</h4><div class="csa-module-description"><p>Active add-on packs are highlighted and show the "Learn More" button.<br/><br/>Go to the Store Locator Plus Info Tab / Plugin Environment to see your current add-on versions. </p></div></div></div>', 'yes'),
(2136, 'slplus_addon_versions', 'a:0:{}', 'yes'),
(2144, 'sl_map_radii', '10,(25),50,100', 'yes'),
(2145, 'sl_radius_label', 'Within', 'yes'),
(2146, 'sl_search_label', 'Address / Zip', 'yes'),
(2147, 'csl-slplus-theme', 'twentyfifteen_rev02', 'yes'),
(2148, 'csl-slplus-options', 'a:21:{s:12:"bubblelayout";s:2075:"<div id="sl_info_bubble" class="[slp_location featured]">\n    <span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span>\n    <span id="slp_bubble_address">[slp_location address       suffix  br]</span>\n    <span id="slp_bubble_address2">[slp_location address2      suffix  br]</span>\n    <span id="slp_bubble_city">[slp_location city          suffix  comma]</span>\n    <span id="slp_bubble_state">[slp_location state suffix    space]</span>\n    <span id="slp_bubble_zip">[slp_location zip suffix  br]</span>\n    <span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span>\n    <span id="slp_bubble_directions">[html br ifset directions]\n    [slp_option label_directions wrap directions]</span>\n    <span id="slp_bubble_website">[html br ifset url]\n    [slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span>\n    <span id="slp_bubble_email">[slp_location email         wrap    mailto ][slp_option label_email ifset email][html closing_anchor ifset email][html br ifset email]</span>\n    <span id="slp_bubble_phone">[html br ifset phone]\n    <span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span>\n    <span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span>\n    <span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description]\n    [slp_location description raw]</span>[html br ifset description]</span>\n    <span id="slp_bubble_hours">[html br ifset hours]\n    <span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span>\n    <span class="location_detail_hours">[slp_location hours         suffix    br]</span></span>\n    <span id="slp_bubble_img">[html br ifset img]\n    [slp_location image         wrap    img]</span>\n    <span id="slp_tags">[slp_location tags]</span>\n    </div>";s:13:"distance_unit";s:5:"miles";s:26:"immediately_show_locations";s:1:"1";s:14:"initial_radius";s:5:"10000";s:24:"initial_results_returned";s:2:"25";s:16:"label_directions";s:10:"Directions";s:9:"label_fax";s:3:"Fax";s:11:"label_email";s:5:"Email";s:11:"label_phone";s:5:"Phone";s:13:"label_website";s:7:"Website";s:10:"map_center";s:45:"450 Sutter Street, \r\nSan Francisco,\r\nCA 94108";s:10:"map_domain";s:15:"maps.google.com";s:12:"map_end_icon";s:92:"//localhost:3004/orthoworks/wp-content/plugins/store-locator-le/images/icons/bulb_orange.png";s:13:"map_home_icon";s:92:"//localhost:3004/orthoworks/wp-content/plugins/store-locator-le/images/icons/bulb_orange.png";s:8:"map_type";s:7:"roadmap";s:11:"no_autozoom";s:1:"0";s:20:"no_homeicon_at_start";s:1:"1";s:14:"slplus_version";s:6:"4.3.11";s:10:"zoom_level";s:2:"12";s:10:"zoom_tweak";s:1:"1";s:13:"ignore_radius";s:1:"0";}', 'yes'),
(2195, 'csl-slplus-theme_lastupdated', '1446250987', 'yes'),
(2197, 'csl-slplus-theme_array', 'a:40:{s:21:"Above All Revision 01";s:12:"above_all_01";s:33:"Above And Beyond NyloBoard Rev 01";s:29:"above_and_beyond_nyloboard_01";s:33:"Above And Beyond NyloBoard Rev 02";s:29:"above_and_beyond_nyloboard_02";s:11:"Basic Boxes";s:16:"csl-slplus-boxed";s:7:"Bellard";s:7:"bellard";s:14:"Bellard RT (A)";s:10:"bellard-rt";s:28:"Beside And Below Genesis (A)";s:24:"beside_and_below_genesis";s:17:"Beside Myself (A)";s:13:"beside_myself";s:25:"Beside Myself Results (A)";s:21:"beside_myself_results";s:21:"Beside The Point 2012";s:20:"beside_thepoint_2012";s:28:"Beside The Point 2012 Rev 02";s:23:"beside_thepoint_2012_02";s:33:"Beside The Point NyloBoard Rev 01";s:29:"beside_the_point_nyloboard_01";s:14:"Big Map Rev 01";s:9:"bigmap_01";s:11:"Blank Theme";s:5:"blank";s:24:"Blank Theme with Map Fix";s:12:"blank_mapfix";s:21:"Boxed Fast Food Theme";s:25:"csl-slplus-boxed-fastfood";s:11:"Brewery 1.0";s:7:"brewery";s:18:"Clean Simple White";s:27:"csl-slplus-cleansimplewhite";s:17:"Dark SLPlus Theme";s:15:"csl-slplus-dark";s:13:"Default Theme";s:7:"default";s:18:"Default Theme 2014";s:12:"default_2014";s:20:"Default Theme Rev 02";s:10:"default_02";s:28:"Default Theme WP 2015 Rev 01";s:7:"default";s:18:"Default Theme, Old";s:11:"default_old";s:17:"Elogix Compatible";s:9:"wp-elogix";s:8:"Fournier";s:8:"fournier";s:18:"Genesis Monochrome";s:18:"genesis_monochrome";s:14:"Hidden Results";s:25:"csl-slplus-noresultstable";s:29:"iThemes Herschel NyloBoard 01";s:29:"ithemes_herschel_nyloboard_01";s:18:"Labels Above Input";s:20:"csl-slplus-toplabels";s:16:"No Map Displayed";s:16:"csl-slplus-nomap";s:13:"No Map Rev 02";s:11:"nomap-rev02";s:9:"On Myself";s:9:"on_myself";s:28:"Simple White Four Column (A)";s:17:"simple-white-4col";s:15:"Sky Walk Rev 01";s:10:"skywalk_01";s:18:"The Original Theme";s:10:"csl-slplus";s:21:"Twenty Fifteen Rev 02";s:19:"twentyfifteen_rev02";s:21:"Twenty Fifteen Rev 03";s:19:"twentyfifteen_rev03";s:22:"Twenty Fourteen Rev 01";s:18:"twenty_fourteen_01";s:13:"Woo Memorable";s:13:"woo-memorable";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2198, 'csl-slplus-theme_details', 'a:39:{s:12:"above_all_01";a:10:{s:7:"add-ons";s:79:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search, slp-tagalong";s:11:"description";s:261:"Search above map and results.  Results to left of map.  Feature locations highlighted.  Show Tagalong legend below the map. For best results: turn off name and address field labels and use placeholders instead. Styled for use on the Genesis / News Pro WP Theme.";s:4:"file";s:12:"above_all_01";s:5:"label";s:21:"Above All Revision 01";s:10:"PRO.layout";s:517:"<div id="sl_div"><div id="sl_top"><div id="search_box"><div id="search_box_header">Find A Counselor Near You</div><div id="search_box_form">[slp_search]</div></div></div><div id="sl_bottom"><div id="sl_bottom_left" class="sl_leftcol"><div id="results_box"><div id="results_box_header">Your Closest Counselors</div><div id="results_box_output">[slp_results]</div></div></div><div id="sl_bottom_right" class="sl_rightcol"><div id="map_box">[slp_map]</div><div id="tagalong_box">[tagalong legend]</div></div></div></div>";s:9:"EM.layout";s:1786:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:1439:"<div id="slp_results_[slp_location id]" class="results_entry  [slp_location featured]"><div class="results_row_left_column"   id="slp_left_cell_[slp_location id]"   ><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span></div><div class="results_row_center_column" id="slp_center_cell_[slp_location id]" ><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_country">[slp_location country]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span><span class="slp_result_address slp_result_fax">[slp_location fax]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]"  ><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span><span class="slp_result_contact slp_result_hours">[slp_location hours]</span>[slp_location iconarray wrap="fullspan"]</div></div>";s:9:"ES.layout";s:449:"<div id="address_search">[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element dropdown_with_label="radius"][slp_search_element dropdown_with_label="category"][slp_search_element selector_with_label="tag"][slp_search_element button="submit"]</div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:117:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/above_all_01.css";}s:29:"above_and_beyond_nyloboard_01";a:10:{s:7:"add-ons";s:65:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search";s:11:"description";s:175:"Search to the left of the Map.  Results below. Nyloboard Compatible.  Feature locations highlighted.  Show Tagalong legend above the map. Email not shown in results or bubble.";s:4:"file";s:29:"above_and_beyond_nyloboard_01";s:5:"label";s:33:"Above And Beyond NyloBoard Rev 01";s:10:"PRO.layout";s:589:"<div id="sl_div"><div id="sl_top"><div id="sl_top_left" class="sl_leftcol></div><div id="sl_top_right" class="sl_rightcol">[tagalong legend]</div></div><div id="sl_mid"><div id="sl_mid_left" class="sl_leftcol"><div id="search_box"><div id="search_box_header">Search by a business name or location:</div><div id="search_box_form">[slp_search]</div></div></div><div id="sl_mid_right" class="sl_rightcol">[slp_map]</div></div><div id="sl_bottom"><div id="results_box"><div id="results_box_header">Dealers and Contractors</div><div id="results_box_output">[slp_results]</div></div></div></div>";s:9:"EM.layout";s:1786:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:1439:"<div id="slp_results_[slp_location id]" class="results_entry  [slp_location featured]"><div class="results_row_left_column"   id="slp_left_cell_[slp_location id]"   ><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span></div><div class="results_row_center_column" id="slp_center_cell_[slp_location id]" ><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_country">[slp_location country]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span><span class="slp_result_address slp_result_fax">[slp_location fax]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]"  ><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span><span class="slp_result_contact slp_result_hours">[slp_location hours]</span>[slp_location iconarray wrap="fullspan"]</div></div>";s:9:"ES.layout";s:480:"<div id="address_search">[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element selector_with_label="tag"][slp_search_element dropdown_with_label="category"]<div class="search_item">[slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]</div></div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:134:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/above_and_beyond_nyloboard_01.css";}s:29:"above_and_beyond_nyloboard_02";a:10:{s:7:"add-ons";s:65:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search";s:11:"description";s:175:"Search to the left of the Map.  Results below. Nyloboard Compatible.  Feature locations highlighted.  Show Tagalong legend below the map. Email not shown in results or bubble.";s:4:"file";s:29:"above_and_beyond_nyloboard_02";s:5:"label";s:33:"Above And Beyond NyloBoard Rev 02";s:10:"PRO.layout";s:590:"<div id="sl_div"><div id="sl_top"><div id="sl_top_left" class="sl_leftcol"><div id="search_box"><div id="search_box_header">Search by a business name or location:</div><div id="search_box_form">[slp_search]</div></div></div><div id="sl_top_right" class="sl_rightcol">[slp_map]</div></div><div id="sl_mid"><div id="sl_mid_left" class="sl_leftcol"></div><div id="sl_mid_right" class="sl_rightcol">[tagalong legend]</div></div><div id="sl_bottom"><div id="results_box"><div id="results_box_header">Dealers and Contractors</div><div id="results_box_output">[slp_results]</div></div></div></div>";s:9:"EM.layout";s:1786:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:1439:"<div id="slp_results_[slp_location id]" class="results_entry  [slp_location featured]"><div class="results_row_left_column"   id="slp_left_cell_[slp_location id]"   ><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span></div><div class="results_row_center_column" id="slp_center_cell_[slp_location id]" ><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_country">[slp_location country]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span><span class="slp_result_address slp_result_fax">[slp_location fax]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]"  ><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span><span class="slp_result_contact slp_result_hours">[slp_location hours]</span>[slp_location iconarray wrap="fullspan"]</div></div>";s:9:"ES.layout";s:480:"<div id="address_search">[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element selector_with_label="tag"][slp_search_element dropdown_with_label="category"]<div class="search_item">[slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]</div></div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:134:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/above_and_beyond_nyloboard_02.css";}s:16:"csl-slplus-boxed";a:10:{s:7:"add-ons";s:65:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search";s:11:"description";s:38:"Side-by-side boxes for output listing.";s:4:"file";s:16:"csl-slplus-boxed";s:5:"label";s:11:"Basic Boxes";s:10:"PRO.layout";s:57:"<div id="sl_div">[slp_search][slp_map][slp_results]</div>";s:9:"EM.layout";s:1955:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_email">[slp_location email         wrap    mailto ][slp_option label_email ifset email][html closing_anchor ifset email][html br ifset email]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:1521:"<div id="slp_results_[slp_location id]" class="results_entry  [slp_location featured]"><div class="results_row_left_column"   id="slp_left_cell_[slp_location id]"   ><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span></div><div class="results_row_center_column" id="slp_center_cell_[slp_location id]" ><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_country">[slp_location country]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span><span class="slp_result_address slp_result_fax">[slp_location fax]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]"  ><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_email">[slp_location email_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span><span class="slp_result_contact slp_result_hours">[slp_location hours]</span>[slp_location iconarray wrap="fullspan"]</div></div>";s:9:"ES.layout";s:480:"<div id="address_search">[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element selector_with_label="tag"][slp_search_element dropdown_with_label="category"]<div class="search_item">[slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]</div></div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:121:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/csl-slplus-boxed.css";}s:7:"bellard";a:10:{s:7:"add-ons";s:0:"";s:11:"description";s:71:"Side-by-Side boxes with simple colors on white.  Requires Google Fonts.";s:4:"file";s:7:"bellard";s:5:"label";s:7:"Bellard";s:10:"PRO.layout";s:0:"";s:9:"EM.layout";s:0:"";s:9:"ER.layout";s:0:"";s:9:"ES.layout";s:0:"";s:14:"results_header";s:0:"";s:7:"fqfname";s:112:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/bellard.css";}s:10:"bellard-rt";a:10:{s:7:"add-ons";s:65:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search";s:11:"description";s:154:"Side-by-Side boxes with simple colors on white.  Requires Google Fonts.  Slightly more narrow than Bellard.  Styled for RT-17 Theme.  Uses default layout.";s:4:"file";s:10:"bellard-rt";s:5:"label";s:14:"Bellard RT (A)";s:10:"PRO.layout";s:57:"<div id="sl_div">[slp_search][slp_map][slp_results]</div>";s:9:"EM.layout";s:1955:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_email">[slp_location email         wrap    mailto ][slp_option label_email ifset email][html closing_anchor ifset email][html br ifset email]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:1521:"<div id="slp_results_[slp_location id]" class="results_entry  [slp_location featured]"><div class="results_row_left_column"   id="slp_left_cell_[slp_location id]"   ><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span></div><div class="results_row_center_column" id="slp_center_cell_[slp_location id]" ><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_country">[slp_location country]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span><span class="slp_result_address slp_result_fax">[slp_location fax]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]"  ><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_email">[slp_location email_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span><span class="slp_result_contact slp_result_hours">[slp_location hours]</span>[slp_location iconarray wrap="fullspan"]</div></div>";s:9:"ES.layout";s:480:"<div id="address_search">[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element selector_with_label="tag"][slp_search_element dropdown_with_label="category"]<div class="search_item">[slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]</div></div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:115:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/bellard-rt.css";}s:24:"beside_and_below_genesis";a:10:{s:7:"add-ons";s:78:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search,slp-tagalong";s:11:"description";s:142:"Search On Left Side, Map and Results on Right. Designed to work well with Tagalong categories. Built to work with the Genesis WordPress theme.";s:4:"file";s:24:"beside_and_below_genesis";s:5:"label";s:28:"Beside And Below Genesis (A)";s:10:"PRO.layout";s:204:"<div id="sl_div"><div id="sl_leftcol"><div class="searchbox">[slp_search]</div><div class="legendbox"><h1>Services</h1>[tagalong legend]</div></div><div id="sl_rightcol">[slp_map][slp_results]</div></div>";s:9:"EM.layout";s:1955:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_email">[slp_location email         wrap    mailto ][slp_option label_email ifset email][html closing_anchor ifset email][html br ifset email]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:747:"<div id="slp_results_[slp_location id]" class="results_entry"><div class="results_row_left_column"   id="slp_left_cell_[slp_location id]"   >[slp_location name wrap="fullspan"]<span class="results_line"><span class="location_distance_label">Distance:</span>[slp_location distance_1] [slp_location distance_unit]</span>[slp_location iconarray wrap="fullspan"]</div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]"  >[slp_location web_link wrap="fullspan"]<span class="results_line slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span></div></div>";s:9:"ES.layout";s:472:"<div class="searchbox"><div class="searchheader">Search</div><div class="searchcontent">[slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="radius"][slp_search_element dropdown_with_label="category"][slp_search_element button="submit"]</div></div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:129:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/beside_and_below_genesis.css";}s:13:"beside_myself";a:10:{s:7:"add-ons";s:48:"slp-pro,slp-enhanced-results,slp-enhanced-search";s:11:"description";s:242:"Map on left, Search and Results on right. Simplified search layout only supports basic search form options. Recommended for WordPress themes with a wide content area, such as Twenty Twelve''s full width template.  Primary colors: blue, orange.";s:4:"file";s:13:"beside_myself";s:5:"label";s:17:"Beside Myself (A)";s:10:"PRO.layout";s:179:"<div id="sl_div"><div id="sl_leftcol">[slp_map]</div><div id="sl_rightcol">[slp_search]<div id="sl_arrow_container"><div id="sl_search_arrow"></div></div>[slp_results]</div></div>";s:9:"EM.layout";s:1955:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_email">[slp_location email         wrap    mailto ][slp_option label_email ifset email][html closing_anchor ifset email][html br ifset email]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:985:"<div class="results_row_left_column" id="slp_left_cell_[slp_location id]" ><span class="location_name">[slp_location name]</span><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]" ><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span></div>";s:9:"ES.layout";s:471:"<span class="search_header">Find Our Locations</span>[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element selector_with_label="tag"][slp_search_element dropdown_with_label="category"][slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]";s:14:"results_header";s:0:"";s:7:"fqfname";s:118:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/beside_myself.css";}s:21:"beside_myself_results";a:10:{s:7:"add-ons";s:65:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search";s:11:"description";s:54:"Only the results.  "Myself" palette (blue and orange).";s:4:"file";s:21:"beside_myself_results";s:5:"label";s:25:"Beside Myself Results (A)";s:10:"PRO.layout";s:179:"<div id="sl_div"><div id="sl_leftcol">[slp_map]</div><div id="sl_rightcol">[slp_search]<div id="sl_arrow_container"><div id="sl_search_arrow"></div></div>[slp_results]</div></div>";s:9:"EM.layout";s:1955:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_email">[slp_location email         wrap    mailto ][slp_option label_email ifset email][html closing_anchor ifset email][html br ifset email]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:985:"<div class="results_row_left_column" id="slp_left_cell_[slp_location id]" ><span class="location_name">[slp_location name]</span><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]" ><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span></div>";s:9:"ES.layout";s:185:"<span class="search_header">Find Our Locations</span>[slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]";s:14:"results_header";s:0:"";s:7:"fqfname";s:126:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/beside_myself_results.css";}s:20:"beside_thepoint_2012";a:10:{s:7:"add-ons";s:7:"slp-pro";s:11:"description";s:62:"Search and Results On Left Side. Map on Right. 2012 Compatible";s:4:"file";s:20:"beside_thepoint_2012";s:5:"label";s:21:"Beside The Point 2012";s:10:"PRO.layout";s:179:"<div id="sl_div"><div id="sl_leftcol">[slp_search]<div id="sl_arrow_container"><div id="sl_search_arrow"></div></div>[slp_results]</div><div id="sl_rightcol">[slp_map]</div></div>";s:9:"EM.layout";s:1955:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_email">[slp_location email         wrap    mailto ][slp_option label_email ifset email][html closing_anchor ifset email][html br ifset email]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:1521:"<div id="slp_results_[slp_location id]" class="results_entry  [slp_location featured]"><div class="results_row_left_column"   id="slp_left_cell_[slp_location id]"   ><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span></div><div class="results_row_center_column" id="slp_center_cell_[slp_location id]" ><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_country">[slp_location country]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span><span class="slp_result_address slp_result_fax">[slp_location fax]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]"  ><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_email">[slp_location email_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span><span class="slp_result_contact slp_result_hours">[slp_location hours]</span>[slp_location iconarray wrap="fullspan"]</div></div>";s:9:"ES.layout";s:480:"<div id="address_search">[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element selector_with_label="tag"][slp_search_element dropdown_with_label="category"]<div class="search_item">[slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]</div></div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:125:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/beside_thepoint_2012.css";}s:23:"beside_thepoint_2012_02";a:10:{s:7:"add-ons";s:65:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search";s:11:"description";s:93:"Search and Results On Left Side. Map on Right. 2012 Compatible. Featured Results Highlighted.";s:4:"file";s:23:"beside_thepoint_2012_02";s:5:"label";s:28:"Beside The Point 2012 Rev 02";s:10:"PRO.layout";s:179:"<div id="sl_div"><div id="sl_leftcol">[slp_search]<div id="sl_arrow_container"><div id="sl_search_arrow"></div></div>[slp_results]</div><div id="sl_rightcol">[slp_map]</div></div>";s:9:"EM.layout";s:1955:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_email">[slp_location email         wrap    mailto ][slp_option label_email ifset email][html closing_anchor ifset email][html br ifset email]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:1521:"<div id="slp_results_[slp_location id]" class="results_entry  [slp_location featured]"><div class="results_row_left_column"   id="slp_left_cell_[slp_location id]"   ><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span></div><div class="results_row_center_column" id="slp_center_cell_[slp_location id]" ><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_country">[slp_location country]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span><span class="slp_result_address slp_result_fax">[slp_location fax]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]"  ><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_email">[slp_location email_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span><span class="slp_result_contact slp_result_hours">[slp_location hours]</span>[slp_location iconarray wrap="fullspan"]</div></div>";s:9:"ES.layout";s:480:"<div id="address_search">[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element selector_with_label="tag"][slp_search_element dropdown_with_label="category"]<div class="search_item">[slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]</div></div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:128:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/beside_thepoint_2012_02.css";}s:29:"beside_the_point_nyloboard_01";a:10:{s:7:"add-ons";s:65:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search";s:11:"description";s:175:"Search and Results On Left Side. Map on Right. Nyloboard Compatible.  Feature locations highlighted.  Show Tagalong legend above the map. Email not shown in results or bubble.";s:4:"file";s:29:"beside_the_point_nyloboard_01";s:5:"label";s:33:"Beside The Point NyloBoard Rev 01";s:10:"PRO.layout";s:381:"<div id="sl_div"><div id="sl_leftcol"><div id="search_box"><div id="search_box_header">Search by a business name or location:</div><div id="search_box_form">[slp_search]</div></div><div id="results_box"><div id="results_box_header">Dealers and Contractors</div><div id="results_box_output">[slp_results]</div></div></div><div id="sl_rightcol">[tagalong legend][slp_map]</div></div>";s:9:"EM.layout";s:1786:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:1439:"<div id="slp_results_[slp_location id]" class="results_entry  [slp_location featured]"><div class="results_row_left_column"   id="slp_left_cell_[slp_location id]"   ><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span></div><div class="results_row_center_column" id="slp_center_cell_[slp_location id]" ><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_country">[slp_location country]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span><span class="slp_result_address slp_result_fax">[slp_location fax]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]"  ><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span><span class="slp_result_contact slp_result_hours">[slp_location hours]</span>[slp_location iconarray wrap="fullspan"]</div></div>";s:9:"ES.layout";s:480:"<div id="address_search">[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element selector_with_label="tag"][slp_search_element dropdown_with_label="category"]<div class="search_item">[slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]</div></div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:134:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/beside_the_point_nyloboard_01.css";}s:9:"bigmap_01";a:10:{s:7:"add-ons";s:65:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search";s:11:"description";s:161:"Map is the entire background with search from and results overlays. Results output has limited info. Works best with the upcoming SLP Big Map theme. Revision 01.";s:4:"file";s:9:"bigmap_01";s:5:"label";s:14:"Big Map Rev 01";s:10:"PRO.layout";s:107:"<div id="sl_div">[slp_search]<div id="sl_div_right_col">[tagalong legend][slp_map]</div>[slp_results]</div>";s:9:"EM.layout";s:1955:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_email">[slp_location email         wrap    mailto ][slp_option label_email ifset email][html closing_anchor ifset email][html br ifset email]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:860:"<div id="slp_results_[slp_location id]" class="results_entry  [slp_location featured]"><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span>[slp_location iconarray wrap="fullspan"]</div>";s:9:"ES.layout";s:494:"<div id="address_search">[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element selector_with_label="tag"][slp_search_element dropdown_with_label="category"]<div class="search_item" id="submitor">[slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]</div></div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:114:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/bigmap_01.css";}s:5:"blank";a:10:{s:7:"add-ons";s:0:"";s:11:"description";s:71:"No CSS rules, default layout mostly dictated by active WordPress theme.";s:4:"file";s:5:"blank";s:5:"label";s:11:"Blank Theme";s:10:"PRO.layout";s:0:"";s:9:"EM.layout";s:0:"";s:9:"ER.layout";s:0:"";s:9:"ES.layout";s:0:"";s:14:"results_header";s:0:"";s:7:"fqfname";s:110:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/blank.css";}s:12:"blank_mapfix";a:10:{s:7:"add-ons";s:65:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search";s:11:"description";s:93:"Only CSS rule is the map image fix, default layout mostly dictated by active WordPress theme.";s:4:"file";s:12:"blank_mapfix";s:5:"label";s:24:"Blank Theme with Map Fix";s:10:"PRO.layout";s:57:"<div id="sl_div">[slp_search][slp_map][slp_results]</div>";s:9:"EM.layout";s:1955:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_email">[slp_location email         wrap    mailto ][slp_option label_email ifset email][html closing_anchor ifset email][html br ifset email]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:1521:"<div id="slp_results_[slp_location id]" class="results_entry  [slp_location featured]"><div class="results_row_left_column"   id="slp_left_cell_[slp_location id]"   ><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span></div><div class="results_row_center_column" id="slp_center_cell_[slp_location id]" ><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_country">[slp_location country]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span><span class="slp_result_address slp_result_fax">[slp_location fax]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]"  ><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_email">[slp_location email_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span><span class="slp_result_contact slp_result_hours">[slp_location hours]</span>[slp_location iconarray wrap="fullspan"]</div></div>";s:9:"ES.layout";s:480:"<div id="address_search">[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element selector_with_label="tag"][slp_search_element dropdown_with_label="category"]<div class="search_item">[slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]</div></div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:117:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/blank_mapfix.css";}s:25:"csl-slplus-boxed-fastfood";a:10:{s:7:"add-ons";s:0:"";s:11:"description";s:58:"A boxes theme for the Fast Food theme from Two Beers crew.";s:4:"file";s:25:"csl-slplus-boxed-fastfood";s:5:"label";s:21:"Boxed Fast Food Theme";s:10:"PRO.layout";s:0:"";s:9:"EM.layout";s:0:"";s:9:"ER.layout";s:0:"";s:9:"ES.layout";s:0:"";s:14:"results_header";s:0:"";s:7:"fqfname";s:130:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/csl-slplus-boxed-fastfood.css";}s:7:"brewery";a:10:{s:7:"add-ons";s:77:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search,slp-premier";s:11:"description";s:67:"Built to work with Rescue Theme''s (rescuethemes.com) Brewery theme.";s:4:"file";s:7:"brewery";s:5:"label";s:11:"Brewery 1.0";s:10:"PRO.layout";s:57:"<div id="sl_div">[slp_search][slp_map][slp_results]</div>";s:9:"EM.layout";s:1955:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_email">[slp_location email         wrap    mailto ][slp_option label_email ifset email][html closing_anchor ifset email][html br ifset email]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:1521:"<div id="slp_results_[slp_location id]" class="results_entry  [slp_location featured]"><div class="results_row_left_column"   id="slp_left_cell_[slp_location id]"   ><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span></div><div class="results_row_center_column" id="slp_center_cell_[slp_location id]" ><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_country">[slp_location country]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span><span class="slp_result_address slp_result_fax">[slp_location fax]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]"  ><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_email">[slp_location email_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span><span class="slp_result_contact slp_result_hours">[slp_location hours]</span>[slp_location iconarray wrap="fullspan"]</div></div>";s:9:"ES.layout";s:480:"<div id="address_search">[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element selector_with_label="tag"][slp_search_element dropdown_with_label="category"]<div class="search_item">[slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]</div></div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:112:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/brewery.css";}s:27:"csl-slplus-cleansimplewhite";a:10:{s:7:"add-ons";s:0:"";s:11:"description";s:63:"Designed to work with the Mazznoer Clean Simple White WP Theme.";s:4:"file";s:27:"csl-slplus-cleansimplewhite";s:5:"label";s:18:"Clean Simple White";s:10:"PRO.layout";s:0:"";s:9:"EM.layout";s:0:"";s:9:"ER.layout";s:0:"";s:9:"ES.layout";s:0:"";s:14:"results_header";s:0:"";s:7:"fqfname";s:132:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/csl-slplus-cleansimplewhite.css";}s:15:"csl-slplus-dark";a:10:{s:7:"add-ons";s:0:"";s:11:"description";s:41:"A new darker theme based on the original.";s:4:"file";s:15:"csl-slplus-dark";s:5:"label";s:17:"Dark SLPlus Theme";s:10:"PRO.layout";s:0:"";s:9:"EM.layout";s:0:"";s:9:"ER.layout";s:0:"";s:9:"ES.layout";s:0:"";s:14:"results_header";s:0:"";s:7:"fqfname";s:120:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/csl-slplus-dark.css";}s:7:"default";a:10:{s:7:"add-ons";s:65:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search";s:11:"description";s:229:"The default SLPLUS Theme for WordPress 2015 Revision 01.  This was Default for SLP versions 4.2.14 to 4.2.31. Search form on top of the map on top of the results. Add on packs are not required for this theme to function properly.";s:4:"file";s:7:"default";s:5:"label";s:28:"Default Theme WP 2015 Rev 01";s:10:"PRO.layout";s:57:"<div id="sl_div">[slp_search][slp_map][slp_results]</div>";s:9:"EM.layout";s:1955:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_email">[slp_location email         wrap    mailto ][slp_option label_email ifset email][html closing_anchor ifset email][html br ifset email]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:1521:"<div id="slp_results_[slp_location id]" class="results_entry  [slp_location featured]"><div class="results_row_left_column"   id="slp_left_cell_[slp_location id]"   ><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span></div><div class="results_row_center_column" id="slp_center_cell_[slp_location id]" ><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_country">[slp_location country]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span><span class="slp_result_address slp_result_fax">[slp_location fax]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]"  ><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_email">[slp_location email_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span><span class="slp_result_contact slp_result_hours">[slp_location hours]</span>[slp_location iconarray wrap="fullspan"]</div></div>";s:9:"ES.layout";s:480:"<div id="address_search">[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element selector_with_label="tag"][slp_search_element dropdown_with_label="category"]<div class="search_item">[slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]</div></div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:112:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/default.css";}s:12:"default_2014";a:10:{s:7:"add-ons";s:65:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search";s:11:"description";s:179:"The default SLPLUS Theme during the WordPress 4.0 tenure.  Search form on top of the map on top of the results.  Add on packs are not required for this theme to function properly.";s:4:"file";s:12:"default_2014";s:5:"label";s:18:"Default Theme 2014";s:10:"PRO.layout";s:57:"<div id="sl_div">[slp_search][slp_map][slp_results]</div>";s:9:"EM.layout";s:1955:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_email">[slp_location email         wrap    mailto ][slp_option label_email ifset email][html closing_anchor ifset email][html br ifset email]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:1521:"<div id="slp_results_[slp_location id]" class="results_entry  [slp_location featured]"><div class="results_row_left_column"   id="slp_left_cell_[slp_location id]"   ><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span></div><div class="results_row_center_column" id="slp_center_cell_[slp_location id]" ><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_country">[slp_location country]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span><span class="slp_result_address slp_result_fax">[slp_location fax]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]"  ><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_email">[slp_location email_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span><span class="slp_result_contact slp_result_hours">[slp_location hours]</span>[slp_location iconarray wrap="fullspan"]</div></div>";s:9:"ES.layout";s:480:"<div id="address_search">[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element selector_with_label="tag"][slp_search_element dropdown_with_label="category"]<div class="search_item">[slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]</div></div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:117:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/default_2014.css";}s:10:"default_02";a:10:{s:7:"add-ons";s:65:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search";s:11:"description";s:147:"The default SLPLUS Theme.  Search form on top of the map on top of the results.  Add on packs are not required for this theme to function properly.";s:4:"file";s:10:"default_02";s:5:"label";s:20:"Default Theme Rev 02";s:10:"PRO.layout";s:57:"<div id="sl_div">[slp_search][slp_map][slp_results]</div>";s:9:"EM.layout";s:1955:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_email">[slp_location email         wrap    mailto ][slp_option label_email ifset email][html closing_anchor ifset email][html br ifset email]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:1521:"<div id="slp_results_[slp_location id]" class="results_entry  [slp_location featured]"><div class="results_row_left_column"   id="slp_left_cell_[slp_location id]"   ><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span></div><div class="results_row_center_column" id="slp_center_cell_[slp_location id]" ><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_country">[slp_location country]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span><span class="slp_result_address slp_result_fax">[slp_location fax]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]"  ><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_email">[slp_location email_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span><span class="slp_result_contact slp_result_hours">[slp_location hours]</span>[slp_location iconarray wrap="fullspan"]</div></div>";s:9:"ES.layout";s:480:"<div id="address_search">[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element selector_with_label="tag"][slp_search_element dropdown_with_label="category"]<div class="search_item">[slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]</div></div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:115:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/default_02.css";}s:11:"default_old";a:10:{s:7:"add-ons";s:0:"";s:11:"description";s:34:"The original default SLPLUS Theme.";s:4:"file";s:11:"default_old";s:5:"label";s:18:"Default Theme, Old";s:10:"PRO.layout";s:0:"";s:9:"EM.layout";s:0:"";s:9:"ER.layout";s:0:"";s:9:"ES.layout";s:0:"";s:14:"results_header";s:0:"";s:7:"fqfname";s:116:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/default_old.css";}s:9:"wp-elogix";a:10:{s:7:"add-ons";s:0:"";s:11:"description";s:380:"Default theme with Enhanced Results featured listing styling and some tweaks to work better with eLogix.  To see featured highlights change Results Layout so the very first div class looks like this: class="results_entry [slp_location featured]".  Open this file in a text editor for more hints.  Makes web links for non-featured locations disappear.  Works with Enhanced Results.";s:4:"file";s:9:"wp-elogix";s:5:"label";s:17:"Elogix Compatible";s:10:"PRO.layout";s:0:"";s:9:"EM.layout";s:0:"";s:9:"ER.layout";s:0:"";s:9:"ES.layout";s:0:"";s:14:"results_header";s:0:"";s:7:"fqfname";s:114:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/wp-elogix.css";}s:8:"fournier";a:10:{s:7:"add-ons";s:0:"";s:11:"description";s:134:"Side-by-Side boxes with simple colors on white.  Requires Google Fonts.  A modified version of Bellard-RT using custom Results Format.";s:4:"file";s:8:"fournier";s:5:"label";s:8:"Fournier";s:10:"PRO.layout";s:0:"";s:9:"EM.layout";s:0:"";s:9:"ER.layout";s:0:"";s:9:"ES.layout";s:0:"";s:14:"results_header";s:0:"";s:7:"fqfname";s:113:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/fournier.css";}s:18:"genesis_monochrome";a:10:{s:7:"add-ons";s:0:"";s:11:"description";s:63:"A Genesis compatible design based on a monochrome color scheme.";s:4:"file";s:18:"genesis_monochrome";s:5:"label";s:18:"Genesis Monochrome";s:10:"PRO.layout";s:0:"";s:9:"EM.layout";s:0:"";s:9:"ER.layout";s:0:"";s:9:"ES.layout";s:0:"";s:14:"results_header";s:0:"";s:7:"fqfname";s:123:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/genesis_monochrome.css";}s:25:"csl-slplus-noresultstable";a:10:{s:7:"add-ons";s:0:"";s:11:"description";s:96:"Hide the results under the map.  You can get more control with the Enhanced Results add-on pack.";s:4:"file";s:25:"csl-slplus-noresultstable";s:5:"label";s:14:"Hidden Results";s:10:"PRO.layout";s:0:"";s:9:"EM.layout";s:0:"";s:9:"ER.layout";s:0:"";s:9:"ES.layout";s:0:"";s:14:"results_header";s:0:"";s:7:"fqfname";s:130:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/csl-slplus-noresultstable.css";}s:29:"ithemes_herschel_nyloboard_01";a:10:{s:7:"add-ons";s:65:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search";s:11:"description";s:225:"Search to the left of the Map.  Results below. iThemes Herschel WordPress Theme compatible.  Uses NyloBoard color scheme. Feature locations highlighted.  Show Tagalong legend below the map. Email not shown in the info bubble.";s:4:"file";s:29:"ithemes_herschel_nyloboard_01";s:5:"label";s:29:"iThemes Herschel NyloBoard 01";s:10:"PRO.layout";s:588:"<div id="sl_div"><div id="sl_top"><div id="sl_top_left" class="sl_leftcol"><div id="search_box"><div id="search_box_header">[slp_option nojs="search_box_title"]</div><div id="search_box_form">[slp_search]</div></div></div><div id="sl_top_right" class="sl_rightcol">[slp_map]</div></div><div id="sl_mid"><div id="sl_mid_left" class="sl_leftcol"></div><div id="sl_mid_right" class="sl_rightcol">[tagalong legend]</div></div><div id="sl_bottom"><div id="results_box"><div id="results_box_header">Dealers and Contractors</div><div id="results_box_output">[slp_results]</div></div></div></div>";s:9:"EM.layout";s:1786:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:1521:"<div id="slp_results_[slp_location id]" class="results_entry  [slp_location featured]"><div class="results_row_left_column"   id="slp_left_cell_[slp_location id]"   ><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span></div><div class="results_row_center_column" id="slp_center_cell_[slp_location id]" ><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_country">[slp_location country]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span><span class="slp_result_address slp_result_fax">[slp_location fax]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]"  ><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_email">[slp_location email_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span><span class="slp_result_contact slp_result_hours">[slp_location hours]</span>[slp_location iconarray wrap="fullspan"]</div></div>";s:9:"ES.layout";s:449:"<div id="address_search">[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element dropdown_with_label="radius"][slp_search_element dropdown_with_label="category"][slp_search_element selector_with_label="tag"][slp_search_element button="submit"]</div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:134:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/ithemes_herschel_nyloboard_01.css";}s:20:"csl-slplus-toplabels";a:10:{s:7:"add-ons";s:0:"";s:11:"description";s:38:"Show the labels above the input boxes.";s:4:"file";s:20:"csl-slplus-toplabels";s:5:"label";s:18:"Labels Above Input";s:10:"PRO.layout";s:0:"";s:9:"EM.layout";s:0:"";s:9:"ER.layout";s:0:"";s:9:"ES.layout";s:0:"";s:14:"results_header";s:0:"";s:7:"fqfname";s:125:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/csl-slplus-toplabels.css";}s:16:"csl-slplus-nomap";a:10:{s:7:"add-ons";s:16:"slp-enhanced-map";s:11:"description";s:129:"Original default theme with map hidden.  Using Enhanced Map "hide map" works with more WordPress themes and is a better solution.";s:4:"file";s:16:"csl-slplus-nomap";s:5:"label";s:16:"No Map Displayed";s:10:"PRO.layout";s:0:"";s:9:"EM.layout";s:0:"";s:9:"ER.layout";s:0:"";s:9:"ES.layout";s:0:"";s:14:"results_header";s:0:"";s:7:"fqfname";s:121:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/csl-slplus-nomap.css";}s:11:"nomap-rev02";a:10:{s:7:"add-ons";s:16:"slp-enhanced-map";s:11:"description";s:154:"Improved version of the No Map theme that hides the map display.  Using Enhanced Map "hide map" works with more WordPress themes and is a better solution.";s:4:"file";s:11:"nomap-rev02";s:5:"label";s:13:"No Map Rev 02";s:10:"PRO.layout";s:0:"";s:9:"EM.layout";s:0:"";s:9:"ER.layout";s:0:"";s:9:"ES.layout";s:0:"";s:14:"results_header";s:0:"";s:7:"fqfname";s:116:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/nomap-rev02.css";}s:9:"on_myself";a:10:{s:7:"add-ons";s:80:"slp-pro, slp-enhanced-results, slp-enhanced-map, slp-enhanced-search, slp-widget";s:11:"description";s:62:"Map on Search on Results.  "Myself" palette (blue and orange).";s:4:"file";s:9:"on_myself";s:5:"label";s:9:"On Myself";s:10:"PRO.layout";s:0:"";s:9:"EM.layout";s:0:"";s:9:"ER.layout";s:0:"";s:9:"ES.layout";s:0:"";s:14:"results_header";s:0:"";s:7:"fqfname";s:114:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/on_myself.css";}s:17:"simple-white-4col";a:10:{s:7:"add-ons";s:69:"slp-contact-extender, slp-pro, slp-enhanced-map, slp-enhanced-results";s:11:"description";s:202:"A simple white layout with 4 columns for map results.  Emphasis on contact data from Contact Extender. Uses "Source Sans Pro", available from the Google Fonts library.  Falls back to web standard fonts.";s:4:"file";s:17:"simple-white-4col";s:5:"label";s:28:"Simple White Four Column (A)";s:10:"PRO.layout";s:57:"<div id="sl_div">[slp_search][slp_map][slp_results]</div>";s:9:"EM.layout";s:774:"<div id="sl_info_bubble" class="[slp_location featured]"><span class="bold_entry">[slp_location name]</span><span>[slp_location department]</span><span>[slp_location contact suffix comma][slp_location title]</span><span>[slp_location address][html br ifset address2][slp_location address2]</span><span>[slp_location city suffix  comma][slp_location state suffix space][slp_location zip]</span><span>[slp_option label_directions wrap directions]</span><br/><span>[slp_option   label_phone   ifset   phone][slp_location phone]</span><span>[slp_option   label_fax     ifset   fax  ][slp_location fax]<span><span>[slp_location facility_type]</span><span>[slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url]</span></div>";s:9:"ER.layout";s:562:"<div id="slp_results_[slp_location id]" class="results_entry [slp_location featured]"><div class="results_row_col_1"><span class="location_name">[slp_location name]</span><span>[slp_location distance_1] [slp_location distance_unit]</span></div><div class="results_row_col_2"><span>[slp_location contact]</span><span>[slp_location phone]</span></div><div class="results_row_col_3"><span>[slp_location title]</span></div><div class="results_row_col_4"><span>[slp_location city]</span><span>[slp_location state]</span><span>[slp_location country]</span></div></div>";s:9:"ES.layout";s:480:"<div id="address_search">[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element selector_with_label="tag"][slp_search_element dropdown_with_label="category"]<div class="search_item">[slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]</div></div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:122:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/simple-white-4col.css";}s:10:"skywalk_01";a:10:{s:7:"add-ons";s:77:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search,slp-premier";s:11:"description";s:279:"Map on top.  Location filters and results underneath.  Results have column headers. Recommended settings: Enhanced Search - set search box title, set country selector label to blank. Premier - set search box subtitle, set results headers 1 to 4, enable Do Not Wrap Result In Div.";s:4:"file";s:10:"skywalk_01";s:5:"label";s:15:"Sky Walk Rev 01";s:10:"PRO.layout";s:88:"<div id="slp_map_holder">[slp_map]</div><div id="sl_div">[slp_search][slp_results]</div>";s:9:"EM.layout";s:1955:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_email">[slp_location email         wrap    mailto ][slp_option label_email ifset email][html closing_anchor ifset email][html br ifset email]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:1305:"<tr id="slp_results_wrapper_[slp_location id]" class="results_entry  [slp_location featured]"><td class="column_1"   id="column_1_[slp_location id]"><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span></td><td class="column_2" id="column_2_[slp_location id]" ><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_country">[slp_location country]</span></td><td class="column_3"  id="column_3_[slp_location id]"><span class="slp_result_address slp_result_phone"><span class="data_label">[slp_option label_phone ifset="phone"]</span>[slp_location phone]</span><span class="slp_result_contact slp_result_email"><span class="data_label">[slp_option label_email ifset="email"]</span>[slp_location email_link]</span><span class="slp_result_contact slp_result_website"><span class="data_label">[slp_option label_website ifset="url"]</span>[slp_location url_link]</span></td><td class="column_4"  id="column_3_[slp_location id]">[slp_location name="category_list"]</td></tr>";s:9:"ES.layout";s:268:"<div id="address_search"><div class="title_box">[slp_option name="search_box_title"][slp_option name="search_box_subtitle"]</div><div class="selector_box">[slp_search_element dropdown_with_label="category"][slp_search_element dropdown_with_label="country"]</div></div>";s:14:"results_header";s:286:"<table class="slp_results_table"><thead><tr><th>[slp_option name="results_header_1"]</th><th>[slp_option name="results_header_2"]</th><th>[slp_option name="results_header_3"]</th><th>[slp_option name="results_header_4"]</th></tr></thead><tbody   id=''add_locations_here''></tbody></table>";s:7:"fqfname";s:115:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/skywalk_01.css";}s:10:"csl-slplus";a:10:{s:7:"add-ons";s:0:"";s:11:"description";s:26:"The original SLPLUS Theme.";s:4:"file";s:10:"csl-slplus";s:5:"label";s:18:"The Original Theme";s:10:"PRO.layout";s:0:"";s:9:"EM.layout";s:0:"";s:9:"ER.layout";s:0:"";s:9:"ES.layout";s:0:"";s:14:"results_header";s:0:"";s:7:"fqfname";s:115:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/csl-slplus.css";}s:19:"twentyfifteen_rev02";a:10:{s:7:"add-ons";s:65:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search";s:11:"description";s:154:"Search form on top of the map on top of the results.  Add on packs are not required for this theme to function properly. The default theme for SLP 4.2.33.";s:4:"file";s:19:"twentyfifteen_rev02";s:5:"label";s:21:"Twenty Fifteen Rev 02";s:10:"PRO.layout";s:57:"<div id="sl_div">[slp_search][slp_map][slp_results]</div>";s:9:"EM.layout";s:1955:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_email">[slp_location email         wrap    mailto ][slp_option label_email ifset email][html closing_anchor ifset email][html br ifset email]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:1521:"<div id="slp_results_[slp_location id]" class="results_entry  [slp_location featured]"><div class="results_row_left_column"   id="slp_left_cell_[slp_location id]"   ><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span></div><div class="results_row_center_column" id="slp_center_cell_[slp_location id]" ><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_country">[slp_location country]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span><span class="slp_result_address slp_result_fax">[slp_location fax]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]"  ><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_email">[slp_location email_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span><span class="slp_result_contact slp_result_hours">[slp_location hours]</span>[slp_location iconarray wrap="fullspan"]</div></div>";s:9:"ES.layout";s:480:"<div id="address_search">[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element selector_with_label="tag"][slp_search_element dropdown_with_label="category"]<div class="search_item">[slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]</div></div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:124:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/twentyfifteen_rev02.css";}s:19:"twentyfifteen_rev03";a:10:{s:7:"add-ons";s:77:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search,slp-premier";s:11:"description";s:154:"Search form on top of the map on top of the results.  Add on packs are not required for this theme to function properly. The default theme for SLP 4.3.14.";s:4:"file";s:19:"twentyfifteen_rev03";s:5:"label";s:21:"Twenty Fifteen Rev 03";s:10:"PRO.layout";s:57:"<div id="sl_div">[slp_search][slp_map][slp_results]</div>";s:9:"EM.layout";s:1955:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_email">[slp_location email         wrap    mailto ][slp_option label_email ifset email][html closing_anchor ifset email][html br ifset email]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:1521:"<div id="slp_results_[slp_location id]" class="results_entry  [slp_location featured]"><div class="results_row_left_column"   id="slp_left_cell_[slp_location id]"   ><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span></div><div class="results_row_center_column" id="slp_center_cell_[slp_location id]" ><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_country">[slp_location country]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span><span class="slp_result_address slp_result_fax">[slp_location fax]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]"  ><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_email">[slp_location email_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span><span class="slp_result_contact slp_result_hours">[slp_location hours]</span>[slp_location iconarray wrap="fullspan"]</div></div>";s:9:"ES.layout";s:512:"<div id="address_search"><div class="selector_box">[slp_search_element selector_with_label="tag"][slp_search_element dropdown_with_label="category"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"]</div>[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"]<div class="search_item">[slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]</div></div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:124:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/twentyfifteen_rev03.css";}s:18:"twenty_fourteen_01";a:10:{s:7:"add-ons";s:65:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search";s:11:"description";s:47:"Works with the WordPress Twenty Fourteen theme.";s:4:"file";s:18:"twenty_fourteen_01";s:5:"label";s:22:"Twenty Fourteen Rev 01";s:10:"PRO.layout";s:57:"<div id="sl_div">[slp_search][slp_map][slp_results]</div>";s:9:"EM.layout";s:1955:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_email">[slp_location email         wrap    mailto ][slp_option label_email ifset email][html closing_anchor ifset email][html br ifset email]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:1521:"<div id="slp_results_[slp_location id]" class="results_entry  [slp_location featured]"><div class="results_row_left_column"   id="slp_left_cell_[slp_location id]"   ><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span></div><div class="results_row_center_column" id="slp_center_cell_[slp_location id]" ><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_country">[slp_location country]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span><span class="slp_result_address slp_result_fax">[slp_location fax]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]"  ><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_email">[slp_location email_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span><span class="slp_result_contact slp_result_hours">[slp_location hours]</span>[slp_location iconarray wrap="fullspan"]</div></div>";s:9:"ES.layout";s:480:"<div id="address_search">[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element selector_with_label="tag"][slp_search_element dropdown_with_label="category"]<div class="search_item">[slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]</div></div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:123:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/twenty_fourteen_01.css";}s:13:"woo-memorable";a:10:{s:7:"add-ons";s:65:"slp-pro,slp-enhanced-map,slp-enhanced-results,slp-enhanced-search";s:11:"description";s:160:"A basic SLP Theme that is used on a live site running the Memorable WordPress theme by WooThemes. Works with Enhanced Results + Super Extendo featured listings.";s:4:"file";s:13:"woo-memorable";s:5:"label";s:13:"Woo Memorable";s:10:"PRO.layout";s:57:"<div id="sl_div">[slp_search][slp_map][slp_results]</div>";s:9:"EM.layout";s:1955:"<div id="sl_info_bubble" class="[slp_location featured]"><span id="slp_bubble_name"><strong>[slp_location name  suffix  br]</strong></span><span id="slp_bubble_address">[slp_location address       suffix  br]</span><span id="slp_bubble_address2">[slp_location address2      suffix  br]</span><span id="slp_bubble_city">[slp_location city          suffix  comma]</span><span id="slp_bubble_state">[slp_location state suffix    space]</span><span id="slp_bubble_zip">[slp_location zip suffix  br]</span><span id="slp_bubble_country"><span id="slp_bubble_country">[slp_location country       suffix  br]</span></span><span id="slp_bubble_directions">[html br ifset directions][slp_option label_directions wrap directions]</span><span id="slp_bubble_website">[html br ifset url][slp_location url           wrap    website][slp_option label_website ifset url][html closing_anchor ifset url][html br ifset url]</span><span id="slp_bubble_email">[slp_location email         wrap    mailto ][slp_option label_email ifset email][html closing_anchor ifset email][html br ifset email]</span><span id="slp_bubble_phone">[html br ifset phone]<span class="location_detail_label">[slp_option   label_phone   ifset   phone]</span>[slp_location phone         suffix    br]</span><span id="slp_bubble_fax"><span class="location_detail_label">[slp_option   label_fax     ifset   fax  ]</span>[slp_location fax           suffix    br]<span><span id="slp_bubble_description"><span id="slp_bubble_description">[html br ifset description][slp_location description raw]</span>[html br ifset description]</span><span id="slp_bubble_hours">[html br ifset hours]<span class="location_detail_label">[slp_option   label_hours   ifset   hours]</span><span class="location_detail_hours">[slp_location hours         suffix    br]</span></span><span id="slp_bubble_img">[html br ifset img][slp_location image         wrap    img]</span><span id="slp_tags">[slp_location tags]</span></div>";s:9:"ER.layout";s:1521:"<div id="slp_results_[slp_location id]" class="results_entry  [slp_location featured]"><div class="results_row_left_column"   id="slp_left_cell_[slp_location id]"   ><span class="location_name">[slp_location name]</span><span class="location_distance">[slp_location distance_1] [slp_location distance_unit]</span></div><div class="results_row_center_column" id="slp_center_cell_[slp_location id]" ><span class="slp_result_address slp_result_street">[slp_location address]</span><span class="slp_result_address slp_result_street2">[slp_location address2]</span><span class="slp_result_address slp_result_citystatezip">[slp_location city_state_zip]</span><span class="slp_result_address slp_result_country">[slp_location country]</span><span class="slp_result_address slp_result_phone">[slp_location phone]</span><span class="slp_result_address slp_result_fax">[slp_location fax]</span></div><div class="results_row_right_column"  id="slp_right_cell_[slp_location id]"  ><span class="slp_result_contact slp_result_website">[slp_location web_link]</span><span class="slp_result_contact slp_result_email">[slp_location email_link]</span><span class="slp_result_contact slp_result_directions"><a href="http://[slp_location map_domain]/maps?saddr=[slp_location search_address]&daddr=[slp_location location_address]" target="_blank" class="storelocatorlink">[slp_location directions_text]</a></span><span class="slp_result_contact slp_result_hours">[slp_location hours]</span>[slp_location iconarray wrap="fullspan"]</div></div>";s:9:"ES.layout";s:480:"<div id="address_search">[slp_search_element input_with_label="name"][slp_search_element input_with_label="address"][slp_search_element dropdown_with_label="city"][slp_search_element dropdown_with_label="state"][slp_search_element dropdown_with_label="country"][slp_search_element selector_with_label="tag"][slp_search_element dropdown_with_label="category"]<div class="search_item">[slp_search_element dropdown_with_label="radius"][slp_search_element button="submit"]</div></div>";s:14:"results_header";s:0:"";s:7:"fqfname";s:118:"/Users/nickguest/Dropbox (Rooster Grin)/_NG_files/orthoworks/wp-content/plugins/store-locator-le/css/woo-memorable.css";}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2258, 'option_1', '', 'yes'),
(2267, 'extra_blog_description', '123-456-7890', 'yes'),
(2638, 'duplicate_post_copyexcerpt', '1', 'yes'),
(2639, 'duplicate_post_copyattachments', '0', 'yes'),
(2640, 'duplicate_post_copychildren', '0', 'yes'),
(2641, 'duplicate_post_copystatus', '0', 'yes'),
(2642, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(2643, 'duplicate_post_show_row', '1', 'yes'),
(2644, 'duplicate_post_show_adminbar', '1', 'yes'),
(2645, 'duplicate_post_show_submitbox', '1', 'yes'),
(2646, 'duplicate_post_version', '2.6', 'yes'),
(2789, 'extra_blog_description2', '111 Any Street', 'yes'),
(2861, 'extra_blog_description3', 'Randomtown, CA 98765', 'yes'),
(2918, 'address1', 'Hello', 'yes'),
(3604, 'theme_mods_--cockerel_s_child/css', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1451610435;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:4:{i:0;s:14:"recent-posts-2";i:1;s:17:"recent-comments-2";i:2;s:12:"categories-2";i:3;s:10:"archives-2";}s:9:"sidebar-1";a:0:{}s:18:"orphaned_widgets_1";a:1:{i:0;s:6:"meta-2";}}}}', 'yes'),
(3614, 'rewrite_rules', 'a:119:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:41:"header_footer/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:51:"header_footer/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:"header_footer/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"header_footer/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"header_footer/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"header_footer/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:30:"header_footer/([^/]+)/embed/?$";s:46:"index.php?header_footer=$matches[1]&embed=true";s:34:"header_footer/([^/]+)/trackback/?$";s:40:"index.php?header_footer=$matches[1]&tb=1";s:42:"header_footer/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?header_footer=$matches[1]&paged=$matches[2]";s:49:"header_footer/([^/]+)/comment-page-([0-9]{1,})/?$";s:53:"index.php?header_footer=$matches[1]&cpage=$matches[2]";s:38:"header_footer/([^/]+)(?:/([0-9]+))?/?$";s:52:"index.php?header_footer=$matches[1]&page=$matches[2]";s:30:"header_footer/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"header_footer/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"header_footer/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"header_footer/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"header_footer/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"header_footer/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"testimonials/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"testimonials/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"testimonials/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"testimonials/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"testimonials/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"testimonials/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"testimonials/([^/]+)/embed/?$";s:45:"index.php?testimonials=$matches[1]&embed=true";s:33:"testimonials/([^/]+)/trackback/?$";s:39:"index.php?testimonials=$matches[1]&tb=1";s:41:"testimonials/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?testimonials=$matches[1]&paged=$matches[2]";s:48:"testimonials/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?testimonials=$matches[1]&cpage=$matches[2]";s:37:"testimonials/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?testimonials=$matches[1]&page=$matches[2]";s:29:"testimonials/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"testimonials/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"testimonials/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"testimonials/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"testimonials/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"testimonials/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:40:"index.php?&page_id=416&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(4111, 'cw_image_optimizer_skip_check', '', 'yes'),
(4149, 'ewww_image_optimizer_bulk_attachments', '', 'no'),
(4150, 'ewww_image_optimizer_flag_attachments', '', 'no'),
(4151, 'ewww_image_optimizer_ngg_attachments', '', 'no'),
(4152, 'ewww_image_optimizer_aux_attachments', '', 'no'),
(4153, 'ewww_image_optimizer_defer_attachments', '', 'no'),
(4154, 'ewww_image_optimizer_disable_pngout', '1', 'yes'),
(4155, 'ewww_image_optimizer_optipng_level', '2', 'yes'),
(4156, 'ewww_image_optimizer_pngout_level', '2', 'yes'),
(4157, 'ewww_image_optimizer_jpegtran_copy', '1', 'yes'),
(4158, 'ewww_image_optimizer_version', '261.0', 'yes'),
(4322, 'extra_blog_descriptionB', '987-654-3210', 'yes'),
(4323, 'extra_blog_description2B', '999 Every Road', 'yes'),
(4324, 'extra_blog_description3B', 'Multiville, CA 12345', 'yes'),
(4393, 'jqlb_help_text', '', 'yes'),
(4394, 'jqlb_automate', '1', 'yes'),
(4395, 'jqlb_comments', '1', 'yes'),
(4396, 'jqlb_resize_on_demand', '0', 'yes'),
(4397, 'jqlb_show_download', '0', 'yes'),
(4398, 'jqlb_navbarOnTop', '0', 'yes'),
(4399, 'jqlb_resize_speed', '400', 'yes'),
(4409, 'odb_rvg_excluded_tabs', 'a:0:{}', 'yes'),
(4410, 'odb_rvg_options', 'a:18:{s:8:"adminbar";s:1:"N";s:9:"adminmenu";s:1:"N";s:15:"clear_pingbacks";s:1:"Y";s:10:"clear_spam";s:1:"Y";s:10:"clear_tags";s:1:"Y";s:16:"clear_transients";s:1:"Y";s:11:"clear_trash";s:1:"Y";s:12:"delete_older";s:1:"Y";s:13:"rvg_revisions";s:1:"N";s:8:"last_run";s:20:"Jun 10, 2016 @ 18:53";s:10:"logging_on";s:1:"N";s:15:"nr_of_revisions";s:0:"";s:10:"older_than";s:1:"1";s:15:"optimize_innodb";s:1:"Y";s:13:"schedule_type";s:0:"";s:13:"schedule_hour";s:0:"";s:13:"total_savings";i:5324800;s:7:"version";s:5:"4.1.6";}', 'yes'),
(4425, 'bwp_minify_general', 'a:24:{s:12:"input_minurl";s:0:"";s:13:"input_minpath";s:0:"";s:15:"input_cache_dir";s:0:"";s:14:"input_doc_root";s:0:"";s:14:"input_maxfiles";s:2:"10";s:12:"input_maxage";s:1:"1";s:12:"input_ignore";s:38:"admin-bar\r\njquery-core\r\njquery-migrate";s:12:"input_header";s:0:"";s:12:"input_direct";s:0:"";s:12:"input_footer";s:0:"";s:14:"input_oblivion";s:0:"";s:18:"input_style_ignore";s:20:"admin-bar\r\ndashicons";s:18:"input_style_direct";s:0:"";s:20:"input_style_oblivion";s:0:"";s:19:"input_custom_buster";s:0:"";s:13:"enable_min_js";s:3:"yes";s:14:"enable_min_css";s:3:"yes";s:15:"enable_bloginfo";s:0:"";s:22:"enable_external_origin";s:0:"";s:17:"enable_css_bubble";s:3:"yes";s:22:"enable_cache_file_lock";s:3:"yes";s:12:"enable_debug";s:0:"";s:18:"select_buster_type";s:4:"none";s:16:"select_time_type";s:5:"86400";}', 'yes'),
(4426, 'bwp_minify_detector_log', 'a:3:{s:7:"scripts";a:22:{s:9:"admin-bar";a:8:{s:6:"handle";s:9:"admin-bar";s:3:"src";s:32:"/wp-includes/js/admin-bar.min.js";s:3:"min";b:0;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:17:"ignored in footer";s:5:"order";i:5;s:5:"group";s:9:"admin-bar";}s:6:"jquery";a:8:{s:6:"handle";s:6:"jquery";s:3:"src";s:65:"https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.2/jquery.min.js";s:3:"min";b:0;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:17:"ignored in header";s:5:"order";i:3;s:5:"group";s:6:"jquery";}s:11:"jquery-form";a:8:{s:6:"handle";s:11:"jquery-form";s:3:"src";s:75:"cockerel_s/wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";a:1:{i:0;s:6:"jquery";}s:8:"position";s:18:"minified in footer";s:5:"order";i:4;s:5:"group";s:11:"jquery-form";}s:14:"contact-form-7";a:8:{s:6:"handle";s:14:"contact-form-7";s:3:"src";s:67:"cockerel_s/wp-content/plugins/contact-form-7/includes/js/scripts.js";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";a:2:{i:0;s:6:"jquery";i:1;s:11:"jquery-form";}s:8:"position";s:18:"minified in footer";s:5:"order";i:4;s:5:"group";s:11:"jquery-form";}s:18:"wp-jquery-lightbox";a:8:{s:6:"handle";s:18:"wp-jquery-lightbox";s:3:"src";s:64:"cockerel_s/wp-content/plugins/wp-lightbox-2/wp-lightbox-2.min.js";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";a:1:{i:0;s:6:"jquery";}s:8:"position";s:18:"minified in footer";s:5:"order";i:4;s:5:"group";s:11:"jquery-form";}s:7:"packery";a:8:{s:6:"handle";s:7:"packery";s:3:"src";s:66:"//cdnjs.cloudflare.com/ajax/libs/packery/1.4.2/packery.pkgd.min.js";s:3:"min";b:0;s:2:"wp";b:0;s:6:"depend";a:1:{i:0;s:6:"jquery";}s:8:"position";s:17:"ignored in footer";s:5:"order";i:5;s:5:"group";s:7:"packery";}s:9:"modernizr";a:8:{s:6:"handle";s:9:"modernizr";s:3:"src";s:65:"//cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js";s:3:"min";b:0;s:2:"wp";b:0;s:6:"depend";a:1:{i:0;s:6:"jquery";}s:8:"position";s:17:"ignored in footer";s:5:"order";i:5;s:5:"group";s:9:"modernizr";}s:5:"slick";a:8:{s:6:"handle";s:5:"slick";s:3:"src";s:50:"//cdn.jsdelivr.net/jquery.slick/1.5.9/slick.min.js";s:3:"min";b:0;s:2:"wp";b:0;s:6:"depend";a:1:{i:0;s:6:"jquery";}s:8:"position";s:17:"ignored in footer";s:5:"order";i:5;s:5:"group";s:5:"slick";}s:7:"stellar";a:8:{s:6:"handle";s:7:"stellar";s:3:"src";s:64:"cockerel_s/wp-content/themes/cockerel_s/js/jquery.stellar.min.js";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";a:1:{i:0;s:6:"jquery";}s:8:"position";s:18:"minified in footer";s:5:"order";i:4;s:5:"group";s:11:"jquery-form";}s:12:"smoothscroll";a:8:{s:6:"handle";s:12:"smoothscroll";s:3:"src";s:66:"cockerel_s/wp-content/themes/cockerel_s/js/jquery.smooth-scroll.js";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";a:1:{i:0;s:6:"jquery";}s:8:"position";s:18:"minified in footer";s:5:"order";i:4;s:5:"group";s:11:"jquery-form";}s:17:"test_s-navigation";a:8:{s:6:"handle";s:17:"test_s-navigation";s:3:"src";s:56:"cockerel_s/wp-content/themes/cockerel_s/js/navigation.js";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:18:"minified in header";s:5:"order";i:2;s:5:"group";s:17:"test_s-navigation";}s:26:"test_s-skip-link-focus-fix";a:8:{s:6:"handle";s:26:"test_s-skip-link-focus-fix";s:3:"src";s:65:"cockerel_s/wp-content/themes/cockerel_s/js/skip-link-focus-fix.js";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:18:"minified in footer";s:5:"order";i:4;s:5:"group";s:11:"jquery-form";}s:12:"bootstrap-js";a:8:{s:6:"handle";s:12:"bootstrap-js";s:3:"src";s:61:"//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js";s:3:"min";b:0;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:17:"ignored in header";s:5:"order";i:3;s:5:"group";s:12:"bootstrap-js";}s:14:"googlemaps-api";a:8:{s:6:"handle";s:14:"googlemaps-api";s:3:"src";s:77:"//maps.googleapis.com/maps/api/js?key=AIzaSyC3YH6ekPHy7YLA3NApjQ4hmpT24IDNM6U";s:3:"min";b:0;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:17:"ignored in header";s:5:"order";i:3;s:5:"group";s:14:"googlemaps-api";}s:10:"googlemaps";a:8:{s:6:"handle";s:10:"googlemaps";s:3:"src";s:56:"cockerel_s/wp-content/themes/cockerel_s/js/googlemaps.js";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";a:1:{i:0;s:14:"googlemaps-api";}s:8:"position";s:18:"minified in header";s:5:"order";i:2;s:5:"group";s:27:"versionpress_popover_script";}s:4:"main";a:8:{s:6:"handle";s:4:"main";s:3:"src";s:50:"cockerel_s/wp-content/themes/cockerel_s/js/main.js";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";a:4:{i:0;s:6:"jquery";i:1;s:7:"stellar";i:2;s:5:"slick";i:3;s:7:"packery";}s:8:"position";s:18:"minified in footer";s:5:"order";i:4;s:5:"group";s:11:"jquery-form";}s:15:"slick_slider_js";a:8:{s:6:"handle";s:15:"slick_slider_js";s:3:"src";s:60:"cockerel_s/wp-content/plugins/rooster-slider/js/slick.min.js";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";a:1:{i:0;s:6:"jquery";}s:8:"position";s:18:"minified in header";s:5:"order";i:2;s:5:"group";s:27:"versionpress_popover_script";}s:21:"cockerel_s-navigation";a:8:{s:6:"handle";s:21:"cockerel_s-navigation";s:3:"src";s:56:"cockerel_s/wp-content/themes/cockerel_s/js/navigation.js";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:18:"minified in header";s:5:"order";i:2;s:5:"group";s:27:"versionpress_popover_script";}s:11:"jquery-core";a:8:{s:6:"handle";s:11:"jquery-core";s:3:"src";s:32:"/wp-includes/js/jquery/jquery.js";s:3:"min";b:0;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:17:"ignored in header";s:5:"order";i:3;s:5:"group";s:11:"jquery-core";}s:14:"jquery-migrate";a:8:{s:6:"handle";s:14:"jquery-migrate";s:3:"src";s:44:"/wp-includes/js/jquery/jquery-migrate.min.js";s:3:"min";b:0;s:2:"wp";b:0;s:6:"depend";a:1:{i:0;s:11:"jquery-core";}s:8:"position";s:17:"ignored in header";s:5:"order";i:3;s:5:"group";s:14:"jquery-migrate";}s:8:"wp-embed";a:8:{s:6:"handle";s:8:"wp-embed";s:3:"src";s:41:"cockerel_s/wp-includes/js/wp-embed.min.js";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:18:"minified in footer";s:5:"order";i:4;s:5:"group";s:11:"jquery-form";}s:27:"versionpress_popover_script";a:8:{s:6:"handle";s:27:"versionpress_popover_script";s:3:"src";s:86:"cockerel_s/wp-content/plugins/versionpress/admin/public/js/jquery.webui-popover.min.js";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:18:"minified in header";s:5:"order";i:2;s:5:"group";s:27:"versionpress_popover_script";}}s:6:"styles";a:18:{s:9:"open-sans";a:9:{s:6:"handle";s:9:"open-sans";s:3:"src";s:114:"https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,300,400,600&subset=latin,latin-ext";s:3:"min";b:0;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:17:"ignored in header";s:5:"order";i:3;s:5:"group";s:9:"open-sans";s:5:"media";s:3:"all";}s:9:"dashicons";a:9:{s:6:"handle";s:9:"dashicons";s:3:"src";s:34:"/wp-includes/css/dashicons.min.css";s:3:"min";b:0;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:17:"ignored in header";s:5:"order";i:3;s:5:"group";s:9:"dashicons";s:5:"media";s:3:"all";}s:9:"admin-bar";a:9:{s:6:"handle";s:9:"admin-bar";s:3:"src";s:34:"/wp-includes/css/admin-bar.min.css";s:3:"min";b:0;s:2:"wp";b:0;s:6:"depend";a:2:{i:0;s:9:"open-sans";i:1;s:9:"dashicons";}s:8:"position";s:17:"ignored in header";s:5:"order";i:3;s:5:"group";s:9:"admin-bar";s:5:"media";s:3:"all";}s:14:"contact-form-7";a:9:{s:6:"handle";s:14:"contact-form-7";s:3:"src";s:68:"cockerel_s/wp-content/plugins/contact-form-7/includes/css/styles.css";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:18:"minified in header";s:5:"order";i:2;s:5:"group";s:14:"contact-form-7";s:5:"media";s:3:"all";}s:21:"wp-lightbox-2.min.css";a:9:{s:6:"handle";s:21:"wp-lightbox-2.min.css";s:3:"src";s:67:"cockerel_s/wp-content/plugins/wp-lightbox-2/styles/lightbox.min.css";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:18:"minified in header";s:5:"order";i:2;s:5:"group";s:14:"contact-form-7";s:5:"media";s:3:"all";}s:9:"bootstrap";a:9:{s:6:"handle";s:9:"bootstrap";s:3:"src";s:71:"cockerel_s/wp-content/themes/cockerel_s/bootstrap/css/bootstrap.min.css";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:18:"minified in header";s:5:"order";i:2;s:5:"group";s:14:"contact-form-7";s:5:"media";s:3:"all";}s:16:"cockerel_s-style";a:9:{s:6:"handle";s:16:"cockerel_s-style";s:3:"src";s:49:"cockerel_s/wp-content/themes/cockerel_s/style.css";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:18:"minified in header";s:5:"order";i:2;s:5:"group";s:14:"contact-form-7";s:5:"media";s:3:"all";}s:12:"font-awesome";a:9:{s:6:"handle";s:12:"font-awesome";s:3:"src";s:75:"https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css";s:3:"min";b:0;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:17:"ignored in header";s:5:"order";i:3;s:5:"group";s:12:"font-awesome";s:5:"media";s:3:"all";}s:12:"google-fonts";a:9:{s:6:"handle";s:12:"google-fonts";s:3:"src";s:62:"http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700";s:3:"min";b:0;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:17:"ignored in header";s:5:"order";i:3;s:5:"group";s:12:"google-fonts";s:5:"media";s:3:"all";}s:11:"slick-style";a:9:{s:6:"handle";s:11:"slick-style";s:3:"src";s:53:"cockerel_s/wp-content/themes/cockerel_s/css/slick.css";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:18:"minified in header";s:5:"order";i:2;s:5:"group";s:14:"contact-form-7";s:5:"media";s:3:"all";}s:17:"slick-theme-style";a:9:{s:6:"handle";s:17:"slick-theme-style";s:3:"src";s:59:"cockerel_s/wp-content/themes/cockerel_s/css/slick-theme.css";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:18:"minified in header";s:5:"order";i:2;s:5:"group";s:14:"contact-form-7";s:5:"media";s:3:"all";}s:9:"slick_css";a:9:{s:6:"handle";s:9:"slick_css";s:3:"src";s:58:"cockerel_s/wp-content/plugins/rooster-slider/css/slick.css";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:18:"minified in header";s:5:"order";i:2;s:5:"group";s:14:"contact-form-7";s:5:"media";s:3:"all";}s:7:"buttons";a:9:{s:6:"handle";s:7:"buttons";s:3:"src";s:42:"cockerel_s/wp-includes/css/buttons.min.css";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:18:"minified in footer";s:5:"order";i:4;s:5:"group";s:7:"buttons";s:5:"media";s:3:"all";}s:5:"login";a:9:{s:6:"handle";s:5:"login";s:3:"src";s:37:"cockerel_s/wp-admin/css/login.min.css";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";a:5:{i:0;s:9:"open-sans";i:1;s:9:"dashicons";i:2;s:7:"buttons";i:3;s:5:"forms";i:4;s:4:"l10n";}s:8:"position";s:18:"minified in footer";s:5:"order";i:4;s:5:"group";s:7:"buttons";s:5:"media";s:3:"all";}s:5:"forms";a:9:{s:6:"handle";s:5:"forms";s:3:"src";s:37:"cockerel_s/wp-admin/css/forms.min.css";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:18:"minified in footer";s:5:"order";i:4;s:5:"group";s:7:"buttons";s:5:"media";s:3:"all";}s:4:"l10n";a:9:{s:6:"handle";s:4:"l10n";s:3:"src";s:36:"cockerel_s/wp-admin/css/l10n.min.css";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:18:"minified in footer";s:5:"order";i:4;s:5:"group";s:7:"buttons";s:5:"media";s:3:"all";}s:26:"versionpress_popover_style";a:9:{s:6:"handle";s:26:"versionpress_popover_style";s:3:"src";s:88:"cockerel_s/wp-content/plugins/versionpress/admin/public/css/jquery.webui-popover.min.css";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:18:"minified in header";s:5:"order";i:2;s:5:"group";s:14:"contact-form-7";s:5:"media";s:3:"all";}s:33:"versionpress_popover_custom_style";a:9:{s:6:"handle";s:33:"versionpress_popover_custom_style";s:3:"src";s:78:"cockerel_s/wp-content/plugins/versionpress/admin/public/css/popover-custom.css";s:3:"min";b:1;s:2:"wp";b:0;s:6:"depend";b:0;s:8:"position";s:18:"minified in header";s:5:"order";i:2;s:5:"group";s:14:"contact-form-7";s:5:"media";s:3:"all";}}s:6:"groups";a:0:{}}', 'yes'),
(4427, 'bwp_minify_version', '1.3.3', 'yes'),
(4507, 'bwp_minify_advanced', 'a:8:{s:17:"input_fly_minpath";s:0:"";s:23:"input_nginx_config_file";s:0:"";s:14:"input_cdn_host";s:0:"";s:17:"input_cdn_host_js";s:0:"";s:18:"input_cdn_host_css";s:0:"";s:14:"enable_fly_min";s:0:"";s:10:"enable_cdn";s:0:"";s:19:"select_cdn_ssl_type";s:3:"off";}', 'yes'),
(4528, '_site_transient_timeout_browser_fceb1a56c7e324b57f9e4ab3c66ec8ec', '1471279158', 'yes'),
(4529, '_site_transient_browser_fceb1a56c7e324b57f9e4ab3c66ec8ec', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"51.0.2704.103";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(4530, 'page_for_posts', '0', 'yes'),
(4531, 'finished_splitting_shared_terms', '1', 'yes'),
(4532, 'site_icon', '0', 'yes'),
(4533, 'medium_large_size_w', '768', 'yes'),
(4534, 'medium_large_size_h', '0', 'yes'),
(4537, 'can_compress_scripts', '1', 'yes'),
(4538, '_site_transient_timeout_wordpress_credits_en_US', '1470760810', 'yes'),
(4539, '_site_transient_wordpress_credits_en_US', 'a:2:{s:6:"groups";a:6:{s:15:"project-leaders";a:4:{s:4:"name";s:15:"Project Leaders";s:4:"type";s:6:"titles";s:7:"shuffle";b:1;s:4:"data";a:6:{s:4:"matt";a:4:{i:0;s:14:"Matt Mullenweg";i:1;s:32:"767fc9c115a1b989744c755db47feb60";i:2;s:4:"matt";i:3;s:23:"Cofounder, Project Lead";}s:5:"nacin";a:4:{i:0;s:12:"Andrew Nacin";i:1;s:32:"01cfe9feaafb068590891bbd1f6a7f5a";i:2;s:5:"nacin";i:3;s:14:"Lead Developer";}s:11:"markjaquith";a:4:{i:0;s:12:"Mark Jaquith";i:1;s:32:"097a87a525e317519b5ee124820012fb";i:2;s:11:"markjaquith";i:3;s:14:"Lead Developer";}s:6:"azaozz";a:4:{i:0;s:10:"Andrew Ozz";i:1;s:32:"4e84843ebff0918d72ade21c6ee7b1e4";i:2;s:6:"azaozz";i:3;s:14:"Lead Developer";}s:5:"helen";a:4:{i:0;s:16:"Helen Hou-Sandí";i:1;s:32:"6506162ada6b700b151ad8a187f65842";i:2;s:5:"helen";i:3;s:14:"Lead Developer";}s:4:"dd32";a:4:{i:0;s:10:"Dion Hulse";i:1;s:32:"4af2825655b46fb1206b08d9041d8e3e";i:2;s:4:"dd32";i:3;s:14:"Lead Developer";}}}s:15:"core-developers";a:4:{s:4:"name";s:23:"Contributing Developers";s:4:"type";s:6:"titles";s:7:"shuffle";b:0;s:4:"data";a:12:{s:12:"mikeschroder";a:4:{i:0;s:13:"Mike Schroder";i:1;s:32:"76424a001dc6b3ebb4faca0c567800c4";i:2;s:12:"mikeschroder";i:3;s:12:"Release Lead";}s:15:"adamsilverstein";a:4:{i:0;s:16:"Adam Silverstein";i:1;s:32:"fddbd6c3e1c3d971aa732b9346aeb433";i:2;s:15:"adamsilverstein";i:3;s:14:"Release Deputy";}s:9:"melchoyce";a:4:{i:0;s:11:"Mel Choyce ";i:1;s:32:"ed4f856405e64c1492839d2bf4913baa";i:2;s:9:"melchoyce";i:3;s:19:"Release Design Lead";}s:6:"jorbin";a:4:{i:0;s:12:"Aaron Jorbin";i:1;s:32:"b3e2b94eb305bf95a1bee11bc7705fb7";i:2;s:6:"jorbin";i:3;s:14:"Core Developer";}s:12:"boonebgorges";a:4:{i:0;s:15:"Boone B. Gorges";i:1;s:32:"9cf7c4541a582729a5fc7ae484786c0c";i:2;s:12:"boonebgorges";i:3;s:14:"Core Developer";}s:7:"ocean90";a:4:{i:0;s:17:"Dominik Schilling";i:1;s:32:"3e8e161d97d793bd8fc2dcd62583bb76";i:2;s:7:"ocean90";i:3;s:14:"Core Developer";}s:12:"DrewAPicture";a:4:{i:0;s:11:"Drew Jaynes";i:1;s:32:"95c934fa2c3362794bf62ff8c59ada08";i:2;s:12:"DrewAPicture";i:3;s:14:"Core Developer";}s:5:"pento";a:4:{i:0;s:15:"Gary Pendergast";i:1;s:32:"1ad9e5c98d81c6815a65dab5b6e1f669";i:2;s:5:"pento";i:3;s:14:"Core Developer";}s:10:"jeremyfelt";a:4:{i:0;s:11:"Jeremy Felt";i:1;s:32:"d1759b1c669981b7c52ec9a97d19e6bd";i:2;s:10:"jeremyfelt";i:3;s:14:"Core Developer";}s:11:"johnbillion";a:4:{i:0;s:15:"John Blackbourn";i:1;s:32:"0000ba6dd1b089e1746abbfe6281ee3b";i:2;s:11:"johnbillion";i:3;s:14:"Core Developer";}s:14:"wonderboymusic";a:4:{i:0;s:12:"Scott Taylor";i:1;s:32:"112ca15732a80bb928c52caec9d2c8dd";i:2;s:14:"wonderboymusic";i:3;s:14:"Core Developer";}s:14:"SergeyBiryukov";a:4:{i:0;s:15:"Sergey Biryukov";i:1;s:32:"750b7b0fcd855389264c2b1294d61bd6";i:2;s:14:"SergeyBiryukov";i:3;s:14:"Core Developer";}}}s:23:"contributing-developers";a:4:{s:4:"name";b:0;s:4:"type";s:6:"titles";s:7:"shuffle";b:1;s:4:"data";a:12:{s:8:"obenland";a:4:{i:0;s:19:"Konstantin Obenland";i:1;s:32:"2370ea5912750f4cb0f3c51ae1cbca55";i:2;s:8:"obenland";i:3;s:0:"";}s:7:"iseulde";a:4:{i:0;s:22:"Ella Iseulde Van Dorpe";i:1;s:32:"1a847a68778b8344b6aa106a8861984f";i:2;s:7:"iseulde";i:3;s:0:"";}s:11:"westonruter";a:4:{i:0;s:12:"Weston Ruter";i:1;s:32:"22ed378fbf1d918ef43a45b2a1f34634";i:2;s:11:"westonruter";i:3;s:0:"";}s:7:"afercia";a:4:{i:0;s:13:"Andrea Fercia";i:1;s:32:"074af62ea5ff218b6a6eeab89104f616";i:2;s:7:"afercia";i:3;s:0:"";}s:6:"rmccue";a:4:{i:0;s:10:"Ryan McCue";i:1;s:32:"08818120f223035a0857c2a0ec417f93";i:2;s:6:"rmccue";i:3;s:0:"";}s:10:"karmatosed";a:4:{i:0;s:13:"Tammie Lister";i:1;s:32:"ca7d4273a689cdbf524d8332771bb1ca";i:2;s:10:"karmatosed";i:3;s:0:"";}s:10:"swissspidy";a:4:{i:0;s:15:"Pascal Birchler";i:1;s:32:"609d6ee54dc13a51270cb99769535b82";i:2;s:10:"swissspidy";i:3;s:0:"";}s:11:"rachelbaker";a:4:{i:0;s:12:"Rachel Baker";i:1;s:32:"634b37a53babc18a5bda19722d5b41a3";i:2;s:11:"rachelbaker";i:3;s:0:"";}s:8:"joehoyle";a:4:{i:0;s:9:"Joe Hoyle";i:1;s:32:"0ceb885cc3d306af93c9764b2936d618";i:2;s:8:"joehoyle";i:3;s:0:"";}s:9:"ericlewis";a:4:{i:0;s:17:"Eric Andrew Lewis";i:1;s:32:"7e524cf1c5e8d108658899a497dc4bd4";i:2;s:9:"ericlewis";i:3;s:0:"";}s:9:"joemcgill";a:4:{i:0;s:10:"Joe McGill";i:1;s:32:"7cef1c9108207ec24db7a40f142db676";i:2;s:9:"joemcgill";i:3;s:0:"";}s:7:"Ipstenu";a:4:{i:0;s:12:"Mika Epstein";i:1;s:32:"f4c134eb021e026414a1bd23d3c5c927";i:2;s:7:"Ipstenu";i:3;s:0:"";}}}s:16:"recent-rockstars";a:4:{s:4:"name";b:0;s:4:"type";s:6:"titles";s:7:"shuffle";b:1;s:4:"data";a:9:{s:9:"chriscct7";a:4:{i:0;s:15:"Chris Christoff";i:1;s:32:"d0931e57862048dabb0bea3a71ce6229";i:2;s:9:"chriscct7";i:3;s:0:"";}s:15:"danielbachhuber";a:4:{i:0;s:16:"Daniel Bachhuber";i:1;s:32:"a304ad0084a78fe52f6b93e00871754e";i:2;s:15:"danielbachhuber";i:3;s:0:"";}s:16:"celloexpressions";a:4:{i:0;s:12:"Nick Halsey ";i:1;s:32:"c5fe6b97c0f4d32a41346582d4e894db";i:2;s:16:"celloexpressions";i:3;s:0:"";}s:7:"dnewton";a:4:{i:0;s:12:"David Newton";i:1;s:32:"2b5c483d8d2a5fb69cb5b27c784edea3";i:2;s:7:"dnewton";i:3;s:0:"";}s:8:"ebinnion";a:4:{i:0;s:12:"Eric Binnion";i:1;s:32:"e8d172977181f0f3e105a2f4553cccc2";i:2;s:8:"ebinnion";i:3;s:0:"";}s:10:"grantpalin";a:4:{i:0;s:11:"Grant Palin";i:1;s:32:"21ec4a8be46b7367360f2808fb5524c9";i:2;s:10:"grantpalin";i:3;s:0:"";}s:10:"rockwell15";a:4:{i:0;s:15:"Andrew Rockwell";i:1;s:32:"a34eb01ca391ad54fe02fe370501a5fa";i:2;s:10:"rockwell15";i:3;s:0:"";}s:7:"gitlost";a:4:{i:0;s:12:"Martin Burke";i:1;s:32:"d2ebc5603eed26b523436a486c6d6c5d";i:2;s:7:"gitlost";i:3;s:0:"";}s:6:"kwight";a:4:{i:0;s:10:"Kirk Wight";i:1;s:32:"e589ec6c9b981d9da221f206f49dec3d";i:2;s:6:"kwight";i:3;s:0:"";}}}s:5:"props";a:4:{s:4:"name";s:33:"Core Contributors to WordPress %s";s:12:"placeholders";a:1:{i:0;s:3:"4.5";}s:4:"type";s:4:"list";s:4:"data";a:264:{s:7:"mercime";s:8:"@mercime";s:13:"aaroncampbell";s:17:"Aaron D. Campbell";s:9:"uglyrobot";s:13:"Aaron Edwards";s:8:"ahockley";s:13:"Aaron Hockley";s:13:"abiralneupane";s:14:"Abiral Neupane";s:12:"mrahmadawais";s:11:"Ahmad Awais";s:9:"aidanlane";s:9:"aidanlane";s:8:"ambrosey";s:12:"Alice Brosey";s:5:"arush";s:11:"Amanda Rush";s:4:"andg";s:14:"Andrea Gandino";s:7:"andizer";s:14:"Andy Meerwaldt";s:13:"ankit-k-gupta";s:13:"Ankit K Gupta";s:7:"atimmer";s:16:"Anton Timmermans";s:7:"apaliku";s:7:"apaliku";s:6:"aramzs";s:19:"Aram Zucker-Scharff";s:11:"ashmatadeen";s:12:"ash.matadeen";s:11:"bappidgreat";s:16:"Ashok Kumar Nath";s:12:"bandonrandon";s:12:"BandonRandon";s:11:"barryceelen";s:12:"Barry Ceelen";s:13:"empireoflight";s:10:"Ben Dunkle";s:12:"berengerzyla";s:12:"berengerzyla";s:5:"neoxx";s:14:"Bernhard Riedl";s:8:"thisisit";s:16:"Bhushan S. Jawle";s:7:"birgire";s:27:"Birgir Erlendsson (birgire)";s:11:"williamsba1";s:13:"Brad Williams";s:12:"bradyvercher";s:13:"Brady Vercher";s:15:"thebrandonallen";s:13:"Brandon Allen";s:8:"bhubbard";s:15:"Brandon Hubbard";s:7:"kraftbj";s:13:"Brandon Kraft";s:9:"krogsgard";s:15:"Brian Krogsgard";s:11:"borgesbruno";s:12:"Bruno Borges";s:5:"chmac";s:16:"Callum Macdonald";s:8:"camikaos";s:9:"Cami Kaos";s:12:"chandrapatel";s:13:"Chandra Patel";s:9:"mackensen";s:14:"Charles Fulton";s:13:"chetanchauhan";s:14:"Chetan Chauhan";s:6:"chouby";s:6:"Chouby";s:6:"chrico";s:6:"ChriCo";s:9:"chris_dev";s:9:"Chris Mok";s:13:"christophherr";s:13:"christophherr";s:8:"ckoerner";s:8:"ckoerner";s:14:"claudiosanches";s:15:"Claudio Sanches";s:7:"compute";s:7:"Compute";s:13:"coreymcollins";s:13:"coreymcollins";s:8:"d4z_c0nf";s:8:"d4z_c0nf";s:11:"extendwings";s:17:"Daisuke Takahashi";s:11:"danhgilmore";s:11:"danhgilmore";s:17:"scarinessreported";s:13:"Daniel Bailey";s:5:"mte90";s:21:"Daniele Scasciafratte";s:10:"redsweater";s:27:"Daniel Jalkut (Red Sweater)";s:9:"diddledan";s:16:"Daniel Llewellyn";s:12:"danielpataki";s:12:"danielpataki";s:10:"dvankooten";s:16:"Danny van Kooten";s:16:"thewanderingbrit";s:13:"Dave Clements";s:13:"davidakennedy";s:16:"David A. Kennedy";s:14:"dbrumbaugh10up";s:15:"David Brumbaugh";s:8:"folletto";s:24:"Davide ''Folletto'' Casali";s:3:"dlh";s:13:"David Herrera";s:8:"dshanske";s:13:"David Shanske";s:17:"denis-de-bernardy";s:17:"Denis de Bernardy";s:7:"realloc";s:15:"Dennis Ploetner";s:12:"valendesigns";s:12:"Derek Herman";s:7:"dmsnell";s:7:"dmsnell";s:5:"dossy";s:14:"Dossy Shiobara";s:10:"dotancohen";s:11:"Dotan Cohen";s:11:"drebbitsweb";s:9:"Dreb Bits";s:10:"duaneblake";s:10:"duaneblake";s:6:"kucrut";s:11:"Dzikri Aziz";s:10:"eliorivero";s:11:"Elio Rivero";s:7:"codex-m";s:15:"Emerson Maningo";s:4:"enej";s:13:"Enej Bajgoric";s:9:"ericdaams";s:10:"Eric Daams";s:8:"ethitter";s:12:"Erick Hitter";s:9:"eherman24";s:11:"Evan Herman";s:6:"fab1en";s:17:"Fabien Quatravaux";s:7:"faishal";s:7:"faishal";s:12:"fantasyworld";s:12:"fantasyworld";s:8:"flixos90";s:11:"Felix Arntz";s:5:"finnj";s:5:"finnj";s:10:"firebird75";s:10:"firebird75";s:8:"frozzare";s:14:"Fredrik Forsmo";s:11:"fusillicode";s:11:"fusillicode";s:5:"garyj";s:10:"Gary Jones";s:5:"gblsm";s:5:"gblsm";s:15:"georgestephanis";s:16:"George Stephanis";s:7:"garusky";s:15:"Giuseppe Mamone";s:8:"jubstuff";s:22:"Giustino Borzacchiello";s:11:"groovecoder";s:11:"groovecoder";s:4:"wido";s:13:"Guido Scialfa";s:7:"bordoni";s:15:"Gustavo Bordoni";s:5:"hakre";s:5:"hakre";s:11:"henrywright";s:12:"Henry Wright";s:4:"hnle";s:7:"Hinaloe";s:11:"hlashbrooke";s:15:"Hugh Lashbrooke";s:9:"hugobaeta";s:10:"Hugo Baeta";s:12:"polevaultweb";s:12:"Iain Poulson";s:7:"igmoweb";s:19:"Ignacio Cruz Moreno";s:5:"imath";s:5:"imath";s:6:"iamntz";s:12:"Ionut Staicu";s:14:"ivankristianto";s:15:"Ivan Kristianto";s:8:"jdgrimes";s:11:"J.D. Grimes";s:5:"jadpm";s:5:"jadpm";s:12:"jamesdigioia";s:13:"James DiGioia";s:15:"jason_the_adams";s:11:"Jason Adams";s:14:"jaspermdegroot";s:15:"Jasper de Groot";s:9:"cheffheid";s:14:"Jeffrey de Wit";s:15:"jeffpyebrookcom";s:17:"Jeffrey Schutzman";s:6:"jmdodd";s:16:"Jennifer M. Dodd";s:7:"jeherve";s:12:"Jeremy Herve";s:4:"jpry";s:10:"Jeremy Pry";s:5:"jesin";s:7:"Jesin A";s:13:"ardathksheyna";s:7:"Jess G.";s:6:"boluda";s:11:"Joan Boluda";s:7:"joelerr";s:7:"joelerr";s:15:"johnjamesjacoby";s:17:"John James Jacoby";s:9:"johnnypea";s:9:"JohnnyPea";s:8:"jbrinley";s:16:"Jonathan Brinley";s:12:"spacedmonkey";s:12:"Jonny Harris";s:7:"keraweb";s:13:"Jory Hogeveen";s:8:"joefusco";s:12:"Joseph Fusco";s:12:"joshlevinson";s:13:"Josh Levinson";s:7:"shelob9";s:12:"Josh Pollock";s:7:"jrchamp";s:7:"jrchamp";s:3:"jrf";s:3:"jrf";s:7:"juanfra";s:16:"Juanfra Aldasoro";s:6:"juhise";s:11:"Juhi Saxena";s:8:"juliobox";s:12:"Julio Potier";s:10:"katieburch";s:10:"katieburch";s:6:"ryelle";s:10:"Kelly Dwan";s:5:"khag7";s:13:"Kevin Hagerty";s:13:"kiranpotphode";s:14:"Kiran Potphode";s:7:"ixkaito";s:4:"Kite";s:6:"kjbenk";s:6:"kjbenk";s:9:"kovshenin";s:20:"Konstantin Kovshenin";s:10:"kouratoras";s:23:"Konstantinos Kouratoras";s:8:"krissiev";s:8:"KrissieV";s:12:"lancewillett";s:13:"Lance Willett";s:6:"leemon";s:6:"leemon";s:7:"layotte";s:10:"Lew Ayotte";s:11:"liamdempsey";s:12:"Liam Dempsey";s:10:"luan-ramos";s:10:"Luan Ramos";s:10:"luciole135";s:10:"luciole135";s:7:"lpawlik";s:12:"Lukas Pawlik";s:4:"latz";s:17:"Lutz Schr&#246;er";s:6:"madvic";s:6:"madvic";s:11:"marcochiesi";s:12:"Marco Chiesi";s:5:"tyxla";s:14:"Marin Atanasov";s:9:"nofearinc";s:12:"Mario Peshev";s:11:"mark8barnes";s:11:"Mark Barnes";s:12:"markoheijnen";s:13:"Marko Heijnen";s:4:"mapk";s:11:"Mark Uraine";s:10:"mattfelten";s:11:"Matt Felten";s:8:"mattgeri";s:8:"MattGeri";s:9:"mattwiebe";s:10:"Matt Wiebe";s:7:"maweder";s:7:"maweder";s:9:"mayukojpn";s:13:"Mayo Moriyama";s:9:"mcapybara";s:9:"mcapybara";s:13:"mehulkaklotar";s:14:"Mehul Kaklotar";s:6:"meitar";s:6:"Meitar";s:11:"mensmaximus";s:11:"mensmaximus";s:15:"michael-arestad";s:15:"Michael Arestad";s:11:"michalzuber";s:11:"michalzuber";s:8:"micropat";s:8:"micropat";s:4:"mdgl";s:16:"Mike Glendinning";s:12:"mikehansenme";s:11:"Mike Hansen";s:10:"mikejolley";s:11:"Mike Jolley";s:7:"dimadin";s:12:"Milan Dinić";s:11:"morganestes";s:12:"Morgan Estes";s:6:"mt8biz";s:22:"moto hachi ( mt8.biz )";s:10:"usermrpapa";s:7:"Mr Papa";s:8:"mwidmann";s:8:"mwidmann";s:8:"nexurium";s:8:"nexurium";s:12:"niallkennedy";s:13:"Niall Kennedy";s:8:"nicdford";s:8:"Nic Ford";s:8:"rabmalin";s:15:"Nilambar Sharma";s:9:"ninos-ego";s:5:"Ninos";s:5:"oaron";s:5:"oaron";s:9:"overclokk";s:9:"overclokk";s:10:"obrienlabs";s:11:"Pat O''Brien";s:7:"pbearne";s:11:"Paul Bearne";s:13:"pauldewouters";s:15:"Paul de Wouters";s:10:"sirbrillig";s:12:"Payton Swick";s:9:"perezlabs";s:10:"Perez Labs";s:10:"gungeekatx";s:11:"Pete Nelson";s:7:"cadeyrn";s:11:"petermolnar";s:13:"peterwilsoncc";s:12:"Peter Wilson";s:5:"walbo";s:32:"Petter Walb&#248; Johnsg&#229;rd";s:8:"wizzard_";s:6:"Pieter";s:7:"mordauk";s:17:"Pippin Williamson";s:10:"ptahdunbar";s:13:"Pirate Dunbar";s:11:"prettyboymp";s:11:"prettyboymp";s:8:"profforg";s:8:"Profforg";s:10:"programmin";s:10:"programmin";s:14:"rahalaboulfeth";s:15:"rahal.aboulfeth";s:5:"ramiy";s:14:"Rami Yushuvaev";s:7:"lamosty";s:15:"Rastislav Lamos";s:8:"rickalee";s:20:"Ricky Lee Whittemore";s:12:"ritteshpatel";s:12:"Ritesh Patel";s:3:"rob";s:3:"rob";s:8:"rogerhub";s:10:"Roger Chen";s:9:"romsocial";s:9:"RomSocial";s:8:"ruudjoyo";s:9:"Ruud Laan";s:4:"ryan";s:10:"Ryan Boren";s:12:"ryankienstra";s:13:"Ryan Kienstra";s:7:"welcher";s:12:"Ryan Welcher";s:11:"sagarjadhav";s:12:"Sagar Jadhav";s:7:"salcode";s:14:"Sal Ferrarello";s:14:"salvoaranzulla";s:14:"salvoaranzulla";s:12:"samhotchkiss";s:13:"Sam Hotchkiss";s:7:"rosso99";s:10:"Sara Rosso";s:12:"sarciszewski";s:17:"Scott Arciszewski";s:20:"scottbrownconsulting";s:20:"scottbrownconsulting";s:11:"sc0ttkclark";s:20:"Scott Kingsley Clark";s:11:"coffee2code";s:12:"Scott Reilly";s:6:"scribu";s:6:"scribu";s:15:"sebastianpisula";s:16:"Sebastian Pisula";s:13:"sergejmueller";s:18:"Sergej M&#252;ller";s:7:"shamess";s:5:"Shane";s:9:"shinichin";s:18:"Shinichi Nishikawa";s:6:"sidati";s:6:"Sidati";s:7:"siobhan";s:7:"Siobhan";s:12:"aargh-a-knot";s:3:"sky";s:8:"slushman";s:8:"slushman";s:9:"smerriman";s:9:"smerriman";s:14:"stephanethomas";s:14:"stephanethomas";s:6:"netweb";s:13:"Stephen Edgar";s:13:"stephenharris";s:14:"Stephen Harris";s:13:"stevegrunwell";s:14:"Steve Grunwell";s:11:"stevenkword";s:11:"Steven Word";s:12:"charlestonsw";s:18:"Store Locator Plus";s:11:"subharanjan";s:11:"Subharanjan";s:5:"sudar";s:11:"Sudar Muthu";s:5:"5um17";s:11:"Sumit Singh";s:9:"tacoverdo";s:16:"Taco Verdonschot";s:8:"tahteche";s:8:"tahteche";s:10:"iamtakashi";s:12:"Takashi Irie";s:12:"takayukister";s:16:"Takayuki Miyoshi";s:12:"tharsheblows";s:12:"tharsheblows";s:8:"themiked";s:8:"theMikeD";s:8:"thomaswm";s:8:"thomaswm";s:17:"timothyblynjacobs";s:14:"Timothy Jacobs";s:11:"timplunkett";s:11:"timplunkett";s:7:"tmuikku";s:7:"tmuikku";s:8:"skithund";s:17:"Toni Viemer&#246;";s:9:"toro_unit";s:25:"Toro_Unit (Hiroshi Urabe)";s:8:"liljimmi";s:14:"Tracy Levesque";s:6:"rilwis";s:18:"Tran Ngoc Tuan Anh";s:7:"wpsmith";s:12:"Travis Smith";s:7:"tywayne";s:10:"Ty Carlson";s:14:"grapplerulrich";s:6:"Ulrich";s:12:"utkarshpatel";s:7:"Utkarsh";s:8:"vhomenko";s:8:"vhomenko";s:11:"virgodesign";s:11:"virgodesign";s:9:"vladolaru";s:10:"vlad.olaru";s:14:"voldemortensen";s:14:"voldemortensen";s:5:"vtieu";s:5:"vtieu";s:8:"webaware";s:8:"webaware";s:7:"wesleye";s:14:"Wesley Elfring";s:9:"wisdmlabs";s:9:"WisdmLabs";s:12:"wp-architect";s:12:"wp-architect";s:11:"wpdelighter";s:12:"WP Delighter";s:7:"xavortm";s:7:"xavortm";s:16:"yetanotherdaniel";s:16:"yetAnotherDaniel";s:7:"zinigor";s:7:"zinigor";}}s:9:"libraries";a:3:{s:4:"name";s:18:"External Libraries";s:4:"type";s:9:"libraries";s:4:"data";a:31:{i:0;a:2:{i:0;s:11:"Backbone.js";i:1;s:22:"http://backbonejs.org/";}i:1;a:2:{i:0;s:10:"Class POP3";i:1;s:24:"http://squirrelmail.org/";}i:2;a:2:{i:0;s:16:"Color Animations";i:1;s:32:"http://plugins.jquery.com/color/";}i:3;a:2:{i:0;s:8:"getID3()";i:1;s:30:"http://getid3.sourceforge.net/";}i:4;a:2:{i:0;s:15:"Horde Text Diff";i:1;s:22:"http://pear.horde.org/";}i:5;a:2:{i:0;s:11:"hoverIntent";i:1;s:57:"http://cherne.net/brian/resources/jquery.hoverIntent.html";}i:6;a:2:{i:0;s:13:"imgAreaSelect";i:1;s:42:"http://odyniec.net/projects/imgareaselect/";}i:7;a:2:{i:0;s:4:"Iris";i:1;s:34:"https://github.com/Automattic/Iris";}i:8;a:2:{i:0;s:6:"jQuery";i:1;s:18:"http://jquery.com/";}i:9;a:2:{i:0;s:9:"jQuery UI";i:1;s:20:"http://jqueryui.com/";}i:10;a:2:{i:0;s:14:"jQuery Hotkeys";i:1;s:41:"https://github.com/tzuryby/jquery.hotkeys";}i:11;a:2:{i:0;s:22:"jQuery serializeObject";i:1;s:49:"http://benalman.com/projects/jquery-misc-plugins/";}i:12;a:2:{i:0;s:12:"jQuery.query";i:1;s:39:"http://plugins.jquery.com/query-object/";}i:13;a:2:{i:0;s:14:"jQuery.suggest";i:1;s:41:"http://plugins.jquery.com/project/suggest";}i:14;a:2:{i:0;s:21:"jQuery UI Touch Punch";i:1;s:27:"http://touchpunch.furf.com/";}i:15;a:2:{i:0;s:5:"json2";i:1;s:43:"https://github.com/douglascrockford/JSON-js";}i:16;a:2:{i:0;s:7:"Masonry";i:1;s:28:"http://masonry.desandro.com/";}i:17;a:2:{i:0;s:15:"MediaElement.js";i:1;s:26:"http://mediaelementjs.com/";}i:18;a:2:{i:0;s:6:"PclZip";i:1;s:33:"http://www.phpconcept.net/pclzip/";}i:19;a:2:{i:0;s:6:"PemFTP";i:1;s:50:"http://www.phpclasses.org/browse/package/1743.html";}i:20;a:2:{i:0;s:6:"phpass";i:1;s:31:"http://www.openwall.com/phpass/";}i:21;a:2:{i:0;s:9:"PHPMailer";i:1;s:38:"https://github.com/PHPMailer/PHPMailer";}i:22;a:2:{i:0;s:8:"Plupload";i:1;s:24:"http://www.plupload.com/";}i:23;a:2:{i:0;s:13:"random_compat";i:1;s:42:"https://github.com/paragonie/random_compat";}i:24;a:2:{i:0;s:9:"SimplePie";i:1;s:21:"http://simplepie.org/";}i:25;a:2:{i:0;s:27:"The Incutio XML-RPC Library";i:1;s:34:"http://scripts.incutio.com/xmlrpc/";}i:26;a:2:{i:0;s:8:"Thickbox";i:1;s:32:"http://codylindley.com/thickbox/";}i:27;a:2:{i:0;s:7:"TinyMCE";i:1;s:23:"http://www.tinymce.com/";}i:28;a:2:{i:0;s:7:"Twemoji";i:1;s:34:"https://github.com/twitter/twemoji";}i:29;a:2:{i:0;s:13:"Underscore.js";i:1;s:24:"http://underscorejs.org/";}i:30;a:2:{i:0;s:6:"zxcvbn";i:1;s:33:"https://github.com/dropbox/zxcvbn";}}}}s:4:"data";a:2:{s:8:"profiles";s:33:"https://profiles.wordpress.org/%s";s:7:"version";s:3:"4.5";}}', 'yes'),
(4562, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.6.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.6.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.6.1";s:7:"version";s:5:"4.6.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.6.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.6.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.6.1";s:7:"version";s:5:"4.6.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1474412060;s:15:"version_checked";s:5:"4.5.4";s:12:"translations";a:0:{}}', 'yes'),
(4569, '_site_transient_timeout_browser_f264962d435f6a6eb9e4fffbcc92e9e8', '1474934151', 'yes'),
(4570, '_site_transient_browser_f264962d435f6a6eb9e4fffbcc92e9e8', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"53.0.2785.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(4571, '_transient_timeout_plugin_slugs', '1474415990', 'no'),
(4572, '_transient_plugin_slugs', 'a:12:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:17:"bantam/bantam.php";i:2;s:25:"bwp-minify/bwp-minify.php";i:3;s:47:"bootstrap-3-shortcodes/bootstrap-shortcodes.php";i:4;s:36:"contact-form-7/wp-contact-form-7.php";i:5;s:65:"html-editor-syntax-highlighter/html-editor-syntax-highlighter.php";i:6;s:47:"rvg-optimize-database/rvg-optimize-database.php";i:7;s:31:"___rooster-properties/index.php";i:8;s:24:"rooster-slider/index.php";i:9;s:25:"shiftnav-pro/shiftnav.php";i:10;s:29:"versionpress/versionpress.php";i:11;s:31:"wp-lightbox-2/wp-lightbox-2.php";}', 'no'),
(4577, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1474340169', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4578, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"6029";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3718";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3694";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3184";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2835";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2489";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2248";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2118";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2079";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2078";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"2024";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1945";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1915";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1908";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1737";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1610";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1580";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1440";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1348";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1290";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1258";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1124";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1118";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:4:"1036";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:4:"1009";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1009";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"948";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"947";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"939";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"923";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"912";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"897";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"851";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"819";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"815";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"813";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"784";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"775";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"772";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"766";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"754";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"747";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"727";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"725";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"717";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"709";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"707";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"705";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"700";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"696";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"684";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"649";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"635";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"628";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"627";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"613";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"605";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"603";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"602";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"601";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"591";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"575";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"572";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"571";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"566";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"553";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"546";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"545";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"530";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"527";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"527";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"526";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"525";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"514";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"495";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"493";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"492";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"488";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"470";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"464";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"459";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"452";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"448";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"444";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"435";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"434";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"430";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"428";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"421";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"420";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"420";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"418";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"417";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"415";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"414";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"414";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"410";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"407";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"407";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"405";}}', 'yes'),
(4584, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1474412061;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:7:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.9";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.9.zip";}s:25:"bwp-minify/bwp-minify.php";O:8:"stdClass":6:{s:2:"id";s:5:"21792";s:4:"slug";s:10:"bwp-minify";s:6:"plugin";s:25:"bwp-minify/bwp-minify.php";s:11:"new_version";s:5:"1.3.3";s:3:"url";s:41:"https://wordpress.org/plugins/bwp-minify/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/bwp-minify.1.3.3.zip";}s:47:"bootstrap-3-shortcodes/bootstrap-shortcodes.php";O:8:"stdClass":6:{s:2:"id";s:5:"47122";s:4:"slug";s:22:"bootstrap-3-shortcodes";s:6:"plugin";s:47:"bootstrap-3-shortcodes/bootstrap-shortcodes.php";s:11:"new_version";s:6:"3.3.10";s:3:"url";s:53:"https://wordpress.org/plugins/bootstrap-3-shortcodes/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/bootstrap-3-shortcodes.3.3.10.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"4.5";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/contact-form-7.4.5.zip";}s:65:"html-editor-syntax-highlighter/html-editor-syntax-highlighter.php";O:8:"stdClass":6:{s:2:"id";s:5:"30831";s:4:"slug";s:30:"html-editor-syntax-highlighter";s:6:"plugin";s:65:"html-editor-syntax-highlighter/html-editor-syntax-highlighter.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:61:"https://wordpress.org/plugins/html-editor-syntax-highlighter/";s:7:"package";s:79:"https://downloads.wordpress.org/plugin/html-editor-syntax-highlighter.1.7.2.zip";}s:47:"rvg-optimize-database/rvg-optimize-database.php";O:8:"stdClass":6:{s:2:"id";s:5:"26203";s:4:"slug";s:21:"rvg-optimize-database";s:6:"plugin";s:47:"rvg-optimize-database/rvg-optimize-database.php";s:11:"new_version";s:5:"4.2.0";s:3:"url";s:52:"https://wordpress.org/plugins/rvg-optimize-database/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/rvg-optimize-database.4.2.0.zip";}s:31:"wp-lightbox-2/wp-lightbox-2.php";O:8:"stdClass":6:{s:2:"id";s:5:"27376";s:4:"slug";s:13:"wp-lightbox-2";s:6:"plugin";s:31:"wp-lightbox-2/wp-lightbox-2.php";s:11:"new_version";s:7:"3.0.6.2";s:3:"url";s:44:"https://wordpress.org/plugins/wp-lightbox-2/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/wp-lightbox-2.zip";}}}', 'yes'),
(4587, 'vp_rest_api_plugin_version', '2.0', 'yes'),
(4596, 'category_children', 'a:0:{}', 'yes'),
(4599, '_site_transient_timeout_theme_roots', '1474413860', 'yes'),
(4600, '_site_transient_theme_roots', 'a:1:{s:10:"cockerel_s";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=14865 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(62, 16, 'ml-slider_settings', 'a:34:{s:4:"type";s:4:"flex";s:6:"random";b:0;s:8:"cssClass";s:0:"";s:8:"printCss";b:1;s:7:"printJs";b:1;s:5:"width";i:700;s:6:"height";i:300;s:3:"spw";i:7;s:3:"sph";i:5;s:5:"delay";i:3000;s:6:"sDelay";i:30;s:7:"opacity";d:0.69999999999999996;s:10:"titleSpeed";i:500;s:6:"effect";s:6:"random";s:10:"navigation";b:1;s:5:"links";b:1;s:10:"hoverPause";b:1;s:5:"theme";s:7:"default";s:9:"direction";s:10:"horizontal";s:7:"reverse";b:0;s:14:"animationSpeed";i:600;s:8:"prevText";s:1:"<";s:8:"nextText";s:1:">";s:6:"slices";i:15;s:6:"center";b:0;s:9:"smartCrop";b:1;s:12:"carouselMode";b:0;s:14:"carouselMargin";i:5;s:6:"easing";s:6:"linear";s:8:"autoPlay";b:1;s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:9:"fullWidth";b:0;s:10:"noConflict";b:1;}'),
(106, 51, '_form', '<div class="col-md-6">\n[text* your-name placeholder "Your Name"]<br>\n[email* your-email placeholder "Your Email"]<br>\n[tel* telephone placeholder "Telephone"]<br><br>\n</div>\n<div class="col-md-6">\n[textarea your-message placeholder "Your Message"]<br>\n</div>\n[submit class:centered "Send Message"]'),
(107, 51, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:44:"[your-name] <nicholas.guest@roostergrin.com>";s:4:"body";s:160:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on www.proseorthodontics.com";s:9:"recipient";s:30:"nicholas.guest@roostergrin.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(108, 51, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:42:"wordpress <nicholas.guest@roostergrin.com>";s:4:"body";s:751:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on wordpress (//drsamcan.roostertest2.com/wordpress)%3C/textarea%3E\n\n		<p><label for="wpcf7-mail-2-exclude-blank"><input type="checkbox" id="wpcf7-mail-2-exclude-blank" name="wpcf7-mail-2-exclude-blank" value="1" /> Exclude lines with blank mail-tags from output</label></p>\n\n		<p><label for="wpcf7-mail-2-use-html"><input type="checkbox" id="wpcf7-mail-2-use-html" name="wpcf7-mail-2-use-html" value="1" /> Use HTML content type</label></p>\n	</td>\n	</tr>\n\n	<tr>\n	<th scope="row">\n		<label for="wpcf7-mail-2-attachments">File Attachments</label>\n	</th>\n	<td>\n		<textarea id="wpcf7-mail-2-attachments" name="wpcf7-mail-2-attachments" cols="100" rows="4" class="large-text code">";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:40:"Reply-To: nicholas.guest@roostergrin.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(109, 51, '_messages', 'a:23:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:34:"Please fill in the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:14:"invalid_number";s:28:"Number format seems invalid.";s:16:"number_too_small";s:25:"This number is too small.";s:16:"number_too_large";s:25:"This number is too large.";s:13:"invalid_email";s:28:"Email address seems invalid.";s:11:"invalid_url";s:18:"URL seems invalid.";s:11:"invalid_tel";s:31:"Telephone number seems invalid.";s:23:"quiz_answer_not_correct";s:27:"Your answer is not correct.";s:12:"invalid_date";s:26:"Date format seems invalid.";s:14:"date_too_early";s:23:"This date is too early.";s:13:"date_too_late";s:22:"This date is too late.";s:13:"upload_failed";s:22:"Failed to upload file.";s:24:"upload_file_type_invalid";s:30:"This file type is not allowed.";s:21:"upload_file_too_large";s:23:"This file is too large.";s:23:"upload_failed_php_error";s:38:"Failed to upload file. Error occurred.";}'),
(110, 51, '_additional_settings', ''),
(111, 51, '_locale', 'en_US'),
(120, 60, '_edit_last', '1'),
(121, 60, '_edit_lock', '1435603793:1'),
(122, 62, '_edit_last', '1'),
(123, 62, '_edit_lock', '1435604032:1'),
(2588, 416, '_edit_last', '1'),
(2589, 416, '_edit_lock', '1474329598:1'),
(2591, 416, '_wp_page_template', 'default'),
(2600, 416, 'hero1', ''),
(2601, 416, '_hero1', 'field_559dbb979a3e2'),
(2602, 416, 'blurb', ''),
(2603, 416, '_blurb', 'field_559efe4043eef'),
(2604, 416, 'doctor-prose', '412'),
(2605, 416, '_doctor-prose', 'field_55d26375be398'),
(2606, 416, 'blue-bg', '414'),
(2607, 416, '_blue-bg', 'field_55d267f228357'),
(2631, 416, 'panelimg1', '423'),
(2632, 416, '_panelimg1', 'field_55d3786606e0a'),
(2633, 416, 'panelimg2', '422'),
(2634, 416, '_panelimg2', 'field_55d3787906e0c'),
(2635, 416, 'panelimg3', '420'),
(2636, 416, '_panelimg3', 'field_55d3788106e0d'),
(2637, 416, '_', 'field_56019f2bf0492'),
(2729, 437, '_edit_last', '1'),
(2730, 437, '_edit_lock', '1450228670:1'),
(2731, 437, '_link', ''),
(2732, 438, '_edit_last', '1'),
(2733, 438, '_link', ''),
(2734, 438, '_edit_lock', '1450228649:1'),
(2735, 439, '_edit_last', '1'),
(2736, 439, '_edit_lock', '1450228441:1'),
(2737, 439, '_link', ''),
(2738, 440, '_edit_last', '1'),
(2739, 440, '_link', ''),
(2740, 440, '_edit_lock', '1453507401:1'),
(3395, 528, '_edit_last', '1'),
(3396, 528, 'field_55df9ef4e1d2e', 'a:11:{s:3:"key";s:19:"field_55df9ef4e1d2e";s:5:"label";s:12:"Hero Slide 1";s:4:"name";s:12:"hero-slide-1";s:4:"type";s:5:"image";s:12:"instructions";s:19:"Hero Slider Image 1";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
(3397, 528, 'field_55df9f2ae1d30', 'a:11:{s:3:"key";s:19:"field_55df9f2ae1d30";s:5:"label";s:12:"Hero Slide 2";s:4:"name";s:12:"hero-slide-2";s:4:"type";s:5:"image";s:12:"instructions";s:19:"Hero Slider Image 2";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:12;}'),
(3398, 528, 'field_55df9f31e1d31', 'a:11:{s:3:"key";s:19:"field_55df9f31e1d31";s:5:"label";s:12:"Hero Slide 3";s:4:"name";s:12:"hero-slide-3";s:4:"type";s:5:"image";s:12:"instructions";s:19:"Hero Slider Image 3";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:17;}'),
(3404, 528, 'position', 'acf_after_title'),
(3405, 528, 'layout', 'default'),
(3406, 528, 'hide_on_screen', ''),
(3407, 528, '_edit_lock', '1465515113:1'),
(3816, 545, '_form', '<div class="modal-header">\n<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button><h4 class="modal-title" id="myModalLabel">Make an Appointment</h4>\n</div>\n<div class="modal-body">\n<p>&nbsp;Are You A New Patient? [radio new-patient "Yes" "No"]</p>\n[text* your-name placeholder "Name"]<br>\n[email* your-email placeholder "Email"]<br>\n[tel* your-tel placeholder "Telephone"]<br>\n[textarea times placeholder "Convenient Dates & Times"]\n</div>\n<div class="modal-footer">\n<button type="button" class="btn-long" data-dismiss="modal">Cancel</button>[submit class:btn-long "Send" ]\n</div>'),
(3817, 545, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:44:"[your-name] <nicholas.guest@roostergrin.com>";s:4:"body";s:178:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Prose Orthodontics (//localhost:3000/prose)";s:9:"recipient";s:30:"nicholas.guest@roostergrin.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(3818, 545, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:51:"Prose Orthodontics <nicholas.guest@roostergrin.com>";s:4:"body";s:120:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Prose Orthodontics (//localhost:3000/prose)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:40:"Reply-To: nicholas.guest@roostergrin.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(3819, 545, '_messages', 'a:23:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:34:"Please fill in the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:14:"invalid_number";s:28:"Number format seems invalid.";s:16:"number_too_small";s:25:"This number is too small.";s:16:"number_too_large";s:25:"This number is too large.";s:13:"invalid_email";s:28:"Email address seems invalid.";s:11:"invalid_url";s:18:"URL seems invalid.";s:11:"invalid_tel";s:31:"Telephone number seems invalid.";s:23:"quiz_answer_not_correct";s:27:"Your answer is not correct.";s:12:"invalid_date";s:26:"Date format seems invalid.";s:14:"date_too_early";s:23:"This date is too early.";s:13:"date_too_late";s:22:"This date is too late.";s:13:"upload_failed";s:22:"Failed to upload file.";s:24:"upload_file_type_invalid";s:30:"This file type is not allowed.";s:21:"upload_file_too_large";s:23:"This file is too large.";s:23:"upload_failed_php_error";s:38:"Failed to upload file. Error occurred.";}'),
(3820, 545, '_additional_settings', ''),
(3821, 545, '_locale', 'en_US'),
(5730, 416, 'hero', '1393'),
(5731, 416, '_hero', 'field_56a15ba4110c5'),
(5749, 416, 'intro-text-1', '<strong>Our Mission</strong>\r\n<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '),
(5750, 416, '_intro-text-1', 'field_56008a1671d15'),
(5751, 416, 'intro-text-2', '<strong>A Family Tradition of Excellence</strong>\r\n<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '),
(5752, 416, '_intro-text-2', 'field_56008a3071d16'),
(5753, 416, 'intro-text-3', '<strong>Complimentary Consultation</strong>\r\n<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '),
(5754, 416, '_intro-text-3', 'field_56008a3671d17'),
(5827, 416, 'kim-ortho-team', '<h2>The Kim Orthodontics Team</h2>\r\n<p>Each of our full-service locations offers you a comprehensive selection of orthodontic treatments to help you achieve a wonderful smile, including:</p>\r\n<img src="wp-content/themes/cockerel_s-child/images/icons/icon-doctor.svg" class="icon"/>\r\n<p><strong>Meet Dr. Gerald Kim</strong></p>\r\n<p>Learn a little about what drives Dr. Kim</p>\r\n<hr>\r\n<img src="wp-content/themes/cockerel_s-child/images/icons/icon-team.svg" class="icon"/>\r\n<p><strong>Meet The Team</strong></p>\r\n<p>We have a professional, friendly and approachable team- meet them here!</p>\r\n<hr>\r\n<img src="wp-content/themes/cockerel_s-child/images/icons/icon-tooth-shiny.svg" class="icon"/>\r\n<p><strong>What Makes Us Unique</strong></p>\r\n<p>We''re a special practice- find out why</p>\r\n'),
(5828, 416, '_kim-ortho-team', 'field_560092eb1c61b'),
(6000, 416, 'testimonial-bg', '778'),
(6001, 416, '_testimonial-bg', 'field_56019ef5f0491'),
(11008, 416, 'tagline', 'Please Come In!'),
(11009, 416, '_tagline', 'field_563cf9e84b885'),
(11109, 416, '_post_restored_from', 'a:3:{s:20:"restored_revision_id";i:1055;s:16:"restored_by_user";i:1;s:13:"restored_time";i:1447111041;}'),
(12611, 1312, '_menu_item_type', 'custom'),
(12612, 1312, '_menu_item_menu_item_parent', '0'),
(12613, 1312, '_menu_item_object_id', '1312'),
(12614, 1312, '_menu_item_object', 'custom'),
(12615, 1312, '_menu_item_target', ''),
(12616, 1312, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(12617, 1312, '_menu_item_xfn', ''),
(12618, 1312, '_menu_item_url', '#'),
(12947, 1357, '_edit_last', '1'),
(12948, 1357, '_edit_lock', '1474395823:1'),
(12949, 1357, '_wp_page_template', 'default'),
(12963, 1357, 'hero', '1382'),
(12964, 1357, '_hero', 'field_56a15ba4110c5'),
(12965, 1359, '_menu_item_type', 'post_type'),
(12966, 1359, '_menu_item_menu_item_parent', '0'),
(12967, 1359, '_menu_item_object_id', '1357'),
(12968, 1359, '_menu_item_object', 'page'),
(12969, 1359, '_menu_item_target', ''),
(12970, 1359, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(12971, 1359, '_menu_item_xfn', ''),
(12972, 1359, '_menu_item_url', ''),
(12974, 1360, '_menu_item_type', 'post_type'),
(12975, 1360, '_menu_item_menu_item_parent', '0'),
(12976, 1360, '_menu_item_object_id', '416'),
(12977, 1360, '_menu_item_object', 'page'),
(12978, 1360, '_menu_item_target', ''),
(12979, 1360, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(12980, 1360, '_menu_item_xfn', ''),
(12981, 1360, '_menu_item_url', ''),
(12983, 1361, '_edit_last', '1'),
(12984, 1361, '_edit_lock', '1462997857:1'),
(12985, 1361, '_wp_page_template', 'default'),
(12986, 1361, 'hero', '1381'),
(12987, 1361, '_hero', 'field_56a15ba4110c5'),
(12988, 1362, '_menu_item_type', 'post_type'),
(12989, 1362, '_menu_item_menu_item_parent', '0'),
(12990, 1362, '_menu_item_object_id', '1361'),
(12991, 1362, '_menu_item_object', 'page'),
(12992, 1362, '_menu_item_target', ''),
(12993, 1362, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(12994, 1362, '_menu_item_xfn', ''),
(12995, 1362, '_menu_item_url', ''),
(12998, 1363, '_edit_last', '1'),
(12999, 1363, 'field_568dcb7e9bd87', 'a:15:{s:3:"key";s:19:"field_568dcb7e9bd87";s:5:"label";s:9:"Longitude";s:4:"name";s:9:"longitude";s:4:"type";s:6:"number";s:12:"instructions";s:38:"Longitude of map marker and map center";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:16:"e.g. -122.411300";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(13000, 1363, 'field_568dcbb39bd88', 'a:15:{s:3:"key";s:19:"field_568dcbb39bd88";s:5:"label";s:8:"Latitude";s:4:"name";s:8:"latitude";s:4:"type";s:6:"number";s:12:"instructions";s:37:"Latitude of map marker and map center";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:14:"e.g. 37.777387";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(13002, 1363, 'position', 'acf_after_title'),
(13003, 1363, 'layout', 'default'),
(13004, 1363, 'hide_on_screen', ''),
(13005, 1363, '_edit_lock', '1452133210:1'),
(13007, 1363, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:4:"1357";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(13008, 1357, 'longitude', '-122.1'),
(13009, 1357, '_longitude', 'field_568dcb7e9bd87'),
(13010, 1357, 'latitude', '37.77'),
(13011, 1357, '_latitude', 'field_568dcbb39bd88'),
(13016, 1361, 'slide-1', ''),
(13017, 1361, '_slide-1', 'field_55df9ef4e1d2e'),
(13018, 1361, 'slide-2', ''),
(13019, 1361, '_slide-2', 'field_55df9f2ae1d30'),
(13020, 1361, 'slide-3', ''),
(13021, 1361, '_slide-3', 'field_55df9f31e1d31'),
(13022, 1361, 'slide-4', ''),
(13023, 1361, '_slide-4', 'field_55df9f37e1d32'),
(13024, 1361, 'slide-5', ''),
(13025, 1361, '_slide-5', 'field_55df9f46e1d34'),
(13026, 1361, 'slide-6', ''),
(13027, 1361, '_slide-6', 'field_55df9f5ae1d36'),
(13028, 1361, 'slide-7', ''),
(13029, 1361, '_slide-7', 'field_55df9f64e1d37'),
(13030, 1367, '_edit_last', '1'),
(13031, 1367, '_wp_page_template', 'default'),
(13032, 1367, 'hero', '1381'),
(13033, 1367, '_hero', 'field_568dba1efa40e'),
(13034, 1367, '_edit_lock', '1462837977:1'),
(13035, 1369, '_menu_item_type', 'post_type'),
(13036, 1369, '_menu_item_menu_item_parent', '0'),
(13037, 1369, '_menu_item_object_id', '1367'),
(13038, 1369, '_menu_item_object', 'page'),
(13039, 1369, '_menu_item_target', ''),
(13040, 1369, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(13041, 1369, '_menu_item_xfn', ''),
(13042, 1369, '_menu_item_url', ''),
(13053, 416, 'hero-slide-1', '1381'),
(13054, 416, '_hero-slide-1', 'field_55df9ef4e1d2e'),
(13055, 416, 'hero-slide-2', '1382'),
(13056, 416, '_hero-slide-2', 'field_55df9f2ae1d30'),
(13057, 416, 'hero-slide-3', '1383'),
(13058, 416, '_hero-slide-3', 'field_55df9f31e1d31'),
(13059, 528, 'field_56a15ba4110c5', 'a:11:{s:3:"key";s:19:"field_56a15ba4110c5";s:5:"label";s:4:"Hero";s:4:"name";s:4:"hero";s:4:"type";s:5:"image";s:12:"instructions";s:64:"Add an image and uncheck the box if you want a static hero image";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56f475cfa56cc";s:8:"operator";s:2:"==";s:5:"value";s:6:"slider";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(13064, 416, 'is_hero_slider', '1'),
(13065, 416, '_is_hero_slider', 'field_56a15bc1bb87b'),
(13070, 528, 'field_56a1690811380', 'a:14:{s:3:"key";s:19:"field_56a1690811380";s:5:"label";s:11:"Hero Text 1";s:4:"name";s:11:"hero-text-1";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:32:"Text here will move with Slide 1";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}'),
(13071, 528, 'field_56a1692e11381', 'a:14:{s:3:"key";s:19:"field_56a1692e11381";s:5:"label";s:11:"Hero Text 2";s:4:"name";s:11:"hero-text-2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:32:"Text here will move with Slide 2";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:13;}'),
(13072, 528, 'field_56a1693a11382', 'a:14:{s:3:"key";s:19:"field_56a1693a11382";s:5:"label";s:11:"Hero Text 3";s:4:"name";s:11:"hero-text-3";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:32:"Text here will move with Slide 3";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:18;}'),
(13074, 528, 'field_56a1695b6f567', 'a:12:{s:3:"key";s:19:"field_56a1695b6f567";s:5:"label";s:17:"Hero Text Color 1";s:4:"name";s:17:"hero-text-color-1";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"choices";a:2:{s:4:"dark";s:4:"Dark";s:5:"light";s:5:"Light";}s:13:"default_value";s:4:"dark";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;}'),
(13076, 528, 'field_56a169a914429', 'a:12:{s:3:"key";s:19:"field_56a169a914429";s:5:"label";s:17:"Hero Text Color 2";s:4:"name";s:17:"hero-text-color-2";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"choices";a:2:{s:4:"dark";s:4:"Dark";s:5:"light";s:5:"Light";}s:13:"default_value";s:4:"dark";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:14;}'),
(13078, 528, 'field_56a169be35727', 'a:12:{s:3:"key";s:19:"field_56a169be35727";s:5:"label";s:17:"Hero Text Color 3";s:4:"name";s:17:"hero-text-color-3";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"choices";a:2:{s:4:"dark";s:4:"Dark";s:5:"light";s:5:"Light";}s:13:"default_value";s:4:"dark";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:19;}'),
(13081, 416, 'hero_text_1', 'Hero Text Which Moves With Slide 1'),
(13082, 416, '_hero_text_1', 'field_56a1690811380'),
(13083, 416, 'hero_text_color_1', 'dark: Dark'),
(13084, 416, '_hero_text_color_1', 'field_56a1695b6f567'),
(13085, 416, 'hero_text_2', 'Hero Text Which Moves With Slide 2'),
(13086, 416, '_hero_text_2', 'field_56a1692e11381'),
(13087, 416, 'hero_text_color_2', 'dark: Dark'),
(13088, 416, '_hero_text_color_2', 'field_56a169a914429'),
(13089, 416, 'hero_text_3', 'Hero Text Which Moves With Slide 3'),
(13090, 416, '_hero_text_3', 'field_56a1693a11382'),
(13091, 416, 'hero_text_color_3', 'dark: Dark'),
(13092, 416, '_hero_text_color_3', 'field_56a169be35727'),
(13096, 416, 'hero-text-1', 'Hero Slider Slide 1 Move w Slide'),
(13097, 416, '_hero-text-1', 'field_56a1690811380'),
(13098, 416, 'hero-text-color-1', 'light'),
(13099, 416, '_hero-text-color-1', 'field_56a1695b6f567'),
(13100, 416, 'hero-text-2', 'Hero Slider Slide 2 Move w Slide'),
(13101, 416, '_hero-text-2', 'field_56a1692e11381'),
(13102, 416, 'hero-text-color-2', 'light'),
(13103, 416, '_hero-text-color-2', 'field_56a169a914429'),
(13104, 416, 'hero-text-3', 'Hero Slider Slide 3 Move w Slide'),
(13105, 416, '_hero-text-3', 'field_56a1693a11382'),
(13106, 416, 'hero-text-color-3', 'dark'),
(13107, 416, '_hero-text-color-3', 'field_56a169be35727'),
(13108, 528, 'field_56a1737a961c3', 'a:12:{s:3:"key";s:19:"field_56a1737a961c3";s:5:"label";s:20:"Hero Text Position 1";s:4:"name";s:20:"hero-text-position-1";s:4:"type";s:6:"select";s:12:"instructions";s:38:"Choose position of hero text on slide.";s:8:"required";s:1:"0";s:7:"choices";a:4:{s:8:"top left";s:8:"Top Left";s:9:"top right";s:9:"Top Right";s:11:"bottom left";s:11:"Bottom Left";s:12:"bottom right";s:12:"Bottom Right";}s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:10;}'),
(13111, 416, 'hero-text-position-1', 'top left'),
(13112, 416, '_hero-text-position-1', 'field_56a1737a961c3'),
(13114, 528, 'field_56a17472500f5', 'a:12:{s:3:"key";s:19:"field_56a17472500f5";s:5:"label";s:20:"Hero Text Position 2";s:4:"name";s:20:"hero-text-position-2";s:4:"type";s:6:"select";s:12:"instructions";s:38:"Choose position of hero text on slide.";s:8:"required";s:1:"0";s:7:"choices";a:4:{s:8:"top-left";s:8:"Top Left";s:9:"top-right";s:9:"Top Right";s:11:"bottom-left";s:11:"Bottom Left";s:12:"bottom-right";s:12:"Bottom Right";}s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:15;}'),
(13115, 528, 'field_56a17484500f6', 'a:12:{s:3:"key";s:19:"field_56a17484500f6";s:5:"label";s:20:"Hero Text Position 3";s:4:"name";s:20:"hero-text-position-3";s:4:"type";s:6:"select";s:12:"instructions";s:38:"Choose position of hero text on slide.";s:8:"required";s:1:"0";s:7:"choices";a:4:{s:8:"top-left";s:8:"Top Left";s:9:"top-right";s:9:"Top Right";s:11:"bottom-left";s:11:"Bottom Left";s:12:"bottom-right";s:12:"Bottom Right";}s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:20;}'),
(13117, 528, 'field_56a174a60d4e6', 'a:8:{s:3:"key";s:19:"field_56a174a60d4e6";s:5:"label";s:21:"Hero General Settings";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(13119, 528, 'field_56a174f93d22b', 'a:8:{s:3:"key";s:19:"field_56a174f93d22b";s:5:"label";s:7:"Slide 1";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(13120, 528, 'field_56a175003d22c', 'a:8:{s:3:"key";s:19:"field_56a175003d22c";s:5:"label";s:7:"Slide 2";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:11;}'),
(13121, 528, 'field_56a175093d22d', 'a:8:{s:3:"key";s:19:"field_56a175093d22d";s:5:"label";s:7:"Slide 3";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:16;}'),
(13126, 416, 'hero-text-position-2', 'top-left'),
(13127, 416, '_hero-text-position-2', 'field_56a17472500f5'),
(13128, 416, 'hero-text-position-3', 'bottom-left'),
(13129, 416, '_hero-text-position-3', 'field_56a17484500f6'),
(13150, 1380, '_wp_attached_file', 'site-logo.png'),
(13151, 1380, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:50;s:4:"file";s:13:"site-logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"site-logo-150x50.png";s:5:"width";i:150;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(13152, 1381, '_wp_attached_file', 'chameleon.jpg'),
(13153, 1381, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2200;s:6:"height";i:891;s:4:"file";s:13:"chameleon.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"chameleon-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"chameleon-300x122.jpg";s:5:"width";i:300;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"chameleon-1024x415.jpg";s:5:"width";i:1024;s:6:"height";i:415;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(13154, 1382, '_wp_attached_file', 'fox.jpg'),
(13155, 1382, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2200;s:6:"height";i:892;s:4:"file";s:7:"fox.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"fox-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"fox-300x122.jpg";s:5:"width";i:300;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"fox-1024x415.jpg";s:5:"width";i:1024;s:6:"height";i:415;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(13156, 1383, '_wp_attached_file', 'sparrow.jpg'),
(13157, 1383, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2200;s:6:"height";i:891;s:4:"file";s:11:"sparrow.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"sparrow-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"sparrow-300x122.jpg";s:5:"width";i:300;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"sparrow-1024x415.jpg";s:5:"width";i:1024;s:6:"height";i:415;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(13158, 1380, '_wp_attachment_custom_header_last_used_cockerel_s', '1453507380'),
(13159, 1380, '_wp_attachment_is_custom_header', 'cockerel_s'),
(13160, 1385, '_edit_last', '1'),
(13161, 1385, '_edit_lock', '1454002573:1'),
(13172, 1385, 'address_line_1', '24 Privet Drive'),
(13173, 1385, '_address_line_1', 'field_56a9a8d56dae5'),
(13174, 1385, 'property_image', ''),
(13175, 1385, '_property_image', 'field_56a9a96808224'),
(13178, 1388, '_edit_last', '1'),
(13179, 1388, '_edit_lock', '1474411939:1'),
(13180, 1388, 'hero', '1383'),
(13181, 1388, '_hero', 'field_56a15ba4110c5'),
(13182, 1389, '_menu_item_type', 'post_type'),
(13183, 1389, '_menu_item_menu_item_parent', '0'),
(13184, 1389, '_menu_item_object_id', '1388'),
(13185, 1389, '_menu_item_object', 'page'),
(13186, 1389, '_menu_item_target', ''),
(13187, 1389, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(13188, 1389, '_menu_item_xfn', ''),
(13189, 1389, '_menu_item_url', ''),
(13191, 1391, '_wp_attached_file', 'roostergrin-logo-full.svg'),
(13192, 528, 'field_56bce66320ba1', 'a:12:{s:3:"key";s:19:"field_56bce66320ba1";s:5:"label";s:22:"Hero Text Color Single";s:4:"name";s:22:"hero-text-color-single";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:7:"choices";a:2:{s:4:"dark";s:4:"Dark";s:5:"light";s:5:"Light";}s:13:"default_value";s:4:"dark";s:10:"allow_null";s:1:"1";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(13193, 528, 'field_56bce67f20ba2', 'a:12:{s:3:"key";s:19:"field_56bce67f20ba2";s:5:"label";s:25:"Hero Text Position Single";s:4:"name";s:25:"hero-text-position-single";s:4:"type";s:6:"select";s:12:"instructions";s:38:"Choose position of hero text on slide.";s:8:"required";s:1:"0";s:7:"choices";a:4:{s:8:"top left";s:8:"Top Left";s:9:"top right";s:9:"Top Right";s:11:"bottom left";s:11:"Bottom Left";s:12:"bottom right";s:12:"Bottom Right";}s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(13195, 528, 'field_56bce6b6b3209', 'a:14:{s:3:"key";s:19:"field_56bce6b6b3209";s:5:"label";s:16:"Hero Text Single";s:4:"name";s:16:"hero-text-single";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:26:"Hero text for static image";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56f475cfa56cc";s:8:"operator";s:2:"==";s:5:"value";s:6:"slider";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(13197, 416, 'hero_text_color_single', 'light'),
(13198, 416, '_hero_text_color_single', 'field_56bce66320ba1'),
(13199, 416, 'hero_text_position_single', 'top left'),
(13200, 416, '_hero_text_position_single', 'field_56bce67f20ba2'),
(13201, 416, 'hero_text_single', 'Line of Hero Text'),
(13202, 416, '_hero_text_single', 'field_56bce6b6b3209'),
(13238, 1393, '_wp_attached_file', 'deer.jpg'),
(13239, 1393, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2200;s:6:"height";i:892;s:4:"file";s:8:"deer.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"deer-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"deer-300x122.jpg";s:5:"width";i:300;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"deer-1024x415.jpg";s:5:"width";i:1024;s:6:"height";i:415;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(13240, 1393, '_wp_attachment_image_alt', 'Deer'),
(13414, 416, 'hero-text-single', 'Line of Excellent Hero Text'),
(13415, 416, '_hero-text-single', 'field_56bce6b6b3209'),
(13416, 416, 'hero-text-color-single', 'dark'),
(13417, 416, '_hero-text-color-single', 'field_56bce66320ba1'),
(13418, 416, 'hero-text-position-single', 'bottom left'),
(13419, 416, '_hero-text-position-single', 'field_56bce67f20ba2'),
(13476, 1388, '_post_restored_from', 'a:3:{s:20:"restored_revision_id";i:1411;s:16:"restored_by_user";i:1;s:13:"restored_time";i:1456881740;}'),
(13489, 1382, '_edit_lock', '1458343862:1'),
(13506, 1429, '_wp_attached_file', 'background-pattern.jpg'),
(13507, 1429, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:298;s:6:"height";i:267;s:4:"file";s:22:"background-pattern.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"background-pattern-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(13508, 1429, '_edit_lock', '1458345188:1'),
(13569, 1444, '_menu_item_type', 'custom'),
(13570, 1444, '_menu_item_menu_item_parent', '1389'),
(13571, 1444, '_menu_item_object_id', '1444'),
(13572, 1444, '_menu_item_object', 'custom'),
(13573, 1444, '_menu_item_target', ''),
(13574, 1444, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(13575, 1444, '_menu_item_xfn', ''),
(13576, 1444, '_menu_item_url', '/cockerel_s/elements/#read-more'),
(13578, 1445, '_menu_item_type', 'custom'),
(13579, 1445, '_menu_item_menu_item_parent', '1389'),
(13580, 1445, '_menu_item_object_id', '1445'),
(13581, 1445, '_menu_item_object', 'custom'),
(13582, 1445, '_menu_item_target', ''),
(13583, 1445, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(13584, 1445, '_menu_item_xfn', ''),
(13585, 1445, '_menu_item_url', '/cockerel_s/elements/#accordion'),
(13587, 1446, '_menu_item_type', 'custom'),
(13588, 1446, '_menu_item_menu_item_parent', '1389'),
(13589, 1446, '_menu_item_object_id', '1446'),
(13590, 1446, '_menu_item_object', 'custom'),
(13591, 1446, '_menu_item_target', ''),
(13592, 1446, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(13593, 1446, '_menu_item_xfn', ''),
(13594, 1446, '_menu_item_url', '/cockerel_s/elements/#horizontal-tabs'),
(13596, 1447, '_menu_item_type', 'custom'),
(13597, 1447, '_menu_item_menu_item_parent', '1389'),
(13598, 1447, '_menu_item_object_id', '1447'),
(13599, 1447, '_menu_item_object', 'custom'),
(13600, 1447, '_menu_item_target', ''),
(13601, 1447, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(13602, 1447, '_menu_item_xfn', ''),
(13603, 1447, '_menu_item_url', '/cockerel_s/elements/#vertical-tabs'),
(13609, 528, 'field_56f475cfa56cc', 'a:12:{s:3:"key";s:19:"field_56f475cfa56cc";s:5:"label";s:19:"Slider/Static/Video";s:4:"name";s:12:"content_type";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"choices";a:3:{s:6:"slider";s:6:"Slider";s:6:"static";s:12:"Static Image";s:5:"video";s:5:"Video";}s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56bce66320ba1";s:8:"operator";s:2:"==";s:5:"value";s:4:"dark";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(13612, 416, 'content_type', 'video'),
(13613, 416, '_content_type', 'field_56f475cfa56cc'),
(13651, 528, 'field_56f4780d247e0', 'a:14:{s:3:"key";s:19:"field_56f4780d247e0";s:5:"label";s:9:"Video URL";s:4:"name";s:9:"video_url";s:4:"type";s:4:"text";s:12:"instructions";s:92:"Enter relative path to video URL from stylesheet directory, e.g. <pre>/videos/hero.mp4</pre>";s:8:"required";s:1:"0";s:13:"default_value";s:16:"/videos/hero.mp4";s:11:"placeholder";s:21:"e.g. /videos/hero.mp4";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56f475cfa56cc";s:8:"operator";s:2:"==";s:5:"value";s:6:"slider";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:22;}'),
(13654, 416, 'video_url', '/videos/hero.mp4'),
(13655, 416, '_video_url', 'field_56f4780d247e0'),
(13656, 528, 'field_56f478b4f8e47', 'a:8:{s:3:"key";s:19:"field_56f478b4f8e47";s:5:"label";s:10:"Hero Video";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:21;}'),
(13740, 528, 'field_56f47a9b895c5', 'a:11:{s:3:"key";s:19:"field_56f47a9b895c5";s:5:"label";s:14:"Video Underlay";s:4:"name";s:14:"video_underlay";s:4:"type";s:5:"image";s:12:"instructions";s:87:"Add a video underlay if the video is loading/can''t load (First frame of video is good).";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56a15bc1bb87b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:23;}'),
(13743, 416, 'video_underlay', ''),
(13744, 416, '_video_underlay', 'field_56f47a9b895c5'),
(13790, 528, 'field_56f482958a808', 'a:11:{s:3:"key";s:19:"field_56f482958a808";s:5:"label";s:4:"Loop";s:4:"name";s:10:"video_loop";s:4:"type";s:8:"checkbox";s:12:"instructions";s:11:"Loop Video?";s:8:"required";s:1:"0";s:7:"choices";a:1:{s:4:"true";s:3:"Yes";}s:13:"default_value";s:0:"";s:6:"layout";s:8:"vertical";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56f475cfa56cc";s:8:"operator";s:2:"==";s:5:"value";s:6:"slider";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:24;}'),
(13791, 528, 'field_56f482d78a80a', 'a:11:{s:3:"key";s:19:"field_56f482d78a80a";s:5:"label";s:8:"Autoplay";s:4:"name";s:14:"video_autoplay";s:4:"type";s:8:"checkbox";s:12:"instructions";s:15:"Autoplay Video?";s:8:"required";s:1:"0";s:7:"choices";a:1:{s:4:"true";s:3:"Yes";}s:13:"default_value";s:0:"";s:6:"layout";s:8:"vertical";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_56f475cfa56cc";s:8:"operator";s:2:"==";s:5:"value";s:6:"slider";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:25;}'),
(13795, 416, 'video_loop', 'a:1:{i:0;s:4:"true";}'),
(13796, 416, '_video_loop', 'field_56f482958a808'),
(13797, 416, 'video_autoplay', 'a:1:{i:0;s:4:"true";}'),
(13798, 416, '_video_autoplay', 'field_56f482d78a80a'),
(14189, 1388, 'content_type', 'slider'),
(14190, 1388, '_content_type', 'field_56f475cfa56cc'),
(14191, 1388, 'hero-text-single', '/videos/hero.mp4'),
(14192, 1388, '_hero-text-single', 'field_56bce6b6b3209'),
(14193, 1388, 'hero-text-color-single', 'dark'),
(14194, 1388, '_hero-text-color-single', 'field_56bce66320ba1'),
(14195, 1388, 'hero-text-position-single', 'top left'),
(14196, 1388, '_hero-text-position-single', 'field_56bce67f20ba2'),
(14197, 1388, 'hero-slide-1', ''),
(14198, 1388, '_hero-slide-1', 'field_55df9ef4e1d2e'),
(14199, 1388, 'hero-text-1', ''),
(14200, 1388, '_hero-text-1', 'field_56a1690811380'),
(14201, 1388, 'hero-text-color-1', 'dark'),
(14202, 1388, '_hero-text-color-1', 'field_56a1695b6f567'),
(14203, 1388, 'hero-text-position-1', 'top left'),
(14204, 1388, '_hero-text-position-1', 'field_56a1737a961c3'),
(14205, 1388, 'hero-slide-2', ''),
(14206, 1388, '_hero-slide-2', 'field_55df9f2ae1d30'),
(14207, 1388, 'hero-text-2', ''),
(14208, 1388, '_hero-text-2', 'field_56a1692e11381'),
(14209, 1388, 'hero-text-color-2', 'dark'),
(14210, 1388, '_hero-text-color-2', 'field_56a169a914429'),
(14211, 1388, 'hero-text-position-2', 'top-left'),
(14212, 1388, '_hero-text-position-2', 'field_56a17472500f5'),
(14213, 1388, 'hero-slide-3', ''),
(14214, 1388, '_hero-slide-3', 'field_55df9f31e1d31'),
(14215, 1388, 'hero-text-3', ''),
(14216, 1388, '_hero-text-3', 'field_56a1693a11382'),
(14217, 1388, 'hero-text-color-3', 'dark'),
(14218, 1388, '_hero-text-color-3', 'field_56a169be35727'),
(14219, 1388, 'hero-text-position-3', 'top-left'),
(14220, 1388, '_hero-text-position-3', 'field_56a17484500f6'),
(14221, 1388, 'video_url', ''),
(14222, 1388, '_video_url', 'field_56f4780d247e0'),
(14223, 1388, 'video_underlay', ''),
(14224, 1388, '_video_underlay', 'field_56f47a9b895c5'),
(14225, 1388, 'video_loop', ''),
(14226, 1388, '_video_loop', 'field_56f482958a808'),
(14227, 1388, 'video_autoplay', ''),
(14228, 1388, '_video_autoplay', 'field_56f482d78a80a'),
(14271, 1465, '_wp_attached_file', 'kingfisher.jpg'),
(14272, 1465, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4844;s:6:"height";i:3234;s:4:"file";s:14:"kingfisher.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"kingfisher-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"kingfisher-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"kingfisher-1024x684.jpg";s:5:"width";i:1024;s:6:"height";i:684;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(14445, 1357, 'content_type', 'slider'),
(14446, 1357, '_content_type', 'field_56f475cfa56cc'),
(14447, 1357, 'hero-text-single', '/videos/hero.mp4'),
(14448, 1357, '_hero-text-single', 'field_56bce6b6b3209'),
(14449, 1357, 'hero-text-color-single', 'dark'),
(14450, 1357, '_hero-text-color-single', 'field_56bce66320ba1'),
(14451, 1357, 'hero-text-position-single', 'top left'),
(14452, 1357, '_hero-text-position-single', 'field_56bce67f20ba2'),
(14453, 1357, 'hero-slide-1', ''),
(14454, 1357, '_hero-slide-1', 'field_55df9ef4e1d2e'),
(14455, 1357, 'hero-text-1', ''),
(14456, 1357, '_hero-text-1', 'field_56a1690811380'),
(14457, 1357, 'hero-text-color-1', 'dark'),
(14458, 1357, '_hero-text-color-1', 'field_56a1695b6f567'),
(14459, 1357, 'hero-text-position-1', 'top left'),
(14460, 1357, '_hero-text-position-1', 'field_56a1737a961c3'),
(14461, 1357, 'hero-slide-2', ''),
(14462, 1357, '_hero-slide-2', 'field_55df9f2ae1d30'),
(14463, 1357, 'hero-text-2', ''),
(14464, 1357, '_hero-text-2', 'field_56a1692e11381'),
(14465, 1357, 'hero-text-color-2', 'dark'),
(14466, 1357, '_hero-text-color-2', 'field_56a169a914429'),
(14467, 1357, 'hero-text-position-2', 'top-left'),
(14468, 1357, '_hero-text-position-2', 'field_56a17472500f5'),
(14469, 1357, 'hero-slide-3', ''),
(14470, 1357, '_hero-slide-3', 'field_55df9f31e1d31'),
(14471, 1357, 'hero-text-3', ''),
(14472, 1357, '_hero-text-3', 'field_56a1693a11382'),
(14473, 1357, 'hero-text-color-3', 'dark'),
(14474, 1357, '_hero-text-color-3', 'field_56a169be35727'),
(14475, 1357, 'hero-text-position-3', 'top-left'),
(14476, 1357, '_hero-text-position-3', 'field_56a17484500f6'),
(14477, 1357, 'video_url', ''),
(14478, 1357, '_video_url', 'field_56f4780d247e0'),
(14479, 1357, 'video_underlay', ''),
(14480, 1357, '_video_underlay', 'field_56f47a9b895c5'),
(14481, 1357, 'video_loop', ''),
(14482, 1357, '_video_loop', 'field_56f482958a808'),
(14483, 1357, 'video_autoplay', ''),
(14484, 1357, '_video_autoplay', 'field_56f482d78a80a'),
(14665, 1361, 'content_type', 'static'),
(14666, 1361, '_content_type', 'field_56f475cfa56cc'),
(14667, 1361, 'hero-text-single', '/videos/hero.mp4'),
(14668, 1361, '_hero-text-single', 'field_56bce6b6b3209'),
(14669, 1361, 'hero-text-color-single', 'dark'),
(14670, 1361, '_hero-text-color-single', 'field_56bce66320ba1'),
(14671, 1361, 'hero-text-position-single', 'top left'),
(14672, 1361, '_hero-text-position-single', 'field_56bce67f20ba2'),
(14673, 1361, 'hero-slide-1', ''),
(14674, 1361, '_hero-slide-1', 'field_55df9ef4e1d2e'),
(14675, 1361, 'hero-text-1', ''),
(14676, 1361, '_hero-text-1', 'field_56a1690811380'),
(14677, 1361, 'hero-text-color-1', 'dark'),
(14678, 1361, '_hero-text-color-1', 'field_56a1695b6f567'),
(14679, 1361, 'hero-text-position-1', 'top left'),
(14680, 1361, '_hero-text-position-1', 'field_56a1737a961c3'),
(14681, 1361, 'hero-slide-2', ''),
(14682, 1361, '_hero-slide-2', 'field_55df9f2ae1d30'),
(14683, 1361, 'hero-text-2', ''),
(14684, 1361, '_hero-text-2', 'field_56a1692e11381'),
(14685, 1361, 'hero-text-color-2', 'dark'),
(14686, 1361, '_hero-text-color-2', 'field_56a169a914429'),
(14687, 1361, 'hero-text-position-2', 'top-left'),
(14688, 1361, '_hero-text-position-2', 'field_56a17472500f5'),
(14689, 1361, 'hero-slide-3', ''),
(14690, 1361, '_hero-slide-3', 'field_55df9f31e1d31'),
(14691, 1361, 'hero-text-3', ''),
(14692, 1361, '_hero-text-3', 'field_56a1693a11382'),
(14693, 1361, 'hero-text-color-3', 'dark'),
(14694, 1361, '_hero-text-color-3', 'field_56a169be35727'),
(14695, 1361, 'hero-text-position-3', 'top-left'),
(14696, 1361, '_hero-text-position-3', 'field_56a17484500f6'),
(14697, 1361, 'video_url', ''),
(14698, 1361, '_video_url', 'field_56f4780d247e0'),
(14699, 1361, 'video_underlay', ''),
(14700, 1361, '_video_underlay', 'field_56f47a9b895c5'),
(14701, 1361, 'video_loop', ''),
(14702, 1361, '_video_loop', 'field_56f482958a808'),
(14703, 1361, 'video_autoplay', ''),
(14704, 1361, '_video_autoplay', 'field_56f482d78a80a'),
(14705, 1476, '_edit_last', '1'),
(14706, 1476, 'content_type', 'slider'),
(14707, 1476, '_content_type', 'field_56f475cfa56cc'),
(14708, 1476, 'hero', ''),
(14709, 1476, '_hero', 'field_56a15ba4110c5'),
(14710, 1476, 'hero-text-single', '/videos/hero.mp4'),
(14711, 1476, '_hero-text-single', 'field_56bce6b6b3209'),
(14712, 1476, 'hero-text-color-single', 'dark'),
(14713, 1476, '_hero-text-color-single', 'field_56bce66320ba1'),
(14714, 1476, 'hero-text-position-single', 'top left'),
(14715, 1476, '_hero-text-position-single', 'field_56bce67f20ba2'),
(14716, 1476, 'hero-slide-1', ''),
(14717, 1476, '_hero-slide-1', 'field_55df9ef4e1d2e'),
(14718, 1476, 'hero-text-1', ''),
(14719, 1476, '_hero-text-1', 'field_56a1690811380'),
(14720, 1476, 'hero-text-color-1', 'dark'),
(14721, 1476, '_hero-text-color-1', 'field_56a1695b6f567'),
(14722, 1476, 'hero-text-position-1', 'top left'),
(14723, 1476, '_hero-text-position-1', 'field_56a1737a961c3'),
(14724, 1476, 'hero-slide-2', ''),
(14725, 1476, '_hero-slide-2', 'field_55df9f2ae1d30'),
(14726, 1476, 'hero-text-2', ''),
(14727, 1476, '_hero-text-2', 'field_56a1692e11381'),
(14728, 1476, 'hero-text-color-2', 'dark'),
(14729, 1476, '_hero-text-color-2', 'field_56a169a914429'),
(14730, 1476, 'hero-text-position-2', 'top-left'),
(14731, 1476, '_hero-text-position-2', 'field_56a17472500f5'),
(14732, 1476, 'hero-slide-3', ''),
(14733, 1476, '_hero-slide-3', 'field_55df9f31e1d31'),
(14734, 1476, 'hero-text-3', ''),
(14735, 1476, '_hero-text-3', 'field_56a1693a11382'),
(14736, 1476, 'hero-text-color-3', 'dark'),
(14737, 1476, '_hero-text-color-3', 'field_56a169be35727'),
(14738, 1476, 'hero-text-position-3', 'top-left'),
(14739, 1476, '_hero-text-position-3', 'field_56a17484500f6'),
(14740, 1476, 'video_url', ''),
(14741, 1476, '_video_url', 'field_56f4780d247e0'),
(14742, 1476, 'video_underlay', ''),
(14743, 1476, '_video_underlay', 'field_56f47a9b895c5'),
(14744, 1476, 'video_loop', ''),
(14745, 1476, '_video_loop', 'field_56f482958a808'),
(14746, 1476, 'video_autoplay', ''),
(14747, 1476, '_video_autoplay', 'field_56f482d78a80a'),
(14748, 1476, '_edit_lock', '1469749674:1'),
(14753, 1478, '_edit_last', '1'),
(14754, 1478, '_edit_lock', '1469749194:1'),
(14767, 528, 'rule', 'a:5:{s:5:"param";s:9:"page_type";s:8:"operator";s:2:"==";s:5:"value";s:9:"top_level";s:8:"order_no";i:0;s:8:"group_no";i:0;}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(14768, 528, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"!=";s:5:"value";s:13:"header_footer";s:8:"order_no";i:1;s:8:"group_no";i:0;}'),
(14769, 528, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:4:"1357";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(14770, 528, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"!=";s:5:"value";s:13:"header_footer";s:8:"order_no";i:1;s:8:"group_no";i:1;}'),
(14777, 1483, 'content_type', 'video'),
(14778, 1483, '_content_type', 'field_56f475cfa56cc'),
(14779, 1483, 'hero', '1393'),
(14780, 1483, '_hero', 'field_56a15ba4110c5'),
(14781, 1483, 'hero-text-single', 'Line of Excellent Hero Text'),
(14782, 1483, '_hero-text-single', 'field_56bce6b6b3209'),
(14783, 1483, 'hero-text-color-single', 'dark'),
(14784, 1483, '_hero-text-color-single', 'field_56bce66320ba1'),
(14785, 1483, 'hero-text-position-single', 'bottom left'),
(14786, 1483, '_hero-text-position-single', 'field_56bce67f20ba2'),
(14787, 1483, 'hero-slide-1', '1381'),
(14788, 1483, '_hero-slide-1', 'field_55df9ef4e1d2e'),
(14789, 1483, 'hero-text-1', 'Hero Slider Slide 1 Move w Slide'),
(14790, 1483, '_hero-text-1', 'field_56a1690811380'),
(14791, 1483, 'hero-text-color-1', 'light'),
(14792, 1483, '_hero-text-color-1', 'field_56a1695b6f567'),
(14793, 1483, 'hero-text-position-1', 'top left'),
(14794, 1483, '_hero-text-position-1', 'field_56a1737a961c3'),
(14795, 1483, 'hero-slide-2', '1382'),
(14796, 1483, '_hero-slide-2', 'field_55df9f2ae1d30'),
(14797, 1483, 'hero-text-2', 'Hero Slider Slide 2 Move w Slide'),
(14798, 1483, '_hero-text-2', 'field_56a1692e11381'),
(14799, 1483, 'hero-text-color-2', 'light'),
(14800, 1483, '_hero-text-color-2', 'field_56a169a914429'),
(14801, 1483, 'hero-text-position-2', 'top-left'),
(14802, 1483, '_hero-text-position-2', 'field_56a17472500f5'),
(14803, 1483, 'hero-slide-3', '1383'),
(14804, 1483, '_hero-slide-3', 'field_55df9f31e1d31'),
(14805, 1483, 'hero-text-3', 'Hero Slider Slide 3 Move w Slide'),
(14806, 1483, '_hero-text-3', 'field_56a1693a11382'),
(14807, 1483, 'hero-text-color-3', 'dark'),
(14808, 1483, '_hero-text-color-3', 'field_56a169be35727'),
(14809, 1483, 'hero-text-position-3', 'bottom-left'),
(14810, 1483, '_hero-text-position-3', 'field_56a17484500f6'),
(14811, 1483, 'video_url', '/videos/hero.mp4'),
(14812, 1483, '_video_url', 'field_56f4780d247e0'),
(14813, 1483, 'video_underlay', ''),
(14814, 1483, '_video_underlay', 'field_56f47a9b895c5'),
(14815, 1483, 'video_loop', 'a:1:{i:0;s:4:"true";}'),
(14816, 1483, '_video_loop', 'field_56f482958a808'),
(14817, 1483, 'video_autoplay', 'a:1:{i:0;s:4:"true";}'),
(14818, 1483, '_video_autoplay', 'field_56f482d78a80a'),
(14819, 1484, 'longitude', '-122.1'),
(14820, 1484, '_longitude', 'field_568dcb7e9bd87'),
(14821, 1484, 'latitude', '37.77'),
(14822, 1484, '_latitude', 'field_568dcbb39bd88'),
(14823, 1484, 'content_type', 'slider'),
(14824, 1484, '_content_type', 'field_56f475cfa56cc'),
(14825, 1484, 'hero', '1382'),
(14826, 1484, '_hero', 'field_56a15ba4110c5'),
(14827, 1484, 'hero-text-single', '/videos/hero.mp4'),
(14828, 1484, '_hero-text-single', 'field_56bce6b6b3209'),
(14829, 1484, 'hero-text-color-single', 'dark'),
(14830, 1484, '_hero-text-color-single', 'field_56bce66320ba1'),
(14831, 1484, 'hero-text-position-single', 'top left'),
(14832, 1484, '_hero-text-position-single', 'field_56bce67f20ba2'),
(14833, 1484, 'hero-slide-1', ''),
(14834, 1484, '_hero-slide-1', 'field_55df9ef4e1d2e'),
(14835, 1484, 'hero-text-1', ''),
(14836, 1484, '_hero-text-1', 'field_56a1690811380'),
(14837, 1484, 'hero-text-color-1', 'dark'),
(14838, 1484, '_hero-text-color-1', 'field_56a1695b6f567'),
(14839, 1484, 'hero-text-position-1', 'top left'),
(14840, 1484, '_hero-text-position-1', 'field_56a1737a961c3'),
(14841, 1484, 'hero-slide-2', ''),
(14842, 1484, '_hero-slide-2', 'field_55df9f2ae1d30'),
(14843, 1484, 'hero-text-2', ''),
(14844, 1484, '_hero-text-2', 'field_56a1692e11381'),
(14845, 1484, 'hero-text-color-2', 'dark'),
(14846, 1484, '_hero-text-color-2', 'field_56a169a914429'),
(14847, 1484, 'hero-text-position-2', 'top-left'),
(14848, 1484, '_hero-text-position-2', 'field_56a17472500f5'),
(14849, 1484, 'hero-slide-3', ''),
(14850, 1484, '_hero-slide-3', 'field_55df9f31e1d31'),
(14851, 1484, 'hero-text-3', ''),
(14852, 1484, '_hero-text-3', 'field_56a1693a11382'),
(14853, 1484, 'hero-text-color-3', 'dark'),
(14854, 1484, '_hero-text-color-3', 'field_56a169be35727'),
(14855, 1484, 'hero-text-position-3', 'top-left'),
(14856, 1484, '_hero-text-position-3', 'field_56a17484500f6'),
(14857, 1484, 'video_url', ''),
(14858, 1484, '_video_url', 'field_56f4780d247e0'),
(14859, 1484, 'video_underlay', ''),
(14860, 1484, '_video_underlay', 'field_56f47a9b895c5'),
(14861, 1484, 'video_loop', ''),
(14862, 1484, '_video_loop', 'field_56f482958a808'),
(14863, 1484, 'video_autoplay', ''),
(14864, 1484, '_video_autoplay', 'field_56f482d78a80a');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=1485 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(16, 1, '2015-06-23 17:45:41', '2015-06-23 17:45:41', '', 'New Slider', '', 'publish', 'open', 'open', '', 'new-slider', '', '', '2015-06-23 17:45:41', '2015-06-23 17:45:41', '', 0, 'http://localhost/wordpress/?post_type=ml-slider&p=16', 0, 'ml-slider', '', 0),
(51, 1, '2015-06-26 01:05:49', '2015-06-26 01:05:49', '<div class="col-md-6">\r\n[text* your-name placeholder "Your Name"]<br>\r\n[email* your-email placeholder "Your Email"]<br>\r\n[tel* telephone placeholder "Telephone"]<br><br>\r\n</div>\r\n<div class="col-md-6">\r\n[textarea your-message placeholder "Your Message"]<br>\r\n</div>\r\n[submit class:centered "Send Message"]\n[your-subject]\n[your-name] <nicholas.guest@roostergrin.com>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on www.proseorthodontics.com\nnicholas.guest@roostergrin.com\nReply-To: [your-email]\n\n\n\n\n[your-subject]\nwordpress <nicholas.guest@roostergrin.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on wordpress (//drsamcan.roostertest2.com/wordpress)%3C/textarea%3E\r\n\r\n		<p><label for="wpcf7-mail-2-exclude-blank"><input type="checkbox" id="wpcf7-mail-2-exclude-blank" name="wpcf7-mail-2-exclude-blank" value="1" /> Exclude lines with blank mail-tags from output</label></p>\r\n\r\n		<p><label for="wpcf7-mail-2-use-html"><input type="checkbox" id="wpcf7-mail-2-use-html" name="wpcf7-mail-2-use-html" value="1" /> Use HTML content type</label></p>\r\n	</td>\r\n	</tr>\r\n\r\n	<tr>\r\n	<th scope="row">\r\n		<label for="wpcf7-mail-2-attachments">File Attachments</label>\r\n	</th>\r\n	<td>\r\n		<textarea id="wpcf7-mail-2-attachments" name="wpcf7-mail-2-attachments" cols="100" rows="4" class="large-text code">\n[your-email]\nReply-To: nicholas.guest@roostergrin.com\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill in the required field.\nThis input is too long.\nThis input is too short.\nYour entered code is incorrect.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.\nYour answer is not correct.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2016-01-21 17:06:29', '2016-01-22 01:06:29', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&#038;p=51', 0, 'wpcf7_contact_form', '', 0),
(60, 1, '2015-06-29 18:51:52', '2015-06-29 18:51:52', 'I crazy love this dentist', 'testimonial 1', '', 'publish', 'closed', 'closed', '', 'testimonial-1', '', '', '2015-06-29 18:51:57', '2015-06-29 18:51:57', '', 0, 'http://localhost/wordpress/?post_type=testimonial&#038;p=60', 0, 'testimonial', '', 0),
(62, 1, '2015-06-29 18:53:49', '2015-06-29 18:53:49', 'This guy makes my brain hurt. Wicked', 'testimonial 2', '', 'publish', 'closed', 'closed', '', 'testimonial-2', '', '', '2015-06-29 18:53:49', '2015-06-29 18:53:49', '', 0, 'http://localhost/wordpress/?post_type=testimonial&#038;p=62', 0, 'testimonial', '', 0),
(416, 1, '2015-08-17 23:11:18', '2015-08-17 23:11:18', '[container]\r\n\r\n	<h2 class="centered">Welcome to the Cockerel_s base theme!</h2>\r\n\r\n	[column md="6" sm="6"]\r\n\r\n		<h3>Templates</h3>\r\n		<p>The theme works on templates which are in the the usual place in the theme directory.</p>\r\n		<p><code>page-home.php</code> will automatically be used for any page named "Home" unless another template is selected in WP-admin.</p>\r\n		<p><code>page-contact.php</code> will automatically be used for any page named "Contact" unless another template is selected in WP-admin.</p>\r\n		<h3>Google Maps</h3>\r\n		The google maps JS is in <code>{{theme-directory}}/js/googlemaps.js</code>\r\n\r\n	[/column]\r\n\r\n	[column md="6" sm="6"]\r\n\r\n		<h3>SASS</h3>\r\n		<p>The best way to use the theme is with a SASS compiler. The individual SASS files reside in <code>{{theme-directory}}/sass</code> and are multiple files representing different parts of the final style.css. For instance, in  <code>_menus.scss</code> sits all the code for menus. The SASS compiler writes all the individual files into the usual style.css in the theme directory.</p>\r\n\r\n		<p>If you don''t want to use SASS, you can ignore these and just edit the style.css directly- but once you start doing that you can''t then start using SASS afterwards since it will overwrite everything in style.css on compilation.</p>\r\n\r\n\r\n	[/column]\r\n\r\n[/container]', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-09-19 16:02:20', '2016-09-20 00:02:20', '', 0, 'http://localhost/prose/?page_id=416', 0, 'page', '', 0),
(437, 1, '2015-08-18 23:16:52', '2015-08-18 23:16:52', 'As I walked in the office, I was nervous and maybe even scared. Today would be the day that I get braces put on! I worried about how painful it would be based on the horror stories my friends shared with me. I also wondered how long I would have to wear them. Dr. Hart greeted me with a huge smile on his face. He seemed very nice and kind. I sat in the chair and Dr. Hart began the process of perfectly placing each bracket on each tooth. He handed me a mirror so I could see my teeth. Through all the appointments and adjustments with new wires and new colors, Dr. Hart was very efficient, encouraging, and helpful. I was able to get my braces off in half the normal time because I never broke a bracket during my treatment and followed his instructions. I am truly impressed with the results and I simply LOVE my smile. Thank you for being my orthodontist!', 'Shiann', '', 'publish', 'closed', 'closed', '', 's-f', '', '', '2015-12-16 01:20:13', '2015-12-16 01:20:13', '', 0, 'http://localhost/prose/?post_type=testimonials&#038;p=437', 0, 'testimonials', '', 0),
(438, 1, '2015-08-18 23:17:08', '2015-08-18 23:17:08', 'My experience with Dr. Hart was magnificent! He always greeted me with a smile and asked me how my day was and how was school. He changed my smile for good! You could really tell all of his hard work. I’m really happy with my results and my parents are very happy with his work as well. My self-esteem has gone up and now I smile more often. I owe this to Dr. Hart and all the time and effort he puts in to each of his patients. He is a really nice guy and hard worker. I am glad I had him as my orthodontist. I will always remember him for improving my smile. He is very good at what he does.', 'Kiara', '', 'publish', 'closed', 'closed', '', 'manny', '', '', '2015-12-16 01:19:52', '2015-12-16 01:19:52', '', 0, 'http://localhost/prose/?post_type=testimonials&#038;p=438', 0, 'testimonials', '', 0),
(439, 1, '2015-08-18 23:17:44', '2015-08-18 23:17:44', 'Dr. Hart started working with my daughter when she was 13 and too embarrassed to even smile because of her teeth. He quickly came up with a plan to straighten her teeth. He involved me and my daughter in her treatment plan and explained every step along the way. He recommended different options but ultimately left it up to my family to decide which way we wanted to go. Dr. Hart was always courteous, punctual and competent. Almost one year later, the braces are off and my daughter’s teeth look incredible. She smiles again and I couldn’t be happier to see her more confident than she was when she first came in for treatment. I recommend Dr. Hart with the utmost praise to anyone in need of orthodontic care. My daughter and I couldn’t be more grateful at how he transformed her teeth and the care he took.', 'Heidi', '', 'publish', 'closed', 'closed', '', 'steve-f', '', '', '2015-12-16 01:16:24', '2015-12-16 01:16:24', '', 0, 'http://localhost/prose/?post_type=testimonials&#038;p=439', 0, 'testimonials', '', 0),
(440, 1, '2015-08-18 23:17:57', '2015-08-18 23:17:57', 'My family and I have been so happy with Dr. Hart! Our 9 year old son William was scared about getting braces but he said Dr. Hart was “a cool dude” and “super nice”. He made the whole process fun, easy, and interesting for our son. Dr. Hart was careful to explain things really well and always had a word for sister, too. William was always very happy after meeting with Dr. Hart and honestly looked forward to their visits, which a lot of kids probably can’t say.', 'The Caruso Family', '', 'publish', 'closed', 'closed', '', 'j-h', '', '', '2015-12-16 01:16:03', '2015-12-16 01:16:03', '', 0, 'http://localhost/prose/?post_type=testimonials&#038;p=440', 0, 'testimonials', '', 0),
(528, 1, '2015-08-27 23:38:54', '2015-08-27 23:38:54', '', 'Hero Images/Slider/Video', '', 'publish', 'closed', 'closed', '', 'acf_hero-imagesslidervideo', '', '', '2016-06-09 15:34:06', '2016-06-09 23:34:06', '', 0, 'http://localhost/prose/?post_type=acf&#038;p=528', 0, 'acf', '', 0),
(545, 1, '2015-08-31 17:23:04', '2015-08-31 17:23:04', '<div class="modal-header">\r\n<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button><h4 class="modal-title" id="myModalLabel">Make an Appointment</h4>\r\n</div>\r\n<div class="modal-body">\r\n<p>&nbsp;Are You A New Patient? [radio new-patient "Yes" "No"]</p>\r\n[text* your-name placeholder "Name"]<br>\r\n[email* your-email placeholder "Email"]<br>\r\n[tel* your-tel placeholder "Telephone"]<br>\r\n[textarea times placeholder "Convenient Dates & Times"]\r\n</div>\r\n<div class="modal-footer">\r\n<button type="button" class="btn-long" data-dismiss="modal">Cancel</button>[submit class:btn-long "Send" ]\r\n</div>\n[your-subject]\n[your-name] <nicholas.guest@roostergrin.com>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Prose Orthodontics (//localhost:3000/prose)\nnicholas.guest@roostergrin.com\nReply-To: [your-email]\n\n\n\n\n[your-subject]\nProse Orthodontics <nicholas.guest@roostergrin.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Prose Orthodontics (//localhost:3000/prose)\n[your-email]\nReply-To: nicholas.guest@roostergrin.com\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill in the required field.\nThis input is too long.\nThis input is too short.\nYour entered code is incorrect.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.\nYour answer is not correct.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.', 'Appointment Form', '', 'publish', 'closed', 'closed', '', 'appointment-form', '', '', '2015-09-02 00:33:00', '2015-09-02 00:33:00', '', 0, 'http://localhost/prose/?post_type=wpcf7_contact_form&#038;p=545', 0, 'wpcf7_contact_form', '', 0),
(1312, 1, '2015-12-28 19:04:25', '2015-12-28 19:04:25', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2015-12-28 19:13:10', '2015-12-28 19:13:10', '', 0, 'http://localhost/roostergrin/?p=1312', 3, 'nav_menu_item', '', 0),
(1357, 1, '2016-01-06 17:03:06', '2016-01-07 01:03:06', '<section class="maps">\r\n	[container]\r\n\r\n		[map centerlat="33.566989" centerlon="-112.097285" id="dunlap"]\r\n			[map-marker name="dunlap" centerlat="33.566989" centerlon="-112.097285"]\r\n				<h4>Dunlap Office</h4>\r\n			[/map-marker]\r\n			[map-marker name="dunlap" centerlat="33.494445" centerlon="-112.126208"]\r\n				<h4>Indian School Office</h4>\r\n			[/map-marker]\r\n		[/map]\r\n	\r\n	[/container]\r\n</section>\r\n\r\n<!-------------------------------------------------------->\r\n\r\n<section id="send-us-text">\r\n	[container]\r\n		[column md="12"]\r\n			<h2 class="centered">Send Us a Message</h2>\r\n			<h4 class="centered">To schedule a complimentary consultation, please complete and submit the request form below. Our Patient Care Coordinator will contact you to confirm your appointment.</h4>\r\n		[/column]\r\n	[/container]\r\n</section>\r\n\r\n<!-------------------------------------------------------->\r\n\r\n<section id="contact-form">\r\n	[container]\r\n		[column md="12"]\r\n			[contact-form-7 id="51" title="Contact form 1"]\r\n		[/column]\r\n	[/container]\r\n</section>', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2016-09-20 10:25:41', '2016-09-20 18:25:41', '', 0, 'http://localhost/cockerel_s/?page_id=1357', 0, 'page', '', 0),
(1359, 1, '2016-01-06 18:03:49', '2016-01-07 02:03:49', ' ', '', '', 'publish', 'closed', 'closed', '', '1359', '', '', '2016-03-24 16:03:39', '2016-03-25 00:03:39', '', 0, 'http://localhost/cockerel_s/?p=1359', 9, 'nav_menu_item', '', 0),
(1360, 1, '2016-01-06 18:03:49', '2016-01-07 02:03:49', ' ', '', '', 'publish', 'closed', 'closed', '', '1360', '', '', '2016-03-24 16:03:39', '2016-03-25 00:03:39', '', 0, 'http://localhost/cockerel_s/?p=1360', 1, 'nav_menu_item', '', 0),
(1361, 1, '2016-01-06 18:09:24', '2016-01-07 02:09:24', '[container]\r\n\r\n[show_testimonials]\r\n\r\n[/container]', 'Slider', '', 'publish', 'closed', 'closed', '', 'slider', '', '', '2016-05-11 12:17:36', '2016-05-11 20:17:36', '', 0, 'http://localhost/cockerel_s/?page_id=1361', 0, 'page', '', 0),
(1362, 1, '2016-01-06 18:09:41', '2016-01-07 02:09:41', ' ', '', '', 'publish', 'closed', 'closed', '', '1362', '', '', '2016-03-24 16:03:39', '2016-03-25 00:03:39', '', 0, 'http://localhost/cockerel_s/?p=1362', 2, 'nav_menu_item', '', 0),
(1363, 1, '2016-01-06 18:22:12', '2016-01-07 02:22:12', '', 'Contact Group', '', 'publish', 'closed', 'closed', '', 'acf_contact-group', '', '', '2016-01-06 18:22:32', '2016-01-07 02:22:32', '', 0, 'http://localhost/cockerel_s/?post_type=acf&#038;p=1363', 0, 'acf', '', 0),
(1367, 1, '2016-01-21 11:08:35', '2016-01-21 19:08:35', '[container]\r\n\r\nHere are some effects for block elements which occur on first scroll of the page.\r\n\r\ninclude class <code>.scrollfx</code>.\r\nThen include <code>.scrollfx-fadein</code>. For movement, included one of <code>.scrollfx-fromleft</code>, <code>.scrollfx-fromright</code>, <code>.scrollfx-frombottom</code>, <code>.scrollfx-fromtop</code>\r\n<div class="clear"></div>\r\n[column md="4"]\r\n<img class="scrollfx scrollfx-frombottom" src="//fillmurray.com/300/200" />\r\n[/column]\r\n[column md="8"]\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur rhoncus pretium dui quis ornare. Vivamus vel pretium arcu, id commodo sapien. Suspendisse potenti. In maximus nunc auctor venenatis suscipit. Sed sed orci quis ipsum pulvinar malesuada vel nec tortor. Curabitur cursus finibus rhoncus. Proin rutrum velit tortor, at venenatis risus accumsan eu. Quisque eu mattis massa. Donec ut lorem suscipit, tristique ex id, rutrum libero. Integer condimentum, lectus at pulvinar ullamcorper, ligula ante consequat ex, ut consequat massa nibh vel justo. Morbi justo odio, consequat in nunc ut, blandit rhoncus eros. Etiam vel laoreet libero.</p>\r\n[/column]\r\n<div class="clear"></div>\r\n[column md="8"]\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur rhoncus pretium dui quis ornare. Vivamus vel pretium arcu, id commodo sapien. Suspendisse potenti. In maximus nunc auctor venenatis suscipit. Sed sed orci quis ipsum pulvinar malesuada vel nec tortor. Curabitur cursus finibus rhoncus. Proin rutrum velit tortor, at venenatis risus accumsan eu. Quisque eu mattis massa. Donec ut lorem suscipit, tristique ex id, rutrum libero. Integer condimentum, lectus at pulvinar ullamcorper, ligula ante consequat ex, ut consequat massa nibh vel justo. Morbi justo odio, consequat in nunc ut, blandit rhoncus eros. Etiam vel laoreet libero.</p>\r\n[/column]\r\n[column md="4"]\r\n<img class="scrollfx scrollfx-fromright alignright" src="//fillmurray.com/300/200" />\r\n[/column]\r\n<div class="clear"></div>\r\n<img class="scrollfx scrollfx-fromleft scrollfx-fadein" src="//fillmurray.com/300/200" />\r\n<div class="clear"></div>\r\n<img class="scrollfx scrollfx-fromright alignright" src="//fillmurray.com/300/200" />\r\n<div class="clear"></div>\r\n<img class="scrollfx scrollfx-frombottom scrollfx-fadein" src="//fillmurray.com/300/200" />\r\n<div class="clear"></div>\r\n<img class="scrollfx scrollfx-fromright scrollfx-fadein alignright" src="//fillmurray.com/300/200" />\r\n<div class="clear"></div>\r\n<img class="scrollfx scrollfx-frombottom scrollfx-fadein" src="//fillmurray.com/300/200" />\r\n<div class="clear"></div>\r\n<img class="scrollfx scrollfx-frombottom scrollfx-fadein alignright" src="//fillmurray.com/300/200" />\r\n<div class="clear"></div>\r\n\r\n\r\n[/container]', 'ScrollFX', '', 'publish', 'closed', 'closed', '', 'scrolleffect', '', '', '2016-01-22 16:09:02', '2016-01-23 00:09:02', '', 0, 'http://localhost/cockerel_s/?page_id=1367', 0, 'page', '', 0),
(1369, 1, '2016-01-21 12:17:08', '2016-01-21 20:17:08', ' ', '', '', 'publish', 'closed', 'closed', '', '1369', '', '', '2016-03-24 16:03:39', '2016-03-25 00:03:39', '', 0, 'http://localhost/cockerel_s/?p=1369', 3, 'nav_menu_item', '', 0),
(1380, 1, '2016-01-22 15:59:54', '2016-01-22 23:59:54', '', 'site-logo', '', 'inherit', 'closed', 'closed', '', 'site-logo', '', '', '2016-01-22 15:59:54', '2016-01-22 23:59:54', '', 0, 'http://localhost/cockerel_s/wp-content/u/site-logo.png', 0, 'attachment', 'image/png', 0),
(1381, 1, '2016-01-22 16:00:15', '2016-01-23 00:00:15', '', 'chameleon', '', 'inherit', 'closed', 'closed', '', 'chameleon', '', '', '2016-01-22 16:00:15', '2016-01-23 00:00:15', '', 0, 'http://localhost/cockerel_s/wp-content/u/chameleon.jpg', 0, 'attachment', 'image/jpeg', 0),
(1382, 1, '2016-01-22 16:00:16', '2016-01-23 00:00:16', '', 'fox', '', 'inherit', 'closed', 'closed', '', 'fox', '', '', '2016-01-22 16:00:16', '2016-01-23 00:00:16', '', 0, 'http://localhost/cockerel_s/wp-content/u/fox.jpg', 0, 'attachment', 'image/jpeg', 0),
(1383, 1, '2016-01-22 16:00:22', '2016-01-23 00:00:22', '', 'sparrow', '', 'inherit', 'closed', 'closed', '', 'sparrow', '', '', '2016-01-22 16:00:22', '2016-01-23 00:00:22', '', 0, 'http://localhost/cockerel_s/wp-content/u/sparrow.jpg', 0, 'attachment', 'image/jpeg', 0),
(1385, 1, '2016-01-27 21:33:47', '2016-01-28 05:33:47', '', '24 Privet Drive', '', 'publish', 'closed', 'closed', '', '24-privet-drive', '', '', '2016-01-27 22:22:56', '2016-01-28 06:22:56', '', 0, 'http://localhost/cockerel_s/?post_type=properties&#038;p=1385', 0, 'properties', '', 0),
(1388, 1, '2016-02-10 15:45:55', '2016-02-10 23:45:55', '[container]\r\n	<div class="accordion" id="accordion">\r\n		<h1>Accordion Element</h1>\r\n\r\n		<ul>\r\n			<li>\r\n				<input type="checkbox" checked>\r\n				<i></i>\r\n				<h3>Heading 1</h3>\r\n				<article>\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n				</article>\r\n			</li>\r\n			<li>\r\n				<input type="checkbox" checked>\r\n				<i></i>\r\n				<h3>Heading 2</h3>\r\n				<article>\r\n					<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n				</article>\r\n			</li>\r\n			<li>\r\n				<input type="checkbox" checked>\r\n				<i></i>\r\n				<h3>Heading 3</h3>\r\n				<article>\r\n					<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>\r\n				</article>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n\r\n	<h1 id="horizontal-tabs">Horizontal Tabs</h1>\r\n\r\n\r\n	[tabs type="tabs"]\r\n		[tab title="Tab 1" active="true"]\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n		[/tab]\r\n		[tab title="Tab 2"]\r\n			<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe.</p>\r\n		[/tab]\r\n		[tab title="Tab 3"]\r\n			<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.</p>\r\n		[/tab]\r\n	[/tabs]\r\n\r\n\r\n	<h1 id="vertical-tabs">Vertical Tabs</h1>\r\n\r\n	<div class="vertical-tabs">\r\n		[tabs type="tabs"]\r\n			[tab title="Tab 1" active="true"]\r\n				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n			[/tab]\r\n			[tab title="Tab 2"]\r\n				<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe.</p>\r\n			[/tab]\r\n			[tab title="Tab 3"]\r\n				<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.</p>\r\n			[/tab]\r\n		[/tabs]\r\n	</div>\r\n\r\n	<h1 id="read-more">Read More</h1>\r\n	\r\n	<div class="read-more">\r\n			<input type="checkbox" checked>\r\n\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n			<div class="collapsed">\r\n				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n			</div>\r\n		<i></i>\r\n	</div>\r\n\r\n\r\n[/container]\r\n\r\n[bg-separator title="Background Separator" padding="5em" stellar="0.8" image="//localhost/cockerel_s/wp-content/u/background-pattern.jpg"]\r\n\r\n[container]\r\n	<pre>[[bg-separator title="Background Separator" padding="5em" stellar="0.8" image="//localhost/cockerel_s/wp-content/u/background-pattern.jpg"]]</pre>\r\n\r\n	<h1>Tooltips</h1>\r\n\r\n	<a class="tooltip-bottom" alt="A bottom tooltip" href="#">.tooltip-bottom</a>\r\n\r\n	<a class="tooltip-top" alt="A top tooltip" href="#">.tooltip-top</a>\r\n[/container]\r\n\r\n[container]\r\n\r\n	<h1>Maps</h1>\r\n	\r\n		[map centerlat="33.566989" centerlon="-112.097285" id="dunlap"]\r\n			[map-marker name="dunlap" centerlat="33.566989" centerlon="-112.097285"]\r\n				<h4>Dunlap Office</h4>\r\n			[/map-marker]\r\n		[/map]\r\n\r\n		[map centerlat="33.494445" centerlon="-112.126208" id="indian-school"]\r\n			[map-marker name="indian-school" centerlat="33.494445" centerlon="-112.126208"]\r\n				<h4>Indian School Office</h4>\r\n			[/map-marker]\r\n		[/map]\r\n\r\n[/container]', 'Elements', '', 'publish', 'closed', 'closed', '', 'elements', '', '', '2016-05-09 13:48:01', '2016-05-09 21:48:01', '', 0, 'http://localhost/cockerel_s/?page_id=1388', 0, 'page', '', 0),
(1389, 1, '2016-02-10 15:46:14', '2016-02-10 23:46:14', ' ', '', '', 'publish', 'closed', 'closed', '', '1389', '', '', '2016-03-24 16:03:39', '2016-03-25 00:03:39', '', 0, 'http://localhost/cockerel_s/?p=1389', 4, 'nav_menu_item', '', 0),
(1391, 1, '2016-02-11 09:43:55', '2016-02-11 17:43:55', '', 'roostergrin-logo-full', '', 'inherit', 'closed', 'closed', '', 'roostergrin-logo-full', '', '', '2016-02-11 09:43:55', '2016-02-11 17:43:55', '', 0, 'http://localhost/cockerel_s/wp-content/u/roostergrin-logo-full.svg', 0, 'attachment', 'image/svg+xml', 0),
(1393, 1, '2016-02-11 12:05:56', '2016-02-11 20:05:56', '', 'deer', '', 'inherit', 'closed', 'closed', '', 'deer', '', '', '2016-02-11 12:06:00', '2016-02-11 20:06:00', '', 416, 'http://localhost/cockerel_s/wp-content/u/deer.jpg', 0, 'attachment', 'image/jpeg', 0),
(1429, 1, '2016-03-18 15:55:18', '2016-03-18 23:55:18', '', 'background-pattern', '', 'inherit', 'closed', 'closed', '', 'background-pattern', '', '', '2016-03-18 15:55:18', '2016-03-18 23:55:18', '', 0, 'http://localhost/cockerel_s/wp-content/u/background-pattern.jpg', 0, 'attachment', 'image/jpeg', 0),
(1444, 1, '2016-03-24 08:13:05', '2016-03-24 16:13:05', '', 'Read More', '', 'publish', 'closed', 'closed', '', 'read-more', '', '', '2016-03-24 16:03:39', '2016-03-25 00:03:39', '', 0, 'http://localhost/cockerel_s/?p=1444', 6, 'nav_menu_item', '', 0),
(1445, 1, '2016-03-24 08:13:05', '2016-03-24 16:13:05', '', 'Accordion', '', 'publish', 'closed', 'closed', '', 'accordion', '', '', '2016-03-24 16:03:39', '2016-03-25 00:03:39', '', 0, 'http://localhost/cockerel_s/?p=1445', 5, 'nav_menu_item', '', 0),
(1446, 1, '2016-03-24 08:13:05', '2016-03-24 16:13:05', '', 'Horizontal Tabs', '', 'publish', 'closed', 'closed', '', 'horizontal-tabs', '', '', '2016-03-24 16:03:39', '2016-03-25 00:03:39', '', 0, 'http://localhost/cockerel_s/?p=1446', 7, 'nav_menu_item', '', 0),
(1447, 1, '2016-03-24 08:13:05', '2016-03-24 16:13:05', '', 'Vertical Tabs', '', 'publish', 'closed', 'closed', '', 'vertical-tabs', '', '', '2016-03-24 16:03:39', '2016-03-25 00:03:39', '', 0, 'http://localhost/cockerel_s/?p=1447', 8, 'nav_menu_item', '', 0),
(1465, 1, '2016-04-08 15:25:02', '2016-04-08 23:25:02', '', 'kingfisher', '', 'inherit', 'closed', 'closed', '', 'kingfisher', '', '', '2016-04-08 15:25:02', '2016-04-08 23:25:02', '', 0, 'http://localhost/cockerel_s/wp-content/u/kingfisher.jpg', 0, 'attachment', 'image/jpeg', 0),
(1476, 1, '2016-05-12 12:29:32', '2016-05-12 20:29:32', '<footer class="site-footer">\r\n\r\n	<section id="top-footer" class="top-footer">\r\n\r\n		[container]\r\n			<h4>Some text in the top-footer area</h4>\r\n			<div class="scroll-up arrow">\r\n				<i class="fa fa-chevron-up"></i>\r\n			</div>\r\n		[/container]	\r\n\r\n	</section><!-- /top-footer -->\r\n\r\n	<section id="mid-footer" class="mid-footer">\r\n\r\n		[container]\r\n\r\n			[column md="2" sm="2" xs="12" xclass="logo"]\r\n				<a href="/" class="site-logo">\r\n					<img src="[bloginfo key=''template_url'']/images/logos/site-logo.svg" alt="[bloginfo key=''title'']" />\r\n				</a>\r\n			[/column]\r\n\r\n			[column md="4" sm="4" xs="12" xclass="sitemap"]\r\n				<h3>Sitemap</h3>\r\n				[menu menu_id="location-menu"]\r\n			[/column]\r\n\r\n			[column md="4" sm="4" xs="12" xclass="address"]\r\n				<h3>Contact Us</h3>\r\n				<a href="tel:1[phone_stripped]">\r\n					<i class="fa fa-phone"></i><span>[phone]</span>\r\n				</a>\r\n				<a href="https://www.google.com/maps/place/[address],[address2]" target="_blank">\r\n					<i class="fa fa-map"></i><span>[address]</span><br>\r\n					<span>[address2]</span>\r\n				</a>\r\n				<a href="tel:1[phoneB_stripped]">\r\n					<i class="fa fa-phone"></i><span>[phoneB]</span>\r\n				</a>\r\n				<a href="https://www.google.com/maps/place/[addressB],[address2B]" target="_blank">\r\n					<i class="fa fa-map"></i><span>[addressB]</span><br>\r\n					<span>[address2B]</span>\r\n				</a>\r\n			[/column]\r\n\r\n			[column md="2" sm="2" xs="12" xclass="social-media"]\r\n\r\n				<a target="_blank" title="Twitter" href="https://twitter.com/"><i class="fa fa-twitter fa-2x"></i></a>\r\n				<a target="_blank" title="Facebook" href="https://www.facebook.com/"><i class="fa fa-facebook fa-2x"></i></a>\r\n				<a target="_blank" title="YouTube" href="https://www.youtube.com/"><i class="fa fa-youtube fa-2x"></i></a>\r\n				<a target="_blank" title="Instagram" href="https://www.instagram.com/"><i class="fa fa-instagram fa-2x"></i></a>\r\n				<a target="_blank" title="Instagram" href="https://www.linkedin.com/"><i class="fa fa-linkedin fa-2x"></i></a>\r\n\r\n			[/column]\r\n\r\n		[/container]\r\n\r\n	</section><!-- /mid-footer -->\r\n\r\n	<section class="final-footer" id="final-footer">\r\n\r\n		<span class="copyright">&#169; [currentyear]&nbsp;[bloginfo key=''blogname'']</span>\r\n		<span class="author">Online Advantage by <a href="http://roostergrin.com/" rel="designer">Rooster Grin Media <img id="author-logo" src="[bloginfo key=''template_url'']/images/logos/rg-logo-white.svg"></a></span>\r\n			\r\n		<div class="clear"></div>\r\n\r\n	</section><!-- /final-footer -->\r\n\r\n	</footer><!-- /site-footer -->\r\n</div><!-- #page -->\r\n\r\n\r\n\r\n<!-- Modals -->\r\n<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >\r\n\r\n	<div class="modal-dialog" role="document">\r\n\r\n		<div class="modal-content">\r\n			[contact-form-7 id="545" title="Appointment Form"]\r\n		</div>\r\n\r\n	</div>\r\n\r\n</div>', 'Footer', '', 'publish', 'closed', 'closed', '', 'footer', '', '', '2016-06-30 09:58:45', '2016-06-30 17:58:45', '', 0, 'http://localhost/cockerel_s/?post_type=header_footer&#038;p=1476', 0, 'header_footer', '', 0),
(1478, 1, '2016-05-12 13:32:10', '2016-05-12 21:32:10', '<header class="site-header">\r\n	\r\n	<div class="top-header">\r\n		\r\n		<a href="/" class="site-logo pull-left">\r\n			<img src="[bloginfo key=''template_url'']/images/logos/site-logo.svg" alt="[bloginfo key=''name'']" />\r\n		</a>\r\n		\r\n		<a href="tel:1[phone_stripped]" class="phone pull-right">\r\n			<h3>[phone]</h3>\r\n		</a>\r\n		<a href="https://www.google.com/maps/place/[address],[address2]" target="_blank" class="address pull-right">\r\n			<span>[address]<br>\r\n			[address2]</span>\r\n		</a>\r\n\r\n		<a href="#" data-target="#modal-appointments" data-toggle="modal" class="quotation pull-right">\r\n			<i class="fa fa-comment-o" aria-hidden="true"></i> Get A Quote\r\n		</a>\r\n	</div>\r\n\r\n	<a href="[bloginfo key=''url'']>" class="site-logo">\r\n		<img src="[bloginfo key=''template_url'']/images/logos/site-logo.svg" alt="[bloginfo key=''name'']" />\r\n	</a>\r\n\r\n	<nav class="header-menu main-navigation" >\r\n		[menu menu_id=''primary-menu'']\r\n	</nav>\r\n\r\n</header><!-- /site-header -->', 'Header', '', 'publish', 'closed', 'closed', '', 'header', '', '', '2016-06-30 09:58:30', '2016-06-30 17:58:30', '', 0, 'http://localhost/cockerel_s/?post_type=header_footer&#038;p=1478', 0, 'header_footer', '', 0),
(1479, 1, '2016-09-19 15:55:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-09-19 15:55:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/cockerel_s/?p=1479', 0, 'post', '', 0),
(1483, 1, '2016-09-19 16:01:07', '2016-09-20 00:01:07', '[container]\r\n\r\n	<h2 class="centered">Welcome to the Cockerel_s base theme!</h2>\r\n\r\n	[column md="6" sm="6"]\r\n\r\n		<h3>Templates</h3>\r\n		<p>The theme works on templates which are in the the usual place in the theme directory.</p>\r\n		<p><code>page-home.php</code> will automatically be used for any page named "Home" unless another template is selected in WP-admin.</p>\r\n		<p><code>page-contact.php</code> will automatically be used for any page named "Contact" unless another template is selected in WP-admin.</p>\r\n		<h3>Google Maps</h3>\r\n		The google maps JS is in <code>{{theme-directory}}/js/googlemaps.js</code>\r\n\r\n	[/column]\r\n\r\n	[column md="6" sm="6"]\r\n\r\n		<h3>SASS</h3>\r\n		<p>The best way to use the theme is with a SASS compiler. The individual SASS files reside in <code>{{theme-directory}}/sass</code> and are multiple files representing different parts of the final style.css. For instance, in  <code>_menus.scss</code> sits all the code for menus. The SASS compiler writes all the individual files into the usual style.css in the theme directory.</p>\r\n\r\n		<p>If you don''t want to use SASS, you can ignore these and just edit the style.css directly- but once you start doing that you can''t then start using SASS afterwards since it will overwrite everything in style.css on compilation.</p>\r\n\r\n\r\n	[/column]\r\n\r\n[/container]', 'Home', '', 'inherit', 'closed', 'closed', '', '416-revision-v1', '', '', '2016-09-19 16:01:07', '2016-09-20 00:01:07', '', 416, 'http://9AA2EE53-D5DC-4BD3-B01C-FDF1F4D10A6F', 0, 'revision', '', 0),
(1484, 1, '2016-09-20 10:22:38', '2016-09-20 18:22:38', '<section class="maps">\r\n	[container]\r\n\r\n		[map centerlat="33.566989" centerlon="-112.097285" id="map"]\r\n			[map-marker name="map" centerlat="33.566989" centerlon="-112.097285"]\r\n				<h4>Dunlap Office</h4>\r\n			[/map-marker]\r\n		[/map]\r\n	\r\n	[/container]\r\n</section>\r\n\r\n<!-------------------------------------------------------->\r\n\r\n<section id="send-us-text">\r\n	[container]\r\n		[column md="12"]\r\n			<h2 class="centered">Send Us a Message</h2>\r\n			<h4 class="centered">To schedule a complimentary consultation, please complete and submit the request form below. Our Patient Care Coordinator will contact you to confirm your appointment.</h4>\r\n		[/column]\r\n	[/container]\r\n</section>\r\n\r\n<!-------------------------------------------------------->\r\n\r\n<section id="contact-form">\r\n	[container]\r\n		[column md="12"]\r\n			[contact-form-7 id="51" title="Contact form 1"]\r\n		[/column]\r\n	[/container]\r\n</section>', 'Contact', '', 'inherit', 'closed', 'closed', '', '1357-revision-v1', '', '', '2016-09-20 10:22:38', '2016-09-20 18:22:38', '', 1357, 'http://02B18E03-0B24-42B0-8EDA-231DE87E8A0C', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_slp_extendo_meta`
--

CREATE TABLE `wp_slp_extendo_meta` (
  `id` mediumint(8) NOT NULL,
  `field_id` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_store_locator`
--

CREATE TABLE `wp_store_locator` (
  `sl_id` mediumint(8) unsigned NOT NULL,
  `sl_store` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_tags` mediumtext COLLATE utf8mb4_unicode_ci,
  `sl_description` text COLLATE utf8mb4_unicode_ci,
  `sl_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_hours` text COLLATE utf8mb4_unicode_ci,
  `sl_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_private` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_neat_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_linked_postid` int(11) DEFAULT NULL,
  `sl_pages_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_pages_on` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_option_value` longtext COLLATE utf8mb4_unicode_ci,
  `sl_lastupdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_store_locator`
--

INSERT INTO `wp_store_locator` (`sl_id`, `sl_store`, `sl_address`, `sl_address2`, `sl_city`, `sl_state`, `sl_zip`, `sl_country`, `sl_latitude`, `sl_longitude`, `sl_tags`, `sl_description`, `sl_email`, `sl_url`, `sl_hours`, `sl_phone`, `sl_fax`, `sl_image`, `sl_private`, `sl_neat_title`, `sl_linked_postid`, `sl_pages_url`, `sl_pages_on`, `sl_option_value`, `sl_lastupdated`) VALUES
(1, 'Orthoworks Milpitas', '858 N. Hillview Drive', '', 'Milpitas', 'CA', '95035', 'United States', '37.4455784', '-121.8921714', '', '', 'nicholas.guest@gmail.com', '', '', '7072266860', '', '', '', '', 0, '', '', '', '2015-09-28 22:06:16'),
(2, 'Orthoworks Antioch', '5117 Lone Tree Way', '', 'Antioch', 'CA', '94559', 'United States', '37.9622529', '-121.756402', '', '', 'nicholas.guest@gmail.com', '', '', '17073207955', '', '', '', '', 0, '', '', '', '2015-09-28 22:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main-Menu', 'main-menu', 0),
(3, '16', '16', 0),
(4, 'Location-Menu', 'location-menu', 0),
(5, 'Parent-Menu', 'parent-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1312, 5, 0),
(1359, 2, 0),
(1360, 2, 0),
(1362, 2, 0),
(1369, 2, 0),
(1389, 2, 0),
(1444, 2, 0),
(1445, 2, 0),
(1446, 2, 0),
(1447, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 9),
(3, 3, 'ml-slider', '', 0, 0),
(4, 4, 'nav_menu', '', 0, 0),
(5, 5, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'guestn'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw,wpsl_signup_pointer'),
(13, 1, 'show_welcome_panel', '0'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '1479'),
(16, 1, 'managenav-menuscolumnshidden', 'a:2:{i:0;s:3:"xfn";i:1;s:11:"description";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";i:3;s:16:"add-us_portfolio";i:4;s:25:"add-us_portfolio_category";i:5;s:13:"add-us_client";}'),
(18, 1, 'nav_menu_recently_edited', '2'),
(19, 1, 'corsa_cpt_in_menu_set', '1'),
(20, 1, 'closedpostboxes_page', 'a:2:{i:0;s:7:"slugdiv";i:1;s:12:"revisionsdiv";}'),
(21, 1, 'metaboxhidden_page', 'a:8:{i:0;s:8:"acf_1363";i:1;s:8:"acf_1358";i:2;s:8:"acf_1386";i:3;s:10:"postcustom";i:4;s:16:"commentstatusdiv";i:5;s:11:"commentsdiv";i:6;s:9:"authordiv";i:7;s:12:"revisionsdiv";}'),
(22, 1, 'wp_user-settings', 'editor=html&libraryContent=browse&imgsize=full&post_dfw=on&mfold=o&urlbutton=none&align=none&hidetb=1&posts_list_mode=list&uploader=1'),
(23, 1, 'wp_user-settings-time', '1458345313'),
(24, 1, 'manageedit-pagecolumnshidden', 'a:6:{i:0;s:6:"author";i:1;s:8:"comments";i:2;s:4:"date";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";}'),
(25, 1, 'edit_page_per_page', '50'),
(26, 1, 'closedpostboxes_acf', 'a:0:{}'),
(27, 1, 'metaboxhidden_acf', 'a:0:{}'),
(32, 1, 'closedpostboxes_dashboard', 'a:4:{i:0;s:19:"dashboard_right_now";i:1;s:18:"dashboard_activity";i:2;s:21:"dashboard_quick_press";i:3;s:17:"dashboard_primary";}'),
(33, 1, 'metaboxhidden_dashboard', 'a:4:{i:0;s:19:"dashboard_right_now";i:1;s:18:"dashboard_activity";i:2;s:21:"dashboard_quick_press";i:3;s:17:"dashboard_primary";}'),
(35, 1, 'wp_media_library_mode', 'list'),
(41, 1, 'meta-box-order_page', 'a:4:{s:15:"acf_after_title";s:7:"acf_203";s:4:"side";s:23:"submitdiv,pageparentdiv";s:6:"normal";s:111:"acf_76,acf_507,acf_73,acf_454,acf_528,acf_125,acf_217,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(42, 1, 'screen_layout_page', '2'),
(44, 1, 'session_tokens', 'a:1:{s:64:"da755d09847a188f000f0e54599456bbb74d42463229d39280d2d8e3fd84ee1d";a:4:{s:10:"expiration";i:1474502151;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36";s:5:"login";i:1474329351;}}'),
(45, 1, 'meta-box-order_properties', 'a:4:{s:15:"acf_after_title";s:26:"acf_1363,acf_1358,acf_1386";s:4:"side";s:9:"submitdiv";s:6:"normal";s:15:"acf_528,slugdiv";s:8:"advanced";s:0:"";}'),
(46, 1, 'screen_layout_properties', '2'),
(47, 1, 'closedpostboxes_properties', 'a:0:{}'),
(48, 1, 'metaboxhidden_properties', 'a:4:{i:0;s:8:"acf_1363";i:1;s:8:"acf_1358";i:2;s:7:"acf_528";i:3;s:7:"slugdiv";}'),
(49, 1, 'plugins_per_page', '999'),
(50, 1, 'vp_show_welcome_panel', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'guestn', '$P$BZeXYvGQX4jDaovlSoPg1n2H9fY5Cz.', 'guestn', 'nicholas.guest@roostergrin.com', '', '2015-06-22 21:12:36', '', 0, 'guestn');

-- --------------------------------------------------------

--
-- Table structure for table `wp_vp_id`
--

CREATE TABLE `wp_vp_id` (
  `vp_id` binary(16) NOT NULL,
  `table` varchar(64) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_vp_id`
--

INSERT INTO `wp_vp_id` (`vp_id`, `table`, `id`) VALUES
(0xdd8564c0ec8745208e79887e80aa9170, 'postmeta', 62),
(0x6fddf5562c16461b87720d46895a6b2b, 'postmeta', 106),
(0xb14b8a46a5e74ca98c96558690922dc4, 'postmeta', 107),
(0x3f49ab032b804dfabd56f74e61055cd7, 'postmeta', 108),
(0x3a3eed831e714829b6ba38f2fc7452a6, 'postmeta', 109),
(0x2f9d0febc71748e88b1b0490a7cebaf8, 'postmeta', 110),
(0xb587ec2ccae44483b1b6f64cc73895cd, 'postmeta', 111),
(0xb6edbbf327be44bebd68f1228f02394e, 'postmeta', 2591),
(0x7e602f7f616f4925ab25f498925f98b9, 'postmeta', 2600),
(0xb2d7f004a9c242aa831c0e14ca2c2115, 'postmeta', 2601),
(0x1f8f0d7b9a1c443fbc09b27ba4b0d6fa, 'postmeta', 2602),
(0xcd452f0736334a88bc365f30037d1f84, 'postmeta', 2603),
(0x529a3ff983ef4f20aba69b3310ace746, 'postmeta', 2604),
(0xcbea3fbb28944be7822a51f8ce112711, 'postmeta', 2605),
(0x7e49e33efb45463ebc0238e276bdc4cb, 'postmeta', 2606),
(0x236856c2c8c34bcbbe50a8807af1ca2a, 'postmeta', 2607),
(0x7c46476ec3dc454fb2c236806a52d4d9, 'postmeta', 2631),
(0xccdc4a655bd841ae904d16919c9f9bee, 'postmeta', 2632),
(0x3f8b949afb40461da246ac4cd8605938, 'postmeta', 2633),
(0xc748430ceb324be2a2de94aec8449d0d, 'postmeta', 2634),
(0x0577d7b053ce4c7f888e879c96aec5a2, 'postmeta', 2635),
(0x82e1ac2cb80442f8b8979f237f84e756, 'postmeta', 2636),
(0xd2dcf639f0044e16b3a61002557139ff, 'postmeta', 2637),
(0x9b708ccc4d9d469089b06128fb29b162, 'postmeta', 2731),
(0x761a3e3985b148e586fd4be254befe56, 'postmeta', 2733),
(0x85c96314d82341dab06896a61db97bc0, 'postmeta', 2737),
(0x37b45d26365f4e74821292eb48bada81, 'postmeta', 2739),
(0xfce6baa204c144e4b8d7deb3ba74953b, 'postmeta', 3396),
(0xa5e7531247f84d0fb235ea70450b0de3, 'postmeta', 3397),
(0x20bd88e6a8564f1db8a94a781a5c6e89, 'postmeta', 3398),
(0x502ba72cd97644cd8d5e5201c5d7e00d, 'postmeta', 3404),
(0xb3edd16b19c047dd96f7e6f77f7d4800, 'postmeta', 3405),
(0x59ab67d10abb4488ab9da38e009b836d, 'postmeta', 3406),
(0x63bdb0016c9f4c3da40c8c4158091a98, 'postmeta', 3816),
(0x280a212591114bcbbb3196de8674d433, 'postmeta', 3817),
(0x166bc27af9f345ffa38e512389a942e3, 'postmeta', 3818),
(0x912072a262d844978d1f6754cec334b9, 'postmeta', 3819),
(0x4a9f7e08b27e41ea81c3e74078e7b5e4, 'postmeta', 3820),
(0x6932d39d37f3406aa23798672b296057, 'postmeta', 3821),
(0xed0194737fae4b2884a9c92c138e097e, 'postmeta', 5730),
(0x90de448989b3427198f7fb11c5fd66cf, 'postmeta', 5731),
(0x890c3f8984b849748bb9987d8c84b143, 'postmeta', 5749),
(0xa30b9182985e4427ab3e49882b2f4880, 'postmeta', 5750),
(0x6557f933fec74f41b0463f7437da595d, 'postmeta', 5751),
(0x4fc773f745c448b19d9f0853678516b6, 'postmeta', 5752),
(0xe05898d52eb649bf8673f54a86f78723, 'postmeta', 5753),
(0xc48bf0ce960746d9b9f970c9f4c6087e, 'postmeta', 5754),
(0xe68c923a678741e1bfa5001e6d853655, 'postmeta', 5827),
(0x948c133ee4424a0fbfc0a15da11ab610, 'postmeta', 5828),
(0x2dd97bacccda4efdb1f0c254c0670d10, 'postmeta', 6000),
(0xcfa609a9cda24e3bbc88a70ba5cfba60, 'postmeta', 6001),
(0x513747fcdb6e436f8c17bcc693ea3afd, 'postmeta', 11008),
(0xba48e76dbe4a488e942f31cd0e53667e, 'postmeta', 11009),
(0x9495b2cb1e384d408c5411803dac66f4, 'postmeta', 11109),
(0x87424ae853794a169b7049d404d1e5e5, 'postmeta', 12611),
(0xbc4a7628d5084e348054ea10ba5c869c, 'postmeta', 12612),
(0x4d2ad2585a9b4efca064d38b10033caf, 'postmeta', 12613),
(0xbaa69dc85af74d688b46059b233d7d46, 'postmeta', 12614),
(0xdfb0eddaba4749ca9bae0ff4dcec4b0a, 'postmeta', 12615),
(0xabe392555e90403b981ce0f5a5308bd0, 'postmeta', 12616),
(0xc6a80668c41e4d4185dbd2b688527fbe, 'postmeta', 12617),
(0x136b649d1c984a909757a325c2e1179c, 'postmeta', 12618),
(0x369294bba369426fbfe75a3370561d98, 'postmeta', 12949),
(0xed44a65b57d846a7bcdeb082615fe11c, 'postmeta', 12963),
(0x7071eb5666b248328dafdbf3d9e4e3b2, 'postmeta', 12964),
(0x529f32cb3daf4d4aa24c660608b70776, 'postmeta', 12965),
(0xb08cc291480a4683ac6b8ec8ae248af2, 'postmeta', 12966),
(0x582c3f9dab534457a15c8b807a246739, 'postmeta', 12967),
(0xe437f8fe90924bfea7b39c0da8f8c077, 'postmeta', 12968),
(0xf2e4ac96557d43b1a376825b93c59757, 'postmeta', 12969),
(0x93ad4c630d89465d944d131d1d0210a2, 'postmeta', 12970),
(0x3004902411d14161a90c67952ff5f610, 'postmeta', 12971),
(0xfefff33eb94b42879b1572545463fa36, 'postmeta', 12972),
(0xeb346420de684341bb0fedbd9bdfd043, 'postmeta', 12974),
(0x1d43f6ad571d40db855100b1c279777f, 'postmeta', 12975),
(0x229492519ecb43028e6a03e20c0a008a, 'postmeta', 12976),
(0x6c9e540deffb4b258b498fdd2cfb2985, 'postmeta', 12977),
(0x4789a460831448b482a8c6042df5134a, 'postmeta', 12978),
(0x04579c6136c14906a5cf7c91a59aad05, 'postmeta', 12979),
(0xa5db2c25040e477ab1dbe42bcc079256, 'postmeta', 12980),
(0x9fa974504d294919ae221c52a64a6078, 'postmeta', 12981),
(0xd4cb4828b1164207ab06e9509e16dda6, 'postmeta', 12985),
(0x2eb8187147a0474a9ae5e77892ea9e56, 'postmeta', 12986),
(0x6df1b5b75a914cb3b7d80f331af70ea6, 'postmeta', 12987),
(0x551755d8a79f4006843dda2e449055ac, 'postmeta', 12988),
(0xea77d6ee82f74ed2b553e099e2f70181, 'postmeta', 12989),
(0xa6d2d3a8775b430d8ced0fbfe8ab4a6a, 'postmeta', 12990),
(0x4a9aaf7df5dc40dc84e3138b1ed626cd, 'postmeta', 12991),
(0xf83deab2ea3f436ab7e7a64b40ad017b, 'postmeta', 12992),
(0x6c95d6d96ad44fe4b75be793000d49e2, 'postmeta', 12993),
(0xf7999c9b4a62481396c7223215101d68, 'postmeta', 12994),
(0x8f8a81f19a9a419897c43904ae42ff0b, 'postmeta', 12995),
(0x5aac39d1294c43798edbca67a054c58b, 'postmeta', 12999),
(0xc91c080b63cd489688e079b4b9b3d333, 'postmeta', 13000),
(0x30f6e50e56c44d2a945eea44d5cc8d44, 'postmeta', 13002),
(0x18545c7118e04e35ad88757ff92e80b6, 'postmeta', 13003),
(0x668a167a0d124e04af9e5109a974d75f, 'postmeta', 13004),
(0xdea53bba97ae4883b540b90fd303f3c2, 'postmeta', 13007),
(0x63187de940a14199a3dbb4cd7a6c6c76, 'postmeta', 13008),
(0x20f92e8a45954c4a99c1c4f692eb5224, 'postmeta', 13009),
(0x195f799d24dc4ef199fb332867af21ff, 'postmeta', 13010),
(0x46f99db9b7bb458394523f397044564c, 'postmeta', 13011),
(0xad29bf9d175642068e12703db0bbc874, 'postmeta', 13016),
(0x525fd934771d43b7ae03b8a16a8016f9, 'postmeta', 13017),
(0xb18c275ac7fb4a68a91e1e0741ddd72a, 'postmeta', 13018),
(0xd6c3efaf74bf431d9368a59fee167dda, 'postmeta', 13019),
(0xbe986d91b1c14cf3bd0c654601df328f, 'postmeta', 13020),
(0xcb46f7037fcf49ec8c7e07a8a52b45ed, 'postmeta', 13021),
(0x784378f7d1c243149755b584940474c2, 'postmeta', 13022),
(0x482431d26e154d93b77cd481ee42ecdd, 'postmeta', 13023),
(0xf80d479ab9a3454ca4efe8a726b7608e, 'postmeta', 13024),
(0xad456a5ddcb54595a3bbf6a469ce1777, 'postmeta', 13025),
(0x7daac7db24b14749834a0792d1ca2fdf, 'postmeta', 13026),
(0xf9380a38264e4b0c8dc0edb32174f1ed, 'postmeta', 13027),
(0x66f739aecf4147c8888d1dec6a5ab213, 'postmeta', 13028),
(0x014e0c93150f4910981b3385c9258e35, 'postmeta', 13029),
(0x5ce484038b09423fa6987bb768593136, 'postmeta', 13031),
(0x6a8878beb27144e1b1c366ac30962686, 'postmeta', 13032),
(0x1b499e85274f476d8ae4882292aabe9c, 'postmeta', 13033),
(0xeda1d004d67a4377894f2f01f2bbd107, 'postmeta', 13035),
(0x75f81c6a281e4edcbdef00ec95ee315f, 'postmeta', 13036),
(0x4469eaa779774042ad9ee307a203e3f9, 'postmeta', 13037),
(0xae19691e02d04a7b83b65d41824fe41d, 'postmeta', 13038),
(0x83a20a5bf79346d0b9bc01825bf9345e, 'postmeta', 13039),
(0x9dcfdf86d68343cfa28932231d65e024, 'postmeta', 13040),
(0xaa6810777bf24548ba461d8a2c0a0998, 'postmeta', 13041),
(0xd20d35a37dcf418ab602e5d0dd1244c1, 'postmeta', 13042),
(0x51ebc009f37a4f0991e965b9c0a7e501, 'postmeta', 13053),
(0xe95f75aab2ec4f30903cff7db76de797, 'postmeta', 13054),
(0xabc63906430c4e30bf42bab73bdfa127, 'postmeta', 13055),
(0xfdbd44ef37d64299b3c6699cbc76aa02, 'postmeta', 13056),
(0x8de4552ab30d40e2ad85dcaec679e73c, 'postmeta', 13057),
(0x514bccdceebb49ec80ea343b9de4214e, 'postmeta', 13058),
(0xb2aae1db287d4bbe9a37cf3c4e8efa64, 'postmeta', 13059),
(0xa88b4a4590444171ac6d5786d7edda8b, 'postmeta', 13064),
(0x340d5c71969545c6a6a3917a952bfafb, 'postmeta', 13065),
(0xbdb444a8eaa34b36aa1ac6b441b907d4, 'postmeta', 13070),
(0x2b89cfffbaa54583b1638f79013ba3ae, 'postmeta', 13071),
(0x0680dadcbff440fd99ec484819a49e02, 'postmeta', 13072),
(0xc86d369dcd394e1297c312c7b847ecc2, 'postmeta', 13074),
(0xe9e6b8e49f464286a2f3221d2ec7712d, 'postmeta', 13076),
(0xab7f2379512d49cd8077efa70ac4c182, 'postmeta', 13078),
(0xfbd18a6c96b54c2fa3c8d5366d9875dd, 'postmeta', 13081),
(0x0eee91d587334246be1a556ca3bc8e63, 'postmeta', 13082),
(0x2892494c8195483a87540eb8e3f88aa7, 'postmeta', 13083),
(0x6b1305b123f24465970c62368c002b97, 'postmeta', 13084),
(0xd91f9a46b3044e0e9cf60ac020a72ee8, 'postmeta', 13085),
(0xf0596af867b542f7930f743660fdbbed, 'postmeta', 13086),
(0x433502521be74f8aacadda297fe97ffd, 'postmeta', 13087),
(0x8cebf1e602894fdfaa764509c243a25f, 'postmeta', 13088),
(0xec08be3e1a034b16a11a767f9498f7e4, 'postmeta', 13089),
(0xdf8224c9007d4ea58f5c9fc10a8f767d, 'postmeta', 13090),
(0x6b9772c233de4d3795226e5ae0ca2810, 'postmeta', 13091),
(0xc3b97e57d820454397b3a0924786c20a, 'postmeta', 13092),
(0xdf2a9d3252a9494ea08fa682629e73c7, 'postmeta', 13096),
(0xe69ba5bc37464daca5ed853a0b43774e, 'postmeta', 13097),
(0x0db18bf82cae45e69de81320f8223ae4, 'postmeta', 13098),
(0xfdd3dde0bad14846a5613a15bb37d2ce, 'postmeta', 13099),
(0xc6cfc207e59949329e37cdc090ad9ccd, 'postmeta', 13100),
(0xf1e4d2abefb4472094116c1da6ee3c62, 'postmeta', 13101),
(0x8fc24cfddc6a413a8c51159420fcf471, 'postmeta', 13102),
(0xbb0affbec0ad4bdc9bfe7b27ae0bd0ee, 'postmeta', 13103),
(0x05932d897a484d4699494f798bcbd86c, 'postmeta', 13104),
(0xf4768c7afc5c41ca98cd667c7e1b8d04, 'postmeta', 13105),
(0x8bf6c31eb1cc48ee9e0ec0c1542165d2, 'postmeta', 13106),
(0x4dc7dec6656b4e4c82dd98a19d2f0332, 'postmeta', 13107),
(0x030a91ad4deb4f67af075581a8cb6c17, 'postmeta', 13108),
(0x94c9eee33a93471b976baad5f19bdf02, 'postmeta', 13111),
(0x797e7c479dbd4b74902f7521bf4c85cb, 'postmeta', 13112),
(0xef7aa4a49e254d0fb4d9007105f4fa64, 'postmeta', 13114),
(0x098b3daa721b4e9c8f8d962242c0fbe4, 'postmeta', 13115),
(0xf6b75fd8b7cb4e74b20896d984f09260, 'postmeta', 13117),
(0x1ab716037a19472f998ab2ac04dbcf11, 'postmeta', 13119),
(0x7da0bfc06ee049528151f4307d5f4c37, 'postmeta', 13120),
(0x65a974959d5c4d96b81d8563437b97f6, 'postmeta', 13121),
(0x3735f3a6c126415395abbf18dce6c1a8, 'postmeta', 13126),
(0x3e0599282c9b472bb16efd1789cca7c2, 'postmeta', 13127),
(0x1c23c7cf1cff4bf3ac5eb8b60481dc1b, 'postmeta', 13128),
(0xfbca46f362f4465880c376ef7e5daa59, 'postmeta', 13129),
(0x903c37ac3fca4c64bddeebdef96615fa, 'postmeta', 13150),
(0x18648f4c7dcf42a18f567cd58945e2ea, 'postmeta', 13151),
(0x054d4e315ac5482e8fc193fbcbb24ea7, 'postmeta', 13152),
(0xf573e4178bb24596898fc74baaef8411, 'postmeta', 13153),
(0x73d596975a594a65a57ff7426c82c749, 'postmeta', 13154),
(0xdaaf437ec52847f7b2ccb3c3a27f287a, 'postmeta', 13155),
(0xc6bab7737b9d4abda578ed7b7413b548, 'postmeta', 13156),
(0x934d6d3946404554a6d7bc6ff27a52ac, 'postmeta', 13157),
(0xe3b6a71de1084f4387f37860f7d91d06, 'postmeta', 13158),
(0xe38916d0ac7a42e9ada474ddc0bff1b2, 'postmeta', 13159),
(0x8b6de47b67a34e53b6e13b1f4c23034e, 'postmeta', 13172),
(0x2f99558b06be4691a93c4a2c5a85f6d5, 'postmeta', 13173),
(0x6827c7713e4b4387a6469baf762a9b68, 'postmeta', 13174),
(0x895ba2957a924b5ab8fa8b653b1faec8, 'postmeta', 13175),
(0x2997e70e7d274010a453b0a57bb18743, 'postmeta', 13180),
(0x08b514acac334fdba4b1c1fcb7b30122, 'postmeta', 13181),
(0xe94b4d6e17364d679f900c8a6575e099, 'postmeta', 13182),
(0x316ab0b8008e4fa6a12dcd3e9ec38467, 'postmeta', 13183),
(0x28e99431502049c497c37826d90bae08, 'postmeta', 13184),
(0xa4060602b6a043ba9541146f8296e521, 'postmeta', 13185),
(0x03c3fcfef2bd4d6ca6d984b3f111b0ed, 'postmeta', 13186),
(0x7dae1af1d85d480e96c7cc888454686c, 'postmeta', 13187),
(0x7b76a8b4366f45aeaa3b6275b879a20e, 'postmeta', 13188),
(0x9ee7c9fcd9484feda0d863235c420b2a, 'postmeta', 13189),
(0x649de30275af45d496118523f47adb1d, 'postmeta', 13191),
(0xcab5d51493bd45b385d2593f76acf6ac, 'postmeta', 13192),
(0x64193466fec84192aa1054a1607d9e5b, 'postmeta', 13193),
(0xa3a32d2e1f24434da8b5d8daf8871df1, 'postmeta', 13195),
(0x5d2dbe86df474897a619d8886bb85317, 'postmeta', 13197),
(0xf68e79704c15451ea7c3d4433c9f5da5, 'postmeta', 13198),
(0xd735e29e4153456c99b6847dcee9616a, 'postmeta', 13199),
(0x44d16b7e593c412fa2acb6de0cb40074, 'postmeta', 13200),
(0x8b7698c4df844beabd5a499b41d3db00, 'postmeta', 13201),
(0xe2864605351f4fbcbba0315c577e49de, 'postmeta', 13202),
(0xcd8a57f1f17d4640a429b2c35e15ce1f, 'postmeta', 13238),
(0x0212f1c05a644f62a10b9e19684d3bff, 'postmeta', 13239),
(0x94d8108240b64dcda291a1f176422ef6, 'postmeta', 13240),
(0xe42609feaed34aebaea5c87cf1386ce1, 'postmeta', 13414),
(0x84d01635a5cf4bb1b712b921f7c585aa, 'postmeta', 13415),
(0x535fb6af596b4cca954857c83788a2c2, 'postmeta', 13416),
(0x10f9edc51fe047a0a9b312a39ed12e02, 'postmeta', 13417),
(0x9d666d610a3a411b9463f3c01203b48a, 'postmeta', 13418),
(0x747bc35cff324f5d8e3e48219f1ad733, 'postmeta', 13419),
(0x408d9d605aca44a094b9dcc5b72c0275, 'postmeta', 13476),
(0x6d3a8d2518364aa5b9c9551c0babd10f, 'postmeta', 13506),
(0x5e160958d96e45f9a274e4d10d6e0994, 'postmeta', 13507),
(0x9dddb6df351b46e1b3887726806a328f, 'postmeta', 13569),
(0x080b3004fc5540cab0d4765be7c402f5, 'postmeta', 13570),
(0xbae9c5520f6f4cc4bd2c25c9110e2f69, 'postmeta', 13571),
(0x0f6c24fad56d4f91b603b77fe3f6ed61, 'postmeta', 13572),
(0x999dff5990944a27984ddfb209400e91, 'postmeta', 13573),
(0x7e44b26b8d78465f818968e31eee2c03, 'postmeta', 13574),
(0xb9f272c77247451c99dc11dbcf1d33ab, 'postmeta', 13575),
(0xdb63916c3bc745c3ad4aea07451a5061, 'postmeta', 13576),
(0xd1e934bc651a443eb32fdfbd5fa90a52, 'postmeta', 13578),
(0xc4bbef59e5344df49f708ae3b665744a, 'postmeta', 13579),
(0x890b51d7bf994b69beceafd66d8be23d, 'postmeta', 13580),
(0x2d25f08f5ef043e38d321fbb3392e6f3, 'postmeta', 13581),
(0x92e8d13546fa43378792e8d9723fc38a, 'postmeta', 13582),
(0x141b83ff120c46d7945a59081a75d509, 'postmeta', 13583),
(0x0f31045a7ae2468b8cbd0677cee02b80, 'postmeta', 13584),
(0xb5798374205b4864b3936f93e4c02941, 'postmeta', 13585),
(0x6cf599effaf3425981a92f5a0102a73c, 'postmeta', 13587),
(0xc61f48aa2fc24c38a8e02b9fac52fb83, 'postmeta', 13588),
(0xa3dbb162d625465fae993236a9ba595e, 'postmeta', 13589),
(0x298d1c74a84f4866a6e1911afd6a28aa, 'postmeta', 13590),
(0xbd008e62cecd4f34930a46b340078a05, 'postmeta', 13591),
(0x330818ab401140deb1a6fe5d9a736404, 'postmeta', 13592),
(0x2f409fd115594614af07ce98175c508d, 'postmeta', 13593),
(0x86a23ac018ea48398cdcddc1858b6d46, 'postmeta', 13594),
(0x67d0e34473d34fc7be716eeb8b447b26, 'postmeta', 13596),
(0xf94875af593443f2b161591fe83f2501, 'postmeta', 13597),
(0x8a1b82147b0e4ec79c303523e08188a9, 'postmeta', 13598),
(0x2d82bd1107e141faa990423063e9e025, 'postmeta', 13599),
(0x4eb97e6e696b46f28f50609c80867288, 'postmeta', 13600),
(0x87677119d6ff4c2699222b5e4a8728a2, 'postmeta', 13601),
(0x546f46ba151543a7a63b8366e400c964, 'postmeta', 13602),
(0xec9e1ccc56a145b198b1647d7333d24c, 'postmeta', 13603),
(0x03b9804e1ad54ec7b0007fc3a57cf924, 'postmeta', 13609),
(0xbfff83e6383d45bbaccf516b939270ea, 'postmeta', 13612),
(0x73e145720177499abd20d2fc23a78f0e, 'postmeta', 13613),
(0x5f3a81e145c34c72acc477408241d622, 'postmeta', 13651),
(0xf5e26bc12997417583029887ff78565c, 'postmeta', 13654),
(0x1bddb656c7c645758618fdec4b9b12e2, 'postmeta', 13655),
(0x9d9cdb24b4444c0e9b9dfcb2b856a60e, 'postmeta', 13656),
(0xcc0afa06b6f3495682ed09fa560ffaa6, 'postmeta', 13740),
(0x51b0497e1a8844a78b8bcf5426ef655f, 'postmeta', 13743),
(0x1ab7d3e7a80e4e9b8ba6ea2fda7fe0bf, 'postmeta', 13744),
(0x3f581c205ff64b5e975150f4bc45ef2a, 'postmeta', 13790),
(0x7ab7872f7f1045269b685bd0c1f694a8, 'postmeta', 13791),
(0x2d98d088908d480eb8f0425309979761, 'postmeta', 13795),
(0x892da0b5e0574bf1a2d01e08a75519fa, 'postmeta', 13796),
(0x637d1e3ecd4247e0ad644c54ac854226, 'postmeta', 13797),
(0x639e86783c8546999e002daaa69a7ec1, 'postmeta', 13798),
(0xb39d3a507bff4543bdd811ceea453868, 'postmeta', 14189),
(0xdf62ca083d3543b8888b003df6ae5c98, 'postmeta', 14190),
(0xeeae4b96a29845c8abb0f9dd61cc9ca1, 'postmeta', 14191),
(0x67ef1ef384b546a7b2e49682603ba789, 'postmeta', 14192),
(0x23d0fd4fb31e4409b4a63c6bc125ef57, 'postmeta', 14193),
(0x73c6f8787a5f400b9b344d16adfa7ec3, 'postmeta', 14194),
(0x7eda86eb7fab443791c1f08751c45f81, 'postmeta', 14195),
(0x11e9b0b512c34228914db7f9e2ff3645, 'postmeta', 14196),
(0xe3c0c97fd6df4dac8a8ca08cd85078fa, 'postmeta', 14197),
(0x91e683c479264886b4283e712a870c11, 'postmeta', 14198),
(0xe71c4b9438884258a73efdfeaf565a58, 'postmeta', 14199),
(0x6726d565fdc94e639c360853281e9007, 'postmeta', 14200),
(0x3643dc69400b43d58304b3aed05ee56c, 'postmeta', 14201),
(0x30e8e240294d40a6b47883d5701e02a3, 'postmeta', 14202),
(0x4ae564b32255464da6391562f76bd2c2, 'postmeta', 14203),
(0x1dcbcd3ba23641e59a744ae7c4e67dc7, 'postmeta', 14204),
(0x720d26995ccf49799dc77b6a03f7e5ba, 'postmeta', 14205),
(0xa272e7ae980a403cb71a6289f7855a39, 'postmeta', 14206),
(0xad84a2b9a0514884b2c46315fbf59d2e, 'postmeta', 14207),
(0xa772ae7e27df4eb3a5acd0b688dbd786, 'postmeta', 14208),
(0x94d28d39146648169d8c28d339b979a4, 'postmeta', 14209),
(0x54e506f31a1f4989b87d318201d22a1f, 'postmeta', 14210),
(0x5043d2de706a49ba8d96809a20ff68d5, 'postmeta', 14211),
(0x588677dbc556431c833fd8956cd613c8, 'postmeta', 14212),
(0xdf222a95f7da4ff8a9b2ed2a2eed543a, 'postmeta', 14213),
(0x49b7ec27a06b47a5ab508262ae214157, 'postmeta', 14214),
(0xfac63c26e5dd4bc79c262da7b8f73cb8, 'postmeta', 14215),
(0xd40beae03e8340099b700e1519599815, 'postmeta', 14216),
(0x9385b76ee0754c58a3b8a5ef15bf4fe2, 'postmeta', 14217),
(0x0ff94a24138a4b4faf7a278674d923e4, 'postmeta', 14218),
(0xa643d81ddfa3483382b93e0c7b63f4a1, 'postmeta', 14219),
(0xae6d0f2226db40f1b67c6fa47c37e1ac, 'postmeta', 14220),
(0xf865bdfe77af4145b901622c8006361c, 'postmeta', 14221),
(0x99a78a08b6b1435298f4d81c4f65ac68, 'postmeta', 14222),
(0x93ebe0a06e66430cb317115bb153bcd7, 'postmeta', 14223),
(0x4262b1adf2074f948678b899d4de3458, 'postmeta', 14224),
(0x44aa045d62604dc994407340fb7fbf2a, 'postmeta', 14225),
(0x0be0090fdd484c81a64b27bf0711e878, 'postmeta', 14226),
(0x993dd046c5cc431e83e2d6413fdd65d9, 'postmeta', 14227),
(0xf2a1ea97cd3944ab85df295922308f4b, 'postmeta', 14228),
(0xa496f308062c4ad5a869e0626bed6721, 'postmeta', 14271),
(0x077259543dc74c21aa58b218bcc1e609, 'postmeta', 14272),
(0x3943e15c83d345e8af44021434679a4f, 'postmeta', 14445),
(0x2a4d36735943444bba61d782f2726a45, 'postmeta', 14446),
(0xeff1ea61730e467b8fa8660b9e3bebbc, 'postmeta', 14447),
(0x25f651b28afc4eac97ed94ff2ea7c29d, 'postmeta', 14448),
(0xc134333edab046a5a79269184ddbbd68, 'postmeta', 14449),
(0x38ee1f1273d84ca183ee7152ae8e47bb, 'postmeta', 14450),
(0xf3ec7ee6678f4a85ad138391d6b527a0, 'postmeta', 14451),
(0x555c43b09d914b8fa4454b990564bbeb, 'postmeta', 14452),
(0x0ab6d86d283c4cb3b02f6ca871354b71, 'postmeta', 14453),
(0xf81142567ce04acd9fce77b7b5b60630, 'postmeta', 14454),
(0x7447ea9133d8435a9b21cea8883df035, 'postmeta', 14455),
(0x396ee7b5c65f4f198f77363642aea4f7, 'postmeta', 14456),
(0x7569de83e96246aab6897858f4f8ad7e, 'postmeta', 14457),
(0x13abe1cc560946e6a8d6f2423fb8a089, 'postmeta', 14458),
(0x232b632acac8489b986807997a907e40, 'postmeta', 14459),
(0x230305775ceb43858aa2133793af4e73, 'postmeta', 14460),
(0xb1ea0690c6e04cbb919847a58bbbecb3, 'postmeta', 14461),
(0x0af2e91f8aa646118819b7cbfcf68bb6, 'postmeta', 14462),
(0xdf0c0baa135f4f9ebdfea0ede7eadf28, 'postmeta', 14463),
(0xf91fa8702fac4a74a1661477b6cb55b7, 'postmeta', 14464),
(0x549e07b35cef40039dbd16bd6046c1cd, 'postmeta', 14465),
(0x8046864fc94d48ea8fdd9727e2624b2e, 'postmeta', 14466),
(0x4bf7a5a379fe4dde993569d56fa170bc, 'postmeta', 14467),
(0x5ba14618c47e479386a295cd51b2c78b, 'postmeta', 14468),
(0x00d0eb740ad045a6861e402246f43a7e, 'postmeta', 14469),
(0x7d877fc22a1b49f8801f9157238c7755, 'postmeta', 14470),
(0xa048cc5f8f4e4486afd0431816267b1b, 'postmeta', 14471),
(0x0cfec0a0e486433fb47ab4cd1ba338e4, 'postmeta', 14472),
(0xc507260697614a34807bb3a268bd0a2a, 'postmeta', 14473),
(0xe06d0ad596e142cebc891ca531d02595, 'postmeta', 14474),
(0xd894075cd5e7406ca0325a0c4dc04c4d, 'postmeta', 14475),
(0x6ba9d04d7b3c41da9ccfdd94b9b00832, 'postmeta', 14476),
(0x10872dc1533347628047da1261783d52, 'postmeta', 14477),
(0xc1253bdf7d2d48b69dac9af05f9c5c0b, 'postmeta', 14478),
(0x0f381604b1d84d26949f416fee693997, 'postmeta', 14479),
(0x0fe4f07053b44546a8cfeb460e88dd6a, 'postmeta', 14480),
(0x13ccfb5ea4664c5c88b02e21957fb932, 'postmeta', 14481),
(0x120271298a844211a41df501a3046aa3, 'postmeta', 14482),
(0xdca20978d5a94aa083ae76116bd8a465, 'postmeta', 14483),
(0xefbdb0ceaabe4ef68894581b7b34aad1, 'postmeta', 14484),
(0xe27b8f71fa6a4bcda539ed7a52cc7f61, 'postmeta', 14665),
(0xa7f9d4a156d74ca6acd92154931e4dbd, 'postmeta', 14666),
(0xe3826cad93c0484d8688333e7abf6a9a, 'postmeta', 14667),
(0x24971d0b96d04aecb20bbfc56e4ca872, 'postmeta', 14668),
(0x08cc1ca93471499bbb4c978708f1f5c0, 'postmeta', 14669),
(0x80f47f683da94492a9b0390362058836, 'postmeta', 14670),
(0x0485adfa4f2e4c69a6f227402364e39c, 'postmeta', 14671),
(0xff932e3c2c0040c1a40f01b34d84ca3f, 'postmeta', 14672),
(0x835ea20a0ba6434cb0339016a6d8ae05, 'postmeta', 14673),
(0x1eef69d2f2ab4190b47a938a70882bab, 'postmeta', 14674),
(0x522757149f9d435a97ea22c4612126e0, 'postmeta', 14675),
(0xb0a9772dcf5e4875a1f26e239c214075, 'postmeta', 14676),
(0xe23bb276893d4259b2aa1f95fd499832, 'postmeta', 14677),
(0x823385b0ad534963bb970b2b80e945ed, 'postmeta', 14678),
(0x48ce677f5f8444a4b65bd6be182e6940, 'postmeta', 14679),
(0x6a9445ba13cf4cffa2c4f82be15c2b73, 'postmeta', 14680),
(0xcec17984911446bf8442f19a742a7675, 'postmeta', 14681),
(0x216a50a87d41455d9703f891ea695072, 'postmeta', 14682),
(0xe3c70622cf69471dbb072175ec108ef3, 'postmeta', 14683),
(0x995cd717a6784e859aeb2f6fd61880c3, 'postmeta', 14684),
(0x0b722cd5fb4c4a0dbb13d3a6c843d5eb, 'postmeta', 14685),
(0xbd9ba2af3ee543a09786db91612cf5cf, 'postmeta', 14686),
(0x36e0b0bd8e0043868fe8bdef1406eeea, 'postmeta', 14687),
(0xab563227d2e74fa8aab45bbf281e0d29, 'postmeta', 14688),
(0x54008ce8ccd14e95932f15fc03ed7e69, 'postmeta', 14689),
(0x372c85efcb894793ab49168bea5955e2, 'postmeta', 14690),
(0x38facf04536548e19bca00c56b70061f, 'postmeta', 14691),
(0xadf67f1cf6d242eb95c466767f11cba7, 'postmeta', 14692),
(0x51f86c84bd4b45cb8df8eed88481af9b, 'postmeta', 14693),
(0x0cee0af2169544e2b192e2f38e7b98cd, 'postmeta', 14694),
(0x1ebf7fb8aabd4585bf7552ab903ea9ea, 'postmeta', 14695),
(0x02f7845bc42d4585a501cc9924d53bb3, 'postmeta', 14696),
(0x08502af9810942f6b9a37f0ae9794ce9, 'postmeta', 14697),
(0x7decce992d2b407786c7c627512d9801, 'postmeta', 14698),
(0x22240a2dab9f42c3a01881e3615ed420, 'postmeta', 14699),
(0xc26b59e27855440691167c9084029b7d, 'postmeta', 14700),
(0x7af5f216e1a44ea78b303b7dd5491128, 'postmeta', 14701),
(0xede14cda0cbe496f81fc25d3c7ce2f3a, 'postmeta', 14702),
(0xd3562ff05f544d29aae03da1799b4f99, 'postmeta', 14703),
(0x86ed306bb23e4910a62af8874552bba9, 'postmeta', 14704),
(0x091a8c425aff48eb9f409573022e16a8, 'postmeta', 14706),
(0xc8a3f9c908f0411b9f0d05f21b753fe3, 'postmeta', 14707),
(0xc479bf3a7fe14b72976582882afc2d9f, 'postmeta', 14708),
(0xa34fac8151484e7ab93f4239ab6260df, 'postmeta', 14709),
(0x5e7c236c11544b139841961922da5e78, 'postmeta', 14710),
(0xc6bdb7277dd148b3bb521b9c78eba2e3, 'postmeta', 14711),
(0x999a7ef75d7047199557be0783befa2f, 'postmeta', 14712),
(0xe1035b5653ae4b44a2c1f2ac393cf5aa, 'postmeta', 14713),
(0xf60ad4c9b2874f10bb54aebf88f616e4, 'postmeta', 14714),
(0x4c8b1a9ce12e407a9cbf9b850da8355b, 'postmeta', 14715),
(0xe972330f69bd426f960559b05551ddcf, 'postmeta', 14716),
(0x977713fbe1914062866fa157a619d5db, 'postmeta', 14717),
(0xb837901c9007415ab9c1b98a429cbb22, 'postmeta', 14718),
(0x2d3d8f739ac345d2b0f31d895adfba0d, 'postmeta', 14719),
(0x4b3523c1c2c141bc8eacf93c7274651b, 'postmeta', 14720),
(0x42817965f7fb408bbb5f64355873387e, 'postmeta', 14721),
(0x06acb7a9d61249fdb280ad1a4fdbcf9f, 'postmeta', 14722),
(0x76f1f28a9b83489ab7ea0019635c3529, 'postmeta', 14723),
(0x73537ab78e1e4ff7abcd0556759a9f8a, 'postmeta', 14724),
(0xe9c8df2a5c1c4427babd55d765643b42, 'postmeta', 14725),
(0x555d5b2a5e36414bbaf66a9abbc40889, 'postmeta', 14726),
(0xfc66d6e02637443f976446e1242dd463, 'postmeta', 14727),
(0xda1688ed62634701987cdff6f6666d49, 'postmeta', 14728),
(0xe13a9a4b24d34992b141fd427d5fbc9d, 'postmeta', 14729),
(0xda7b9ad1506542eb96a6688588a61d0b, 'postmeta', 14730),
(0x97ccf240aedc49e6a4145c916f2521cd, 'postmeta', 14731),
(0x34492e2074d94d089699a3c42edce313, 'postmeta', 14732),
(0xa82b0154a669426dbde8b6bf5477f7af, 'postmeta', 14733),
(0xa5a7b3092f334484af6f73288760f49a, 'postmeta', 14734),
(0x0356361a46ec438397e04688bd91e633, 'postmeta', 14735),
(0x8950d0bbe07d41b48bad999c91db400b, 'postmeta', 14736),
(0xc8b76645b88f4461b7fd517077d1d516, 'postmeta', 14737),
(0xe8103790377d4ffa9c392b95e548cac3, 'postmeta', 14738),
(0xa9f6603e094b4b4c805c9663a7be79e1, 'postmeta', 14739),
(0xf89eccab3c954fa98fec452bc18875a8, 'postmeta', 14740),
(0x5189e7415d044ae49e928930fd8d2ea5, 'postmeta', 14741),
(0xa0e8100f56a5444294e182cf2f887eb1, 'postmeta', 14742),
(0x0238ebb12d6d491cab361da6f23815b1, 'postmeta', 14743),
(0x58f00c6d2f1c4b27a55b1fe385d35953, 'postmeta', 14744),
(0x276ce53fbfff4c0db1c5e2ae68a89eb9, 'postmeta', 14745),
(0x155ba4394bb84253965d07fc7b51bd5c, 'postmeta', 14746),
(0x7620717bf8594df3ba7a7784a3fb9a76, 'postmeta', 14747),
(0xf237bebc2af94bdc9ecc673b64a8d3bf, 'postmeta', 14767),
(0x7de49fbeeeef4d8eb323a0f91de70a73, 'postmeta', 14768),
(0xeaf8dc4a7c234562b84c3d02d78cd0dc, 'postmeta', 14769),
(0x3cb74b2754134f70baba9c12144e1eb8, 'postmeta', 14770),
(0xb336784fafcf419682e3bab00b468c1e, 'posts', 16),
(0x2fe6f5c37e604e3889ec2156d8fe6978, 'posts', 51),
(0xd0e8e0c91f2d4a31aecbeeaa8ad971ad, 'posts', 60),
(0xfdf375c2afd147868cd4da9c9d1b6d3e, 'posts', 62),
(0x39bae105b2a248cc8ec1e89ec4125b80, 'posts', 416),
(0x46f482466f2b492ab8a4431f4dff0a2f, 'posts', 437),
(0x66bcb35a6d3845cc8cf0e8e619227bc0, 'posts', 438),
(0x856c4f498be44511bb05f92285a99d94, 'posts', 439),
(0xb4768acda71748f3b970957c62fb848e, 'posts', 440),
(0x873fed053f7a4770820f1f09f609b63b, 'posts', 528),
(0xc6151957efc743228805ee19675ba3e0, 'posts', 545),
(0x1849895f836e478db19bb50776c09586, 'posts', 1312),
(0x10190c026f39471c8d1d82ef97155482, 'posts', 1357),
(0xa3af65951a9b4424867906a14a361e9e, 'posts', 1359),
(0x5ac85f6c2d85480db87b22d76d907c96, 'posts', 1360),
(0xa920c2cf11984cb69a3472331995242c, 'posts', 1361),
(0x3e552b32c0c14c679e7fb96c3e0c48f6, 'posts', 1362),
(0x77f44fc798464d4b850a29fdd1c503a0, 'posts', 1363),
(0xe50e659ec619414498e79af34174d448, 'posts', 1367),
(0x5d0e9486c04247c0b2dd06d98e49ae50, 'posts', 1369),
(0xe1663f0d75784bc0a6329e80f3f31f3f, 'posts', 1380),
(0x26853ea771744ad3b7a9e77261d98adf, 'posts', 1381),
(0x277b8a2c31a84e079534ae52bc73d70c, 'posts', 1382),
(0x5748b9e3b2eb4a9c8ff465980ac9e722, 'posts', 1383),
(0xbfe7c1fc77f8480b8a0bd5a5c6f1f802, 'posts', 1385),
(0xa7aff03714d541eda24d522a8da9637d, 'posts', 1388),
(0x7e326cceb7be408e9a3749b2174309d3, 'posts', 1389),
(0xfbb03def9225428b9b54fdaac0af4c92, 'posts', 1391),
(0xa109be3119ea44438c7576f9f54f576a, 'posts', 1393),
(0x3d10b81d051a4f76a8a96e52798b8293, 'posts', 1429),
(0x914a0816772c49dcbd475e9f0a860979, 'posts', 1444),
(0x42e984e785544b6cab66f0aaa4d75bf0, 'posts', 1445),
(0xd4e74035b76e471eba731d080ff408ed, 'posts', 1446),
(0xdd7a04a5accb4c76b108345d5fcf078d, 'posts', 1447),
(0x618e39c2b1cf4fa9afefd195728763aa, 'posts', 1465),
(0x55aa70dde92f459caa4d639e774f5369, 'posts', 1476),
(0xab7294506ab34cef86263ac9e76bd433, 'posts', 1478),
(0x30b0ad95185443b4b9323123d2ea02a8, 'terms', 1),
(0xafe51908500644429bd292fd0f7fb0e3, 'terms', 2),
(0xdc891bcaec244e8db451143cd92e082a, 'terms', 3),
(0x7a70f23881be489888f388d3907bc9b8, 'terms', 4),
(0x95cc6babbb734b1286ebbac5bd75065c, 'terms', 5),
(0x7508bd1950af4e54890645228ba4e271, 'term_taxonomy', 1),
(0x839eee4bb67942c499694f4305b787ae, 'term_taxonomy', 2),
(0x5312f67cfd7e4696927e99973a10ef09, 'term_taxonomy', 3),
(0x5fa5e7c6fc1e4a65a3b8cdbc8a1e0f7c, 'term_taxonomy', 4),
(0x940d31784d6c4eabae9e37b9d4ff4ca5, 'term_taxonomy', 5),
(0xdeafebe6718f4af6803e7a3282f2c17c, 'usermeta', 1),
(0x17659b601c2b40bc98c9aa5e8dd046c1, 'usermeta', 2),
(0x6250c482c3d9435b82bd7b2c9d3d7c12, 'usermeta', 3),
(0x6e815270d14d4a16b793cc07fa8281f5, 'usermeta', 4),
(0x134bab43d0a04d769b6f784eddb8798b, 'usermeta', 5),
(0x98f48ebcfe8e4e38b7530c2fa43e012f, 'usermeta', 6),
(0x3026da59f40141a1bf9bebd213508556, 'usermeta', 7),
(0x6f4fe9e9b13447d89daec48e6701454e, 'usermeta', 8),
(0x473145f46bab4fadb00b9666496a8de7, 'usermeta', 9),
(0xb79473ffe9ae4686b800cf0427f531f7, 'usermeta', 10),
(0xecae982afc95452aa5218c3fef164569, 'usermeta', 11),
(0x2d34b394f1374f6aba7c375985319996, 'usermeta', 12),
(0xd716fe4eac0f4eafb85469d762792fea, 'usermeta', 13),
(0xe358fd7ec3ba4422a2bcad2c693b5193, 'usermeta', 16),
(0x1ab9c8d5eb2e443d879e289112923208, 'usermeta', 17),
(0xae20d9ab8e414dffa4e03864c9c235f5, 'usermeta', 19),
(0x6fb1edf0305c469785f31d997f50ec33, 'usermeta', 20),
(0x573ab79852f44e3babb65e00e686d2e8, 'usermeta', 21),
(0xbbd09888e61848f5bedf770799f73392, 'usermeta', 22),
(0xfb92559ab8ed4ecbbaa8570620c0e430, 'usermeta', 23),
(0x18f490665fc64ff9b16e84e984dfae2c, 'usermeta', 24),
(0x84c59d70e2a54061b908cff46063c8f4, 'usermeta', 25),
(0xcda04a8623e04fb0b515e88a9be10601, 'usermeta', 26),
(0xe173ece1756446aeb89f19d3eb7a3d2d, 'usermeta', 27),
(0xfa003611d5174ef88e6908a3c5865657, 'usermeta', 32),
(0xf52f89b62ad348e1bb753583ef4441f7, 'usermeta', 33),
(0xefabde7eb41e46eb827d5a3e784d1783, 'usermeta', 35),
(0xf51c8ecfea5c41c2b2941ef506ed77cb, 'usermeta', 41),
(0x75bb5531ea934c97832583b3093eacfa, 'usermeta', 42),
(0x38719259a06441b99c109eb9a6eaf0f0, 'usermeta', 45),
(0x24e7478ac3b7473cbf8b73c653b8dfa6, 'usermeta', 46),
(0x3bc9a1b911f54c9593b85f7dd8e6c311, 'usermeta', 47),
(0x086964028fdd41b4b5496bb27655c4b0, 'usermeta', 48),
(0x5a29699e05a04f2fbcd7bfb77e6137e8, 'usermeta', 49),
(0x2625872a16194a7e82c0af34c1c51113, 'usermeta', 50),
(0xb9871f8a308e4bc8a560f34f4f20f7bd, 'users', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_slp_extendo_meta`
--
ALTER TABLE `wp_slp_extendo_meta`
  ADD KEY `id` (`id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `label` (`label`(191)),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_store_locator`
--
ALTER TABLE `wp_store_locator`
  ADD PRIMARY KEY (`sl_id`),
  ADD KEY `sl_store` (`sl_store`(191)),
  ADD KEY `sl_longitude` (`sl_longitude`(191)),
  ADD KEY `sl_latitude` (`sl_latitude`(191));

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_vp_id`
--
ALTER TABLE `wp_vp_id`
  ADD PRIMARY KEY (`vp_id`),
  ADD UNIQUE KEY `table_id` (`table`,`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4601;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14865;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1485;
--
-- AUTO_INCREMENT for table `wp_slp_extendo_meta`
--
ALTER TABLE `wp_slp_extendo_meta`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_store_locator`
--
ALTER TABLE `wp_store_locator`
  MODIFY `sl_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
