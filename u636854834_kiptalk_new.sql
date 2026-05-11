-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 11, 2026 at 02:31 PM
-- Server version: 11.8.6-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u636854834_kiptalk_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads_campaigns`
--

CREATE TABLE `ads_campaigns` (
  `campaign_id` int(10) UNSIGNED NOT NULL,
  `campaign_user_id` int(10) UNSIGNED NOT NULL,
  `campaign_title` varchar(256) NOT NULL,
  `campaign_start_date` datetime NOT NULL,
  `campaign_end_date` datetime NOT NULL,
  `campaign_budget` double NOT NULL,
  `campaign_spend` double NOT NULL DEFAULT 0,
  `campaign_bidding` enum('click','view') NOT NULL,
  `audience_countries` mediumtext NOT NULL,
  `audience_gender` varchar(32) NOT NULL,
  `audience_relationship` varchar(64) NOT NULL,
  `ads_title` varchar(255) DEFAULT NULL,
  `ads_description` mediumtext DEFAULT NULL,
  `ads_type` varchar(32) NOT NULL,
  `ads_url` varchar(256) DEFAULT NULL,
  `ads_post_url` varchar(256) DEFAULT NULL,
  `ads_page` int(10) UNSIGNED DEFAULT NULL,
  `ads_group` int(10) UNSIGNED DEFAULT NULL,
  `ads_event` int(10) UNSIGNED DEFAULT NULL,
  `ads_placement` enum('newsfeed','sidebar') NOT NULL,
  `ads_image` varchar(256) NOT NULL,
  `ads_video` varchar(256) NOT NULL,
  `campaign_created_date` datetime NOT NULL,
  `campaign_is_active` enum('0','1') NOT NULL DEFAULT '1',
  `campaign_is_approved` enum('0','1') NOT NULL DEFAULT '0',
  `campaign_is_declined` enum('0','1') NOT NULL DEFAULT '0',
  `campaign_views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `campaign_clicks` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ads_system`
--

CREATE TABLE `ads_system` (
  `ads_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(256) NOT NULL,
  `place` varchar(32) NOT NULL,
  `ads_pages_ids` text DEFAULT NULL,
  `ads_groups_ids` text DEFAULT NULL,
  `code` mediumtext NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `affiliates_payments`
--

CREATE TABLE `affiliates_payments` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` varchar(32) NOT NULL,
  `method` varchar(64) NOT NULL,
  `method_value` text NOT NULL,
  `time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcement_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(256) NOT NULL,
  `title` varchar(256) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` mediumtext NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `announcements_users`
--

CREATE TABLE `announcements_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `announcement_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `auto_connect`
--

CREATE TABLE `auto_connect` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(32) NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `nodes_ids` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bank_transfers`
--

CREATE TABLE `bank_transfers` (
  `transfer_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `handle` varchar(32) NOT NULL,
  `package_id` int(10) UNSIGNED DEFAULT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `plan_id` int(10) UNSIGNED DEFAULT NULL,
  `movie_id` int(10) UNSIGNED DEFAULT NULL,
  `orders_collection_id` varchar(256) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `bank_receipt` varchar(256) NOT NULL,
  `time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
--

CREATE TABLE `blacklist` (
  `node_id` int(10) UNSIGNED NOT NULL,
  `node_type` enum('ip','email','username') NOT NULL,
  `node_value` varchar(64) NOT NULL,
  `created_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `blogs_categories`
--

CREATE TABLE `blogs_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_parent_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(256) NOT NULL,
  `category_description` text NOT NULL,
  `category_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `blogs_categories`
--

INSERT INTO `blogs_categories` (`category_id`, `category_parent_id`, `category_name`, `category_description`, `category_order`) VALUES
(1, 0, 'Art', '', 1),
(2, 0, 'Causes', '', 2),
(3, 0, 'Crafts', '', 3),
(4, 0, 'Dance', '', 4),
(5, 0, 'Drinks', '', 5),
(6, 0, 'Film', '', 6),
(7, 0, 'Fitness', '', 7),
(8, 0, 'Food', '', 8),
(9, 0, 'Games', '', 9),
(10, 0, 'Gardening', '', 10),
(11, 0, 'Health', '', 11),
(12, 0, 'Home', '', 12),
(13, 0, 'Literature', '', 13),
(14, 0, 'Music', '', 14),
(15, 0, 'Networking', '', 15),
(16, 0, 'Other', '', 16),
(17, 0, 'Party', '', 17),
(18, 0, 'Religion', '', 18),
(19, 0, 'Shopping', '', 19),
(20, 0, 'Sports', '', 20),
(21, 0, 'Theater', '', 21),
(22, 0, 'Wellness', '', 22);

-- --------------------------------------------------------

--
-- Table structure for table `coinpayments_transactions`
--

CREATE TABLE `coinpayments_transactions` (
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `transaction_txn_id` text DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` varchar(32) NOT NULL,
  `product` text NOT NULL,
  `created_at` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `status_message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `conversation_id` int(10) UNSIGNED NOT NULL,
  `last_message_id` int(10) UNSIGNED NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  `node_id` int(10) UNSIGNED DEFAULT NULL,
  `node_type` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`conversation_id`, `last_message_id`, `color`, `node_id`, `node_type`) VALUES
(2, 78, NULL, NULL, NULL),
(3, 31, NULL, NULL, NULL),
(4, 59, NULL, NULL, NULL),
(5, 30, NULL, NULL, NULL),
(6, 76, NULL, NULL, NULL),
(7, 77, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `conversations_calls`
--

CREATE TABLE `conversations_calls` (
  `call_id` int(10) UNSIGNED NOT NULL,
  `is_video_call` enum('0','1') NOT NULL DEFAULT '0',
  `from_user_id` int(10) UNSIGNED NOT NULL,
  `from_user_token` mediumtext NOT NULL,
  `to_user_id` int(10) UNSIGNED NOT NULL,
  `to_user_token` mediumtext NOT NULL,
  `room` varchar(64) NOT NULL,
  `answered` enum('0','1') NOT NULL DEFAULT '0',
  `declined` enum('0','1') NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `conversations_messages`
--

CREATE TABLE `conversations_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `conversation_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `image` varchar(256) NOT NULL,
  `video` varchar(256) NOT NULL,
  `voice_note` varchar(256) NOT NULL,
  `product_post_id` int(10) UNSIGNED DEFAULT NULL,
  `reaction_like_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_love_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_haha_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_yay_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_wow_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_sad_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_angry_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `conversations_messages`
--

INSERT INTO `conversations_messages` (`message_id`, `conversation_id`, `user_id`, `message`, `image`, `video`, `voice_note`, `product_post_id`, `reaction_like_count`, `reaction_love_count`, `reaction_haha_count`, `reaction_yay_count`, `reaction_wow_count`, `reaction_sad_count`, `reaction_angry_count`, `time`) VALUES
(8, 2, 2, 'Wendi love ', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 05:38:33'),
(9, 2, 2, 'I&#039;ll get back', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 05:44:12'),
(10, 2, 2, 'Nina byenkyaatereza', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 05:44:23'),
(11, 3, 2, 'Hello my bro', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 05:51:46'),
(12, 3, 7, 'How are you bro ', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 05:54:11'),
(13, 3, 2, 'Am so well my broda...', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 05:54:50'),
(14, 3, 2, 'Esaawa yonna, mbawa app', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 05:55:00'),
(15, 3, 7, 'Ekyo kilungi I was telling it to my friends nga Bangamba biba Simbi sumbuwa oku okumala okugenda ku google ', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 05:58:51'),
(16, 3, 2, 'Tebafaayo ndeeta both android and iphone', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 05:59:42'),
(17, 3, 2, 'Bajja kwekwaasa bilala', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 05:59:50'),
(18, 3, 2, '😂', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:00:00'),
(19, 3, 7, 'Kituufu era ojya kubalaba tukoleko ne group ', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:01:54'),
(20, 3, 2, 'Am so happy for you my bro', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:02:44'),
(21, 3, 2, 'You&#039;re so supportive', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:02:52'),
(22, 3, 2, 'I&#039;ll get a day tugendeko ku lunch', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:03:07'),
(23, 3, 7, 'Insha Allah bro \nWe don&rsquo;t need much just support thats all ', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:04:06'),
(24, 4, 2, 'Ohhh coach wange, thank you for supporting a brother', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:04:43'),
(25, 4, 2, 'Nkwagala nnyo taata', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:04:55'),
(26, 4, 2, 'Apart from football, bino byenkola taata, am a software developer omukuukutivu ssebo', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:05:26'),
(27, 4, 2, 'Am so happy you&#039;re here', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:05:39'),
(28, 4, 2, 'Enjoy yourself', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:05:46'),
(29, 3, 2, 'Amen my brother', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:06:21'),
(30, 5, 2, 'Nina gwendaba atusazeeko wanoooooo', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:07:55'),
(31, 3, 7, 'Alright ', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:07:56'),
(32, 4, 10, 'ok nange mbadde awo nensula nenkulaba kwekujoyininga echo chiruunji nnyo academy ojirabye yeeyo eya happy street sc the spanaz ', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:10:22'),
(33, 4, 10, 'under 15 ne under 17', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:10:52'),
(34, 4, 10, 'twaabadeyo ne tournament naye baatukubidde ku final ', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:11:52'),
(35, 4, 2, 'Academy njilabye... nengamba ate bano nga jersey njimanyi naye face sizitegeera', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:11:57'),
(36, 4, 2, 'Ssebo nemidaali balina', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:12:03'),
(37, 4, 2, 'I can help you... okukufunilayo international academy sponsors coach wange', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:12:37'),
(38, 4, 2, 'I know how to write good proposals for academies...', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:13:01'),
(39, 4, 10, 'eyo ye 17', 'photos/2026/05/kiptalk_3eea2a286575fa1d4fe84e3972e6f9e2.jpg', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:13:14'),
(40, 4, 2, 'Just gwe olina kubeera na work ... photos and videos nga nabaana obalina anytime', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:13:30'),
(41, 4, 2, 'The sponsors come on ground and visit your academy', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:13:46'),
(42, 4, 2, 'Sometimes even recruit most talented ones nebabakugulako', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:14:10'),
(43, 4, 10, 'bannange neyanziza nnyo echo ngeenda kuchikola kuchikolako echeebifaananyi', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:15:14'),
(44, 4, 2, 'Yes, onaabera ddi ku Kasaawe, nzije tuwayeemu... nja kukolelayo ne website ya academy ya bwerere', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:16:07'),
(45, 4, 10, 'ok bro njakuchikolako videos n photos', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:16:19'),
(46, 4, 10, 'leero wooba osobola tusobola okusiinga okusisinkana netwoogera', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:17:28'),
(47, 4, 10, 'Kuba leero tulimukuwummula mpaka Monday okuddamu training ', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:18:15'),
(48, 4, 2, 'Yes, I know good sponsors from Sweden and Denmark... Nja kuyitilako e Kabowa at 4pm but ngeenda kukikukolelako... tewelalikilira nakamu', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:18:36'),
(49, 4, 10, 'oba leero singa chisoboka neentuza meeting nga wooli nabaana oba obalabeko mbakwaanjulire', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:20:30'),
(50, 4, 2, 'Onaabela nabo today? Mbasaangewa... I did that same thing for Big Talent Soccer academy of Kenzo... Ssebo kati abaana baabwe abamu baababagulako e Bulaaya', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:22:06'),
(51, 4, 10, 'at that time I call them 4pm we meet obeeko nechoobagaamba obeeyanjulire', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:22:29'),
(52, 4, 10, 'kukasaawe ka kapet kabowa', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:23:04'),
(53, 4, 2, 'Kale coach, which side??? Kabowa C/U oba??', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:23:04'),
(54, 4, 10, '', '', '', 'sounds/2026/05/kiptalk_74312a4dbf62404b275473710fe18a84.wav', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:25:29'),
(55, 4, 2, '', '', '', 'sounds/2026/05/kiptalk_e742f82c877c26d02827c528d425a562.wav', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:27:41'),
(56, 4, 10, 'yes keeko', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:28:09'),
(57, 4, 2, 'Kale coach, see you at 4pm', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:28:20'),
(58, 4, 10, '', '', '', 'sounds/2026/05/kiptalk_536a536b6b95797d63ce4739ffabc7a7.wav', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:30:41'),
(59, 4, 2, '', '', '', 'sounds/2026/05/kiptalk_f8f69a57fcbaba393dfd56bfde2e3c33.wav', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 06:35:19'),
(60, 2, 2, 'Bby wange ', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 09:03:42'),
(61, 6, 2, 'Welcome aboard my brother, thank you for developing with KipTalk , we  don&#039;t take you for granted ', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 09:09:54'),
(62, 6, 13, 'You welcome brother I had to walk with you in this\n', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 09:16:13'),
(63, 6, 2, 'Amen and the mobile application is right out in a few... are you using an android or iPhone?', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 09:19:01'),
(64, 6, 13, 'I use iPhone ', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 09:20:26'),
(65, 6, 13, 'I have searched for the application on Apple store but it&rsquo;s not there', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 09:21:08'),
(66, 6, 2, 'Ohh yes, your app is out soon, android is already out. .Do you use chrome or safari to access us ?', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 09:21:36'),
(67, 6, 13, 'Am using safari ', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 09:22:21'),
(68, 6, 2, 'Ohh if you can trying logging in with chrome and I direct you how to have a quick iPhone Screen app for KipTalk ', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 09:23:56'),
(69, 6, 13, 'I have many followers en I think I gave this platform  50people ', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 09:24:36'),
(70, 6, 2, '', '', '', 'sounds/2026/05/kiptalk_1632cc5b50107da3794b6d68d2a934ef.wav', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 09:29:13'),
(71, 6, 13, '', '', '', 'sounds/2026/05/kiptalk_8d29db55e3e7026b107980d8e74a5413.wav', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 09:34:57'),
(72, 6, 2, 'Thank you so much my bro ', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 09:36:31'),
(73, 6, 13, 'U welcome', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 09:39:53'),
(74, 6, 13, 'Am gonna give ue 100 followers ', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 09:40:17'),
(75, 6, 2, '🙏🙏❤️', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 10:05:35'),
(76, 6, 13, '🫡', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 10:21:33'),
(77, 7, 2, 'Welcome aboard my brother 🙏 ❤️', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-09 21:50:40'),
(78, 2, 2, 'Bby wange ', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2026-05-10 06:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `conversations_messages_reactions`
--

CREATE TABLE `conversations_messages_reactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reaction` varchar(32) NOT NULL DEFAULT 'like',
  `reaction_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `conversations_users`
--

CREATE TABLE `conversations_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `conversation_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `seen` enum('0','1') NOT NULL DEFAULT '0',
  `typing` enum('0','1') NOT NULL DEFAULT '0',
  `deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `conversations_users`
--

INSERT INTO `conversations_users` (`id`, `conversation_id`, `user_id`, `seen`, `typing`, `deleted`) VALUES
(3, 2, 2, '1', '0', '0'),
(4, 2, 3, '0', '0', '0'),
(5, 3, 2, '1', '0', '0'),
(6, 3, 7, '1', '0', '0'),
(7, 4, 2, '1', '0', '0'),
(8, 4, 10, '0', '0', '0'),
(9, 5, 2, '1', '0', '0'),
(10, 5, 9, '0', '0', '0'),
(11, 6, 2, '0', '0', '0'),
(12, 6, 13, '1', '0', '0'),
(13, 7, 2, '1', '0', '0'),
(14, 7, 24, '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `courses_categories`
--

CREATE TABLE `courses_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_parent_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(256) NOT NULL,
  `category_description` text NOT NULL,
  `category_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `courses_categories`
--

INSERT INTO `courses_categories` (`category_id`, `category_parent_id`, `category_name`, `category_description`, `category_order`) VALUES
(1, 0, 'Admin &amp; Office', '', 1),
(2, 0, 'Art &amp; Design', '', 2),
(3, 0, 'Business Operations', '', 3),
(4, 0, 'Cleaning &amp; Facilities', '', 4),
(5, 0, 'Community &amp; Social Services', '', 5),
(6, 0, 'Computer &amp; Data', '', 6),
(7, 0, 'Construction &amp; Mining', '', 7),
(8, 0, 'Education', '', 8),
(9, 0, 'Farming &amp; Forestry', '', 9),
(10, 0, 'Healthcare', '', 10),
(11, 0, 'Installation, Maintenance &amp; Repair', '', 11),
(12, 0, 'Legal', '', 12),
(13, 0, 'Management', '', 13),
(14, 0, 'Manufacturing', '', 14),
(15, 0, 'Media &amp; Communication', '', 15),
(16, 0, 'Personal Care', '', 16),
(17, 0, 'Protective Services', '', 17),
(18, 0, 'Restaurant &amp; Hospitality', '', 18),
(19, 0, 'Retail &amp; Sales', '', 19),
(20, 0, 'Science &amp; Engineering', '', 20),
(21, 0, 'Sports &amp; Entertainment', '', 21),
(22, 0, 'Transportation', '', 22),
(23, 0, 'Other', '', 23);

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `field_for` varchar(64) NOT NULL,
  `type` varchar(32) NOT NULL,
  `select_options` mediumtext NOT NULL,
  `label` varchar(256) NOT NULL,
  `description` mediumtext NOT NULL,
  `place` varchar(32) NOT NULL,
  `length` int(11) NOT NULL DEFAULT 32,
  `field_order` int(11) NOT NULL DEFAULT 1,
  `is_link` enum('0','1') NOT NULL DEFAULT '0',
  `mandatory` enum('0','1') NOT NULL DEFAULT '0',
  `in_registration` enum('0','1') NOT NULL DEFAULT '0',
  `in_profile` enum('0','1') NOT NULL DEFAULT '0',
  `in_search` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields_values`
--

CREATE TABLE `custom_fields_values` (
  `value_id` int(10) UNSIGNED NOT NULL,
  `value` mediumtext NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  `node_type` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `developers_apps`
--

CREATE TABLE `developers_apps` (
  `app_id` int(10) UNSIGNED NOT NULL,
  `app_user_id` int(10) UNSIGNED NOT NULL,
  `app_category_id` int(10) UNSIGNED NOT NULL,
  `app_auth_id` varchar(128) NOT NULL,
  `app_auth_secret` varchar(128) NOT NULL,
  `app_name` varchar(256) NOT NULL,
  `app_domain` varchar(256) NOT NULL,
  `app_redirect_url` varchar(256) NOT NULL,
  `app_description` mediumtext NOT NULL,
  `app_icon` varchar(256) NOT NULL,
  `app_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `developers_apps_categories`
--

CREATE TABLE `developers_apps_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_parent_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(256) NOT NULL,
  `category_description` text NOT NULL,
  `category_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `developers_apps_categories`
--

INSERT INTO `developers_apps_categories` (`category_id`, `category_parent_id`, `category_name`, `category_description`, `category_order`) VALUES
(1, 0, 'Business and Pages', '', 1),
(2, 0, 'Community &amp; Government', '', 2),
(3, 0, 'Education', '', 3),
(4, 0, 'Entertainment', '', 4),
(5, 0, 'Entertainment', '', 5),
(6, 0, 'Games', '', 6),
(7, 0, 'Lifestyle', '', 7),
(8, 0, 'Messaging', '', 8),
(9, 0, 'News', '', 9),
(10, 0, 'Shopping', '', 10),
(11, 0, 'Social Networks &amp; Dating', '', 11),
(12, 0, 'Utility &amp; Productivity', '', 12);

-- --------------------------------------------------------

--
-- Table structure for table `developers_apps_users`
--

CREATE TABLE `developers_apps_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `auth_key` varchar(128) NOT NULL,
  `access_token` varchar(128) DEFAULT NULL,
  `access_token_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `emojis`
--

CREATE TABLE `emojis` (
  `emoji_id` int(10) UNSIGNED NOT NULL,
  `unicode_char` varchar(256) NOT NULL,
  `class` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `emojis`
--

INSERT INTO `emojis` (`emoji_id`, `unicode_char`, `class`) VALUES
(1, '😀', 'grinning-face'),
(2, '😃', 'grinning-face-with-big-eyes'),
(3, '😄', 'grinning-face-with-smiling-eyes'),
(4, '😁', 'beaming-face-with-smiling-eyes'),
(5, '😆', 'grinning-squinting-face'),
(6, '😅', 'grinning-face-with-sweat'),
(7, '🤣', 'rolling-on-the-floor-laughing'),
(8, '😂', 'face-with-tears-of-joy'),
(9, '🙂', 'slightly-smiling-face'),
(10, '🙃', 'upside-down-face'),
(11, '😉', 'winking-face'),
(12, '😊', 'smiling-face-with-smiling-eyes'),
(13, '😇', 'smiling-face-with-halo'),
(14, '🥰', 'smiling-face-with-hearts'),
(15, '😍', 'smiling-face-with-heart-eyes'),
(16, '🤩', 'star-struck'),
(17, '😘', 'face-blowing-a-kiss'),
(18, '😗', 'kissing-face'),
(19, '☺️', 'smiling-face'),
(20, '😚', 'kissing-face-with-closed-eyes'),
(21, '😙', 'kissing-face-with-smiling-eyes'),
(22, '🥲', 'smiling-face-with-tear'),
(23, '😋', 'face-savoring-food'),
(24, '😛', 'face-with-tongue'),
(25, '😜', 'winking-face-with-tongue'),
(26, '🤪', 'zany-face'),
(27, '😝', 'squinting-face-with-tongue'),
(28, '🤑', 'money-mouth-face'),
(29, '🤗', 'hugging-face'),
(30, '🤭', 'face-with-hand-over-mouth'),
(31, '🤫', 'shushing-face'),
(32, '🤔', 'thinking-face'),
(33, '🤐', 'zipper-mouth-face'),
(34, '🤨', 'face-with-raised-eyebrow'),
(35, '😐', 'neutral-face'),
(36, '😑', 'expressionless-face'),
(37, '😶', 'face-without-mouth'),
(39, '😏', 'smirking-face'),
(40, '😒', 'unamused-face'),
(41, '🙄', 'face-with-rolling-eyes'),
(42, '😬', 'grimacing-face'),
(44, '🤥', 'lying-face'),
(45, '😌', 'relieved-face'),
(46, '😔', 'pensive-face'),
(47, '😪', 'sleepy-face'),
(48, '🤤', 'drooling-face'),
(49, '😴', 'sleeping-face'),
(50, '😷', 'face-with-medical-mask'),
(51, '🤒', 'face-with-thermometer'),
(52, '🤕', 'face-with-head-bandage'),
(53, '🤢', 'nauseated-face'),
(54, '🤮', 'face-vomiting'),
(55, '🤧', 'sneezing-face'),
(56, '🥵', 'hot-face'),
(57, '🥶', 'cold-face'),
(58, '🥴', 'woozy-face'),
(59, '😵', 'knocked-out-face'),
(61, '🤯', 'exploding-head'),
(62, '🤠', 'cowboy-hat-face'),
(63, '🥳', 'partying-face'),
(64, '🥸', 'disguised-face'),
(65, '😎', 'smiling-face-with-sunglasses'),
(66, '🤓', 'nerd-face'),
(67, '🧐', 'face-with-monocle'),
(68, '😕', 'confused-face'),
(69, '😟', 'worried-face'),
(70, '🙁', 'slightly-frowning-face'),
(71, '☹️', 'frowning-face'),
(72, '😮', 'face-with-open-mouth'),
(73, '😯', 'hushed-face'),
(74, '😲', 'astonished-face'),
(75, '😳', 'flushed-face'),
(76, '🥺', 'pleading-face'),
(77, '😦', 'frowning-face-with-open-mouth'),
(78, '😧', 'anguished-face'),
(79, '😨', 'fearful-face'),
(80, '😰', 'anxious-face-with-sweat'),
(81, '😥', 'sad-but-relieved-face'),
(82, '😢', 'crying-face'),
(83, '😭', 'loudly-crying-face'),
(84, '😱', 'face-screaming-in-fear'),
(85, '😖', 'confounded-face'),
(86, '😣', 'persevering-face'),
(87, '😞', 'disappointed-face'),
(88, '😓', 'downcast-face-with-sweat'),
(89, '😩', 'weary-face'),
(90, '😫', 'tired-face'),
(91, '🥱', 'yawning-face'),
(92, '😤', 'face-with-steam-from-nose'),
(93, '😡', 'pouting-face'),
(94, '😠', 'angry-face'),
(95, '🤬', 'face-with-symbols-on-mouth'),
(96, '😈', 'smiling-face-with-horns'),
(97, '👿', 'angry-face-with-horns'),
(98, '💀', 'skull'),
(99, '☠️', 'skull-and-crossbones'),
(100, '💩', 'pile-of-poo'),
(101, '🤡', 'clown-face'),
(102, '👹', 'ogre'),
(103, '👺', 'goblin'),
(104, '👻', 'ghost'),
(105, '👽', 'alien'),
(106, '👾', 'alien-monster'),
(107, '🤖', 'robot'),
(108, '😺', 'grinning-cat'),
(109, '😸', 'grinning-cat-with-smiling-eyes'),
(110, '😹', 'cat-with-tears-of-joy'),
(111, '😻', 'smiling-cat-with-heart-eyes'),
(112, '😼', 'cat-with-wry-smile'),
(113, '😽', 'kissing-cat'),
(114, '🙀', 'weary-cat'),
(115, '😿', 'crying-cat'),
(116, '😾', 'pouting-cat'),
(117, '🙈', 'see-no-evil-monkey'),
(118, '🙉', 'hear-no-evil-monkey'),
(119, '🙊', 'speak-no-evil-monkey'),
(120, '💋', 'kiss-mark'),
(121, '💌', 'love-letter'),
(122, '💘', 'heart-with-arrow'),
(123, '💝', 'heart-with-ribbon'),
(124, '💖', 'sparkling-heart'),
(125, '💗', 'growing-heart'),
(126, '💓', 'beating-heart'),
(127, '💞', 'revolving-hearts'),
(128, '💕', 'two-hearts'),
(129, '💟', 'heart-decoration'),
(130, '❣️', 'heart-exclamation'),
(131, '💔', 'broken-heart'),
(132, '❤️‍🔥', 'heart-on-fire'),
(133, '❤️‍🩹', 'mending-heart'),
(134, '❤️', 'red-heart'),
(135, '🧡', 'orange-heart'),
(136, '💛', 'yellow-heart'),
(137, '💚', 'green-heart'),
(138, '💙', 'blue-heart'),
(139, '💜', 'purple-heart'),
(140, '🤎', 'brown-heart'),
(141, '🖤', 'black-heart'),
(142, '🤍', 'white-heart'),
(143, '💯', 'hundred-points'),
(144, '💢', 'anger-symbol'),
(145, '💥', 'collision'),
(146, '💫', 'dizzy'),
(147, '💦', 'sweat-droplets'),
(148, '💨', 'dashing-away'),
(149, '🕳️', 'hole'),
(150, '💣', 'bomb'),
(151, '💬', 'speech-balloon'),
(153, '🗨️', 'left-speech-bubble'),
(154, '🗯️', 'right-anger-bubble'),
(155, '💭', 'thought-balloon'),
(156, '💤', 'zzz'),
(157, '👋', 'waving-hand'),
(158, '🤚', 'raised-back-of-hand'),
(159, '🖐️', 'hand-with-fingers-splayed'),
(160, '✋', 'raised-hand'),
(161, '🖖', 'vulcan-salute'),
(162, '👌', 'ok-hand'),
(163, '🤌', 'pinched-fingers'),
(164, '🤏', 'pinching-hand'),
(165, '✌️', 'victory-hand'),
(166, '🤞', 'crossed-fingers'),
(167, '🤟', 'love-you-gesture'),
(168, '🤘', 'sign-of-the-horns'),
(169, '🤙', 'call-me-hand'),
(170, '👈', 'backhand-index-pointing-left'),
(171, '👉', 'backhand-index-pointing-right'),
(172, '👆', 'backhand-index-pointing-up'),
(173, '🖕', 'middle-finger'),
(174, '👇', 'backhand-index-pointing-down'),
(175, '☝️', 'index-pointing-up'),
(176, '👍', 'thumbs-up'),
(177, '👎', 'thumbs-down'),
(178, '✊', 'raised-fist'),
(179, '👊', 'oncoming-fist'),
(180, '🤛', 'left-facing-fist'),
(181, '🤜', 'right-facing-fist'),
(182, '👏', 'clapping-hands'),
(183, '🙌', 'raising-hands'),
(184, '👐', 'open-hands'),
(185, '🤲', 'palms-up-together'),
(186, '🤝', 'handshake'),
(187, '🙏', 'folded-hands'),
(188, '✍️', 'writing-hand'),
(189, '💅', 'nail-polish'),
(190, '🤳', 'selfie'),
(191, '💪', 'flexed-biceps'),
(192, '🦾', 'mechanical-arm'),
(193, '🦿', 'mechanical-leg'),
(194, '🦵', 'leg'),
(195, '🦶', 'foot'),
(196, '👂', 'ear'),
(197, '🦻', 'ear-with-hearing-aid'),
(198, '👃', 'nose'),
(199, '🧠', 'brain'),
(200, '🫀', 'anatomical-heart'),
(201, '🫁', 'lungs'),
(202, '🦷', 'tooth'),
(203, '🦴', 'bone'),
(204, '👀', 'eyes'),
(205, '👁️', 'eye'),
(206, '👅', 'tongue'),
(207, '👄', 'mouth'),
(208, '👶', 'baby'),
(209, '🧒', 'child'),
(210, '👦', 'boy'),
(211, '👧', 'girl'),
(212, '🧑', 'person'),
(213, '👱', 'person-blond-hair'),
(214, '👨', 'man'),
(215, '🧔', 'person-beard'),
(216, '🧔‍♂️', 'man-beard'),
(217, '🧔‍♀️', 'woman-beard'),
(218, '👨‍🦰', 'man-red-hair'),
(219, '👨‍🦱', 'man-curly-hair'),
(220, '👨‍🦳', 'man-white-hair'),
(221, '👨‍🦲', 'man-bald'),
(222, '👩', 'woman'),
(223, '👩‍🦰', 'woman-red-hair'),
(224, '🧑‍🦰', 'person-red-hair'),
(225, '👩‍🦱', 'woman-curly-hair'),
(226, '🧑‍🦱', 'person-curly-hair'),
(227, '👩‍🦳', 'woman-white-hair'),
(228, '🧑‍🦳', 'person-white-hair'),
(229, '👩‍🦲', 'woman-bald'),
(230, '🧑‍🦲', 'person-bald'),
(231, '👱‍♀️', 'woman-blond-hair'),
(232, '👱‍♂️', 'man-blond-hair'),
(233, '🧓', 'older-person'),
(234, '👴', 'old-man'),
(235, '👵', 'old-woman'),
(236, '🙍', 'person-frowning'),
(237, '🙍‍♂️', 'man-frowning'),
(238, '🙍‍♀️', 'woman-frowning'),
(239, '🙎', 'person-pouting'),
(240, '🙎‍♂️', 'man-pouting'),
(241, '🙎‍♀️', 'woman-pouting'),
(242, '🙅', 'person-gesturing-no'),
(243, '🙅‍♂️', 'man-gesturing-no'),
(244, '🙅‍♀️', 'woman-gesturing-no'),
(245, '🙆', 'person-gesturing-ok'),
(246, '🙆‍♂️', 'man-gesturing-ok'),
(247, '🙆‍♀️', 'woman-gesturing-ok'),
(248, '💁', 'person-tipping-hand'),
(249, '💁‍♂️', 'man-tipping-hand'),
(250, '💁‍♀️', 'woman-tipping-hand'),
(251, '🙋', 'person-raising-hand'),
(252, '🙋‍♂️', 'man-raising-hand'),
(253, '🙋‍♀️', 'woman-raising-hand'),
(254, '🧏', 'deaf-person'),
(255, '🧏‍♂️', 'deaf-man'),
(256, '🧏‍♀️', 'deaf-woman'),
(257, '🙇', 'person-bowing'),
(258, '🙇‍♂️', 'man-bowing'),
(259, '🙇‍♀️', 'woman-bowing'),
(260, '🤦', 'person-facepalming'),
(261, '🤦‍♂️', 'man-facepalming'),
(262, '🤦‍♀️', 'woman-facepalming'),
(263, '🤷', 'person-shrugging'),
(264, '🤷‍♂️', 'man-shrugging'),
(265, '🤷‍♀️', 'woman-shrugging'),
(266, '🧑‍⚕️', 'health-worker'),
(267, '👨‍⚕️', 'man-health-worker'),
(268, '👩‍⚕️', 'woman-health-worker'),
(269, '🧑‍🎓', 'student'),
(270, '👨‍🎓', 'man-student'),
(271, '👩‍🎓', 'woman-student'),
(272, '🧑‍🏫', 'teacher'),
(273, '👨‍🏫', 'man-teacher'),
(274, '👩‍🏫', 'woman-teacher'),
(275, '🧑‍⚖️', 'judge'),
(276, '👨‍⚖️', 'man-judge'),
(277, '👩‍⚖️', 'woman-judge'),
(278, '🧑‍🌾', 'farmer'),
(279, '👨‍🌾', 'man-farmer'),
(280, '👩‍🌾', 'woman-farmer'),
(281, '🧑‍🍳', 'cook'),
(282, '👨‍🍳', 'man-cook'),
(283, '👩‍🍳', 'woman-cook'),
(284, '🧑‍🔧', 'mechanic'),
(285, '👨‍🔧', 'man-mechanic'),
(286, '👩‍🔧', 'woman-mechanic'),
(287, '🧑‍🏭', 'factory-worker'),
(288, '👨‍🏭', 'man-factory-worker'),
(289, '👩‍🏭', 'woman-factory-worker'),
(290, '🧑‍💼', 'office-worker'),
(291, '👨‍💼', 'man-office-worker'),
(292, '👩‍💼', 'woman-office-worker'),
(293, '🧑‍🔬', 'scientist'),
(294, '👨‍🔬', 'man-scientist'),
(295, '👩‍🔬', 'woman-scientist'),
(296, '🧑‍💻', 'technologist'),
(297, '👨‍💻', 'man-technologist'),
(298, '👩‍💻', 'woman-technologist'),
(299, '🧑‍🎤', 'singer'),
(300, '👨‍🎤', 'man-singer'),
(301, '👩‍🎤', 'woman-singer'),
(302, '🧑‍🎨', 'artist'),
(303, '👨‍🎨', 'man-artist'),
(304, '👩‍🎨', 'woman-artist'),
(305, '🧑‍✈️', 'pilot'),
(306, '👨‍✈️', 'man-pilot'),
(307, '👩‍✈️', 'woman-pilot'),
(308, '🧑‍🚀', 'astronaut'),
(309, '👨‍🚀', 'man-astronaut'),
(310, '👩‍🚀', 'woman-astronaut'),
(311, '🧑‍🚒', 'firefighter'),
(312, '👨‍🚒', 'man-firefighter'),
(313, '👩‍🚒', 'woman-firefighter'),
(314, '👮', 'police-officer'),
(315, '👮‍♂️', 'man-police-officer'),
(316, '👮‍♀️', 'woman-police-officer'),
(317, '🕵️', 'detective'),
(318, '🕵️‍♂️', 'man-detective'),
(319, '🕵️‍♀️', 'woman-detective'),
(320, '💂', 'guard'),
(321, '💂‍♂️', 'man-guard'),
(322, '💂‍♀️', 'woman-guard'),
(323, '🥷', 'ninja'),
(324, '👷', 'construction-worker'),
(325, '👷‍♂️', 'man-construction-worker'),
(326, '👷‍♀️', 'woman-construction-worker'),
(327, '🤴', 'prince'),
(328, '👸', 'princess'),
(329, '👳', 'person-wearing-turban'),
(330, '👳‍♂️', 'man-wearing-turban'),
(331, '👳‍♀️', 'woman-wearing-turban'),
(332, '👲', 'person-with-skullcap'),
(333, '🧕', 'woman-with-headscarf'),
(334, '🤵', 'person-in-tuxedo'),
(335, '🤵‍♂️', 'man-in-tuxedo'),
(336, '🤵‍♀️', 'woman-in-tuxedo'),
(337, '👰', 'person-with-veil'),
(338, '👰‍♂️', 'man-with-veil'),
(339, '👰‍♀️', 'woman-with-veil'),
(340, '🤰', 'pregnant-woman'),
(341, '🤱', 'breast-feeding'),
(342, '👩‍🍼', 'woman-feeding-baby'),
(343, '👨‍🍼', 'man-feeding-baby'),
(344, '🧑‍🍼', 'person-feeding-baby'),
(345, '👼', 'baby-angel'),
(346, '🎅', 'santa-claus'),
(348, '🧑‍🎄', 'mx-claus'),
(349, '🦸', 'superhero'),
(350, '🦸‍♂️', 'man-superhero'),
(351, '🦸‍♀️', 'woman-superhero'),
(352, '🦹', 'supervillain'),
(353, '🦹‍♂️', 'man-supervillain'),
(354, '🦹‍♀️', 'woman-supervillain'),
(355, '🧙', 'mage'),
(356, '🧙‍♂️', 'man-mage'),
(357, '🧙‍♀️', 'woman-mage'),
(358, '🧚', 'fairy'),
(359, '🧚‍♂️', 'man-fairy'),
(360, '🧚‍♀️', 'woman-fairy'),
(361, '🧛', 'vampire'),
(362, '🧛‍♂️', 'man-vampire'),
(363, '🧛‍♀️', 'woman-vampire'),
(364, '🧜', 'merperson'),
(365, '🧜‍♂️', 'merman'),
(366, '🧜‍♀️', 'mermaid'),
(367, '🧝', 'elf'),
(368, '🧝‍♂️', 'man-elf'),
(369, '🧝‍♀️', 'woman-elf'),
(370, '🧞', 'genie'),
(371, '🧞‍♂️', 'man-genie'),
(372, '🧞‍♀️', 'woman-genie'),
(373, '🧟', 'zombie'),
(374, '🧟‍♂️', 'man-zombie'),
(375, '🧟‍♀️', 'woman-zombie'),
(376, '💆', 'person-getting-massage'),
(377, '💆‍♂️', 'man-getting-massage'),
(378, '💆‍♀️', 'woman-getting-massage'),
(379, '💇', 'person-getting-haircut'),
(380, '💇‍♂️', 'man-getting-haircut'),
(381, '💇‍♀️', 'woman-getting-haircut'),
(382, '🚶', 'person-walking'),
(383, '🚶‍♂️', 'man-walking'),
(384, '🚶‍♀️', 'woman-walking'),
(385, '🧍', 'person-standing'),
(386, '🧍‍♂️', 'man-standing'),
(387, '🧍‍♀️', 'woman-standing'),
(388, '🧎', 'person-kneeling'),
(389, '🧎‍♂️', 'man-kneeling'),
(390, '🧎‍♀️', 'woman-kneeling'),
(391, '🧑‍🦯', 'person-with-white-cane'),
(392, '👨‍🦯', 'man-with-white-cane'),
(393, '👩‍🦯', 'woman-with-white-cane'),
(394, '🧑‍🦼', 'person-in-motorized-wheelchair'),
(395, '👨‍🦼', 'man-in-motorized-wheelchair'),
(396, '👩‍🦼', 'woman-in-motorized-wheelchair'),
(397, '🧑‍🦽', 'person-in-manual-wheelchair'),
(398, '👨‍🦽', 'man-in-manual-wheelchair'),
(399, '👩‍🦽', 'woman-in-manual-wheelchair'),
(400, '🏃', 'person-running'),
(401, '🏃‍♂️', 'man-running'),
(402, '🏃‍♀️', 'woman-running'),
(403, '💃', 'woman-dancing'),
(404, '🕺', 'man-dancing'),
(405, '🕴️', 'person-in-suit-levitating'),
(406, '👯', 'people-with-bunny-ears'),
(407, '👯‍♂️', 'men-with-bunny-ears'),
(408, '👯‍♀️', 'women-with-bunny-ears'),
(409, '🧖', 'person-in-steamy-room'),
(410, '🧖‍♂️', 'man-in-steamy-room'),
(411, '🧖‍♀️', 'woman-in-steamy-room'),
(412, '🧗', 'person-climbing'),
(413, '🧗‍♂️', 'man-climbing'),
(414, '🧗‍♀️', 'woman-climbing'),
(415, '🤺', 'person-fencing'),
(416, '🏇', 'horse-racing'),
(417, '⛷️', 'skier'),
(418, '🏂', 'snowboarder'),
(419, '🏌️', 'person-golfing'),
(420, '🏌️‍♂️', 'man-golfing'),
(421, '🏌️‍♀️', 'woman-golfing'),
(422, '🏄', 'person-surfing'),
(423, '🏄‍♂️', 'man-surfing'),
(424, '🏄‍♀️', 'woman-surfing'),
(425, '🚣', 'person-rowing-boat'),
(426, '🚣‍♂️', 'man-rowing-boat'),
(427, '🚣‍♀️', 'woman-rowing-boat'),
(428, '🏊', 'person-swimming'),
(429, '🏊‍♂️', 'man-swimming'),
(430, '🏊‍♀️', 'woman-swimming'),
(431, '⛹️', 'person-bouncing-ball'),
(432, '⛹️‍♂️', 'man-bouncing-ball'),
(433, '⛹️‍♀️', 'woman-bouncing-ball'),
(434, '🏋️', 'person-lifting-weights'),
(435, '🏋️‍♂️', 'man-lifting-weights'),
(436, '🏋️‍♀️', 'woman-lifting-weights'),
(437, '🚴', 'person-biking'),
(438, '🚴‍♂️', 'man-biking'),
(439, '🚴‍♀️', 'woman-biking'),
(440, '🚵', 'person-mountain-biking'),
(441, '🚵‍♂️', 'man-mountain-biking'),
(442, '🚵‍♀️', 'woman-mountain-biking'),
(443, '🤸', 'person-cartwheeling'),
(444, '🤸‍♂️', 'man-cartwheeling'),
(445, '🤸‍♀️', 'woman-cartwheeling'),
(446, '🤼', 'people-wrestling'),
(447, '🤼‍♂️', 'men-wrestling'),
(448, '🤼‍♀️', 'women-wrestling'),
(449, '🤽', 'person-playing-water-polo'),
(450, '🤽‍♂️', 'man-playing-water-polo'),
(451, '🤽‍♀️', 'woman-playing-water-polo'),
(452, '🤾', 'person-playing-handball'),
(453, '🤾‍♂️', 'man-playing-handball'),
(454, '🤾‍♀️', 'woman-playing-handball'),
(455, '🤹', 'person-juggling'),
(456, '🤹‍♂️', 'man-juggling'),
(457, '🤹‍♀️', 'woman-juggling'),
(458, '🧘', 'person-in-lotus-position'),
(459, '🧘‍♂️', 'man-in-lotus-position'),
(460, '🧘‍♀️', 'woman-in-lotus-position'),
(461, '🛀', 'person-taking-bath'),
(462, '🛌', 'person-in-bed'),
(463, '🧑‍🤝‍🧑', 'people-holding-hands'),
(464, '👭', 'women-holding-hands'),
(465, '👫', 'woman-and-man-holding-hands'),
(466, '👬', 'men-holding-hands'),
(467, '💏', 'kiss'),
(468, '👩‍❤️‍💋‍👨', 'kiss-woman-man'),
(469, '👨‍❤️‍💋‍👨', 'kiss-man-man'),
(470, '👩‍❤️‍💋‍👩', 'kiss-woman-woman'),
(471, '💑', 'couple-with-heart'),
(472, '👩‍❤️‍👨', 'couple-with-heart-woman-man'),
(473, '👨‍❤️‍👨', 'couple-with-heart-man-man'),
(474, '👩‍❤️‍👩', 'couple-with-heart-woman-woman'),
(475, '👪', 'family'),
(476, '👨‍👩‍👦', 'family-man-woman-boy'),
(477, '👨‍👩‍👧', 'family-man-woman-girl'),
(478, '👨‍👩‍👧‍👦', 'family-man-woman-girl-boy'),
(479, '👨‍👩‍👦‍👦', 'family-man-woman-boy-boy'),
(480, '👨‍👩‍👧‍👧', 'family-man-woman-girl-girl'),
(481, '👨‍👨‍👦', 'family-man-man-boy'),
(482, '👨‍👨‍👧', 'family-man-man-girl'),
(483, '👨‍👨‍👧‍👦', 'family-man-man-girl-boy'),
(484, '👨‍👨‍👦‍👦', 'family-man-man-boy-boy'),
(485, '👨‍👨‍👧‍👧', 'family-man-man-girl-girl'),
(486, '👩‍👩‍👦', 'family-woman-woman-boy'),
(487, '👩‍👩‍👧', 'family-woman-woman-girl'),
(488, '👩‍👩‍👧‍👦', 'family-woman-woman-girl-boy'),
(489, '👩‍👩‍👦‍👦', 'family-woman-woman-boy-boy'),
(490, '👩‍👩‍👧‍👧', 'family-woman-woman-girl-girl'),
(491, '👨‍👦', 'family-man-boy'),
(492, '👨‍👦‍👦', 'family-man-boy-boy'),
(493, '👨‍👧', 'family-man-girl'),
(494, '👨‍👧‍👦', 'family-man-girl-boy'),
(495, '👨‍👧‍👧', 'family-man-girl-girl'),
(496, '👩‍👦', 'family-woman-boy'),
(497, '👩‍👦‍👦', 'family-woman-boy-boy'),
(498, '👩‍👧', 'family-woman-girl'),
(499, '👩‍👧‍👦', 'family-woman-girl-boy'),
(500, '👩‍👧‍👧', 'family-woman-girl-girl'),
(501, '🗣️', 'speaking-head'),
(502, '👤', 'bust-in-silhouette'),
(503, '👥', 'busts-in-silhouette'),
(504, '🫂', 'people-hugging'),
(505, '👣', 'footprints'),
(506, '🦰', 'red-hair'),
(507, '🦱', 'curly-hair'),
(508, '🦳', 'white-hair'),
(509, '🦲', 'bald'),
(510, '🐵', 'monkey-face'),
(511, '🐒', 'monkey'),
(512, '🦍', 'gorilla'),
(513, '🦧', 'orangutan'),
(514, '🐶', 'dog-face'),
(515, '🐕', 'dog'),
(516, '🦮', 'guide-dog'),
(517, '🐕‍🦺', 'service-dog'),
(518, '🐩', 'poodle'),
(519, '🐺', 'wolf'),
(520, '🦊', 'fox'),
(521, '🦝', 'raccoon'),
(522, '🐱', 'cat-face'),
(523, '🐈', 'cat'),
(524, '🐈‍⬛', 'black-cat'),
(525, '🦁', 'lion'),
(526, '🐯', 'tiger-face'),
(527, '🐅', 'tiger'),
(528, '🐆', 'leopard'),
(529, '🐴', 'horse-face'),
(530, '🐎', 'horse'),
(531, '🦄', 'unicorn'),
(532, '🦓', 'zebra'),
(533, '🦌', 'deer'),
(534, '🦬', 'bison'),
(535, '🐮', 'cow-face'),
(536, '🐂', 'ox'),
(537, '🐃', 'water-buffalo'),
(538, '🐄', 'cow'),
(539, '🐷', 'pig-face'),
(540, '🐖', 'pig'),
(541, '🐗', 'boar'),
(542, '🐽', 'pig-nose'),
(543, '🐏', 'ram'),
(544, '🐑', 'ewe'),
(545, '🐐', 'goat'),
(546, '🐪', 'camel'),
(547, '🐫', 'two-hump-camel'),
(548, '🦙', 'llama'),
(549, '🦒', 'giraffe'),
(550, '🐘', 'elephant'),
(551, '🦣', 'mammoth'),
(552, '🦏', 'rhinoceros'),
(553, '🦛', 'hippopotamus'),
(554, '🐭', 'mouse-face'),
(555, '🐁', 'mouse'),
(556, '🐀', 'rat'),
(557, '🐹', 'hamster'),
(558, '🐰', 'rabbit-face'),
(559, '🐇', 'rabbit'),
(560, '🐿️', 'chipmunk'),
(561, '🦫', 'beaver'),
(562, '🦔', 'hedgehog'),
(563, '🦇', 'bat'),
(564, '🐻', 'bear'),
(565, '🐻‍❄️', 'polar-bear'),
(566, '🐨', 'koala'),
(567, '🐼', 'panda'),
(568, '🦥', 'sloth'),
(569, '🦦', 'otter'),
(570, '🦨', 'skunk'),
(571, '🦘', 'kangaroo'),
(572, '🦡', 'badger'),
(573, '🐾', 'paw-prints'),
(574, '🦃', 'turkey'),
(575, '🐔', 'chicken'),
(576, '🐓', 'rooster'),
(577, '🐣', 'hatching-chick'),
(578, '🐤', 'baby-chick'),
(579, '🐥', 'front-facing-baby-chick'),
(580, '🐦', 'bird'),
(581, '🐧', 'penguin'),
(582, '🕊️', 'dove'),
(583, '🦅', 'eagle'),
(584, '🦆', 'duck'),
(585, '🦢', 'swan'),
(586, '🦉', 'owl'),
(587, '🦤', 'dodo'),
(588, '🪶', 'feather'),
(589, '🦩', 'flamingo'),
(590, '🦚', 'peacock'),
(591, '🦜', 'parrot'),
(592, '🐸', 'frog'),
(593, '🐊', 'crocodile'),
(594, '🐢', 'turtle'),
(595, '🦎', 'lizard'),
(596, '🐍', 'snake'),
(597, '🐲', 'dragon-face'),
(598, '🐉', 'dragon'),
(599, '🦕', 'sauropod'),
(600, '🦖', 't-rex'),
(601, '🐳', 'spouting-whale'),
(602, '🐋', 'whale'),
(603, '🐬', 'dolphin'),
(604, '🦭', 'seal'),
(605, '🐟', 'fish'),
(606, '🐠', 'tropical-fish'),
(607, '🐡', 'blowfish'),
(608, '🦈', 'shark'),
(609, '🐙', 'octopus'),
(610, '🐚', 'spiral-shell'),
(611, '🐌', 'snail'),
(612, '🦋', 'butterfly'),
(613, '🐛', 'bug'),
(614, '🐜', 'ant'),
(615, '🐝', 'honeybee'),
(616, '🪲', 'beetle'),
(617, '🐞', 'lady-beetle'),
(618, '🦗', 'cricket'),
(619, '🪳', 'cockroach'),
(620, '🕷️', 'spider'),
(621, '🕸️', 'spider-web'),
(622, '🦂', 'scorpion'),
(623, '🦟', 'mosquito'),
(624, '🪰', 'fly'),
(625, '🪱', 'worm'),
(626, '🦠', 'microbe'),
(627, '💐', 'bouquet'),
(628, '🌸', 'cherry-blossom'),
(629, '💮', 'white-flower'),
(630, '🏵️', 'rosette'),
(631, '🌹', 'rose'),
(632, '🥀', 'wilted-flower'),
(633, '🌺', 'hibiscus'),
(634, '🌻', 'sunflower'),
(635, '🌼', 'blossom'),
(636, '🌷', 'tulip'),
(637, '🌱', 'seedling'),
(638, '🪴', 'potted-plant'),
(639, '🌲', 'evergreen-tree'),
(640, '🌳', 'deciduous-tree'),
(641, '🌴', 'palm-tree'),
(642, '🌵', 'cactus'),
(643, '🌾', 'sheaf-of-rice'),
(644, '🌿', 'herb'),
(645, '☘️', 'shamrock'),
(646, '🍀', 'four-leaf-clover'),
(647, '🍁', 'maple-leaf'),
(648, '🍂', 'fallen-leaf'),
(649, '🍃', 'leaf-fluttering-in-wind'),
(650, '🍇', 'grapes'),
(651, '🍈', 'melon'),
(652, '🍉', 'watermelon'),
(653, '🍊', 'tangerine'),
(654, '🍋', 'lemon'),
(655, '🍌', 'banana'),
(656, '🍍', 'pineapple'),
(657, '🥭', 'mango'),
(658, '🍎', 'red-apple'),
(659, '🍏', 'green-apple'),
(660, '🍐', 'pear'),
(661, '🍑', 'peach'),
(662, '🍒', 'cherries'),
(663, '🍓', 'strawberry'),
(664, '🫐', 'blueberries'),
(665, '🥝', 'kiwi-fruit'),
(666, '🍅', 'tomato'),
(667, '🫒', 'olive'),
(668, '🥥', 'coconut'),
(669, '🥑', 'avocado'),
(670, '🍆', 'eggplant'),
(671, '🥔', 'potato'),
(672, '🥕', 'carrot'),
(673, '🌽', 'ear-of-corn'),
(674, '🌶️', 'hot-pepper'),
(675, '🫑', 'bell-pepper'),
(676, '🥒', 'cucumber'),
(677, '🥬', 'leafy-green'),
(678, '🥦', 'broccoli'),
(679, '🧄', 'garlic'),
(680, '🧅', 'onion'),
(681, '🍄', 'mushroom'),
(682, '🥜', 'peanuts'),
(683, '🌰', 'chestnut'),
(684, '🍞', 'bread'),
(685, '🥐', 'croissant'),
(686, '🥖', 'baguette-bread'),
(687, '🫓', 'flatbread'),
(688, '🥨', 'pretzel'),
(689, '🥯', 'bagel'),
(690, '🥞', 'pancakes'),
(691, '🧇', 'waffle'),
(692, '🧀', 'cheese-wedge'),
(693, '🍖', 'meat-on-bone'),
(694, '🍗', 'poultry-leg'),
(695, '🥩', 'cut-of-meat'),
(696, '🥓', 'bacon'),
(697, '🍔', 'hamburger'),
(698, '🍟', 'french-fries'),
(699, '🍕', 'pizza'),
(700, '🌭', 'hot-dog'),
(701, '🥪', 'sandwich'),
(702, '🌮', 'taco'),
(703, '🌯', 'burrito'),
(704, '🫔', 'tamale'),
(705, '🥙', 'stuffed-flatbread'),
(706, '🧆', 'falafel'),
(707, '🥚', 'egg'),
(708, '🍳', 'cooking'),
(709, '🥘', 'shallow-pan-of-food'),
(710, '🍲', 'pot-of-food'),
(711, '🫕', 'fondue'),
(712, '🥣', 'bowl-with-spoon'),
(713, '🥗', 'green-salad'),
(714, '🍿', 'popcorn'),
(715, '🧈', 'butter'),
(716, '🧂', 'salt'),
(717, '🥫', 'canned-food'),
(718, '🍱', 'bento-box'),
(719, '🍘', 'rice-cracker'),
(720, '🍙', 'rice-ball'),
(721, '🍚', 'cooked-rice'),
(722, '🍛', 'curry-rice'),
(723, '🍜', 'steaming-bowl'),
(724, '🍝', 'spaghetti'),
(725, '🍠', 'roasted-sweet-potato'),
(726, '🍢', 'oden'),
(727, '🍣', 'sushi'),
(728, '🍤', 'fried-shrimp'),
(729, '🍥', 'fish-cake-with-swirl'),
(730, '🥮', 'moon-cake'),
(731, '🍡', 'dango'),
(732, '🥟', 'dumpling'),
(733, '🥠', 'fortune-cookie'),
(734, '🥡', 'takeout-box'),
(735, '🦀', 'crab'),
(736, '🦞', 'lobster'),
(737, '🦐', 'shrimp'),
(738, '🦑', 'squid'),
(739, '🦪', 'oyster'),
(740, '🍦', 'soft-ice-cream'),
(741, '🍧', 'shaved-ice'),
(742, '🍨', 'ice-cream'),
(743, '🍩', 'doughnut'),
(744, '🍪', 'cookie'),
(745, '🎂', 'birthday-cake'),
(746, '🍰', 'shortcake'),
(747, '🧁', 'cupcake'),
(748, '🥧', 'pie'),
(749, '🍫', 'chocolate-bar'),
(750, '🍬', 'candy'),
(751, '🍭', 'lollipop'),
(752, '🍮', 'custard'),
(753, '🍯', 'honey-pot'),
(754, '🍼', 'baby-bottle'),
(755, '🥛', 'glass-of-milk'),
(756, '☕', 'hot-beverage'),
(757, '🫖', 'teapot'),
(758, '🍵', 'teacup-without-handle'),
(759, '🍶', 'sake'),
(760, '🍾', 'bottle-with-popping-cork'),
(761, '🍷', 'wine-glass'),
(762, '🍸', 'cocktail-glass'),
(763, '🍹', 'tropical-drink'),
(764, '🍺', 'beer-mug'),
(765, '🍻', 'clinking-beer-mugs'),
(766, '🥂', 'clinking-glasses'),
(767, '🥃', 'tumbler-glass'),
(768, '🥤', 'cup-with-straw'),
(769, '🧋', 'bubble-tea'),
(770, '🧃', 'beverage-box'),
(771, '🧉', 'mate'),
(772, '🧊', 'ice'),
(773, '🥢', 'chopsticks'),
(774, '🍽️', 'fork-and-knife-with-plate'),
(775, '🍴', 'fork-and-knife'),
(776, '🥄', 'spoon'),
(777, '🔪', 'kitchen-knife'),
(778, '🏺', 'amphora'),
(779, '🌍', 'globe-showing-europe-africa'),
(780, '🌎', 'globe-showing-americas'),
(781, '🌏', 'globe-showing-asia-australia'),
(782, '🌐', 'globe-with-meridians'),
(783, '🗺️', 'world-map'),
(784, '🗾', 'map-of-japan'),
(785, '🧭', 'compass'),
(786, '🏔️', 'snow-capped-mountain'),
(787, '⛰️', 'mountain'),
(788, '🌋', 'volcano'),
(789, '🗻', 'mount-fuji'),
(790, '🏕️', 'camping'),
(791, '🏖️', 'beach-with-umbrella'),
(792, '🏜️', 'desert'),
(793, '🏝️', 'desert-island'),
(794, '🏞️', 'national-park'),
(795, '🏟️', 'stadium'),
(796, '🏛️', 'classical-building'),
(797, '🏗️', 'building-construction'),
(798, '🧱', 'brick'),
(799, '🪨', 'rock'),
(800, '🪵', 'wood'),
(801, '🛖', 'hut'),
(802, '🏘️', 'houses'),
(803, '🏚️', 'derelict-house'),
(804, '🏠', 'house'),
(805, '🏡', 'house-with-garden'),
(806, '🏢', 'office-building'),
(807, '🏣', 'japanese-post-office'),
(808, '🏤', 'post-office'),
(809, '🏥', 'hospital'),
(810, '🏦', 'bank'),
(811, '🏨', 'hotel'),
(812, '🏩', 'love-hotel'),
(813, '🏪', 'convenience-store'),
(814, '🏫', 'school'),
(815, '🏬', 'department-store'),
(816, '🏭', 'factory'),
(817, '🏯', 'japanese-castle'),
(818, '🏰', 'castle'),
(819, '💒', 'wedding'),
(820, '🗼', 'tokyo-tower'),
(821, '🗽', 'statue-of-liberty'),
(822, '⛪', 'church'),
(823, '🕌', 'mosque'),
(824, '🛕', 'hindu-temple'),
(825, '🕍', 'synagogue'),
(826, '⛩️', 'shinto-shrine'),
(827, '🕋', 'kaaba'),
(828, '⛲', 'fountain'),
(829, '⛺', 'tent'),
(830, '🌁', 'foggy'),
(831, '🌃', 'night-with-stars'),
(832, '🏙️', 'cityscape'),
(833, '🌄', 'sunrise-over-mountains'),
(834, '🌅', 'sunrise'),
(835, '🌆', 'cityscape-at-dusk'),
(836, '🌇', 'sunset'),
(837, '🌉', 'bridge-at-night'),
(838, '♨️', 'hot-springs'),
(839, '🎠', 'carousel-horse'),
(840, '🎡', 'ferris-wheel'),
(841, '🎢', 'roller-coaster'),
(842, '💈', 'barber-pole'),
(843, '🎪', 'circus-tent'),
(844, '🚂', 'locomotive'),
(845, '🚃', 'railway-car'),
(846, '🚄', 'high-speed-train'),
(847, '🚅', 'bullet-train'),
(848, '🚆', 'train'),
(849, '🚇', 'metro'),
(850, '🚈', 'light-rail'),
(851, '🚉', 'station'),
(852, '🚊', 'tram'),
(853, '🚝', 'monorail'),
(854, '🚞', 'mountain-railway'),
(855, '🚋', 'tram-car'),
(856, '🚌', 'bus'),
(857, '🚍', 'oncoming-bus'),
(858, '🚎', 'trolleybus'),
(859, '🚐', 'minibus'),
(860, '🚑', 'ambulance'),
(861, '🚒', 'fire-engine'),
(862, '🚓', 'police-car'),
(863, '🚔', 'oncoming-police-car'),
(864, '🚕', 'taxi'),
(865, '🚖', 'oncoming-taxi'),
(866, '🚗', 'automobile'),
(867, '🚘', 'oncoming-automobile'),
(868, '🚙', 'sport-utility-vehicle'),
(869, '🛻', 'pickup-truck'),
(870, '🚚', 'delivery-truck'),
(871, '🚛', 'articulated-lorry'),
(872, '🚜', 'tractor'),
(873, '🏎️', 'racing-car'),
(874, '🏍️', 'motorcycle'),
(875, '🛵', 'motor-scooter'),
(876, '🦽', 'manual-wheelchair'),
(877, '🦼', 'motorized-wheelchair'),
(878, '🛺', 'auto-rickshaw'),
(879, '🚲', 'bicycle'),
(880, '🛴', 'kick-scooter'),
(881, '🛹', 'skateboard'),
(882, '🛼', 'roller-skate'),
(883, '🚏', 'bus-stop'),
(884, '🛣️', 'motorway'),
(885, '🛤️', 'railway-track'),
(886, '🛢️', 'oil-drum'),
(887, '⛽', 'fuel-pump'),
(888, '🚨', 'police-car-light'),
(889, '🚥', 'horizontal-traffic-light'),
(890, '🚦', 'vertical-traffic-light'),
(891, '🛑', 'stop-sign'),
(892, '🚧', 'construction'),
(893, '⚓', 'anchor'),
(894, '⛵', 'sailboat'),
(895, '🛶', 'canoe'),
(896, '🚤', 'speedboat'),
(897, '🛳️', 'passenger-ship'),
(898, '⛴️', 'ferry'),
(899, '🛥️', 'motor-boat'),
(900, '🚢', 'ship'),
(901, '✈️', 'airplane'),
(902, '🛩️', 'small-airplane'),
(903, '🛫', 'airplane-departure'),
(904, '🛬', 'airplane-arrival'),
(905, '🪂', 'parachute'),
(906, '💺', 'seat'),
(907, '🚁', 'helicopter'),
(908, '🚟', 'suspension-railway'),
(909, '🚠', 'mountain-cableway'),
(910, '🚡', 'aerial-tramway'),
(911, '🛰️', 'satellite'),
(912, '🚀', 'rocket'),
(913, '🛸', 'flying-saucer'),
(914, '🛎️', 'bellhop-bell'),
(915, '🧳', 'luggage'),
(916, '⌛', 'hourglass-done'),
(917, '⏳', 'hourglass-not-done'),
(918, '⌚', 'watch'),
(919, '⏰', 'alarm-clock'),
(920, '⏱️', 'stopwatch'),
(921, '⏲️', 'timer-clock'),
(922, '🕰️', 'mantelpiece-clock'),
(923, '🕛', 'twelve-o-clock'),
(924, '🕧', 'twelve-thirty'),
(925, '🕐', 'one-o-clock'),
(926, '🕜', 'one-thirty'),
(927, '🕑', 'two-o-clock'),
(928, '🕝', 'two-thirty'),
(929, '🕒', 'three-o-clock'),
(930, '🕞', 'three-thirty'),
(931, '🕓', 'four-o-clock'),
(932, '🕟', 'four-thirty'),
(933, '🕔', 'five-o-clock'),
(934, '🕠', 'five-thirty'),
(935, '🕕', 'six-o-clock'),
(936, '🕡', 'six-thirty'),
(937, '🕖', 'seven-o-clock'),
(938, '🕢', 'seven-thirty'),
(939, '🕗', 'eight-o-clock'),
(940, '🕣', 'eight-thirty'),
(941, '🕘', 'nine-o-clock'),
(942, '🕤', 'nine-thirty'),
(943, '🕙', 'ten-o-clock'),
(944, '🕥', 'ten-thirty'),
(945, '🕚', 'eleven-o-clock'),
(946, '🕦', 'eleven-thirty'),
(947, '🌑', 'new-moon'),
(948, '🌒', 'waxing-crescent-moon'),
(949, '🌓', 'first-quarter-moon'),
(950, '🌔', 'waxing-gibbous-moon'),
(951, '🌕', 'full-moon'),
(952, '🌖', 'waning-gibbous-moon'),
(953, '🌗', 'last-quarter-moon'),
(954, '🌘', 'waning-crescent-moon'),
(955, '🌙', 'crescent-moon'),
(956, '🌚', 'new-moon-face'),
(957, '🌛', 'first-quarter-moon-face'),
(958, '🌜', 'last-quarter-moon-face'),
(959, '🌡️', 'thermometer'),
(960, '☀️', 'sun'),
(961, '🌝', 'full-moon-face'),
(962, '🌞', 'sun-with-face'),
(963, '🪐', 'ringed-planet'),
(964, '⭐', 'star'),
(965, '🌟', 'glowing-star'),
(966, '🌠', 'shooting-star'),
(967, '🌌', 'milky-way'),
(968, '☁️', 'cloud'),
(969, '⛅', 'sun-behind-cloud'),
(970, '⛈️', 'cloud-with-lightning-and-rain'),
(971, '🌤️', 'sun-behind-small-cloud'),
(972, '🌥️', 'sun-behind-large-cloud'),
(973, '🌦️', 'sun-behind-rain-cloud'),
(974, '🌧️', 'cloud-with-rain'),
(975, '🌨️', 'cloud-with-snow'),
(976, '🌩️', 'cloud-with-lightning'),
(977, '🌪️', 'tornado'),
(978, '🌫️', 'fog'),
(979, '🌬️', 'wind-face'),
(980, '🌀', 'cyclone'),
(981, '🌈', 'rainbow'),
(982, '🌂', 'closed-umbrella'),
(983, '☂️', 'umbrella'),
(984, '☔', 'umbrella-with-rain-drops'),
(985, '⛱️', 'umbrella-on-ground'),
(986, '⚡', 'high-voltage'),
(987, '❄️', 'snowflake'),
(988, '☃️', 'snowman'),
(989, '⛄', 'snowman-without-snow'),
(990, '☄️', 'comet'),
(991, '🔥', 'fire'),
(992, '💧', 'droplet'),
(993, '🌊', 'water-wave'),
(994, '🎃', 'jack-o-lantern'),
(995, '🎄', 'christmas-tree'),
(996, '🎆', 'fireworks'),
(997, '🎇', 'sparkler'),
(998, '🧨', 'firecracker'),
(999, '✨', 'sparkles'),
(1000, '🎈', 'balloon'),
(1001, '🎉', 'party-popper'),
(1002, '🎊', 'confetti-ball'),
(1003, '🎋', 'tanabata-tree'),
(1004, '🎍', 'pine-decoration'),
(1005, '🎎', 'japanese-dolls'),
(1006, '🎏', 'carp-streamer'),
(1007, '🎐', 'wind-chime'),
(1008, '🎑', 'moon-viewing-ceremony'),
(1009, '🧧', 'red-envelope'),
(1010, '🎀', 'ribbon'),
(1011, '🎁', 'wrapped-gift'),
(1012, '🎗️', 'reminder-ribbon'),
(1013, '🎟️', 'admission-tickets'),
(1014, '🎫', 'ticket'),
(1015, '🎖️', 'military-medal'),
(1016, '🏆', 'trophy'),
(1017, '🏅', 'sports-medal'),
(1018, '🥇', '1st-place-medal'),
(1019, '🥈', '2nd-place-medal'),
(1020, '🥉', '3rd-place-medal'),
(1021, '⚽', 'soccer-ball'),
(1022, '⚾', 'baseball'),
(1023, '🥎', 'softball'),
(1024, '🏀', 'basketball'),
(1025, '🏐', 'volleyball'),
(1026, '🏈', 'american-football'),
(1027, '🏉', 'rugby-football'),
(1028, '🎾', 'tennis'),
(1029, '🥏', 'flying-disc'),
(1030, '🎳', 'bowling'),
(1031, '🏏', 'cricket-game'),
(1032, '🏑', 'field-hockey'),
(1033, '🏒', 'ice-hockey'),
(1034, '🥍', 'lacrosse'),
(1035, '🏓', 'ping-pong'),
(1036, '🏸', 'badminton'),
(1037, '🥊', 'boxing-glove'),
(1038, '🥋', 'martial-arts-uniform'),
(1039, '🥅', 'goal-net'),
(1040, '⛳', 'flag-in-hole'),
(1041, '⛸️', 'ice-skate'),
(1042, '🎣', 'fishing-pole'),
(1043, '🤿', 'diving-mask'),
(1044, '🎽', 'running-shirt'),
(1045, '🎿', 'skis'),
(1046, '🛷', 'sled'),
(1047, '🥌', 'curling-stone'),
(1048, '🎯', 'bullseye'),
(1049, '🪀', 'yo-yo'),
(1050, '🪁', 'kite'),
(1051, '🎱', 'pool-8-ball'),
(1052, '🔮', 'crystal-ball'),
(1053, '🪄', 'magic-wand'),
(1054, '🧿', 'nazar-amulet'),
(1055, '🎮', 'video-game'),
(1056, '🕹️', 'joystick'),
(1057, '🎰', 'slot-machine'),
(1058, '🎲', 'game-die'),
(1059, '🧩', 'puzzle-piece'),
(1060, '🧸', 'teddy-bear'),
(1062, '🪆', 'nesting-dolls'),
(1063, '♠️', 'spade-suit'),
(1064, '♥️', 'heart-suit'),
(1065, '♦️', 'diamond-suit'),
(1066, '♣️', 'club-suit'),
(1067, '♟️', 'chess-pawn'),
(1068, '🃏', 'joker'),
(1069, '🀄', 'mahjong-red-dragon'),
(1070, '🎴', 'flower-playing-cards'),
(1071, '🎭', 'performing-arts'),
(1072, '🖼️', 'framed-picture'),
(1073, '🎨', 'artist-palette'),
(1074, '🧵', 'thread'),
(1075, '🪡', 'sewing-needle'),
(1076, '🧶', 'yarn'),
(1077, '🪢', 'knot'),
(1078, '👓', 'glasses'),
(1079, '🕶️', 'sunglasses'),
(1080, '🥽', 'goggles'),
(1081, '🥼', 'lab-coat'),
(1082, '🦺', 'safety-vest'),
(1083, '👔', 'necktie'),
(1084, '👕', 't-shirt'),
(1085, '👖', 'jeans'),
(1086, '🧣', 'scarf'),
(1087, '🧤', 'gloves'),
(1088, '🧥', 'coat'),
(1089, '🧦', 'socks'),
(1090, '👗', 'dress'),
(1091, '👘', 'kimono'),
(1092, '🥻', 'sari'),
(1093, '🩱', 'one-piece-swimsuit'),
(1094, '🩲', 'briefs'),
(1095, '🩳', 'shorts'),
(1096, '👙', 'bikini'),
(1097, '👚', 'woman-s-clothes'),
(1098, '👛', 'purse'),
(1099, '👜', 'handbag'),
(1100, '👝', 'clutch-bag'),
(1101, '🛍️', 'shopping-bags'),
(1102, '🎒', 'backpack'),
(1103, '🩴', 'thong-sandal'),
(1104, '👞', 'man-s-shoe'),
(1105, '👟', 'running-shoe'),
(1106, '🥾', 'hiking-boot'),
(1107, '🥿', 'flat-shoe'),
(1108, '👠', 'high-heeled-shoe'),
(1109, '👡', 'woman-s-sandal'),
(1110, '🩰', 'ballet-shoes'),
(1111, '👢', 'woman-s-boot'),
(1112, '👑', 'crown'),
(1113, '👒', 'woman-s-hat'),
(1114, '🎩', 'top-hat'),
(1115, '🎓', 'graduation-cap'),
(1116, '🧢', 'billed-cap'),
(1117, '🪖', 'military-helmet'),
(1118, '⛑️', 'rescue-worker-s-helmet'),
(1119, '📿', 'prayer-beads'),
(1120, '💄', 'lipstick'),
(1121, '💍', 'ring'),
(1122, '💎', 'gem-stone'),
(1123, '🔇', 'muted-speaker'),
(1124, '🔈', 'speaker-low-volume'),
(1125, '🔉', 'speaker-medium-volume'),
(1126, '🔊', 'speaker-high-volume'),
(1127, '📢', 'loudspeaker'),
(1128, '📣', 'megaphone'),
(1129, '📯', 'postal-horn'),
(1130, '🔔', 'bell'),
(1131, '🔕', 'bell-with-slash'),
(1132, '🎼', 'musical-score'),
(1133, '🎵', 'musical-note'),
(1134, '🎶', 'musical-notes'),
(1135, '🎙️', 'studio-microphone'),
(1136, '🎚️', 'level-slider'),
(1137, '🎛️', 'control-knobs'),
(1138, '🎤', 'microphone'),
(1139, '🎧', 'headphone'),
(1140, '📻', 'radio'),
(1141, '🎷', 'saxophone'),
(1142, '🪗', 'accordion'),
(1143, '🎸', 'guitar'),
(1144, '🎹', 'musical-keyboard'),
(1145, '🎺', 'trumpet'),
(1146, '🎻', 'violin'),
(1147, '🪕', 'banjo'),
(1148, '🥁', 'drum'),
(1149, '🪘', 'long-drum'),
(1150, '📱', 'mobile-phone'),
(1151, '📲', 'mobile-phone-with-arrow'),
(1152, '☎️', 'telephone'),
(1153, '📞', 'telephone-receiver'),
(1154, '📟', 'pager'),
(1155, '📠', 'fax-machine'),
(1156, '🔋', 'battery'),
(1157, '🔌', 'electric-plug'),
(1158, '💻', 'laptop'),
(1159, '🖥️', 'desktop-computer'),
(1160, '🖨️', 'printer'),
(1161, '⌨️', 'keyboard'),
(1162, '🖱️', 'computer-mouse'),
(1163, '🖲️', 'trackball'),
(1164, '💽', 'computer-disk'),
(1165, '💾', 'floppy-disk'),
(1166, '💿', 'optical-disk'),
(1167, '📀', 'dvd'),
(1168, '🧮', 'abacus'),
(1169, '🎥', 'movie-camera'),
(1170, '🎞️', 'film-frames'),
(1171, '📽️', 'film-projector'),
(1172, '🎬', 'clapper-board'),
(1173, '📺', 'television'),
(1174, '📷', 'camera'),
(1175, '📸', 'camera-with-flash'),
(1176, '📹', 'video-camera'),
(1177, '📼', 'videocassette'),
(1178, '🔍', 'magnifying-glass-tilted-left'),
(1179, '🔎', 'magnifying-glass-tilted-right'),
(1180, '🕯️', 'candle'),
(1181, '💡', 'light-bulb'),
(1182, '🔦', 'flashlight'),
(1183, '🏮', 'red-paper-lantern'),
(1184, '🪔', 'diya-lamp'),
(1185, '📔', 'notebook-with-decorative-cover'),
(1186, '📕', 'closed-book'),
(1187, '📖', 'open-book'),
(1188, '📗', 'green-book'),
(1189, '📘', 'blue-book'),
(1190, '📙', 'orange-book'),
(1191, '📚', 'books'),
(1192, '📓', 'notebook'),
(1193, '📒', 'ledger'),
(1194, '📃', 'page-with-curl'),
(1195, '📜', 'scroll'),
(1196, '📄', 'page-facing-up'),
(1197, '📰', 'newspaper'),
(1198, '🗞️', 'rolled-up-newspaper'),
(1199, '📑', 'bookmark-tabs'),
(1200, '🔖', 'bookmark'),
(1201, '🏷️', 'label'),
(1202, '💰', 'money-bag'),
(1203, '🪙', 'coin'),
(1204, '💴', 'yen-banknote'),
(1205, '💵', 'dollar-banknote'),
(1206, '💶', 'euro-banknote'),
(1207, '💷', 'pound-banknote'),
(1208, '💸', 'money-with-wings'),
(1209, '💳', 'credit-card'),
(1210, '🧾', 'receipt'),
(1211, '💹', 'chart-increasing-with-yen'),
(1212, '✉️', 'envelope'),
(1213, '📧', 'e-mail'),
(1214, '📨', 'incoming-envelope'),
(1215, '📩', 'envelope-with-arrow'),
(1216, '📤', 'outbox-tray'),
(1217, '📥', 'inbox-tray'),
(1218, '📦', 'package'),
(1219, '📫', 'closed-mailbox-with-raised-flag'),
(1220, '📪', 'closed-mailbox-with-lowered-flag'),
(1221, '📬', 'open-mailbox-with-raised-flag'),
(1222, '📭', 'open-mailbox-with-lowered-flag'),
(1223, '📮', 'postbox'),
(1224, '🗳️', 'ballot-box-with-ballot'),
(1225, '✏️', 'pencil'),
(1226, '✒️', 'black-nib'),
(1227, '🖋️', 'fountain-pen'),
(1228, '🖊️', 'pen'),
(1229, '🖌️', 'paintbrush'),
(1230, '🖍️', 'crayon'),
(1231, '📝', 'memo'),
(1232, '💼', 'briefcase'),
(1233, '📁', 'file-folder'),
(1234, '📂', 'open-file-folder'),
(1235, '🗂️', 'card-index-dividers'),
(1236, '📅', 'calendar'),
(1237, '📆', 'tear-off-calendar'),
(1238, '🗒️', 'spiral-notepad'),
(1239, '🗓️', 'spiral-calendar'),
(1240, '📇', 'card-index'),
(1241, '📈', 'chart-increasing'),
(1242, '📉', 'chart-decreasing'),
(1243, '📊', 'bar-chart'),
(1244, '📋', 'clipboard'),
(1245, '📌', 'pushpin'),
(1246, '📍', 'round-pushpin'),
(1247, '📎', 'paperclip'),
(1248, '🖇️', 'linked-paperclips'),
(1249, '📏', 'straight-ruler'),
(1250, '📐', 'triangular-ruler'),
(1251, '✂️', 'scissors'),
(1252, '🗃️', 'card-file-box'),
(1253, '🗄️', 'file-cabinet'),
(1254, '🗑️', 'wastebasket'),
(1255, '🔒', 'locked'),
(1256, '🔓', 'unlocked'),
(1257, '🔏', 'locked-with-pen'),
(1258, '🔐', 'locked-with-key'),
(1259, '🔑', 'key'),
(1260, '🗝️', 'old-key'),
(1261, '🔨', 'hammer'),
(1262, '🪓', 'axe'),
(1263, '⛏️', 'pick'),
(1264, '⚒️', 'hammer-and-pick'),
(1265, '🛠️', 'hammer-and-wrench'),
(1266, '🗡️', 'dagger'),
(1267, '⚔️', 'crossed-swords'),
(1268, '🔫', 'water-pistol'),
(1269, '🪃', 'boomerang'),
(1270, '🏹', 'bow-and-arrow'),
(1271, '🛡️', 'shield'),
(1272, '🪚', 'carpentry-saw'),
(1273, '🔧', 'wrench'),
(1274, '🪛', 'screwdriver'),
(1275, '🔩', 'nut-and-bolt'),
(1276, '⚙️', 'gear'),
(1277, '🗜️', 'clamp'),
(1278, '⚖️', 'balance-scale'),
(1279, '🦯', 'white-cane'),
(1280, '🔗', 'link'),
(1281, '⛓️', 'chains'),
(1282, '🪝', 'hook'),
(1283, '🧰', 'toolbox'),
(1284, '🧲', 'magnet'),
(1285, '🪜', 'ladder'),
(1286, '⚗️', 'alembic'),
(1287, '🧪', 'test-tube'),
(1288, '🧫', 'petri-dish'),
(1289, '🧬', 'dna'),
(1290, '🔬', 'microscope'),
(1291, '🔭', 'telescope'),
(1292, '📡', 'satellite-antenna'),
(1293, '💉', 'syringe'),
(1294, '🩸', 'drop-of-blood'),
(1295, '💊', 'pill'),
(1296, '🩹', 'adhesive-bandage'),
(1297, '🩺', 'stethoscope'),
(1298, '🚪', 'door'),
(1299, '🛗', 'elevator'),
(1300, '🪞', 'mirror'),
(1301, '🪟', 'window'),
(1302, '🛏️', 'bed'),
(1303, '🛋️', 'couch-and-lamp'),
(1304, '🪑', 'chair'),
(1305, '🚽', 'toilet'),
(1306, '🪠', 'plunger'),
(1307, '🚿', 'shower'),
(1308, '🛁', 'bathtub'),
(1309, '🪤', 'mouse-trap'),
(1310, '🪒', 'razor'),
(1311, '🧴', 'lotion-bottle'),
(1312, '🧷', 'safety-pin'),
(1313, '🧹', 'broom'),
(1314, '🧺', 'basket'),
(1315, '🧻', 'roll-of-paper'),
(1316, '🪣', 'bucket'),
(1317, '🧼', 'soap'),
(1318, '🪥', 'toothbrush'),
(1319, '🧽', 'sponge'),
(1320, '🧯', 'fire-extinguisher'),
(1321, '🛒', 'shopping-cart'),
(1322, '🚬', 'cigarette'),
(1323, '⚰️', 'coffin'),
(1324, '🪦', 'headstone'),
(1325, '⚱️', 'funeral-urn'),
(1326, '🗿', 'moai'),
(1327, '🪧', 'placard'),
(1328, '🏧', 'atm-sign'),
(1329, '🚮', 'litter-in-bin-sign'),
(1330, '🚰', 'potable-water'),
(1331, '♿', 'wheelchair-symbol'),
(1332, '🚹', 'men-s-room'),
(1333, '🚺', 'women-s-room'),
(1334, '🚻', 'restroom'),
(1335, '🚼', 'baby-symbol'),
(1336, '🚾', 'water-closet'),
(1337, '🛂', 'passport-control'),
(1338, '🛃', 'customs'),
(1339, '🛄', 'baggage-claim'),
(1340, '🛅', 'left-luggage'),
(1341, '⚠️', 'warning'),
(1342, '🚸', 'children-crossing'),
(1343, '⛔', 'no-entry'),
(1344, '🚫', 'prohibited'),
(1345, '🚳', 'no-bicycles'),
(1346, '🚭', 'no-smoking'),
(1347, '🚯', 'no-littering'),
(1348, '🚱', 'non-potable-water'),
(1349, '🚷', 'no-pedestrians'),
(1350, '📵', 'no-mobile-phones'),
(1351, '🔞', 'no-one-under-eighteen'),
(1352, '☢️', 'radioactive'),
(1353, '☣️', 'biohazard'),
(1354, '⬆️', 'up-arrow'),
(1355, '↗️', 'up-right-arrow'),
(1356, '➡️', 'right-arrow'),
(1357, '↘️', 'down-right-arrow'),
(1358, '⬇️', 'down-arrow'),
(1359, '↙️', 'down-left-arrow'),
(1360, '⬅️', 'left-arrow'),
(1361, '↖️', 'up-left-arrow'),
(1362, '↕️', 'up-down-arrow'),
(1363, '↔️', 'left-right-arrow'),
(1364, '↩️', 'right-arrow-curving-left'),
(1365, '↪️', 'left-arrow-curving-right'),
(1366, '⤴️', 'right-arrow-curving-up'),
(1367, '⤵️', 'right-arrow-curving-down'),
(1368, '🔃', 'clockwise-vertical-arrows'),
(1369, '🔄', 'counterclockwise-arrows-button'),
(1370, '🔙', 'back-arrow'),
(1371, '🔚', 'end-arrow'),
(1372, '🔛', 'on-arrow'),
(1373, '🔜', 'soon-arrow'),
(1374, '🔝', 'top-arrow'),
(1375, '🛐', 'place-of-worship'),
(1376, '⚛️', 'atom-symbol'),
(1377, '🕉️', 'om'),
(1378, '✡️', 'star-of-david'),
(1379, '☸️', 'wheel-of-dharma'),
(1380, '☯️', 'yin-yang'),
(1381, '✝️', 'latin-cross'),
(1382, '☦️', 'orthodox-cross'),
(1383, '☪️', 'star-and-crescent'),
(1384, '☮️', 'peace-symbol'),
(1385, '🕎', 'menorah'),
(1386, '🔯', 'dotted-six-pointed-star'),
(1387, '♈', 'aries'),
(1388, '♉', 'taurus'),
(1389, '♊', 'gemini'),
(1390, '♋', 'cancer'),
(1391, '♌', 'leo'),
(1392, '♍', 'virgo'),
(1393, '♎', 'libra'),
(1394, '♏', 'scorpio'),
(1395, '♐', 'sagittarius'),
(1396, '♑', 'capricorn'),
(1397, '♒', 'aquarius'),
(1398, '♓', 'pisces'),
(1399, '⛎', 'ophiuchus'),
(1400, '🔀', 'shuffle-tracks-button'),
(1401, '🔁', 'repeat-button'),
(1402, '🔂', 'repeat-single-button'),
(1403, '▶️', 'play-button'),
(1404, '⏩', 'fast-forward-button'),
(1405, '⏭️', 'next-track-button'),
(1406, '⏯️', 'play-or-pause-button'),
(1407, '◀️', 'reverse-button'),
(1408, '⏪', 'fast-reverse-button'),
(1409, '⏮️', 'last-track-button'),
(1410, '🔼', 'upwards-button'),
(1411, '⏫', 'fast-up-button'),
(1412, '🔽', 'downwards-button'),
(1413, '⏬', 'fast-down-button'),
(1414, '⏸️', 'pause-button'),
(1415, '⏹️', 'stop-button'),
(1416, '⏺️', 'record-button'),
(1417, '⏏️', 'eject-button'),
(1418, '🎦', 'cinema'),
(1419, '🔅', 'dim-button'),
(1420, '🔆', 'bright-button'),
(1421, '📶', 'antenna-bars'),
(1422, '📳', 'vibration-mode'),
(1423, '📴', 'mobile-phone-off'),
(1424, '♀️', 'female-sign'),
(1425, '♂️', 'male-sign'),
(1426, '⚧️', 'transgender-symbol'),
(1427, '✖️', 'multiply'),
(1428, '➕', 'plus'),
(1429, '➖', 'minus'),
(1430, '➗', 'divide'),
(1431, '♾️', 'infinity'),
(1432, '‼️', 'double-exclamation-mark'),
(1433, '⁉️', 'exclamation-question-mark'),
(1434, '❓', 'red-question-mark'),
(1435, '❔', 'white-question-mark'),
(1436, '❕', 'white-exclamation-mark'),
(1437, '❗', 'red-exclamation-mark'),
(1438, '〰️', 'wavy-dash'),
(1439, '💱', 'currency-exchange'),
(1440, '💲', 'heavy-dollar-sign'),
(1441, '⚕️', 'medical-symbol'),
(1442, '♻️', 'recycling-symbol'),
(1443, '⚜️', 'fleur-de-lis'),
(1444, '🔱', 'trident-emblem'),
(1445, '📛', 'name-badge'),
(1446, '🔰', 'japanese-symbol-for-beginner'),
(1447, '⭕', 'hollow-red-circle'),
(1448, '✅', 'check-mark-button'),
(1449, '☑️', 'check-box-with-check'),
(1450, '✔️', 'check-mark'),
(1451, '❌', 'cross-mark'),
(1452, '❎', 'cross-mark-button'),
(1453, '➰', 'curly-loop'),
(1454, '➿', 'double-curly-loop'),
(1455, '〽️', 'part-alternation-mark'),
(1456, '✳️', 'eight-spoked-asterisk'),
(1457, '✴️', 'eight-pointed-star'),
(1458, '❇️', 'sparkle'),
(1459, '©️', 'copyright'),
(1460, '®️', 'registered'),
(1461, '™️', 'trade-mark'),
(1462, '0️⃣', 'keycap-0'),
(1463, '1️⃣', 'keycap-1'),
(1464, '2️⃣', 'keycap-2'),
(1465, '3️⃣', 'keycap-3'),
(1466, '4️⃣', 'keycap-4'),
(1467, '5️⃣', 'keycap-5'),
(1468, '6️⃣', 'keycap-6'),
(1469, '7️⃣', 'keycap-7'),
(1470, '8️⃣', 'keycap-8'),
(1471, '9️⃣', 'keycap-9'),
(1472, '🔟', 'keycap-10'),
(1473, '🔠', 'input-latin-uppercase'),
(1474, '🔡', 'input-latin-lowercase'),
(1475, '🔢', 'input-numbers'),
(1476, '🔣', 'input-symbols'),
(1477, '🔤', 'input-latin-letters'),
(1478, '🅰️', 'a-button-blood-type'),
(1479, '🆎', 'ab-button-blood-type'),
(1480, '🅱️', 'b-button-blood-type'),
(1481, '🆑', 'cl-button'),
(1482, '🆒', 'cool-button'),
(1483, '🆓', 'free-button'),
(1484, 'ℹ️', 'information'),
(1485, '🆔', 'id-button'),
(1486, 'Ⓜ️', 'circled-m'),
(1487, '🆕', 'new-button'),
(1488, '🆖', 'ng-button'),
(1489, '🅾️', 'o-button-blood-type'),
(1490, '🆗', 'ok-button'),
(1491, '🅿️', 'p-button'),
(1492, '🆘', 'sos-button'),
(1493, '🆙', 'up-button'),
(1494, '🆚', 'vs-button'),
(1495, '🈁', 'japanese-here-button'),
(1496, '🈂️', 'japanese-service-charge-button'),
(1497, '🈷️', 'japanese-monthly-amount-button'),
(1498, '🈶', 'japanese-not-free-of-charge-button'),
(1499, '🈯', 'japanese-reserved-button'),
(1500, '🉐', 'japanese-bargain-button'),
(1501, '🈹', 'japanese-discount-button'),
(1502, '🈚', 'japanese-free-of-charge-button'),
(1503, '🈲', 'japanese-prohibited-button'),
(1504, '🉑', 'japanese-acceptable-button'),
(1505, '🈸', 'japanese-application-button'),
(1506, '🈴', 'japanese-passing-grade-button'),
(1507, '🈳', 'japanese-vacancy-button'),
(1508, '㊗️', 'japanese-congratulations-button'),
(1509, '㊙️', 'japanese-secret-button'),
(1510, '🈺', 'japanese-open-for-business-button'),
(1511, '🈵', 'japanese-no-vacancy-button'),
(1512, '🔴', 'red-circle'),
(1513, '🟠', 'orange-circle'),
(1514, '🟡', 'yellow-circle'),
(1515, '🟢', 'green-circle'),
(1516, '🔵', 'blue-circle'),
(1517, '🟣', 'purple-circle'),
(1518, '🟤', 'brown-circle'),
(1519, '⚫', 'black-circle'),
(1520, '⚪', 'white-circle'),
(1521, '🟥', 'red-square'),
(1522, '🟧', 'orange-square'),
(1523, '🟨', 'yellow-square'),
(1524, '🟩', 'green-square'),
(1525, '🟦', 'blue-square'),
(1526, '🟪', 'purple-square'),
(1527, '🟫', 'brown-square'),
(1528, '⬛', 'black-large-square'),
(1529, '⬜', 'white-large-square'),
(1530, '◼️', 'black-medium-square'),
(1531, '◻️', 'white-medium-square'),
(1532, '◾', 'black-medium-small-square'),
(1533, '◽', 'white-medium-small-square'),
(1534, '▪️', 'black-small-square'),
(1535, '▫️', 'white-small-square'),
(1536, '🔶', 'large-orange-diamond'),
(1537, '🔷', 'large-blue-diamond'),
(1538, '🔸', 'small-orange-diamond'),
(1539, '🔹', 'small-blue-diamond'),
(1540, '🔺', 'red-triangle-pointed-up'),
(1541, '🔻', 'red-triangle-pointed-down'),
(1542, '💠', 'diamond-with-a-dot'),
(1543, '🔘', 'radio-button'),
(1544, '🔳', 'white-square-button'),
(1545, '🔲', 'black-square-button'),
(1546, '🏁', 'chequered-flag'),
(1547, '🚩', 'triangular-flag'),
(1548, '🎌', 'crossed-flags'),
(1549, '🏴', 'black-flag'),
(1550, '🏳️', 'white-flag'),
(1551, '🏳️‍🌈', 'rainbow-flag'),
(1552, '🏳️‍⚧️', 'transgender-flag'),
(1553, '🏴‍☠️', 'pirate-flag'),
(1554, '🇦🇨', 'flag-ascension-island'),
(1555, '🇦🇩', 'flag-andorra'),
(1556, '🇦🇪', 'flag-united-arab-emirates'),
(1557, '🇦🇫', 'flag-afghanistan'),
(1558, '🇦🇬', 'flag-antigua-barbuda'),
(1559, '🇦🇮', 'flag-anguilla'),
(1560, '🇦🇱', 'flag-albania'),
(1561, '🇦🇲', 'flag-armenia'),
(1562, '🇦🇴', 'flag-angola'),
(1563, '🇦🇶', 'flag-antarctica'),
(1564, '🇦🇷', 'flag-argentina'),
(1565, '🇦🇸', 'flag-american-samoa'),
(1566, '🇦🇹', 'flag-austria'),
(1567, '🇦🇺', 'flag-australia'),
(1568, '🇦🇼', 'flag-aruba'),
(1569, '🇦🇿', 'flag-azerbaijan'),
(1570, '🇧🇦', 'flag-bosnia-herzegovina'),
(1571, '🇧🇧', 'flag-barbados'),
(1572, '🇧🇩', 'flag-bangladesh'),
(1573, '🇧🇪', 'flag-belgium'),
(1574, '🇧🇫', 'flag-burkina-faso'),
(1575, '🇧🇬', 'flag-bulgaria'),
(1576, '🇧🇭', 'flag-bahrain'),
(1577, '🇧🇮', 'flag-burundi'),
(1578, '🇧🇯', 'flag-benin'),
(1579, '🇧🇲', 'flag-bermuda'),
(1580, '🇧🇳', 'flag-brunei'),
(1581, '🇧🇴', 'flag-bolivia'),
(1582, '🇧🇶', 'flag-caribbean-netherlands'),
(1583, '🇧🇷', 'flag-brazil'),
(1584, '🇧🇸', 'flag-bahamas'),
(1585, '🇧🇹', 'flag-bhutan'),
(1586, '🇧🇻', 'flag-bouvet-island'),
(1587, '🇧🇼', 'flag-botswana'),
(1588, '🇧🇾', 'flag-belarus'),
(1589, '🇧🇿', 'flag-belize'),
(1590, '🇨🇦', 'flag-canada'),
(1591, '🇨🇨', 'flag-cocos-keeling-islands'),
(1592, '🇨🇩', 'flag-congo-kinshasa'),
(1593, '🇨🇫', 'flag-central-african-republic'),
(1594, '🇨🇬', 'flag-congo-brazzaville'),
(1595, '🇨🇭', 'flag-switzerland'),
(1596, '🇨🇰', 'flag-cook-islands'),
(1597, '🇨🇱', 'flag-chile'),
(1598, '🇨🇲', 'flag-cameroon'),
(1599, '🇨🇳', 'flag-china'),
(1600, '🇨🇴', 'flag-colombia'),
(1601, '🇨🇵', 'flag-clipperton-island'),
(1602, '🇨🇷', 'flag-costa-rica'),
(1603, '🇨🇺', 'flag-cuba'),
(1604, '🇨🇻', 'flag-cape-verde'),
(1605, '🇨🇽', 'flag-christmas-island'),
(1606, '🇨🇾', 'flag-cyprus'),
(1607, '🇨🇿', 'flag-czechia'),
(1608, '🇩🇪', 'flag-germany'),
(1609, '🇩🇬', 'flag-diego-garcia'),
(1610, '🇩🇯', 'flag-djibouti'),
(1611, '🇩🇰', 'flag-denmark'),
(1612, '🇩🇲', 'flag-dominica'),
(1613, '🇩🇴', 'flag-dominican-republic'),
(1614, '🇩🇿', 'flag-algeria'),
(1615, '🇪🇦', 'flag-ceuta-melilla'),
(1616, '🇪🇨', 'flag-ecuador'),
(1617, '🇪🇪', 'flag-estonia'),
(1618, '🇪🇬', 'flag-egypt'),
(1619, '🇪🇭', 'flag-western-sahara'),
(1620, '🇪🇷', 'flag-eritrea'),
(1621, '🇪🇸', 'flag-spain'),
(1622, '🇪🇹', 'flag-ethiopia'),
(1623, '🇪🇺', 'flag-european-union'),
(1624, '🇫🇮', 'flag-finland'),
(1625, '🇫🇯', 'flag-fiji'),
(1626, '🇫🇰', 'flag-falkland-islands'),
(1627, '🇫🇲', 'flag-micronesia'),
(1628, '🇫🇴', 'flag-faroe-islands'),
(1629, '🇫🇷', 'flag-france'),
(1630, '🇬🇦', 'flag-gabon'),
(1631, '🇬🇧', 'flag-united-kingdom'),
(1632, '🇬🇩', 'flag-grenada'),
(1633, '🇬🇪', 'flag-georgia'),
(1634, '🇬🇫', 'flag-french-guiana'),
(1635, '🇬🇬', 'flag-guernsey'),
(1636, '🇬🇭', 'flag-ghana'),
(1637, '🇬🇮', 'flag-gibraltar'),
(1638, '🇬🇱', 'flag-greenland'),
(1639, '🇬🇲', 'flag-gambia'),
(1640, '🇬🇳', 'flag-guinea'),
(1641, '🇬🇵', 'flag-guadeloupe'),
(1642, '🇬🇶', 'flag-equatorial-guinea'),
(1643, '🇬🇷', 'flag-greece'),
(1644, '🇬🇸', 'flag-south-georgia-south-sandwich-islands'),
(1645, '🇬🇹', 'flag-guatemala'),
(1646, '🇬🇺', 'flag-guam'),
(1647, '🇬🇼', 'flag-guinea-bissau'),
(1648, '🇬🇾', 'flag-guyana'),
(1649, '🇭🇰', 'flag-hong-kong-sar-china'),
(1650, '🇭🇲', 'flag-heard-mcdonald-islands'),
(1651, '🇭🇳', 'flag-honduras'),
(1652, '🇭🇷', 'flag-croatia'),
(1653, '🇭🇹', 'flag-haiti'),
(1654, '🇭🇺', 'flag-hungary'),
(1655, '🇮🇨', 'flag-canary-islands'),
(1656, '🇮🇩', 'flag-indonesia'),
(1657, '🇮🇪', 'flag-ireland'),
(1658, '🇮🇱', 'flag-israel'),
(1659, '🇮🇲', 'flag-isle-of-man'),
(1660, '🇮🇳', 'flag-india'),
(1661, '🇮🇴', 'flag-british-indian-ocean-territory'),
(1662, '🇮🇶', 'flag-iraq'),
(1663, '🇮🇷', 'flag-iran'),
(1664, '🇮🇸', 'flag-iceland'),
(1665, '🇮🇹', 'flag-italy'),
(1666, '🇯🇪', 'flag-jersey'),
(1667, '🇯🇲', 'flag-jamaica'),
(1668, '🇯🇴', 'flag-jordan'),
(1669, '🇯🇵', 'flag-japan'),
(1670, '🇰🇪', 'flag-kenya'),
(1671, '🇰🇬', 'flag-kyrgyzstan'),
(1672, '🇰🇭', 'flag-cambodia'),
(1673, '🇰🇮', 'flag-kiribati'),
(1674, '🇰🇲', 'flag-comoros'),
(1675, '🇰🇵', 'flag-north-korea'),
(1676, '🇰🇷', 'flag-south-korea'),
(1677, '🇰🇼', 'flag-kuwait'),
(1678, '🇰🇾', 'flag-cayman-islands'),
(1679, '🇰🇿', 'flag-kazakhstan'),
(1680, '🇱🇦', 'flag-laos'),
(1681, '🇱🇧', 'flag-lebanon'),
(1682, '🇱🇮', 'flag-liechtenstein'),
(1683, '🇱🇰', 'flag-sri-lanka'),
(1684, '🇱🇷', 'flag-liberia'),
(1685, '🇱🇸', 'flag-lesotho'),
(1686, '🇱🇹', 'flag-lithuania'),
(1687, '🇱🇺', 'flag-luxembourg'),
(1688, '🇱🇻', 'flag-latvia'),
(1689, '🇱🇾', 'flag-libya'),
(1690, '🇲🇦', 'flag-morocco'),
(1691, '🇲🇨', 'flag-monaco'),
(1692, '🇲🇩', 'flag-moldova'),
(1693, '🇲🇪', 'flag-montenegro'),
(1694, '🇲🇬', 'flag-madagascar'),
(1695, '🇲🇭', 'flag-marshall-islands'),
(1696, '🇲🇰', 'flag-north-macedonia'),
(1697, '🇲🇱', 'flag-mali'),
(1698, '🇲🇲', 'flag-myanmar-burma'),
(1699, '🇲🇳', 'flag-mongolia'),
(1700, '🇲🇴', 'flag-macao-sar-china'),
(1701, '🇲🇵', 'flag-northern-mariana-islands'),
(1702, '🇲🇶', 'flag-martinique'),
(1703, '🇲🇷', 'flag-mauritania'),
(1704, '🇲🇸', 'flag-montserrat'),
(1705, '🇲🇹', 'flag-malta'),
(1706, '🇲🇺', 'flag-mauritius'),
(1707, '🇲🇻', 'flag-maldives'),
(1708, '🇲🇼', 'flag-malawi'),
(1709, '🇲🇽', 'flag-mexico'),
(1710, '🇲🇾', 'flag-malaysia'),
(1711, '🇲🇿', 'flag-mozambique'),
(1712, '🇳🇦', 'flag-namibia'),
(1713, '🇳🇨', 'flag-new-caledonia'),
(1714, '🇳🇪', 'flag-niger'),
(1715, '🇳🇫', 'flag-norfolk-island'),
(1716, '🇳🇬', 'flag-nigeria'),
(1717, '🇳🇮', 'flag-nicaragua'),
(1718, '🇳🇱', 'flag-netherlands'),
(1719, '🇳🇴', 'flag-norway'),
(1720, '🇳🇵', 'flag-nepal'),
(1721, '🇳🇷', 'flag-nauru'),
(1722, '🇳🇺', 'flag-niue'),
(1723, '🇳🇿', 'flag-new-zealand'),
(1724, '🇴🇲', 'flag-oman'),
(1725, '🇵🇦', 'flag-panama'),
(1726, '🇵🇪', 'flag-peru'),
(1727, '🇵🇫', 'flag-french-polynesia'),
(1728, '🇵🇬', 'flag-papua-new-guinea'),
(1729, '🇵🇭', 'flag-philippines'),
(1730, '🇵🇰', 'flag-pakistan'),
(1731, '🇵🇱', 'flag-poland'),
(1732, '🇵🇳', 'flag-pitcairn-islands'),
(1733, '🇵🇷', 'flag-puerto-rico'),
(1734, '🇵🇸', 'flag-palestinian-territories'),
(1735, '🇵🇹', 'flag-portugal'),
(1736, '🇵🇼', 'flag-palau'),
(1737, '🇵🇾', 'flag-paraguay'),
(1738, '🇶🇦', 'flag-qatar'),
(1739, '🇷🇴', 'flag-romania'),
(1740, '🇷🇸', 'flag-serbia'),
(1741, '🇷🇺', 'flag-russia'),
(1742, '🇷🇼', 'flag-rwanda'),
(1743, '🇸🇦', 'flag-saudi-arabia'),
(1744, '🇸🇧', 'flag-solomon-islands'),
(1745, '🇸🇨', 'flag-seychelles'),
(1746, '🇸🇩', 'flag-sudan'),
(1747, '🇸🇪', 'flag-sweden'),
(1748, '🇸🇬', 'flag-singapore'),
(1749, '🇸🇮', 'flag-slovenia'),
(1750, '🇸🇯', 'flag-svalbard-jan-mayen'),
(1751, '🇸🇰', 'flag-slovakia'),
(1752, '🇸🇱', 'flag-sierra-leone'),
(1753, '🇸🇲', 'flag-san-marino'),
(1754, '🇸🇳', 'flag-senegal'),
(1755, '🇸🇴', 'flag-somalia'),
(1756, '🇸🇷', 'flag-suriname'),
(1757, '🇸🇸', 'flag-south-sudan'),
(1758, '🇸🇻', 'flag-el-salvador'),
(1759, '🇸🇽', 'flag-sint-maarten'),
(1760, '🇸🇾', 'flag-syria'),
(1761, '🇸🇿', 'flag-eswatini'),
(1762, '🇹🇦', 'flag-tristan-da-cunha'),
(1763, '🇹🇨', 'flag-turks-caicos-islands'),
(1764, '🇹🇩', 'flag-chad'),
(1765, '🇹🇫', 'flag-french-southern-territories'),
(1766, '🇹🇬', 'flag-togo'),
(1767, '🇹🇭', 'flag-thailand'),
(1768, '🇹🇯', 'flag-tajikistan'),
(1769, '🇹🇰', 'flag-tokelau'),
(1770, '🇹🇱', 'flag-timor-leste'),
(1771, '🇹🇲', 'flag-turkmenistan'),
(1772, '🇹🇳', 'flag-tunisia'),
(1773, '🇹🇴', 'flag-tonga'),
(1774, '🇹🇷', 'flag-turkey'),
(1775, '🇹🇹', 'flag-trinidad-tobago'),
(1776, '🇹🇻', 'flag-tuvalu'),
(1777, '🇹🇼', 'flag-taiwan'),
(1778, '🇹🇿', 'flag-tanzania'),
(1779, '🇺🇦', 'flag-ukraine'),
(1780, '🇺🇬', 'flag-uganda'),
(1782, '🇺🇳', 'flag-united-nations'),
(1783, '🇺🇸', 'flag-united-states'),
(1784, '🇺🇾', 'flag-uruguay'),
(1785, '🇺🇿', 'flag-uzbekistan'),
(1786, '🇻🇦', 'flag-vatican-city'),
(1787, '🇻🇪', 'flag-venezuela'),
(1788, '🇻🇬', 'flag-british-virgin-islands'),
(1790, '🇻🇳', 'flag-vietnam'),
(1791, '🇻🇺', 'flag-vanuatu'),
(1792, '🇼🇫', 'flag-wallis-futuna'),
(1793, '🇼🇸', 'flag-samoa'),
(1794, '🇽🇰', 'flag-kosovo'),
(1795, '🇾🇪', 'flag-yemen'),
(1796, '🇾🇹', 'flag-mayotte'),
(1797, '🇿🇦', 'flag-south-africa'),
(1798, '🇿🇲', 'flag-zambia'),
(1799, '🇿🇼', 'flag-zimbabwe'),
(1800, '🏴󠁧󠁢󠁥󠁮󠁧󠁿', 'flag-england'),
(1801, '🏴󠁧󠁢󠁳󠁣󠁴󠁿', 'flag-scotland'),
(1802, '🏴󠁧󠁢󠁷󠁬󠁳󠁿', 'flag-wales');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(10) UNSIGNED NOT NULL,
  `event_privacy` enum('secret','closed','public') DEFAULT 'public',
  `event_admin` int(10) UNSIGNED NOT NULL,
  `event_page_id` int(10) UNSIGNED DEFAULT NULL,
  `event_category` int(10) UNSIGNED NOT NULL,
  `event_title` varchar(256) NOT NULL,
  `event_location` varchar(256) DEFAULT NULL,
  `event_latitude` varchar(256) DEFAULT NULL,
  `event_longitude` varchar(256) DEFAULT NULL,
  `event_country` int(10) UNSIGNED NOT NULL,
  `event_language` int(10) UNSIGNED NOT NULL,
  `event_description` mediumtext NOT NULL,
  `event_start_date` datetime NOT NULL,
  `event_end_date` datetime NOT NULL,
  `event_is_online` enum('0','1') NOT NULL DEFAULT '0',
  `event_publish_enabled` enum('0','1') NOT NULL DEFAULT '1',
  `event_publish_approval_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `event_cover` varchar(256) DEFAULT NULL,
  `event_cover_id` int(10) UNSIGNED DEFAULT NULL,
  `event_cover_position` varchar(256) DEFAULT NULL,
  `event_album_covers` int(11) DEFAULT NULL,
  `event_album_timeline` int(11) DEFAULT NULL,
  `event_pinned_post` int(11) DEFAULT NULL,
  `event_boosted` enum('0','1') NOT NULL DEFAULT '0',
  `event_boosted_by` int(10) UNSIGNED DEFAULT NULL,
  `event_invited` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `event_interested` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `event_going` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `chatbox_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `chatbox_conversation_id` int(10) UNSIGNED DEFAULT NULL,
  `event_tickets_link` varchar(256) DEFAULT NULL,
  `event_prices` text DEFAULT NULL,
  `event_rate` float NOT NULL DEFAULT 0,
  `event_is_sponsored` enum('0','1') NOT NULL DEFAULT '0',
  `event_sponsor_name` varchar(256) DEFAULT NULL,
  `event_sponsor_url` varchar(256) DEFAULT NULL,
  `event_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `events_categories`
--

CREATE TABLE `events_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_parent_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(256) NOT NULL,
  `category_description` text NOT NULL,
  `category_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `events_categories`
--

INSERT INTO `events_categories` (`category_id`, `category_parent_id`, `category_name`, `category_description`, `category_order`) VALUES
(1, 0, 'Art', '', 1),
(2, 0, 'Causes', '', 2),
(3, 0, 'Crafts', '', 3),
(4, 0, 'Dance', '', 4),
(5, 0, 'Drinks', '', 5),
(6, 0, 'Film', '', 6),
(7, 0, 'Fitness', '', 7),
(8, 0, 'Food', '', 8),
(9, 0, 'Games', '', 9),
(10, 0, 'Gardening', '', 10),
(11, 0, 'Health', '', 11),
(12, 0, 'Home', '', 12),
(13, 0, 'Literature', '', 13),
(14, 0, 'Music', '', 14),
(15, 0, 'Networking', '', 15),
(16, 0, 'Other', '', 16),
(17, 0, 'Party', '', 17),
(18, 0, 'Religion', '', 18),
(19, 0, 'Shopping', '', 19),
(20, 0, 'Sports', '', 20),
(21, 0, 'Theater', '', 21),
(22, 0, 'Wellness', '', 22);

-- --------------------------------------------------------

--
-- Table structure for table `events_members`
--

CREATE TABLE `events_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `is_invited` enum('0','1') DEFAULT '0',
  `is_interested` enum('0','1') DEFAULT '0',
  `is_going` enum('0','1') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `followings`
--

CREATE TABLE `followings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `following_id` int(10) UNSIGNED NOT NULL,
  `points_earned` enum('0','1') NOT NULL DEFAULT '0',
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `followings`
--

INSERT INTO `followings` (`id`, `user_id`, `following_id`, `points_earned`, `time`) VALUES
(2, 3, 2, '0', '2026-05-08 23:09:15'),
(3, 2, 3, '0', '2026-05-08 23:09:21'),
(4, 4, 2, '0', NULL),
(5, 4, 3, '0', NULL),
(6, 5, 2, '0', NULL),
(7, 5, 3, '0', NULL),
(8, 6, 2, '0', NULL),
(9, 6, 3, '0', NULL),
(10, 7, 2, '0', NULL),
(11, 7, 3, '0', NULL),
(12, 8, 2, '0', NULL),
(13, 8, 3, '0', NULL),
(14, 9, 2, '0', NULL),
(15, 9, 3, '0', NULL),
(16, 10, 2, '0', NULL),
(17, 10, 3, '0', NULL),
(18, 2, 8, '0', '2026-05-09 05:52:45'),
(19, 2, 10, '0', '2026-05-09 06:03:22'),
(20, 2, 9, '0', '2026-05-09 06:07:39'),
(21, 10, 7, '0', '2026-05-09 06:31:10'),
(22, 11, 2, '0', NULL),
(23, 11, 3, '0', NULL),
(25, 2, 11, '0', '2026-05-09 06:43:08'),
(26, 12, 2, '0', NULL),
(27, 12, 3, '0', NULL),
(28, 13, 2, '0', NULL),
(29, 13, 3, '0', NULL),
(30, 2, 13, '0', '2026-05-09 09:07:22'),
(31, 14, 2, '0', NULL),
(32, 14, 3, '0', NULL),
(33, 15, 2, '0', NULL),
(34, 15, 3, '0', NULL),
(35, 16, 2, '0', NULL),
(36, 16, 3, '0', NULL),
(37, 2, 15, '0', '2026-05-09 11:43:17'),
(38, 17, 2, '0', NULL),
(39, 17, 3, '0', NULL),
(40, 18, 2, '0', NULL),
(41, 18, 3, '0', NULL),
(42, 19, 2, '0', NULL),
(43, 19, 3, '0', NULL),
(44, 19, 17, '0', NULL),
(45, 20, 2, '0', NULL),
(46, 20, 3, '0', NULL),
(47, 20, 17, '0', NULL),
(48, 10, 13, '0', '2026-05-09 16:01:20'),
(49, 10, 20, '0', '2026-05-09 16:02:05'),
(50, 21, 2, '0', NULL),
(51, 21, 3, '0', NULL),
(52, 21, 17, '0', NULL),
(53, 15, 19, '0', '2026-05-09 17:23:40'),
(54, 9, 17, '0', '2026-05-09 18:33:55'),
(55, 9, 19, '0', '2026-05-09 18:34:14'),
(56, 19, 15, '0', '2026-05-09 19:05:02'),
(57, 19, 9, '0', '2026-05-09 19:05:03'),
(58, 10, 6, '0', '2026-05-09 20:09:54'),
(59, 10, 15, '0', '2026-05-09 20:09:55'),
(60, 10, 12, '0', '2026-05-09 20:09:56'),
(61, 10, 4, '0', '2026-05-09 20:09:56'),
(62, 10, 19, '0', '2026-05-09 20:09:57'),
(63, 22, 2, '0', NULL),
(64, 22, 3, '0', NULL),
(65, 22, 17, '0', NULL),
(66, 23, 2, '0', NULL),
(67, 23, 3, '0', NULL),
(68, 23, 17, '0', NULL),
(69, 24, 2, '0', NULL),
(70, 24, 3, '0', NULL),
(71, 24, 17, '0', NULL),
(72, 17, 9, '0', '2026-05-09 21:45:20'),
(73, 17, 19, '0', '2026-05-09 21:45:21'),
(74, 17, 24, '0', '2026-05-09 21:48:36'),
(75, 2, 24, '0', '2026-05-09 21:48:59'),
(76, 19, 10, '0', '2026-05-09 23:53:23'),
(77, 25, 2, '0', NULL),
(78, 25, 3, '0', NULL),
(79, 25, 17, '0', NULL),
(80, 26, 2, '0', NULL),
(81, 26, 3, '0', NULL),
(82, 26, 17, '0', NULL),
(83, 26, 13, '0', '2026-05-10 06:47:10'),
(84, 26, 9, '0', '2026-05-10 06:47:11'),
(85, 26, 19, '0', '2026-05-10 06:47:11'),
(86, 26, 8, '0', '2026-05-10 06:47:12'),
(87, 26, 7, '0', '2026-05-10 06:47:12'),
(88, 26, 18, '0', '2026-05-10 06:47:13'),
(89, 26, 10, '0', '2026-05-10 06:47:15'),
(90, 26, 12, '0', '2026-05-10 06:47:18'),
(91, 19, 26, '0', '2026-05-10 07:13:25'),
(92, 18, 26, '0', '2026-05-10 07:47:40'),
(93, 19, 12, '0', '2026-05-10 08:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `forum_id` int(10) UNSIGNED NOT NULL,
  `forum_section` int(10) UNSIGNED NOT NULL,
  `forum_name` varchar(256) NOT NULL,
  `forum_description` mediumtext DEFAULT NULL,
  `forum_order` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `forum_threads` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `forum_replies` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `forums_replies`
--

CREATE TABLE `forums_replies` (
  `reply_id` int(10) UNSIGNED NOT NULL,
  `thread_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `text` longtext NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `forums_threads`
--

CREATE TABLE `forums_threads` (
  `thread_id` int(10) UNSIGNED NOT NULL,
  `forum_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(256) NOT NULL,
  `text` longtext NOT NULL,
  `replies` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `time` datetime NOT NULL,
  `last_reply` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_one_id` int(10) UNSIGNED NOT NULL,
  `user_two_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_one_id`, `user_two_id`, `status`) VALUES
(2, 3, 2, 1),
(3, 4, 2, 1),
(4, 4, 3, 1),
(5, 5, 2, 1),
(6, 5, 3, 1),
(7, 6, 2, 1),
(8, 6, 3, 1),
(9, 7, 2, 1),
(10, 7, 3, 1),
(12, 8, 3, 1),
(17, 8, 2, 1),
(18, 10, 2, 1),
(19, 10, 3, 0),
(20, 2, 9, 1),
(21, 10, 7, 0),
(23, 11, 3, 1),
(24, 2, 11, 0),
(25, 12, 2, 1),
(26, 12, 3, 1),
(29, 13, 2, 1),
(30, 13, 3, 1),
(31, 14, 2, 1),
(32, 14, 3, 1),
(35, 15, 3, 0),
(36, 15, 2, 1),
(37, 16, 2, 1),
(39, 16, 3, 0),
(40, 17, 2, 1),
(41, 17, 3, 1),
(42, 18, 2, 1),
(43, 18, 3, 1),
(44, 19, 2, 1),
(45, 19, 3, 1),
(47, 19, 17, 1),
(48, 20, 2, 1),
(49, 20, 3, 1),
(50, 20, 17, 1),
(51, 10, 13, 0),
(52, 10, 20, 0),
(53, 21, 2, 1),
(54, 21, 3, 1),
(55, 21, 17, 1),
(56, 15, 19, 1),
(57, 9, 17, 1),
(58, 9, 19, 1),
(59, 10, 6, 0),
(60, 10, 15, 0),
(61, 10, 12, 0),
(62, 10, 4, 0),
(63, 10, 19, 1),
(64, 22, 2, 1),
(65, 22, 3, 1),
(66, 22, 17, 1),
(67, 23, 2, 1),
(68, 23, 3, 1),
(69, 23, 17, 1),
(73, 24, 2, 1),
(74, 24, 17, 1),
(75, 24, 3, 0),
(76, 25, 2, 1),
(77, 25, 3, 1),
(78, 25, 17, 1),
(79, 26, 2, 1),
(80, 26, 3, 1),
(81, 26, 17, 1),
(82, 26, 13, 0),
(83, 26, 9, 0),
(84, 26, 19, 1),
(85, 26, 8, 0),
(86, 26, 7, 0),
(87, 26, 18, 1),
(88, 26, 10, 0),
(89, 26, 12, 0),
(90, 19, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `funding_payments`
--

CREATE TABLE `funding_payments` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` varchar(32) NOT NULL,
  `method` varchar(64) NOT NULL,
  `method_value` text NOT NULL,
  `time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `game_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` mediumtext NOT NULL,
  `genres` mediumtext DEFAULT NULL,
  `source` mediumtext NOT NULL,
  `thumbnail` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `games_genres`
--

CREATE TABLE `games_genres` (
  `genre_id` int(10) UNSIGNED NOT NULL,
  `genre_name` varchar(256) NOT NULL,
  `genre_description` text NOT NULL,
  `genre_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `games_genres`
--

INSERT INTO `games_genres` (`genre_id`, `genre_name`, `genre_description`, `genre_order`) VALUES
(1, 'Action', '', 1),
(2, 'Adventure', '', 2),
(3, 'Animation', '', 3),
(4, 'Comedy', '', 4),
(5, 'Crime', '', 5),
(6, 'Documentary', '', 6),
(7, 'Drama', '', 7),
(8, 'Family', '', 8),
(9, 'Fantasy', '', 9),
(10, 'History', '', 10),
(11, 'Horror', '', 11),
(12, 'Musical', '', 12),
(13, 'Mythological', '', 13),
(14, 'Romance', '', 14),
(15, 'Sport', '', 15),
(16, 'TV Show', '', 16),
(17, 'Thriller', '', 17),
(18, 'War', '', 18),
(19, 'Others', '', 19);

-- --------------------------------------------------------

--
-- Table structure for table `games_players`
--

CREATE TABLE `games_players` (
  `id` int(10) UNSIGNED NOT NULL,
  `game_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `last_played_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE `gifts` (
  `gift_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(256) NOT NULL,
  `points` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(10) UNSIGNED NOT NULL,
  `group_privacy` enum('secret','closed','public') DEFAULT 'public',
  `group_admin` int(10) UNSIGNED NOT NULL,
  `group_category` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(64) NOT NULL,
  `group_title` varchar(256) NOT NULL,
  `group_country` int(10) UNSIGNED NOT NULL,
  `group_language` int(10) UNSIGNED NOT NULL,
  `group_description` mediumtext NOT NULL,
  `group_publish_enabled` enum('0','1') NOT NULL DEFAULT '1',
  `group_publish_approval_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `group_picture` varchar(256) DEFAULT NULL,
  `group_picture_id` int(10) UNSIGNED DEFAULT NULL,
  `group_cover` varchar(256) DEFAULT NULL,
  `group_cover_id` int(10) UNSIGNED DEFAULT NULL,
  `group_cover_position` varchar(256) DEFAULT NULL,
  `group_album_pictures` int(11) DEFAULT NULL,
  `group_album_covers` int(11) DEFAULT NULL,
  `group_album_timeline` int(11) DEFAULT NULL,
  `group_pinned_post` int(11) DEFAULT NULL,
  `group_boosted` enum('0','1') NOT NULL DEFAULT '0',
  `group_boosted_by` int(10) UNSIGNED DEFAULT NULL,
  `group_members` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `group_monetization_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `group_monetization_discount_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `group_monetization_discount_percent` float NOT NULL DEFAULT 0,
  `group_monetization_min_price` float NOT NULL DEFAULT 0,
  `group_monetization_plans` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `chatbox_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `chatbox_conversation_id` int(10) UNSIGNED DEFAULT NULL,
  `group_rate` float NOT NULL DEFAULT 0,
  `group_date` datetime NOT NULL,
  `is_fake` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `groups_admins`
--

CREATE TABLE `groups_admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `groups_categories`
--

CREATE TABLE `groups_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_parent_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(256) NOT NULL,
  `category_description` text NOT NULL,
  `category_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `groups_categories`
--

INSERT INTO `groups_categories` (`category_id`, `category_parent_id`, `category_name`, `category_description`, `category_order`) VALUES
(1, 0, 'Cars and Vehicles', '', 1),
(2, 0, 'Comedy', '', 2),
(3, 0, 'Economics and Trade', '', 3),
(4, 0, 'Education', '', 4),
(5, 0, 'Entertainment', '', 5),
(6, 0, 'Movies and Animation', '', 6),
(7, 0, 'Gaming', '', 7),
(8, 0, 'History and Facts', '', 8),
(9, 0, 'Live Style', '', 9),
(10, 0, 'Natural', '', 10),
(11, 0, 'News and Politics', '', 11),
(12, 0, 'People and Nations', '', 12),
(13, 0, 'Pets and Animals', '', 13),
(14, 0, 'Places and Regions', '', 14),
(15, 0, 'Science and Technology', '', 15),
(16, 0, 'Sport', '', 16),
(17, 0, 'Travel and Events', '', 17),
(18, 0, 'Other', '', 18);

-- --------------------------------------------------------

--
-- Table structure for table `groups_invites`
--

CREATE TABLE `groups_invites` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `from_user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `groups_members`
--

CREATE TABLE `groups_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `approved` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `hashtags`
--

CREATE TABLE `hashtags` (
  `hashtag_id` int(10) UNSIGNED NOT NULL,
  `hashtag` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `hashtags_posts`
--

CREATE TABLE `hashtags_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `hashtag_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `invitation_codes`
--

CREATE TABLE `invitation_codes` (
  `code_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(64) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_date` datetime NOT NULL,
  `used_by` int(10) UNSIGNED DEFAULT NULL,
  `used_date` datetime DEFAULT NULL,
  `used` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_categories`
--

CREATE TABLE `jobs_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_parent_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(256) NOT NULL,
  `category_description` text NOT NULL,
  `category_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jobs_categories`
--

INSERT INTO `jobs_categories` (`category_id`, `category_parent_id`, `category_name`, `category_description`, `category_order`) VALUES
(1, 0, 'Admin &amp; Office', '', 1),
(2, 0, 'Art &amp; Design', '', 2),
(3, 0, 'Business Operations', '', 3),
(4, 0, 'Cleaning &amp; Facilities', '', 4),
(5, 0, 'Community &amp; Social Services', '', 5),
(6, 0, 'Computer &amp; Data', '', 6),
(7, 0, 'Construction &amp; Mining', '', 7),
(8, 0, 'Education', '', 8),
(9, 0, 'Farming &amp; Forestry', '', 9),
(10, 0, 'Healthcare', '', 10),
(11, 0, 'Installation, Maintenance &amp; Repair', '', 11),
(12, 0, 'Legal', '', 12),
(13, 0, 'Management', '', 13),
(14, 0, 'Manufacturing', '', 14),
(15, 0, 'Media &amp; Communication', '', 15),
(16, 0, 'Personal Care', '', 16),
(17, 0, 'Protective Services', '', 17),
(18, 0, 'Restaurant &amp; Hospitality', '', 18),
(19, 0, 'Retail &amp; Sales', '', 19),
(20, 0, 'Science &amp; Engineering', '', 20),
(21, 0, 'Sports &amp; Entertainment', '', 21),
(22, 0, 'Transportation', '', 22),
(23, 0, 'Other', '', 23);

-- --------------------------------------------------------

--
-- Table structure for table `log_commissions`
--

CREATE TABLE `log_commissions` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` float NOT NULL,
  `handle` varchar(128) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `log_payments`
--

CREATE TABLE `log_payments` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` float NOT NULL,
  `method` varchar(64) NOT NULL,
  `handle` varchar(128) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `log_points`
--

CREATE TABLE `log_points` (
  `log_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  `node_type` varchar(128) NOT NULL,
  `points` float NOT NULL,
  `is_added` enum('0','1') NOT NULL DEFAULT '1',
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `log_sessions`
--

CREATE TABLE `log_sessions` (
  `session_id` int(10) UNSIGNED NOT NULL,
  `session_date` datetime NOT NULL,
  `session_type` enum('W','A','I') NOT NULL DEFAULT 'W',
  `session_ip` varchar(64) NOT NULL,
  `session_user_agent` varchar(512) DEFAULT NULL,
  `user_browser` varchar(64) DEFAULT NULL,
  `user_os` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `log_sessions`
--

INSERT INTO `log_sessions` (`session_id`, `session_date`, `session_type`, `session_ip`, `session_user_agent`, `user_browser`, `user_os`) VALUES
(1, '2026-05-08 09:51:36', 'W', '102.209.111.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(2, '2026-05-08 09:53:13', 'A', '197.239.14.164', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(3, '2026-05-08 09:54:38', 'A', '102.222.232.197', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(4, '2026-05-08 09:55:10', 'W', '5.39.1.233', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(5, '2026-05-08 09:55:49', 'A', '142.250.32.4', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(6, '2026-05-08 09:55:50', 'A', '66.249.83.8', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(7, '2026-05-08 09:55:50', 'A', '66.249.83.12', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(8, '2026-05-08 10:18:35', 'A', '102.209.111.98', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(9, '2026-05-08 10:36:23', 'W', '165.227.151.136', 'Mozilla/5.0', 'Unknown Browser', 'Unknown OS Platform'),
(10, '2026-05-08 10:53:13', 'A', '47.128.63.246', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', 'Handheld Browser', 'Android'),
(11, '2026-05-08 10:57:14', 'A', '47.128.63.45', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', 'Handheld Browser', 'Android'),
(12, '2026-05-08 11:48:15', 'W', '207.46.13.155', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(13, '2026-05-08 12:07:14', 'A', '142.250.32.7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(14, '2026-05-08 12:07:14', 'A', '66.102.8.198', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(15, '2026-05-08 12:18:02', 'W', '136.118.232.177', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(16, '2026-05-08 12:28:45', 'W', '136.117.96.217', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(17, '2026-05-08 12:40:56', 'A', '66.249.79.36', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.7727.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'Handheld Browser', 'Android'),
(18, '2026-05-08 12:53:41', 'W', '136.109.194.29', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(19, '2026-05-08 13:18:21', 'W', '213.180.203.134', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'Unknown Browser', 'Unknown OS Platform'),
(20, '2026-05-08 13:51:34', 'W', '136.109.104.112', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(21, '2026-05-08 14:11:21', 'W', '2a03:2880:f814:36::', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'Unknown Browser', 'Unknown OS Platform'),
(22, '2026-05-08 14:11:22', 'W', '2a03:2880:7ff:41::', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'Unknown Browser', 'Unknown OS Platform'),
(23, '2026-05-08 14:17:29', 'A', '47.128.121.119', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; TikTokSpider; ttspider-feedback@tiktok.com)', 'Handheld Browser', 'Android'),
(24, '2026-05-08 14:21:38', 'A', '47.128.121.186', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; TikTokSpider; ttspider-feedback@tiktok.com)', 'Handheld Browser', 'Android'),
(25, '2026-05-08 14:39:46', 'I', '192.71.126.151', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604', 'Handheld Browser', 'iPhone'),
(26, '2026-05-08 14:39:46', 'I', '192.71.126.249', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604', 'Handheld Browser', 'iPhone'),
(27, '2026-05-08 14:39:46', 'I', '192.71.12.10', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604', 'Handheld Browser', 'iPhone'),
(28, '2026-05-08 14:39:46', 'I', '192.71.142.134', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604', 'Handheld Browser', 'iPhone'),
(29, '2026-05-08 14:42:41', 'W', '51.68.247.198', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(30, '2026-05-08 14:54:10', 'A', '142.250.32.10', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(31, '2026-05-08 14:54:10', 'A', '66.102.8.204', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(32, '2026-05-08 14:54:10', 'A', '66.102.8.201', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(33, '2026-05-08 15:17:59', 'W', '2a02:598:64:8a00::3100:9', 'Mozilla/5.0 (compatible; SeznamBot/4.0; +https://o-seznam.cz/napoveda/vyhledavani/en/seznambot-crawler/)', 'Unknown Browser', 'Unknown OS Platform'),
(34, '2026-05-08 15:29:44', 'W', '34.168.147.42', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(35, '2026-05-08 15:59:41', 'A', '142.250.32.6', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(36, '2026-05-08 15:59:41', 'A', '66.102.8.195', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(37, '2026-05-08 15:59:41', 'A', '66.249.83.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(38, '2026-05-08 15:59:44', 'A', '142.250.32.5', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(39, '2026-05-08 16:00:10', 'A', '66.102.8.194', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(40, '2026-05-08 16:00:10', 'A', '66.102.8.200', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(41, '2026-05-08 16:16:58', 'A', '66.249.79.35', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.7727.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'Handheld Browser', 'Android'),
(42, '2026-05-08 17:22:16', 'W', '5.255.231.35', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'Unknown Browser', 'Unknown OS Platform'),
(43, '2026-05-08 17:32:44', 'W', '94.23.188.195', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(44, '2026-05-08 17:51:54', 'W', '40.77.167.3', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(45, '2026-05-08 18:06:38', 'W', '2602:fa5d:1::a0', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0', 'Firefox', 'Windows 7'),
(46, '2026-05-08 18:28:16', 'W', '54.37.118.77', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(47, '2026-05-08 18:54:28', 'W', '51.75.236.145', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(48, '2026-05-08 19:19:35', 'W', '102.215.110.140', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(49, '2026-05-08 19:21:10', 'W', '88.19.122.150', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'Chrome', 'Mac OS X'),
(50, '2026-05-08 19:23:09', 'W', '92.222.104.193', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(51, '2026-05-08 19:37:59', 'W', '87.250.224.242', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'Unknown Browser', 'Unknown OS Platform'),
(52, '2026-05-08 19:39:43', 'W', '5.39.1.226', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(53, '2026-05-08 19:43:39', 'A', '142.250.32.9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(54, '2026-05-08 19:43:40', 'A', '66.102.8.196', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(55, '2026-05-08 19:43:40', 'A', '64.233.172.73', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(56, '2026-05-08 19:44:10', 'A', '64.233.172.70', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(57, '2026-05-08 19:44:38', 'A', '64.233.172.67', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(58, '2026-05-08 19:44:42', 'A', '64.233.172.69', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(59, '2026-05-08 19:44:43', 'A', '64.233.172.72', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(60, '2026-05-08 19:44:43', 'A', '66.102.8.199', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(61, '2026-05-08 19:50:42', 'W', '102.203.209.153', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(62, '2026-05-08 19:55:43', 'W', '92.222.108.113', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(63, '2026-05-08 20:03:53', 'W', '95.108.213.155', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'Unknown Browser', 'Unknown OS Platform'),
(64, '2026-05-08 20:08:08', 'A', '47.128.121.164', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; TikTokSpider; ttspider-feedback@tiktok.com)', 'Handheld Browser', 'Android'),
(65, '2026-05-08 20:13:16', 'W', '5.255.231.50', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'Unknown Browser', 'Unknown OS Platform'),
(66, '2026-05-08 20:13:23', 'W', '94.23.188.200', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(67, '2026-05-08 20:19:44', 'W', '157.55.39.197', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(68, '2026-05-08 20:24:48', 'W', '54.37.118.78', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(69, '2026-05-08 20:32:40', 'W', '51.75.236.131', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(70, '2026-05-08 20:36:57', 'W', '35.252.240.13', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(71, '2026-05-08 20:45:25', 'W', '54.37.118.76', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(72, '2026-05-08 21:05:16', 'W', '92.222.108.124', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(73, '2026-05-08 21:47:08', 'W', '40.77.167.15', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(74, '2026-05-08 21:47:36', 'W', '213.180.203.166', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'Unknown Browser', 'Unknown OS Platform'),
(75, '2026-05-08 21:51:49', 'W', '102.222.232.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(76, '2026-05-08 21:58:05', 'W', '213.180.203.186', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'Unknown Browser', 'Unknown OS Platform'),
(77, '2026-05-08 22:01:14', 'W', '8.229.35.132', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(78, '2026-05-08 22:05:25', 'A', '142.250.32.3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(79, '2026-05-08 22:05:26', 'A', '66.102.8.202', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(80, '2026-05-08 22:05:26', 'A', '66.102.8.193', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(81, '2026-05-08 22:24:33', 'W', '102.203.209.153', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 Edg/90.0.818.66', 'Chrome', 'Windows 10'),
(82, '2026-05-08 22:37:22', 'W', '95.108.213.79', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'Unknown Browser', 'Unknown OS Platform'),
(83, '2026-05-08 22:41:21', 'W', '52.167.144.166', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(84, '2026-05-08 22:42:26', 'W', '207.46.13.107', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(85, '2026-05-08 22:56:09', 'A', '66.102.8.192', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(86, '2026-05-08 22:56:41', 'A', '47.128.121.144', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; TikTokSpider; ttspider-feedback@tiktok.com)', 'Handheld Browser', 'Android'),
(87, '2026-05-08 22:59:53', 'A', '66.249.83.4', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(88, '2026-05-08 23:02:50', 'A', '66.249.89.135', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.7727.137 Mobile Safari/537.36 (compatible; AdsBot-Google-Mobile; +http://www.google.com/mobile/adsbot.html)', 'Handheld Browser', 'Android'),
(89, '2026-05-08 23:17:32', 'W', '2a07:e05:3:77::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:133.0) Gecko/20100101 Firefox/133.0', 'Firefox', 'Mac OS X'),
(90, '2026-05-08 23:49:33', 'W', '95.108.213.244', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'Unknown Browser', 'Unknown OS Platform'),
(91, '2026-05-08 23:57:50', 'A', '66.102.9.6', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(92, '2026-05-08 23:57:50', 'A', '66.102.9.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(93, '2026-05-09 00:12:47', 'W', '198.244.240.214', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(94, '2026-05-09 00:13:53', 'W', '34.127.21.170', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(95, '2026-05-09 00:16:49', 'W', '5.255.231.36', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'Unknown Browser', 'Unknown OS Platform'),
(96, '2026-05-09 00:54:27', 'W', '38.51.30.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'Chrome', 'Windows 10'),
(97, '2026-05-09 01:09:00', 'W', '35.252.231.29', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(98, '2026-05-09 01:19:25', 'W', '200.69.92.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'Chrome', 'Windows 10'),
(99, '2026-05-09 01:27:53', 'W', '2001:8a0:f2f4:ed01:8097:8d17:38b6:1992', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'Chrome', 'Mac OS X'),
(100, '2026-05-09 01:27:57', 'W', '190.133.214.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(101, '2026-05-09 01:28:38', 'W', '131.161.223.44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'Chrome', 'Windows 10'),
(102, '2026-05-09 01:34:28', 'W', '157.55.39.11', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(103, '2026-05-09 01:45:04', 'W', '190.6.55.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(104, '2026-05-09 01:52:26', 'W', '34.168.128.244', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(105, '2026-05-09 01:55:24', 'W', '136.118.227.92', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(106, '2026-05-09 02:26:11', 'W', '34.193.251.180', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'Chrome', 'Mac OS X'),
(107, '2026-05-09 02:32:06', 'W', '186.81.103.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'Chrome', 'Windows 10'),
(108, '2026-05-09 02:47:26', 'W', '2a02:4780:40:c0de::2a', 'Go-http-client/2.0', 'Unknown Browser', 'Unknown OS Platform'),
(109, '2026-05-09 02:48:34', 'W', '2a02:cb80:4270:45c2:7c22:56e2:86aa:e8df', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'Chrome', 'Mac OS X'),
(110, '2026-05-09 02:49:30', 'W', '100.48.103.141', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(111, '2026-05-09 02:52:48', 'W', '2401:4900:8f6e:678a:d82f:8546:c89c:83a3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(112, '2026-05-09 02:56:20', 'W', '190.44.170.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(113, '2026-05-09 02:56:39', 'W', '68.110.159.82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(114, '2026-05-09 03:01:18', 'W', '201.188.232.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(115, '2026-05-09 03:10:13', 'W', '170.247.5.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(116, '2026-05-09 03:11:47', 'W', '113.191.99.97', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(117, '2026-05-09 03:11:53', 'W', '240d:c010:1db:4::18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(118, '2026-05-09 03:12:53', 'W', '240d:c010:1ae:3::1c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(119, '2026-05-09 03:13:26', 'W', '240e:321:a347:3800:8e2:75fa:e182:cf34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(120, '2026-05-09 03:13:29', 'W', '2409:8a44:2400:f22a:a922:7d8b:2729:554d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(121, '2026-05-09 03:13:39', 'W', '179.209.159.196', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'Chrome', 'Mac OS X'),
(122, '2026-05-09 03:14:49', 'W', '86.23.245.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(123, '2026-05-09 03:33:54', 'W', '51.89.129.181', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(124, '2026-05-09 03:56:21', 'W', '8.242.87.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(125, '2026-05-09 04:21:09', 'W', '198.244.183.219', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(126, '2026-05-09 04:22:53', 'A', '66.102.9.4', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(127, '2026-05-09 04:22:54', 'A', '66.249.83.13', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(128, '2026-05-09 04:24:01', 'A', '142.250.32.8', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(129, '2026-05-09 04:36:18', 'W', '179.1.196.115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(130, '2026-05-09 04:38:37', 'W', '34.169.110.118', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(131, '2026-05-09 04:41:40', 'W', '113.179.175.202', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'Chrome', 'Mac OS X'),
(132, '2026-05-09 04:45:13', 'W', '186.67.87.138', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'Chrome', 'Mac OS X'),
(133, '2026-05-09 04:48:47', 'W', '152.201.95.65', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(134, '2026-05-09 04:50:51', 'I', '86.98.95.130', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.4 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(135, '2026-05-09 04:52:50', 'W', '200.80.126.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(136, '2026-05-09 05:00:36', 'I', '41.210.155.146', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.7.3 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(137, '2026-05-09 05:00:47', 'A', '102.86.0.23', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(138, '2026-05-09 05:05:49', 'A', '41.210.154.12', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(139, '2026-05-09 05:06:55', 'A', '102.86.0.251', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(140, '2026-05-09 05:07:31', 'A', '102.203.209.153', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(141, '2026-05-09 05:08:31', 'W', '37.228.251.191', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'Chrome', 'Mac OS X'),
(142, '2026-05-09 05:10:32', 'I', '2a02:1406:13c:8fee:2cc0:c71f:db8f:e043', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(143, '2026-05-09 05:14:00', 'W', '198.244.168.110', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(144, '2026-05-09 05:15:42', 'A', '102.209.109.141', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(145, '2026-05-09 05:16:08', 'A', '102.85.7.224', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(146, '2026-05-09 05:19:06', 'A', '102.85.161.253', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(147, '2026-05-09 05:19:28', 'I', '102.85.14.75', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(148, '2026-05-09 05:20:57', 'I', '196.207.165.237', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(149, '2026-05-09 05:22:33', 'W', '109.107.230.85', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(150, '2026-05-09 05:25:16', 'A', '66.249.83.3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(151, '2026-05-09 05:25:16', 'A', '66.249.83.6', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(152, '2026-05-09 05:25:39', 'I', '41.210.155.146', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Safari', 'Safari', 'iPhone'),
(153, '2026-05-09 05:33:09', 'I', '41.210.147.153', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.7.5 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(154, '2026-05-09 05:36:36', 'A', '41.210.147.238', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(155, '2026-05-09 05:37:36', 'A', '102.209.109.222', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(156, '2026-05-09 05:37:38', 'I', '41.210.147.153', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Safari', 'Safari', 'iPhone'),
(157, '2026-05-09 05:37:59', 'A', '66.249.83.43', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(158, '2026-05-09 05:37:59', 'A', '66.249.83.129', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(159, '2026-05-09 05:38:36', 'I', '102.86.12.142', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(160, '2026-05-09 05:47:04', 'A', '102.203.209.67', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(161, '2026-05-09 05:47:39', 'A', '102.86.4.150', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(162, '2026-05-09 05:48:49', 'A', '66.249.83.108', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(163, '2026-05-09 05:48:49', 'A', '66.249.83.134', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(164, '2026-05-09 05:48:53', 'A', '66.249.83.7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(165, '2026-05-09 05:48:56', 'A', '66.249.83.11', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(166, '2026-05-09 05:49:04', 'A', '142.250.32.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(167, '2026-05-09 05:49:04', 'A', '66.249.83.9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(168, '2026-05-09 05:49:09', 'W', '52.167.144.181', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(169, '2026-05-09 05:51:48', 'W', '178.221.228.111', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(170, '2026-05-09 05:52:21', 'A', '74.125.208.230', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(171, '2026-05-09 05:52:22', 'A', '66.249.88.64', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(172, '2026-05-09 05:53:50', 'A', '142.250.32.1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(173, '2026-05-09 05:53:51', 'A', '66.249.83.130', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(174, '2026-05-09 05:53:51', 'A', '66.249.83.32', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(175, '2026-05-09 05:59:15', 'W', '51.89.129.127', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(176, '2026-05-09 06:00:16', 'A', '66.249.83.1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(177, '2026-05-09 06:01:47', 'A', '102.222.232.196', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(178, '2026-05-09 06:06:09', 'I', '2a09:bac1:7d80:22b8::49f:4c', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(179, '2026-05-09 06:06:10', 'I', '2a09:bac5:d4f3:2e64::49f:4c', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(180, '2026-05-09 06:11:17', 'W', '84.54.73.149', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'Chrome', 'Windows 10'),
(181, '2026-05-09 06:22:16', 'W', '107.197.214.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(182, '2026-05-09 06:23:37', 'W', '198.244.168.229', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(183, '2026-05-09 06:24:31', 'A', '41.75.176.110', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(184, '2026-05-09 06:25:00', 'I', '38.109.228.7', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/148.0.7778.100 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(185, '2026-05-09 06:27:26', 'A', '197.239.9.203', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(186, '2026-05-09 06:33:00', 'I', '102.203.209.58', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.4 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(187, '2026-05-09 06:33:41', 'W', '34.185.223.208', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0 Safari/537.36', 'Chrome', 'Linux'),
(188, '2026-05-09 06:37:19', 'W', '185.187.95.140', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'Chrome', 'Windows 10'),
(189, '2026-05-09 06:39:07', 'W', '2804:14c:87c4:c762:d57:2934:cd04:2d92', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(190, '2026-05-09 06:44:18', 'W', '198.244.168.116', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(191, '2026-05-09 06:47:39', 'A', '102.86.6.158', 'Mozilla/5.0 (Linux; Android 10; SM-G960U Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/148.0.7778.120 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(192, '2026-05-09 06:54:53', 'A', '102.203.209.249', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(193, '2026-05-09 06:55:51', 'W', '198.244.242.167', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(194, '2026-05-09 07:01:21', 'W', '51.89.129.78', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(195, '2026-05-09 07:04:08', 'W', '54.38.147.99', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(196, '2026-05-09 07:09:42', 'W', '15.235.96.95', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(197, '2026-05-09 07:12:26', 'W', '148.113.130.49', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(198, '2026-05-09 07:14:35', 'I', '102.209.109.132', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.4 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(199, '2026-05-09 07:14:51', 'W', '54.39.89.231', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(200, '2026-05-09 07:16:58', 'W', '66.102.9.3', 'GoogleAssociationService', 'Unknown Browser', 'Unknown OS Platform'),
(201, '2026-05-09 07:16:58', 'W', '66.102.9.4', 'GoogleAssociationService', 'Unknown Browser', 'Unknown OS Platform'),
(202, '2026-05-09 07:17:28', 'W', '167.114.139.26', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(203, '2026-05-09 07:18:53', 'W', '180.252.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'Chrome', 'Windows 10'),
(204, '2026-05-09 07:18:54', 'W', '177.101.41.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(205, '2026-05-09 07:20:29', 'W', '102.86.4.150', 'WhatsApp/2.23.20.0', 'Unknown Browser', 'Unknown OS Platform'),
(206, '2026-05-09 07:23:05', 'W', '185.117.46.35', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'Chrome', 'Mac OS X'),
(207, '2026-05-09 07:26:13', 'A', '66.102.8.197', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(208, '2026-05-09 07:27:30', 'W', '142.44.225.25', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(209, '2026-05-09 07:28:07', 'I', '102.209.109.231', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(210, '2026-05-09 07:32:33', 'I', '102.209.109.231', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/419.4.905781065 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(211, '2026-05-09 07:32:42', 'W', '2607:f8b0:4003:c44::8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(212, '2026-05-09 07:32:49', 'W', '2607:f8b0:4003:c44::6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(213, '2026-05-09 07:33:34', 'W', '2804:14c:87b5:ca8d:75fd:2936:ab89:39be', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'Chrome', 'Windows 10'),
(214, '2026-05-09 07:33:49', 'A', '41.75.180.125', 'Mozilla/5.0 (Linux; Android 15; en; TECNO CM5 Build/SP1A.210812.016) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.7727.137 HiBrowser/v2.25.11.1;lang=en;nation=OTHERS;locale=en_US UWS/ Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(215, '2026-05-09 07:36:07', 'W', '15.235.27.249', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(216, '2026-05-09 07:37:53', 'W', '103.177.252.123', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'Chrome', 'Mac OS X'),
(217, '2026-05-09 07:38:00', 'W', '200.106.180.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(218, '2026-05-09 07:40:26', 'W', '66.102.9.7', 'GoogleAssociationService', 'Unknown Browser', 'Unknown OS Platform'),
(219, '2026-05-09 07:40:26', 'W', '66.102.9.1', 'GoogleAssociationService', 'Unknown Browser', 'Unknown OS Platform'),
(220, '2026-05-09 07:46:40', 'W', '2804:6020:13a:e701:51:da68:5828:6619', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(221, '2026-05-09 07:47:58', 'W', '2a00:1d34:6c16:9201:e835:dc8b:99c7:edb7', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'Chrome', 'Mac OS X'),
(222, '2026-05-09 07:48:05', 'W', '2.211.5.160', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'Chrome', 'Mac OS X'),
(223, '2026-05-09 07:52:47', 'I', '102.85.83.176', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.151 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(224, '2026-05-09 07:54:41', 'W', '2804:89f4:10d:5600:dfe:4891:5914:15da', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(225, '2026-05-09 07:57:50', 'W', '41.226.221.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(226, '2026-05-09 08:06:22', 'W', '2001:16a2:c1c1:c9a7:d0ab:3648:d227:2009', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(227, '2026-05-09 08:09:58', 'A', '46.105.222.155', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(228, '2026-05-09 08:15:24', 'W', '142.250.32.4', 'GoogleAssociationService', 'Unknown Browser', 'Unknown OS Platform'),
(229, '2026-05-09 08:20:38', 'A', '197.239.10.75', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(230, '2026-05-09 08:33:23', 'W', '76.68.241.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(231, '2026-05-09 08:34:17', 'W', '136.109.4.86', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(232, '2026-05-09 08:34:36', 'W', '2804:7d44:8119:2300:25f5:3ac9:798:276', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'Chrome', 'Windows 10'),
(233, '2026-05-09 08:44:57', 'W', '92.96.224.184', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(234, '2026-05-09 08:47:38', 'W', '34.168.65.66', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(235, '2026-05-09 08:49:58', 'W', '2804:55bc:55c:a900:c113:c22b:ef06:f28e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(236, '2026-05-09 08:51:18', 'W', '2804:7f0:b753:1454:4511:98d2:7eaf:d817', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'Chrome', 'Mac OS X');
INSERT INTO `log_sessions` (`session_id`, `session_date`, `session_type`, `session_ip`, `session_user_agent`, `user_browser`, `user_os`) VALUES
(237, '2026-05-09 08:51:18', 'W', '200.149.161.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(238, '2026-05-09 08:51:36', 'W', '105.154.176.196', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'Chrome', 'Mac OS X'),
(239, '2026-05-09 08:52:22', 'W', '213.180.203.182', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'Unknown Browser', 'Unknown OS Platform'),
(240, '2026-05-09 08:53:17', 'W', '138.117.127.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(241, '2026-05-09 08:53:18', 'W', '2800:bf0:29e:304:5c30:d90c:17b6:b9d7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(242, '2026-05-09 08:54:44', 'I', '102.86.10.107', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(243, '2026-05-09 09:02:44', 'W', '136.117.177.105', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(244, '2026-05-09 09:03:12', 'A', '197.239.7.130', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(245, '2026-05-09 09:11:05', 'A', '66.249.83.132', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(246, '2026-05-09 09:11:05', 'A', '66.249.83.136', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(247, '2026-05-09 09:15:57', 'W', '197.239.7.130', 'WhatsApp/2.23.20.0', 'Unknown Browser', 'Unknown OS Platform'),
(248, '2026-05-09 09:17:27', 'A', '41.210.143.124', 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A032F Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 SamsungBrowser/7.4 Chrome/147.0.7727.111 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(249, '2026-05-09 09:19:59', 'A', '66.249.83.10', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(250, '2026-05-09 09:36:54', 'A', '66.249.83.135', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(251, '2026-05-09 09:36:54', 'A', '66.249.83.5', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(252, '2026-05-09 10:05:25', 'A', '197.239.12.175', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(253, '2026-05-09 10:09:00', 'W', '51.68.236.72', 'Mozilla/5.0 (compatible; MJ12bot/v2.0.5; http://mj12bot.com/)', 'Unknown Browser', 'Unknown OS Platform'),
(254, '2026-05-09 10:13:34', 'I', '102.85.42.191', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(255, '2026-05-09 10:14:22', 'A', '197.239.7.130', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(256, '2026-05-09 10:14:45', 'W', '142.250.32.6', 'GoogleAssociationService', 'Unknown Browser', 'Unknown OS Platform'),
(257, '2026-05-09 10:14:46', 'W', '142.250.32.9', 'GoogleAssociationService', 'Unknown Browser', 'Unknown OS Platform'),
(258, '2026-05-09 10:20:19', 'A', '197.239.7.130', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(259, '2026-05-09 10:20:42', 'W', '66.102.9.2', 'GoogleAssociationService', 'Unknown Browser', 'Unknown OS Platform'),
(260, '2026-05-09 10:22:24', 'A', '185.229.119.129', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(261, '2026-05-09 10:29:49', 'A', '102.85.28.54', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(262, '2026-05-09 10:30:42', 'W', '142.250.32.5', 'GoogleAssociationService', 'Unknown Browser', 'Unknown OS Platform'),
(263, '2026-05-09 10:30:42', 'W', '66.102.9.6', 'GoogleAssociationService', 'Unknown Browser', 'Unknown OS Platform'),
(264, '2026-05-09 10:32:15', 'W', '34.158.13.28', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(265, '2026-05-09 10:34:27', 'A', '47.128.121.179', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; TikTokSpider; ttspider-feedback@tiktok.com)', 'Handheld Browser', 'Android'),
(266, '2026-05-09 10:38:21', 'W', '34.182.27.57', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(267, '2026-05-09 10:52:20', 'A', '102.86.0.133', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(268, '2026-05-09 11:04:37', 'A', '102.203.209.15', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(269, '2026-05-09 11:04:55', 'W', '176.62.84.192', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36 Herring/95.1.8810.11', 'Chrome', 'Windows 10'),
(270, '2026-05-09 11:13:59', 'A', '47.128.63.89', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', 'Handheld Browser', 'Android'),
(271, '2026-05-09 11:20:55', 'A', '41.210.147.165', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(272, '2026-05-09 11:22:10', 'A', '102.222.232.196', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(273, '2026-05-09 11:34:22', 'W', '205.169.39.50', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(274, '2026-05-09 11:37:16', 'W', '40.77.167.75', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(275, '2026-05-09 11:40:25', 'W', '52.167.144.172', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(276, '2026-05-09 11:40:50', 'W', '2a02:26f7:da10:cce1:0:c000:0:9', 'com.apple.AuthenticationServicesCore.AuthenticationServicesAgent/8624.1.16.10.6 CFNetwork/3860.500.112 Darwin/25.4.0', 'Unknown Browser', 'Unknown OS Platform'),
(277, '2026-05-09 11:49:04', 'W', '41.210.143.205', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(278, '2026-05-09 11:49:31', 'W', '213.180.203.173', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'Unknown Browser', 'Unknown OS Platform'),
(279, '2026-05-09 11:49:59', 'W', '34.53.123.80', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(280, '2026-05-09 11:58:27', 'A', '74.125.208.227', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(281, '2026-05-09 12:01:40', 'A', '41.210.143.146', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(282, '2026-05-09 12:01:42', 'A', '41.210.159.209', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(283, '2026-05-09 12:01:45', 'A', '41.210.159.32', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(284, '2026-05-09 12:07:41', 'A', '2607:f8b0:400d:c05::fe', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(285, '2026-05-09 12:07:43', 'A', '2607:f8b0:400d:c17::a', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(286, '2026-05-09 12:07:47', 'W', '142.250.32.8', 'GoogleAssociationService', 'Unknown Browser', 'Unknown OS Platform'),
(287, '2026-05-09 12:18:35', 'W', '34.19.15.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(288, '2026-05-09 12:32:37', 'A', '74.125.208.229', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(289, '2026-05-09 12:34:58', 'A', '41.210.143.137', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(290, '2026-05-09 12:39:52', 'W', '89.124.96.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Avast/131.0.0.0', 'Chrome', 'Windows 10'),
(291, '2026-05-09 12:55:51', 'A', '197.239.6.240', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(292, '2026-05-09 12:56:13', 'W', '142.250.32.3', 'GoogleAssociationService', 'Unknown Browser', 'Unknown OS Platform'),
(293, '2026-05-09 12:56:13', 'W', '142.250.32.2', 'GoogleAssociationService', 'Unknown Browser', 'Unknown OS Platform'),
(294, '2026-05-09 12:58:51', 'A', '47.128.121.128', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; TikTokSpider; ttspider-feedback@tiktok.com)', 'Handheld Browser', 'Android'),
(295, '2026-05-09 13:20:20', 'A', '47.128.121.140', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; TikTokSpider; ttspider-feedback@tiktok.com)', 'Handheld Browser', 'Android'),
(296, '2026-05-09 13:25:21', 'A', '192.71.2.119', 'Mozilla/5.0 (Android 14; Mobile; rv:123.0) Gecko/123.0 Firefox/123', 'Handheld Browser', 'Android'),
(297, '2026-05-09 13:25:22', 'A', '192.71.2.9', 'Mozilla/5.0 (Android 14; Mobile; rv:123.0) Gecko/123.0 Firefox/123', 'Handheld Browser', 'Android'),
(298, '2026-05-09 13:25:22', 'A', '192.71.142.150', 'Mozilla/5.0 (Android 14; Mobile; rv:123.0) Gecko/123.0 Firefox/123', 'Handheld Browser', 'Android'),
(299, '2026-05-09 13:40:35', 'W', '142.44.233.206', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(300, '2026-05-09 14:14:08', 'W', '95.108.213.81', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'Unknown Browser', 'Unknown OS Platform'),
(301, '2026-05-09 14:36:43', 'I', '197.239.9.44', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(302, '2026-05-09 14:44:04', 'W', '206.189.199.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(303, '2026-05-09 14:44:06', 'W', '123.21.140.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(304, '2026-05-09 14:48:13', 'A', '102.209.111.210', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(305, '2026-05-09 14:51:15', 'A', '102.85.241.69', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(306, '2026-05-09 14:54:33', 'W', '40.77.167.37', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(307, '2026-05-09 14:55:10', 'A', '41.210.143.154', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(308, '2026-05-09 14:57:16', 'A', '47.128.121.191', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; TikTokSpider; ttspider-feedback@tiktok.com)', 'Handheld Browser', 'Android'),
(309, '2026-05-09 15:18:02', 'A', '41.190.134.11', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(310, '2026-05-09 15:29:55', 'W', '65.21.10.23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'Chrome', 'Windows 10'),
(311, '2026-05-09 15:36:47', 'A', '47.128.121.136', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; TikTokSpider; ttspider-feedback@tiktok.com)', 'Handheld Browser', 'Android'),
(312, '2026-05-09 15:49:10', 'W', '34.182.38.121', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(313, '2026-05-09 15:52:56', 'W', '51.158.195.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(314, '2026-05-09 16:19:30', 'I', '102.209.111.76', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(315, '2026-05-09 16:22:03', 'W', '2001:bc8:50c0:317:da5e:d3ff:fe49:94f0', 'curl/7.81.0', 'Unknown Browser', 'Unknown OS Platform'),
(316, '2026-05-09 16:22:10', 'W', '2001:bc8:50c0:317:da5e:d3ff:fe49:94f0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.3', 'Chrome', 'Linux'),
(317, '2026-05-09 16:27:06', 'W', '87.250.224.217', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'Unknown Browser', 'Unknown OS Platform'),
(318, '2026-05-09 16:38:15', 'W', '136.117.209.211', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(319, '2026-05-09 16:39:25', 'A', '102.86.13.182', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(320, '2026-05-09 16:49:55', 'W', '207.46.13.6', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(321, '2026-05-09 17:22:11', 'A', '102.85.183.126', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(322, '2026-05-09 17:35:20', 'A', '41.75.176.235', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(323, '2026-05-09 17:37:49', 'W', '51.68.247.214', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(324, '2026-05-09 17:47:54', 'A', '197.239.6.179', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(325, '2026-05-09 17:56:16', 'I', '2a00:f29:1119:7965:9455:b156:1cee:b859', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_15 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.2 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(326, '2026-05-09 18:09:39', 'W', '136.109.102.24', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(327, '2026-05-09 18:11:39', 'W', '146.75.198.32', 'com.apple.AuthenticationServicesCore.AuthenticationServicesAgent/8623.2.7.110.1 CFNetwork/3860.400.51 Darwin/25.3.0', 'Unknown Browser', 'Unknown OS Platform'),
(328, '2026-05-09 18:26:03', 'W', '40.77.167.53', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(329, '2026-05-09 18:30:48', 'I', '41.75.173.83', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.4 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(330, '2026-05-09 18:36:52', 'A', '102.86.12.222', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(331, '2026-05-09 18:37:41', 'A', '102.209.111.60', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(332, '2026-05-09 18:38:58', 'A', '91.134.91.234', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(333, '2026-05-09 18:39:26', 'A', '66.102.9.7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(334, '2026-05-09 19:24:23', 'A', '197.239.7.134', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(335, '2026-05-09 19:25:34', 'W', '142.250.32.10', 'GoogleAssociationService', 'Unknown Browser', 'Unknown OS Platform'),
(336, '2026-05-09 19:28:00', 'A', '102.86.13.108', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(337, '2026-05-09 19:58:22', 'W', '185.5.249.10', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 YaBrowser/24.12.0.0 Safari/537.36', 'Chrome', 'Windows 7'),
(338, '2026-05-09 19:58:23', 'W', '185.5.249.10', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0', 'Chrome', 'Mac OS X'),
(339, '2026-05-09 19:58:26', 'W', '185.5.249.10', 'Mozilla/5.0 (Windows NT 10.0; rv:133.0) Gecko/20100101 Firefox/133.0', 'Firefox', 'Windows 10'),
(340, '2026-05-09 19:58:28', 'W', '185.5.249.10', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 YaBrowser/24.10.0.0 Safari/537.36', 'Chrome', 'Windows 8'),
(341, '2026-05-09 19:58:30', 'W', '185.5.249.10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.43 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 OPR/109.0.0.0', 'Chrome', 'Windows 10'),
(342, '2026-05-09 19:58:33', 'W', '185.5.249.10', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0', 'Chrome', 'Mac OS X'),
(343, '2026-05-09 19:58:33', 'W', '185.5.249.10', 'Mozilla/5.0 (Windows NT 6.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'Chrome', 'Windows Vista'),
(344, '2026-05-09 19:58:36', 'W', '185.5.249.10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'Chrome', 'Windows 10'),
(345, '2026-05-09 20:06:35', 'I', '41.210.159.201', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.4 Mobile/15E148 Safari/604.1', 'Handheld Browser', 'iPhone'),
(346, '2026-05-09 20:41:14', 'W', '40.77.167.54', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(347, '2026-05-09 20:52:44', 'W', '54.37.118.68', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(348, '2026-05-09 20:55:48', 'W', '52.167.144.179', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(349, '2026-05-09 20:58:10', 'A', '57.128.159.197', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(350, '2026-05-09 21:09:21', 'A', '102.203.209.57', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(351, '2026-05-09 21:16:31', 'W', '40.77.167.70', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(352, '2026-05-09 21:29:35', 'A', '85.190.254.203', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(353, '2026-05-09 21:29:41', 'W', '197.239.6.179', 'WhatsApp/2.23.20.0', 'Unknown Browser', 'Unknown OS Platform'),
(354, '2026-05-09 21:39:59', 'A', '66.102.8.203', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(355, '2026-05-09 21:53:09', 'A', '47.128.121.127', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; TikTokSpider; ttspider-feedback@tiktok.com)', 'Handheld Browser', 'Android'),
(356, '2026-05-09 22:01:35', 'W', '157.55.39.60', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(357, '2026-05-09 22:06:24', 'W', '52.167.144.160', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(358, '2026-05-09 22:23:08', 'W', '213.180.203.82', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'Unknown Browser', 'Unknown OS Platform'),
(359, '2026-05-09 22:34:42', 'W', '142.250.32.1', 'GoogleAssociationService', 'Unknown Browser', 'Unknown OS Platform'),
(360, '2026-05-09 22:41:10', 'W', '157.55.39.202', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(361, '2026-05-09 22:45:35', 'W', '207.46.13.9', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(362, '2026-05-09 22:57:45', 'W', '92.222.108.106', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(363, '2026-05-09 23:12:41', 'W', '142.93.58.83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(364, '2026-05-09 23:12:43', 'W', '123.21.76.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(365, '2026-05-09 23:45:01', 'W', '2a02:598:96:8a00::1200:12f', 'Mozilla/5.0 (compatible; SeznamBot/4.0; +https://o-seznam.cz/napoveda/vyhledavani/en/seznambot-crawler/)', 'Unknown Browser', 'Unknown OS Platform'),
(366, '2026-05-09 23:53:05', 'A', '197.239.7.194', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(367, '2026-05-09 23:59:35', 'W', '40.77.167.74', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(368, '2026-05-10 00:20:53', 'A', '47.128.63.87', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', 'Handheld Browser', 'Android'),
(369, '2026-05-10 00:57:56', 'W', '54.37.118.81', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(370, '2026-05-10 02:11:40', 'A', '47.128.121.19', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; TikTokSpider; ttspider-feedback@tiktok.com)', 'Handheld Browser', 'Android'),
(371, '2026-05-10 02:31:10', 'W', '136.109.221.55', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(372, '2026-05-10 02:58:10', 'W', '51.68.107.138', 'Mozilla/5.0 (compatible; MJ12bot/v2.0.5; http://mj12bot.com/)', 'Unknown Browser', 'Unknown OS Platform'),
(373, '2026-05-10 02:58:49', 'W', '51.68.107.156', 'Mozilla/5.0 (compatible; MJ12bot/v2.0.5; http://mj12bot.com/)', 'Unknown Browser', 'Unknown OS Platform'),
(374, '2026-05-10 03:17:51', 'W', '92.222.104.210', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(375, '2026-05-10 03:19:33', 'W', '35.252.112.28', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(376, '2026-05-10 03:26:46', 'W', '2602:80d:1007::19', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'Unknown Browser', 'Unknown OS Platform'),
(377, '2026-05-10 03:38:51', 'W', '5.39.109.175', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(378, '2026-05-10 03:52:21', 'W', '2602:80d:1007::5b', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'Unknown Browser', 'Unknown OS Platform'),
(379, '2026-05-10 03:53:44', 'W', '35.252.175.57', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Chrome', 'Linux'),
(380, '2026-05-10 04:02:16', 'W', '37.59.204.132', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(381, '2026-05-10 04:03:52', 'W', '206.232.0.183', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Safari/605.1.15', 'Safari', 'Mac OS X'),
(382, '2026-05-10 04:19:05', 'W', '2a02:2479:2:7000::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', 'Chrome', 'Windows 10'),
(383, '2026-05-10 04:29:19', 'W', '40.77.167.58', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(384, '2026-05-10 04:41:56', 'W', '102.209.111.60', 'WhatsApp/2.23.20.0', 'Unknown Browser', 'Unknown OS Platform'),
(385, '2026-05-10 04:43:48', 'A', '66.249.89.129', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.7727.137 Mobile Safari/537.36 (compatible; AdsBot-Google-Mobile; +http://www.google.com/mobile/adsbot.html)', 'Handheld Browser', 'Android'),
(386, '2026-05-10 04:54:48', 'W', '37.59.204.142', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(387, '2026-05-10 05:09:04', 'A', '47.128.121.172', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; TikTokSpider; ttspider-feedback@tiktok.com)', 'Handheld Browser', 'Android'),
(388, '2026-05-10 05:21:35', 'W', '5.255.231.61', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'Unknown Browser', 'Unknown OS Platform'),
(389, '2026-05-10 05:33:34', 'A', '102.85.136.227', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(390, '2026-05-10 05:45:48', 'W', '51.68.247.197', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(391, '2026-05-10 05:49:55', 'W', '40.77.167.45', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(392, '2026-05-10 06:13:20', 'W', '92.222.104.216', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(393, '2026-05-10 06:22:31', 'A', '47.128.121.11', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; TikTokSpider; ttspider-feedback@tiktok.com)', 'Handheld Browser', 'Android'),
(394, '2026-05-10 06:26:00', 'W', '176.31.139.6', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(395, '2026-05-10 06:34:16', 'W', '143.198.39.247', 'Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0', 'Firefox', 'Linux'),
(396, '2026-05-10 06:48:04', 'W', '5.39.109.174', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(397, '2026-05-10 06:56:15', 'W', '54.37.118.69', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(398, '2026-05-10 07:08:04', 'A', '41.210.146.255', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(399, '2026-05-10 07:08:51', 'W', '41.210.146.255', 'WhatsApp/2.23.20.0', 'Unknown Browser', 'Unknown OS Platform'),
(400, '2026-05-10 07:09:28', 'W', '5.39.1.231', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(401, '2026-05-10 07:13:39', 'W', '180.153.236.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0; 360Spider', 'Chrome', 'Windows 10'),
(402, '2026-05-10 07:13:59', 'A', '66.249.83.103', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(403, '2026-05-10 07:13:59', 'A', '66.249.83.110', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(404, '2026-05-10 07:15:33', 'A', '66.249.83.100', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'Handheld Browser', 'Android'),
(405, '2026-05-10 07:17:45', 'W', '51.68.247.200', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(406, '2026-05-10 07:21:38', 'W', '5.39.1.228', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(407, '2026-05-10 07:24:14', 'W', '51.75.236.142', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(408, '2026-05-10 07:26:16', 'I', '104.232.220.55', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 BytedanceWebview/d8a21c6 musical_ly_31.7.0 JsSdk/2.0 NetType/WIFI Channel/App Store ByteLocale/en Region/KZ FalconTag/A494F146-0F95-46D0-A668-10F0C0AB2CD6 TTP_H5_URLPROTOCOL', 'Handheld Browser', 'iPhone'),
(409, '2026-05-10 07:26:17', 'A', '104.232.220.55', 'Mozilla/5.0 (Linux; Android 12; M2004J19C Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/118.0.0.0 Mobile Safari/537.36 musical_ly_2022604030 JsSdk/1.0 NetType/WIFI Channel/googleplay AppName/musical_ly app_version/26.4.3 ByteLocale/ru-RU ByteFullLocale/ru-RU Region/US Spark/1.1.9.4-bugfix AppVersion/26.4.3 PIA/1.4.3 BytedanceWebview/d8a21c6', 'Handheld Browser', 'Android'),
(410, '2026-05-10 07:26:18', 'W', '51.68.247.205', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(411, '2026-05-10 07:26:49', 'A', '102.85.127.209', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(412, '2026-05-10 07:30:41', 'W', '176.31.139.23', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(413, '2026-05-10 07:46:58', 'A', '41.210.147.74', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(414, '2026-05-10 07:49:07', 'A', '41.210.143.197', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android'),
(415, '2026-05-10 07:50:10', 'W', '102.203.209.249', 'WhatsApp/2.23.20.0', 'Unknown Browser', 'Unknown OS Platform'),
(416, '2026-05-10 07:50:29', 'A', '41.210.155.83', 'Mozilla/5.0 (Linux; U; Android 10; en-us; Infinix X657 Build/QP1A.190711.020) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.99 Mobile Safari/537.36 PHX/21.2', 'Handheld Browser', 'Android'),
(417, '2026-05-10 07:55:18', 'W', '89.124.96.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(418, '2026-05-10 07:58:26', 'W', '5.39.1.239', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(419, '2026-05-10 08:13:59', 'W', '92.222.108.122', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(420, '2026-05-10 08:22:03', 'W', '2607:f8b0:400d:c05::1f', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(421, '2026-05-10 08:22:05', 'W', '2607:f8b0:400d:c18::1f', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'Chrome', 'Windows 10'),
(422, '2026-05-10 08:26:24', 'W', '94.23.188.211', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'Unknown Browser', 'Unknown OS Platform'),
(423, '2026-05-10 08:29:24', 'W', '52.167.144.16', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'Chrome', 'Unknown OS Platform'),
(424, '2026-05-10 08:44:36', 'W', '185.191.171.3', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'Unknown Browser', 'Unknown OS Platform'),
(425, '2026-05-10 08:44:42', 'W', '185.191.171.2', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'Unknown Browser', 'Unknown OS Platform'),
(426, '2026-05-10 08:45:15', 'A', '154.227.131.225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', 'Handheld Browser', 'Android');

-- --------------------------------------------------------

--
-- Table structure for table `log_subscriptions`
--

CREATE TABLE `log_subscriptions` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `plan_title` varchar(256) NOT NULL,
  `subscriber_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  `node_type` varchar(32) NOT NULL DEFAULT '',
  `price` float NOT NULL,
  `commission` float NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `market_categories`
--

CREATE TABLE `market_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_parent_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(256) NOT NULL,
  `category_description` text NOT NULL,
  `category_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `market_categories`
--

INSERT INTO `market_categories` (`category_id`, `category_parent_id`, `category_name`, `category_description`, `category_order`) VALUES
(1, 0, 'Apparel &amp; Accessories', '', 1),
(2, 0, 'Autos &amp; Vehicles', '', 2),
(3, 0, 'Baby &amp; Children&#039;s Products', '', 3),
(4, 0, 'Beauty Products &amp; Services', '', 4),
(5, 0, 'Computers &amp; Peripherals', '', 5),
(6, 0, 'Consumer Electronics', '', 6),
(7, 0, 'Dating Services', '', 7),
(8, 0, 'Financial Services', '', 8),
(9, 0, 'Gifts &amp; Occasions', '', 9),
(10, 0, 'Home &amp; Garden', '', 10),
(11, 0, 'Other', '', 11);

-- --------------------------------------------------------

--
-- Table structure for table `market_payments`
--

CREATE TABLE `market_payments` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` varchar(32) NOT NULL,
  `method` varchar(64) NOT NULL,
  `method_value` text NOT NULL,
  `time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `merits_categories`
--

CREATE TABLE `merits_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_parent_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(256) NOT NULL,
  `category_description` text NOT NULL,
  `category_image` varchar(256) DEFAULT NULL,
  `category_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `merits_categories`
--

INSERT INTO `merits_categories` (`category_id`, `category_parent_id`, `category_name`, `category_description`, `category_image`, `category_order`) VALUES
(1, 0, 'Respect', 'Respect', 'merits/Respect.png', 1),
(2, 0, 'Integrity', 'Integrit', 'merits/Integrity.png', 2),
(3, 0, 'Collaboration', 'Collaboration', 'merits/Collaboration.png', 3),
(4, 0, 'Quality', 'Quality', 'merits/Quality.png', 4);

-- --------------------------------------------------------

--
-- Table structure for table `monetization_coupons`
--

CREATE TABLE `monetization_coupons` (
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `discount_percent` float UNSIGNED NOT NULL,
  `is_onetime` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `node_id` int(10) UNSIGNED NOT NULL,
  `node_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `used` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `usage_counter` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `monetization_coupons_users`
--

CREATE TABLE `monetization_coupons_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `used_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `monetization_payments`
--

CREATE TABLE `monetization_payments` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` varchar(32) NOT NULL,
  `method` varchar(64) NOT NULL,
  `method_value` text NOT NULL,
  `time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `monetization_plans`
--

CREATE TABLE `monetization_plans` (
  `plan_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  `node_type` varchar(32) NOT NULL,
  `title` varchar(256) NOT NULL,
  `price` float NOT NULL,
  `period_num` int(10) UNSIGNED NOT NULL,
  `period` varchar(32) NOT NULL,
  `custom_description` text DEFAULT NULL,
  `plan_order` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `paypal_billing_plan` varchar(256) DEFAULT NULL,
  `stripe_billing_plan` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(10) UNSIGNED NOT NULL,
  `source` text NOT NULL,
  `source_type` varchar(64) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` text DEFAULT NULL,
  `imdb_url` text DEFAULT NULL,
  `stars` text DEFAULT NULL,
  `release_year` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `genres` mediumtext DEFAULT NULL,
  `poster` varchar(256) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_paid` enum('0','1') NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT 0,
  `available_for` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `movies_genres`
--

CREATE TABLE `movies_genres` (
  `genre_id` int(10) UNSIGNED NOT NULL,
  `genre_name` varchar(256) NOT NULL,
  `genre_description` text NOT NULL,
  `genre_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `movies_genres`
--

INSERT INTO `movies_genres` (`genre_id`, `genre_name`, `genre_description`, `genre_order`) VALUES
(1, 'Action', '', 1),
(2, 'Adventure', '', 2),
(3, 'Animation', '', 3),
(4, 'Comedy', '', 4),
(5, 'Crime', '', 5),
(6, 'Documentary', '', 6),
(7, 'Drama', '', 7),
(8, 'Family', '', 8),
(9, 'Fantasy', '', 9),
(10, 'History', '', 10),
(11, 'Horror', '', 11),
(12, 'Musical', '', 12),
(13, 'Mythological', '', 13),
(14, 'Romance', '', 14),
(15, 'Sport', '', 15),
(16, 'TV Show', '', 16),
(17, 'Thriller', '', 17),
(18, 'War', '', 18);

-- --------------------------------------------------------

--
-- Table structure for table `movies_payments`
--

CREATE TABLE `movies_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `payment_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(10) UNSIGNED NOT NULL,
  `to_user_id` int(10) UNSIGNED NOT NULL,
  `from_user_id` int(10) UNSIGNED NOT NULL,
  `from_user_type` enum('user','page') NOT NULL DEFAULT 'user',
  `action` varchar(256) NOT NULL,
  `node_type` varchar(256) NOT NULL,
  `node_url` varchar(256) NOT NULL,
  `notify_id` varchar(256) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `seen` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `to_user_id`, `from_user_id`, `from_user_type`, `action`, `node_type`, `node_url`, `notify_id`, `message`, `time`, `seen`) VALUES
(1, 2, 3, 'user', 'friend_add', '', 'tasha', '', '', '2026-05-08 23:09:11', '1'),
(2, 2, 3, 'user', 'follow', '', '', '', '', '2026-05-08 23:09:15', '1'),
(3, 3, 2, 'user', 'friend_accept', '', 'shidy', '', '', '2026-05-08 23:09:21', '1'),
(4, 3, 2, 'user', 'follow', '', '', '', '', '2026-05-08 23:09:21', '1'),
(5, 2, 3, 'user', 'react_love', 'post', '2', '', '', '2026-05-09 04:20:52', '1'),
(6, 3, 2, 'user', 'react_love', 'post', '9', '', '', '2026-05-09 05:25:01', '0'),
(7, 3, 2, 'user', 'chat_message', '', '1', '', 'Hey babe 😘 ', '2026-05-09 05:25:32', '0'),
(8, 2, 3, 'user', 'chat_message', '', '1', '', 'Love', '2026-05-09 05:27:07', '1'),
(9, 2, 3, 'user', 'chat_message', '', '1', '', 'Azlyn akaaba', '2026-05-09 05:27:28', '1'),
(10, 3, 2, 'user', 'chat_message', '', '1', '', 'Muwe ebeere 😅', '2026-05-09 05:28:19', '0'),
(11, 3, 2, 'user', 'chat_message', '', '1', '', 'Sent a voice message', '2026-05-09 05:29:08', '0'),
(12, 2, 3, 'user', 'chat_message', '', '1', '', 'Mwami wange oliwa', '2026-05-09 05:31:53', '1'),
(13, 2, 3, 'user', 'chat_message', '', '1', '', 'Sent a voice message', '2026-05-09 05:33:39', '1'),
(14, 3, 2, 'user', 'chat_message', '', '2', '', 'Wendi love ', '2026-05-09 05:38:33', '0'),
(15, 3, 2, 'user', 'chat_message', '', '2', '', 'I&#039;ll get back', '2026-05-09 05:44:12', '0'),
(16, 3, 2, 'user', 'chat_message', '', '2', '', 'Nina byenkyaatereza', '2026-05-09 05:44:23', '0'),
(17, 2, 7, 'user', 'comment', 'post', '14', 'comment_3', '', '2026-05-09 05:48:03', '1'),
(18, 7, 2, 'user', 'react_haha', 'post_comment', '14', 'comment_3', '', '2026-05-09 05:48:15', '1'),
(19, 7, 2, 'user', 'reply', 'post', '14', 'comment_4', '', '2026-05-09 05:48:32', '1'),
(20, 7, 2, 'user', 'reply', 'post', '14', 'comment_5', '', '2026-05-09 05:49:21', '1'),
(21, 2, 7, 'user', 'comment', 'post', '14', 'comment_6', '', '2026-05-09 05:51:30', '1'),
(22, 7, 2, 'user', 'chat_message', '', '3', '', 'Hello my bro', '2026-05-09 05:51:46', '1'),
(23, 2, 8, 'user', 'friend_add', '', 'KakoozaNoah1', '', '', '2026-05-09 05:52:05', '1'),
(24, 8, 2, 'user', 'friend_accept', '', 'shidy', '', '', '2026-05-09 05:52:45', '1'),
(25, 8, 2, 'user', 'follow', '', '', '', '', '2026-05-09 05:52:45', '1'),
(26, 8, 2, 'user', 'react_love', 'post', '16', '', '', '2026-05-09 05:52:58', '1'),
(27, 8, 2, 'user', 'react_love', 'post', '15', '', '', '2026-05-09 05:53:02', '1'),
(28, 7, 2, 'user', 'react_haha', 'post_reply', '14', 'comment_6', '', '2026-05-09 05:53:46', '1'),
(29, 2, 7, 'user', 'chat_message', '', '3', '', 'How are you bro ', '2026-05-09 05:54:11', '1'),
(30, 7, 2, 'user', 'chat_message', '', '3', '', 'Am so well my broda...', '2026-05-09 05:54:50', '0'),
(31, 7, 2, 'user', 'chat_message', '', '3', '', 'Esaawa yonna, mbawa app', '2026-05-09 05:55:00', '0'),
(32, 2, 8, 'user', 'react_love', 'post', '13', '', '', '2026-05-09 05:55:34', '1'),
(33, 2, 7, 'user', 'chat_message', '', '3', '', 'Ekyo kilungi I was telling it to my friends nga Bangamba biba Simbi sumbuwa oku okumala okugenda ku google ', '2026-05-09 05:58:51', '1'),
(34, 7, 2, 'user', 'chat_message', '', '3', '', 'Tebafaayo ndeeta both android and iphone', '2026-05-09 05:59:42', '0'),
(35, 7, 2, 'user', 'chat_message', '', '3', '', 'Bajja kwekwaasa bilala', '2026-05-09 05:59:50', '0'),
(36, 7, 2, 'user', 'chat_message', '', '3', '', '😂', '2026-05-09 06:00:00', '0'),
(37, 2, 7, 'user', 'chat_message', '', '3', '', 'Kituufu era ojya kubalaba tukoleko ne group ', '2026-05-09 06:01:54', '1'),
(38, 2, 10, 'user', 'friend_add', '', 'Escobar', '', '', '2026-05-09 06:02:15', '1'),
(39, 3, 10, 'user', 'friend_add', '', 'Escobar', '', '', '2026-05-09 06:02:19', '0'),
(40, 7, 2, 'user', 'chat_message', '', '3', '', 'Am so happy for you my bro', '2026-05-09 06:02:44', '0'),
(41, 7, 2, 'user', 'chat_message', '', '3', '', 'You&#039;re so supportive', '2026-05-09 06:02:52', '0'),
(42, 7, 2, 'user', 'chat_message', '', '3', '', 'I&#039;ll get a day tugendeko ku lunch', '2026-05-09 06:03:07', '0'),
(43, 10, 2, 'user', 'friend_accept', '', 'shidy', '', '', '2026-05-09 06:03:22', '1'),
(44, 10, 2, 'user', 'follow', '', '', '', '', '2026-05-09 06:03:22', '1'),
(45, 10, 2, 'user', 'react_love', 'post', '19', '', '', '2026-05-09 06:03:48', '1'),
(46, 2, 7, 'user', 'chat_message', '', '3', '', 'Insha Allah bro \nWe don&rsquo;t need much just support thats all ', '2026-05-09 06:04:06', '1'),
(47, 10, 2, 'user', 'comment', 'post', '19', 'comment_7', '', '2026-05-09 06:04:08', '1'),
(48, 10, 2, 'user', 'chat_message', '', '4', '', 'Ohhh coach wange, thank you for supporting a brother', '2026-05-09 06:04:43', '1'),
(49, 10, 2, 'user', 'chat_message', '', '4', '', 'Nkwagala nnyo taata', '2026-05-09 06:04:55', '1'),
(50, 10, 2, 'user', 'chat_message', '', '4', '', 'Apart from football, bino byenkola taata, am a software developer omukuukutivu ssebo', '2026-05-09 06:05:25', '1'),
(51, 10, 2, 'user', 'chat_message', '', '4', '', 'Am so happy you&#039;re here', '2026-05-09 06:05:39', '1'),
(52, 10, 2, 'user', 'chat_message', '', '4', '', 'Enjoy yourself', '2026-05-09 06:05:46', '1'),
(53, 7, 2, 'user', 'chat_message', '', '3', '', 'Amen my brother', '2026-05-09 06:06:21', '0'),
(54, 10, 7, 'user', 'comment', 'post', '19', 'comment_8', '', '2026-05-09 06:07:37', '1'),
(55, 9, 2, 'user', 'friend_add', '', 'shidy', '', '', '2026-05-09 06:07:39', '1'),
(56, 9, 2, 'user', 'follow', '', '', '', '', '2026-05-09 06:07:39', '1'),
(57, 9, 2, 'user', 'chat_message', '', '5', '', 'Nina gwendaba atusazeeko wanoooooo', '2026-05-09 06:07:55', '1'),
(58, 2, 7, 'user', 'chat_message', '', '3', '', 'Alright ', '2026-05-09 06:07:56', '1'),
(59, 9, 2, 'user', 'react_love', 'post', '20', '', '', '2026-05-09 06:08:28', '1'),
(60, 9, 2, 'user', 'comment', 'post', '20', 'comment_9', '', '2026-05-09 06:08:42', '1'),
(61, 9, 2, 'user', 'comment', 'post', '20', 'comment_10', '', '2026-05-09 06:08:52', '1'),
(62, 2, 10, 'user', 'chat_message', '', '4', '', 'ok nange mbadde awo nensula nenkulaba kwekujoyininga echo chiruunji nnyo academy ojirabye yeeyo eya happy street sc the spanaz ', '2026-05-09 06:10:22', '1'),
(63, 2, 10, 'user', 'chat_message', '', '4', '', 'under 15 ne under 17', '2026-05-09 06:10:52', '1'),
(64, 2, 10, 'user', 'chat_message', '', '4', '', 'twaabadeyo ne tournament naye baatukubidde ku final ', '2026-05-09 06:11:52', '1'),
(65, 10, 2, 'user', 'chat_message', '', '4', '', 'Academy njilabye... nengamba ate bano nga jersey njimanyi naye face sizitegeera', '2026-05-09 06:11:57', '1'),
(66, 10, 2, 'user', 'chat_message', '', '4', '', 'Ssebo nemidaali balina', '2026-05-09 06:12:03', '1'),
(67, 10, 2, 'user', 'chat_message', '', '4', '', 'I can help you... okukufunilayo international academy sponsors coach wange', '2026-05-09 06:12:37', '1'),
(68, 10, 2, 'user', 'chat_message', '', '4', '', 'I know how to write good proposals for academies...', '2026-05-09 06:13:01', '1'),
(69, 2, 10, 'user', 'chat_message', '', '4', '', 'eyo ye 17', '2026-05-09 06:13:14', '1'),
(70, 10, 2, 'user', 'chat_message', '', '4', '', 'Just gwe olina kubeera na work ... photos and videos nga nabaana obalina anytime', '2026-05-09 06:13:30', '1'),
(71, 10, 2, 'user', 'chat_message', '', '4', '', 'The sponsors come on ground and visit your academy', '2026-05-09 06:13:46', '1'),
(72, 10, 2, 'user', 'chat_message', '', '4', '', 'Sometimes even recruit most talented ones nebabakugulako', '2026-05-09 06:14:10', '1'),
(73, 2, 10, 'user', 'chat_message', '', '4', '', 'bannange neyanziza nnyo echo ngeenda kuchikola kuchikolako echeebifaananyi', '2026-05-09 06:15:14', '1'),
(74, 10, 2, 'user', 'chat_message', '', '4', '', 'Yes, onaabera ddi ku Kasaawe, nzije tuwayeemu... nja kukolelayo ne website ya academy ya bwerere', '2026-05-09 06:16:07', '1'),
(75, 2, 10, 'user', 'chat_message', '', '4', '', 'ok bro njakuchikolako videos n photos', '2026-05-09 06:16:19', '1'),
(76, 10, 2, 'user', 'react_love', 'post', '23', '', '', '2026-05-09 06:16:25', '1'),
(77, 7, 2, 'user', 'react_love', 'post', '22', '', '', '2026-05-09 06:16:40', '0'),
(78, 7, 2, 'user', 'react_love', 'post', '21', '', '', '2026-05-09 06:16:46', '0'),
(79, 2, 10, 'user', 'chat_message', '', '4', '', 'leero wooba osobola tusobola okusiinga okusisinkana netwoogera', '2026-05-09 06:17:28', '1'),
(80, 2, 10, 'user', 'chat_message', '', '4', '', 'Kuba leero tulimukuwummula mpaka Monday okuddamu training ', '2026-05-09 06:18:15', '1'),
(81, 10, 2, 'user', 'chat_message', '', '4', '', 'Yes, I know good sponsors from Sweden and Denmark... Nja kuyitilako e Kabowa at 4pm but ngeenda kukikukolelako... tewelalikilira nakamu', '2026-05-09 06:18:36', '1'),
(82, 2, 10, 'user', 'chat_message', '', '4', '', 'oba leero singa chisoboka neentuza meeting nga wooli nabaana oba obalabeko mbakwaanjulire', '2026-05-09 06:20:30', '1'),
(83, 10, 2, 'user', 'chat_message', '', '4', '', 'Onaabela nabo today? Mbasaangewa... I did that same thing for Big Talent Soccer academy of Kenzo... Ssebo kati abaana baabwe abamu baababagulako e Bulaaya', '2026-05-09 06:22:06', '1'),
(84, 2, 10, 'user', 'chat_message', '', '4', '', 'at that time I call them 4pm we meet obeeko nechoobagaamba obeeyanjulire', '2026-05-09 06:22:29', '1'),
(85, 2, 10, 'user', 'chat_message', '', '4', '', 'kukasaawe ka kapet kabowa', '2026-05-09 06:23:04', '1'),
(86, 10, 2, 'user', 'chat_message', '', '4', '', 'Kale coach, which side??? Kabowa C/U oba??', '2026-05-09 06:23:04', '1'),
(87, 7, 2, 'user', 'react_love', 'post_comment', '19', 'comment_8', '', '2026-05-09 06:24:11', '0'),
(88, 7, 2, 'user', 'reply', 'post', '19', 'comment_11', '', '2026-05-09 06:24:39', '0'),
(89, 10, 2, 'user', 'comment', 'post', '19', 'comment_11', '', '2026-05-09 06:24:39', '1'),
(90, 2, 10, 'user', 'chat_message', '', '4', '', 'Sent a voice message', '2026-05-09 06:25:29', '1'),
(91, 10, 2, 'user', 'chat_message', '', '4', '', 'Sent a voice message', '2026-05-09 06:27:41', '1'),
(92, 2, 10, 'user', 'chat_message', '', '4', '', 'yes keeko', '2026-05-09 06:28:09', '1'),
(93, 10, 2, 'user', 'chat_message', '', '4', '', 'Kale coach, see you at 4pm', '2026-05-09 06:28:20', '1'),
(94, 2, 10, 'user', 'chat_message', '', '4', '', 'Sent a voice message', '2026-05-09 06:30:41', '1'),
(95, 7, 10, 'user', 'friend_add', '', 'Escobar', '', '', '2026-05-09 06:31:10', '0'),
(96, 7, 10, 'user', 'follow', '', '', '', '', '2026-05-09 06:31:10', '0'),
(97, 10, 2, 'user', 'chat_message', '', '4', '', 'Sent a voice message', '2026-05-09 06:35:19', '1'),
(98, 11, 2, 'user', 'friend_add', '', 'shidy', '', '', '2026-05-09 06:42:59', '0'),
(100, 11, 2, 'user', 'follow', '', '', '', '', '2026-05-09 06:43:08', '0'),
(101, 11, 2, 'user', 'react_love', 'post', '26', '', '', '2026-05-09 06:44:28', '0'),
(102, 11, 2, 'user', 'comment', 'post', '26', 'comment_12', '', '2026-05-09 06:44:41', '0'),
(103, 2, 9, 'user', 'reply', 'post', '20', 'comment_13', '', '2026-05-09 07:21:16', '1'),
(104, 9, 2, 'user', 'react_love', 'post_reply', '20', 'comment_13', '', '2026-05-09 07:26:24', '1'),
(105, 3, 2, 'user', 'chat_message', '', '2', '', 'Bby wange ', '2026-05-09 09:03:42', '0'),
(106, 13, 2, 'user', 'comment', 'post', '34', 'comment_14', '', '2026-05-09 09:06:43', '1'),
(107, 2, 13, 'user', 'friend_add', '', 'Mk10', '', '', '2026-05-09 09:07:17', '1'),
(108, 13, 2, 'user', 'friend_accept', '', 'shidy', '', '', '2026-05-09 09:07:22', '1'),
(109, 13, 2, 'user', 'follow', '', '', '', '', '2026-05-09 09:07:22', '1'),
(110, 13, 2, 'user', 'chat_message', '', '6', '', 'Welcome aboard my brother, thank you for developing with KipTalk , we  don&#039;t take you for granted ', '2026-05-09 09:09:54', '1'),
(111, 3, 13, 'user', 'react_like', 'post', '11', '', '', '2026-05-09 09:13:46', '0'),
(112, 2, 13, 'user', 'chat_message', '', '6', '', 'You welcome brother I had to walk with you in this\n', '2026-05-09 09:16:13', '1'),
(113, 13, 2, 'user', 'chat_message', '', '6', '', 'Amen and the mobile application is right out in a few... are you using an android or iPhone?', '2026-05-09 09:19:01', '1'),
(114, 2, 13, 'user', 'reply', 'post', '34', 'comment_15', '', '2026-05-09 09:19:28', '1'),
(115, 13, 2, 'user', 'react_love', 'post_reply', '34', 'comment_15', '', '2026-05-09 09:20:03', '1'),
(116, 2, 13, 'user', 'chat_message', '', '6', '', 'I use iPhone ', '2026-05-09 09:20:26', '1'),
(117, 2, 13, 'user', 'chat_message', '', '6', '', 'I have searched for the application on Apple store but it&rsquo;s not there', '2026-05-09 09:21:08', '1'),
(118, 13, 2, 'user', 'chat_message', '', '6', '', 'Ohh yes, your app is out soon, android is already out. .Do you use chrome or safari to access us ?', '2026-05-09 09:21:36', '1'),
(119, 2, 13, 'user', 'chat_message', '', '6', '', 'Am using safari ', '2026-05-09 09:22:21', '1'),
(120, 13, 2, 'user', 'chat_message', '', '6', '', 'Ohh if you can trying logging in with chrome and I direct you how to have a quick iPhone Screen app for KipTalk ', '2026-05-09 09:23:56', '1'),
(121, 2, 13, 'user', 'chat_message', '', '6', '', 'I have many followers en I think I gave this platform  50people ', '2026-05-09 09:24:36', '1'),
(122, 2, 13, 'user', 'react_love', 'post', '1', '', '', '2026-05-09 09:26:39', '1'),
(123, 13, 2, 'user', 'chat_message', '', '6', '', 'Sent a voice message', '2026-05-09 09:29:13', '1'),
(124, 13, 2, 'user', 'react_love', 'post', '35', '', '', '2026-05-09 09:33:51', '1'),
(125, 2, 13, 'user', 'chat_message', '', '6', '', 'Sent a voice message', '2026-05-09 09:34:57', '1'),
(126, 13, 2, 'user', 'chat_message', '', '6', '', 'Thank you so much my bro ', '2026-05-09 09:36:31', '1'),
(127, 2, 13, 'user', 'chat_message', '', '6', '', 'U welcome', '2026-05-09 09:39:53', '1'),
(128, 2, 13, 'user', 'chat_message', '', '6', '', 'Am gonna give ue 100 followers ', '2026-05-09 09:40:17', '1'),
(129, 13, 2, 'user', 'chat_message', '', '6', '', '🙏🙏❤️', '2026-05-09 10:05:35', '1'),
(130, 2, 9, 'user', 'friend_accept', '', 'Slimboss1', '', '', '2026-05-09 10:05:47', '1'),
(131, 13, 2, 'user', 'react_love', 'post', '34', '', '', '2026-05-09 10:06:00', '1'),
(132, 2, 13, 'user', 'chat_message', '', '6', '', '🫡', '2026-05-09 10:21:33', '1'),
(133, 3, 15, 'user', 'friend_add', '', 'Brendaesther24', '', '', '2026-05-09 10:40:57', '0'),
(134, 2, 15, 'user', 'friend_add', '', 'Brendaesther24', '', '', '2026-05-09 10:41:04', '1'),
(135, 3, 16, 'user', 'friend_add', '', 'Aaliyahsaid094', '', '', '2026-05-09 10:48:26', '0'),
(136, 3, 15, 'user', 'react_love', 'post', '11', '', '', '2026-05-09 11:13:23', '0'),
(137, 3, 15, 'user', 'react_love', 'post', '9', '', '', '2026-05-09 11:13:45', '0'),
(138, 15, 2, 'user', 'friend_accept', '', 'shidy', '', '', '2026-05-09 11:43:17', '1'),
(139, 15, 2, 'user', 'follow', '', '', '', '', '2026-05-09 11:43:17', '1'),
(140, 15, 2, 'user', 'react_love', 'post', '36', '', '', '2026-05-09 11:43:54', '1'),
(141, 15, 2, 'user', 'comment', 'post', '36', 'comment_16', '', '2026-05-09 11:44:04', '1'),
(142, 17, 19, 'user', 'friend_add', '', 'Katsdhagrt', '', '', '2026-05-09 13:03:30', '1'),
(143, 2, 19, 'user', 'react_love', 'post', '14', '', '', '2026-05-09 13:04:40', '1'),
(144, 3, 19, 'user', 'react_love', 'post', '12', '', '', '2026-05-09 13:04:50', '0'),
(145, 3, 19, 'user', 'react_love', 'post', '11', '', '', '2026-05-09 13:04:59', '0'),
(146, 19, 2, 'user', 'react_love', 'post', '48', '', '', '2026-05-09 13:10:03', '1'),
(147, 19, 2, 'user', 'comment', 'post', '48', 'comment_17', '', '2026-05-09 13:10:10', '1'),
(148, 19, 2, 'user', 'react_love', 'post', '47', '', '', '2026-05-09 13:10:20', '1'),
(149, 9, 19, 'user', 'react_love', 'post', '20', '', '', '2026-05-09 13:13:16', '1'),
(150, 15, 19, 'user', 'react_love', 'post', '36', '', '', '2026-05-09 13:21:47', '1'),
(151, 2, 19, 'user', 'react_love', 'post', '1', '', '', '2026-05-09 13:22:10', '1'),
(152, 10, 20, 'user', 'comment', 'post', '19', 'comment_18', '', '2026-05-09 14:59:27', '1'),
(153, 13, 10, 'user', 'friend_add', '', 'Escobar', '', '', '2026-05-09 16:01:20', '0'),
(154, 13, 10, 'user', 'follow', '', '', '', '', '2026-05-09 16:01:20', '0'),
(155, 20, 10, 'user', 'friend_add', '', 'Escobar', '', '', '2026-05-09 16:02:05', '1'),
(156, 20, 10, 'user', 'follow', '', '', '', '', '2026-05-09 16:02:05', '1'),
(157, 20, 2, 'user', 'react_love', 'post', '49', '', '', '2026-05-09 16:02:54', '1'),
(158, 20, 2, 'user', 'comment', 'post', '49', 'comment_19', '', '2026-05-09 16:03:06', '1'),
(159, 10, 2, 'user', 'react_love', 'post', '50', '', '', '2026-05-09 16:13:22', '1'),
(160, 2, 15, 'user', 'react_love', 'post_comment', '36', 'comment_16', '', '2026-05-09 17:23:28', '1'),
(161, 19, 15, 'user', 'friend_add', '', 'Brendaesther24', '', '', '2026-05-09 17:23:40', '1'),
(162, 19, 15, 'user', 'follow', '', '', '', '', '2026-05-09 17:23:40', '1'),
(163, 21, 9, 'user', 'comment', 'post', '51', 'comment_20', '', '2026-05-09 17:48:24', '1'),
(164, 2, 9, 'user', 'react_like', 'post', '28', '', '', '2026-05-09 17:56:29', '1'),
(165, 2, 9, 'user', 'react_like', 'post', '25', '', '', '2026-05-09 17:56:51', '1'),
(166, 19, 9, 'user', 'react_like', 'post', '48', '', '', '2026-05-09 17:57:52', '1'),
(167, 17, 9, 'user', 'friend_add', '', 'Slimboss1', '', '', '2026-05-09 18:33:55', '1'),
(168, 17, 9, 'user', 'follow', '', '', '', '', '2026-05-09 18:33:55', '1'),
(169, 19, 9, 'user', 'friend_add', '', 'Slimboss1', '', '', '2026-05-09 18:34:14', '1'),
(170, 19, 9, 'user', 'follow', '', '', '', '', '2026-05-09 18:34:14', '1'),
(171, 9, 2, 'user', 'react_love', 'post', '54', '', '', '2026-05-09 18:37:57', '0'),
(172, 9, 2, 'user', 'react_love', 'post', '53', '', '', '2026-05-09 18:38:09', '0'),
(173, 9, 19, 'user', 'react_love', 'post', '54', '', '', '2026-05-09 18:38:38', '0'),
(174, 21, 2, 'user', 'react_love', 'post', '51', '', '', '2026-05-09 18:39:32', '1'),
(175, 21, 2, 'user', 'comment', 'post', '51', 'comment_21', '', '2026-05-09 18:39:56', '1'),
(176, 2, 21, 'user', 'react_love', 'post_comment', '51', 'comment_21', '', '2026-05-09 18:54:47', '1'),
(177, 9, 21, 'user', 'react_love', 'post_comment', '51', 'comment_20', '', '2026-05-09 18:54:49', '0'),
(178, 2, 19, 'user', 'react_love', 'post', '57', '', '', '2026-05-09 19:04:39', '1'),
(179, 17, 19, 'user', 'react_love', 'post', '45', '', '', '2026-05-09 19:04:55', '1'),
(180, 15, 19, 'user', 'friend_accept', '', 'Katsdhagrt', '', '', '2026-05-09 19:05:02', '0'),
(181, 15, 19, 'user', 'follow', '', '', '', '', '2026-05-09 19:05:02', '0'),
(182, 9, 19, 'user', 'friend_accept', '', 'Katsdhagrt', '', '', '2026-05-09 19:05:03', '0'),
(183, 9, 19, 'user', 'follow', '', '', '', '', '2026-05-09 19:05:03', '0'),
(184, 15, 19, 'user', 'react_love', 'post', '37', '', '', '2026-05-09 19:05:53', '0'),
(185, 15, 19, 'user', 'comment', 'post', '37', 'comment_22', '', '2026-05-09 19:06:06', '0'),
(186, 9, 2, 'user', 'react_love', 'post', '24', '', '', '2026-05-09 19:10:13', '0'),
(187, 9, 2, 'user', 'comment', 'post', '24', 'comment_23', '', '2026-05-09 19:10:27', '0'),
(188, 3, 2, 'user', 'react_love', 'post', '10', '', '', '2026-05-09 19:11:33', '0'),
(189, 6, 10, 'user', 'friend_add', '', 'Escobar', '', '', '2026-05-09 20:09:54', '0'),
(190, 6, 10, 'user', 'follow', '', '', '', '', '2026-05-09 20:09:54', '0'),
(191, 15, 10, 'user', 'friend_add', '', 'Escobar', '', '', '2026-05-09 20:09:55', '0'),
(192, 15, 10, 'user', 'follow', '', '', '', '', '2026-05-09 20:09:55', '0'),
(193, 12, 10, 'user', 'friend_add', '', 'Escobar', '', '', '2026-05-09 20:09:56', '0'),
(194, 12, 10, 'user', 'follow', '', '', '', '', '2026-05-09 20:09:56', '0'),
(195, 4, 10, 'user', 'friend_add', '', 'Escobar', '', '', '2026-05-09 20:09:56', '0'),
(196, 4, 10, 'user', 'follow', '', '', '', '', '2026-05-09 20:09:56', '0'),
(197, 19, 10, 'user', 'friend_add', '', 'Escobar', '', '', '2026-05-09 20:09:57', '1'),
(198, 19, 10, 'user', 'follow', '', '', '', '', '2026-05-09 20:09:57', '1'),
(199, 10, 2, 'user', 'react_love', 'post', '71', '', '', '2026-05-09 21:28:31', '1'),
(200, 10, 2, 'user', 'react_love', 'post', '68', '', '', '2026-05-09 21:29:08', '1'),
(201, 10, 2, 'user', 'react_love', 'post', '65', '', '', '2026-05-09 21:29:16', '1'),
(202, 10, 2, 'user', 'react_love', 'post', '64', '', '', '2026-05-09 21:29:24', '1'),
(203, 10, 2, 'user', 'react_love', 'post', '63', '', '', '2026-05-09 21:29:30', '1'),
(204, 10, 2, 'user', 'react_love', 'post', '62', '', '', '2026-05-09 21:29:35', '1'),
(205, 10, 2, 'user', 'react_love', 'post', '61', '', '', '2026-05-09 21:29:42', '1'),
(206, 10, 2, 'user', 'react_love', 'post', '60', '', '', '2026-05-09 21:29:45', '1'),
(207, 15, 2, 'user', 'react_love', 'post', '37', '', '', '2026-05-09 21:30:11', '0'),
(208, 22, 2, 'user', 'react_love', 'post', '73', '', '', '2026-05-09 21:30:26', '0'),
(209, 22, 2, 'user', 'react_love', 'post', '72', '', '', '2026-05-09 21:30:32', '0'),
(210, 9, 17, 'user', 'friend_accept', '', 'levixone', '', '', '2026-05-09 21:45:20', '0'),
(211, 9, 17, 'user', 'follow', '', '', '', '', '2026-05-09 21:45:20', '0'),
(212, 19, 17, 'user', 'friend_accept', '', 'levixone', '', '', '2026-05-09 21:45:21', '1'),
(213, 19, 17, 'user', 'follow', '', '', '', '', '2026-05-09 21:45:21', '1'),
(216, 2, 17, 'user', 'react_love', 'post', '57', '', '', '2026-05-09 21:45:47', '1'),
(217, 13, 17, 'user', 'react_love', 'post', '34', '', '', '2026-05-09 21:46:32', '0'),
(218, 9, 17, 'user', 'react_love', 'post', '20', '', '', '2026-05-09 21:46:37', '0'),
(219, 21, 17, 'user', 'react_like', 'post', '51', '', '', '2026-05-09 21:46:43', '0'),
(220, 19, 17, 'user', 'react_like', 'post', '48', '', '', '2026-05-09 21:46:50', '1'),
(222, 15, 17, 'user', 'react_love', 'post', '37', '', '', '2026-05-09 21:46:59', '0'),
(223, 15, 17, 'user', 'react_love', 'post', '36', '', '', '2026-05-09 21:47:09', '0'),
(224, 22, 17, 'user', 'react_like', 'post', '73', '', '', '2026-05-09 21:47:18', '0'),
(225, 22, 17, 'user', 'react_like', 'post', '72', '', '', '2026-05-09 21:47:23', '0'),
(226, 2, 24, 'user', 'friend_add', '', 'roniemata01', '', '', '2026-05-09 21:48:20', '1'),
(227, 17, 24, 'user', 'friend_add', '', 'roniemata01', '', '', '2026-05-09 21:48:31', '1'),
(228, 24, 17, 'user', 'friend_accept', '', 'levixone', '', '', '2026-05-09 21:48:36', '1'),
(229, 3, 24, 'user', 'friend_add', '', 'roniemata01', '', '', '2026-05-09 21:48:36', '0'),
(230, 24, 17, 'user', 'follow', '', '', '', '', '2026-05-09 21:48:36', '1'),
(231, 24, 2, 'user', 'friend_accept', '', 'shidy', '', '', '2026-05-09 21:48:59', '1'),
(232, 24, 2, 'user', 'follow', '', '', '', '', '2026-05-09 21:48:59', '1'),
(233, 17, 24, 'user', 'comment', 'post', '45', 'comment_24', '', '2026-05-09 21:49:09', '1'),
(234, 17, 2, 'user', 'react_love', 'post', '45', '', '', '2026-05-09 21:49:52', '1'),
(235, 24, 2, 'user', 'chat_message', '', '7', '', 'Welcome aboard my brother 🙏 ❤️', '2026-05-09 21:50:40', '1'),
(236, 24, 2, 'user', 'react_love', 'post', '74', '', '', '2026-05-09 21:56:35', '1'),
(237, 10, 19, 'user', 'friend_accept', '', 'Katsdhagrt', '', '', '2026-05-09 23:53:23', '1'),
(238, 10, 19, 'user', 'follow', '', '', '', '', '2026-05-09 23:53:23', '1'),
(239, 13, 19, 'user', 'react_love', 'post', '34', '', '', '2026-05-09 23:54:02', '0'),
(240, 2, 17, 'user', 'react_love', 'post', '76', '', '', '2026-05-10 04:27:25', '1'),
(241, 2, 17, 'user', 'comment', 'post', '76', 'comment_26', '', '2026-05-10 04:27:57', '1'),
(242, 2, 17, 'user', 'react_love', 'post', '75', '', '', '2026-05-10 04:28:09', '1'),
(243, 24, 17, 'user', 'react_love', 'post', '74', '', '', '2026-05-10 04:28:15', '0'),
(244, 24, 17, 'user', 'react_love', 'post_comment', '45', 'comment_24', '', '2026-05-10 04:28:53', '0'),
(245, 17, 2, 'user', 'react_like', 'post_comment', '76', 'comment_26', '', '2026-05-10 04:29:29', '0'),
(246, 20, 2, 'user', 'react_love', 'post_comment', '19', 'comment_18', '', '2026-05-10 04:33:55', '0'),
(247, 2, 19, 'user', 'comment', 'post', '77', 'comment_27', '', '2026-05-10 04:46:57', '1'),
(248, 2, 19, 'user', 'react_like', 'post', '77', '', '', '2026-05-10 04:47:30', '1'),
(249, 17, 19, 'user', 'react_like', 'post', '40', '', '', '2026-05-10 04:49:16', '0'),
(250, 17, 19, 'user', 'react_like', 'post', '39', '', '', '2026-05-10 04:49:20', '0'),
(251, 17, 19, 'user', 'react_like', 'post', '38', '', '', '2026-05-10 04:49:23', '0'),
(252, 21, 19, 'user', 'react_like', 'post', '51', '', '', '2026-05-10 04:54:06', '0'),
(253, 2, 19, 'user', 'react_like', 'post_comment', '48', 'comment_17', '', '2026-05-10 04:54:23', '1'),
(254, 24, 19, 'user', 'react_like', 'post', '74', '', '', '2026-05-10 04:54:46', '0'),
(255, 9, 19, 'user', 'react_like', 'post', '24', '', '', '2026-05-10 04:54:54', '0'),
(256, 10, 25, 'user', 'react_like', 'post', '19', '', '', '2026-05-10 05:53:55', '1'),
(257, 19, 10, 'user', 'react_love', 'post', '78', '', '', '2026-05-10 06:03:46', '1'),
(258, 2, 10, 'user', 'react_love', 'post', '76', '', '', '2026-05-10 06:04:00', '1'),
(259, 19, 2, 'user', 'react_love', 'post_comment', '77', 'comment_27', '', '2026-05-10 06:09:11', '1'),
(260, 19, 2, 'user', 'reply', 'post', '77', 'comment_28', '', '2026-05-10 06:09:33', '1'),
(261, 17, 25, 'user', 'react_love', 'post', '38', '', '', '2026-05-10 06:24:50', '0'),
(263, 2, 25, 'user', 'react_like', 'post', '28', '', '', '2026-05-10 06:25:11', '1'),
(264, 17, 25, 'user', 'react_love', 'post', '39', '', '', '2026-05-10 06:25:18', '0'),
(265, 2, 25, 'user', 'react_love', 'post', '57', '', '', '2026-05-10 06:25:21', '1'),
(266, 2, 25, 'user', 'react_love', 'post', '13', '', '', '2026-05-10 06:25:36', '1'),
(267, 17, 25, 'user', 'react_love', 'post', '45', '', '', '2026-05-10 06:25:51', '0'),
(268, 2, 25, 'user', 'react_love', 'post', '76', '', '', '2026-05-10 06:25:55', '1'),
(269, 2, 25, 'user', 'react_love', 'post', '84', '', '', '2026-05-10 06:26:11', '1'),
(270, 13, 26, 'user', 'friend_add', '', 'princessamiirah', '', '', '2026-05-10 06:47:10', '0'),
(271, 13, 26, 'user', 'follow', '', '', '', '', '2026-05-10 06:47:10', '0'),
(272, 9, 26, 'user', 'friend_add', '', 'princessamiirah', '', '', '2026-05-10 06:47:11', '0'),
(273, 9, 26, 'user', 'follow', '', '', '', '', '2026-05-10 06:47:11', '0'),
(274, 19, 26, 'user', 'friend_add', '', 'princessamiirah', '', '', '2026-05-10 06:47:11', '1'),
(275, 19, 26, 'user', 'follow', '', '', '', '', '2026-05-10 06:47:11', '1'),
(276, 8, 26, 'user', 'friend_add', '', 'princessamiirah', '', '', '2026-05-10 06:47:12', '0'),
(277, 8, 26, 'user', 'follow', '', '', '', '', '2026-05-10 06:47:12', '0'),
(278, 7, 26, 'user', 'friend_add', '', 'princessamiirah', '', '', '2026-05-10 06:47:12', '0'),
(279, 7, 26, 'user', 'follow', '', '', '', '', '2026-05-10 06:47:12', '0'),
(280, 18, 26, 'user', 'friend_add', '', 'princessamiirah', '', '', '2026-05-10 06:47:13', '1'),
(281, 18, 26, 'user', 'follow', '', '', '', '', '2026-05-10 06:47:13', '1'),
(282, 10, 26, 'user', 'friend_add', '', 'princessamiirah', '', '', '2026-05-10 06:47:15', '0'),
(283, 10, 26, 'user', 'follow', '', '', '', '', '2026-05-10 06:47:15', '0'),
(284, 12, 26, 'user', 'friend_add', '', 'princessamiirah', '', '', '2026-05-10 06:47:18', '0'),
(285, 12, 26, 'user', 'follow', '', '', '', '', '2026-05-10 06:47:18', '0'),
(286, 17, 26, 'user', 'react_love', 'post', '45', '', '', '2026-05-10 06:48:16', '0'),
(287, 2, 26, 'user', 'react_love', 'post', '76', '', '', '2026-05-10 06:48:27', '1'),
(288, 15, 26, 'user', 'react_love', 'post', '36', '', '', '2026-05-10 06:48:32', '0'),
(289, 3, 2, 'user', 'chat_message', '', '2', '', 'Bby wange ', '2026-05-10 06:52:58', '0'),
(290, 26, 19, 'user', 'friend_accept', '', 'Katsdhagrt', '', '', '2026-05-10 07:13:25', '1'),
(291, 26, 19, 'user', 'follow', '', '', '', '', '2026-05-10 07:13:25', '1'),
(292, 26, 19, 'user', 'react_love', 'post', '92', '', '', '2026-05-10 07:13:45', '1'),
(293, 26, 19, 'user', 'react_love', 'post', '91', '', '', '2026-05-10 07:13:51', '1'),
(294, 26, 18, 'user', 'friend_accept', '', 'Kps', '', '', '2026-05-10 07:47:40', '1'),
(295, 26, 18, 'user', 'follow', '', '', '', '', '2026-05-10 07:47:40', '1'),
(296, 26, 18, 'user', 'wall', 'post', '93', '', '', '2026-05-10 07:48:51', '1'),
(297, 2, 18, 'user', 'react_love', 'post', '25', '', '', '2026-05-10 07:49:29', '1'),
(298, 18, 26, 'user', 'react_love', 'post', '93', '', '', '2026-05-10 08:03:35', '0'),
(299, 18, 2, 'user', 'react_love', 'post', '93', '', '', '2026-05-10 08:05:22', '0'),
(300, 18, 2, 'user', 'comment', 'post', '93', 'comment_29', '', '2026-05-10 08:06:34', '0'),
(301, 18, 19, 'user', 'react_like', 'post', '93', '', '', '2026-05-10 08:37:21', '0'),
(302, 26, 19, 'user', 'react_love', 'post', '89', '', '', '2026-05-10 08:37:31', '0'),
(303, 26, 19, 'user', 'react_love', 'post', '88', '', '', '2026-05-10 08:37:34', '0'),
(304, 12, 19, 'user', 'friend_add', '', 'Katsdhagrt', '', '', '2026-05-10 08:39:30', '0'),
(305, 12, 19, 'user', 'follow', '', '', '', '', '2026-05-10 08:39:30', '0'),
(306, 15, 25, 'user', 'react_love', 'post', '36', '', '', '2026-05-10 08:40:27', '0'),
(307, 13, 25, 'user', 'react_love', 'post', '34', '', '', '2026-05-10 08:40:34', '0');

-- --------------------------------------------------------

--
-- Table structure for table `offers_categories`
--

CREATE TABLE `offers_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_parent_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(256) NOT NULL,
  `category_description` text NOT NULL,
  `category_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `offers_categories`
--

INSERT INTO `offers_categories` (`category_id`, `category_parent_id`, `category_name`, `category_description`, `category_order`) VALUES
(1, 0, 'Apparel &amp; Accessories', '', 1),
(2, 0, 'Autos &amp; Vehicles', '', 2),
(3, 0, 'Baby &amp; Children&#039;s Products', '', 3),
(4, 0, 'Beauty Products &amp; Services', '', 4),
(5, 0, 'Computers &amp; Peripherals', '', 5),
(6, 0, 'Consumer Electronics', '', 6),
(7, 0, 'Dating Services', '', 7),
(8, 0, 'Financial Services', '', 8),
(9, 0, 'Gifts &amp; Occasions', '', 9),
(10, 0, 'Home &amp; Garden', '', 10),
(11, 0, 'Other', '', 11);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_hash` varchar(128) NOT NULL,
  `order_collection_id` varchar(128) DEFAULT NULL,
  `is_payment_done` enum('0','1') NOT NULL DEFAULT '0',
  `is_cash_on_delivery` enum('0','1') NOT NULL DEFAULT '0',
  `is_digital` enum('0','1') NOT NULL DEFAULT '0',
  `seller_id` int(10) UNSIGNED NOT NULL,
  `seller_page_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `buyer_id` int(10) UNSIGNED NOT NULL,
  `buyer_address_id` int(10) UNSIGNED NOT NULL,
  `sub_total` float UNSIGNED NOT NULL DEFAULT 0,
  `commission` float UNSIGNED NOT NULL,
  `status` enum('placed','canceled','accepted','packed','shipped','delivered') NOT NULL DEFAULT 'placed',
  `tracking_link` mediumtext DEFAULT NULL,
  `tracking_number` mediumtext DEFAULT NULL,
  `insert_time` datetime NOT NULL,
  `update_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_post_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(256) NOT NULL,
  `price` varchar(32) NOT NULL,
  `period_num` int(10) UNSIGNED NOT NULL,
  `period` varchar(32) NOT NULL,
  `color` varchar(32) NOT NULL,
  `icon` varchar(256) NOT NULL,
  `custom_description` text DEFAULT NULL,
  `package_order` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `package_hidden` enum('0','1') NOT NULL DEFAULT '0',
  `verification_badge_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `package_permissions_group_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_blogs_categories` int(11) NOT NULL DEFAULT 0,
  `allowed_videos_categories` int(11) NOT NULL DEFAULT 0,
  `allowed_products` int(11) NOT NULL DEFAULT 0,
  `free_points` int(10) UNSIGNED NOT NULL,
  `boost_posts_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `boost_posts` int(10) UNSIGNED NOT NULL,
  `boost_pages_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `boost_pages` int(10) UNSIGNED NOT NULL,
  `boost_groups_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `boost_groups` int(10) UNSIGNED NOT NULL,
  `boost_events_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `boost_events` int(10) UNSIGNED NOT NULL,
  `paypal_billing_plan` varchar(256) DEFAULT NULL,
  `stripe_billing_plan` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `packages_payments`
--

CREATE TABLE `packages_payments` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_date` datetime NOT NULL,
  `package_name` varchar(256) NOT NULL,
  `package_price` float UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(10) UNSIGNED NOT NULL,
  `page_admin` int(10) UNSIGNED NOT NULL,
  `page_category` int(10) UNSIGNED NOT NULL,
  `page_name` varchar(64) NOT NULL,
  `page_title` varchar(256) NOT NULL,
  `page_picture` varchar(256) DEFAULT NULL,
  `page_picture_id` int(10) UNSIGNED DEFAULT NULL,
  `page_cover` varchar(256) DEFAULT NULL,
  `page_cover_id` int(10) UNSIGNED DEFAULT NULL,
  `page_cover_position` varchar(256) DEFAULT NULL,
  `page_album_pictures` int(10) UNSIGNED DEFAULT NULL,
  `page_album_covers` int(10) UNSIGNED DEFAULT NULL,
  `page_album_timeline` int(10) UNSIGNED DEFAULT NULL,
  `page_pinned_post` int(10) UNSIGNED DEFAULT NULL,
  `page_verified` enum('0','1') NOT NULL DEFAULT '0',
  `page_tips_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `page_boosted` enum('0','1') NOT NULL DEFAULT '0',
  `page_boosted_by` int(10) UNSIGNED DEFAULT NULL,
  `page_company` varchar(256) DEFAULT NULL,
  `page_phone` varchar(256) DEFAULT NULL,
  `page_website` varchar(256) DEFAULT NULL,
  `page_location` varchar(256) DEFAULT NULL,
  `page_country` int(10) UNSIGNED NOT NULL,
  `page_language` int(10) UNSIGNED NOT NULL,
  `page_description` mediumtext NOT NULL,
  `page_action_text` varchar(32) DEFAULT NULL,
  `page_action_color` varchar(32) DEFAULT NULL,
  `page_action_url` varchar(256) DEFAULT NULL,
  `page_social_facebook` varchar(256) DEFAULT NULL,
  `page_social_twitter` varchar(256) DEFAULT NULL,
  `page_social_youtube` varchar(256) DEFAULT NULL,
  `page_social_instagram` varchar(256) DEFAULT NULL,
  `page_social_linkedin` varchar(256) DEFAULT NULL,
  `page_social_vkontakte` varchar(256) DEFAULT NULL,
  `page_likes` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `page_monetization_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `page_monetization_discount_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `page_monetization_discount_percent` float NOT NULL DEFAULT 0,
  `page_monetization_min_price` float NOT NULL DEFAULT 0,
  `page_monetization_plans` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `page_rate` float NOT NULL DEFAULT 0,
  `page_pbid` varchar(128) DEFAULT NULL,
  `page_date` datetime NOT NULL,
  `is_fake` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_admin`, `page_category`, `page_name`, `page_title`, `page_picture`, `page_picture_id`, `page_cover`, `page_cover_id`, `page_cover_position`, `page_album_pictures`, `page_album_covers`, `page_album_timeline`, `page_pinned_post`, `page_verified`, `page_tips_enabled`, `page_boosted`, `page_boosted_by`, `page_company`, `page_phone`, `page_website`, `page_location`, `page_country`, `page_language`, `page_description`, `page_action_text`, `page_action_color`, `page_action_url`, `page_social_facebook`, `page_social_twitter`, `page_social_youtube`, `page_social_instagram`, `page_social_linkedin`, `page_social_vkontakte`, `page_likes`, `page_monetization_enabled`, `page_monetization_discount_enabled`, `page_monetization_discount_percent`, `page_monetization_min_price`, `page_monetization_plans`, `page_rate`, `page_pbid`, `page_date`, `is_fake`) VALUES
(1, 2, 26, 'kiptalk', 'KipTalk', 'photos/2026/05/kiptalk_2edf2c24d6707ec326ec3f270b8a015c_cropped.jpg', 3, 'photos/2026/05/kiptalk_d515181990a34d4d39865801e99b4822_cropped.jpg', 5, '-180px', 3, 4, 18, 0, '1', '0', '0', NULL, NULL, NULL, NULL, NULL, 226, 1, 'Create an account or log into KipTalk. Connect with friends, family and other people you know. Share photos and videos, send messages and get updates.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, '0', '0', 0, 0, 0, 0, '0226002600000001', '2026-05-08 21:55:04', '0'),
(2, 2, 21, 'shidytheboss', 'Shidy TheBoss', 'photos/2026/05/kiptalk_3acb1fee6716e03cdfa080c81480fae5_cropped.jpg', 6, 'photos/2026/05/kiptalk_2b9dcd2e2d733aa0234d15cd66cd2f0e_cropped.webp', 7, '-23px', 5, 6, NULL, NULL, '1', '0', '0', NULL, NULL, NULL, NULL, NULL, 226, 1, 'I&#039;m a Social Media Creator &amp; a digital strategist. I create cutting-edge digital solutions that empower startups, and small to medium-sized companies to achieve their goals and ambitions.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, '0', '0', 0, 0, 0, 0, '0226002100000002', '2026-05-08 22:44:27', '0'),
(3, 17, 23, 'levixone', 'Levixone', 'photos/2026/05/kiptalk_44015e4215ab037931f68519454ca09f_cropped.jpg', 61, 'photos/2026/05/kiptalk_db6685bcd5ed1c43cef76e8d6b229a2b_cropped.jpg', 63, '-359.54999999999995px', 26, 27, NULL, NULL, '1', '0', '0', NULL, 'Levixone Music', '+256 704863154', '', 'Kampala', 226, 1, 'Levixone, is a Ugandan gospel musician and an award winning artist from Kampala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, '0', '0', 0, 0, 0, 0, NULL, '2026-05-09 12:18:09', '0'),
(4, 9, 5, 'XFilesMedia1', 'XFiles Media Promotions ', 'photos/2026/05/kiptalk_026fdcc9e98d945970d54236d5c2cd43_cropped.jpg', 71, 'photos/2026/05/kiptalk_ca1ebd92ee32f7506591043f1a94f877.jpg', 72, NULL, 34, 35, NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, NULL, 226, 1, '            Music &amp; Promo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '0', '0', 0, 0, 0, 0, NULL, '2026-05-09 18:04:36', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pages_admins`
--

CREATE TABLE `pages_admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pages_admins`
--

INSERT INTO `pages_admins` (`id`, `page_id`, `user_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 17),
(4, 4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `pages_categories`
--

CREATE TABLE `pages_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_parent_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(256) NOT NULL,
  `category_description` text NOT NULL,
  `category_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pages_categories`
--

INSERT INTO `pages_categories` (`category_id`, `category_parent_id`, `category_name`, `category_description`, `category_order`) VALUES
(1, 0, 'Cars and Vehicles', '', 1),
(2, 0, 'Comedy', '', 2),
(3, 0, 'Economics and Trade', '', 3),
(4, 0, 'Education', '', 4),
(5, 0, 'Entertainment', '', 5),
(6, 0, 'Movies and Animation', '', 6),
(7, 0, 'Gaming', '', 7),
(8, 0, 'History and Facts', '', 8),
(9, 0, 'Live Style', '', 9),
(10, 0, 'Natural', '', 10),
(11, 0, 'News and Politics', '', 11),
(12, 0, 'People and Nations', '', 12),
(13, 0, 'Pets and Animals', '', 13),
(14, 0, 'Places and Regions', '', 14),
(15, 0, 'Science and Technology', '', 15),
(16, 0, 'Sport', '', 16),
(17, 0, 'Travel and Events', '', 17),
(18, 0, 'Other', '', 18),
(19, 0, 'Television Channel', '', 0),
(20, 0, 'Media braodcasting', '', 0),
(21, 0, 'Public Figure', '', 0),
(22, 0, 'Entreprenuer', '', 0),
(23, 0, 'Artist', '', 0),
(24, 0, 'Musician', '', 0),
(25, 0, 'Performing Arts', '', 0),
(26, 0, 'App Page', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages_invites`
--

CREATE TABLE `pages_invites` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `from_user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pages_likes`
--

CREATE TABLE `pages_likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pages_likes`
--

INSERT INTO `pages_likes` (`id`, `page_id`, `user_id`) VALUES
(1, 1, 2),
(4, 1, 3),
(5, 1, 4),
(7, 1, 5),
(9, 1, 6),
(11, 1, 7),
(13, 1, 8),
(15, 1, 9),
(17, 1, 10),
(19, 1, 11),
(21, 1, 12),
(23, 1, 13),
(25, 1, 14),
(27, 1, 15),
(29, 1, 16),
(31, 1, 17),
(33, 1, 18),
(36, 1, 19),
(39, 1, 20),
(42, 1, 21),
(49, 1, 22),
(52, 1, 23),
(55, 1, 24),
(58, 1, 25),
(61, 1, 26),
(2, 2, 2),
(3, 2, 3),
(6, 2, 4),
(8, 2, 5),
(10, 2, 6),
(12, 2, 7),
(14, 2, 8),
(16, 2, 9),
(18, 2, 10),
(20, 2, 11),
(22, 2, 12),
(24, 2, 13),
(26, 2, 14),
(28, 2, 15),
(30, 2, 16),
(32, 2, 17),
(34, 2, 18),
(37, 2, 19),
(40, 2, 20),
(43, 2, 21),
(50, 2, 22),
(53, 2, 23),
(56, 2, 24),
(59, 2, 25),
(62, 2, 26),
(45, 3, 9),
(48, 3, 10),
(35, 3, 17),
(38, 3, 19),
(41, 3, 20),
(44, 3, 21),
(51, 3, 22),
(54, 3, 23),
(57, 3, 24),
(60, 3, 25),
(63, 3, 26),
(46, 4, 9),
(47, 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `permissions_groups`
--

CREATE TABLE `permissions_groups` (
  `permissions_group_id` int(10) UNSIGNED NOT NULL,
  `permissions_group_title` varchar(255) NOT NULL,
  `pages_permission` enum('0','1') NOT NULL DEFAULT '0',
  `groups_permission` enum('0','1') NOT NULL DEFAULT '0',
  `events_permission` enum('0','1') NOT NULL DEFAULT '0',
  `reels_permission` enum('0','1') NOT NULL DEFAULT '0',
  `watch_permission` enum('0','1') NOT NULL DEFAULT '0',
  `blogs_permission` enum('0','1') NOT NULL DEFAULT '0',
  `blogs_permission_read` enum('0','1') NOT NULL DEFAULT '0',
  `market_permission` enum('0','1') NOT NULL DEFAULT '0',
  `offers_permission` enum('0','1') NOT NULL DEFAULT '0',
  `offers_permission_read` enum('0','1') NOT NULL DEFAULT '0',
  `jobs_permission` enum('0','1') NOT NULL DEFAULT '0',
  `courses_permission` enum('0','1') NOT NULL DEFAULT '0',
  `forums_permission` enum('0','1') NOT NULL DEFAULT '0',
  `movies_permission` enum('0','1') NOT NULL DEFAULT '0',
  `games_permission` enum('0','1') NOT NULL DEFAULT '0',
  `gifts_permission` enum('0','1') NOT NULL DEFAULT '0',
  `ai_posts_permission` enum('0','1') NOT NULL DEFAULT '0',
  `ai_blogs_permission` enum('0','1') NOT NULL DEFAULT '0',
  `ai_images_permission` enum('0','1') NOT NULL DEFAULT '0',
  `stories_permission` enum('0','1') NOT NULL DEFAULT '0',
  `posts_permission` enum('0','1') NOT NULL DEFAULT '0',
  `schedule_posts_permission` enum('0','1') NOT NULL DEFAULT '0',
  `anonymous_posts_permission` enum('0','1') NOT NULL DEFAULT '0',
  `collaborative_posts_permission` enum('0','1') NOT NULL DEFAULT '0',
  `colored_posts_permission` enum('0','1') NOT NULL DEFAULT '0',
  `activity_posts_permission` enum('0','1') NOT NULL DEFAULT '0',
  `polls_posts_permission` enum('0','1') NOT NULL DEFAULT '0',
  `geolocation_posts_permission` enum('0','1') NOT NULL DEFAULT '0',
  `gif_posts_permission` enum('0','1') NOT NULL DEFAULT '0',
  `invitation_permission` enum('0','1') NOT NULL DEFAULT '0',
  `audio_call_permission` enum('0','1') NOT NULL DEFAULT '0',
  `video_call_permission` enum('0','1') NOT NULL DEFAULT '0',
  `live_permission` enum('0','1') NOT NULL DEFAULT '0',
  `videos_upload_permission` enum('0','1') NOT NULL DEFAULT '0',
  `audios_upload_permission` enum('0','1') NOT NULL DEFAULT '0',
  `files_upload_permission` enum('0','1') NOT NULL DEFAULT '0',
  `ads_permission` enum('0','1') NOT NULL DEFAULT '0',
  `funding_permission` enum('0','1') NOT NULL DEFAULT '0',
  `monetization_permission` enum('0','1') NOT NULL DEFAULT '0',
  `tips_permission` enum('0','1') NOT NULL DEFAULT '0',
  `custom_affiliates_system` enum('0','1') NOT NULL DEFAULT '0',
  `affiliates_per_user` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_per_user_2` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage_2` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_per_user_3` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage_3` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_per_user_4` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage_4` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_per_user_5` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage_5` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_per_user_6` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage_6` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_per_user_7` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage_7` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_per_user_8` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage_8` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_per_user_9` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage_9` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_per_user_10` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage_10` float UNSIGNED NOT NULL DEFAULT 0,
  `custom_points_system` enum('0','1') NOT NULL DEFAULT '0',
  `points_per_currency` int(10) UNSIGNED NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions_groups`
--

INSERT INTO `permissions_groups` (`permissions_group_id`, `permissions_group_title`, `pages_permission`, `groups_permission`, `events_permission`, `reels_permission`, `watch_permission`, `blogs_permission`, `blogs_permission_read`, `market_permission`, `offers_permission`, `offers_permission_read`, `jobs_permission`, `courses_permission`, `forums_permission`, `movies_permission`, `games_permission`, `gifts_permission`, `ai_posts_permission`, `ai_blogs_permission`, `ai_images_permission`, `stories_permission`, `posts_permission`, `schedule_posts_permission`, `anonymous_posts_permission`, `collaborative_posts_permission`, `colored_posts_permission`, `activity_posts_permission`, `polls_posts_permission`, `geolocation_posts_permission`, `gif_posts_permission`, `invitation_permission`, `audio_call_permission`, `video_call_permission`, `live_permission`, `videos_upload_permission`, `audios_upload_permission`, `files_upload_permission`, `ads_permission`, `funding_permission`, `monetization_permission`, `tips_permission`, `custom_affiliates_system`, `affiliates_per_user`, `affiliates_percentage`, `affiliates_per_user_2`, `affiliates_percentage_2`, `affiliates_per_user_3`, `affiliates_percentage_3`, `affiliates_per_user_4`, `affiliates_percentage_4`, `affiliates_per_user_5`, `affiliates_percentage_5`, `affiliates_per_user_6`, `affiliates_percentage_6`, `affiliates_per_user_7`, `affiliates_percentage_7`, `affiliates_per_user_8`, `affiliates_percentage_8`, `affiliates_per_user_9`, `affiliates_percentage_9`, `affiliates_per_user_10`, `affiliates_percentage_10`, `custom_points_system`, `points_per_currency`) VALUES
(1, 'Users Permissions', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 100),
(2, 'Verified Permissions', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 100);

-- --------------------------------------------------------

--
-- Table structure for table `points_payments`
--

CREATE TABLE `points_payments` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` varchar(32) NOT NULL,
  `method` varchar(64) NOT NULL,
  `method_value` text NOT NULL,
  `time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` enum('user','page') NOT NULL,
  `in_group` enum('0','1') NOT NULL DEFAULT '0',
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `group_approved` enum('0','1') NOT NULL DEFAULT '1',
  `in_event` enum('0','1') NOT NULL DEFAULT '0',
  `event_id` int(10) UNSIGNED DEFAULT NULL,
  `event_approved` enum('0','1') NOT NULL DEFAULT '1',
  `in_wall` enum('0','1') NOT NULL DEFAULT '0',
  `wall_id` int(10) UNSIGNED DEFAULT NULL,
  `is_collaborative` enum('0','1') NOT NULL DEFAULT '0',
  `collaborative_percent` float UNSIGNED NOT NULL DEFAULT 0,
  `post_type` varchar(32) NOT NULL,
  `colored_pattern` int(10) UNSIGNED DEFAULT NULL,
  `origin_id` int(10) UNSIGNED DEFAULT NULL,
  `time` datetime NOT NULL,
  `location` varchar(256) DEFAULT NULL,
  `privacy` varchar(32) NOT NULL,
  `text` longtext DEFAULT NULL,
  `feeling_action` varchar(32) DEFAULT NULL,
  `feeling_value` varchar(256) DEFAULT NULL,
  `boosted` enum('0','1') NOT NULL DEFAULT '0',
  `boosted_by` int(10) UNSIGNED DEFAULT NULL,
  `comments_disabled` enum('0','1') NOT NULL DEFAULT '0',
  `is_hidden` enum('0','1') NOT NULL DEFAULT '0',
  `is_schedule` enum('0','1') NOT NULL DEFAULT '0',
  `for_adult` enum('0','1') NOT NULL DEFAULT '0',
  `is_anonymous` enum('0','1') NOT NULL DEFAULT '0',
  `reaction_like_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_love_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_haha_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_yay_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_wow_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_sad_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_angry_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `shares` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `post_rate` float NOT NULL DEFAULT 0,
  `points_earned` enum('0','1') NOT NULL DEFAULT '0',
  `tips_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `for_subscriptions` enum('0','1') NOT NULL DEFAULT '0',
  `subscriptions_image` varchar(256) DEFAULT NULL,
  `is_paid` enum('0','1') NOT NULL DEFAULT '0',
  `is_paid_locked` enum('0','1') NOT NULL DEFAULT '0',
  `post_price` float UNSIGNED NOT NULL DEFAULT 0,
  `paid_text` text DEFAULT NULL,
  `paid_image` varchar(256) DEFAULT NULL,
  `processing` enum('0','1') NOT NULL DEFAULT '0',
  `pre_approved` enum('0','1') NOT NULL DEFAULT '1',
  `has_approved` enum('0','1') NOT NULL DEFAULT '0',
  `post_latitude` varchar(256) NOT NULL DEFAULT '0',
  `post_longitude` varchar(256) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `user_type`, `in_group`, `group_id`, `group_approved`, `in_event`, `event_id`, `event_approved`, `in_wall`, `wall_id`, `is_collaborative`, `collaborative_percent`, `post_type`, `colored_pattern`, `origin_id`, `time`, `location`, `privacy`, `text`, `feeling_action`, `feeling_value`, `boosted`, `boosted_by`, `comments_disabled`, `is_hidden`, `is_schedule`, `for_adult`, `is_anonymous`, `reaction_like_count`, `reaction_love_count`, `reaction_haha_count`, `reaction_yay_count`, `reaction_wow_count`, `reaction_sad_count`, `reaction_angry_count`, `comments`, `shares`, `views`, `post_rate`, `points_earned`, `tips_enabled`, `for_subscriptions`, `subscriptions_image`, `is_paid`, `is_paid_locked`, `post_price`, `paid_text`, `paid_image`, `processing`, `pre_approved`, `has_approved`, `post_latitude`, `post_longitude`) VALUES
(1, 2, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-08 09:57:25', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 2, 0, 0, 0, 0, 0, 0, 0, 20, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(2, 2, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_cover', NULL, NULL, '2026-05-08 13:38:37', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 1, 0, 21, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(4, 1, 'page', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'page_picture', NULL, NULL, '2026-05-08 21:56:10', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(5, 1, 'page', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'page_cover', NULL, NULL, '2026-05-08 21:58:00', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 8, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(6, 1, 'page', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'page_cover', NULL, NULL, '2026-05-08 21:59:22', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(7, 2, 'page', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'page_picture', NULL, NULL, '2026-05-08 22:45:18', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(8, 2, 'page', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'page_cover', NULL, NULL, '2026-05-08 22:48:49', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(9, 3, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-08 22:54:25', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 3, 0, 0, 0, 0, 0, 0, 0, 7, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(10, 3, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-08 22:57:25', '', 'public', '', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 8, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.2480454', '32.5793935'),
(11, 3, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-08 22:57:46', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 1, 2, 0, 0, 0, 0, 0, 0, 0, 8, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(12, 3, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_cover', NULL, NULL, '2026-05-08 22:58:01', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 8, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(13, 2, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'reel', 0, NULL, '2026-05-09 00:01:01', '', 'public', '', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 3, 0, 0, 0, 0, 0, 0, 0, 60, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0', '0'),
(15, 8, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-09 05:46:39', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 10, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(16, 8, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-09 05:48:17', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 17, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(17, 9, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-09 05:52:35', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(18, 9, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-09 05:56:22', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(19, 10, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-09 05:57:41', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 1, 1, 0, 0, 0, 0, 0, 4, 0, 162, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(20, 9, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_cover', NULL, NULL, '2026-05-09 06:00:16', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 3, 0, 0, 0, 0, 0, 3, 0, 159, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(21, 7, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_cover', NULL, NULL, '2026-05-09 06:00:23', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 10, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(22, 7, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-09 06:02:45', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 8, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(23, 10, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-09 06:07:32', '', 'public', '&lt;p&gt;well be back my boys HAPPY STREET SC THE SPANAZ soccer academy &lt;/p&gt;', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 13, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.2781824', '32.5625264'),
(24, 9, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-09 06:40:37', '', 'public', '&lt;p&gt;Am humble wen I meet the Brain behind this Platform but laugh when he Disses ma Team 😀😀&lt;/p&gt;&lt;p&gt;#AnnyXshidy&lt;/p&gt;&lt;p&gt;#towakana&lt;/p&gt;&lt;p&gt;#wetekudea&lt;/p&gt;', '', '', '0', NULL, '0', '0', '0', '0', '0', 1, 1, 0, 0, 0, 0, 0, 1, 0, 43, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.3327611', '32.4677766'),
(25, 1, 'page', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-09 06:41:48', '', 'public', '&lt;p&gt;We&rsquo;ve just leveled up your conversations. You can now comment with a voice note on any public post!Sometimes your voice says it better than text ever could. Whether it&rsquo;s a quick reaction, a heartfelt message, or just catching up, it&rsquo;s time to let your voice be heard.Update your app now and start talking! 🚀&lt;/p&gt;&lt;p&gt;#KipTalk&lt;/p&gt;', '', '', '0', NULL, '0', '0', '0', '0', '0', 1, 2, 0, 0, 0, 0, 0, 0, 0, 21, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0', '0'),
(26, 11, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-09 06:43:22', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 1, 0, 27, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(28, 1, 'page', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-09 06:57:04', '', 'public', '&lt;p&gt;We are thrilled to unveil the&amp;nbsp;&lt;strong&gt;all-new&lt;/strong&gt;&amp;nbsp;&lt;strong&gt;&lt;u&gt;KipTalk&lt;/u&gt;&lt;/strong&gt;, redesigned from the ground up with a stunning new look and a seamless, user-friendly interface.We&rsquo;ve listened to your feedback and built a space that&rsquo;s faster, sleeker, and more intuitive than ever before.&lt;/p&gt;&lt;p&gt;New additions include;&amp;nbsp;&lt;strong&gt;Fresh Visual Design,&amp;nbsp;Voice Note Comments,&amp;nbsp;Enhanced Navigation&amp;nbsp;,&amp;nbsp;Bug fixes&amp;nbsp;&amp;amp;&amp;nbsp;Optimized Performance&lt;/strong&gt;.&lt;/p&gt;&lt;p&gt;Whether you&#039;re here to connect, create, or collaborate, the new KipTalk is designed to help you do it better.&lt;/p&gt;&lt;p&gt;Experience the change today! 🚀&lt;/p&gt;&lt;p&gt;#KipTalk&lt;/p&gt;', '', '', '0', NULL, '0', '0', '0', '0', '0', 2, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0', '0'),
(30, 2, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_cover', NULL, NULL, '2026-05-09 07:22:34', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(31, 2, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_cover', NULL, NULL, '2026-05-09 07:22:57', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(32, 2, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_cover', NULL, NULL, '2026-05-09 07:24:41', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(33, 2, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'reel', 0, NULL, '2026-05-09 08:32:01', '', 'public', '', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 64, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0', '0'),
(34, 13, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-09 09:05:58', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 1, 4, 0, 0, 0, 0, 0, 2, 0, 160, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(35, 13, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-09 09:29:41', '', 'public', '&lt;p&gt;Obwa kabaka bwa buganda&lt;/p&gt;', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 12, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.40748569605401264', '32.486058661903535'),
(36, 15, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-09 10:46:18', '', 'public', '&lt;p&gt;Nange ntuuse🥰😝&lt;/p&gt;', 'Feeling', 'Happy', '0', NULL, '0', '0', '0', '0', '0', 0, 5, 0, 0, 0, 0, 0, 1, 0, 49, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.8279385', '32.4971374'),
(37, 15, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-09 10:48:46', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 4, 0, 0, 0, 0, 0, 1, 0, 52, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(38, 17, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-09 12:07:59', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 1, 1, 0, 0, 0, 0, 0, 0, 0, 18, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(39, 17, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-09 12:11:35', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 1, 1, 0, 0, 0, 0, 0, 0, 0, 19, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(40, 17, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-09 12:12:43', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 18, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(41, 17, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_cover', NULL, NULL, '2026-05-09 12:13:15', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(42, 17, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_cover', NULL, NULL, '2026-05-09 12:14:08', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(43, 3, 'page', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'page_picture', NULL, NULL, '2026-05-09 12:19:01', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(44, 3, 'page', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'page_cover', NULL, NULL, '2026-05-09 12:20:08', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(45, 3, 'page', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'page_cover', NULL, NULL, '2026-05-09 12:21:12', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 5, 0, 0, 0, 0, 0, 1, 0, 29, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(46, 18, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-09 12:37:17', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(47, 19, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-09 13:01:31', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 15, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(48, 19, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-09 13:06:20', '', 'public', '&lt;p&gt;Without Communication There&#039;s No Relationship😔.&lt;/p&gt;&lt;p&gt;Without Respect 💘 There&#039;s No Love ❤️.&lt;/p&gt;&lt;p&gt;Without Trust There&#039;s No Reason To Continue.&lt;/p&gt;', '', '', '0', NULL, '0', '0', '0', '0', '0', 2, 1, 0, 0, 0, 0, 0, 1, 0, 166, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.3823867', '32.5669417'),
(49, 20, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-09 14:54:42', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 1, 0, 26, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(50, 10, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-09 16:08:00', '', 'public', '', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 10, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.2782874', '32.5625447'),
(51, 21, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-09 16:25:15', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 2, 1, 0, 0, 0, 0, 0, 2, 0, 160, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(52, 21, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_cover', NULL, NULL, '2026-05-09 16:26:07', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(53, 4, 'page', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'page_picture', NULL, NULL, '2026-05-09 18:05:08', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 26, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(54, 4, 'page', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'page_cover', NULL, NULL, '2026-05-09 18:08:47', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 2, 0, 0, 0, 0, 0, 0, 0, 28, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(57, 2, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-09 18:55:19', '', 'public', '&lt;p&gt;I&rsquo;ve always said that KipTalk isn&rsquo;t just an app; it&rsquo;s the pulse of how we connect. Today, that pulse just got a whole lot faster.&lt;/p&gt;&lt;p&gt;​I&rsquo;m thrilled to announce our v4.0 update, rolling out to all users today. My team and I have spent the last few months listening to your feedback, and we&rsquo;ve rebuilt some core features to make your experience smoother, safer, and more expressive.&lt;/p&gt;&lt;p&gt;​⚡ Ultra-Low Latency Voice: We&rsquo;ve optimized our audio engine. Whether you&#039;re in a crowded city or out in the sticks, your voice notes and calls will now be crystal clear with zero lag.&lt;/p&gt;&lt;p&gt;​🎨 Personalized Spaces: You can now fully customize your profile and chat themes with dynamic gradients and custom widgets. Make your digital home actually feel like you.&lt;/p&gt;&lt;p&gt;​🛡️ Enhanced Privacy Shield: We&rsquo;ve upgraded to quantum-resistant encryption. Your data is your business, and we&rsquo;re keeping it that way.&lt;/p&gt;&lt;p&gt;​🤖 KipAssist 2.0: Our built-in AI assistant is now smarter and can help you summarize long group chats or suggest the perfect icebreaker.&lt;/p&gt;&lt;p&gt;We started KipTalk with a simple mission: to keep the world talking without the noise. This update is a huge step toward that goal. It&rsquo;s sleeker, it&rsquo;s tougher, and it&rsquo;s built for the way you live your life.&lt;/p&gt;&lt;p&gt;​Update your app now and let me know what you think in the comments. I&rsquo;ll be jumping in to answer your questions and hear your thoughts all afternoon.&lt;/p&gt;&lt;p&gt;​Keep talking,&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Shidy Jnr&lt;/strong&gt; (KipTalk C.E.O)&lt;/p&gt;', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 4, 0, 0, 0, 0, 0, 0, 0, 44, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0', '0'),
(58, 10, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_cover', NULL, NULL, '2026-05-09 19:43:26', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(59, 10, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-09 19:47:00', '', 'public', '', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.2782015', '32.5625342'),
(60, 10, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-09 19:49:37', '', 'public', '', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 52, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.2781847', '32.5625259'),
(61, 10, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-09 19:50:09', '', 'public', '', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 58, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.2781936', '32.5625347'),
(62, 10, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-09 19:50:43', '', 'public', '', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 57, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.2781813', '32.5625241'),
(63, 10, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-09 19:58:11', '', 'public', '', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 53, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.2781832', '32.562529'),
(64, 10, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-09 20:02:05', '', 'public', '', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 58, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.2781874', '32.5625257'),
(65, 10, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-09 20:04:45', '', 'public', '', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 56, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.2781948', '32.5625314'),
(66, 10, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'video', 0, NULL, '2026-05-09 20:10:36', '', 'public', '', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.2781891', '32.562529'),
(67, 10, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'video', 0, NULL, '2026-05-09 20:12:18', '', 'public', '', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.2781792', '32.5625271'),
(68, 10, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'video', 0, NULL, '2026-05-09 20:13:31', '', 'public', '', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 54, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.2781947', '32.5625354'),
(69, 10, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'video', 0, NULL, '2026-05-09 20:14:20', '', 'public', '', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.2781805', '32.5625255'),
(70, 10, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'video', 0, NULL, '2026-05-09 20:16:05', '', 'public', '', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.2781908', '32.5625343'),
(71, 10, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'video', 0, NULL, '2026-05-09 20:16:41', '', 'public', '', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 55, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.2781929', '32.5625277'),
(72, 22, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-09 20:20:15', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 1, 1, 0, 0, 0, 0, 0, 0, 0, 22, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(73, 22, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_cover', NULL, NULL, '2026-05-09 20:31:29', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 1, 1, 0, 0, 0, 0, 0, 0, 0, 25, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(74, 24, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-09 21:55:45', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 1, 2, 0, 0, 0, 0, 0, 1, 0, 141, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(75, 2, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'product', 0, NULL, '2026-05-10 04:06:28', '', 'public', 'Used iPhone 13 at 800K shillings available for sale at New Pioneer Mall shop number PA10 Basement flow, Reach out before it&#039;s too late.', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 2, 0, 0, 0, 0, 0, 0, 0, 50, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0', '0'),
(76, 2, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'reel', 0, NULL, '2026-05-10 04:18:37', '', 'public', '&lt;p&gt;Laba munange bampita ssebo 😂😅&lt;/p&gt;', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 5, 0, 0, 0, 0, 0, 1, 0, 149, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0', '0'),
(77, 2, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-10 04:39:49', '', 'public', '&lt;p&gt;We know that sometimes text just doesn&rsquo;t capture the vibe. That&rsquo;s why I&rsquo;m hyped to announce that Voice Notes have officially landed in the comment section! 🚀&lt;/p&gt;&lt;p&gt;​Now, instead of typing it out, you can let your voice be heard. Whether it&rsquo;s a quick laugh, a heartfelt message, or a heated debate, just tap the mic icon in the comment bar and start talking.&lt;/p&gt;&lt;p&gt;​&lt;strong&gt;&lt;u&gt;How to do it&lt;/u&gt;&lt;/strong&gt;:&lt;/p&gt;&lt;p&gt;​Go to any post.&lt;/p&gt;&lt;p&gt;​Tap the Comment bar.&lt;/p&gt;&lt;p&gt;​Hold the Mic Icon 🎤 to record.&lt;/p&gt;&lt;p&gt;​Release and hit Send!&lt;/p&gt;&lt;p&gt;​It&rsquo;s time to make our conversations more personal, more real, and way louder. Can&rsquo;t wait to hear what you all have to say!&lt;/p&gt;&lt;p&gt;​Stay loud,&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Shidy Jnr&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;CEO, KipTalk&lt;/p&gt;&lt;p&gt;​#KipTalk&lt;/p&gt;', '', '', '0', NULL, '0', '0', '0', '0', '0', 2, 0, 0, 0, 0, 0, 0, 2, 0, 189, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0', '0'),
(78, 19, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-10 04:51:19', '', 'public', '&lt;p&gt;When You Truly Care 💘 For Someone, &lt;/p&gt;&lt;p&gt;Their Mistake Never Change Your Feelings Because 💕 It&#039;s The Mind 😍 That Gets Angry 😡 But The Heart ❤️ Still Cares.&lt;/p&gt;', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 16, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.3697521', '32.5692336'),
(79, 25, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-10 05:40:51', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(80, 25, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-10 05:48:04', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(81, 25, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_cover', NULL, NULL, '2026-05-10 05:57:28', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(82, 2, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'photos', 0, NULL, '2026-05-10 06:07:31', '', 'public', '&lt;p&gt;&lt;strong&gt;&lt;u&gt;Introducing KipTalk AI&lt;/u&gt;&lt;/strong&gt;: The Future of Smart Interaction&lt;/p&gt;&lt;p&gt;​We are excited to announce that we are currently integrating KipTalk AI directly into our platform. This update is designed to transform how users engage, create, and connect within our ecosystem.&lt;/p&gt;&lt;p&gt;​&lt;strong&gt;Key Features of KipTalk AI:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;​&lt;strong&gt;Seamless Assistance&lt;/strong&gt;: Get real-time answers and support without leaving the app.&lt;/p&gt;&lt;p&gt;​&lt;strong&gt;Enhanced Connectivity&lt;/strong&gt;: AI-driven insights to help users navigate social interactions more effectively.&lt;/p&gt;&lt;p&gt;​&lt;strong&gt;Smart Content Creation&lt;/strong&gt;: Tools to help users draft posts, generate ideas, and polish their digital presence.&lt;/p&gt;&lt;p&gt;​&lt;strong&gt;Localized Intelligence&lt;/strong&gt;: Optimized to understand and serve the unique needs of our growing community.&lt;/p&gt;&lt;p&gt;​This integration represents a major step forward in our mission to provide a cutting-edge, intuitive social networking experience. Stay tuned as we roll out these intelligent features to enhance your daily workflow and digital lifestyle.&lt;/p&gt;&lt;p&gt;Keep Talking!&lt;/p&gt;&lt;p&gt;#KipTalk&lt;/p&gt;', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0', '0'),
(83, 10, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'video', 0, NULL, '2026-05-10 06:08:59', '', 'public', '', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.2781801', '32.5625283'),
(84, 2, 'user', '0', 0, '0', '0', 0, '0', '0', 0, '0', 0, 'reel', 0, NULL, '2026-05-10 06:24:52', '', 'public', '', '', '', '0', NULL, '0', '0', '0', '0', '0', 0, 2, 0, 0, 0, 0, 0, 0, 0, 74, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0', '0'),
(85, 2, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_cover', NULL, NULL, '2026-05-10 06:29:20', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(87, 2, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_cover', NULL, NULL, '2026-05-10 06:30:30', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(88, 26, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-10 06:38:12', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 38, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(89, 26, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-10 06:40:52', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 34, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(90, 26, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_picture', NULL, NULL, '2026-05-10 06:41:28', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(91, 26, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_cover', NULL, NULL, '2026-05-10 06:41:45', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 30, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(92, 26, 'user', '0', NULL, '1', '0', NULL, '1', '0', NULL, '0', 0, 'profile_cover', NULL, NULL, '2026-05-10 06:42:44', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', '0', '0', '0', '0', 0, 1, 0, 0, 0, 0, 0, 0, 0, 28, 0, '0', '0', '0', NULL, '0', '0', 0, NULL, NULL, '0', '1', '0', '0', '0'),
(93, 18, 'user', '0', 0, '0', '0', 0, '0', '1', 26, '0', 0, 'photos', 0, NULL, '2026-05-10 07:48:51', '', 'public', '', 'Feeling', 'Satisfied', '0', NULL, '0', '0', '0', '0', '0', 1, 2, 0, 0, 0, 0, 0, 1, 0, 41, 0, '0', '0', '0', '', '0', '0', 0, '', '', '0', '1', '1', '0.2794395', '32.5599278');

-- --------------------------------------------------------

--
-- Table structure for table `posts_articles`
--

CREATE TABLE `posts_articles` (
  `article_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `cover` varchar(256) NOT NULL,
  `title` varchar(256) NOT NULL,
  `text` text NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `tags` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_articles_references`
--

CREATE TABLE `posts_articles_references` (
  `refrence_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(256) NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_audios`
--

CREATE TABLE `posts_audios` (
  `audio_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `source` varchar(256) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_cache`
--

CREATE TABLE `posts_cache` (
  `cache_id` int(10) UNSIGNED NOT NULL,
  `cache_date` datetime NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts_cache`
--

INSERT INTO `posts_cache` (`cache_id`, `cache_date`, `post_id`, `user_id`) VALUES
(1950, '2026-05-10 08:05:14', 93, 2),
(1951, '2026-05-10 08:05:14', 92, 2),
(1952, '2026-05-10 08:05:14', 91, 2),
(1953, '2026-05-10 08:05:14', 90, 2),
(1954, '2026-05-10 08:05:14', 89, 2),
(1955, '2026-05-10 08:05:14', 88, 2),
(1956, '2026-05-10 08:05:14', 87, 2),
(1957, '2026-05-10 08:05:14', 85, 2),
(1958, '2026-05-10 08:05:14', 84, 2),
(1959, '2026-05-10 08:05:14', 83, 2),
(1960, '2026-05-10 08:05:14', 82, 2),
(1961, '2026-05-10 08:05:14', 81, 2),
(1962, '2026-05-10 08:05:14', 80, 2),
(1963, '2026-05-10 08:05:14', 79, 2),
(1964, '2026-05-10 08:05:14', 78, 2),
(1965, '2026-05-10 08:05:14', 73, 2),
(1966, '2026-05-10 08:05:14', 72, 2),
(1967, '2026-05-10 08:05:14', 54, 2),
(1968, '2026-05-10 08:05:14', 53, 2),
(1969, '2026-05-10 08:06:55', 77, 2),
(1970, '2026-05-10 08:06:55', 76, 2),
(1971, '2026-05-10 08:06:55', 75, 2),
(1972, '2026-05-10 08:06:55', 74, 2),
(1973, '2026-05-10 08:06:55', 71, 2),
(1974, '2026-05-10 08:06:55', 70, 2),
(1975, '2026-05-10 08:06:55', 69, 2),
(1976, '2026-05-10 08:06:55', 68, 2),
(1977, '2026-05-10 08:06:55', 67, 2),
(1978, '2026-05-10 08:06:55', 66, 2),
(1979, '2026-05-10 08:06:55', 65, 2),
(1980, '2026-05-10 08:06:55', 64, 2),
(1981, '2026-05-10 08:06:55', 52, 2),
(1982, '2026-05-10 08:06:55', 51, 2),
(1983, '2026-05-10 08:06:55', 49, 2),
(1984, '2026-05-10 08:06:55', 48, 2),
(1985, '2026-05-10 08:06:55', 47, 2),
(1986, '2026-05-10 08:06:55', 46, 2),
(1987, '2026-05-10 08:06:55', 45, 2),
(1988, '2026-05-10 08:07:36', 63, 2),
(1989, '2026-05-10 08:07:36', 62, 2),
(1990, '2026-05-10 08:07:36', 61, 2),
(1991, '2026-05-10 08:07:36', 60, 2),
(1992, '2026-05-10 08:07:36', 59, 2),
(1993, '2026-05-10 08:07:36', 58, 2),
(1994, '2026-05-10 08:07:36', 57, 2),
(1995, '2026-05-10 08:07:36', 50, 2),
(1996, '2026-05-10 08:07:36', 44, 2),
(1997, '2026-05-10 08:07:36', 43, 2),
(1998, '2026-05-10 08:07:36', 42, 2),
(1999, '2026-05-10 08:07:36', 41, 2),
(2000, '2026-05-10 08:07:36', 40, 2),
(2001, '2026-05-10 08:07:36', 39, 2),
(2002, '2026-05-10 08:07:36', 38, 2),
(2003, '2026-05-10 08:07:36', 22, 2),
(2004, '2026-05-10 08:07:36', 21, 2),
(2005, '2026-05-10 08:07:52', 37, 2),
(2006, '2026-05-10 08:07:52', 36, 2),
(2007, '2026-05-10 08:07:52', 35, 2),
(2008, '2026-05-10 08:07:52', 34, 2),
(2009, '2026-05-10 08:07:52', 33, 2),
(2010, '2026-05-10 08:07:52', 32, 2),
(2011, '2026-05-10 08:07:52', 31, 2),
(2012, '2026-05-10 08:07:52', 30, 2),
(2013, '2026-05-10 08:07:52', 28, 2),
(2014, '2026-05-10 08:07:52', 26, 2),
(2015, '2026-05-10 08:07:52', 25, 2),
(2016, '2026-05-10 08:07:52', 24, 2),
(2017, '2026-05-10 08:17:28', 23, 2),
(2018, '2026-05-10 08:17:28', 20, 2),
(2019, '2026-05-10 08:17:28', 19, 2),
(2020, '2026-05-10 08:17:28', 18, 2),
(2021, '2026-05-10 08:17:28', 17, 2),
(2022, '2026-05-10 08:17:28', 16, 2),
(2023, '2026-05-10 08:17:28', 15, 2),
(2024, '2026-05-10 08:17:28', 13, 2),
(2025, '2026-05-10 08:17:28', 12, 2),
(2026, '2026-05-10 08:17:28', 11, 2),
(2027, '2026-05-10 08:17:28', 10, 2),
(2028, '2026-05-10 08:17:28', 9, 2),
(2029, '2026-05-10 08:17:32', 8, 2),
(2030, '2026-05-10 08:17:32', 7, 2),
(2031, '2026-05-10 08:17:32', 6, 2),
(2032, '2026-05-10 08:17:32', 5, 2),
(2033, '2026-05-10 08:17:32', 4, 2),
(2034, '2026-05-10 08:17:32', 2, 2),
(2035, '2026-05-10 08:17:32', 1, 2),
(2036, '2026-05-10 08:25:24', 93, 3),
(2037, '2026-05-10 08:25:24', 92, 3),
(2038, '2026-05-10 08:25:24', 91, 3),
(2039, '2026-05-10 08:25:24', 90, 3),
(2040, '2026-05-10 08:25:24', 89, 3),
(2041, '2026-05-10 08:25:24', 88, 3),
(2042, '2026-05-10 08:25:24', 87, 3),
(2043, '2026-05-10 08:25:24', 85, 3),
(2044, '2026-05-10 08:25:24', 84, 3),
(2045, '2026-05-10 08:25:24', 83, 3),
(2046, '2026-05-10 08:25:24', 82, 3),
(2047, '2026-05-10 08:25:24', 81, 3),
(2048, '2026-05-10 08:25:24', 80, 3),
(2049, '2026-05-10 08:25:24', 79, 3),
(2050, '2026-05-10 08:25:24', 78, 3),
(2051, '2026-05-10 08:25:24', 74, 3),
(2052, '2026-05-10 08:25:24', 73, 3),
(2053, '2026-05-10 08:25:24', 72, 3),
(2054, '2026-05-10 08:25:24', 71, 3),
(2055, '2026-05-10 08:35:23', 93, 25),
(2056, '2026-05-10 08:35:23', 92, 25),
(2057, '2026-05-10 08:35:23', 91, 25),
(2058, '2026-05-10 08:35:23', 90, 25),
(2059, '2026-05-10 08:35:23', 89, 25),
(2060, '2026-05-10 08:35:23', 88, 25),
(2061, '2026-05-10 08:35:23', 87, 25),
(2062, '2026-05-10 08:35:23', 85, 25),
(2063, '2026-05-10 08:35:23', 84, 25),
(2064, '2026-05-10 08:35:23', 83, 25),
(2065, '2026-05-10 08:35:23', 82, 25),
(2066, '2026-05-10 08:35:23', 81, 25),
(2067, '2026-05-10 08:35:23', 78, 25),
(2068, '2026-05-10 08:35:23', 74, 25),
(2069, '2026-05-10 08:35:23', 73, 25),
(2070, '2026-05-10 08:35:23', 72, 25),
(2071, '2026-05-10 08:35:23', 71, 25),
(2072, '2026-05-10 08:35:23', 70, 25),
(2073, '2026-05-10 08:35:23', 69, 25),
(2074, '2026-05-10 08:35:50', 80, 25),
(2075, '2026-05-10 08:35:50', 79, 25),
(2076, '2026-05-10 08:35:50', 77, 25),
(2077, '2026-05-10 08:35:50', 76, 25),
(2078, '2026-05-10 08:35:50', 75, 25),
(2079, '2026-05-10 08:35:50', 68, 25),
(2080, '2026-05-10 08:35:50', 67, 25),
(2081, '2026-05-10 08:35:50', 66, 25),
(2082, '2026-05-10 08:35:50', 65, 25),
(2083, '2026-05-10 08:35:50', 64, 25),
(2084, '2026-05-10 08:35:50', 63, 25),
(2085, '2026-05-10 08:35:50', 62, 25),
(2086, '2026-05-10 08:35:50', 61, 25),
(2087, '2026-05-10 08:35:50', 60, 25),
(2088, '2026-05-10 08:35:50', 59, 25),
(2089, '2026-05-10 08:35:50', 58, 25),
(2090, '2026-05-10 08:35:50', 54, 25),
(2091, '2026-05-10 08:35:50', 53, 25),
(2092, '2026-05-10 08:35:50', 52, 25),
(2093, '2026-05-10 08:37:07', 93, 19),
(2094, '2026-05-10 08:37:07', 92, 19),
(2095, '2026-05-10 08:37:07', 91, 19),
(2096, '2026-05-10 08:37:07', 90, 19),
(2097, '2026-05-10 08:37:07', 89, 19),
(2098, '2026-05-10 08:37:07', 88, 19),
(2099, '2026-05-10 08:37:07', 87, 19),
(2100, '2026-05-10 08:37:07', 85, 19),
(2101, '2026-05-10 08:37:07', 84, 19),
(2102, '2026-05-10 08:37:07', 83, 19),
(2103, '2026-05-10 08:37:07', 82, 19),
(2104, '2026-05-10 08:37:07', 81, 19),
(2105, '2026-05-10 08:37:07', 80, 19),
(2106, '2026-05-10 08:37:07', 79, 19),
(2107, '2026-05-10 08:37:07', 74, 19),
(2108, '2026-05-10 08:37:07', 73, 19),
(2109, '2026-05-10 08:37:07', 72, 19),
(2110, '2026-05-10 08:37:07', 54, 19),
(2111, '2026-05-10 08:37:07', 53, 19),
(2112, '2026-05-10 08:38:12', 57, 25),
(2113, '2026-05-10 08:38:12', 51, 25),
(2114, '2026-05-10 08:38:12', 50, 25),
(2115, '2026-05-10 08:38:12', 49, 25),
(2116, '2026-05-10 08:38:12', 48, 25),
(2117, '2026-05-10 08:38:12', 47, 25),
(2118, '2026-05-10 08:38:12', 46, 25),
(2119, '2026-05-10 08:38:12', 45, 25),
(2120, '2026-05-10 08:38:12', 44, 25),
(2121, '2026-05-10 08:38:12', 43, 25),
(2122, '2026-05-10 08:38:12', 42, 25),
(2123, '2026-05-10 08:38:12', 41, 25),
(2124, '2026-05-10 08:38:12', 37, 25),
(2125, '2026-05-10 08:38:12', 36, 25),
(2126, '2026-05-10 08:38:12', 35, 25),
(2127, '2026-05-10 08:38:12', 34, 25),
(2128, '2026-05-10 08:38:12', 26, 25),
(2129, '2026-05-10 08:38:12', 24, 25),
(2130, '2026-05-10 08:38:12', 23, 25),
(2131, '2026-05-10 08:39:23', 63, 19),
(2132, '2026-05-10 08:39:23', 62, 19),
(2133, '2026-05-10 08:39:23', 61, 19),
(2134, '2026-05-10 08:39:23', 60, 19),
(2135, '2026-05-10 08:39:23', 59, 19),
(2136, '2026-05-10 08:39:23', 58, 19),
(2137, '2026-05-10 08:39:23', 57, 19),
(2138, '2026-05-10 08:39:23', 52, 19),
(2139, '2026-05-10 08:39:23', 51, 19),
(2140, '2026-05-10 08:39:23', 50, 19),
(2141, '2026-05-10 08:39:23', 49, 19),
(2142, '2026-05-10 08:39:23', 48, 19),
(2143, '2026-05-10 08:39:23', 15, 19),
(2144, '2026-05-10 08:39:39', 78, 19),
(2145, '2026-05-10 08:39:39', 77, 19),
(2146, '2026-05-10 08:39:39', 76, 19),
(2147, '2026-05-10 08:39:39', 75, 19),
(2148, '2026-05-10 08:39:39', 71, 19),
(2149, '2026-05-10 08:39:39', 70, 19),
(2150, '2026-05-10 08:39:39', 69, 19),
(2151, '2026-05-10 08:39:39', 68, 19),
(2152, '2026-05-10 08:39:39', 67, 19),
(2153, '2026-05-10 08:39:39', 66, 19),
(2154, '2026-05-10 08:39:39', 65, 19),
(2155, '2026-05-10 08:39:39', 64, 19),
(2156, '2026-05-10 08:39:39', 46, 19),
(2157, '2026-05-10 08:39:39', 35, 19),
(2158, '2026-05-10 08:39:39', 34, 19),
(2159, '2026-05-10 08:39:39', 26, 19),
(2160, '2026-05-10 08:39:39', 22, 19),
(2161, '2026-05-10 08:39:39', 21, 19),
(2162, '2026-05-10 08:39:39', 16, 19),
(2163, '2026-05-10 08:40:39', 19, 25),
(2164, '2026-05-10 08:40:39', 18, 25),
(2165, '2026-05-10 08:40:39', 17, 25),
(2166, '2026-05-10 08:40:39', 16, 25),
(2167, '2026-05-10 08:40:39', 15, 25),
(2168, '2026-05-10 08:40:39', 13, 25),
(2169, '2026-05-10 08:40:39', 12, 25),
(2170, '2026-05-10 08:40:39', 11, 25),
(2171, '2026-05-10 08:40:39', 10, 25),
(2172, '2026-05-10 08:40:39', 9, 25),
(2173, '2026-05-10 08:40:39', 8, 25),
(2174, '2026-05-10 08:40:39', 7, 25),
(2175, '2026-05-10 08:40:54', 40, 25),
(2176, '2026-05-10 08:40:54', 39, 25),
(2177, '2026-05-10 08:40:54', 38, 25),
(2178, '2026-05-10 08:40:54', 33, 25),
(2179, '2026-05-10 08:40:54', 32, 25),
(2180, '2026-05-10 08:40:54', 31, 25),
(2181, '2026-05-10 08:40:54', 30, 25),
(2182, '2026-05-10 08:40:54', 28, 25),
(2183, '2026-05-10 08:40:54', 25, 25),
(2184, '2026-05-10 08:40:54', 22, 25),
(2185, '2026-05-10 08:40:54', 21, 25),
(2186, '2026-05-10 08:40:54', 20, 25),
(2187, '2026-05-10 08:40:59', 6, 25),
(2188, '2026-05-10 08:40:59', 5, 25),
(2189, '2026-05-10 08:40:59', 4, 25),
(2190, '2026-05-10 08:40:59', 2, 25),
(2191, '2026-05-10 08:40:59', 1, 25);

-- --------------------------------------------------------

--
-- Table structure for table `posts_collaborative_users`
--

CREATE TABLE `posts_collaborative_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_colored_patterns`
--

CREATE TABLE `posts_colored_patterns` (
  `pattern_id` int(10) UNSIGNED NOT NULL,
  `type` enum('color','image') NOT NULL DEFAULT 'color',
  `background_image` varchar(256) DEFAULT NULL,
  `background_color_1` varchar(32) DEFAULT NULL,
  `background_color_2` varchar(32) DEFAULT NULL,
  `text_color` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts_colored_patterns`
--

INSERT INTO `posts_colored_patterns` (`pattern_id`, `type`, `background_image`, `background_color_1`, `background_color_2`, `text_color`) VALUES
(1, 'image', 'patterns/1.jpg', NULL, NULL, '#FFFFFF'),
(2, 'image', 'patterns/2.jpg', NULL, NULL, '#FFFFFF'),
(3, 'image', 'patterns/3.jpg', NULL, NULL, '#FFFFFF'),
(4, 'image', 'patterns/4.jpg', '', '', '#000000'),
(5, 'image', 'patterns/5.jpg', NULL, NULL, '#FFFFFF'),
(6, 'color', NULL, '#FF00FF', '#030355', '#FFF300'),
(7, 'color', '', '#FF003D', '#D73A3A', '#FFFFFF');

-- --------------------------------------------------------

--
-- Table structure for table `posts_comments`
--

CREATE TABLE `posts_comments` (
  `comment_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  `node_type` enum('post','photo','comment') NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` enum('user','page') NOT NULL,
  `text` longtext NOT NULL,
  `image` varchar(256) DEFAULT NULL,
  `voice_note` varchar(256) DEFAULT NULL,
  `time` datetime NOT NULL,
  `reaction_like_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_love_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_haha_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_yay_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_wow_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_sad_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_angry_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `replies` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `points_earned` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts_comments`
--

INSERT INTO `posts_comments` (`comment_id`, `node_id`, `node_type`, `user_id`, `user_type`, `text`, `image`, `voice_note`, `time`, `reaction_like_count`, `reaction_love_count`, `reaction_haha_count`, `reaction_yay_count`, `reaction_wow_count`, `reaction_sad_count`, `reaction_angry_count`, `replies`, `points_earned`) VALUES
(2, 2, 'post', 2, 'user', '', '', 'sounds/2026/05/sngine_039ed3d37394a6efa2632ee472136214.wav', '2026-05-08 16:15:41', 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(7, 19, 'post', 2, 'user', 'Ohhh coach wange... thank you for supporting a brother', '', '', '2026-05-09 06:04:08', 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(8, 19, 'post', 7, 'user', 'Coach lwaki temutemdeka abaana ffe tukadiye ate Twatandise okuzala buli mwaka tugenda kuwereza ', '', '', '2026-05-09 06:07:37', 0, 1, 0, 0, 0, 0, 0, 1, '0'),
(9, 20, 'post', 2, 'user', 'Am seeing a new slim boss here', '', '', '2026-05-09 06:08:42', 0, 0, 0, 0, 0, 0, 0, 1, '0'),
(10, 20, 'post', 2, 'user', 'Welcome aboard my blaaza', '', '', '2026-05-09 06:08:52', 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(11, 8, 'comment', 2, 'user', 'Ssebo gwe wakaddiwa tosaambiddeko yadde ku Kataka FC hahahaha', '', '', '2026-05-09 06:24:39', 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(12, 26, 'post', 2, 'user', 'Welcome aboard little bro', '', '', '2026-05-09 06:44:41', 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(13, 9, 'comment', 9, 'user', 'Yah man...blessah fire', '', '', '2026-05-09 07:21:16', 0, 1, 0, 0, 0, 0, 0, 0, '0'),
(14, 34, 'post', 2, 'user', 'Wrlcome aboard my brother', '', '', '2026-05-09 09:06:43', 0, 0, 0, 0, 0, 0, 0, 1, '0'),
(15, 14, 'comment', 13, 'user', 'Thanks brother ', '', '', '2026-05-09 09:19:28', 0, 1, 0, 0, 0, 0, 0, 0, '0'),
(16, 36, 'post', 2, 'user', 'Congra congra kito kyange', '', '', '2026-05-09 11:44:04', 0, 2, 0, 0, 0, 0, 0, 0, '0'),
(17, 48, 'post', 2, 'user', 'Welcome aboard my brother ', '', '', '2026-05-09 13:10:10', 1, 0, 0, 0, 0, 0, 0, 0, '0'),
(18, 19, 'post', 20, 'user', 'Mwebabakubye', '', '', '2026-05-09 14:59:27', 0, 1, 0, 0, 0, 0, 0, 0, '0'),
(19, 49, 'post', 2, 'user', 'Welcome aboard my brother ', '', '', '2026-05-09 16:03:06', 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(20, 51, 'post', 9, 'user', 'Welcome on Board broda', '', '', '2026-05-09 17:48:24', 0, 1, 0, 0, 0, 0, 0, 0, '0'),
(21, 51, 'post', 2, 'user', 'Have a happy stay here bro ❤️ ', '', '', '2026-05-09 18:39:56', 0, 1, 0, 0, 0, 0, 0, 0, '0'),
(22, 37, 'post', 19, 'user', 'Blessings ', '', '', '2026-05-09 19:06:06', 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(23, 24, 'post', 2, 'user', 'Go go go my brother ❤️', '', '', '2026-05-09 19:10:27', 0, 1, 0, 0, 0, 0, 0, 0, '0'),
(24, 45, 'post', 24, 'user', 'Thanks bro', '', '', '2026-05-09 21:49:09', 0, 1, 0, 0, 0, 0, 0, 0, '0'),
(25, 74, 'post', 24, 'user', 'Thanks ', '', '', '2026-05-09 21:57:14', 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(26, 76, 'post', 17, 'user', 'Never give up brother ✍️', '', '', '2026-05-10 04:27:57', 1, 0, 0, 0, 0, 0, 0, 0, '0'),
(27, 77, 'post', 19, 'user', '', '', 'sounds/2026/05/kiptalk_d7305ab7bafee5392ae619899609f4f6.wav', '2026-05-10 04:46:57', 0, 1, 0, 0, 0, 0, 0, 1, '0'),
(28, 27, 'comment', 2, 'user', 'Yeah testing 1,2😂😂', '', '', '2026-05-10 06:09:33', 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(29, 93, 'post', 2, 'user', 'Lito boss Kinene Jnr 🩵', '', '', '2026-05-10 08:06:34', 0, 0, 0, 0, 0, 0, 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `posts_comments_reactions`
--

CREATE TABLE `posts_comments_reactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reaction` varchar(32) DEFAULT 'like',
  `reaction_time` datetime DEFAULT NULL,
  `points_earned` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts_comments_reactions`
--

INSERT INTO `posts_comments_reactions` (`id`, `comment_id`, `user_id`, `reaction`, `reaction_time`, `points_earned`) VALUES
(1, 3, 2, 'haha', '2026-05-09 05:48:15', '0'),
(2, 6, 2, 'haha', '2026-05-09 05:53:46', '0'),
(3, 8, 2, 'love', '2026-05-09 06:24:11', '0'),
(4, 13, 2, 'love', '2026-05-09 07:26:24', '0'),
(5, 15, 2, 'love', '2026-05-09 09:20:03', '0'),
(6, 16, 15, 'love', '2026-05-09 17:23:28', '0'),
(7, 16, 2, 'love', '2026-05-09 18:41:57', '0'),
(8, 21, 21, 'love', '2026-05-09 18:54:47', '0'),
(9, 20, 21, 'love', '2026-05-09 18:54:49', '0'),
(10, 23, 2, 'love', '2026-05-09 21:50:13', '0'),
(11, 24, 17, 'love', '2026-05-10 04:28:53', '0'),
(12, 26, 2, 'like', '2026-05-10 04:29:29', '0'),
(13, 18, 2, 'love', '2026-05-10 04:33:55', '0'),
(14, 17, 19, 'like', '2026-05-10 04:54:23', '0'),
(15, 27, 2, 'love', '2026-05-10 06:09:11', '0');

-- --------------------------------------------------------

--
-- Table structure for table `posts_courses`
--

CREATE TABLE `posts_courses` (
  `course_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `fees` float UNSIGNED NOT NULL,
  `fees_currency` int(10) UNSIGNED NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `cover_image` varchar(256) NOT NULL,
  `available` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_courses_applications`
--

CREATE TABLE `posts_courses_applications` (
  `application_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `applied_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_files`
--

CREATE TABLE `posts_files` (
  `file_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `source` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_funding`
--

CREATE TABLE `posts_funding` (
  `funding_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(256) NOT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `raised_amount` float NOT NULL DEFAULT 0,
  `total_donations` int(11) NOT NULL DEFAULT 0,
  `cover_image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_funding_donors`
--

CREATE TABLE `posts_funding_donors` (
  `donation_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `donation_amount` float UNSIGNED NOT NULL DEFAULT 0,
  `donation_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_hidden`
--

CREATE TABLE `posts_hidden` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_jobs`
--

CREATE TABLE `posts_jobs` (
  `job_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `salary_minimum` float UNSIGNED NOT NULL,
  `salary_minimum_currency` int(10) UNSIGNED NOT NULL,
  `salary_maximum` float UNSIGNED NOT NULL,
  `salary_maximum_currency` int(10) UNSIGNED NOT NULL,
  `pay_salary_per` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `question_1_type` varchar(100) DEFAULT NULL,
  `question_1_title` varchar(256) DEFAULT NULL,
  `question_1_choices` text DEFAULT NULL,
  `question_2_type` varchar(100) DEFAULT NULL,
  `question_2_title` varchar(256) DEFAULT NULL,
  `question_2_choices` text DEFAULT NULL,
  `question_3_type` varchar(100) DEFAULT NULL,
  `question_3_title` varchar(256) DEFAULT NULL,
  `question_3_choices` text DEFAULT NULL,
  `cover_image` varchar(256) NOT NULL,
  `available` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_jobs_applications`
--

CREATE TABLE `posts_jobs_applications` (
  `application_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `work_place` varchar(100) DEFAULT NULL,
  `work_position` varchar(100) DEFAULT NULL,
  `work_description` text DEFAULT NULL,
  `work_from` varchar(100) DEFAULT NULL,
  `work_to` varchar(100) DEFAULT NULL,
  `work_now` enum('0','1') DEFAULT NULL,
  `question_1_answer` text DEFAULT NULL,
  `question_2_answer` text DEFAULT NULL,
  `question_3_answer` text DEFAULT NULL,
  `cv` varchar(256) DEFAULT NULL,
  `applied_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_links`
--

CREATE TABLE `posts_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `source_url` text NOT NULL,
  `source_host` varchar(256) NOT NULL,
  `source_title` text NOT NULL,
  `source_text` mediumtext NOT NULL,
  `source_thumbnail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_live`
--

CREATE TABLE `posts_live` (
  `live_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `video_thumbnail` varchar(256) NOT NULL,
  `agora_uid` int(11) NOT NULL,
  `agora_channel_name` varchar(256) NOT NULL,
  `agora_resource_id` text DEFAULT NULL,
  `agora_sid` varchar(256) DEFAULT NULL,
  `agora_file` text DEFAULT NULL,
  `live_ended` enum('0','1') NOT NULL DEFAULT '0',
  `live_recorded` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_live_users`
--

CREATE TABLE `posts_live_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_media`
--

CREATE TABLE `posts_media` (
  `media_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `source_url` mediumtext NOT NULL,
  `source_provider` varchar(256) NOT NULL,
  `source_type` varchar(256) NOT NULL,
  `source_title` text DEFAULT NULL,
  `source_text` mediumtext DEFAULT NULL,
  `source_html` mediumtext DEFAULT NULL,
  `source_thumbnail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_merits`
--

CREATE TABLE `posts_merits` (
  `merit_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_offers`
--

CREATE TABLE `posts_offers` (
  `offer_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `discount_type` varchar(32) NOT NULL,
  `discount_percent` int(10) UNSIGNED NOT NULL,
  `discount_amount` varchar(100) NOT NULL,
  `buy_x` varchar(100) NOT NULL,
  `get_y` varchar(100) NOT NULL,
  `spend_x` varchar(100) NOT NULL,
  `amount_y` varchar(100) NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `price` float UNSIGNED NOT NULL DEFAULT 0,
  `thumbnail` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_paid`
--

CREATE TABLE `posts_paid` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_photos`
--

CREATE TABLE `posts_photos` (
  `photo_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `album_id` int(10) UNSIGNED DEFAULT NULL,
  `source` varchar(256) NOT NULL,
  `blur` enum('0','1') NOT NULL DEFAULT '0',
  `pinned` enum('0','1') NOT NULL DEFAULT '0',
  `reaction_like_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_love_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_haha_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_yay_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_wow_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_sad_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reaction_angry_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts_photos`
--

INSERT INTO `posts_photos` (`photo_id`, `post_id`, `album_id`, `source`, `blur`, `pinned`, `reaction_like_count`, `reaction_love_count`, `reaction_haha_count`, `reaction_yay_count`, `reaction_wow_count`, `reaction_sad_count`, `reaction_angry_count`, `comments`) VALUES
(1, 1, 1, 'photos/2026/05/sngine_263b26ae0bc99f3a366eebc6b740ec8b.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(2, 2, 2, 'photos/2026/05/sngine_2028f7086112e7be21563e57d81dd057.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(3, 4, 3, 'photos/2026/05/kiptalk_3b408278b4b1da81d7ad0831e64c03e3.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(4, 5, 4, 'photos/2026/05/kiptalk_7b55b2acbcec2bb580f73017c8ef8f97.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(5, 6, 4, 'photos/2026/05/kiptalk_68e660648b5324ee2ca802b3118fb552.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(6, 7, 5, 'photos/2026/05/kiptalk_8cdaf205615c99f4fc3d6d0656013d4c.jpeg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(7, 8, 6, 'photos/2026/05/kiptalk_f72f8b55ac321ab5c9ec36e15cc7486a.webp', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(8, 9, 7, 'photos/2026/05/kiptalk_cb068d6707e8985360b8454fdfe49674.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(9, 10, 8, 'photos/2026/05/kiptalk_c6d0ab74142a72ca4851a62d86dc5923.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(10, 11, 7, 'photos/2026/05/kiptalk_c6d0ab74142a72ca4851a62d86dc5923.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(11, 12, 9, 'photos/2026/05/kiptalk_cb068d6707e8985360b8454fdfe49674.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(12, 15, 10, 'photos/2026/05/kiptalk_4a245a977fd688881a8004b3af62c420.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(13, 16, 10, 'photos/2026/05/kiptalk_9697ec25af715fe9351034827c993e6b.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(14, 17, 11, 'photos/2026/05/kiptalk_d4b1dab4e07ebf31d6e7b959d7c40f92.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(15, 18, 11, 'photos/2026/05/kiptalk_cd566a56a91d1356ccf8a8e4bd0a07a2.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(16, 19, 12, 'photos/2026/05/kiptalk_ef778d9204144bea69be5ddd37d22499.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(17, 20, 13, 'photos/2026/05/kiptalk_d4b1dab4e07ebf31d6e7b959d7c40f92.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(18, 21, 14, 'photos/2026/05/kiptalk_c66f49d8e824c34dcff0dd22a6fc4827.jpeg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(19, 22, 15, 'photos/2026/05/kiptalk_f5f380ebb96ecb470a9a44b299015acd.jpeg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(20, 23, 16, 'photos/2026/05/kiptalk_033ec12562cb07782038b8b751bbe9b5.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(21, 23, 16, 'photos/2026/05/kiptalk_d3865472675910cc94e61d2da027f858.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(22, 23, 16, 'photos/2026/05/kiptalk_be820ff011ce25157a266aa55d99e950.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(23, 23, 16, 'photos/2026/05/kiptalk_f01b99773f7b6f7d58e884145e48dcc1.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(24, 23, 16, 'photos/2026/05/kiptalk_85afa9eeeac697b4858839c93cf0fc8a.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(25, 23, 16, 'photos/2026/05/kiptalk_ab7441967b9bc20037d86a9cd3cd8eef.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(26, 23, 16, 'photos/2026/05/kiptalk_2cb9010435746ced7d4467758c8b2d04.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(27, 23, 16, 'photos/2026/05/kiptalk_fd32addc2f949e64a092a32544e17241.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(28, 23, 16, 'photos/2026/05/kiptalk_b8cdfd7595ca3ed340e64c41b6a58616.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(29, 23, 16, 'photos/2026/05/kiptalk_47402393fbc4367a4ffeabda230b8864.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(30, 23, 16, 'photos/2026/05/kiptalk_012166071d480e6178549977c8d7016a.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(31, 23, 16, 'photos/2026/05/kiptalk_76eaf588775a26063ba34f1c5e8c9ccb.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(32, 23, 16, 'photos/2026/05/kiptalk_9f99947bd9e26e8149bed175175834b5.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(33, 23, 16, 'photos/2026/05/kiptalk_e0d4e547ba1c625f9ab074e19bdef09e.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(34, 23, 16, 'photos/2026/05/kiptalk_7ff1d13d49f1ae53c6cb7e62201dec54.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(35, 23, 16, 'photos/2026/05/kiptalk_e4ef7c115c24dad33c2429f95ea32d53.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(36, 23, 16, 'photos/2026/05/kiptalk_e5fc5461380ae6e47ef7b89c222c10da.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(37, 23, 16, 'photos/2026/05/kiptalk_e0c5ee258adcdbdf4eae1f0e9769e001.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(38, 23, 16, 'photos/2026/05/kiptalk_3444ad91a8896c9293be02e355177a80.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(39, 23, 16, 'photos/2026/05/kiptalk_459be287765886932a93a9f03bc8abbf.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(40, 23, 16, 'photos/2026/05/kiptalk_4acd05497fedfb14f9d6d47aca3c3be3.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(41, 24, 17, 'photos/2026/05/kiptalk_9e770bbfc19f8e6d959cf9b442f493c7.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(42, 25, 18, 'photos/2026/05/kiptalk_7958bc08668246fc3aefaf938d1a5b93.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(43, 26, 19, 'photos/2026/05/kiptalk_d5d3918c88560d7829518e1e73bb329f.webp', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(45, 28, 18, 'photos/2026/05/kiptalk_dfe79026771567ecbb9603a8e6d3c89e.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(47, 30, 2, 'photos/2026/05/sngine_263b26ae0bc99f3a366eebc6b740ec8b.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(48, 31, 2, 'photos/2026/05/kiptalk_be1bcd0f310348d080507e2afcbccefe.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(49, 32, 2, 'photos/2026/05/sngine_2028f7086112e7be21563e57d81dd057.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(50, 34, 20, 'photos/2026/05/kiptalk_ca1ed7352ff8abbbfc59193b06d38c51.png', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(51, 35, 21, 'photos/2026/05/kiptalk_eb31eb2fec49d5bd513fd5b198de6137.png', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(52, 35, 21, 'photos/2026/05/kiptalk_c56778dd102db48e2b56615e5a92f462.jpeg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(53, 35, 21, 'photos/2026/05/kiptalk_24533fce648a93d3d80132eb66a48032.jpeg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(54, 36, 22, 'photos/2026/05/kiptalk_aa688fcbf680861b607f9543d5c0670f.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(55, 37, 23, 'photos/2026/05/kiptalk_eecace166e9c90c01f4f85e976ec0d35.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(56, 38, 24, 'photos/2026/05/kiptalk_1ea082f439008d6f540a149e09b87def.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(57, 39, 24, 'photos/2026/05/kiptalk_295a0da67934bd9b4c711d2455f7c0e9.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(58, 40, 24, 'photos/2026/05/kiptalk_33d54e4860456ca86dbf7615a57e8c36.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(59, 41, 25, 'photos/2026/05/kiptalk_25c0847808e64427552ee5386e9c2f52.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(60, 42, 25, 'photos/2026/05/kiptalk_25c0847808e64427552ee5386e9c2f52.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(61, 43, 26, 'photos/2026/05/kiptalk_9471bd16af0cc44476d920fe6580befa.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(62, 44, 27, 'photos/2026/05/kiptalk_1c7df23194d5eae7dd5e0793f324289a.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(63, 45, 27, 'photos/2026/05/kiptalk_53f63c2ef81069e86924bdfa4858c647.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(64, 46, 28, 'photos/2026/05/kiptalk_735efe9a6f769f8dcb73e0bd7d6fa63d.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(65, 47, 29, 'photos/2026/05/kiptalk_693e199ff41e19cdcbfeccbc1c436c9c.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(66, 48, 30, 'photos/2026/05/kiptalk_ffe96cc89ade74d20655d307df00e747.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(67, 49, 31, 'photos/2026/05/kiptalk_50c241b950f5c0c100605df2fada606a.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(68, 50, 16, 'photos/2026/05/kiptalk_cae8a87d76f5ad739468bd8f2ee8734a.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(69, 51, 32, 'photos/2026/05/kiptalk_5c770df972676496568f710d30c32942.jpeg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(70, 52, 33, 'photos/2026/05/kiptalk_8d4c616cc498a54cc509eb73c636e0e2.jpeg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(71, 53, 34, 'photos/2026/05/kiptalk_1495c3e05317fc25bcb2e604b61e97dc.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(72, 54, 35, 'photos/2026/05/kiptalk_ca1ebd92ee32f7506591043f1a94f877.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(75, 57, 36, 'photos/2026/05/kiptalk_559a0dd14e61bf2c97e1b03e386b4daa.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(76, 58, 37, 'photos/2026/05/kiptalk_cae8a87d76f5ad739468bd8f2ee8734a.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(77, 59, 16, 'photos/2026/05/kiptalk_1017df5ba69fcedd1510bf24abc30a88.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(78, 60, 16, 'photos/2026/05/kiptalk_67e031460b1bc4fd9f7a3dcbb28f341f.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(79, 61, 16, 'photos/2026/05/kiptalk_4c2a4f9c1398f30af0cf635ee9b4aed1.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(80, 62, 16, 'photos/2026/05/kiptalk_f1286c24707762ee2be7f68ca2b0cf0e.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(81, 63, 16, 'photos/2026/05/kiptalk_f167d70159e9434cb3090fcbe658f1f3.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(82, 63, 16, 'photos/2026/05/kiptalk_dcfcc80fe344e9026ee647de5b84eb1b.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(83, 63, 16, 'photos/2026/05/kiptalk_293108ead23e8a9b14e302320345dc1f.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(84, 63, 16, 'photos/2026/05/kiptalk_3b17447549a3f04b0f3f22aec5136bac.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(85, 63, 16, 'photos/2026/05/kiptalk_963a64c03157384951cdaf358b068213.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(86, 63, 16, 'photos/2026/05/kiptalk_832aa256ba69a83c3d20c934b0a3be51.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(87, 63, 16, 'photos/2026/05/kiptalk_c2fe9719ac9852d9a4b14135254b3f2a.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(88, 63, 16, 'photos/2026/05/kiptalk_30785519fd9b472018493ac7520d763a.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(89, 63, 16, 'photos/2026/05/kiptalk_8c0644dd5d53b200ac6f66ea7fb10562.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(90, 63, 16, 'photos/2026/05/kiptalk_13eca645b1b022b36bbdfbb99603f2ce.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(91, 63, 16, 'photos/2026/05/kiptalk_8cad08f1329f13ff2e9e2d37ffd89186.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(92, 63, 16, 'photos/2026/05/kiptalk_2fa74fd2097436058909f5892f799461.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(93, 63, 16, 'photos/2026/05/kiptalk_bdfa85effc7646b1bcad67d8e77e6ea6.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(94, 64, 16, 'photos/2026/05/kiptalk_a2a6e6530f315463fde1ecf7139886fa.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(95, 64, 16, 'photos/2026/05/kiptalk_dc569ffed499acfb2a668d9df2e88dde.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(96, 64, 16, 'photos/2026/05/kiptalk_367735a758c0f1790f162f81f9a2283a.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(97, 64, 16, 'photos/2026/05/kiptalk_c1fa6e78d7381ed6e2c3d5ee9435fab8.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(98, 64, 16, 'photos/2026/05/kiptalk_2ec4f573f7ec6ce2f752bf5ee050b382.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(99, 65, 16, 'photos/2026/05/kiptalk_49f696ec2d4b248762cdb575456bc9c3.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(100, 65, 16, 'photos/2026/05/kiptalk_edc6df2c6721d7b5986a57c09f8671e0.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(101, 65, 16, 'photos/2026/05/kiptalk_1c6eb8c0accc744a14f26a1e3a2a10bc.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(102, 65, 16, 'photos/2026/05/kiptalk_31f07ab32618f72239fa2a4de5b759fc.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(103, 65, 16, 'photos/2026/05/kiptalk_51332ec58d6b630bdb33bd4038fb95b1.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(104, 72, 38, 'photos/2026/05/kiptalk_eb7624779ead51a28147e2dc06517b6b.jpeg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(105, 73, 39, 'photos/2026/05/kiptalk_7229ec4b742b64f02c2c8550b389be6d.jpeg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(106, 74, 40, 'photos/2026/05/kiptalk_d9494b140ba3bb5d9a918fe13bb50d98.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(107, 75, NULL, 'photos/2026/05/kiptalk_34f86d8417b43b84b0f9851c8b56b4e3.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(108, 77, 36, 'photos/2026/05/kiptalk_e1b8995d56f98e4490dca2188ee72408.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(109, 78, 30, 'photos/2026/05/kiptalk_6ec549e519f1b53982345bf395e90c69.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(110, 79, 41, 'photos/2026/05/kiptalk_7f75fd98efd5716577ca4d3617a03066.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(111, 80, 41, 'photos/2026/05/kiptalk_b8b2c822bac0ce0db66d22c30fe4e9fa.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(112, 81, 42, 'photos/2026/05/kiptalk_02173a5012822516bc7a728aa7715fd9.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(113, 82, 36, 'photos/2026/05/kiptalk_d92543ab403c3007a39f2bddda616a5f.png', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(114, 85, 2, 'photos/2026/05/kiptalk_c42e1b4059c965a8512125287b279b15.png', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(116, 87, 2, 'photos/2026/05/kiptalk_c42e1b4059c965a8512125287b279b15.png', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(117, 88, 43, 'photos/2026/05/kiptalk_a46b6970f7b8bccc4de43ee5b2366b5e.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(118, 89, 43, 'photos/2026/05/kiptalk_a46b6970f7b8bccc4de43ee5b2366b5e.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(119, 90, 43, 'photos/2026/05/kiptalk_473b5807626f347f3f0da766ea6192a7.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(120, 91, 44, 'photos/2026/05/kiptalk_33ecbbe175306ba5023390d560e05f2e.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(121, 92, 44, 'photos/2026/05/kiptalk_65a9045df2321086a1a47610037ff1af.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0),
(122, 93, 45, 'photos/2026/05/kiptalk_631dc04838f2c7efbd9dece49010c3dc.jpg', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts_photos_albums`
--

CREATE TABLE `posts_photos_albums` (
  `album_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` enum('user','page') NOT NULL,
  `in_group` enum('0','1') NOT NULL DEFAULT '0',
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `in_event` enum('0','1') NOT NULL DEFAULT '0',
  `event_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(256) NOT NULL,
  `privacy` enum('me','friends','public','custom') NOT NULL DEFAULT 'public'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts_photos_albums`
--

INSERT INTO `posts_photos_albums` (`album_id`, `user_id`, `user_type`, `in_group`, `group_id`, `in_event`, `event_id`, `title`, `privacy`) VALUES
(1, 2, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(2, 2, 'user', '0', NULL, '0', NULL, 'Cover Photos', 'public'),
(3, 1, 'page', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(4, 1, 'page', '0', NULL, '0', NULL, 'Cover Photos', 'public'),
(5, 2, 'page', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(6, 2, 'page', '0', NULL, '0', NULL, 'Cover Photos', 'public'),
(7, 3, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(8, 3, 'user', '0', NULL, '0', NULL, 'Timeline Photos', 'public'),
(9, 3, 'user', '0', NULL, '0', NULL, 'Cover Photos', 'public'),
(10, 8, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(11, 9, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(12, 10, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(13, 9, 'user', '0', NULL, '0', NULL, 'Cover Photos', 'public'),
(14, 7, 'user', '0', NULL, '0', NULL, 'Cover Photos', 'public'),
(15, 7, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(16, 10, 'user', '0', NULL, '0', NULL, 'Timeline Photos', 'public'),
(17, 9, 'user', '0', NULL, '0', NULL, 'Timeline Photos', 'public'),
(18, 1, 'page', '0', NULL, '0', NULL, 'Timeline Photos', 'public'),
(19, 11, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(20, 13, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(21, 13, 'user', '0', NULL, '0', NULL, 'Timeline Photos', 'public'),
(22, 15, 'user', '0', NULL, '0', NULL, 'Timeline Photos', 'public'),
(23, 15, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(24, 17, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(25, 17, 'user', '0', NULL, '0', NULL, 'Cover Photos', 'public'),
(26, 3, 'page', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(27, 3, 'page', '0', NULL, '0', NULL, 'Cover Photos', 'public'),
(28, 18, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(29, 19, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(30, 19, 'user', '0', NULL, '0', NULL, 'Timeline Photos', 'public'),
(31, 20, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(32, 21, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(33, 21, 'user', '0', NULL, '0', NULL, 'Cover Photos', 'public'),
(34, 4, 'page', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(35, 4, 'page', '0', NULL, '0', NULL, 'Cover Photos', 'public'),
(36, 2, 'user', '0', NULL, '0', NULL, 'Timeline Photos', 'public'),
(37, 10, 'user', '0', NULL, '0', NULL, 'Cover Photos', 'public'),
(38, 22, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(39, 22, 'user', '0', NULL, '0', NULL, 'Cover Photos', 'public'),
(40, 24, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(41, 25, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(42, 25, 'user', '0', NULL, '0', NULL, 'Cover Photos', 'public'),
(43, 26, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(44, 26, 'user', '0', NULL, '0', NULL, 'Cover Photos', 'public'),
(45, 18, 'user', '0', NULL, '0', NULL, 'Timeline Photos', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `posts_photos_reactions`
--

CREATE TABLE `posts_photos_reactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reaction` varchar(32) NOT NULL DEFAULT 'like',
  `reaction_time` datetime DEFAULT NULL,
  `points_earned` enum('0','1') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_polls`
--

CREATE TABLE `posts_polls` (
  `poll_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `votes` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_polls_options`
--

CREATE TABLE `posts_polls_options` (
  `option_id` int(10) UNSIGNED NOT NULL,
  `poll_id` int(10) UNSIGNED NOT NULL,
  `text` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_polls_options_users`
--

CREATE TABLE `posts_polls_options_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `poll_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_products`
--

CREATE TABLE `posts_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(256) NOT NULL,
  `price` float UNSIGNED NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `category_id` int(10) UNSIGNED NOT NULL,
  `status` enum('new','old') NOT NULL DEFAULT 'new',
  `location` varchar(255) NOT NULL,
  `available` enum('0','1') NOT NULL DEFAULT '1',
  `is_digital` enum('0','1') NOT NULL DEFAULT '0',
  `product_download_url` text DEFAULT NULL,
  `product_file_source` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts_products`
--

INSERT INTO `posts_products` (`product_id`, `post_id`, `name`, `price`, `quantity`, `category_id`, `status`, `location`, `available`, `is_digital`, `product_download_url`, `product_file_source`) VALUES
(1, 75, 'iPhone 13', 220, 1, 5, 'old', '256 Genuine Gadgets', '1', '0', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `posts_reactions`
--

CREATE TABLE `posts_reactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reaction` varchar(32) NOT NULL DEFAULT 'like',
  `reaction_time` datetime DEFAULT NULL,
  `points_earned` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts_reactions`
--

INSERT INTO `posts_reactions` (`id`, `post_id`, `user_id`, `reaction`, `reaction_time`, `points_earned`) VALUES
(1, 5, 2, 'love', '2026-05-08 22:01:47', '0'),
(2, 13, 2, 'love', '2026-05-09 00:01:44', '0'),
(3, 2, 3, 'love', '2026-05-09 04:20:52', '0'),
(4, 9, 3, 'love', '2026-05-09 05:24:22', '0'),
(5, 9, 2, 'love', '2026-05-09 05:25:01', '0'),
(6, 16, 2, 'love', '2026-05-09 05:52:58', '0'),
(7, 15, 2, 'love', '2026-05-09 05:53:02', '0'),
(9, 13, 8, 'love', '2026-05-09 05:55:34', '0'),
(10, 19, 2, 'love', '2026-05-09 06:03:48', '0'),
(11, 20, 2, 'love', '2026-05-09 06:08:28', '0'),
(12, 23, 2, 'love', '2026-05-09 06:16:25', '0'),
(13, 22, 2, 'love', '2026-05-09 06:16:40', '0'),
(14, 21, 2, 'love', '2026-05-09 06:16:46', '0'),
(15, 25, 2, 'love', '2026-05-09 06:42:03', '0'),
(16, 26, 2, 'love', '2026-05-09 06:44:28', '0'),
(17, 33, 2, 'haha', '2026-05-09 08:33:04', '0'),
(18, 11, 13, 'like', '2026-05-09 09:13:46', '0'),
(19, 34, 13, 'like', '2026-05-09 09:14:10', '0'),
(20, 1, 13, 'love', '2026-05-09 09:26:39', '0'),
(21, 35, 2, 'love', '2026-05-09 09:33:51', '0'),
(22, 34, 2, 'love', '2026-05-09 10:06:00', '0'),
(23, 37, 15, 'love', '2026-05-09 11:12:50', '0'),
(24, 11, 15, 'love', '2026-05-09 11:13:23', '0'),
(25, 9, 15, 'love', '2026-05-09 11:13:45', '0'),
(26, 36, 2, 'love', '2026-05-09 11:43:54', '0'),
(28, 12, 19, 'love', '2026-05-09 13:04:50', '0'),
(29, 11, 19, 'love', '2026-05-09 13:04:59', '0'),
(30, 48, 2, 'love', '2026-05-09 13:10:03', '0'),
(31, 47, 2, 'love', '2026-05-09 13:10:20', '0'),
(32, 20, 19, 'love', '2026-05-09 13:13:16', '0'),
(33, 36, 19, 'love', '2026-05-09 13:21:47', '0'),
(34, 1, 19, 'love', '2026-05-09 13:22:10', '0'),
(35, 49, 2, 'love', '2026-05-09 16:02:54', '0'),
(36, 50, 2, 'love', '2026-05-09 16:13:22', '0'),
(37, 28, 9, 'like', '2026-05-09 17:56:29', '0'),
(38, 25, 9, 'like', '2026-05-09 17:56:51', '0'),
(39, 48, 9, 'like', '2026-05-09 17:57:52', '0'),
(40, 54, 2, 'love', '2026-05-09 18:37:57', '0'),
(41, 53, 2, 'love', '2026-05-09 18:38:09', '0'),
(42, 54, 19, 'love', '2026-05-09 18:38:38', '0'),
(43, 51, 2, 'love', '2026-05-09 18:39:32', '0'),
(44, 57, 19, 'love', '2026-05-09 19:04:39', '0'),
(45, 45, 19, 'love', '2026-05-09 19:04:55', '0'),
(46, 37, 19, 'love', '2026-05-09 19:05:53', '0'),
(47, 24, 2, 'love', '2026-05-09 19:10:13', '0'),
(48, 10, 2, 'love', '2026-05-09 19:11:33', '0'),
(49, 71, 2, 'love', '2026-05-09 21:28:31', '0'),
(50, 68, 2, 'love', '2026-05-09 21:29:08', '0'),
(51, 65, 2, 'love', '2026-05-09 21:29:16', '0'),
(52, 64, 2, 'love', '2026-05-09 21:29:24', '0'),
(53, 63, 2, 'love', '2026-05-09 21:29:30', '0'),
(54, 62, 2, 'love', '2026-05-09 21:29:35', '0'),
(55, 61, 2, 'love', '2026-05-09 21:29:42', '0'),
(56, 60, 2, 'love', '2026-05-09 21:29:45', '0'),
(57, 37, 2, 'love', '2026-05-09 21:30:11', '0'),
(58, 73, 2, 'love', '2026-05-09 21:30:26', '0'),
(59, 72, 2, 'love', '2026-05-09 21:30:32', '0'),
(62, 57, 17, 'love', '2026-05-09 21:45:47', '0'),
(63, 45, 17, 'love', '2026-05-09 21:46:11', '0'),
(64, 34, 17, 'love', '2026-05-09 21:46:32', '0'),
(65, 20, 17, 'love', '2026-05-09 21:46:37', '0'),
(66, 51, 17, 'like', '2026-05-09 21:46:43', '0'),
(67, 48, 17, 'like', '2026-05-09 21:46:50', '0'),
(69, 37, 17, 'love', '2026-05-09 21:46:59', '0'),
(70, 36, 17, 'love', '2026-05-09 21:47:09', '0'),
(71, 73, 17, 'like', '2026-05-09 21:47:18', '0'),
(72, 72, 17, 'like', '2026-05-09 21:47:23', '0'),
(73, 45, 2, 'love', '2026-05-09 21:49:52', '0'),
(74, 74, 2, 'love', '2026-05-09 21:56:35', '0'),
(75, 34, 19, 'love', '2026-05-09 23:54:02', '0'),
(76, 57, 2, 'love', '2026-05-10 03:58:43', '0'),
(77, 76, 2, 'love', '2026-05-10 04:22:33', '0'),
(78, 76, 17, 'love', '2026-05-10 04:27:25', '0'),
(79, 75, 17, 'love', '2026-05-10 04:28:09', '0'),
(80, 74, 17, 'love', '2026-05-10 04:28:15', '0'),
(81, 75, 2, 'love', '2026-05-10 04:29:51', '0'),
(82, 77, 19, 'like', '2026-05-10 04:47:30', '0'),
(83, 40, 19, 'like', '2026-05-10 04:49:16', '0'),
(84, 39, 19, 'like', '2026-05-10 04:49:20', '0'),
(85, 38, 19, 'like', '2026-05-10 04:49:23', '0'),
(86, 51, 19, 'like', '2026-05-10 04:54:06', '0'),
(87, 74, 19, 'like', '2026-05-10 04:54:46', '0'),
(88, 24, 19, 'like', '2026-05-10 04:54:54', '0'),
(89, 19, 25, 'like', '2026-05-10 05:53:55', '0'),
(90, 78, 10, 'love', '2026-05-10 06:03:46', '0'),
(91, 76, 10, 'love', '2026-05-10 06:04:00', '0'),
(92, 38, 25, 'love', '2026-05-10 06:24:50', '0'),
(94, 28, 25, 'like', '2026-05-10 06:25:11', '0'),
(95, 39, 25, 'love', '2026-05-10 06:25:18', '0'),
(96, 57, 25, 'love', '2026-05-10 06:25:21', '0'),
(97, 13, 25, 'love', '2026-05-10 06:25:36', '0'),
(98, 84, 2, 'love', '2026-05-10 06:25:49', '0'),
(99, 45, 25, 'love', '2026-05-10 06:25:51', '0'),
(100, 76, 25, 'love', '2026-05-10 06:25:55', '0'),
(101, 84, 25, 'love', '2026-05-10 06:26:11', '0'),
(103, 77, 2, 'like', '2026-05-10 06:28:20', '0'),
(104, 45, 26, 'love', '2026-05-10 06:48:16', '0'),
(105, 76, 26, 'love', '2026-05-10 06:48:27', '0'),
(106, 36, 26, 'love', '2026-05-10 06:48:32', '0'),
(107, 92, 19, 'love', '2026-05-10 07:13:45', '0'),
(108, 91, 19, 'love', '2026-05-10 07:13:51', '0'),
(109, 25, 18, 'love', '2026-05-10 07:49:29', '0'),
(110, 93, 26, 'love', '2026-05-10 08:03:35', '0'),
(111, 93, 2, 'love', '2026-05-10 08:05:22', '0'),
(112, 93, 19, 'like', '2026-05-10 08:37:21', '0'),
(113, 89, 19, 'love', '2026-05-10 08:37:31', '0'),
(114, 88, 19, 'love', '2026-05-10 08:37:34', '0'),
(115, 36, 25, 'love', '2026-05-10 08:40:27', '0'),
(116, 34, 25, 'love', '2026-05-10 08:40:34', '0');

-- --------------------------------------------------------

--
-- Table structure for table `posts_reels`
--

CREATE TABLE `posts_reels` (
  `reel_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `source` varchar(256) NOT NULL,
  `source_240p` varchar(256) DEFAULT NULL,
  `source_360p` varchar(256) DEFAULT NULL,
  `source_480p` varchar(256) DEFAULT NULL,
  `source_720p` varchar(256) DEFAULT NULL,
  `source_1080p` varchar(256) DEFAULT NULL,
  `source_1440p` varchar(256) DEFAULT NULL,
  `source_2160p` varchar(256) DEFAULT NULL,
  `thumbnail` varchar(256) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts_reels`
--

INSERT INTO `posts_reels` (`reel_id`, `post_id`, `source`, `source_240p`, `source_360p`, `source_480p`, `source_720p`, `source_1080p`, `source_1440p`, `source_2160p`, `thumbnail`, `views`) VALUES
(2, 13, 'videos/2026/05/kiptalk_2ebd840fb6486c3b3b6accb3cb42fd9d.mp4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 34),
(3, 33, 'videos/2026/05/kiptalk_0e934502e178dd5f97b336237b412e2e.mp4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 18),
(4, 76, 'videos/2026/05/kiptalk_a6ae01e090b1a97d0d23687433d71782.mp4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photos/2026/05/kiptalk_e35597d51c2c8ca2a2b802cf24e0fa61.jpg', 75),
(5, 84, 'videos/2026/05/kiptalk_de553365f426850176b2e9cac1ada71e.mp4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photos/2026/05/kiptalk_6a95adaeeb48af5247312c835c2c361f.jpg', 20);

-- --------------------------------------------------------

--
-- Table structure for table `posts_saved`
--

CREATE TABLE `posts_saved` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_videos`
--

CREATE TABLE `posts_videos` (
  `video_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `source` varchar(256) NOT NULL,
  `source_240p` varchar(256) DEFAULT NULL,
  `source_360p` varchar(256) DEFAULT NULL,
  `source_480p` varchar(256) DEFAULT NULL,
  `source_720p` varchar(256) DEFAULT NULL,
  `source_1080p` varchar(256) DEFAULT NULL,
  `source_1440p` varchar(256) DEFAULT NULL,
  `source_2160p` varchar(256) DEFAULT NULL,
  `thumbnail` varchar(256) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts_videos`
--

INSERT INTO `posts_videos` (`video_id`, `post_id`, `category_id`, `source`, `source_240p`, `source_360p`, `source_480p`, `source_720p`, `source_1080p`, `source_1440p`, `source_2160p`, `thumbnail`, `views`) VALUES
(1, 66, 1, 'videos/2026/05/kiptalk_b3a38996545e72c47153e0f076ea1648.mp4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 27),
(2, 67, 1, 'videos/2026/05/kiptalk_904ebf875dcfd6fe5afb4139205a8790.mp4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 26),
(3, 68, 1, 'videos/2026/05/kiptalk_fbce0947c7b2e480879b945c307c0726.mp4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 8),
(4, 69, 1, 'videos/2026/05/kiptalk_fe9c7d83e207482117492eadc07ad0ae.mp4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 8),
(5, 70, 1, 'videos/2026/05/kiptalk_df5a71111d4bbe1a4c238df8569846b6.mp4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 6),
(6, 71, 1, 'videos/2026/05/kiptalk_242a83d48c0b98d9ed0ea3b0632fa673.mp4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 12),
(7, 83, 1, 'videos/2026/05/kiptalk_e0e99e7872f1b4a9610c48aab4802a1c.mp4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `posts_videos_categories`
--

CREATE TABLE `posts_videos_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_parent_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(256) NOT NULL,
  `category_description` text NOT NULL,
  `category_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts_videos_categories`
--

INSERT INTO `posts_videos_categories` (`category_id`, `category_parent_id`, `category_name`, `category_description`, `category_order`) VALUES
(1, 0, 'General', '', 1),
(2, 0, 'Comedy', '', 2),
(3, 0, 'Economics and Trade', '', 3),
(4, 0, 'Education', '', 4),
(5, 0, 'Entertainment', '', 5),
(6, 0, 'Movies and Animation', '', 6),
(7, 0, 'Gaming', '', 7),
(8, 0, 'History and Facts', '', 8),
(9, 0, 'Live Style', '', 9),
(10, 0, 'Natural', '', 10),
(11, 0, 'News and Politics', '', 11),
(12, 0, 'People and Nations', '', 12),
(13, 0, 'Pets and Animals', '', 13),
(14, 0, 'Places and Regions', '', 14),
(15, 0, 'Science and Technology', '', 15),
(16, 0, 'Sport', '', 16),
(17, 0, 'Travel and Events', '', 17),
(18, 0, 'Other', '', 18);

-- --------------------------------------------------------

--
-- Table structure for table `posts_views`
--

CREATE TABLE `posts_views` (
  `view_id` int(10) UNSIGNED NOT NULL,
  `view_date` datetime NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `guest_ip` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts_views`
--

INSERT INTO `posts_views` (`view_id`, `view_date`, `post_id`, `user_id`, `guest_ip`) VALUES
(1, '2026-05-08 09:59:48', 1, 2, NULL),
(2, '2026-05-08 12:07:14', 1, NULL, '142.250.32.7'),
(3, '2026-05-08 12:07:14', 1, NULL, '66.102.8.198'),
(4, '2026-05-08 13:38:40', 2, 2, NULL),
(5, '2026-05-08 13:42:52', 3, 2, NULL),
(6, '2026-05-08 20:12:08', 3, 1, NULL),
(7, '2026-05-08 20:12:08', 2, 1, NULL),
(8, '2026-05-08 20:12:08', 1, 1, NULL),
(9, '2026-05-08 21:56:11', 4, 2, NULL),
(10, '2026-05-08 21:58:03', 5, 2, NULL),
(11, '2026-05-08 21:59:24', 6, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  `node_type` varchar(32) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `reason` text NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `reports_categories`
--

CREATE TABLE `reports_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_parent_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(256) NOT NULL,
  `category_description` text NOT NULL,
  `category_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `reports_categories`
--

INSERT INTO `reports_categories` (`category_id`, `category_parent_id`, `category_name`, `category_description`, `category_order`) VALUES
(1, 0, 'Nudity', '', 1),
(2, 0, 'Violence', '', 2),
(3, 0, 'Harassment', '', 3),
(4, 0, 'Suicide or Self-Injury', '', 4),
(5, 0, 'False Information', '', 5),
(6, 0, 'Spam', '', 6),
(7, 0, 'Unauthorized Sales', '', 7),
(8, 0, 'Hate Speech', '', 8),
(9, 0, 'Terrorism', '', 9),
(10, 0, 'Something Else', '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  `node_type` varchar(32) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `rate` smallint(6) NOT NULL,
  `review` text NOT NULL,
  `reply` text DEFAULT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `reviews_photos`
--

CREATE TABLE `reviews_photos` (
  `photo_id` int(10) UNSIGNED NOT NULL,
  `review_id` int(10) UNSIGNED NOT NULL,
  `source` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_post_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sneak_peaks`
--

CREATE TABLE `sneak_peaks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  `node_type` varchar(32) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `static_pages`
--

CREATE TABLE `static_pages` (
  `page_id` int(10) UNSIGNED NOT NULL,
  `page_title` varchar(256) NOT NULL,
  `page_is_redirect` enum('0','1') NOT NULL DEFAULT '0',
  `page_redirect_url` varchar(256) DEFAULT NULL,
  `page_url` varchar(64) DEFAULT NULL,
  `page_text` mediumtext NOT NULL,
  `page_in_footer` enum('0','1') NOT NULL DEFAULT '1',
  `page_in_sidebar` enum('0','1') NOT NULL DEFAULT '0',
  `page_icon` varchar(256) DEFAULT NULL,
  `page_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `static_pages`
--

INSERT INTO `static_pages` (`page_id`, `page_title`, `page_is_redirect`, `page_redirect_url`, `page_url`, `page_text`, `page_in_footer`, `page_in_sidebar`, `page_icon`, `page_order`) VALUES
(1, 'About', '0', NULL, 'about', '&lt;p data-path-to-node=&quot;2&quot;&gt;Welcome to KipTalk, the messaging and communication app designed to bridge distances and foster meaningful connections in a simple, secure, and intuitive way. In today&#039;s fast-paced, digital world, staying in touch with the people who matter most &amp;ndash; friends, family, colleagues, and communities &amp;ndash; shouldn&#039;t be complicated. KipTalk is here to make sure it isn&#039;t.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;3&quot;&gt;Our name, &lt;b data-path-to-node=&quot;3&quot; data-index-in-node=&quot;10&quot;&gt;KipTalk&lt;/b&gt;, embodies our mission. &quot;Kip&quot; hints at the idea of &quot;keeping&quot; &amp;ndash; keeping in touch, keeping memories alive, and keeping conversations going. The &quot;K&quot; itself, nestled within our speech bubble logo, symbolizes the core of every message: knowledge, kindness, and that vital spark of connection. &quot;Talk&quot; is what we do best, facilitating seamless communication across various formats.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;4&quot;&gt;&lt;b data-path-to-node=&quot;4&quot; data-index-in-node=&quot;0&quot;&gt;Our Core Beliefs:&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul data-path-to-node=&quot;5&quot;&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;5,0,0&quot;&gt;&lt;b data-path-to-node=&quot;5,0,0&quot; data-index-in-node=&quot;0&quot;&gt;Simplicity First:&lt;/b&gt; We believe that powerful communication doesn&#039;t need to be complex. KipTalk is designed with an intuitive interface, making it easy for anyone, regardless of their tech-savviness, to start talking.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;5,1,0&quot;&gt;&lt;b data-path-to-node=&quot;5,1,0&quot; data-index-in-node=&quot;0&quot;&gt;Security &amp;amp; Privacy:&lt;/b&gt; Your conversations are your own. We prioritize robust security measures and privacy protocols to ensure your messages, calls, and shared moments remain confidential and accessible only to you and your intended recipients.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;5,2,0&quot;&gt;&lt;b data-path-to-node=&quot;5,2,0&quot; data-index-in-node=&quot;0&quot;&gt;Reliability:&lt;/b&gt; Whether you&#039;re sending a quick text, making an important call, or sharing a heartfelt video, KipTalk is built on a stable platform you can count on, ensuring your messages are delivered and your calls are clear.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;5,3,0&quot;&gt;&lt;b data-path-to-node=&quot;5,3,0&quot; data-index-in-node=&quot;0&quot;&gt;Fostering Connection:&lt;/b&gt; KipTalk is more than just an app; it&#039;s a tool to build and strengthen relationships. We aim to create a space where conversations flourish and genuine connections are nurtured.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p data-path-to-node=&quot;6&quot;&gt;&lt;b data-path-to-node=&quot;6&quot; data-index-in-node=&quot;0&quot;&gt;What KipTalk Offers (Key Features - Customize Based on Reality):&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;7&quot;&gt;While features may evolve, KipTalk is committed to providing essential communication tools:&lt;/p&gt;\r\n&lt;ul data-path-to-node=&quot;8&quot;&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;8,0,0&quot;&gt;&lt;b data-path-to-node=&quot;8,0,0&quot; data-index-in-node=&quot;0&quot;&gt;Instant Messaging:&lt;/b&gt; Send real-time text messages, emojis, stickers, and GIFs to individuals or groups.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;8,1,0&quot;&gt;&lt;b data-path-to-node=&quot;8,1,0&quot; data-index-in-node=&quot;0&quot;&gt;High-Quality Voice &amp;amp; Video Calls:&lt;/b&gt; Connect face-to-face (or voice-to-voice) with clear, reliable calls, even on varying network conditions.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;8,2,0&quot;&gt;&lt;b data-path-to-node=&quot;8,2,0&quot; data-index-in-node=&quot;0&quot;&gt;Group Chats:&lt;/b&gt; Create and manage group conversations for families, friends, project teams, or any community group.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;8,3,0&quot;&gt;&lt;b data-path-to-node=&quot;8,3,0&quot; data-index-in-node=&quot;0&quot;&gt;Media Sharing:&lt;/b&gt; Effortlessly share photos, videos, and documents to enrich your conversations.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;8,4,0&quot;&gt;&lt;b data-path-to-node=&quot;8,4,0&quot; data-index-in-node=&quot;0&quot;&gt;(Optional: Broadcasts/Channels):&lt;/b&gt; Stay informed with broadcast lists or follow channels for updates from organizations, creators, or topics of interest. (Add if applicable).&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;8,5,0&quot;&gt;&lt;b data-path-to-node=&quot;8,5,0&quot; data-index-in-node=&quot;0&quot;&gt;(Optional: Location Sharing):&lt;/b&gt; Securely share your location with trusted contacts. (Add if applicable).&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;8,6,0&quot;&gt;&lt;b data-path-to-node=&quot;8,6,0&quot; data-index-in-node=&quot;0&quot;&gt;(Optional: Integration):&lt;/b&gt; (Mention integration with other platforms or calendars if applicable).&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p data-path-to-node=&quot;9&quot;&gt;&lt;b data-path-to-node=&quot;9&quot; data-index-in-node=&quot;0&quot;&gt;Our Story (Illustrative - Fill in Actual Details):&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;10&quot;&gt;KipTalk was born out of a simple observation: despite the myriad of communication tools available, many people still felt a sense of digital fragmentation. Conversations were scattered across different platforms, and sometimes, the simple act of connecting felt clunky. A small team of passionate developers and communicators set out to change that. They envisioned a unified space where people could simply... talk. After months of careful design, development, and testing, KipTalk was launched with the goal of bringing simplicity back to communication. Today, we&#039;re constantly striving to enhance KipTalk based on feedback from our growing user community.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;11&quot;&gt;&lt;b data-path-to-node=&quot;11&quot; data-index-in-node=&quot;0&quot;&gt;Our Commitment to You:&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;12&quot;&gt;We are dedicated to continuously improving KipTalk to meet your evolving communication needs. We value your feedback and strive to be responsive to the features you care about most. We&#039;re committed to remaining a secure, reliable, and user-friendly platform that helps you keep in touch with your world.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;13&quot;&gt;Thank you for choosing KipTalk. We hope it helps you stay connected, share moments, and have meaningful conversations, every single day.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;14&quot;&gt;&lt;b data-path-to-node=&quot;14&quot; data-index-in-node=&quot;0&quot;&gt;Join the KipTalk Conversation!&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;14&quot;&gt;&lt;b data-path-to-node=&quot;14&quot; data-index-in-node=&quot;0&quot;&gt;&lt;/b&gt;&lt;/p&gt;', '1', '0', '', 1),
(2, 'Terms Of Use', '0', NULL, 'terms', '&lt;p data-path-to-node=&quot;5&quot;&gt;&lt;b data-path-to-node=&quot;5&quot; data-index-in-node=&quot;0&quot;&gt;Effective Date: 9th May 2026&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;6&quot;&gt;&lt;b data-path-to-node=&quot;6&quot; data-index-in-node=&quot;0&quot;&gt;PLEASE READ THESE TERMS AND CONDITIONS CAREFULLY BEFORE USING KIPTALK.&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;7&quot;&gt;&lt;b data-path-to-node=&quot;7&quot; data-index-in-node=&quot;0&quot;&gt;1. ACCEPTANCE OF TERMS&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;8&quot;&gt;This Terms and Conditions agreement (&amp;ldquo;Terms&amp;rdquo;, &amp;ldquo;Agreement&amp;rdquo;) is a legally binding contract between you (&amp;ldquo;User&amp;rdquo;, &amp;ldquo;you&amp;rdquo;, or &amp;ldquo;your&amp;rdquo;) and [KipTalk Inc./KipTalk Communications Ltd] (&amp;ldquo;KipTalk&amp;rdquo;, &amp;ldquo;we&amp;rdquo;, &amp;ldquo;us&amp;rdquo;, or &amp;ldquo;our&amp;rdquo;), governing your access to and use of the KipTalk mobile application, website, and associated services (collectively, the &amp;ldquo;Service&amp;rdquo;).&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;9&quot;&gt;By downloading, installing, accessing, or using the Service, you represent that you: a) Are at least [e.g., 13/16/18] years of age (or the minimum legal age required in your jurisdiction to form a binding contract) and have the legal capacity to enter into this Agreement. b) Have read, understood, and agree to be bound by these Terms. c) If you are using the Service on behalf of an entity, organization, or company, you represent and warrant that you have the authority to bind that entity to these Terms.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;10&quot;&gt;If you do not agree with any part of these Terms, you must immediately stop using the Service and delete the KipTalk application from your device(s).&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;11&quot;&gt;&lt;b data-path-to-node=&quot;11&quot; data-index-in-node=&quot;0&quot;&gt;2. MODIFICATIONS TO TERMS&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;12&quot;&gt;KipTalk reserves the right, at its sole discretion, to modify, amend, or replace these Terms at any time. We will notify you of any material changes by [e.g., posting the updated Terms within the Service, sending an in-app notification, or via email]. The &quot;Effective Date&quot; at the top will indicate when the last revisions occurred.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;13&quot;&gt;Your continued use of the Service after any such changes constitute your acceptance of the revised Terms. It is your responsibility to review the Terms periodically.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;14&quot;&gt;&lt;b data-path-to-node=&quot;14&quot; data-index-in-node=&quot;0&quot;&gt;3. PRIVACY AND DATA PROTECTION&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;15&quot;&gt;Your privacy is paramount to us. Our data practices, including how we collect, use, and share information about you, are detailed in our &lt;b data-path-to-node=&quot;15&quot; data-index-in-node=&quot;137&quot;&gt;Privacy Policy&lt;/b&gt;, which is incorporated into these Terms by reference. Please review the Privacy Policy carefully. By using the Service, you consent to the collection and use of your data as outlined in that policy.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;16&quot;&gt;&lt;b data-path-to-node=&quot;16&quot; data-index-in-node=&quot;0&quot;&gt;4. ELIGIBILITY AND ACCOUNT REGISTRATION&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;17&quot;&gt;To access certain features of the Service, you may be required to register for an account. When you create an account, you agree to: a) Provide accurate, current, and complete information. b) Maintain the security of your password and accept all risks of unauthorized access to your account. c) Promptly update your account information if any details change. d) Not share your account credentials or permit anyone else to use your account. e) Be solely responsible for all activity that occurs under your account.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;18&quot;&gt;KipTalk reserves the right to refuse registration or cancel an account at its discretion.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;19&quot;&gt;&lt;b data-path-to-node=&quot;19&quot; data-index-in-node=&quot;0&quot;&gt;5. DESCRIPTION OF SERVICE&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;20&quot;&gt;KipTalk is a communication platform offering features such as [list core features, e.g., instant messaging, voice calls, video calls, media sharing, group chats, etc.]. The availability and performance of these features may depend on your device, network, and location.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;21&quot;&gt;KipTalk reserves the right to modify, suspend, or discontinue the Service, or any part thereof, at any time, with or without notice.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;22&quot;&gt;&lt;b data-path-to-node=&quot;22&quot; data-index-in-node=&quot;0&quot;&gt;6. USER CONDUCT AND PROHIBITED USES&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;23&quot;&gt;You are solely responsible for your conduct and any content that you transmit, share, or upload using the Service (&amp;ldquo;User Content&amp;rdquo;). You agree not to use the Service to:&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;24&quot;&gt;a) &lt;b data-path-to-node=&quot;24&quot; data-index-in-node=&quot;3&quot;&gt;Violate Laws:&lt;/b&gt; Engage in any activity that is illegal or promotes illegal activities. b) &lt;b data-path-to-node=&quot;24&quot; data-index-in-node=&quot;91&quot;&gt;Harm or Exploit Minors:&lt;/b&gt; Transmit, store, or share content that harms, exploits, or endangers minors in any way. c) &lt;b data-path-to-node=&quot;24&quot; data-index-in-node=&quot;206&quot;&gt;Infringe Rights:&lt;/b&gt; Post or share content that infringes upon the intellectual property, privacy, publicity, or other rights of any third party. d) &lt;b data-path-to-node=&quot;24&quot; data-index-in-node=&quot;351&quot;&gt;Transmit Harmful Content:&lt;/b&gt; Upload, post, or transmit content that is obscene, hateful, discriminatory, harassing, threatening, defamatory, or otherwise offensive. e) &lt;b data-path-to-node=&quot;24&quot; data-index-in-node=&quot;516&quot;&gt;Engage in Harassment:&lt;/b&gt; Harass, abuse, or stalk other users. f) &lt;b data-path-to-node=&quot;24&quot; data-index-in-node=&quot;578&quot;&gt;Distribute Malware:&lt;/b&gt; Distribute viruses, spyware, or other harmful computer code. g) &lt;b data-path-to-node=&quot;24&quot; data-index-in-node=&quot;662&quot;&gt;Interfere with Service:&lt;/b&gt; Attempt to interfere with, disrupt, or negatively affect the Service or servers. h) &lt;b data-path-to-node=&quot;24&quot; data-index-in-node=&quot;770&quot;&gt;Use Automation:&lt;/b&gt; Use automated means (e.g., bots, scripts) to access the Service or collect information without authorization. i) &lt;b data-path-to-node=&quot;24&quot; data-index-in-node=&quot;899&quot;&gt;Violate Privacy:&lt;/b&gt; Collect personal data about other users without their consent. j) &lt;b data-path-to-node=&quot;24&quot; data-index-in-node=&quot;982&quot;&gt;Spam:&lt;/b&gt; Send unsolicited messages, advertisements, or promotional materials (spam). k) &lt;b data-path-to-node=&quot;24&quot; data-index-in-node=&quot;1067&quot;&gt;Misrepresent Identity:&lt;/b&gt; Impersonate any person or entity or misrepresent your affiliation.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;25&quot;&gt;KipTalk reserves the right (but assumes no obligation) to monitor User Content and may remove content or suspend/terminate accounts that violate this Agreement.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;26&quot;&gt;&lt;b data-path-to-node=&quot;26&quot; data-index-in-node=&quot;0&quot;&gt;7. USER CONTENT AND INTELLECTUAL PROPERTY&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;27&quot;&gt;a) &lt;b data-path-to-node=&quot;27&quot; data-index-in-node=&quot;3&quot;&gt;Your Ownership:&lt;/b&gt; You retain all ownership rights to the User Content you create or share through the Service. b) &lt;b data-path-to-node=&quot;27&quot; data-index-in-node=&quot;115&quot;&gt;License to KipTalk:&lt;/b&gt; By submitting, posting, or displaying User Content, you grant KipTalk a worldwide, non-exclusive, royalty-free, fully paid-up license to use, reproduce, modify, adapt, publish, translate, and distribute such User Content [add limitations here based on service type, e.g., solely for the purpose of operating, protecting, and improving the Service]. c) &lt;b data-path-to-node=&quot;27&quot; data-index-in-node=&quot;487&quot;&gt;KipTalk&amp;rsquo;s Property:&lt;/b&gt; All rights, title, and interest in and to the Service (including the KipTalk name, logo, software, and overall design) are and will remain the exclusive property of KipTalk and its licensors. The &quot;KipTalk&quot; trademark and logo are protected. You may not use KipTalk&#039;s trademarks or copyrighted material without prior written permission.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;28&quot;&gt;&lt;b data-path-to-node=&quot;28&quot; data-index-in-node=&quot;0&quot;&gt;8. FEES, PAYMENTS, AND SUBSCRIPTIONS (If Applicable)&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;29&quot;&gt;Certain features of KipTalk may require payment (e.g., premium subscriptions, specific in-app purchases).&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;30&quot;&gt;a) &lt;b data-path-to-node=&quot;30&quot; data-index-in-node=&quot;3&quot;&gt;Pricing:&lt;/b&gt; All prices are as listed within the Service and are subject to change. b) &lt;b data-path-to-node=&quot;30&quot; data-index-in-node=&quot;86&quot;&gt;Payments:&lt;/b&gt; Payments are processed through [mention the app store platforms, e.g., Apple App Store or Google Play Store, or a specific third-party processor]. You agree to their terms and conditions regarding payments. c) &lt;b data-path-to-node=&quot;30&quot; data-index-in-node=&quot;306&quot;&gt;Taxes:&lt;/b&gt; Prices generally exclude applicable taxes unless stated otherwise. d) &lt;b data-path-to-node=&quot;30&quot; data-index-in-node=&quot;383&quot;&gt;Subscriptions:&lt;/b&gt; If you purchase a subscription, it will automatically renew at the end of the subscription period unless canceled at least 24 hours before the renewal date. You can manage and cancel subscriptions through your app store settings. e) &lt;b data-path-to-node=&quot;30&quot; data-index-in-node=&quot;631&quot;&gt;Refunds:&lt;/b&gt; All purchases are final, and refunds are subject to the policies of the relevant app store [Apple App Store Refund Policy / Google Play Refund Policy] or the specific third-party processor. KipTalk generally does not provide refunds.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;31&quot;&gt;&lt;b data-path-to-node=&quot;31&quot; data-index-in-node=&quot;0&quot;&gt;9. THIRD-PARTY SERVICES AND LINKS&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;32&quot;&gt;The Service may contain links to third-party websites, applications, or services that are not owned or controlled by KipTalk. KipTalk has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third-party services. By using the Service, you acknowledge and agree that KipTalk is not responsible for the availability of such external sites or resources.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;33&quot;&gt;&lt;b data-path-to-node=&quot;33&quot; data-index-in-node=&quot;0&quot;&gt;10. DISCLAIMER OF WARRANTIES&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;34&quot;&gt;THE SERVICE IS PROVIDED ON AN &quot;AS IS&quot; AND &quot;AS AVAILABLE&quot; BASIS. TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, KIPTALK EXPRESSLY DISCLAIMS ALL WARRANTIES OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;35&quot;&gt;KIPTALK DOES NOT WARRANT THAT (I) THE SERVICE WILL BE UNINTERRUPTED, TIMELY, SECURE, OR ERROR-FREE; (II) THE RESULTS THAT MAY BE OBTAINED FROM THE USE OF THE SERVICE WILL BE ACCURATE OR RELIABLE; (III) THE QUALITY OF ANY PRODUCTS, SERVICES, INFORMATION, OR OTHER MATERIAL PURCHASED OR OBTAINED BY YOU THROUGH THE SERVICE WILL MEET YOUR EXPECTATIONS.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;36&quot;&gt;&lt;b data-path-to-node=&quot;36&quot; data-index-in-node=&quot;0&quot;&gt;11. LIMITATION OF LIABILITY&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;37&quot;&gt;TO THE FULLEST EXTENT PERMITTED BY APPLICABLE LAW, KIPTALK AND ITS AFFILIATES, OFFICERS, EMPLOYEES, AGENTS, AND LICENSORS SHALL NOT BE LIABLE FOR ANY INDIRECT, INCIDENTAL, SPECIAL, CONSEQUENTIAL, OR PUNITIVE DAMAGES, INCLUDING, WITHOUT LIMITATION, LOSS OF PROFITS, DATA, USE, GOODWILL, OR OTHER INTANGIBLE LOSSES, RESULTING FROM:&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;38&quot;&gt;(I) YOUR ACCESS TO OR USE OF OR INABILITY TO ACCESS OR USE THE SERVICE; (II) ANY CONDUCT OR CONTENT OF ANY THIRD PARTY ON THE SERVICE; (III) ANY CONTENT OBTAINED FROM THE SERVICE; AND (IV) UNAUTHORIZED ACCESS, USE, OR ALTERATION OF YOUR TRANSMISSIONS OR CONTENT, WHETHER BASED ON WARRANTY, CONTRACT, TORT (INCLUDING NEGLIGENCE), OR ANY OTHER LEGAL THEORY, WHETHER OR NOT KIPTALK HAS BEEN INFORMED OF THE POSSIBILITY OF SUCH DAMAGE.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;39&quot;&gt;IN NO EVENT SHALL KIPTALK&amp;rsquo;S TOTAL LIABILITY TO YOU FOR ALL CLAIMS EXCEED THE AMOUNT PAID BY YOU, IF ANY, FOR ACCESSING THE SERVICE DURING THE [e.g., TWELVE (12)] MONTHS IMMEDIATELY PRECEDING THE CLAIM.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;40&quot;&gt;&lt;b data-path-to-node=&quot;40&quot; data-index-in-node=&quot;0&quot;&gt;12. INDEMNIFICATION&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;41&quot;&gt;You agree to indemnify, defend, and hold harmless KipTalk and its affiliates, officers, employees, agents, and licensors from and against any and all claims, demands, damages, costs, liabilities, and expenses (including reasonable attorneys&#039; fees) arising out of or in connection with: a) Your use of the Service. b) Your violation of these Terms. c) Your User Content. d) Your violation of any rights of another party, including intellectual property rights.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;42&quot;&gt;&lt;b data-path-to-node=&quot;42&quot; data-index-in-node=&quot;0&quot;&gt;13. TERMINATION&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;43&quot;&gt;We may terminate or suspend your account and access to the Service immediately, without prior notice or liability, for any reason whatsoever, including, without limitation, if you breach these Terms.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;44&quot;&gt;Upon termination, your right to use the Service will immediately cease. If you wish to terminate your account, you may simply discontinue using the Service. All provisions of the Terms which by their nature should survive termination shall survive termination, including, without limitation, ownership provisions, warranty disclaimers, indemnity, and limitations of liability.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;45&quot;&gt;&lt;b data-path-to-node=&quot;45&quot; data-index-in-node=&quot;0&quot;&gt;14. GOVERNING LAW AND JURISDICTION&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;46&quot;&gt;These Terms shall be governed by and construed in accordance with the laws of [State/Country, e.g., the State of Delaware], without regard to its conflict of law provisions. Any legal suit, action, or proceeding arising out of or related to these Terms or the Service shall be instituted exclusively in the federal or state courts located in [City, State].&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;47&quot;&gt;&lt;b data-path-to-node=&quot;47&quot; data-index-in-node=&quot;0&quot;&gt;15. DISPUTE RESOLUTION AND ARBITRATION (Highly Recommended Clause)&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;48&quot;&gt;&lt;b data-path-to-node=&quot;48&quot; data-index-in-node=&quot;0&quot;&gt;PLEASE READ THIS SECTION CAREFULLY. IT AFFECTS YOUR RIGHTS, INCLUDING YOUR RIGHT TO FILE A LAWSUIT IN COURT.&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;49&quot;&gt;Most concerns can be resolved quickly by contacting our support team at [e.g., support@kiptalk.com]. If we cannot resolve a dispute, you and KipTalk agree to resolve any claim arising out of or relating to these Terms or the Service through final and binding arbitration, rather than in court [except for small claims matters as specified below].&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;50&quot;&gt;a) &lt;b data-path-to-node=&quot;50&quot; data-index-in-node=&quot;3&quot;&gt;Binding Arbitration:&lt;/b&gt; You agree that any dispute will be administered by the American Arbitration Association (AAA) under its Commercial Arbitration Rules and, where appropriate, the AAA&amp;rsquo;s Supplementary Procedures for Consumer-Related Disputes. The arbitration will take place in [City, State], or your hometown if required by AAA rules. b) &lt;b data-path-to-node=&quot;50&quot; data-index-in-node=&quot;343&quot;&gt;Class Action Waiver:&lt;/b&gt; YOU AGREE THAT EACH PARTY MAY ONLY BRING CLAIMS AGAINST THE OTHER IN AN INDIVIDUAL CAPACITY AND NOT AS A PLAINTIFF OR CLASS MEMBER IN ANY PURPORTED CLASS OR REPRESENTATIVE PROCEEDING. c) &lt;b data-path-to-node=&quot;50&quot; data-index-in-node=&quot;551&quot;&gt;Exceptions:&lt;/b&gt; Notwithstanding the above, either party may bring an individual action in a small claims court. Also, either party may seek injunctive relief from a court to protect its intellectual property rights.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;51&quot;&gt;&lt;b data-path-to-node=&quot;51&quot; data-index-in-node=&quot;0&quot;&gt;16. ENTIRE AGREEMENT&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;52&quot;&gt;These Terms, together with the Privacy Policy and any other legal notices published by KipTalk, constitute the entire agreement between you and KipTalk regarding the Service and supersede all prior and contemporaneous understandings, agreements, representations, and warranties, both written and oral.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;53&quot;&gt;&lt;b data-path-to-node=&quot;53&quot; data-index-in-node=&quot;0&quot;&gt;17. WAIVER AND SEVERABILITY&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;54&quot;&gt;No waiver by KipTalk of any term or condition set out in these Terms shall be deemed a further or continuing waiver of such term or condition, and any failure of KipTalk to assert a right or provision under these Terms shall not constitute a waiver of such right or provision. If any provision of these Terms is held by a court or other tribunal of competent jurisdiction to be invalid, illegal, or unenforceable for any reason, such provision shall be eliminated or limited to the minimum extent necessary so that the remaining provisions of the Terms will continue in full force and effect.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;55&quot;&gt;&lt;b data-path-to-node=&quot;55&quot; data-index-in-node=&quot;0&quot;&gt;18. CONTACT US&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;56&quot;&gt;If you have any questions or feedback regarding these Terms, please contact us at:&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;57&quot;&gt;&lt;b data-path-to-node=&quot;57&quot; data-index-in-node=&quot;0&quot;&gt;[KipTalk Inc./Company Name]&lt;/b&gt; [Mailing Address] &lt;b data-path-to-node=&quot;57&quot; data-index-in-node=&quot;46&quot;&gt;Email:&lt;/b&gt; [legal@kiptalk.com / info@kiptalk.com]&lt;/p&gt;', '1', '0', '', 2),
(3, 'Privacy Policy', '0', NULL, 'privacy', '&lt;p data-path-to-node=&quot;4&quot;&gt;&lt;b data-path-to-node=&quot;4&quot; data-index-in-node=&quot;0&quot;&gt;Last Updated: 9th May 2026&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;5&quot;&gt;&lt;b data-path-to-node=&quot;5&quot; data-index-in-node=&quot;0&quot;&gt;1. INTRODUCTION&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;6&quot;&gt;Welcome to KipTalk, operated by [KipTalk Communications Ltd/KipTalk Inc.] (&amp;ldquo;KipTalk,&amp;rdquo; &amp;ldquo;we,&amp;rdquo; &amp;ldquo;us,&amp;rdquo; or &amp;ldquo;our&amp;rdquo;). We respect your privacy and are committed to protecting the personal information you share with us.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;7&quot;&gt;This Privacy Policy describes our practices regarding the collection, use, and disclosure of your information when you use the KipTalk mobile application, our website located at [Website URL], and associated services (collectively, the &amp;ldquo;Service&amp;rdquo;).&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;8&quot;&gt;By accessing or using the Service, you signify that you have read, understood, and agree to our collection, storage, use, and disclosure of your personal information as described in this Privacy Policy and our Terms and Conditions.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;9&quot;&gt;&lt;b data-path-to-node=&quot;9&quot; data-index-in-node=&quot;0&quot;&gt;2. INFORMATION WE COLLECT&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;10&quot;&gt;We collect several types of information from and about users of our Service, including:&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;11&quot;&gt;&lt;b data-path-to-node=&quot;11&quot; data-index-in-node=&quot;0&quot;&gt;A. Information You Provide Directly to Us:&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul data-path-to-node=&quot;12&quot;&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;12,0,0&quot;&gt;&lt;b data-path-to-node=&quot;12,0,0&quot; data-index-in-node=&quot;0&quot;&gt;Account Information:&lt;/b&gt; When you register for KipTalk, we collect your [Phone Number, Username, and optionally, Profile Picture, Name, and Biography]. If you use a third-party service (like Google or Apple) to register, we collect information from that service as permitted by your privacy settings on that service.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;12,1,0&quot;&gt;&lt;b data-path-to-node=&quot;12,1,0&quot; data-index-in-node=&quot;0&quot;&gt;User Content:&lt;/b&gt; We collect the content of the messages you send, calls you make, and files you share using the Service. &lt;b data-path-to-node=&quot;12,1,0&quot; data-index-in-node=&quot;118&quot;&gt;&lt;i data-path-to-node=&quot;12,1,0&quot; data-index-in-node=&quot;118&quot;&gt;[CRITICAL NOTE TO USER: Here you must explicitly state whether KipTalk uses End-to-End Encryption (E2EE). E2EE means only you and the recipient can read your messages; not even KipTalk has access to the plaintext content. If you use E2EE, state it clearly. If you DO NOT, you must state that KipTalk stores user content securely but is legally able to access it.]&lt;/i&gt;&lt;/b&gt;&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;12,2,0&quot;&gt;&lt;b data-path-to-node=&quot;12,2,0&quot; data-index-in-node=&quot;0&quot;&gt;Customer Support:&lt;/b&gt; Information you provide when you contact us for support, including correspondence and technical issues.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;12,3,0&quot;&gt;&lt;b data-path-to-node=&quot;12,3,0&quot; data-index-in-node=&quot;0&quot;&gt;Contacts:&lt;/b&gt; With your explicit permission, we may collect information from your device&#039;s address book (phone contacts) to facilitate connecting you with other KipTalk users.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p data-path-to-node=&quot;13&quot;&gt;&lt;b data-path-to-node=&quot;13&quot; data-index-in-node=&quot;0&quot;&gt;B. Information We Collect Automatically Through Your Use of the Service:&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul data-path-to-node=&quot;14&quot;&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;14,0,0&quot;&gt;&lt;b data-path-to-node=&quot;14,0,0&quot; data-index-in-node=&quot;0&quot;&gt;Usage Data:&lt;/b&gt; We collect information about how you use the Service, such as the frequency and duration of your calls, messaging volume, features used, and performance diagnostics.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;14,1,0&quot;&gt;&lt;b data-path-to-node=&quot;14,1,0&quot; data-index-in-node=&quot;0&quot;&gt;Device Information:&lt;/b&gt; We collect information about the device you use to access the Service, including the hardware model, operating system, unique device identifiers, browser type, and mobile network information.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;14,2,0&quot;&gt;&lt;b data-path-to-node=&quot;14,2,0&quot; data-index-in-node=&quot;0&quot;&gt;Log Data:&lt;/b&gt; Our servers automatically record standard log data (IP addresses, access times, browser history) when you use the Service.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;14,3,0&quot;&gt;&lt;b data-path-to-node=&quot;14,3,0&quot; data-index-in-node=&quot;0&quot;&gt;Cookies and Tracking:&lt;/b&gt; We and our service providers may use cookies, web beacons, and similar technologies to collect information about your interactions with our website andService. [Include a link to a separate Cookie Policy if applicable].&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p data-path-to-node=&quot;15&quot;&gt;&lt;b data-path-to-node=&quot;15&quot; data-index-in-node=&quot;0&quot;&gt;C. Location Information:&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;16&quot;&gt;If you provide permission through your device settings, we may collect precise location data for features like location sharing with contacts or for localized content.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;17&quot;&gt;&lt;b data-path-to-node=&quot;17&quot; data-index-in-node=&quot;0&quot;&gt;3. HOW WE USE YOUR INFORMATION&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;18&quot;&gt;We use the information we collect for various purposes, including to:&lt;/p&gt;\r\n&lt;ul data-path-to-node=&quot;19&quot;&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;19,0,0&quot;&gt;&lt;b data-path-to-node=&quot;19,0,0&quot; data-index-in-node=&quot;0&quot;&gt;Provide and Improve the Service:&lt;/b&gt; Operate, maintain, and personalize the Service for you.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;19,1,0&quot;&gt;&lt;b data-path-to-node=&quot;19,1,0&quot; data-index-in-node=&quot;0&quot;&gt;Enable Communication:&lt;/b&gt; Facilitate messages, calls, and sharing between you and other users.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;19,2,0&quot;&gt;&lt;b data-path-to-node=&quot;19,2,0&quot; data-index-in-node=&quot;0&quot;&gt;Enhance Security:&lt;/b&gt; Detect and prevent fraud, spam, abuse, and security incidents.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;19,3,0&quot;&gt;&lt;b data-path-to-node=&quot;19,3,0&quot; data-index-in-node=&quot;0&quot;&gt;Customer Support:&lt;/b&gt; Respond to your inquiries and support requests.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;19,4,0&quot;&gt;&lt;b data-path-to-node=&quot;19,4,0&quot; data-index-in-node=&quot;0&quot;&gt;Analytics and Research:&lt;/b&gt; Analyze how the Service is used to improve performance and develop new features.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;19,5,0&quot;&gt;&lt;b data-path-to-node=&quot;19,5,0&quot; data-index-in-node=&quot;0&quot;&gt;Legal Compliance:&lt;/b&gt; Comply with legal obligations, enforce our Terms and Conditions, and respond to legal requests.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;19,6,0&quot;&gt;&lt;b data-path-to-node=&quot;19,6,0&quot; data-index-in-node=&quot;0&quot;&gt;Marketing (with your consent):&lt;/b&gt; Send you promotional communications, updates, and offers related to the Service.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p data-path-to-node=&quot;20&quot;&gt;&lt;b data-path-to-node=&quot;20&quot; data-index-in-node=&quot;0&quot;&gt;4. SHARING YOUR INFORMATION&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;21&quot;&gt;We do not sell, rent, or lease your personal information to third parties. We only share your information in limited circumstances, including:&lt;/p&gt;\r\n&lt;ul data-path-to-node=&quot;22&quot;&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;22,0,0&quot;&gt;&lt;b data-path-to-node=&quot;22,0,0&quot; data-index-in-node=&quot;0&quot;&gt;With Other Users:&lt;/b&gt; When you send messages, share files, or make calls, this content is shared with the intended recipients.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;22,1,0&quot;&gt;&lt;b data-path-to-node=&quot;22,1,0&quot; data-index-in-node=&quot;0&quot;&gt;Service Providers:&lt;/b&gt; We may share information with trusted third-party service providers who assist us in operating our Service (e.g., hosting providers, cloud service providers, analytics services). These providers are contractually obligated to protect your information.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;22,2,0&quot;&gt;&lt;b data-path-to-node=&quot;22,2,0&quot; data-index-in-node=&quot;0&quot;&gt;Legal Reasons:&lt;/b&gt; We may disclose your information if required to do so by law, in response to a subpoena or court order, to protect our rights, or to prevent harm.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;22,3,0&quot;&gt;&lt;b data-path-to-node=&quot;22,3,0&quot; data-index-in-node=&quot;0&quot;&gt;Business Transfers:&lt;/b&gt; If we are involved in a merger, acquisition, or sale of assets, your information may be transferred as part of that business transaction.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;22,4,0&quot;&gt;&lt;b data-path-to-node=&quot;22,4,0&quot; data-index-in-node=&quot;0&quot;&gt;With Your Consent:&lt;/b&gt; We may share information for any other purpose you explicitly consent to.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p data-path-to-node=&quot;23&quot;&gt;&lt;b data-path-to-node=&quot;23&quot; data-index-in-node=&quot;0&quot;&gt;5. SECURITY&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;24&quot;&gt;We take appropriate technical and organizational measures to protect your information against unauthorized access, theft, loss, or modification. These measures include [list relevant measures, e.g., encryption of sensitive data (state if E2EE is used), secure server infrastructure, access controls, regular security audits, etc.]. However, please understand that no method of transmission over the Internet is 100% secure.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;25&quot;&gt;&lt;b data-path-to-node=&quot;25&quot; data-index-in-node=&quot;0&quot;&gt;&lt;i data-path-to-node=&quot;25&quot; data-index-in-node=&quot;0&quot;&gt;[CRITICAL NOTE TO USER: If KipTalk implements End-to-End Encryption, this section must emphatically stress that KipTalk CANNOT access your message content and that only the keys on the devices involved can decrypt the plaintext.]&lt;/i&gt;&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;26&quot;&gt;&lt;b data-path-to-node=&quot;26&quot; data-index-in-node=&quot;0&quot;&gt;6. DATA RETENTION&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;27&quot;&gt;We retain your personal information for as long as your account is active or as needed to provide the Service, comply with our legal obligations, resolve disputes, and enforce our agreements. You can delete your account at any time, which will initiate the deletion of your personal data from our active systems, although we may retain some data as required by law.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;28&quot;&gt;&lt;b data-path-to-node=&quot;28&quot; data-index-in-node=&quot;0&quot;&gt;7. YOUR RIGHTS AND CHOICES&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;29&quot;&gt;Depending on your jurisdiction (e.g., if you reside in the EEA or California), you may have certain rights regarding your personal information, including:&lt;/p&gt;\r\n&lt;ul data-path-to-node=&quot;30&quot;&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;30,0,0&quot;&gt;&lt;b data-path-to-node=&quot;30,0,0&quot; data-index-in-node=&quot;0&quot;&gt;Right to Access:&lt;/b&gt; Request access to the personal information we hold about you.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;30,1,0&quot;&gt;&lt;b data-path-to-node=&quot;30,1,0&quot; data-index-in-node=&quot;0&quot;&gt;Right to Rectification:&lt;/b&gt; Correct or update your personal information.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;30,2,0&quot;&gt;&lt;b data-path-to-node=&quot;30,2,0&quot; data-index-in-node=&quot;0&quot;&gt;Right to Erasure (Right to be Forgotten):&lt;/b&gt; Request that we delete your personal information.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;30,3,0&quot;&gt;&lt;b data-path-to-node=&quot;30,3,0&quot; data-index-in-node=&quot;0&quot;&gt;Right to Restriction of Processing:&lt;/b&gt; Object to or restrict how we use your personal information.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;30,4,0&quot;&gt;&lt;b data-path-to-node=&quot;30,4,0&quot; data-index-in-node=&quot;0&quot;&gt;Right to Data Portability:&lt;/b&gt; Receive a copy of your personal information in a structured, electronic format.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;30,5,0&quot;&gt;&lt;b data-path-to-node=&quot;30,5,0&quot; data-index-in-node=&quot;0&quot;&gt;Right to Withdraw Consent:&lt;/b&gt; Where our processing is based on your consent, you may withdraw it at any time.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;\r\n&lt;p data-path-to-node=&quot;30,6,0&quot;&gt;&lt;b data-path-to-node=&quot;30,6,0&quot; data-index-in-node=&quot;0&quot;&gt;Right to Lodge a Complaint:&lt;/b&gt; File a complaint with your local data protection authority.&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p data-path-to-node=&quot;31&quot;&gt;To exercise these rights, please contact us using the information in Section 11.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;32&quot;&gt;&lt;b data-path-to-node=&quot;32&quot; data-index-in-node=&quot;0&quot;&gt;8. CHILDREN&amp;rsquo;S PRIVACY&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;33&quot;&gt;KipTalk is not intended for children under the age of [e.g., 13/16] (the minimum age required in your jurisdiction). We do not knowingly collect personal information from children. If we become aware that we have collected information from a child without parental consent, we will take steps to delete that information promptly.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;34&quot;&gt;&lt;b data-path-to-node=&quot;34&quot; data-index-in-node=&quot;0&quot;&gt;9. INTERNATIONAL DATA TRANSFERS&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;35&quot;&gt;Your information may be transferred to and maintained on computers located outside of your state, province, country, or other governmental jurisdiction where the data protection laws may differ from those in your jurisdiction. By using the Service, you consent to the transfer of your information to [Countries, e.g., the United States] and other countries where our Service Providers operate.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;36&quot;&gt;&lt;b data-path-to-node=&quot;36&quot; data-index-in-node=&quot;0&quot;&gt;&lt;i data-path-to-node=&quot;36&quot; data-index-in-node=&quot;0&quot;&gt;[CRITICAL NOTE TO USER: This is especially important for GDPR compliance. If transferring data outside the EEA, you must identify appropriate safeguards, such as Standard Contractual Clauses (SCCs).]&lt;/i&gt;&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;37&quot;&gt;&lt;b data-path-to-node=&quot;37&quot; data-index-in-node=&quot;0&quot;&gt;10. CHANGES TO THIS PRIVACY POLICY&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;38&quot;&gt;We may update this Privacy Policy from time to time. We will notify you of any material changes by posting the new policy on our Service or by other means as required by law. The &quot;Last Updated&quot; date at the top will indicate when the changes were made. Your continued use of the Service after any changes constitutes your acceptance of the new Privacy Policy.&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;39&quot;&gt;&lt;b data-path-to-node=&quot;39&quot; data-index-in-node=&quot;0&quot;&gt;11. CONTACT US&lt;/b&gt;&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;40&quot;&gt;If you have any questions, concerns, or requests regarding this Privacy Policy or our data practices, please contact us at:&lt;/p&gt;\r\n&lt;p data-path-to-node=&quot;41&quot;&gt;&lt;b data-path-to-node=&quot;41&quot; data-index-in-node=&quot;0&quot;&gt;KipTalk [Company Legal Name]&lt;/b&gt; [Mailing Address] &lt;b data-path-to-node=&quot;41&quot; data-index-in-node=&quot;47&quot;&gt;Email:&lt;/b&gt; [privacy@kiptalk.com / legal@kiptalk.com]&lt;/p&gt;', '1', '0', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `stickers`
--

CREATE TABLE `stickers` (
  `sticker_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `stickers`
--

INSERT INTO `stickers` (`sticker_id`, `image`) VALUES
(1, 'stickers/1.png'),
(2, 'stickers/2.png'),
(3, 'stickers/3.png'),
(4, 'stickers/4.png'),
(5, 'stickers/5.png'),
(6, 'stickers/6.png'),
(7, 'stickers/7.png'),
(8, 'stickers/8.png'),
(9, 'stickers/9.png'),
(10, 'stickers/10.png'),
(11, 'stickers/11.png'),
(12, 'stickers/12.png'),
(13, 'stickers/13.png'),
(14, 'stickers/14.png'),
(15, 'stickers/15.png'),
(16, 'stickers/16.png'),
(17, 'stickers/17.png'),
(18, 'stickers/18.png'),
(19, 'stickers/19.png'),
(20, 'stickers/20.png');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `story_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `is_ads` enum('0','1') NOT NULL DEFAULT '0',
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`story_id`, `user_id`, `is_ads`, `time`) VALUES
(2, 2, '0', '2026-05-08 22:06:03'),
(3, 3, '0', '2026-05-09 04:25:50'),
(4, 13, '0', '2026-05-09 09:50:05'),
(5, 19, '0', '2026-05-09 16:27:36'),
(6, 2, '1', '2026-05-10 08:17:59'),
(7, 25, '0', '2026-05-10 08:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `stories_media`
--

CREATE TABLE `stories_media` (
  `media_id` int(10) UNSIGNED NOT NULL,
  `story_id` int(10) UNSIGNED NOT NULL,
  `source` varchar(256) NOT NULL,
  `is_photo` enum('0','1') NOT NULL DEFAULT '1',
  `text` text NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `stories_media`
--

INSERT INTO `stories_media` (`media_id`, `story_id`, `source`, `is_photo`, `text`, `time`) VALUES
(2, 2, 'photos/2026/05/kiptalk_ed030ac6049f25496e9103db3defd035.jpg', '1', '', '2026-05-08 22:05:05'),
(3, 2, 'photos/2026/05/kiptalk_b7a1ba10662e71a144e04874435287ac.jpg', '1', '', '2026-05-08 22:06:03'),
(4, 3, 'photos/2026/05/kiptalk_813f7fe330bdfbd280246500bfca1074.jpg', '1', '', '2026-05-09 04:25:50'),
(5, 4, 'videos/2026/05/kiptalk_775311d374ff6e30b3263cef8e5129ca.mov', '0', '', '2026-05-09 09:50:05'),
(6, 5, 'photos/2026/05/kiptalk_a790cd2df841aa55691dc272225a7366.jpg', '1', '', '2026-05-09 16:27:36'),
(7, 6, 'photos/2026/05/kiptalk_34fe3a0bfccfd80c7d53d9054988a113.jpg', '1', 'Happy mother&#039;s day to the mum of KipTalk C.E.O\nMore life to you mother 🩵', '2026-05-10 07:24:30'),
(8, 6, 'photos/2026/05/kiptalk_305f6ffdf3e5596b16dff2b6150c40fb.png', '1', '', '2026-05-10 08:17:59'),
(9, 7, 'photos/2026/05/kiptalk_eef26cdcf159494e582dc8618141251c.jpg', '1', 'Happy mothers day ', '2026-05-10 08:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  `node_type` varchar(32) NOT NULL,
  `plan_id` int(10) UNSIGNED NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `agent_id` int(10) UNSIGNED DEFAULT NULL,
  `subject` varchar(256) NOT NULL,
  `text` longtext NOT NULL,
  `status` enum('opened','in_progress','pending','solved','closed') NOT NULL DEFAULT 'opened',
  `replies` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets_replies`
--

CREATE TABLE `support_tickets_replies` (
  `reply_id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `text` longtext NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `system_countries`
--

CREATE TABLE `system_countries` (
  `country_id` int(10) UNSIGNED NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `country_name` varchar(64) NOT NULL,
  `phone_code` varchar(8) DEFAULT NULL,
  `country_vat` float UNSIGNED DEFAULT NULL,
  `default` enum('0','1') NOT NULL,
  `enabled` enum('0','1') NOT NULL DEFAULT '1',
  `country_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `system_countries`
--

INSERT INTO `system_countries` (`country_id`, `country_code`, `country_name`, `phone_code`, `country_vat`, `default`, `enabled`, `country_order`) VALUES
(1, 'AF', 'Afghanistan', '+93', NULL, '0', '1', 1),
(2, 'AL', 'Albania', '+355', NULL, '0', '1', 2),
(3, 'DZ', 'Algeria', '+213', NULL, '0', '1', 3),
(4, 'DS', 'American Samoa', '+1684', NULL, '0', '1', 4),
(5, 'AD', 'Andorra', '+376', NULL, '0', '1', 5),
(6, 'AO', 'Angola', '+244', NULL, '0', '1', 6),
(7, 'AI', 'Anguilla', '+1264', NULL, '0', '1', 7),
(8, 'AQ', 'Antarctica', '+672', NULL, '0', '1', 8),
(9, 'AG', 'Antigua and Barbuda', '+1268', NULL, '0', '1', 9),
(10, 'AR', 'Argentina', '+54', NULL, '0', '1', 10),
(11, 'AM', 'Armenia', '+374', NULL, '0', '1', 11),
(12, 'AW', 'Aruba', '+297', NULL, '0', '1', 12),
(13, 'AU', 'Australia', '+61', NULL, '0', '1', 13),
(14, 'AT', 'Austria', '+43', NULL, '0', '1', 14),
(15, 'AZ', 'Azerbaijan', '+994', NULL, '0', '1', 15),
(16, 'BS', 'Bahamas', '+1242', NULL, '0', '1', 16),
(17, 'BH', 'Bahrain', '+973', NULL, '0', '1', 17),
(18, 'BD', 'Bangladesh', '+880', NULL, '0', '1', 18),
(19, 'BB', 'Barbados', '+1246', NULL, '0', '1', 19),
(20, 'BY', 'Belarus', '+375', NULL, '0', '1', 20),
(21, 'BE', 'Belgium', '+32', NULL, '0', '1', 21),
(22, 'BZ', 'Belize', '+501', NULL, '0', '1', 22),
(23, 'BJ', 'Benin', '+229', NULL, '0', '1', 23),
(24, 'BM', 'Bermuda', '+1441', NULL, '0', '1', 24),
(25, 'BT', 'Bhutan', '+975', NULL, '0', '1', 25),
(26, 'BO', 'Bolivia', '+591', NULL, '0', '1', 26),
(27, 'BA', 'Bosnia and Herzegovina', '+387', NULL, '0', '1', 27),
(28, 'BW', 'Botswana', '+267', NULL, '0', '1', 28),
(29, 'BV', 'Bouvet Island', '+55', NULL, '0', '1', 29),
(30, 'BR', 'Brazil', '+55', NULL, '0', '1', 30),
(31, 'IO', 'British Indian Ocean Territory', '+246', NULL, '0', '1', 31),
(32, 'BN', 'Brunei Darussalam', '+673', NULL, '0', '1', 32),
(33, 'BG', 'Bulgaria', '+359', NULL, '0', '1', 33),
(34, 'BF', 'Burkina Faso', '+226', NULL, '0', '1', 34),
(35, 'BI', 'Burundi', '+257', NULL, '0', '1', 35),
(36, 'KH', 'Cambodia', '+855', NULL, '0', '1', 36),
(37, 'CM', 'Cameroon', '+237', NULL, '0', '1', 37),
(38, 'CA', 'Canada', '+1', NULL, '0', '1', 38),
(39, 'CV', 'Cape Verde', '+238', NULL, '0', '1', 39),
(40, 'KY', 'Cayman Islands', '+ 345', NULL, '0', '1', 40),
(41, 'CF', 'Central African Republic', '+236', NULL, '0', '1', 41),
(42, 'TD', 'Chad', '+235', NULL, '0', '1', 42),
(43, 'CL', 'Chile', '+56', NULL, '0', '1', 43),
(44, 'CN', 'China', '+86', NULL, '0', '1', 44),
(45, 'CX', 'Christmas Island', '+61', NULL, '0', '1', 45),
(46, 'CC', 'Cocos (Keeling) Islands', '+61', NULL, '0', '1', 46),
(47, 'CO', 'Colombia', '+57', NULL, '0', '1', 47),
(48, 'KM', 'Comoros', '+269', NULL, '0', '1', 48),
(49, 'CG', 'Congo', '+242', NULL, '0', '1', 49),
(50, 'CK', 'Cook Islands', '+682', NULL, '0', '1', 50),
(51, 'CR', 'Costa Rica', '+506', NULL, '0', '1', 51),
(52, 'HR', 'Croatia (Hrvatska)', '+385', NULL, '0', '1', 52),
(53, 'CU', 'Cuba', '+53', NULL, '0', '1', 53),
(54, 'CY', 'Cyprus', '+357', NULL, '0', '1', 54),
(55, 'CZ', 'Czech Republic', '+420', NULL, '0', '1', 55),
(56, 'DK', 'Denmark', '+45', NULL, '0', '1', 56),
(57, 'DJ', 'Djibouti', '+253', NULL, '0', '1', 57),
(58, 'DM', 'Dominica', '+1767', NULL, '0', '1', 58),
(59, 'DO', 'Dominican Republic', '+1849', NULL, '0', '1', 59),
(60, 'TP', 'East Timor', NULL, NULL, '0', '1', 60),
(61, 'EC', 'Ecuador', '+593', NULL, '0', '1', 61),
(62, 'EG', 'Egypt', '+20', NULL, '0', '1', 62),
(63, 'SV', 'El Salvador', '+503', NULL, '0', '1', 63),
(64, 'GQ', 'Equatorial Guinea', '+240', NULL, '0', '1', 64),
(65, 'ER', 'Eritrea', '+291', NULL, '0', '1', 65),
(66, 'EE', 'Estonia', '+372', NULL, '0', '1', 66),
(67, 'ET', 'Ethiopia', '+251', NULL, '0', '1', 67),
(68, 'FK', 'Falkland Islands (Malvinas)', '+500', NULL, '0', '1', 68),
(69, 'FO', 'Faroe Islands', '+298', NULL, '0', '1', 69),
(70, 'FJ', 'Fiji', '+679', NULL, '0', '1', 70),
(71, 'FI', 'Finland', '+358', NULL, '0', '1', 71),
(72, 'FR', 'France', '+33', NULL, '0', '1', 72),
(73, 'FX', 'France, Metropolitan', NULL, NULL, '0', '1', 73),
(74, 'GF', 'French Guiana', '+594', NULL, '0', '1', 74),
(75, 'PF', 'French Polynesia', '+689', NULL, '0', '1', 75),
(76, 'TF', 'French Southern Territories', '+262', NULL, '0', '1', 76),
(77, 'GA', 'Gabon', '+241', NULL, '0', '1', 77),
(78, 'GM', 'Gambia', '+220', NULL, '0', '1', 78),
(79, 'GE', 'Georgia', '+995', NULL, '0', '1', 79),
(80, 'DE', 'Germany', '+49', NULL, '0', '1', 80),
(81, 'GH', 'Ghana', '+233', NULL, '0', '1', 81),
(82, 'GI', 'Gibraltar', '+350', NULL, '0', '1', 82),
(83, 'GK', 'Guernsey', '+44', NULL, '0', '1', 83),
(84, 'GR', 'Greece', '+30', NULL, '0', '1', 84),
(85, 'GL', 'Greenland', '+299', NULL, '0', '1', 85),
(86, 'GD', 'Grenada', '+1473', NULL, '0', '1', 86),
(87, 'GP', 'Guadeloupe', '+590', NULL, '0', '1', 87),
(88, 'GU', 'Guam', '+1671', NULL, '0', '1', 88),
(89, 'GT', 'Guatemala', '+502', NULL, '0', '1', 89),
(90, 'GN', 'Guinea', '+224', NULL, '0', '1', 90),
(91, 'GW', 'Guinea-Bissau', '+245', NULL, '0', '1', 91),
(92, 'GY', 'Guyana', '+595', NULL, '0', '1', 92),
(93, 'HT', 'Haiti', '+509', NULL, '0', '1', 93),
(94, 'HM', 'Heard and Mc Donald Islands', NULL, NULL, '0', '1', 94),
(95, 'HN', 'Honduras', '+504', NULL, '0', '1', 95),
(96, 'HK', 'Hong Kong', '+852', NULL, '0', '1', 96),
(97, 'HU', 'Hungary', '+36', NULL, '0', '1', 97),
(98, 'IS', 'Iceland', '+354', NULL, '0', '1', 98),
(99, 'IN', 'India', '+91', NULL, '0', '1', 99),
(100, 'IM', 'Isle of Man', '+44', NULL, '0', '1', 100),
(101, 'ID', 'Indonesia', '+62', NULL, '0', '1', 101),
(102, 'IR', 'Iran (Islamic Republic of)', '+98', NULL, '0', '1', 102),
(103, 'IQ', 'Iraq', '+964', NULL, '0', '1', 103),
(104, 'IE', 'Ireland', '+353', NULL, '0', '1', 104),
(105, 'IL', 'Israel', '+972', NULL, '0', '1', 105),
(106, 'IT', 'Italy', '+39', NULL, '0', '1', 106),
(107, 'CI', 'Ivory Coast', NULL, NULL, '0', '1', 107),
(108, 'JE', 'Jersey', '+44', NULL, '0', '1', 108),
(109, 'JM', 'Jamaica', '+1876', NULL, '0', '1', 109),
(110, 'JP', 'Japan', '+81', NULL, '0', '1', 110),
(111, 'JO', 'Jordan', '+962', NULL, '0', '1', 111),
(112, 'KZ', 'Kazakhstan', '+77', NULL, '0', '1', 112),
(113, 'KE', 'Kenya', '+254', NULL, '0', '1', 113),
(114, 'KI', 'Kiribati', '+686', NULL, '0', '1', 114),
(115, 'KP', 'Korea, Democratic People\'s Republic of', '+850', NULL, '0', '1', 115),
(116, 'KR', 'Korea, Republic of', '+82', NULL, '0', '1', 116),
(117, 'XK', 'Kosovo', '+381', NULL, '0', '1', 117),
(118, 'KW', 'Kuwait', '+965', NULL, '0', '1', 118),
(119, 'KG', 'Kyrgyzstan', '+996', NULL, '0', '1', 119),
(120, 'LA', 'Lao People\'s Democratic Republic', '+856', NULL, '0', '1', 120),
(121, 'LV', 'Latvia', '+371', NULL, '0', '1', 121),
(122, 'LB', 'Lebanon', '+961', NULL, '0', '1', 122),
(123, 'LS', 'Lesotho', '+266', NULL, '0', '1', 123),
(124, 'LR', 'Liberia', '+231', NULL, '0', '1', 124),
(125, 'LY', 'Libyan Arab Jamahiriya', '+218', NULL, '0', '1', 125),
(126, 'LI', 'Liechtenstein', '+423', NULL, '0', '1', 126),
(127, 'LT', 'Lithuania', '+370', NULL, '0', '1', 127),
(128, 'LU', 'Luxembourg', '+352', NULL, '0', '1', 128),
(129, 'MO', 'Macau', '+853', NULL, '0', '1', 129),
(130, 'MK', 'Macedonia', '+389', NULL, '0', '1', 130),
(131, 'MG', 'Madagascar', '+261', NULL, '0', '1', 131),
(132, 'MW', 'Malawi', '+265', NULL, '0', '1', 132),
(133, 'MY', 'Malaysia', '+60', NULL, '0', '1', 133),
(134, 'MV', 'Maldives', '+960', NULL, '0', '1', 134),
(135, 'ML', 'Mali', '+223', NULL, '0', '1', 135),
(136, 'MT', 'Malta', '+356', NULL, '0', '1', 136),
(137, 'MH', 'Marshall Islands', '+692', NULL, '0', '1', 137),
(138, 'MQ', 'Martinique', '+596', NULL, '0', '1', 138),
(139, 'MR', 'Mauritania', '+222', NULL, '0', '1', 139),
(140, 'MU', 'Mauritius', '+230', NULL, '0', '1', 140),
(141, 'TY', 'Mayotte', '+269', NULL, '0', '1', 141),
(142, 'MX', 'Mexico', '+52', NULL, '0', '1', 142),
(143, 'FM', 'Micronesia, Federated States of', '+691', NULL, '0', '1', 143),
(144, 'MD', 'Moldova, Republic of', '+373', NULL, '0', '1', 144),
(145, 'MC', 'Monaco', '+377', NULL, '0', '1', 145),
(146, 'MN', 'Mongolia', '+976', NULL, '0', '1', 146),
(147, 'ME', 'Montenegro', '+382', NULL, '0', '1', 147),
(148, 'MS', 'Montserrat', '+1664', NULL, '0', '1', 148),
(149, 'MA', 'Morocco', '+212', NULL, '0', '1', 149),
(150, 'MZ', 'Mozambique', '+258', NULL, '0', '1', 150),
(151, 'MM', 'Myanmar', '+95', NULL, '0', '1', 151),
(152, 'NA', 'Namibia', '+264', NULL, '0', '1', 152),
(153, 'NR', 'Nauru', '+674', NULL, '0', '1', 153),
(154, 'NP', 'Nepal', '+977', NULL, '0', '1', 154),
(155, 'NL', 'Netherlands', '+31', NULL, '0', '1', 155),
(156, 'AN', 'Netherlands Antilles', '+599', NULL, '0', '1', 156),
(157, 'NC', 'New Caledonia', '+687', NULL, '0', '1', 157),
(158, 'NZ', 'New Zealand', '+64', NULL, '0', '1', 158),
(159, 'NI', 'Nicaragua', '+505', NULL, '0', '1', 159),
(160, 'NE', 'Niger', '+227', NULL, '0', '1', 160),
(161, 'NG', 'Nigeria', '+234', NULL, '0', '1', 161),
(162, 'NU', 'Niue', '+683', NULL, '0', '1', 162),
(163, 'NF', 'Norfolk Island', '+672', NULL, '0', '1', 163),
(164, 'MP', 'Northern Mariana Islands', '+1670', NULL, '0', '1', 164),
(165, 'NO', 'Norway', '+47', NULL, '0', '1', 165),
(166, 'OM', 'Oman', '+968', NULL, '0', '1', 166),
(167, 'PK', 'Pakistan', '+92', NULL, '0', '1', 167),
(168, 'PW', 'Palau', '+680', NULL, '0', '1', 168),
(169, 'PS', 'Palestine', '+970', NULL, '0', '1', 169),
(170, 'PA', 'Panama', '+507', NULL, '0', '1', 170),
(171, 'PG', 'Papua New Guinea', '+675', NULL, '0', '1', 171),
(172, 'PY', 'Paraguay', '+595', NULL, '0', '1', 172),
(173, 'PE', 'Peru', '+51', NULL, '0', '1', 173),
(174, 'PH', 'Philippines', '+63', NULL, '0', '1', 174),
(175, 'PN', 'Pitcairn', '+872', NULL, '0', '1', 175),
(176, 'PL', 'Poland', '+48', NULL, '0', '1', 176),
(177, 'PT', 'Portugal', '+351', NULL, '0', '1', 177),
(178, 'PR', 'Puerto Rico', '+1939', NULL, '0', '1', 178),
(179, 'QA', 'Qatar', '+974', NULL, '0', '1', 179),
(180, 'RE', 'Reunion', '+262', NULL, '0', '1', 180),
(181, 'RO', 'Romania', '+40', NULL, '0', '1', 181),
(182, 'RU', 'Russian Federation', '+7', NULL, '0', '1', 182),
(183, 'RW', 'Rwanda', '+250', NULL, '0', '1', 183),
(184, 'KN', 'Saint Kitts and Nevis', '+1869', NULL, '0', '1', 184),
(185, 'LC', 'Saint Lucia', '+1758', NULL, '0', '1', 185),
(186, 'VC', 'Saint Vincent and the Grenadines', '+1784', NULL, '0', '1', 186),
(187, 'WS', 'Samoa', '+685', NULL, '0', '1', 187),
(188, 'SM', 'San Marino', '+378', NULL, '0', '1', 188),
(189, 'ST', 'Sao Tome and Principe', '+239', NULL, '0', '1', 189),
(190, 'SA', 'Saudi Arabia', '+966', NULL, '0', '1', 190),
(191, 'SN', 'Senegal', '+221', NULL, '0', '1', 191),
(192, 'RS', 'Serbia', '+381', NULL, '0', '1', 192),
(193, 'SC', 'Seychelles', '+248', NULL, '0', '1', 193),
(194, 'SL', 'Sierra Leone', '+232', NULL, '0', '1', 194),
(195, 'SG', 'Singapore', '+65', NULL, '0', '1', 195),
(196, 'SK', 'Slovakia', '+421', NULL, '0', '1', 196),
(197, 'SI', 'Slovenia', '+386', NULL, '0', '1', 197),
(198, 'SB', 'Solomon Islands', '+677', NULL, '0', '1', 198),
(199, 'SO', 'Somalia', '+252', NULL, '0', '1', 199),
(200, 'ZA', 'South Africa', '+27', NULL, '0', '1', 200),
(201, 'GS', 'South Georgia South Sandwich Islands', '+500', NULL, '0', '1', 201),
(202, 'ES', 'Spain', '+34', NULL, '0', '1', 202),
(203, 'LK', 'Sri Lanka', '+94', NULL, '0', '1', 203),
(204, 'SH', 'St. Helena', '+290', NULL, '0', '1', 204),
(205, 'PM', 'St. Pierre and Miquelon', '+508', NULL, '0', '1', 205),
(206, 'SD', 'Sudan', '+249', NULL, '0', '1', 206),
(207, 'SR', 'Suriname', '+597', NULL, '0', '1', 207),
(208, 'SJ', 'Svalbard and Jan Mayen Islands', '+47', NULL, '0', '1', 208),
(209, 'SZ', 'Swaziland', '+268', NULL, '0', '1', 209),
(210, 'SE', 'Sweden', '+46', NULL, '0', '1', 210),
(211, 'CH', 'Switzerland', '+41', NULL, '0', '1', 211),
(212, 'SY', 'Syrian Arab Republic', '+963', NULL, '0', '1', 212),
(213, 'TW', 'Taiwan', '+886', NULL, '0', '1', 213),
(214, 'TJ', 'Tajikistan', '+992', NULL, '0', '1', 214),
(215, 'TZ', 'Tanzania, United Republic of', '+255', NULL, '0', '1', 215),
(216, 'TH', 'Thailand', '+66', NULL, '0', '1', 216),
(217, 'TG', 'Togo', '+228', NULL, '0', '1', 217),
(218, 'TK', 'Tokelau', '+690', NULL, '0', '1', 218),
(219, 'TO', 'Tonga', '+676', NULL, '0', '1', 219),
(220, 'TT', 'Trinidad and Tobago', '+1868', NULL, '0', '1', 220),
(221, 'TN', 'Tunisia', '+216', NULL, '0', '1', 221),
(222, 'TR', 'Turkey', '+90', NULL, '0', '1', 222),
(223, 'TM', 'Turkmenistan', '+993', NULL, '0', '1', 223),
(224, 'TC', 'Turks and Caicos Islands', '+1649', NULL, '0', '1', 224),
(225, 'TV', 'Tuvalu', '+688', NULL, '0', '1', 225),
(226, 'UG', 'Uganda', '+256', NULL, '0', '1', 226),
(227, 'UA', 'Ukraine', '+380', NULL, '0', '1', 227),
(228, 'AE', 'United Arab Emirates', '+971', NULL, '0', '1', 228),
(229, 'GB', 'United Kingdom', '+44', NULL, '0', '1', 229),
(230, 'US', 'United States', '+1', NULL, '1', '1', 230),
(231, 'UM', 'United States minor outlying islands', '+1', NULL, '0', '1', 231),
(232, 'UY', 'Uruguay', '+598', NULL, '0', '1', 232),
(233, 'UZ', 'Uzbekistan', '+998', NULL, '0', '1', 233),
(234, 'VU', 'Vanuatu', '+678', NULL, '0', '1', 234),
(235, 'VA', 'Vatican City State', '+379', NULL, '0', '1', 235),
(236, 'VE', 'Venezuela', '+58', NULL, '0', '1', 236),
(237, 'VN', 'Vietnam', '+84', NULL, '0', '1', 237),
(238, 'VG', 'Virgin Islands (British)', '+1284', NULL, '0', '1', 238),
(239, 'VI', 'Virgin Islands (U.S.)', '+1340', NULL, '0', '1', 239),
(240, 'WF', 'Wallis and Futuna Islands', '+681', NULL, '0', '1', 240),
(241, 'EH', 'Western Sahara', '+212', NULL, '0', '1', 241),
(242, 'YE', 'Yemen', '+967', NULL, '0', '1', 242),
(243, 'ZR', 'Zaire', NULL, NULL, '0', '1', 243),
(244, 'ZM', 'Zambia', '+260', NULL, '0', '1', 244),
(245, 'ZW', 'Zimbabwe', '+263', NULL, '0', '1', 245);

-- --------------------------------------------------------

--
-- Table structure for table `system_currencies`
--

CREATE TABLE `system_currencies` (
  `currency_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(256) NOT NULL,
  `code` varchar(32) NOT NULL,
  `symbol` varchar(32) NOT NULL,
  `dir` enum('left','right') NOT NULL DEFAULT 'left',
  `default` enum('0','1') NOT NULL,
  `enabled` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `system_currencies`
--

INSERT INTO `system_currencies` (`currency_id`, `name`, `code`, `symbol`, `dir`, `default`, `enabled`) VALUES
(1, 'Australia Dollar', 'AUD', '$', 'left', '0', '1'),
(2, 'Brazil Real', 'BRL', 'R$', 'left', '0', '1'),
(3, 'Canada Dollar', 'CAD', '$', 'left', '0', '1'),
(4, 'Czech Republic Koruna', 'CZK', 'Kč', 'left', '0', '1'),
(5, 'Denmark Krone', 'DKK', 'kr', 'left', '0', '1'),
(6, 'Euro', 'EUR', '&euro;', 'left', '0', '1'),
(7, 'Hong Kong Dollar', 'HKD', '$', 'left', '0', '1'),
(8, 'Hungary Forint', 'HUF', 'Ft', 'left', '0', '1'),
(9, 'Israel Shekel', 'ILS', '₪', 'left', '0', '1'),
(10, 'Japan Yen', 'JPY', '&yen;', 'left', '0', '1'),
(11, 'Malaysia Ringgit', 'MYR', 'RM', 'left', '0', '1'),
(12, 'Mexico Peso', 'MXN', '$', 'left', '0', '1'),
(13, 'Norway Krone', 'NOK', 'kr', 'left', '0', '1'),
(14, 'New Zealand Dollar', 'NZD', '$', 'left', '0', '1'),
(15, 'Philippines Peso', 'PHP', '₱', 'left', '0', '1'),
(16, 'Poland Zloty', 'PLN', 'zł', 'left', '0', '1'),
(17, 'United Kingdom Pound', 'GBP', '&pound;', 'left', '0', '1'),
(18, 'Russia Ruble', 'RUB', '₽', 'left', '0', '1'),
(19, 'Singapore Dollar', 'SGD', '$', 'left', '0', '1'),
(20, 'Sweden Krona', 'SEK', 'kr', 'left', '0', '1'),
(21, 'Switzerland Franc', 'CHF', 'CHF', 'left', '0', '1'),
(22, 'Thailand Baht', 'THB', '฿', 'left', '0', '1'),
(23, 'Turkey Lira', 'TRY', 'TRY', 'left', '0', '1'),
(24, 'United States Dollar', 'USD', '$', 'left', '1', '1'),
(25, 'India Rupee', 'INR', '₹', 'right', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `system_genders`
--

CREATE TABLE `system_genders` (
  `gender_id` int(10) UNSIGNED NOT NULL,
  `gender_name` varchar(64) NOT NULL,
  `gender_order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `system_genders`
--

INSERT INTO `system_genders` (`gender_id`, `gender_name`, `gender_order`) VALUES
(1, 'Male', 1),
(2, 'Female', 2),
(3, 'Other', 3);

-- --------------------------------------------------------

--
-- Table structure for table `system_languages`
--

CREATE TABLE `system_languages` (
  `language_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(256) NOT NULL,
  `flag` varchar(256) NOT NULL,
  `dir` enum('LTR','RTL') NOT NULL,
  `default` enum('0','1') NOT NULL,
  `enabled` enum('0','1') NOT NULL,
  `language_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `system_languages`
--

INSERT INTO `system_languages` (`language_id`, `code`, `title`, `flag`, `dir`, `default`, `enabled`, `language_order`) VALUES
(1, 'en_us', 'English', 'flags/en_us.png', 'LTR', '1', '1', 1),
(2, 'ar_sa', 'Arabic', 'flags/ar_sa.png', 'RTL', '0', '1', 2),
(3, 'fr_fr', 'French', 'flags/fr_fr.png', 'LTR', '0', '1', 3),
(4, 'es_es', 'Spanish', 'flags/es_es.png', 'LTR', '0', '1', 4),
(5, 'pt_pt', 'Portuguese', 'flags/pt_pt.png', 'LTR', '0', '1', 5),
(6, 'de_de', 'Deutsch', 'flags/de_de.png', 'LTR', '0', '1', 6),
(7, 'tr_tr', 'Turkish', 'flags/tr_tr.png', 'LTR', '0', '1', 7),
(8, 'nl_nl', 'Dutch', 'flags/nl_nl.png', 'LTR', '0', '1', 8),
(9, 'it_it', 'Italiano', 'flags/it_it.png', 'LTR', '0', '1', 9),
(10, 'ru_ru', 'Russian', 'flags/ru_ru.png', 'LTR', '0', '1', 10),
(11, 'ro_ro', 'Romaian', 'flags/ro_ro.png', 'LTR', '0', '1', 11),
(12, 'pt_br', 'Portuguese (Brazil)', 'flags/pt_br.png', 'LTR', '0', '1', 12),
(13, 'el_gr', 'Greek', 'flags/el_gr.png', 'LTR', '0', '1', 13);

-- --------------------------------------------------------

--
-- Table structure for table `system_options`
--

CREATE TABLE `system_options` (
  `option_id` int(10) UNSIGNED NOT NULL,
  `option_name` varchar(128) NOT NULL,
  `option_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `system_options`
--

INSERT INTO `system_options` (`option_id`, `option_name`, `option_value`) VALUES
(1, 'system_public', '1'),
(2, 'system_live', '1'),
(3, 'system_message', 'We will Back Soon'),
(4, 'system_title', 'KipTalk'),
(5, 'system_description', 'Login or Signup a Free Account.'),
(6, 'system_keywords', 'social, social site, kiptalk, social media sites, social networking sites'),
(7, 'system_email', 'no-reply@kiptalk.com'),
(8, 'system_datetime_format', 'd/m/Y H:i'),
(9, 'contact_enabled', '1'),
(10, 'directory_enabled', '1'),
(11, 'pages_enabled', '1'),
(12, 'groups_enabled', '1'),
(13, 'events_enabled', '1'),
(14, 'blogs_enabled', '0'),
(15, 'users_blogs_enabled', '1'),
(16, 'market_enabled', '1'),
(17, 'movies_enabled', '0'),
(18, 'games_enabled', '0'),
(19, 'daytime_msg_enabled', '1'),
(20, 'pokes_enabled', '1'),
(21, 'gifts_enabled', '0'),
(22, 'profile_notification_enabled', '0'),
(23, 'browser_notifications_enabled', '1'),
(24, 'noty_notifications_enabled', '1'),
(25, 'cookie_consent_enabled', '1'),
(26, 'adblock_detector_enabled', '0'),
(27, 'stories_enabled', '1'),
(28, 'popular_posts_enabled', '1'),
(29, 'discover_posts_enabled', '1'),
(30, 'memories_enabled', '1'),
(31, 'wall_posts_enabled', '1'),
(32, 'activity_posts_enabled', '1'),
(33, 'colored_posts_enabled', '1'),
(34, 'polls_enabled', '1'),
(35, 'geolocation_enabled', '0'),
(36, 'geolocation_key', ''),
(37, 'gif_enabled', '0'),
(38, 'giphy_key', ''),
(39, 'post_translation_enabled', '0'),
(40, 'yandex_key', ''),
(41, 'smart_yt_player', '1'),
(42, 'social_share_enabled', '1'),
(43, 'max_post_length', '0'),
(44, 'max_comment_length', '0'),
(45, 'max_posts_hour', '0'),
(46, 'max_comments_hour', '0'),
(47, 'default_privacy', 'public'),
(48, 'trending_hashtags_enabled', '1'),
(49, 'trending_hashtags_interval', 'day'),
(50, 'trending_hashtags_limit', '5'),
(51, 'registration_enabled', '1'),
(52, 'registration_type', 'free'),
(53, 'invitation_enabled', '0'),
(56, 'packages_enabled', '0'),
(57, 'packages_wallet_payment_enabled', '1'),
(58, 'activation_enabled', '1'),
(59, 'activation_type', 'email'),
(60, 'verification_requests', '1'),
(61, 'age_restriction', '1'),
(62, 'minimum_age', '13'),
(63, 'getting_started', '1'),
(64, 'delete_accounts_enabled', '1'),
(65, 'download_info_enabled', '1'),
(66, 'newsletter_consent', '1'),
(67, 'max_accounts', '0'),
(68, 'max_friends', '5000'),
(69, 'social_login_enabled', '0'),
(70, 'facebook_login_enabled', '0'),
(71, 'facebook_appid', ''),
(72, 'facebook_secret', ''),
(73, 'google_login_enabled', '0'),
(74, 'google_appid', ''),
(75, 'google_secret', ''),
(76, 'twitter_login_enabled', '0'),
(77, 'twitter_appid', ''),
(78, 'twitter_secret', ''),
(82, 'linkedin_login_enabled', '0'),
(83, 'linkedin_appid', ''),
(84, 'linkedin_secret', ''),
(85, 'vkontakte_login_enabled', '0'),
(86, 'vkontakte_appid', ''),
(87, 'vkontakte_secret', ''),
(88, 'email_smtp_enabled', '0'),
(89, 'email_smtp_authentication', '0'),
(90, 'email_smtp_ssl', '0'),
(91, 'email_smtp_server', ''),
(92, 'email_smtp_port', ''),
(93, 'email_smtp_username', ''),
(94, 'email_smtp_password', ''),
(95, 'email_smtp_setfrom', ''),
(96, 'email_notifications', '1'),
(97, 'email_post_likes', '0'),
(98, 'email_post_comments', '0'),
(99, 'email_post_shares', '0'),
(100, 'email_wall_posts', '1'),
(101, 'email_mentions', '0'),
(102, 'email_profile_visits', '0'),
(103, 'email_friend_requests', '1'),
(104, 'twilio_sid', ''),
(105, 'twilio_token', ''),
(106, 'twilio_phone', ''),
(107, 'twilio_apisid', ''),
(108, 'twilio_apisecret', ''),
(109, 'system_phone', ''),
(110, 'chat_enabled', '1'),
(111, 'chat_status_enabled', '1'),
(112, 'chat_typing_enabled', '1'),
(113, 'chat_seen_enabled', '1'),
(114, 'video_call_enabled', '1'),
(115, 'audio_call_enabled', '1'),
(116, 'uploads_directory', 'content/uploads'),
(117, 'uploads_prefix', 'kiptalk'),
(118, 'max_avatar_size', '102400'),
(119, 'max_cover_size', '102400'),
(120, 'photos_enabled', '1'),
(121, 'max_photo_size', '102400'),
(122, 'uploads_quality', 'medium'),
(123, 'videos_enabled', '1'),
(124, 'max_video_size', '102400'),
(125, 'video_extensions', 'mp4, webm, ogg, mov, m4a, 3gp, 3g2, mj2, asf, avi, flv, webm, m4v, mpeg, ogv, mkv, ts'),
(126, 'audio_enabled', '1'),
(127, 'max_audio_size', '102400'),
(128, 'audio_extensions', 'mp3, wav, ogg, m4a'),
(129, 'file_enabled', '1'),
(130, 'max_file_size', '102400'),
(131, 'file_extensions', 'txt, zip, json, docx'),
(132, 's3_enabled', '0'),
(133, 's3_bucket', ''),
(134, 's3_region', ''),
(135, 's3_key', ''),
(136, 's3_secret', ''),
(137, 'digitalocean_enabled', '0'),
(138, 'digitalocean_space_name', ''),
(139, 'digitalocean_space_region', ''),
(140, 'digitalocean_key', ''),
(141, 'digitalocean_secret', ''),
(142, 'ftp_enabled', '0'),
(143, 'ftp_hostname', ''),
(144, 'ftp_port', ''),
(145, 'ftp_username', ''),
(146, 'ftp_password', ''),
(147, 'ftp_path', ''),
(148, 'ftp_endpoint', ''),
(150, 'unusual_login_enabled', '0'),
(151, 'brute_force_detection_enabled', '1'),
(152, 'brute_force_bad_login_limit', '5'),
(153, 'brute_force_lockout_time', '5'),
(154, 'two_factor_enabled', '1'),
(155, 'two_factor_type', 'email'),
(156, 'censored_words_enabled', '1'),
(157, 'censored_words', '[{&quot;value&quot;:&quot;pussy&quot;},{&quot;value&quot;:&quot;fuck&quot;},{&quot;value&quot;:&quot;shit&quot;},{&quot;value&quot;:&quot;asshole&quot;},{&quot;value&quot;:&quot;dick&quot;},{&quot;value&quot;:&quot;tits&quot;},{&quot;value&quot;:&quot;boobs&quot;}]'),
(158, 'reCAPTCHA_enabled', '0'),
(159, 'reCAPTCHA_site_key', ''),
(160, 'reCAPTCHA_secret_key', ''),
(161, 'paypal_enabled', '0'),
(162, 'paypal_mode', ''),
(163, 'paypal_id', ''),
(164, 'paypal_secret', ''),
(165, 'creditcard_enabled', '0'),
(166, 'alipay_enabled', '0'),
(167, 'stripe_mode', ''),
(168, 'stripe_test_secret', ''),
(169, 'stripe_test_publishable', ''),
(170, 'stripe_live_secret', ''),
(171, 'stripe_live_publishable', ''),
(172, 'coinpayments_enabled', '0'),
(173, 'coinpayments_merchant_id', ''),
(174, 'coinpayments_ipn_secret', ''),
(175, '2checkout_enabled', '0'),
(176, '2checkout_mode', ''),
(177, '2checkout_merchant_code', ''),
(178, '2checkout_publishable_key', ''),
(179, '2checkout_private_key', ''),
(180, 'bank_transfers_enabled', '0'),
(181, 'bank_name', ''),
(182, 'bank_account_number', ''),
(183, 'bank_account_name', ''),
(184, 'bank_account_routing', ''),
(185, 'bank_account_country', ''),
(186, 'bank_transfer_note', 'In order to confirm the bank transfer, you will need to upload a receipt or take a screenshot of your transfer within 1 day from your payment date. If a bank transfer is made but no receipt is uploaded within this period, your order will be cancelled. We will verify and confirm your receipt within 3 working days from the date you upload it.'),
(187, 'data_heartbeat', '5'),
(188, 'chat_heartbeat', '10'),
(189, 'offline_time', '10'),
(190, 'min_results', '5'),
(191, 'max_results', '10'),
(192, 'min_results_even', '6'),
(193, 'max_results_even', '12'),
(194, 'analytics_code', ''),
(195, 'system_theme_night_on', '0'),
(196, 'system_theme_mode_select', '1'),
(197, 'system_profile_background_enabled', '1'),
(198, 'system_logo', 'photos/2026/05/kiptalk_e468eac78c5f01f8099c03246f6c470b.png'),
(199, 'system_wallpaper_default', ''),
(200, 'system_wallpaper', 'photos/2026/05/kiptalk_8c661f95464e344b3c332923148eda9f.jpg'),
(201, 'system_favicon_default', '0'),
(202, 'system_favicon', 'photos/2026/05/kiptalk_7ed050a986ab4599285eedb2e4eb3c98.png'),
(203, 'system_ogimage_default', '1'),
(204, 'system_ogimage', ''),
(205, 'css_customized', '0'),
(206, 'css_background', ''),
(207, 'css_link_color', ''),
(208, 'css_header', ''),
(209, 'css_header_search', ''),
(210, 'css_header_search_color', ''),
(211, 'css_btn_primary', ''),
(212, 'css_custome_css', '/* \r\n\r\nAdd here your custom css styles \r\nExample:\r\np { text-align: center; color: red; }\r\n\r\n*/'),
(213, 'custome_js_header', '/* \r\nYou can add your JavaScript code here\r\n\r\nExample:\r\n\r\nvar x, y, z;\r\nx = 1;\r\ny = 2;\r\nz = x + y;\r\n*/'),
(214, 'custome_js_footer', '/* \r\nYou can add your JavaScript code here\r\n\r\nExample:\r\n\r\nvar x, y, z;\r\nx = 1;\r\ny = 2;\r\nz = x + y;\r\n*/'),
(215, 'forums_enabled', '0'),
(216, 'forums_online_enabled', '1'),
(217, 'forums_statistics_enabled', '1'),
(218, 'affiliates_enabled', '0'),
(219, 'affiliate_type', 'packages'),
(220, 'affiliate_payment_method', 'paypal,skrill'),
(221, 'affiliate_payment_method_custom', ''),
(222, 'affiliates_min_withdrawal', '50'),
(223, 'affiliate_payment_type', 'fixed'),
(224, 'affiliates_per_user', '0.25'),
(225, 'affiliates_percentage', '25'),
(226, 'points_enabled', '0'),
(227, 'points_money_withdraw_enabled', '1'),
(228, 'points_payment_method', 'paypal,skrill'),
(229, 'points_payment_method_custom', ''),
(230, 'points_min_withdrawal', '50'),
(231, 'points_money_transfer_enabled', '1'),
(232, 'points_per_currency', '100'),
(233, 'points_per_post', '5'),
(234, 'points_per_comment', '5'),
(235, 'points_per_reaction', '5'),
(236, 'points_limit_user', '1000'),
(237, 'points_limit_pro', '2000'),
(238, 'ads_enabled', '0'),
(239, 'ads_cost_click', '0.05'),
(240, 'ads_cost_view', '0.01'),
(241, 'developers_apps_enabled', '1'),
(242, 'developers_share_enabled', '0'),
(243, 'auto_friend', '1'),
(244, 'auto_friend_users', '[{&quot;value&quot;:&quot;Tasha Morris&quot;,&quot;id&quot;:&quot;3&quot;},{&quot;value&quot;:&quot;Shidy Jnr&quot;,&quot;id&quot;:&quot;2&quot;},{&quot;value&quot;:&quot;Levixone Lucas&quot;,&quot;id&quot;:&quot;17&quot;}]'),
(245, 'auto_follow', '1'),
(246, 'auto_follow_users', '[{&quot;value&quot;:&quot;Shidy TheBoss&quot;,&quot;id&quot;:&quot;2&quot;},{&quot;value&quot;:&quot;Tasha Morris&quot;,&quot;id&quot;:&quot;3&quot;},{&quot;value&quot;:&quot;Shidy Jnr&quot;,&quot;id&quot;:&quot;2&quot;},{&quot;value&quot;:&quot;Levixone Lucas&quot;,&quot;id&quot;:&quot;17&quot;}]'),
(247, 'auto_like', '1'),
(248, 'auto_like_pages', '[{&quot;value&quot;:&quot;Shidy TheBoss&quot;,&quot;id&quot;:&quot;2&quot;},{&quot;value&quot;:&quot;KipTalk&quot;,&quot;id&quot;:&quot;1&quot;},{&quot;value&quot;:&quot;Levixone&quot;,&quot;id&quot;:&quot;3&quot;}]'),
(249, 'auto_join', '1'),
(250, 'auto_join_groups', ''),
(251, 'last_backup_time', ''),
(252, 'sms_provider', 'twilio'),
(253, 'bulksms_username', ''),
(254, 'bulksms_password', ''),
(255, 'infobip_username', ''),
(256, 'infobip_password', ''),
(257, 'watermark_enabled', '0'),
(258, 'watermark_icon', 'photos/2026/05/sngine_6c1485b194c8f0f69ce2ccf9de000f57.png'),
(259, 'watermark_position', 'bottom right'),
(260, 'watermark_xoffset', '-30'),
(261, 'watermark_yoffset', '-30'),
(262, 'watermark_opacity', '0.5'),
(263, 'adult_images_enabled', '1'),
(264, 'adult_images_action', 'delete'),
(265, 'adult_images_api_key', ''),
(266, 'mobile_infinite_scroll', '1'),
(267, 'limit_cover_photo', '1'),
(268, 'comments_photos_enabled', '1'),
(269, 'chat_photos_enabled', '1'),
(270, 'onesignal_notification_enabled', '0'),
(271, 'onesignal_app_id', ''),
(272, 'onesignal_api_key', ''),
(273, 'system_distance', 'kilometer'),
(274, 'wallet_enabled', '0'),
(275, 'wallet_transfer_enabled', '1'),
(276, 'affiliates_money_withdraw_enabled', '1'),
(277, 'affiliates_money_transfer_enabled', '1'),
(286, 'jobs_enabled', '1'),
(287, 'posts_online_status', '1'),
(288, 'anonymous_mode', '1'),
(289, 'tinymce_photos_enabled', '1'),
(290, 'voice_notes_posts_enabled', '1'),
(291, 'voice_notes_comments_enabled', '1'),
(292, 'voice_notes_chat_enabled', '1'),
(293, 'offers_enabled', '1'),
(294, 'live_enabled', '0'),
(295, 'save_live_enabled', '0'),
(297, 'agora_app_id', ''),
(298, 'agora_app_certificate', ''),
(299, 'agora_customer_id', ''),
(300, 'agora_customer_certificate', ''),
(301, 'agora_s3_bucket', ''),
(302, 'agora_s3_region', 'us-east-1'),
(303, 'agora_s3_key', ''),
(304, 'agora_s3_secret', ''),
(305, 'chat_permanently_delete_enabled', '1'),
(306, 'system_description_directory', ''),
(307, 'system_description_offers', 'Discover new offers'),
(308, 'system_description_jobs', 'Discover new jobs offers'),
(309, 'system_description_blogs', 'Explore the latest blogs'),
(310, 'system_description_marketplace', 'Discover new products'),
(311, 'system_description_forums', 'The great place to discuss topics with other users'),
(312, 'system_description_movies', 'Discover new movies'),
(313, 'stories_duration', '5'),
(314, 'desktop_infinite_scroll', '1'),
(315, 'disable_declined_friendrequest', '1'),
(316, 'wallet_withdrawal_enabled', '1'),
(317, 'wallet_payment_method', 'paypal,skrill'),
(318, 'wallet_payment_method_custom', ''),
(319, 'wallet_min_withdrawal', '50'),
(320, 'location_finder_enabled', '1'),
(321, 'relationship_info_enabled', '1'),
(322, 'website_info_enabled', '1'),
(323, 'biography_info_enabled', '1'),
(324, 'work_info_enabled', '1'),
(325, 'education_info_enabled', '1'),
(326, 'social_info_enabled', '0'),
(327, 'location_info_enabled', '1'),
(328, 'show_usernames_enabled', '0'),
(329, 'msg91_authkey', ''),
(330, 'name_min_length', '3'),
(331, 'newsfeed_source', 'all_posts'),
(334, 'funding_enabled', '1'),
(336, 'system_description_funding', 'Discover new funding requests'),
(339, 'paystack_enabled', '0'),
(340, 'paystack_secret', ''),
(341, 'funding_money_withdraw_enabled', '1'),
(342, 'funding_payment_method', 'paypal,skrill'),
(343, 'funding_payment_method_custom', ''),
(344, 'funding_min_withdrawal', '50'),
(345, 'funding_money_transfer_enabled', '1'),
(346, 'funding_commission', '10'),
(347, 'play_store_badge_enabled', '0'),
(348, 'play_store_link', ''),
(349, 'app_store_badge_enabled', '0'),
(350, 'app_store_link', ''),
(352, 'invitation_user_limit', '5'),
(353, 'invitation_expire_period', 'month'),
(354, 'invitation_send_method', 'email'),
(355, 'appgallery_badge_enabled', '0'),
(356, 'appgallery_store_link', ''),
(357, 'points_per_follow', '5'),
(358, 'points_per_referred', '5'),
(359, 'newsfeed_results', '12'),
(365, 'ads_approval_enabled', '0'),
(407, 'uploads_cdn_url', ''),
(592, 'affiliates_levels', '5'),
(692, 'voice_notes_durtaion', '120'),
(693, 'voice_notes_encoding', 'wav'),
(702, 'pages_results', '12'),
(729, 'groups_results', '12'),
(730, 'events_results', '12'),
(921, 'system_currency_dir', 'left'),
(968, 'games_results', '12'),
(1004, 'newsfeed_public', '0'),
(1005, 'search_results', '12'),
(1006, 'auto_play_videos', '1'),
(1010, 'wasabi_enabled', '0'),
(1011, 'wasabi_bucket', ''),
(1012, 'wasabi_region', ''),
(1013, 'wasabi_key', ''),
(1014, 'wasabi_secret', ''),
(1028, 'marketplace_results', '12'),
(1029, 'offers_results', '12'),
(1030, 'jobs_results', '12'),
(1068, 'activation_required', '1'),
(1191, 's3', '0'),
(1195, 'google_cloud_enabled', '0'),
(1196, 'google_cloud_bucket', ''),
(1197, 'google_cloud_file', ''),
(1198, 'html_richtext_enabled', '0'),
(1199, 'razorpay_enabled', '0'),
(1200, 'razorpay_key_id', ''),
(1201, 'razorpay_key_secret', ''),
(1214, 'cashfree_enabled', '0'),
(1215, 'cashfree_mode', ''),
(1216, 'cashfree_client_id', ''),
(1217, 'cashfree_client_secret', ''),
(1228, 'coinbase_enabled', '0'),
(1229, 'coinbase_api_key', ''),
(1238, 'shift4_enabled', '0'),
(1239, 'shift4_api_key', ''),
(1240, 'shift4_api_secret', ''),
(1247, 'special_characters_enabled', '1'),
(1286, 'backblaze_enabled', '0'),
(1287, 'backblaze_bucket', ''),
(1288, 'backblaze_region', ''),
(1289, 'backblaze_key', ''),
(1290, 'backblaze_secret', ''),
(1291, 'ffmpeg_enabled', '0'),
(1292, 'ffmpeg_path', ''),
(1293, 'ffmpeg_speed', 'medium'),
(1294, 'reserved_usernames_enabled', '1'),
(1295, 'reserved_usernames', '[{&quot;value&quot;:&quot;install&quot;},{&quot;value&quot;:&quot;static&quot;},{&quot;value&quot;:&quot;contact&quot;},{&quot;value&quot;:&quot;contacts&quot;},{&quot;value&quot;:&quot;sign&quot;},{&quot;value&quot;:&quot;signin&quot;},{&quot;value&quot;:&quot;login&quot;},{&quot;value&quot;:&quot;signup&quot;},{&quot;value&quot;:&quot;register&quot;},{&quot;value&quot;:&quot;signout&quot;},{&quot;value&quot;:&quot;logout&quot;},{&quot;value&quot;:&quot;reset&quot;},{&quot;value&quot;:&quot;activation&quot;},{&quot;value&quot;:&quot;connect&quot;},{&quot;value&quot;:&quot;revoke&quot;},{&quot;value&quot;:&quot;packages&quot;},{&quot;value&quot;:&quot;started&quot;},{&quot;value&quot;:&quot;search&quot;},{&quot;value&quot;:&quot;friends&quot;},{&quot;value&quot;:&quot;messages&quot;},{&quot;value&quot;:&quot;message&quot;},{&quot;value&quot;:&quot;notifications&quot;},{&quot;value&quot;:&quot;notification&quot;},{&quot;value&quot;:&quot;settings&quot;},{&quot;value&quot;:&quot;setting&quot;},{&quot;value&quot;:&quot;posts&quot;},{&quot;value&quot;:&quot;post&quot;},{&quot;value&quot;:&quot;photos&quot;},{&quot;value&quot;:&quot;photo&quot;},{&quot;value&quot;:&quot;create&quot;},{&quot;value&quot;:&quot;pages&quot;},{&quot;value&quot;:&quot;page&quot;},{&quot;value&quot;:&quot;groups&quot;},{&quot;value&quot;:&quot;group&quot;},{&quot;value&quot;:&quot;events&quot;},{&quot;value&quot;:&quot;event&quot;},{&quot;value&quot;:&quot;games&quot;},{&quot;value&quot;:&quot;game&quot;},{&quot;value&quot;:&quot;saved&quot;},{&quot;value&quot;:&quot;forums&quot;},{&quot;value&quot;:&quot;forum&quot;},{&quot;value&quot;:&quot;blogs&quot;},{&quot;value&quot;:&quot;blog&quot;},{&quot;value&quot;:&quot;articles&quot;},{&quot;value&quot;:&quot;article&quot;},{&quot;value&quot;:&quot;directory&quot;},{&quot;value&quot;:&quot;products&quot;},{&quot;value&quot;:&quot;product&quot;},{&quot;value&quot;:&quot;market&quot;},{&quot;value&quot;:&quot;admincp&quot;},{&quot;value&quot;:&quot;admin&quot;},{&quot;value&quot;:&quot;admins&quot;},{&quot;value&quot;:&quot;modcp&quot;},{&quot;value&quot;:&quot;moderator&quot;},{&quot;value&quot;:&quot;moderators&quot;},{&quot;value&quot;:&quot;moderatorcp&quot;},{&quot;value&quot;:&quot;chat&quot;},{&quot;value&quot;:&quot;ads&quot;},{&quot;value&quot;:&quot;wallet&quot;},{&quot;value&quot;:&quot;boosted&quot;},{&quot;value&quot;:&quot;people&quot;},{&quot;value&quot;:&quot;popular&quot;},{&quot;value&quot;:&quot;movies&quot;},{&quot;value&quot;:&quot;movie&quot;},{&quot;value&quot;:&quot;api&quot;},{&quot;value&quot;:&quot;apis&quot;},{&quot;value&quot;:&quot;oauth&quot;},{&quot;value&quot;:&quot;authorize&quot;},{&quot;value&quot;:&quot;anonymous&quot;},{&quot;value&quot;:&quot;jobs&quot;},{&quot;value&quot;:&quot;job&quot;}]'),
(1310, 'getting_started_profile_image_required', '0'),
(1311, 'getting_started_location_required', '0'),
(1312, 'getting_started_education_required', '0'),
(1313, 'getting_started_work_required', '0'),
(1314, 'posts_views_enabled', '1'),
(1425, 'points_per_post_view', '0.001'),
(1548, 'newsfeed_location_filter_enabled', '1'),
(1833, 'monetization_wallet_payment_enabled', '1'),
(1834, 'content_monetization_commission', '10'),
(1836, 'system_logo_dark', 'photos/2026/05/sngine_2b9c3cee4dfa19c5cef45e220e1464bd.png'),
(1837, 'monetization_enabled', '0'),
(1839, 'monetization_money_withdraw_enabled', '1'),
(1840, 'monetization_payment_method_custom', ''),
(1841, 'monetization_min_withdrawal', '50'),
(1842, 'monetization_money_transfer_enabled', '1'),
(1843, 'monetization_commission', '10'),
(1844, 'monetization_payment_method', 'paypal,skrill'),
(1855, 'watch_enabled', '1'),
(1929, 'tips_enabled', '0'),
(1931, 'tips_min_amount', '10'),
(1932, 'tips_max_amount', '100'),
(2047, 'allow_animated_images', '1'),
(2059, 'system_description_pages', 'Discover pages'),
(2060, 'system_description_groups', 'Discover groups'),
(2061, 'system_description_events', 'Discover events'),
(2062, 'system_description_games', 'Discover new games'),
(2063, 'system_morning_message', 'Start your day with a post! Say something!'),
(2064, 'system_afternoon_message', 'May Your Afternoon Be Light, Blessed, And Happy'),
(2065, 'system_evening_message', 'We hope you are enjoying your evening'),
(2129, 'moneypoolscash_enabled', '0'),
(2130, 'moneypoolscash_api_key', ''),
(2131, 'moneypoolscash_merchant_email', ''),
(2148, 'wordpress_login_enabled', '0'),
(2149, 'wordpress_appid', ''),
(2150, 'wordpress_secret', ''),
(2244, 'moneypoolscash_merchant_password', ''),
(2266, 'default_custom_user_group', '0'),
(2285, 'verification_docs_required', '1'),
(2286, 'fluid_design', '0'),
(2446, 'css_header_icons', ''),
(2447, 'css_header_icons_night', ''),
(2448, 'css_main_icons', ''),
(2449, 'css_main_icons_night', ''),
(2450, 'css_action_icons', ''),
(2451, 'css_action_icons_night', ''),
(2454, 'sngine_login_enabled', '0'),
(2455, 'sngine_appid', ''),
(2456, 'sngine_secret', ''),
(2499, 'sngine_app_domain', ''),
(2522, 'sngine_app_name', ''),
(2570, 'sngine_app_icon', ''),
(2571, 'market_money_withdraw_enabled', '1'),
(2572, 'market_payment_method', 'paypal,skrill,bank'),
(2573, 'market_payment_method_custom', ''),
(2574, 'market_min_withdrawal', '50'),
(2575, 'market_money_transfer_enabled', '1'),
(2576, 'market_commission', '10'),
(2577, 'sms_limit', '3'),
(2596, 'switch_accounts_enabled', '1'),
(2597, 'wallet_max_transfer', '5'),
(2753, 'packages_ads_free_enabled', '1'),
(2823, 'paypal_webhook', ''),
(2856, 'reviews_enabled', '1'),
(2857, 'reviews_replacement_enabled', '1'),
(2858, 'genders_disabled', '0'),
(2859, 'stripe_webhook', ''),
(2860, 'ffmpeg_240p_enabled', 'on'),
(2861, 'ffmpeg_360p_enabled', 'on'),
(2862, 'ffmpeg_480p_enabled', 'on'),
(2863, 'ffmpeg_720p_enabled', 'on'),
(2864, 'ffmpeg_1080p_enabled', ''),
(2865, 'ffmpeg_1440p_enabled', ''),
(2866, 'ffmpeg_2160p_enabled', ''),
(2990, 'fluid_videos_enabled', '1'),
(2991, 'pages_events_enabled', '1'),
(2992, 'verification_for_monetization', '1'),
(2993, 'verification_for_adult_content', '0'),
(3004, 'adult_mode', '0'),
(3119, 'payment_vat_enabled', '0'),
(3120, 'payment_country_vat_enabled', '0'),
(3121, 'payment_vat_percentage', '20'),
(3122, 'payment_fees_enabled', '1'),
(3123, 'payment_fees_percentage', '1'),
(3125, 'watermark_videos_enabled', '0'),
(3126, 'watermark_videos_icon', ''),
(3127, 'watermark_videos_position', 'center'),
(3128, 'watermark_videos_opacity', '0.5'),
(3129, 'watermark_videos_xoffset', '10'),
(3130, 'watermark_videos_yoffset', '10'),
(3131, 'posts_approval_enabled', '0'),
(3132, 'posts_approval_limit', '5'),
(3133, 'verification_for_posts', '0'),
(3134, 'email_admin_verifications', '1'),
(3135, 'email_admin_post_approval', '0'),
(3136, 'email_user_verification', '1'),
(3137, 'email_user_post_approval', '0'),
(3162, 'posts_views_type', 'all'),
(3163, 'market_shopping_cart_enabled', '0'),
(3164, 'pages_reviews_enabled', '1'),
(3165, 'pages_reviews_replacement_enabled', '1'),
(3166, 'groups_reviews_enabled', '1'),
(3167, 'groups_reviews_replacement_enabled', '1'),
(3168, 'events_reviews_enabled', '1'),
(3169, 'events_reviews_replacement_enabled', '1'),
(3310, 'posts_reviews_enabled', '0'),
(3311, 'posts_reviews_replacement_enabled', '0'),
(3312, 'landing_page_template', 'elengine'),
(3313, 'authorize_net_enabled', '0'),
(3314, 'authorize_net_api_login_id', ''),
(3315, 'authorize_net_transaction_key', ''),
(3400, 'authorize_net_mode', 'sandbox'),
(3401, 'users_approval_enabled', '0'),
(3476, 'email_admin_user_approval', '0'),
(3498, 'courses_enabled', '0'),
(3518, 'courses_results', '12'),
(3569, 'system_description_courses', 'Discover new courses'),
(3570, 'disable_username_changes', '0'),
(3571, 'user_privacy_chat', 'public'),
(3572, 'user_privacy_poke', 'public'),
(3573, 'user_privacy_gifts', 'public'),
(3574, 'user_privacy_wall', 'public'),
(3575, 'user_privacy_gender', 'public'),
(3576, 'user_privacy_relationship', 'public'),
(3577, 'user_privacy_birthdate', 'public'),
(3578, 'user_privacy_basic', 'public'),
(3579, 'user_privacy_work', 'public'),
(3580, 'user_privacy_location', 'public'),
(3581, 'user_privacy_education', 'public'),
(3582, 'user_privacy_other', 'public'),
(3583, 'user_privacy_friends', 'public'),
(3584, 'user_privacy_followers', 'public'),
(3585, 'user_privacy_subscriptions', 'public'),
(3586, 'user_privacy_photos', 'public'),
(3587, 'user_privacy_pages', 'public'),
(3588, 'user_privacy_groups', 'public'),
(3589, 'user_privacy_events', 'public'),
(3714, 'yandex_cloud_enabled', '0'),
(3715, 'yandex_cloud_bucket', ''),
(3716, 'yandex_cloud_region', ''),
(3717, 'yandex_cloud_key', ''),
(3718, 'yandex_cloud_secret', ''),
(3719, 'points_per_post_comment', '5'),
(3720, 'points_per_post_reaction', '5'),
(3754, 'profile_posts_updates_disabled', '0'),
(3844, 'monetization_max_paid_post_price', '0'),
(3845, 'monetization_max_plan_price', '0'),
(3864, 'watermark_type', 'username'),
(3865, 'download_images_disabled', '0'),
(3866, 'right_click_disabled', '0'),
(3867, 'myfatoorah_enabled', '0'),
(3868, 'myfatoorah_mode', ''),
(3869, 'myfatoorah_test_token', ''),
(3870, 'myfatoorah_live_token', ''),
(3871, 'myfatoorah_live_api_url', ''),
(3872, 'select_user_group_enabled', '0'),
(3948, 'show_user_group_enabled', '0'),
(3949, 'funding_wallet_payment_enabled', '1'),
(3950, 'epayco_enabled', '0'),
(3951, 'epayco_mode', ''),
(3952, 'epayco_public_key', ''),
(3953, 'epayco_private_key', ''),
(3954, 'friends_enabled', '1'),
(4050, 'flutterwave_enabled', '0'),
(4051, 'flutterwave_mode', ''),
(4052, 'flutterwave_public_key', ''),
(4053, 'flutterwave_secret_key', ''),
(4054, 'flutterwave_encryption_key', ''),
(4055, 'max_daily_upload_size', '0'),
(4372, 'pages_pbid_enabled', '0'),
(4374, 'activities_edit_limit', '15'),
(4375, 'stripe_payment_element_enabled', '0'),
(4606, 'blogs_results', '12'),
(4624, 'funding_results', '12'),
(4719, 'verotel_enabled', '0'),
(4721, 'verotel_shop_id', ''),
(4722, 'verotel_signature_key', ''),
(4723, 'auto_language_detection', '1'),
(4724, 'paypal_payouts_enabled', '0'),
(4725, 'moneypoolscash_payouts_enabled', '0'),
(4726, 'reels_enabled', '1'),
(4727, 'google_translation_key', ''),
(4775, 'chat_translation_enabled', '0'),
(4776, 'market_wallet_payment_enabled', '1'),
(4784, 'censored_domains_enabled', '1'),
(4785, 'censored_domains', '[{&quot;value&quot;:&quot;pornhub.com&quot;},{&quot;value&quot;:&quot;xvideos.com&quot;},{&quot;value&quot;:&quot;xnxx.com&quot;},{&quot;value&quot;:&quot;ugandanporn.com&quot;}]'),
(4786, 'mods_users_permission', '1'),
(4793, 'mods_posts_permission', '1'),
(4794, 'mods_pages_permission', '1'),
(4795, 'mods_groups_permission', '1'),
(4796, 'mods_events_permission', '1'),
(4797, 'mods_blogs_permission', '1'),
(4798, 'mods_offers_permission', '1'),
(4799, 'mods_jobs_permission', '1'),
(4800, 'mods_courses_permission', '1'),
(4801, 'mods_forums_permission', '1'),
(4802, 'mods_movies_permission', '1'),
(4803, 'mods_games_permission', '1'),
(4804, 'mods_reports_permission', '1'),
(4805, 'mods_verifications_permission', '1'),
(5083, 'mods_ads_permission', '0'),
(5084, 'mods_wallet_permission', '0'),
(5085, 'mods_affiliates_permission', '0'),
(5086, 'mods_points_permission', '0'),
(5087, 'mods_marketplace_permission', '0'),
(5088, 'mods_funding_permission', '0'),
(5089, 'mods_monetization_permission', '0'),
(5090, 'mods_tips_permission', '0'),
(5091, 'mods_payments_permission', '0'),
(5092, 'mods_developers_permission', '1'),
(5093, 'mods_blacklist_permission', '1'),
(5094, 'mods_customization_permission', '1'),
(5095, 'mods_reach_permission', '1'),
(5137, 'mods_pro_permission', '0'),
(5138, 'ads_author_view_enabled', '1'),
(5156, 'audio_video_provider', 'livekit'),
(5157, 'livekit_api_key', ''),
(5158, 'livekit_api_secret', ''),
(5159, 'livekit_ws_url', ''),
(5160, 'cover_crop_enabled', '0'),
(5210, 'market_cod_payment_enabled', '1'),
(5211, 'chunk_upload_size', '100'),
(5719, 'smooth_infinite_scroll', '1'),
(5771, 'newsfeed_merge_enabled', '1'),
(5772, 'merge_recent_results', '12'),
(5773, 'merge_popular_results', '7'),
(5774, 'merge_discover_results', '7'),
(5775, 'newsfeed_caching_enabled', '1'),
(5796, 'popular_posts_interval', 'day'),
(6017, 'pwa_enabled', '1'),
(6018, 'pwa_192_icon', 'photos/2026/05/kiptalk_d59eabe30215c4759818adb15f249bae.png'),
(6019, 'pwa_512_icon', 'photos/2026/05/kiptalk_5b332bfd258a57f3236f2c5d607947c9.png'),
(6020, 'pwa_banner_enabled', '1'),
(6249, 'mask_file_path_enabled', '1'),
(6252, 'disable_yt_player', '1'),
(6614, 'mercadopago_enabled', '0'),
(6615, 'mercadopago_public_key', ''),
(6616, 'mercadopago_access_token', ''),
(6797, 'merits_enabled', '0'),
(6798, 'merits_peroid_max', '10'),
(6799, 'merits_send_peroid_max', '5'),
(6800, 'merits_peroid', '1'),
(6805, 'merits_notifications_recharge', '1'),
(6806, 'merits_notifications_reminder', '1'),
(6807, 'merits_notifications_recipient', '1'),
(6820, 'merits_widgets_newsfeed', '1'),
(6821, 'merits_widgets_winners', '1'),
(6822, 'merits_widgets_balance', '1'),
(6823, 'merits_widgets_statistics', '1'),
(6868, 'merits_peroid_reset', '1'),
(6944, 'cronjob_hash', '7d6c10684ae17ff98317c4b62e8b90d8'),
(6948, 'cronjob_enabled', '0'),
(6949, 'cronjob_reset_pro_packages', '1'),
(6950, 'cronjob_merits_reminder', '1'),
(6955, 'merits_notifications_sender', '1'),
(6994, 'system_back_swipe', '0'),
(7097, 'posts_schedule_enabled', '1'),
(7100, 'whitelist_enabled', '0'),
(7101, 'whitelist_providers', ''),
(7394, 'allow_heif_images', '1'),
(7501, 'affiliate_payment_to', 'buyer'),
(7502, 'affiliates_per_user_2', '0.20'),
(7503, 'affiliates_percentage_2', '20'),
(7504, 'affiliates_per_user_3', '0.15'),
(7505, 'affiliates_percentage_3', '15'),
(7506, 'affiliates_per_user_4', '0.10'),
(7507, 'affiliates_percentage_4', '10'),
(7508, 'affiliates_per_user_5', '0.05'),
(7509, 'affiliates_percentage_5', '5'),
(7522, 'turnstile_enabled', '0'),
(7523, 'turnstile_site_key', ''),
(7524, 'turnstile_secret_key', ''),
(7561, 'password_complexity_enabled', '0'),
(7612, 'market_delivery_days', '30'),
(7640, 'cronjob_undelivered_orders', '1'),
(8259, 'system_api_key', ''),
(8260, 'system_api_secret', ''),
(8272, 'system_jwt_key', '68f616c522b3a45760ed15d0b693154a'),
(8389, 'onesignal_messenger_notification_enabled', '0'),
(8390, 'onesignal_messenger_app_id', ''),
(8391, 'onesignal_messenger_api_key', ''),
(8392, 'onesignal_timeline_notification_enabled', '0'),
(8393, 'onesignal_timeline_app_id', ''),
(8394, 'onesignal_timeline_api_key', ''),
(8489, 'cloudflare_r2_enabled', '0'),
(8490, 'cloudflare_r2_bucket', ''),
(8491, 'cloudflare_r2_key', ''),
(8492, 'cloudflare_r2_secret', ''),
(8493, 'cloudflare_r2_endpoint', ''),
(8501, 'cloudflare_r2_custom_domain', ''),
(8691, 'chat_socket_enabled', '0'),
(8692, 'chat_socket_port', '3000'),
(8693, 'chat_socket_ssl_crt', ''),
(8694, 'chat_socket_ssl_key', ''),
(8695, 'chat_socket_ssl_verify_peer', '1'),
(8696, 'chat_socket_ssl_allow_self_signed', '0'),
(8769, 'chat_socket_server', 'php'),
(8770, 'php_bin_path', ''),
(8771, 'nodejs_bin_path', ''),
(9132, 'cronjob_clear_pending_uploads', '1'),
(9439, 'pushr_enabled', '0'),
(9440, 'pushr_bucket', ''),
(9441, 'pushr_key', ''),
(9442, 'pushr_secret', ''),
(9443, 'pushr_endpoint', ''),
(9444, 'pushr_hostname', ''),
(9870, 'agora_call_app_id', ''),
(9871, 'agora_call_app_certificate', ''),
(10003, 'msg91_template_id', ''),
(10315, 'pro_users_widget_enabled', '1'),
(10316, 'pro_page_widget_enabled', '1'),
(10534, 'name_max_length', '12'),
(10735, 'chat_socket_proxied', '1'),
(11521, 'pro_groups_widget_enabled', '0'),
(11522, 'pro_events_widget_enabled', '0'),
(11668, 'plisio_enabled', '0'),
(11669, 'plisio_secret_key', ''),
(11670, 'chat_videos_enabled', '1'),
(11687, 'market_digital_products_enabled', '1'),
(11760, 'ageverif_enabled', '0'),
(11761, 'ageverif_api_key', ''),
(11822, 'reels_minimum_duration', '0'),
(11823, 'reels_maximum_duration', '0'),
(11919, 'video_minimum_duration', '0'),
(11920, 'video_maximum_duration', '0'),
(12025, 'paid_blogs_enabled', '0'),
(12026, 'paid_blogs_cost', '0'),
(12027, 'paid_products_enabled', '0'),
(12028, 'paid_products_cost', '0'),
(12029, 'paid_funding_enabled', '0'),
(12030, 'paid_funding_cost', '0'),
(12031, 'paid_offers_enabled', '0'),
(12032, 'paid_offers_cost', '0'),
(12033, 'paid_jobs_enabled', '0'),
(12034, 'paid_jobs_cost', '0'),
(12035, 'paid_courses_enabled', '0'),
(12036, 'paid_courses_cost', '0'),
(12293, 'redirect_to_mobile_apps', '0'),
(12294, 'messaging_app_android_link', ''),
(12295, 'messaging_app_ios_link', ''),
(12320, 'gifts_points_enabled', '0'),
(12369, 'blogs_widget_enabled', '0'),
(12371, 'support_center_enabled', '1'),
(13200, 'pages_location_filter_enabled', '1'),
(13201, 'groups_location_filter_enabled', '1'),
(13202, 'events_location_filter_enabled', '1'),
(13330, 'collaborative_posts_enabled', '1'),
(13332, 'user_privacy_collaborative', 'public'),
(13519, 'monetization_discounts_enabled', '1'),
(13683, 'ai_posts_enabled', '0'),
(13684, 'ai_posts_provider', 'openai'),
(13685, 'ai_blogs_enabled', '0'),
(13686, 'ai_blogs_provider', 'openai'),
(13687, 'ai_images_enabled', '0'),
(13688, 'ai_images_provider', 'openai'),
(13695, 'openai_api_key', ''),
(13696, 'openai_text_model', ''),
(13697, 'replicate_api_token', ''),
(13698, 'replicate_model', ''),
(13699, 'replicate_denoising_steps', '1'),
(13700, 'replicate_guidance_scale', '1'),
(13701, 'replicate_seed', ''),
(13716, 'ai_credit_cost', '100'),
(13717, 'ai_text_credit_enabled', '1'),
(13718, 'ai_generated_word_cost', '10'),
(13719, 'ai_image_credit_enabled', '1'),
(13720, 'ai_generated_image_cost', '25'),
(13750, 'system_description_watch', 'Explore the latest videos'),
(14159, 'openai_image_model', ''),
(14460, 'ai_mode', 'live'),
(14954, 'affiliates_per_user_6', ''),
(14955, 'affiliates_percentage_6', ''),
(14956, 'affiliates_per_user_7', ''),
(14957, 'affiliates_percentage_7', ''),
(14958, 'affiliates_per_user_8', ''),
(14959, 'affiliates_percentage_8', ''),
(14960, 'affiliates_per_user_9', ''),
(14961, 'affiliates_percentage_9', ''),
(14962, 'affiliates_per_user_10', ''),
(14963, 'affiliates_percentage_10', '');

-- --------------------------------------------------------

--
-- Table structure for table `system_reactions`
--

CREATE TABLE `system_reactions` (
  `reaction_id` int(10) UNSIGNED NOT NULL,
  `reaction` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `color` varchar(128) DEFAULT NULL,
  `image` varchar(256) NOT NULL,
  `reaction_order` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `enabled` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `system_reactions`
--

INSERT INTO `system_reactions` (`reaction_id`, `reaction`, `title`, `color`, `image`, `reaction_order`, `enabled`) VALUES
(1, 'like', 'Like', '#1e8bd2', 'reactions/like.png', 1, '1'),
(2, 'love', 'Love', '#f25268', 'reactions/love.png', 2, '1'),
(3, 'haha', 'Haha', '#f3b715', 'reactions/haha.png', 3, '1'),
(4, 'yay', 'Yay', '#F3B715', 'reactions/yay.png', 4, '1'),
(5, 'wow', 'Wow', '#f3b715', 'reactions/wow.png', 5, '1'),
(6, 'sad', 'Sad', '#f3b715', 'reactions/sad.png', 6, '1'),
(7, 'angry', 'Angry', '#f7806c', 'reactions/angry.png', 7, '1');

-- --------------------------------------------------------

--
-- Table structure for table `system_themes`
--

CREATE TABLE `system_themes` (
  `theme_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `default` enum('0','1') NOT NULL,
  `enabled` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `system_themes`
--

INSERT INTO `system_themes` (`theme_id`, `name`, `default`, `enabled`) VALUES
(1, 'default', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_master_account` int(11) NOT NULL DEFAULT 0,
  `user_group` tinyint(3) UNSIGNED NOT NULL DEFAULT 3,
  `user_group_custom` int(11) NOT NULL DEFAULT 0,
  `user_demo` enum('0','1') NOT NULL DEFAULT '0',
  `user_name` varchar(64) NOT NULL,
  `user_email` varchar(64) NOT NULL,
  `user_email_verified` enum('0','1') NOT NULL DEFAULT '0',
  `user_email_verification_code` varchar(64) DEFAULT NULL,
  `user_phone` varchar(64) DEFAULT NULL,
  `user_phone_verified` enum('0','1') NOT NULL DEFAULT '0',
  `user_phone_verification_code` varchar(64) DEFAULT NULL,
  `user_password` varchar(64) NOT NULL,
  `user_two_factor_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `user_two_factor_type` enum('email','sms','google') DEFAULT NULL,
  `user_two_factor_key` varchar(64) DEFAULT NULL,
  `user_two_factor_gsecret` varchar(64) DEFAULT NULL,
  `user_activated` enum('0','1') NOT NULL DEFAULT '0',
  `user_approved` enum('0','1') NOT NULL DEFAULT '0',
  `user_reseted` enum('0','1') NOT NULL DEFAULT '0',
  `user_reset_key` varchar(64) DEFAULT NULL,
  `user_subscribed` enum('0','1') NOT NULL DEFAULT '0',
  `user_package` int(10) UNSIGNED DEFAULT NULL,
  `user_package_videos_categories` text DEFAULT NULL,
  `user_package_blogs_categories` text DEFAULT NULL,
  `user_subscription_date` datetime DEFAULT NULL,
  `user_boosted_posts` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_boosted_pages` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_boosted_groups` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_boosted_events` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_started` enum('0','1') NOT NULL DEFAULT '0',
  `user_verified` enum('0','1') NOT NULL DEFAULT '0',
  `user_banned` enum('0','1') NOT NULL DEFAULT '0',
  `user_banned_message` text DEFAULT NULL,
  `user_live_requests_counter` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_live_requests_lastid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_live_messages_counter` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_live_messages_lastid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_live_calls_counter` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_live_notifications_counter` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_live_notifications_lastid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_latitude` varchar(256) NOT NULL DEFAULT '0',
  `user_longitude` varchar(256) NOT NULL DEFAULT '0',
  `user_location_updated` datetime DEFAULT NULL,
  `user_firstname` varchar(256) NOT NULL,
  `user_lastname` varchar(256) DEFAULT NULL,
  `user_gender` int(10) UNSIGNED DEFAULT NULL,
  `user_picture` varchar(255) DEFAULT NULL,
  `user_picture_id` int(10) UNSIGNED DEFAULT NULL,
  `user_cover` varchar(256) DEFAULT NULL,
  `user_cover_id` int(10) UNSIGNED DEFAULT NULL,
  `user_cover_position` varchar(256) DEFAULT NULL,
  `user_album_pictures` int(10) UNSIGNED DEFAULT NULL,
  `user_album_covers` int(10) UNSIGNED DEFAULT NULL,
  `user_album_timeline` int(10) UNSIGNED DEFAULT NULL,
  `user_pinned_post` int(10) UNSIGNED DEFAULT NULL,
  `user_registered` datetime DEFAULT NULL,
  `user_last_seen` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_first_failed_login` datetime DEFAULT NULL,
  `user_failed_login_ip` varchar(64) DEFAULT NULL,
  `user_failed_login_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_country` int(10) UNSIGNED DEFAULT NULL,
  `user_birthdate` date DEFAULT NULL,
  `user_relationship` varchar(256) DEFAULT NULL,
  `user_biography` text DEFAULT NULL,
  `user_website` varchar(256) DEFAULT NULL,
  `user_work_title` varchar(256) DEFAULT NULL,
  `user_work_place` varchar(256) DEFAULT NULL,
  `user_work_url` varchar(256) DEFAULT NULL,
  `user_current_city` varchar(256) DEFAULT NULL,
  `user_hometown` varchar(256) DEFAULT NULL,
  `user_edu_major` varchar(256) DEFAULT NULL,
  `user_edu_school` varchar(256) DEFAULT NULL,
  `user_edu_class` varchar(256) DEFAULT NULL,
  `user_social_facebook` varchar(256) DEFAULT NULL,
  `user_social_twitter` varchar(256) DEFAULT NULL,
  `user_social_youtube` varchar(256) DEFAULT NULL,
  `user_social_instagram` varchar(256) DEFAULT NULL,
  `user_social_twitch` varchar(256) DEFAULT NULL,
  `user_social_linkedin` varchar(256) DEFAULT NULL,
  `user_social_vkontakte` varchar(256) DEFAULT NULL,
  `user_profile_background` varchar(256) DEFAULT NULL,
  `user_chat_enabled` enum('0','1') NOT NULL DEFAULT '1',
  `user_newsletter_enabled` enum('0','1') NOT NULL DEFAULT '1',
  `user_tips_enabled` enum('0','1') NOT NULL DEFAULT '1',
  `user_suggestions_hidden` enum('0','1') NOT NULL DEFAULT '0',
  `user_privacy_chat` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_poke` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_gifts` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_wall` enum('me','friends','public') NOT NULL DEFAULT 'friends',
  `user_privacy_collaborative` enum('me','friends','public') NOT NULL DEFAULT 'friends',
  `user_privacy_gender` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_birthdate` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_relationship` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_basic` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_work` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_location` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_education` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_other` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_friends` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_followers` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_photos` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_pages` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_groups` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_events` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_subscriptions` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `email_post_likes` enum('0','1') NOT NULL DEFAULT '1',
  `email_post_comments` enum('0','1') NOT NULL DEFAULT '1',
  `email_post_shares` enum('0','1') NOT NULL DEFAULT '1',
  `email_wall_posts` enum('0','1') NOT NULL DEFAULT '1',
  `email_mentions` enum('0','1') NOT NULL DEFAULT '1',
  `email_profile_visits` enum('0','1') NOT NULL DEFAULT '1',
  `email_friend_requests` enum('0','1') NOT NULL DEFAULT '1',
  `email_user_verification` enum('0','1') NOT NULL DEFAULT '1',
  `email_user_post_approval` enum('0','1') NOT NULL DEFAULT '1',
  `email_admin_verifications` enum('0','1') NOT NULL DEFAULT '1',
  `email_admin_post_approval` enum('0','1') NOT NULL DEFAULT '1',
  `email_admin_user_approval` enum('0','1') NOT NULL DEFAULT '0',
  `facebook_connected` enum('0','1') NOT NULL DEFAULT '0',
  `facebook_id` varchar(128) DEFAULT NULL,
  `google_connected` enum('0','1') NOT NULL DEFAULT '0',
  `google_id` varchar(128) DEFAULT NULL,
  `twitter_connected` enum('0','1') NOT NULL DEFAULT '0',
  `twitter_id` varchar(128) DEFAULT NULL,
  `instagram_connected` enum('0','1') NOT NULL DEFAULT '0',
  `instagram_id` varchar(128) DEFAULT NULL,
  `linkedin_connected` enum('0','1') NOT NULL DEFAULT '0',
  `linkedin_id` varchar(128) DEFAULT NULL,
  `vkontakte_connected` enum('0','1') NOT NULL DEFAULT '0',
  `vkontakte_id` varchar(128) DEFAULT NULL,
  `wordpress_connected` enum('0','1') NOT NULL DEFAULT '0',
  `wordpress_id` varchar(128) DEFAULT NULL,
  `sngine_connected` enum('0','1') NOT NULL DEFAULT '0',
  `sngine_id` varchar(128) DEFAULT NULL,
  `user_referrer_id` int(11) DEFAULT NULL,
  `custom_affiliates_system` enum('0','1') NOT NULL DEFAULT '0',
  `affiliates_per_user` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_per_user_2` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage_2` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_per_user_3` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage_3` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_per_user_4` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage_4` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_per_user_5` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage_5` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_per_user_6` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage_6` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_per_user_7` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage_7` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_per_user_8` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage_8` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_per_user_9` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage_9` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_per_user_10` float UNSIGNED NOT NULL DEFAULT 0,
  `affiliates_percentage_10` float UNSIGNED NOT NULL DEFAULT 0,
  `points_earned` enum('0','1') NOT NULL DEFAULT '0',
  `user_points` float NOT NULL DEFAULT 0,
  `user_wallet_balance` float NOT NULL DEFAULT 0,
  `user_affiliate_balance` float NOT NULL DEFAULT 0,
  `user_market_balance` float NOT NULL DEFAULT 0,
  `user_funding_balance` float NOT NULL DEFAULT 0,
  `user_monetization_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `user_monetization_discount_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `user_monetization_discount_percent` float NOT NULL DEFAULT 0,
  `user_monetization_chat_price` float NOT NULL DEFAULT 0,
  `user_monetization_call_price` float NOT NULL DEFAULT 0,
  `user_monetization_min_price` float NOT NULL DEFAULT 0,
  `user_monetization_plans` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_monetization_balance` float NOT NULL DEFAULT 0,
  `user_ai_credits_balance` int(11) NOT NULL DEFAULT 0,
  `chat_sound` enum('0','1') NOT NULL DEFAULT '1',
  `notifications_sound` enum('0','1') NOT NULL DEFAULT '1',
  `user_language` varchar(16) DEFAULT 'en_us',
  `user_free_tried` enum('0','1') NOT NULL DEFAULT '0',
  `coinbase_hash` varchar(128) DEFAULT NULL,
  `coinbase_code` varchar(128) DEFAULT NULL,
  `plisio_hash` varchar(128) DEFAULT NULL,
  `plisio_txn_id` varchar(128) DEFAULT NULL,
  `is_fake` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_master_account`, `user_group`, `user_group_custom`, `user_demo`, `user_name`, `user_email`, `user_email_verified`, `user_email_verification_code`, `user_phone`, `user_phone_verified`, `user_phone_verification_code`, `user_password`, `user_two_factor_enabled`, `user_two_factor_type`, `user_two_factor_key`, `user_two_factor_gsecret`, `user_activated`, `user_approved`, `user_reseted`, `user_reset_key`, `user_subscribed`, `user_package`, `user_package_videos_categories`, `user_package_blogs_categories`, `user_subscription_date`, `user_boosted_posts`, `user_boosted_pages`, `user_boosted_groups`, `user_boosted_events`, `user_started`, `user_verified`, `user_banned`, `user_banned_message`, `user_live_requests_counter`, `user_live_requests_lastid`, `user_live_messages_counter`, `user_live_messages_lastid`, `user_live_calls_counter`, `user_live_notifications_counter`, `user_live_notifications_lastid`, `user_latitude`, `user_longitude`, `user_location_updated`, `user_firstname`, `user_lastname`, `user_gender`, `user_picture`, `user_picture_id`, `user_cover`, `user_cover_id`, `user_cover_position`, `user_album_pictures`, `user_album_covers`, `user_album_timeline`, `user_pinned_post`, `user_registered`, `user_last_seen`, `user_first_failed_login`, `user_failed_login_ip`, `user_failed_login_count`, `user_country`, `user_birthdate`, `user_relationship`, `user_biography`, `user_website`, `user_work_title`, `user_work_place`, `user_work_url`, `user_current_city`, `user_hometown`, `user_edu_major`, `user_edu_school`, `user_edu_class`, `user_social_facebook`, `user_social_twitter`, `user_social_youtube`, `user_social_instagram`, `user_social_twitch`, `user_social_linkedin`, `user_social_vkontakte`, `user_profile_background`, `user_chat_enabled`, `user_newsletter_enabled`, `user_tips_enabled`, `user_suggestions_hidden`, `user_privacy_chat`, `user_privacy_poke`, `user_privacy_gifts`, `user_privacy_wall`, `user_privacy_collaborative`, `user_privacy_gender`, `user_privacy_birthdate`, `user_privacy_relationship`, `user_privacy_basic`, `user_privacy_work`, `user_privacy_location`, `user_privacy_education`, `user_privacy_other`, `user_privacy_friends`, `user_privacy_followers`, `user_privacy_photos`, `user_privacy_pages`, `user_privacy_groups`, `user_privacy_events`, `user_privacy_subscriptions`, `email_post_likes`, `email_post_comments`, `email_post_shares`, `email_wall_posts`, `email_mentions`, `email_profile_visits`, `email_friend_requests`, `email_user_verification`, `email_user_post_approval`, `email_admin_verifications`, `email_admin_post_approval`, `email_admin_user_approval`, `facebook_connected`, `facebook_id`, `google_connected`, `google_id`, `twitter_connected`, `twitter_id`, `instagram_connected`, `instagram_id`, `linkedin_connected`, `linkedin_id`, `vkontakte_connected`, `vkontakte_id`, `wordpress_connected`, `wordpress_id`, `sngine_connected`, `sngine_id`, `user_referrer_id`, `custom_affiliates_system`, `affiliates_per_user`, `affiliates_percentage`, `affiliates_per_user_2`, `affiliates_percentage_2`, `affiliates_per_user_3`, `affiliates_percentage_3`, `affiliates_per_user_4`, `affiliates_percentage_4`, `affiliates_per_user_5`, `affiliates_percentage_5`, `affiliates_per_user_6`, `affiliates_percentage_6`, `affiliates_per_user_7`, `affiliates_percentage_7`, `affiliates_per_user_8`, `affiliates_percentage_8`, `affiliates_per_user_9`, `affiliates_percentage_9`, `affiliates_per_user_10`, `affiliates_percentage_10`, `points_earned`, `user_points`, `user_wallet_balance`, `user_affiliate_balance`, `user_market_balance`, `user_funding_balance`, `user_monetization_enabled`, `user_monetization_discount_enabled`, `user_monetization_discount_percent`, `user_monetization_chat_price`, `user_monetization_call_price`, `user_monetization_min_price`, `user_monetization_plans`, `user_monetization_balance`, `user_ai_credits_balance`, `chat_sound`, `notifications_sound`, `user_language`, `user_free_tried`, `coinbase_hash`, `coinbase_code`, `plisio_hash`, `plisio_txn_id`, `is_fake`) VALUES
(1, 1, 1, 0, '0', 'kagame', 'mycosoftt@gmail.com', '1', NULL, NULL, '0', NULL, '$2y$10$uG5bfBKmNgMswGjxHsOlFe5rVHVqt.PYPJAlSbFVbDysxe8h1D.UK', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '1', '0', NULL, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, 'kagame', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-08 09:51:36', '2026-05-09 19:32:49', '2026-05-09 19:24:53', '197.239.7.134', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'friends', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(2, 17, 1, 0, '0', 'shidy', 'shidytheboss@gmail.com', '1', '372062', NULL, '0', NULL, '$2y$10$mGBhGEGZHywhkHZ0UKji0e/LiJO6yWAPaOeBTQVsiaamqoKzq5C0u', '1', 'email', '504839', 'JIU7ZQCRRN7QG33S', '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '1', '0', '', 0, 0, 0, 78, 0, 0, 0, '0', '0', NULL, 'Shidy', 'Jnr', 1, 'photos/2026/05/sngine_9a1e7e1657b879012f6418866dbce5ec_cropped.jpg', 1, 'photos/2026/05/kiptalk_1882c9b32625b6184df71b8df387a7fe_cropped.png', 116, '-90px', 1, 2, 36, NULL, '2026-05-08 09:54:35', '2026-05-10 08:18:24', NULL, NULL, 0, 226, '1995-10-03', 'relationship', 'C.E.O at KipTalk Communications Ltd', 'https://mwakwerashid.com', 'Executive Director', 'KipTalk', NULL, 'Kampala', 'Kabowa', 'Information Technology ', 'Muteesa I Royal University ', '2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '0', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'me', 'me', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(3, 3, 3, 0, '0', 'tasha', 'tashamorrismontana@gmail.com', '1', '712554', NULL, '0', NULL, '$2y$10$zNRWjXa3KFUbl6C9bss0I.F44ztnxQshSajqfsoSsyoh4FKOl5f16', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '1', '0', '', 4, 0, 7, 78, 0, 11, 0, '0.2480446', '32.5793956', '2026-05-09 05:23:47', 'Tasha', 'Morris', 2, 'photos/2026/05/kiptalk_236f35df5043ee96d7333a8c720a6e7b_cropped.jpg', 10, 'photos/2026/05/kiptalk_6f309868911a35cf435675383cc17fd4_cropped.jpg', 11, '-192px', 7, 9, 8, NULL, '2026-05-08 22:50:23', '2026-05-10 08:26:24', NULL, NULL, 0, 226, '1998-12-16', 'relationship', 'Am a film director and actress in First Priority Films.', NULL, 'Executive Director', 'First Priority Films', 'https://www.firstpriorityfilms.com', 'Wakiso ', 'Kikokiro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(4, 4, 3, 0, '0', 'Ike', 'isaacrucci@gmail.com', '1', '514995', NULL, '0', NULL, '$2y$10$iuvW4u3BTaqpgA6b83LF1OB9Tfr.QDJlp6hNvOqMOFJLAENZu6sxO', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '1', '0', '', 1, 0, 0, 0, 0, 2, 0, '0', '0', NULL, 'Isaac', 'Rucci', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-09 05:26:15', '2026-05-09 05:30:00', NULL, NULL, 0, NULL, '1967-04-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(5, 5, 3, 0, '0', 'Stevecurious', 'Stevenkibombo@gmile.com', '0', '243817', NULL, '0', NULL, '$2y$10$B2MvM5fopeGXHubN7ZcM6utzdeRlE83AqP630mnp/14CTk8zggLYi', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '0', '0', '0', '', 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, 'Kibombo', 'Steven', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-09 05:28:05', '2026-05-09 05:30:40', NULL, NULL, 0, NULL, '1997-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(6, 6, 3, 0, '0', 'Stevenmogan', 'stevenmogan35@gmail.com', '0', '254339', NULL, '0', NULL, '$2y$10$aspv4DbURFj1G6SLzdYqL.yzteo/roTpMzLyDb3CUI8sMvlYwsm/C', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '0', '0', '0', '', 1, 0, 0, 0, 0, 2, 0, '0', '0', NULL, 'Ssemugooma ', 'Steven', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-09 05:38:05', '2026-05-09 05:39:51', NULL, NULL, 0, NULL, '1996-10-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(7, 7, 3, 0, '0', 'Donmusa', 'lwanyagamusa11@gmail.com', '1', '911330', NULL, '0', NULL, '$2y$10$VNfarLDR5GiT6ftYLW/GzeYshrVlUeydVgOaAN4f.5LKgvJi30zCy', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '0', '0', NULL, 2, 0, 0, 31, 0, 8, 0, '0.3070862596647146', '32.540141112778514', '2026-05-09 06:10:10', 'Don ', 'Musa', 1, 'photos/2026/05/kiptalk_e396f291dcbc8ba386a598c249555d6f_cropped.jpg', 19, 'photos/2026/05/kiptalk_8929d337aafaaa2e65e0cabde470583e_cropped.jpg', 18, '0px', 15, 14, NULL, NULL, '2026-05-09 05:38:27', '2026-05-09 06:10:46', NULL, NULL, 0, 226, '1995-09-12', 'relationship', 'Don&rsquo;t look for my source of income look for my sources of wisdom ', NULL, 'Technician ', 'Kampala ', NULL, 'Kampala ', 'Lungujja ', 'Automotive ', 'BRIBTE', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(8, 8, 3, 0, '0', 'KakoozaNoah1', 'kenloard@gmail.com', '1', '974790', NULL, '0', NULL, '$2y$10$Ou2tQuWbB5/3hGGq6jXSeuydAqthdiqRrNwQ4pXVD6IDmz95Z3MF.', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '0', '0', NULL, 1, 0, 0, 0, 0, 2, 0, '0.3091432', '32.5223304', '2026-05-09 05:55:24', 'Kakooza', 'Muwukya', 1, 'photos/2026/05/kiptalk_b711e5a0e89ae26ec5a4d0fe03abe907_cropped.jpg', 13, NULL, NULL, NULL, 10, NULL, NULL, NULL, '2026-05-09 05:39:00', '2026-05-09 05:56:44', NULL, NULL, 0, NULL, '1989-04-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(9, 9, 3, 0, '0', 'Slimboss1', 'alm167061@gmail.com', '1', '183969', NULL, '0', NULL, '$2y$10$paLTdhCC5guleBoGjMCW2eAKQcz3xLi.YST1W1CISKklKdMjkWTla', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '1', '0', '', 1, 0, 0, 30, 0, 14, 0, '0.3327611', '32.4677766', '2026-05-10 07:00:41', 'Slim', 'Boss', 1, 'photos/2026/05/kiptalk_cd566a56a91d1356ccf8a8e4bd0a07a2.jpg', 15, 'photos/2026/05/kiptalk_1e0ae407a5cc89215886e364273d272b_cropped.jpg', 17, '-58px', 11, 13, 17, NULL, '2026-05-09 05:51:05', '2026-05-10 07:01:13', NULL, NULL, 0, 190, '1998-11-08', 'single', '           Don&#039;t ever call me Lucky.\r\nI Failed more times than you tried.', NULL, 'Salesman ', 'Almarai ', NULL, 'Jazan', 'Sabya', '', 'Royal college', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(10, 10, 3, 0, '0', 'Escobar', 'hassanwasswa453@gmail.com', '1', '249423', NULL, '0', NULL, '$2y$10$CRMHc5d.aHnu4Eg2Qvu6KuZ3rKqrUPvQvqhEVWvcn7sYIFN6l2UfS', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '0', '0', NULL, 1, 0, 0, 59, 0, 2, 0, '0.2781827', '32.5625238', '2026-05-10 06:20:16', 'Coach ', 'Escobar ', 1, 'photos/2026/05/kiptalk_b8ca75bb32143cb4b6d7e5687edfea94_cropped.jpg', 16, 'photos/2026/05/kiptalk_cae8a87d76f5ad739468bd8f2ee8734a.jpg', 76, NULL, 12, 37, 16, NULL, '2026-05-09 05:51:07', '2026-05-10 06:22:24', NULL, NULL, 0, 226, '1989-12-25', 'single', '', NULL, 'Coach ', 'KABOWA CU play ground ', NULL, 'Kampala', 'Kampala ', 'O level', 'kawempe muslim', 's&bull;4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(11, 11, 3, 0, '0', 'Otej', 'talemwaonesmus93@gmail.com', '1', '540413', NULL, '0', NULL, '$2y$10$Tlonir2bhHH8pUy4k60in.wgwpvPBJN/Pde6JUHzPCy.5r8JfnHrq', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '0', '0', NULL, 1, 0, 0, 0, 0, 4, 0, '0', '0', NULL, 'Otej', 'Kemirem', 1, 'photos/2026/05/kiptalk_3c9175645cb75f79122e1d4f75b4de67_cropped.webp', 43, NULL, NULL, NULL, 19, NULL, NULL, NULL, '2026-05-09 06:31:34', '2026-05-09 06:45:11', NULL, NULL, 0, 226, '2006-10-15', NULL, NULL, NULL, '', '', NULL, 'Mutudwe', 'Kisigula', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(12, 12, 3, 0, '0', 'judylambert', 'najjuma.jud@gmail.com', '1', '527930', NULL, '0', NULL, '$2y$10$5Lh.wLcFgz5wHTYyLLmUQuqiuP0mnFmiT0UhSVQVdD4mVqHqgqppi', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '0', '0', NULL, 3, 0, 0, 0, 0, 6, 0, '0.26119218251780774', '32.560066100706266', '2026-05-09 07:36:10', 'Judith', 'Lambert', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-09 07:29:39', '2026-05-09 07:37:04', NULL, NULL, 0, NULL, '1998-01-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(13, 13, 3, 0, '0', 'Mk10', 'michealkimera07@gmail.com', '1', '867381', NULL, '0', NULL, '$2y$10$IlrvK/7jRskylbB6dxPVc.QMjxCsHaQ0IlXatrtdnuCtxVnkRl3jK', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '1', '0', '', 2, 0, 0, 76, 0, 7, 0, '0.4074381906178941', '32.48607841350489', '2026-05-09 11:22:36', 'Kimera', 'Micheal', 1, 'photos/2026/05/kiptalk_ca1ed7352ff8abbbfc59193b06d38c51.png', 50, NULL, NULL, NULL, 20, NULL, 21, NULL, '2026-05-09 09:01:19', '2026-05-09 11:23:32', NULL, NULL, 0, NULL, '2003-06-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(14, 14, 3, 0, '0', 'abslamzjr', 'abslamzjr14@gmail.com', '1', '246046', NULL, '0', NULL, '$2y$10$1fkdR0YS4aSxUkJlYH305.SY7HeeMiLqel/vyVRWIT8c6XwL0z5.i', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '0', '0', NULL, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, 'Aba', 'Slamz Jr', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-09 10:22:55', '2026-05-09 21:11:23', NULL, NULL, 0, NULL, '2002-02-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(15, 15, 3, 0, '0', 'Brendaesther24', 'brendaesther885@gmail.com', '1', '249416', NULL, '0', NULL, '$2y$10$7rKL2r1qFAYwn/fgHn4r1.Hzvzdts1.pbZOoE730t91.7F8Tuj6Xq', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '0', '0', NULL, 1, 0, 0, 0, 0, 11, 0, '0.8340256', '32.4980045', '2026-05-09 17:23:15', 'Brenda', 'Esther', 2, 'photos/2026/05/kiptalk_eecace166e9c90c01f4f85e976ec0d35.jpg', 55, NULL, NULL, NULL, 23, NULL, 22, NULL, '2026-05-09 10:34:44', '2026-05-09 17:23:53', NULL, NULL, 0, 226, '2002-03-01', NULL, 'Proud mom🙃🤩👩 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(16, 16, 3, 0, '0', 'Aaliyahsaid094', 'Aaliyahsaid74@gmail.com', '1', '950164', NULL, '0', NULL, '$2y$10$BVeQfJM2aNG1SSsRPHKxweocnMo9lWxqhEbQ3gu0j8oDT7.qipL4C', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '0', '0', NULL, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, 'Aaliyah ', 'Said', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-09 10:45:48', '2026-05-09 10:53:20', NULL, NULL, 0, NULL, '2007-03-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(17, 17, 3, 0, '0', 'levixone', 'info@kiptalk.com', '1', '096607', NULL, '0', NULL, '$2y$10$vjOETUgxEVh/Xi6J8wjHk.1KiuloJ0d76h7y8kyaCWnOP/PP4IGQe', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '1', '0', '', 0, 0, 0, 0, 0, 8, 0, '0.2480441', '32.5794026', '2026-05-10 04:28:50', 'Levixone', 'Lucas', 1, 'photos/2026/05/kiptalk_37360597a5c4e8a9d73fb79e3deee72f_cropped.jpg', 58, 'photos/2026/05/kiptalk_25c0847808e64427552ee5386e9c2f52.jpg', 60, NULL, 24, 25, NULL, NULL, '2026-05-09 11:52:37', '2026-05-10 04:29:09', NULL, NULL, 0, 226, '1992-12-07', 'married', 'Levixone , whose real name is Sam Lucas Lubyogo, is a Ugandan gospel musician.', NULL, 'Gospel Musician', '', NULL, 'Kampala', 'Kampala', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(18, 18, 3, 0, '0', 'Kps', 'kinenepeter01@gmail.com', '1', '303173', NULL, '0', NULL, '$2y$10$ioEpk6ePd5jmmf8ls8fUfePwAe21F8KIrZcSJZg7XrHj1XSdN1Pza', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '0', '0', NULL, 0, 0, 0, 0, 0, 4, 0, '0.279649', '32.5598565', '2026-05-10 07:51:30', 'Kinene', 'Peter', 1, 'photos/2026/05/kiptalk_735efe9a6f769f8dcb73e0bd7d6fa63d.jpg', 64, NULL, NULL, NULL, 28, NULL, 45, NULL, '2026-05-09 12:03:09', '2026-05-10 07:51:55', NULL, NULL, 0, 226, '1995-06-25', 'relationship', 'I trust my Google center that&#039;s my brain ', NULL, 'Medical officer ', 'Kps medical center ', 'https://kpsmedicalclinic.netlify.app/index.html', 'Kampala ', 'Kampala ', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(19, 19, 3, 0, '0', 'Katsdhagrt', 'piuskatsigazi48@gmail.com', '1', '151624', NULL, '0', NULL, '$2y$10$u3lBTv76gKVF7PaS4AaIMO/qk0LW0XaQsu8iGs8GnvVErhx1RGHVy', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '0', '0', NULL, 0, 0, 0, 0, 0, 0, 0, '0.3824305', '32.566357', '2026-05-10 08:39:45', 'Katsigazi', 'Ronnie', 1, 'photos/2026/05/kiptalk_456ec9c2465ee8d7ffe345d80e996f25_cropped.jpg', 65, NULL, NULL, NULL, 29, NULL, 30, NULL, '2026-05-09 12:58:51', '2026-05-10 08:39:45', NULL, NULL, 0, NULL, '2000-08-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(20, 20, 3, 0, '0', 'Bazuma', 'mabuyebashir@gmail.com', '1', '063695', NULL, '0', NULL, '$2y$10$fhxzWa8eOBEmKOWcT3IKNeaEoqSSMMWZJlrrYm04e5nr5eqxwlne6', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '0', '0', NULL, 0, 0, 0, 0, 0, 1, 0, '0', '0', NULL, 'Mabuye ', 'Bashir ', 1, 'photos/2026/05/kiptalk_1d6fe6dbf0064225d2a9593e6865cc11_cropped.jpg', 67, NULL, NULL, NULL, 31, NULL, NULL, NULL, '2026-05-09 14:51:59', '2026-05-09 18:39:55', NULL, NULL, 0, 226, '1923-12-11', NULL, NULL, NULL, 'Business ', 'Kampala central ', NULL, 'Kampala ', 'Kampala ', 'Ceramics ', 'Kyambogo university ', 'Degree ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(21, 21, 3, 0, '0', 'MeryvnJoel', 'marvinjoel722@gmail.com', '1', '778820', NULL, '0', NULL, '$2y$10$YddFHkDtzsJUjh4levvrneLZ.f6cZlmXkr8jfTOoO9hu7dGLzhye.', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '1', '0', '', 0, 0, 0, 0, 0, 2, 0, '0', '0', NULL, 'Meryvn', 'Joel', 1, 'photos/2026/05/kiptalk_9f58ec8aa40a0c290409283e5a90cc6f_cropped.jpg', 69, 'photos/2026/05/kiptalk_8d4c616cc498a54cc509eb73c636e0e2.jpeg', 70, NULL, 32, 33, NULL, NULL, '2026-05-09 16:21:39', '2026-05-09 18:55:08', NULL, NULL, 0, 226, '1999-07-22', 'single', 'Simple', NULL, 'Professional photographer ', 'Fufa house Mengo ', NULL, 'Kampala ', 'Kansanga ', 'BIT', 'KIU', '2020 - 2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(22, 22, 3, 0, '0', 'Uganda', 'lisajammie97@gmail.com', '1', '231410', NULL, '0', NULL, '$2y$10$oYbaTlSJPUZ7lfsZNH34Wef7mIf02k9hqRTf4R4gh0RjjY5bNpRju', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '0', '0', NULL, 0, 0, 0, 0, 0, 4, 0, '0', '0', NULL, 'Poultry', 'Cages', 1, 'photos/2026/05/kiptalk_ef877544ac99b9335a1fca1465c09da4_cropped.jpg', 104, 'photos/2026/05/kiptalk_4e4606649f0b7224930b1a2629a338e1_cropped.jpg', 105, '0px', 38, 39, NULL, NULL, '2026-05-09 20:11:55', '2026-05-09 20:37:03', NULL, NULL, 0, 226, '1994-11-30', NULL, NULL, NULL, 'Farmer', 'Farm', NULL, 'Kampala', 'Kampala', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(23, 23, 3, 0, '0', 'mr_akampa', 'clintonakampa82@gmail.com', '1', '514574', NULL, '0', NULL, '$2y$10$0l0JHBy7UHzQ6HAVgETTouy/Jea/9hU/E0qfMU4YUnzJfS1k2lnse', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '0', '0', NULL, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, 'Akampa ', 'Clinton ', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-09 21:33:03', '2026-05-09 21:39:55', NULL, NULL, 0, 226, '1997-06-30', NULL, NULL, NULL, 'Engineer ', 'Kampala ', NULL, 'Kampala ', 'Kitagata', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photos/2026/05/kiptalk_72c90e6448b3cf8622d4b2f89c167786.jpg', '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(24, 24, 3, 0, '0', 'roniemata01', 'roniemata01@gmail.com', '1', '525115', NULL, '0', NULL, '$2y$10$4LDi4TXo.qzBIHdXWFUs.e6BPIhGSOjnI6.hXqTANh0O1sXiVUPFG', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '1', '0', '', 0, 0, 0, 77, 0, 3, 0, '0', '0', NULL, 'Ronie ', 'Mata ', 1, 'photos/2026/05/kiptalk_f0b1c96db3364ad23174b8085f483f8b_cropped.jpg', 106, NULL, NULL, NULL, 40, NULL, NULL, NULL, '2026-05-09 21:44:45', '2026-05-09 21:58:12', NULL, NULL, 0, NULL, '1995-10-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(25, 25, 3, 0, '0', 'Mohamed', 'mohamedyur162@gmail.com', '1', '118801', NULL, '0', NULL, '$2y$10$CVWCI4lqVVBe30YS6q2/g.4oZtIK3cmPtdix7vZktYsD88lytpA12', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '0', '0', NULL, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, 'Moha ', 'Med', 1, 'photos/2026/05/kiptalk_b8b2c822bac0ce0db66d22c30fe4e9fa.jpg', 111, 'photos/2026/05/kiptalk_02173a5012822516bc7a728aa7715fd9.jpg', 112, NULL, 41, 42, NULL, NULL, '2026-05-10 05:39:10', '2026-05-10 08:41:22', NULL, NULL, 0, 226, NULL, 'relationship', '', NULL, 'Director at kiptalk ', 'Kiptalk communications Ltd ', NULL, 'Kampala ', 'Bunamwaya ', '', 'YMCA comprehensive institute ', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0'),
(26, 26, 3, 0, '0', 'princessamiirah', 'mbabaziruth256@gmail.com', '1', '849464', NULL, '0', NULL, '$2y$10$aO3jcPmy6TAkQWjpisDxgOjJ7KXgzQXCcs2WoCEYeyRll.Uzsvr4W', '0', NULL, NULL, NULL, '1', '1', '0', NULL, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1', '1', '0', '', 0, 0, 0, 0, 0, 2, 0, '0.2480319', '32.5794002', '2026-05-10 08:04:03', 'Princess', 'Amiirah', 2, 'photos/2026/05/kiptalk_15a0dc061b3630a7dac92304ddd0f611_cropped.jpg', 119, 'photos/2026/05/kiptalk_8d1c7817b0aa7c67765e866915e75d72_cropped.jpg', 121, '-270px', 43, 44, NULL, NULL, '2026-05-10 06:35:30', '2026-05-10 08:04:04', NULL, NULL, 0, 226, '1990-12-22', NULL, '', NULL, 'Artist', '', 'https://www.princessamiirah.com', 'Kampala', 'Kampala', '', '', '', '', '', '', '', NULL, '', '', NULL, '1', '1', '1', '0', 'public', 'public', 'public', 'public', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, '1', '1', 'en_us', '0', NULL, NULL, NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_accounts`
--

CREATE TABLE `users_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users_accounts`
--

INSERT INTO `users_accounts` (`id`, `user_id`, `account_id`) VALUES
(1, 17, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users_addresses`
--

CREATE TABLE `users_addresses` (
  `address_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address_title` varchar(256) NOT NULL,
  `address_country` varchar(256) NOT NULL,
  `address_city` varchar(256) NOT NULL,
  `address_zip_code` varchar(256) NOT NULL,
  `address_phone` varchar(256) NOT NULL,
  `address_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_affiliates`
--

CREATE TABLE `users_affiliates` (
  `id` int(10) UNSIGNED NOT NULL,
  `referrer_id` int(10) UNSIGNED NOT NULL,
  `referee_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_blocks`
--

CREATE TABLE `users_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `blocked_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_gifts`
--

CREATE TABLE `users_gifts` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_user_id` int(10) UNSIGNED NOT NULL,
  `to_user_id` int(10) UNSIGNED NOT NULL,
  `gift_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `user_group_id` int(10) UNSIGNED NOT NULL,
  `user_group_title` varchar(255) NOT NULL,
  `permissions_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_invitations`
--

CREATE TABLE `users_invitations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `email_phone` varchar(64) NOT NULL,
  `invitation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_merits`
--

CREATE TABLE `users_merits` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_user_id` int(10) UNSIGNED NOT NULL,
  `to_user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `message` text DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `sent_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_packages_points`
--

CREATE TABLE `users_packages_points` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_pokes`
--

CREATE TABLE `users_pokes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `poked_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_recurring_payments`
--

CREATE TABLE `users_recurring_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `payment_gateway` varchar(256) NOT NULL,
  `handle` varchar(256) NOT NULL,
  `handle_id` int(10) UNSIGNED NOT NULL,
  `subscription_id` varchar(256) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_searches`
--

CREATE TABLE `users_searches` (
  `log_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  `node_type` varchar(32) NOT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_sessions`
--

CREATE TABLE `users_sessions` (
  `session_id` int(10) UNSIGNED NOT NULL,
  `session_token` varchar(64) NOT NULL,
  `session_date` datetime NOT NULL,
  `session_type` enum('W','A','I') NOT NULL DEFAULT 'W',
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_ip` varchar(64) NOT NULL,
  `user_browser` varchar(64) DEFAULT NULL,
  `user_os` varchar(64) NOT NULL,
  `user_os_version` varchar(64) DEFAULT NULL,
  `user_device_name` varchar(64) DEFAULT NULL,
  `session_onesignal_user_id` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users_sessions`
--

INSERT INTO `users_sessions` (`session_id`, `session_token`, `session_date`, `session_type`, `user_id`, `user_ip`, `user_browser`, `user_os`, `user_os_version`, `user_device_name`, `session_onesignal_user_id`) VALUES
(1, 'ab73418730da3a9b91ee64a1cb7e8631', '2026-05-08 09:51:56', 'W', 1, '102.209.111.98', 'Chrome', 'Windows 10', NULL, NULL, NULL),
(2, 'ee2e706e11d65269b5371800c36ae4be', '2026-05-08 09:54:35', 'W', 2, '197.239.14.164', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(4, 'f44023cf1d709fc9b0f4316ee1fbcf37', '2026-05-08 14:51:10', 'W', 2, '198.244.148.239', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(6, '26ffd5483961d718a5ea9efbf1397908', '2026-05-08 19:43:49', 'W', 2, '102.203.209.153', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(11, 'f3b531d650ed8bf9b0d10096653a7c13', '2026-05-08 20:26:49', 'W', 2, '102.203.209.153', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(12, '20acf49d52556acb00558e2d29e39490', '2026-05-08 20:56:39', 'W', 2, '102.203.209.153', 'Chrome', 'Windows 10', NULL, NULL, NULL),
(15, '33dad32ec284fc74bf2066f7365ceb95', '2026-05-08 22:50:23', 'W', 3, '102.203.209.153', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(16, 'a59f808250b017fa6f57f616c3bce097', '2026-05-08 23:58:18', 'W', 2, '102.86.8.17', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(21, 'e061f353f6011d326443ee0916add7dc', '2026-05-09 04:26:18', 'W', 2, '102.203.209.153', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(24, 'a5a5b242ab3dd21521e14df13db0b5d9', '2026-05-09 05:21:02', 'W', 3, '102.85.161.253', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(25, '1d597b77bc04ee8bd6c607cdf86c470f', '2026-05-09 05:24:43', 'W', 2, '102.203.209.153', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(26, '2cc6d52459c0e330c1d86efc409f5ac7', '2026-05-09 05:26:15', 'W', 4, '196.207.165.237', 'Handheld Browser', 'iPhone', NULL, NULL, NULL),
(27, 'da42c0b43fb3447d1464545446f4b352', '2026-05-09 05:28:05', 'W', 5, '41.210.155.146', 'Handheld Browser', 'iPhone', NULL, NULL, NULL),
(28, 'e69401ee79acf78392eccb953874bc96', '2026-05-09 05:36:45', 'W', 2, '102.203.209.153', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(29, '72c2e55dfcdba56ef8b0cbf76982fdaa', '2026-05-09 05:38:05', 'W', 6, '41.210.147.238', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(30, 'a7ef63d1e4a0774d01ad99c01f1ae2bf', '2026-05-09 05:38:27', 'W', 7, '41.210.147.153', 'Handheld Browser', 'iPhone', NULL, NULL, NULL),
(31, '78484bdf877465b6d59a9ba9b94500d5', '2026-05-09 05:39:00', 'W', 8, '102.209.109.222', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(33, '86acdaa4381d4ce97740e191288384b2', '2026-05-09 05:51:05', 'W', 9, '102.86.4.150', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(34, '9825c634b29458076ddcd58e85c0af62', '2026-05-09 05:51:07', 'W', 10, '102.203.209.67', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(35, 'b19b8552e0753248d596e659659414c0', '2026-05-09 06:17:29', 'W', 1, '102.209.111.98', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(36, '9a70c26342e4243877be1a8904a04473', '2026-05-09 06:31:34', 'W', 11, '197.239.9.203', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(37, 'bc2f4d82d66278be5f4613e4491996f2', '2026-05-09 07:29:39', 'W', 12, '102.209.109.231', 'Handheld Browser', 'iPhone', NULL, NULL, NULL),
(38, '48fae8de43c3fcc0191a2151f5361ccb', '2026-05-09 07:39:25', 'W', 2, '102.203.209.153', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(39, 'bba97b7e6f099913b72b3af232c62a56', '2026-05-09 07:49:08', 'W', 2, '102.203.209.153', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(40, 'ff8034cbc3f8afca0c9b398bfc9385a0', '2026-05-09 08:14:25', 'W', 2, '102.203.209.153', 'Chrome', 'Windows 10', NULL, NULL, NULL),
(41, '776ce62f40a37e934f4e72631e4aeb07', '2026-05-09 08:29:16', 'W', 2, '102.203.209.153', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(42, '085d488b87adde7744fcce4928980a6c', '2026-05-09 08:31:01', 'W', 2, '102.203.209.153', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(43, '21c8f8ca0cc85e42d6007b31fa0ee044', '2026-05-09 09:01:19', 'W', 13, '102.86.10.107', 'Handheld Browser', 'iPhone', NULL, NULL, NULL),
(44, '653cba84d6fb09834d2bcce0ba1ff65e', '2026-05-09 09:12:55', 'W', 13, '102.86.10.107', 'Handheld Browser', 'iPhone', NULL, NULL, NULL),
(45, '2d9fa57ae7c75f168103445ede0f8013', '2026-05-09 09:47:40', 'W', 13, '102.86.10.107', 'Handheld Browser', 'iPhone', NULL, NULL, NULL),
(46, 'b3a2d79a4416604f50a508a43dadfc6a', '2026-05-09 09:52:34', 'W', 13, '102.86.10.107', 'Handheld Browser', 'iPhone', NULL, NULL, NULL),
(47, 'de9471c4960ad848a1125206bb99f587', '2026-05-09 10:05:26', 'W', 9, '197.239.12.175', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(48, 'b6705ca753b2b61fc0a78cd42feb8d33', '2026-05-09 10:16:29', 'W', 2, '197.239.7.130', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(49, 'd90e14f4255326556d681426f40d76d0', '2026-05-09 10:22:55', 'W', 14, '197.239.7.130', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(50, '58de5b8c1b7a432bb48bde823ec96bc7', '2026-05-09 10:34:44', 'W', 15, '102.85.28.54', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(51, '9ea542e7a00a89979396a2c940403797', '2026-05-09 10:45:48', 'W', 16, '185.229.119.129', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(52, '31af4b1de2d81eef0dbbc6909188c0e9', '2026-05-09 11:43:05', 'W', 2, '197.239.7.130', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(53, 'f210e466e77ded9b9307db6b8ca11ebd', '2026-05-09 11:52:37', 'W', 17, '197.239.7.130', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(56, 'ad78c47084ccf444f8eddc5d84d0da61', '2026-05-09 12:03:09', 'W', 18, '41.210.159.209', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(59, 'e5d7c14b7406bbcca79d12295a87d327', '2026-05-09 12:27:11', 'W', 2, '197.239.7.130', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(60, '7bb4bdf7ed9e7d60bb2f41b2e27dc29e', '2026-05-09 12:58:51', 'W', 19, '197.239.6.240', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(61, '79e05763b0a39afd90eaec26099a347e', '2026-05-09 13:12:30', 'W', 19, '197.239.6.240', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(62, 'c7e9a4409f2d4fdb1a6a69a094cf5b7b', '2026-05-09 13:30:53', 'W', 19, '197.239.6.240', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(63, '757f6da398ac00c2cb7707b79fc04668', '2026-05-09 13:41:11', 'W', 19, '197.239.6.240', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(64, 'b480c7e1944e41f5b63d31850cd5c147', '2026-05-09 14:30:25', 'W', 2, '197.239.7.130', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(65, 'a8646878328c12938582710abac60c48', '2026-05-09 14:51:59', 'W', 20, '41.210.143.154', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(66, '8f5d598572a0c0430a87bd0d3a7e2a0a', '2026-05-09 15:57:17', 'W', 20, '102.209.111.210', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(67, '3b54cb09c0d3f6937e533401a90f73c2', '2026-05-09 16:02:42', 'W', 2, '197.239.7.130', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(68, 'e1df6e8c87eedcfd72ff7fa4af143891', '2026-05-09 16:13:11', 'W', 2, '197.239.7.130', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(69, '4ae1db62b2a00216d9bb276ed2ec9611', '2026-05-09 16:21:39', 'W', 21, '102.209.111.76', 'Handheld Browser', 'iPhone', NULL, NULL, NULL),
(70, 'b6904fc6bdc41bff5630e047f42541b2', '2026-05-09 16:26:53', 'W', 19, '102.203.209.249', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(71, '84d36e1a1231623ee0fcc80cc13067d9', '2026-05-09 17:22:29', 'W', 15, '102.85.183.126', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(72, '914b11df9acd59d92212eaac2a907704', '2026-05-09 17:47:55', 'W', 9, '197.239.6.179', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(73, '4142ad16ac84d599199cd010da1c39f0', '2026-05-09 18:36:56', 'W', 19, '102.86.12.222', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(74, 'f89d742f6f8e7a4644aee7fb82b38890', '2026-05-09 18:37:43', 'W', 2, '102.209.111.60', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(75, 'e82121822c78aa5f8b6f4bb99dd024a9', '2026-05-09 18:39:10', 'W', 20, '91.134.91.234', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(76, '3fe2b67d78782ab0f0812e0a60168881', '2026-05-09 18:41:23', 'W', 2, '102.209.111.60', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(77, 'c3589e06c65498b68409bb96e9c2f34f', '2026-05-09 18:46:10', 'W', 2, '102.209.111.60', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(78, '81aa402212aba4d7eaa167cca899021c', '2026-05-09 18:46:41', 'W', 2, '102.209.111.60', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(79, '4f6dabf159ee5031b512113d2cf2ab24', '2026-05-09 18:47:31', 'W', 2, '102.209.111.60', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(80, '05e6f44fbcc000e5a6a93376d2780bd4', '2026-05-09 18:54:21', 'W', 21, '102.209.111.223', 'Handheld Browser', 'iPhone', NULL, NULL, NULL),
(81, 'b64ec098980539e697cc27e03f89b6eb', '2026-05-09 19:09:57', 'W', 2, '102.209.111.60', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(82, '7d4e151916e1d45206378c934e12e36e', '2026-05-09 19:13:19', 'W', 19, '102.86.12.222', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(83, 'af77ceb371a544abb4dc9f387f779c80', '2026-05-09 19:25:04', 'W', 1, '197.239.7.134', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(84, '365dd3550b666b57a47c4ff3d1db8bec', '2026-05-09 19:40:57', 'W', 10, '102.203.209.67', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(85, 'f963194a80a27edd9bcd44c7480db3fa', '2026-05-09 20:11:55', 'W', 22, '41.210.159.201', 'Handheld Browser', 'iPhone', NULL, NULL, NULL),
(86, '87c0c8f9785914faf71300e53fcb5ea5', '2026-05-09 21:28:04', 'W', 2, '102.209.111.60', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(87, '72ca2028c70d8bb13246a8137d7e03fb', '2026-05-09 21:33:03', 'W', 23, '102.209.111.60', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(88, '2f5688995c08ddfad37e1cc8f48c7ca6', '2026-05-09 21:44:45', 'W', 24, '85.190.254.203', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(89, 'bf631aafbbae45adda82aabd56e63a38', '2026-05-09 21:45:12', 'W', 17, '102.209.111.60', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(90, 'c1f237502b015cb5c227919d1f3243a9', '2026-05-09 21:48:53', 'W', 2, '102.209.111.60', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(91, '0d98cb2560536951a7f7e15d0e22e0ef', '2026-05-09 21:54:37', 'W', 24, '85.190.254.203', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(92, '0de1811cd333931ca9196b58b03fa8fc', '2026-05-09 23:53:09', 'W', 19, '197.239.7.194', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(93, '7673fef38f6022fb71d17e9f2b6b4d2b', '2026-05-10 04:27:13', 'W', 17, '102.209.111.60', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(95, '3955e54366d7bd8624c6e0ea640164b7', '2026-05-10 04:45:29', 'W', 19, '197.239.7.194', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(96, '1bed3d72a0fd0780a1553b9cf349b5de', '2026-05-10 05:39:10', 'W', 25, '102.85.136.227', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(97, 'e110674a7800baefbfb167c6adccbccf', '2026-05-10 06:03:19', 'W', 10, '102.203.209.67', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(98, '6002a7d209492f3a492dc73f85c569ee', '2026-05-10 06:22:32', 'W', 25, '102.85.136.227', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(102, '76018bb14c01ee1a4fa251afb1f4f121', '2026-05-10 06:49:12', 'W', 2, '102.209.111.60', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(103, '7e382f2ac19892c20941b69e2e42f0fc', '2026-05-10 06:59:43', 'W', 9, '197.239.6.179', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(104, '445566966036ba25cb75a966992e88ed', '2026-05-10 07:13:14', 'W', 19, '102.203.209.249', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(105, 'dd1d397a5c83b02da707d5929edcb586', '2026-05-10 07:37:09', 'W', 2, '102.209.111.60', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(106, '553daa704b4dfa8f72b0707dd20d7b26', '2026-05-10 07:47:06', 'W', 18, '41.210.143.197', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(109, '09588e9c9c6d85150a73b85028988be0', '2026-05-10 08:04:49', 'W', 2, '102.209.111.60', 'Handheld Browser', 'Android', NULL, NULL, NULL),
(110, 'fbdd37d5af4163cfa1011d749761d824', '2026-05-10 08:37:07', 'W', 19, '102.203.209.249', 'Handheld Browser', 'Android', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_sms`
--

CREATE TABLE `users_sms` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(256) NOT NULL,
  `insert_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_top_friends`
--

CREATE TABLE `users_top_friends` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `friend_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_uploads`
--

CREATE TABLE `users_uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_name` varchar(256) NOT NULL,
  `file_size` float NOT NULL,
  `insert_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_uploads`
--

INSERT INTO `users_uploads` (`id`, `user_id`, `file_name`, `file_size`, `insert_date`) VALUES
(1, 2, 'photos/2026/05/sngine_263b26ae0bc99f3a366eebc6b740ec8b.jpg', 668168, '2026-05-08 09:57:25'),
(2, 2, 'sounds/2026/05/sngine_88a5ef0de7282e46a5edc60c815435a3.wav', 1097770, '2026-05-08 10:34:09'),
(3, 2, 'photos/2026/05/sngine_2028f7086112e7be21563e57d81dd057.jpg', 313055, '2026-05-08 13:38:37'),
(4, 2, 'videos/2026/05/sngine_42def28ccd75c6e4de5c6471c54ef71e.mp4', 5718520, '2026-05-08 13:39:42'),
(5, 2, 'sounds/2026/05/sngine_039ed3d37394a6efa2632ee472136214.wav', 1798190, '2026-05-08 16:15:37'),
(6, 2, 'photos/2026/05/sngine_03f8ecdf9f4088a048c1b1dd221e73c5.jpg', 50114, '2026-05-08 19:28:15'),
(7, 2, 'photos/2026/05/sngine_fdef1e172f8a369cd52efb78471a3355.png', 266465, '2026-05-08 20:26:09'),
(8, 2, 'photos/2026/05/sngine_d30c941a18747b99a6f7cee8246214d1.png', 197581, '2026-05-08 20:29:26'),
(9, 2, 'photos/2026/05/sngine_15f873ebfefae2fb82f4d534c69bd016.png', 71341, '2026-05-08 20:40:24'),
(10, 2, 'photos/2026/05/sngine_b42d257f88fb9dbdf013a63d7b3c5975.png', 197581, '2026-05-08 20:41:19'),
(11, 2, 'photos/2026/05/sngine_2b9c3cee4dfa19c5cef45e220e1464bd.png', 151609, '2026-05-08 20:55:37'),
(12, 2, 'photos/2026/05/sngine_6c1485b194c8f0f69ce2ccf9de000f57.png', 197581, '2026-05-08 21:09:33'),
(13, 2, 'photos/2026/05/kiptalk_33292d8775cd8874d92e81ada327bfdb.jpg', 40742, '2026-05-08 21:15:04'),
(14, 2, 'photos/2026/05/kiptalk_3b408278b4b1da81d7ad0831e64c03e3.jpg', 40742, '2026-05-08 21:56:10'),
(15, 2, 'photos/2026/05/kiptalk_7b55b2acbcec2bb580f73017c8ef8f97.jpg', 12360000, '2026-05-08 21:58:00'),
(16, 2, 'photos/2026/05/kiptalk_68e660648b5324ee2ca802b3118fb552.jpg', 18694200, '2026-05-08 21:59:22'),
(17, 2, 'photos/2026/05/kiptalk_ed030ac6049f25496e9103db3defd035.jpg', 1052390, '2026-05-08 22:04:56'),
(18, 2, 'photos/2026/05/kiptalk_b7a1ba10662e71a144e04874435287ac.jpg', 197505, '2026-05-08 22:05:59'),
(19, 2, 'photos/2026/05/kiptalk_e468eac78c5f01f8099c03246f6c470b.png', 249573, '2026-05-08 22:11:32'),
(20, 2, 'photos/2026/05/kiptalk_dce7bbb048a3a81b0637a419d88e251a.jpg', 40742, '2026-05-08 22:25:44'),
(21, 2, 'photos/2026/05/kiptalk_4601a8c8ade48ec654f5981a33e1e241.jpg', 28344600, '2026-05-08 22:25:51'),
(22, 2, 'photos/2026/05/kiptalk_8cdaf205615c99f4fc3d6d0656013d4c.jpeg', 118665, '2026-05-08 22:45:18'),
(23, 2, 'photos/2026/05/kiptalk_f72f8b55ac321ab5c9ec36e15cc7486a.webp', 113108, '2026-05-08 22:48:49'),
(24, 3, 'photos/2026/05/kiptalk_cb068d6707e8985360b8454fdfe49674.jpg', 2187440, '2026-05-08 22:54:25'),
(25, 3, 'photos/2026/05/kiptalk_c6d0ab74142a72ca4851a62d86dc5923.jpg', 297701, '2026-05-08 22:57:20'),
(26, 2, 'photos/2026/05/kiptalk_e5d6ccba1e91e1642a66e7da4d5cd963.jpg', 15603000, '2026-05-08 23:19:02'),
(27, 2, 'photos/2026/05/kiptalk_1959f4c499a3b24e31f1eaeecdfe9278.jpg', 40742, '2026-05-08 23:19:37'),
(28, 2, 'photos/2026/05/kiptalk_7bb14ce1b26ecd72e09c3e9325dbcff0.jpg', 2465290, '2026-05-08 23:24:41'),
(29, 2, 'photos/2026/05/kiptalk_8b5a917b662edd7c35e36512d1aa4232.jpg', 1095600, '2026-05-08 23:26:58'),
(30, 2, 'photos/2026/05/kiptalk_8c661f95464e344b3c332923148eda9f.jpg', 86219, '2026-05-08 23:39:26'),
(31, 2, 'videos/2026/05/kiptalk_2ebd840fb6486c3b3b6accb3cb42fd9d.mp4', 12719700, '2026-05-09 00:00:15'),
(32, 3, 'photos/2026/05/kiptalk_813f7fe330bdfbd280246500bfca1074.jpg', 2187440, '2026-05-09 04:25:43'),
(34, 2, 'sounds/2026/05/kiptalk_315a6bdf377ae3ef9d8af01d6ff3edcc.wav', 2269230, '2026-05-09 05:29:06'),
(35, 3, 'sounds/2026/05/kiptalk_66f7b98d9f7c5822972e24961ff6a382.wav', 9912360, '2026-05-09 05:33:32'),
(36, 3, 'photos/2026/05/kiptalk_a49474f4a497a3cef0e67026be280b30.jpg', 762483, '2026-05-09 05:35:17'),
(37, 8, 'photos/2026/05/kiptalk_4a245a977fd688881a8004b3af62c420.jpg', 1551980, '2026-05-09 05:46:39'),
(38, 8, 'photos/2026/05/kiptalk_9697ec25af715fe9351034827c993e6b.jpg', 1582180, '2026-05-09 05:48:17'),
(39, 2, 'sounds/2026/05/kiptalk_ac6149cccaa737e69db81b28f0afb00a.wav', 3170350, '2026-05-09 05:49:19'),
(40, 7, 'sounds/2026/05/kiptalk_f520a0adc7377d736ea78f28a800f9e8.wav', 5267500, '2026-05-09 05:51:22'),
(41, 9, 'photos/2026/05/kiptalk_d4b1dab4e07ebf31d6e7b959d7c40f92.jpg', 1274140, '2026-05-09 05:52:35'),
(42, 9, 'photos/2026/05/kiptalk_cd566a56a91d1356ccf8a8e4bd0a07a2.jpg', 5789310, '2026-05-09 05:56:22'),
(43, 7, 'photos/2026/05/kiptalk_fa31f88a06aa4aa1e44e8919a9454dd3.heic', 732485, '2026-05-09 05:56:41'),
(44, 10, 'photos/2026/05/kiptalk_ef778d9204144bea69be5ddd37d22499.jpg', 195348, '2026-05-09 05:57:41'),
(45, 7, 'photos/2026/05/kiptalk_c66f49d8e824c34dcff0dd22a6fc4827.jpeg', 2477180, '2026-05-09 06:00:23'),
(46, 7, 'photos/2026/05/kiptalk_f5f380ebb96ecb470a9a44b299015acd.jpeg', 1329580, '2026-05-09 06:02:45'),
(47, 10, 'photos/2026/05/kiptalk_033ec12562cb07782038b8b751bbe9b5.jpg', 186850, '2026-05-09 06:05:34'),
(48, 10, 'photos/2026/05/kiptalk_d3865472675910cc94e61d2da027f858.jpg', 187987, '2026-05-09 06:05:35'),
(49, 10, 'photos/2026/05/kiptalk_be820ff011ce25157a266aa55d99e950.jpg', 206106, '2026-05-09 06:05:36'),
(50, 10, 'photos/2026/05/kiptalk_f01b99773f7b6f7d58e884145e48dcc1.jpg', 217583, '2026-05-09 06:05:37'),
(51, 10, 'photos/2026/05/kiptalk_85afa9eeeac697b4858839c93cf0fc8a.jpg', 195348, '2026-05-09 06:05:38'),
(52, 10, 'photos/2026/05/kiptalk_ab7441967b9bc20037d86a9cd3cd8eef.jpg', 919550, '2026-05-09 06:05:39'),
(53, 10, 'photos/2026/05/kiptalk_2cb9010435746ced7d4467758c8b2d04.jpg', 145906, '2026-05-09 06:05:40'),
(54, 10, 'photos/2026/05/kiptalk_fd32addc2f949e64a092a32544e17241.jpg', 238247, '2026-05-09 06:05:41'),
(55, 10, 'photos/2026/05/kiptalk_b8cdfd7595ca3ed340e64c41b6a58616.jpg', 203862, '2026-05-09 06:05:42'),
(56, 10, 'photos/2026/05/kiptalk_47402393fbc4367a4ffeabda230b8864.jpg', 146672, '2026-05-09 06:05:43'),
(57, 10, 'photos/2026/05/kiptalk_012166071d480e6178549977c8d7016a.jpg', 109244, '2026-05-09 06:05:44'),
(58, 10, 'photos/2026/05/kiptalk_76eaf588775a26063ba34f1c5e8c9ccb.jpg', 133734, '2026-05-09 06:05:44'),
(59, 10, 'photos/2026/05/kiptalk_9f99947bd9e26e8149bed175175834b5.jpg', 125156, '2026-05-09 06:05:45'),
(60, 10, 'photos/2026/05/kiptalk_e0d4e547ba1c625f9ab074e19bdef09e.jpg', 103592, '2026-05-09 06:05:45'),
(61, 10, 'photos/2026/05/kiptalk_7ff1d13d49f1ae53c6cb7e62201dec54.jpg', 102157, '2026-05-09 06:05:46'),
(62, 10, 'photos/2026/05/kiptalk_e4ef7c115c24dad33c2429f95ea32d53.jpg', 98429, '2026-05-09 06:05:47'),
(63, 10, 'photos/2026/05/kiptalk_e5fc5461380ae6e47ef7b89c222c10da.jpg', 96708, '2026-05-09 06:05:47'),
(64, 10, 'photos/2026/05/kiptalk_e0c5ee258adcdbdf4eae1f0e9769e001.jpg', 93555, '2026-05-09 06:05:48'),
(65, 10, 'photos/2026/05/kiptalk_3444ad91a8896c9293be02e355177a80.jpg', 84183, '2026-05-09 06:05:49'),
(66, 10, 'photos/2026/05/kiptalk_459be287765886932a93a9f03bc8abbf.jpg', 85961, '2026-05-09 06:05:49'),
(67, 10, 'photos/2026/05/kiptalk_4acd05497fedfb14f9d6d47aca3c3be3.jpg', 134875, '2026-05-09 06:05:50'),
(68, 10, 'photos/2026/05/kiptalk_3eea2a286575fa1d4fe84e3972e6f9e2.jpg', 195348, '2026-05-09 06:12:50'),
(69, 10, 'sounds/2026/05/kiptalk_74312a4dbf62404b275473710fe18a84.wav', 7045160, '2026-05-09 06:25:16'),
(70, 2, 'sounds/2026/05/kiptalk_e742f82c877c26d02827c528d425a562.wav', 10817600, '2026-05-09 06:27:40'),
(71, 10, 'sounds/2026/05/kiptalk_536a536b6b95797d63ce4739ffabc7a7.wav', 18149400, '2026-05-09 06:30:39'),
(72, 2, 'sounds/2026/05/kiptalk_f8f69a57fcbaba393dfd56bfde2e3c33.wav', 11399200, '2026-05-09 06:35:17'),
(73, 2, 'photos/2026/05/kiptalk_7958bc08668246fc3aefaf938d1a5b93.jpg', 69721, '2026-05-09 06:36:06'),
(74, 9, 'photos/2026/05/kiptalk_9e770bbfc19f8e6d959cf9b442f493c7.jpg', 5663300, '2026-05-09 06:38:55'),
(75, 11, 'photos/2026/05/kiptalk_d5d3918c88560d7829518e1e73bb329f.webp', 29194, '2026-05-09 06:43:22'),
(76, 2, 'photos/2026/05/kiptalk_22995a1f6c173fdce732d3829ce2a81e.jpg', 74281, '2026-05-09 06:50:36'),
(77, 2, 'photos/2026/05/kiptalk_dfe79026771567ecbb9603a8e6d3c89e.jpg', 78542, '2026-05-09 06:56:00'),
(78, 2, 'photos/2026/05/kiptalk_f1a406d5f6f8fdc8a2846505d639238d.jpg', 40742, '2026-05-09 07:12:40'),
(79, 2, 'photos/2026/05/kiptalk_06235f918cd5a02e9137441b1d607beb.jpg', 40742, '2026-05-09 07:12:55'),
(80, 2, 'photos/2026/05/kiptalk_be1bcd0f310348d080507e2afcbccefe.jpg', 915784, '2026-05-09 07:21:48'),
(81, 9, 'sounds/2026/05/kiptalk_7d543fe6d656cac4385a438b1e69f4ec.wav', 2457640, '2026-05-09 07:22:02'),
(82, 2, 'photos/2026/05/kiptalk_d59eabe30215c4759818adb15f249bae.png', 127541, '2026-05-09 07:38:56'),
(83, 2, 'photos/2026/05/kiptalk_5b332bfd258a57f3236f2c5d607947c9.png', 127541, '2026-05-09 07:39:02'),
(84, 2, 'photos/2026/05/kiptalk_7ed050a986ab4599285eedb2e4eb3c98.png', 127541, '2026-05-09 07:42:10'),
(85, 2, 'videos/2026/05/kiptalk_0e934502e178dd5f97b336237b412e2e.mp4', 40553700, '2026-05-09 08:31:52'),
(86, 13, 'photos/2026/05/kiptalk_ca1ed7352ff8abbbfc59193b06d38c51.png', 3488020, '2026-05-09 09:05:58'),
(87, 13, 'photos/2026/05/kiptalk_eb31eb2fec49d5bd513fd5b198de6137.png', 1730580, '2026-05-09 09:28:30'),
(88, 13, 'photos/2026/05/kiptalk_c56778dd102db48e2b56615e5a92f462.jpeg', 116891, '2026-05-09 09:28:32'),
(89, 13, 'photos/2026/05/kiptalk_24533fce648a93d3d80132eb66a48032.jpeg', 123386, '2026-05-09 09:28:34'),
(90, 2, 'sounds/2026/05/kiptalk_1632cc5b50107da3794b6d68d2a934ef.wav', 13426700, '2026-05-09 09:29:10'),
(91, 13, 'sounds/2026/05/kiptalk_8d29db55e3e7026b107980d8e74a5413.wav', 7004200, '2026-05-09 09:34:52'),
(92, 13, 'videos/2026/05/kiptalk_775311d374ff6e30b3263cef8e5129ca.mov', 13713100, '2026-05-09 09:50:01'),
(93, 15, 'photos/2026/05/kiptalk_aa688fcbf680861b607f9543d5c0670f.jpg', 759028, '2026-05-09 10:44:51'),
(94, 15, 'photos/2026/05/kiptalk_eecace166e9c90c01f4f85e976ec0d35.jpg', 503446, '2026-05-09 10:48:46'),
(95, 17, 'photos/2026/05/kiptalk_1ea082f439008d6f540a149e09b87def.jpg', 254887, '2026-05-09 12:07:59'),
(96, 17, 'photos/2026/05/kiptalk_295a0da67934bd9b4c711d2455f7c0e9.jpg', 181853, '2026-05-09 12:11:35'),
(97, 17, 'photos/2026/05/kiptalk_33d54e4860456ca86dbf7615a57e8c36.jpg', 65441, '2026-05-09 12:12:43'),
(98, 17, 'photos/2026/05/kiptalk_25c0847808e64427552ee5386e9c2f52.jpg', 181853, '2026-05-09 12:13:15'),
(99, 17, 'photos/2026/05/kiptalk_9471bd16af0cc44476d920fe6580befa.jpg', 72662, '2026-05-09 12:19:01'),
(100, 17, 'photos/2026/05/kiptalk_1c7df23194d5eae7dd5e0793f324289a.jpg', 181853, '2026-05-09 12:20:08'),
(101, 17, 'photos/2026/05/kiptalk_53f63c2ef81069e86924bdfa4858c647.jpg', 254887, '2026-05-09 12:21:12'),
(102, 18, 'photos/2026/05/kiptalk_735efe9a6f769f8dcb73e0bd7d6fa63d.jpg', 954560, '2026-05-09 12:37:17'),
(103, 19, 'photos/2026/05/kiptalk_693e199ff41e19cdcbfeccbc1c436c9c.jpg', 84642, '2026-05-09 13:01:31'),
(104, 19, 'photos/2026/05/kiptalk_ffe96cc89ade74d20655d307df00e747.jpg', 521183, '2026-05-09 13:06:06'),
(105, 20, 'photos/2026/05/kiptalk_50c241b950f5c0c100605df2fada606a.jpg', 15351, '2026-05-09 14:54:42'),
(106, 10, 'photos/2026/05/kiptalk_cae8a87d76f5ad739468bd8f2ee8734a.jpg', 114899, '2026-05-09 16:07:36'),
(107, 21, 'photos/2026/05/kiptalk_5c770df972676496568f710d30c32942.jpeg', 230790, '2026-05-09 16:25:15'),
(108, 21, 'photos/2026/05/kiptalk_8d4c616cc498a54cc509eb73c636e0e2.jpeg', 931523, '2026-05-09 16:26:07'),
(109, 19, 'photos/2026/05/kiptalk_a790cd2df841aa55691dc272225a7366.jpg', 173508, '2026-05-09 16:27:29'),
(110, 9, 'photos/2026/05/kiptalk_1495c3e05317fc25bcb2e604b61e97dc.jpg', 47926, '2026-05-09 18:05:08'),
(111, 9, 'photos/2026/05/kiptalk_ca1ebd92ee32f7506591043f1a94f877.jpg', 296098, '2026-05-09 18:08:47'),
(112, 2, 'photos/2026/05/kiptalk_a4d25ed1d4d98b93dfbc0bf71d758c2d.jpg', 5219250, '2026-05-09 18:50:28'),
(113, 2, 'photos/2026/05/kiptalk_77cd057a2c1825062c9ac125a8a9bd4e.jpg', 5219250, '2026-05-09 18:51:59'),
(114, 2, 'photos/2026/05/kiptalk_559a0dd14e61bf2c97e1b03e386b4daa.jpg', 5219250, '2026-05-09 18:53:45'),
(115, 10, 'photos/2026/05/kiptalk_1017df5ba69fcedd1510bf24abc30a88.jpg', 765143, '2026-05-09 19:46:37'),
(116, 10, 'photos/2026/05/kiptalk_67e031460b1bc4fd9f7a3dcbb28f341f.jpg', 116563, '2026-05-09 19:49:30'),
(117, 10, 'photos/2026/05/kiptalk_4c2a4f9c1398f30af0cf635ee9b4aed1.jpg', 108800, '2026-05-09 19:50:07'),
(118, 10, 'photos/2026/05/kiptalk_f1286c24707762ee2be7f68ca2b0cf0e.jpg', 101320, '2026-05-09 19:50:42'),
(119, 10, 'photos/2026/05/kiptalk_f167d70159e9434cb3090fcbe658f1f3.jpg', 548092, '2026-05-09 19:51:11'),
(120, 10, 'photos/2026/05/kiptalk_dcfcc80fe344e9026ee647de5b84eb1b.jpg', 467040, '2026-05-09 19:51:35'),
(121, 10, 'photos/2026/05/kiptalk_293108ead23e8a9b14e302320345dc1f.jpg', 574521, '2026-05-09 19:52:10'),
(122, 10, 'photos/2026/05/kiptalk_3b17447549a3f04b0f3f22aec5136bac.jpg', 556211, '2026-05-09 19:52:59'),
(123, 10, 'photos/2026/05/kiptalk_963a64c03157384951cdaf358b068213.jpg', 727555, '2026-05-09 19:53:33'),
(124, 10, 'photos/2026/05/kiptalk_832aa256ba69a83c3d20c934b0a3be51.jpg', 681160, '2026-05-09 19:54:00'),
(125, 10, 'photos/2026/05/kiptalk_c2fe9719ac9852d9a4b14135254b3f2a.jpg', 67376, '2026-05-09 19:54:24'),
(126, 10, 'photos/2026/05/kiptalk_30785519fd9b472018493ac7520d763a.jpg', 658175, '2026-05-09 19:54:46'),
(127, 10, 'photos/2026/05/kiptalk_8c0644dd5d53b200ac6f66ea7fb10562.jpg', 648990, '2026-05-09 19:55:20'),
(128, 10, 'photos/2026/05/kiptalk_13eca645b1b022b36bbdfbb99603f2ce.jpg', 675808, '2026-05-09 19:55:49'),
(129, 10, 'photos/2026/05/kiptalk_8cad08f1329f13ff2e9e2d37ffd89186.jpg', 611613, '2026-05-09 19:56:33'),
(130, 10, 'photos/2026/05/kiptalk_2fa74fd2097436058909f5892f799461.jpg', 886440, '2026-05-09 19:57:08'),
(131, 10, 'photos/2026/05/kiptalk_bdfa85effc7646b1bcad67d8e77e6ea6.jpg', 765143, '2026-05-09 19:58:01'),
(132, 10, 'photos/2026/05/kiptalk_a2a6e6530f315463fde1ecf7139886fa.jpg', 649449, '2026-05-09 19:59:19'),
(133, 10, 'photos/2026/05/kiptalk_dc569ffed499acfb2a668d9df2e88dde.jpg', 351424, '2026-05-09 19:59:49'),
(134, 10, 'photos/2026/05/kiptalk_367735a758c0f1790f162f81f9a2283a.jpg', 241663, '2026-05-09 20:00:33'),
(135, 10, 'photos/2026/05/kiptalk_c1fa6e78d7381ed6e2c3d5ee9435fab8.jpg', 229263, '2026-05-09 20:01:20'),
(136, 10, 'photos/2026/05/kiptalk_2ec4f573f7ec6ce2f752bf5ee050b382.jpg', 791094, '2026-05-09 20:02:03'),
(137, 10, 'photos/2026/05/kiptalk_49f696ec2d4b248762cdb575456bc9c3.jpg', 245218, '2026-05-09 20:02:39'),
(138, 10, 'photos/2026/05/kiptalk_edc6df2c6721d7b5986a57c09f8671e0.jpg', 854842, '2026-05-09 20:03:11'),
(139, 10, 'photos/2026/05/kiptalk_1c6eb8c0accc744a14f26a1e3a2a10bc.jpg', 41403, '2026-05-09 20:03:38'),
(140, 10, 'photos/2026/05/kiptalk_31f07ab32618f72239fa2a4de5b759fc.jpg', 66921, '2026-05-09 20:04:01'),
(141, 10, 'photos/2026/05/kiptalk_51332ec58d6b630bdb33bd4038fb95b1.jpg', 139784, '2026-05-09 20:04:37'),
(142, 10, 'videos/2026/05/kiptalk_73742e54174dbedf8c86b736db90d20d.mp4', 16229900, '2026-05-09 20:09:19'),
(143, 10, 'videos/2026/05/kiptalk_b3a38996545e72c47153e0f076ea1648.mp4', 12395600, '2026-05-09 20:10:32'),
(144, 10, 'videos/2026/05/kiptalk_904ebf875dcfd6fe5afb4139205a8790.mp4', 9418730, '2026-05-09 20:12:17'),
(145, 10, 'videos/2026/05/kiptalk_fbce0947c7b2e480879b945c307c0726.mp4', 12544100, '2026-05-09 20:13:30'),
(146, 10, 'videos/2026/05/kiptalk_fe9c7d83e207482117492eadc07ad0ae.mp4', 16229900, '2026-05-09 20:14:19'),
(147, 10, 'videos/2026/05/kiptalk_df5a71111d4bbe1a4c238df8569846b6.mp4', 3342900, '2026-05-09 20:16:04'),
(148, 10, 'videos/2026/05/kiptalk_242a83d48c0b98d9ed0ea3b0632fa673.mp4', 3042320, '2026-05-09 20:16:40'),
(149, 22, 'photos/2026/05/kiptalk_eb7624779ead51a28147e2dc06517b6b.jpeg', 25429, '2026-05-09 20:20:15'),
(150, 22, 'photos/2026/05/kiptalk_7229ec4b742b64f02c2c8550b389be6d.jpeg', 1247420, '2026-05-09 20:31:29'),
(151, 23, 'photos/2026/05/kiptalk_72c90e6448b3cf8622d4b2f89c167786.jpg', 109811, '2026-05-09 21:38:39'),
(152, 24, 'photos/2026/05/kiptalk_d9494b140ba3bb5d9a918fe13bb50d98.jpg', 70033, '2026-05-09 21:55:45'),
(153, 2, 'photos/2026/05/kiptalk_34f86d8417b43b84b0f9851c8b56b4e3.jpg', 106500, '2026-05-10 04:06:14'),
(154, 2, 'videos/2026/05/kiptalk_a6ae01e090b1a97d0d23687433d71782.mp4', 7621070, '2026-05-10 04:17:25'),
(155, 2, 'photos/2026/05/kiptalk_e35597d51c2c8ca2a2b802cf24e0fa61.jpg', 729113, '2026-05-10 04:18:01'),
(156, 2, 'photos/2026/05/kiptalk_e1b8995d56f98e4490dca2188ee72408.jpg', 164679, '2026-05-10 04:38:55'),
(157, 19, 'sounds/2026/05/kiptalk_d7305ab7bafee5392ae619899609f4f6.wav', 2207790, '2026-05-10 04:46:35'),
(158, 19, 'photos/2026/05/kiptalk_6ec549e519f1b53982345bf395e90c69.jpg', 124454, '2026-05-10 04:51:10'),
(159, 25, 'photos/2026/05/kiptalk_7f75fd98efd5716577ca4d3617a03066.jpg', 632570, '2026-05-10 05:40:51'),
(160, 25, 'photos/2026/05/kiptalk_b8b2c822bac0ce0db66d22c30fe4e9fa.jpg', 69780, '2026-05-10 05:48:04'),
(161, 25, 'photos/2026/05/kiptalk_02173a5012822516bc7a728aa7715fd9.jpg', 3168840, '2026-05-10 05:57:28'),
(162, 2, 'photos/2026/05/kiptalk_d92543ab403c3007a39f2bddda616a5f.png', 1745890, '2026-05-10 06:05:21'),
(163, 10, 'videos/2026/05/kiptalk_e0e99e7872f1b4a9610c48aab4802a1c.mp4', 75019300, '2026-05-10 06:08:52'),
(164, 2, 'videos/2026/05/kiptalk_de553365f426850176b2e9cac1ada71e.mp4', 24451700, '2026-05-10 06:24:09'),
(165, 2, 'photos/2026/05/kiptalk_6a95adaeeb48af5247312c835c2c361f.jpg', 739979, '2026-05-10 06:24:46'),
(166, 2, 'photos/2026/05/kiptalk_c42e1b4059c965a8512125287b279b15.png', 1745890, '2026-05-10 06:29:20'),
(167, 2, 'photos/2026/05/kiptalk_505568a52ec062dfea53bc1118736bb1.jpg', 5219250, '2026-05-10 06:30:03'),
(168, 26, 'photos/2026/05/kiptalk_a46b6970f7b8bccc4de43ee5b2366b5e.jpg', 158959, '2026-05-10 06:38:12'),
(169, 26, 'photos/2026/05/kiptalk_473b5807626f347f3f0da766ea6192a7.jpg', 66873, '2026-05-10 06:41:28'),
(170, 26, 'photos/2026/05/kiptalk_33ecbbe175306ba5023390d560e05f2e.jpg', 158959, '2026-05-10 06:41:45'),
(171, 26, 'photos/2026/05/kiptalk_65a9045df2321086a1a47610037ff1af.jpg', 235606, '2026-05-10 06:42:44'),
(172, 2, 'photos/2026/05/kiptalk_34fe3a0bfccfd80c7d53d9054988a113.jpg', 3529510, '2026-05-10 07:23:58'),
(173, 18, 'photos/2026/05/kiptalk_631dc04838f2c7efbd9dece49010c3dc.jpg', 118454, '2026-05-10 07:48:24'),
(174, 2, 'photos/2026/05/kiptalk_305f6ffdf3e5596b16dff2b6150c40fb.png', 1554080, '2026-05-10 08:17:55'),
(176, 25, 'photos/2026/05/kiptalk_eef26cdcf159494e582dc8618141251c.jpg', 472314, '2026-05-10 08:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `users_uploads_pending`
--

CREATE TABLE `users_uploads_pending` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_name` varchar(256) NOT NULL,
  `file_size` float NOT NULL,
  `handle` varchar(128) DEFAULT NULL,
  `insert_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_uploads_pending`
--

INSERT INTO `users_uploads_pending` (`id`, `user_id`, `file_name`, `file_size`, `handle`, `insert_date`) VALUES
(1, 2, 'sounds/2026/05/sngine_88a5ef0de7282e46a5edc60c815435a3.wav', 1097770, '', '2026-05-08 10:34:09'),
(3, 2, 'sounds/2026/05/sngine_039ed3d37394a6efa2632ee472136214.wav', 1798190, '', '2026-05-08 16:15:37'),
(28, 3, 'photos/2026/05/kiptalk_a49474f4a497a3cef0e67026be280b30.jpg', 762483, 'publisher', '2026-05-09 05:35:17'),
(29, 2, 'sounds/2026/05/kiptalk_ac6149cccaa737e69db81b28f0afb00a.wav', 3170350, '', '2026-05-09 05:49:19'),
(30, 7, 'sounds/2026/05/kiptalk_f520a0adc7377d736ea78f28a800f9e8.wav', 5267500, '', '2026-05-09 05:51:22'),
(64, 9, 'sounds/2026/05/kiptalk_7d543fe6d656cac4385a438b1e69f4ec.wav', 2457640, '', '2026-05-09 07:22:02'),
(109, 10, 'videos/2026/05/kiptalk_73742e54174dbedf8c86b736db90d20d.mp4', 16229900, '', '2026-05-09 20:09:19'),
(121, 19, 'sounds/2026/05/kiptalk_d7305ab7bafee5392ae619899609f4f6.wav', 2207790, '', '2026-05-10 04:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `verification_requests`
--

CREATE TABLE `verification_requests` (
  `request_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  `node_type` varchar(32) NOT NULL,
  `photo` varchar(256) DEFAULT NULL,
  `passport` varchar(256) DEFAULT NULL,
  `business_website` text DEFAULT NULL,
  `business_address` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_payments`
--

CREATE TABLE `wallet_payments` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` varchar(32) NOT NULL,
  `method` varchar(64) NOT NULL,
  `method_value` text NOT NULL,
  `time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `node_type` varchar(32) NOT NULL,
  `node_id` int(10) UNSIGNED DEFAULT NULL,
  `amount` varchar(32) NOT NULL,
  `type` enum('in','out') NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `widget_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(256) NOT NULL,
  `place` varchar(32) NOT NULL,
  `place_order` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `code` mediumtext NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `target_audience` enum('all','members','visitors') NOT NULL DEFAULT 'all'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`widget_id`, `title`, `place`, `place_order`, `code`, `language_id`, `target_audience`) VALUES
(3, '', 'home', 0, '', 0, 'all');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads_campaigns`
--
ALTER TABLE `ads_campaigns`
  ADD PRIMARY KEY (`campaign_id`),
  ADD KEY `campaign_user_id` (`campaign_user_id`);

--
-- Indexes for table `ads_system`
--
ALTER TABLE `ads_system`
  ADD PRIMARY KEY (`ads_id`);

--
-- Indexes for table `affiliates_payments`
--
ALTER TABLE `affiliates_payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `announcements_users`
--
ALTER TABLE `announcements_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `announcement_id_user_id` (`announcement_id`,`user_id`);

--
-- Indexes for table `auto_connect`
--
ALTER TABLE `auto_connect`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `bank_transfers`
--
ALTER TABLE `bank_transfers`
  ADD PRIMARY KEY (`transfer_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`node_id`),
  ADD KEY `node_value` (`node_value`);

--
-- Indexes for table `blogs_categories`
--
ALTER TABLE `blogs_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_parent_id` (`category_parent_id`);

--
-- Indexes for table `coinpayments_transactions`
--
ALTER TABLE `coinpayments_transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`conversation_id`),
  ADD KEY `last_message_id` (`last_message_id`);

--
-- Indexes for table `conversations_calls`
--
ALTER TABLE `conversations_calls`
  ADD PRIMARY KEY (`call_id`),
  ADD KEY `from_user_id` (`from_user_id`),
  ADD KEY `to_user_id` (`to_user_id`);

--
-- Indexes for table `conversations_messages`
--
ALTER TABLE `conversations_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `conversation_id` (`conversation_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `conversations_messages_reactions`
--
ALTER TABLE `conversations_messages_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id_user_id` (`message_id`,`user_id`);

--
-- Indexes for table `conversations_users`
--
ALTER TABLE `conversations_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `conversation_id_user_id` (`conversation_id`,`user_id`);

--
-- Indexes for table `courses_categories`
--
ALTER TABLE `courses_categories`
  ADD PRIMARY KEY (`category_id`) USING BTREE,
  ADD KEY `category_parent_id` (`category_parent_id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `custom_fields_values`
--
ALTER TABLE `custom_fields_values`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `field_id_node_id_node_type` (`field_id`,`node_id`,`node_type`),
  ADD KEY `value` (`value`(20));

--
-- Indexes for table `developers_apps`
--
ALTER TABLE `developers_apps`
  ADD PRIMARY KEY (`app_id`),
  ADD UNIQUE KEY `app_auth_id` (`app_auth_id`),
  ADD UNIQUE KEY `app_auth_secret` (`app_auth_secret`),
  ADD KEY `app_user_id` (`app_user_id`),
  ADD KEY `app_category_id` (`app_category_id`);

--
-- Indexes for table `developers_apps_categories`
--
ALTER TABLE `developers_apps_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_parent_id` (`category_parent_id`);

--
-- Indexes for table `developers_apps_users`
--
ALTER TABLE `developers_apps_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_id_user_id` (`app_id`,`user_id`) USING BTREE;

--
-- Indexes for table `emojis`
--
ALTER TABLE `emojis`
  ADD PRIMARY KEY (`emoji_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `event_admin` (`event_admin`),
  ADD KEY `event_category` (`event_category`),
  ADD KEY `event_cover_id` (`event_cover_id`),
  ADD KEY `event_album_covers` (`event_album_covers`),
  ADD KEY `event_album_timeline` (`event_album_timeline`),
  ADD KEY `event_date` (`event_date`) USING BTREE,
  ADD KEY `event_title_idx` (`event_title`) USING BTREE;

--
-- Indexes for table `events_categories`
--
ALTER TABLE `events_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_parent_id` (`category_parent_id`);

--
-- Indexes for table `events_members`
--
ALTER TABLE `events_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `event_id_user_id` (`event_id`,`user_id`) USING BTREE;

--
-- Indexes for table `followings`
--
ALTER TABLE `followings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_following_id` (`user_id`,`following_id`),
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `following_id` (`following_id`) USING BTREE;

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`forum_id`),
  ADD KEY `forum_section` (`forum_section`);

--
-- Indexes for table `forums_replies`
--
ALTER TABLE `forums_replies`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `thread_id` (`thread_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `forums_threads`
--
ALTER TABLE `forums_threads`
  ADD PRIMARY KEY (`thread_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_one_id_user_two_id` (`user_one_id`,`user_two_id`),
  ADD KEY `user_one_id` (`user_one_id`) USING BTREE,
  ADD KEY `user_two_id` (`user_two_id`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE;

--
-- Indexes for table `funding_payments`
--
ALTER TABLE `funding_payments`
  ADD PRIMARY KEY (`payment_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `games_genres`
--
ALTER TABLE `games_genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `games_players`
--
ALTER TABLE `games_players`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `game_id_user_id` (`game_id`,`user_id`);

--
-- Indexes for table `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`gift_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `group_name` (`group_name`) USING BTREE,
  ADD KEY `group_admin` (`group_admin`),
  ADD KEY `group_category` (`group_category`),
  ADD KEY `group_picture_id` (`group_picture_id`),
  ADD KEY `group_cover_id` (`group_cover_id`),
  ADD KEY `group_album_pictures` (`group_album_pictures`),
  ADD KEY `group_album_covers` (`group_album_covers`),
  ADD KEY `group_album_timeline` (`group_album_timeline`),
  ADD KEY `group_date` (`group_date`) USING BTREE,
  ADD KEY `group_title_idx` (`group_title`) USING BTREE,
  ADD KEY `group_name_idx` (`group_name`) USING BTREE;

--
-- Indexes for table `groups_admins`
--
ALTER TABLE `groups_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `groups_categories`
--
ALTER TABLE `groups_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_parent_id` (`category_parent_id`);

--
-- Indexes for table `groups_invites`
--
ALTER TABLE `groups_invites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_id_user_id_from_user_id` (`group_id`,`user_id`,`from_user_id`);

--
-- Indexes for table `groups_members`
--
ALTER TABLE `groups_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`hashtag_id`),
  ADD KEY `hashtag` (`hashtag`);

--
-- Indexes for table `hashtags_posts`
--
ALTER TABLE `hashtags_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id_hashtag_id` (`post_id`,`hashtag_id`),
  ADD KEY `post_id` (`post_id`) USING BTREE,
  ADD KEY `hashtag_id` (`hashtag_id`) USING BTREE;

--
-- Indexes for table `invitation_codes`
--
ALTER TABLE `invitation_codes`
  ADD PRIMARY KEY (`code_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `used_by` (`used_by`),
  ADD KEY `code` (`code`) USING BTREE;

--
-- Indexes for table `jobs_categories`
--
ALTER TABLE `jobs_categories`
  ADD PRIMARY KEY (`category_id`) USING BTREE,
  ADD KEY `category_parent_id` (`category_parent_id`);

--
-- Indexes for table `log_commissions`
--
ALTER TABLE `log_commissions`
  ADD PRIMARY KEY (`payment_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `log_payments`
--
ALTER TABLE `log_payments`
  ADD PRIMARY KEY (`payment_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `log_points`
--
ALTER TABLE `log_points`
  ADD PRIMARY KEY (`log_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `log_sessions`
--
ALTER TABLE `log_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `session_ip` (`session_ip`) USING BTREE,
  ADD KEY `session_user_agent` (`session_user_agent`) USING BTREE,
  ADD KEY `idx_session_ip_user_agent` (`session_ip`,`session_user_agent`);

--
-- Indexes for table `log_subscriptions`
--
ALTER TABLE `log_subscriptions`
  ADD PRIMARY KEY (`payment_id`) USING BTREE,
  ADD KEY `user_id` (`node_id`);

--
-- Indexes for table `market_categories`
--
ALTER TABLE `market_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_parent_id` (`category_parent_id`);

--
-- Indexes for table `market_payments`
--
ALTER TABLE `market_payments`
  ADD PRIMARY KEY (`payment_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `merits_categories`
--
ALTER TABLE `merits_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_parent_id` (`category_parent_id`);

--
-- Indexes for table `monetization_coupons`
--
ALTER TABLE `monetization_coupons`
  ADD PRIMARY KEY (`coupon_id`),
  ADD KEY `coupon_code` (`coupon_code`) USING BTREE;

--
-- Indexes for table `monetization_coupons_users`
--
ALTER TABLE `monetization_coupons_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_coupon_id` (`user_id`,`coupon_id`) USING BTREE;

--
-- Indexes for table `monetization_payments`
--
ALTER TABLE `monetization_payments`
  ADD PRIMARY KEY (`payment_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `monetization_plans`
--
ALTER TABLE `monetization_plans`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movies_genres`
--
ALTER TABLE `movies_genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `movies_payments`
--
ALTER TABLE `movies_payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `move_id_user_id` (`movie_id`,`user_id`) USING BTREE;

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `to_user_id` (`to_user_id`),
  ADD KEY `from_user_id` (`from_user_id`,`from_user_type`);

--
-- Indexes for table `offers_categories`
--
ALTER TABLE `offers_categories`
  ADD PRIMARY KEY (`category_id`) USING BTREE,
  ADD KEY `category_parent_id` (`category_parent_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `seller_id` (`seller_id`) USING BTREE,
  ADD KEY `buyer_id` (`buyer_id`) USING BTREE,
  ADD KEY `buyer_address_id` (`buyer_address_id`) USING BTREE,
  ADD KEY `order_collection_id` (`order_collection_id`) USING BTREE,
  ADD KEY `order_hash` (`order_hash`) USING BTREE;

--
-- Indexes for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_post_id` (`product_post_id`) USING BTREE,
  ADD KEY `order_id` (`order_id`) USING BTREE;

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`),
  ADD KEY `package_permissions_group_id` (`package_permissions_group_id`) USING BTREE;

--
-- Indexes for table `packages_payments`
--
ALTER TABLE `packages_payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `page_name` (`page_name`) USING BTREE,
  ADD KEY `page_admin` (`page_admin`),
  ADD KEY `page_category` (`page_category`),
  ADD KEY `page_cover_id` (`page_cover_id`),
  ADD KEY `page_picture_id` (`page_picture_id`),
  ADD KEY `page_country` (`page_country`),
  ADD KEY `page_album_pictures` (`page_album_pictures`),
  ADD KEY `page_album_covers` (`page_album_covers`),
  ADD KEY `page_album_timeline` (`page_album_timeline`),
  ADD KEY `page_boosted` (`page_boosted`) USING BTREE,
  ADD KEY `page_date` (`page_date`) USING BTREE,
  ADD KEY `page_name_idx` (`page_name`) USING BTREE,
  ADD KEY `page_title_idx` (`page_title`) USING BTREE;

--
-- Indexes for table `pages_admins`
--
ALTER TABLE `pages_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_id_user_id` (`page_id`,`user_id`);

--
-- Indexes for table `pages_categories`
--
ALTER TABLE `pages_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_parent_id` (`category_parent_id`);

--
-- Indexes for table `pages_invites`
--
ALTER TABLE `pages_invites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_id_user_id_from_user_id` (`page_id`,`user_id`,`from_user_id`);

--
-- Indexes for table `pages_likes`
--
ALTER TABLE `pages_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_id_user_id` (`page_id`,`user_id`);

--
-- Indexes for table `permissions_groups`
--
ALTER TABLE `permissions_groups`
  ADD PRIMARY KEY (`permissions_group_id`);

--
-- Indexes for table `points_payments`
--
ALTER TABLE `points_payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `wall_id` (`wall_id`),
  ADD KEY `colored_pattern` (`colored_pattern`),
  ADD KEY `origin_id` (`origin_id`),
  ADD KEY `boosted_by` (`boosted_by`),
  ADD KEY `user_id` (`user_id`,`user_type`),
  ADD KEY `boosted` (`boosted`) USING BTREE,
  ADD KEY `time` (`time`) USING BTREE;

--
-- Indexes for table `posts_articles`
--
ALTER TABLE `posts_articles`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `title_idx` (`title`) USING BTREE;
ALTER TABLE `posts_articles` ADD FULLTEXT KEY `ft_title` (`title`);
ALTER TABLE `posts_articles` ADD FULLTEXT KEY `ft_tags` (`tags`);

--
-- Indexes for table `posts_articles_references`
--
ALTER TABLE `posts_articles_references`
  ADD PRIMARY KEY (`refrence_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `title_idx` (`title`) USING BTREE;
ALTER TABLE `posts_articles_references` ADD FULLTEXT KEY `ft_title` (`title`);

--
-- Indexes for table `posts_audios`
--
ALTER TABLE `posts_audios`
  ADD PRIMARY KEY (`audio_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts_cache`
--
ALTER TABLE `posts_cache`
  ADD PRIMARY KEY (`cache_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`) USING BTREE;

--
-- Indexes for table `posts_collaborative_users`
--
ALTER TABLE `posts_collaborative_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id_user_id` (`post_id`,`user_id`) USING BTREE,
  ADD KEY `user_post` (`user_id`,`post_id`);

--
-- Indexes for table `posts_colored_patterns`
--
ALTER TABLE `posts_colored_patterns`
  ADD PRIMARY KEY (`pattern_id`);

--
-- Indexes for table `posts_comments`
--
ALTER TABLE `posts_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `node_id` (`node_id`,`node_type`),
  ADD KEY `user_id` (`user_id`,`user_type`);

--
-- Indexes for table `posts_comments_reactions`
--
ALTER TABLE `posts_comments_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comment_id_user_id` (`comment_id`,`user_id`);

--
-- Indexes for table `posts_courses`
--
ALTER TABLE `posts_courses`
  ADD PRIMARY KEY (`course_id`) USING BTREE,
  ADD KEY `post_id` (`post_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `posts_courses_applications`
--
ALTER TABLE `posts_courses_applications`
  ADD PRIMARY KEY (`application_id`) USING BTREE,
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `posts_files`
--
ALTER TABLE `posts_files`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts_funding`
--
ALTER TABLE `posts_funding`
  ADD PRIMARY KEY (`funding_id`) USING BTREE,
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts_funding_donors`
--
ALTER TABLE `posts_funding_donors`
  ADD PRIMARY KEY (`donation_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts_hidden`
--
ALTER TABLE `posts_hidden`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id_user_id` (`post_id`,`user_id`);

--
-- Indexes for table `posts_jobs`
--
ALTER TABLE `posts_jobs`
  ADD PRIMARY KEY (`job_id`) USING BTREE,
  ADD KEY `post_id` (`post_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `posts_jobs_applications`
--
ALTER TABLE `posts_jobs_applications`
  ADD PRIMARY KEY (`application_id`) USING BTREE,
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `posts_links`
--
ALTER TABLE `posts_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts_live`
--
ALTER TABLE `posts_live`
  ADD PRIMARY KEY (`live_id`) USING BTREE,
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts_live_users`
--
ALTER TABLE `posts_live_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `user_id_post_id` (`user_id`,`post_id`);

--
-- Indexes for table `posts_media`
--
ALTER TABLE `posts_media`
  ADD PRIMARY KEY (`media_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts_merits`
--
ALTER TABLE `posts_merits`
  ADD PRIMARY KEY (`merit_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `posts_offers`
--
ALTER TABLE `posts_offers`
  ADD PRIMARY KEY (`offer_id`) USING BTREE,
  ADD KEY `post_id` (`post_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `posts_paid`
--
ALTER TABLE `posts_paid`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id_user_id` (`post_id`,`user_id`);

--
-- Indexes for table `posts_photos`
--
ALTER TABLE `posts_photos`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `album_id` (`album_id`);

--
-- Indexes for table `posts_photos_albums`
--
ALTER TABLE `posts_photos_albums`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `user_id` (`user_id`,`user_type`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `posts_photos_reactions`
--
ALTER TABLE `posts_photos_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_photo_id` (`user_id`,`photo_id`);

--
-- Indexes for table `posts_polls`
--
ALTER TABLE `posts_polls`
  ADD PRIMARY KEY (`poll_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts_polls_options`
--
ALTER TABLE `posts_polls_options`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `poll_id` (`poll_id`);

--
-- Indexes for table `posts_polls_options_users`
--
ALTER TABLE `posts_polls_options_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_poll_id` (`user_id`,`poll_id`);

--
-- Indexes for table `posts_products`
--
ALTER TABLE `posts_products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `posts_reactions`
--
ALTER TABLE `posts_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id_user_id` (`post_id`,`user_id`);

--
-- Indexes for table `posts_reels`
--
ALTER TABLE `posts_reels`
  ADD PRIMARY KEY (`reel_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts_saved`
--
ALTER TABLE `posts_saved`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id_user_id` (`post_id`,`user_id`);

--
-- Indexes for table `posts_videos`
--
ALTER TABLE `posts_videos`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `category_id` (`category_id`) USING BTREE;

--
-- Indexes for table `posts_videos_categories`
--
ALTER TABLE `posts_videos_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_parent_id` (`category_parent_id`);

--
-- Indexes for table `posts_views`
--
ALTER TABLE `posts_views`
  ADD PRIMARY KEY (`view_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`) USING BTREE,
  ADD KEY `guest_ip` (`guest_ip`) USING BTREE;

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `reports_categories`
--
ALTER TABLE `reports_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_parent_id` (`category_parent_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `page_id` (`node_id`) USING BTREE;

--
-- Indexes for table `reviews_photos`
--
ALTER TABLE `reviews_photos`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `review_id` (`review_id`) USING BTREE;

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `product_post_id` (`product_post_id`) USING BTREE;

--
-- Indexes for table `sneak_peaks`
--
ALTER TABLE `sneak_peaks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_node_id_node_type` (`user_id`,`node_id`,`node_type`) USING BTREE;

--
-- Indexes for table `static_pages`
--
ALTER TABLE `static_pages`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `page_url` (`page_url`);

--
-- Indexes for table `stickers`
--
ALTER TABLE `stickers`
  ADD PRIMARY KEY (`sticker_id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`story_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `stories_media`
--
ALTER TABLE `stories_media`
  ADD PRIMARY KEY (`media_id`),
  ADD KEY `story_id` (`story_id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_node_id_node_type` (`user_id`,`node_id`,`node_type`) USING BTREE;

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `agent_id` (`agent_id`) USING BTREE;

--
-- Indexes for table `support_tickets_replies`
--
ALTER TABLE `support_tickets_replies`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ticket_id` (`ticket_id`) USING BTREE;

--
-- Indexes for table `system_countries`
--
ALTER TABLE `system_countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `system_currencies`
--
ALTER TABLE `system_currencies`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `system_genders`
--
ALTER TABLE `system_genders`
  ADD PRIMARY KEY (`gender_id`) USING BTREE,
  ADD UNIQUE KEY `name` (`gender_name`) USING BTREE;

--
-- Indexes for table `system_languages`
--
ALTER TABLE `system_languages`
  ADD PRIMARY KEY (`language_id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `system_options`
--
ALTER TABLE `system_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `system_reactions`
--
ALTER TABLE `system_reactions`
  ADD PRIMARY KEY (`reaction_id`);

--
-- Indexes for table `system_themes`
--
ALTER TABLE `system_themes`
  ADD PRIMARY KEY (`theme_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`),
  ADD UNIQUE KEY `username` (`user_name`) USING BTREE,
  ADD UNIQUE KEY `facebook_id` (`facebook_id`),
  ADD UNIQUE KEY `twitter_id` (`twitter_id`),
  ADD UNIQUE KEY `linkedin_id` (`linkedin_id`),
  ADD UNIQUE KEY `vkontakte_id` (`vkontakte_id`),
  ADD UNIQUE KEY `instagram_id` (`instagram_id`),
  ADD UNIQUE KEY `user_phone` (`user_phone`),
  ADD UNIQUE KEY `google_id` (`google_id`),
  ADD KEY `user_picture_id` (`user_picture_id`),
  ADD KEY `user_gender` (`user_gender`),
  ADD KEY `user_cover_id` (`user_cover_id`),
  ADD KEY `user_country` (`user_country`),
  ADD KEY `user_album_pictures` (`user_album_pictures`),
  ADD KEY `user_album_covers` (`user_album_covers`),
  ADD KEY `user_album_timeline` (`user_album_timeline`),
  ADD KEY `user_banned` (`user_banned`) USING BTREE,
  ADD KEY `user_subscribed` (`user_subscribed`) USING BTREE,
  ADD KEY `user_registered` (`user_registered`) USING BTREE,
  ADD KEY `user_id_idx` (`user_id`) USING BTREE,
  ADD KEY `user_lastname_idx` (`user_lastname`) USING BTREE,
  ADD KEY `user_name_idx` (`user_name`) USING BTREE,
  ADD KEY `user_firstname_idx` (`user_firstname`) USING BTREE;

--
-- Indexes for table `users_accounts`
--
ALTER TABLE `users_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_account_id` (`user_id`,`account_id`) USING BTREE;

--
-- Indexes for table `users_addresses`
--
ALTER TABLE `users_addresses`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `users_affiliates`
--
ALTER TABLE `users_affiliates`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `referrer_id_referee_id` (`referrer_id`,`referee_id`) USING BTREE;

--
-- Indexes for table `users_blocks`
--
ALTER TABLE `users_blocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_blocked_id` (`user_id`,`blocked_id`);

--
-- Indexes for table `users_gifts`
--
ALTER TABLE `users_gifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from_user_id` (`from_user_id`),
  ADD KEY `to_user_id` (`to_user_id`),
  ADD KEY `gift_id` (`gift_id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_group_id`),
  ADD KEY `permissions_group_id` (`permissions_group_id`) USING BTREE;

--
-- Indexes for table `users_invitations`
--
ALTER TABLE `users_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_email_phone` (`user_id`,`email_phone`) USING BTREE;

--
-- Indexes for table `users_merits`
--
ALTER TABLE `users_merits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_packages_points`
--
ALTER TABLE `users_packages_points`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_poked_id` (`user_id`,`package_id`) USING BTREE;

--
-- Indexes for table `users_pokes`
--
ALTER TABLE `users_pokes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_poked_id` (`user_id`,`poked_id`) USING BTREE;

--
-- Indexes for table `users_recurring_payments`
--
ALTER TABLE `users_recurring_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `users_searches`
--
ALTER TABLE `users_searches`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `user_id_node_id_node_type` (`user_id`,`node_id`,`node_type`) USING BTREE,
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users_sessions`
--
ALTER TABLE `users_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_token` (`session_token`),
  ADD KEY `user_ip` (`user_ip`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users_sms`
--
ALTER TABLE `users_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_top_friends`
--
ALTER TABLE `users_top_friends`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_friend_id` (`user_id`,`friend_id`) USING BTREE;

--
-- Indexes for table `users_uploads`
--
ALTER TABLE `users_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_uploads_pending`
--
ALTER TABLE `users_uploads_pending`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_file_name` (`file_name`) USING BTREE;

--
-- Indexes for table `verification_requests`
--
ALTER TABLE `verification_requests`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `wallet_payments`
--
ALTER TABLE `wallet_payments`
  ADD PRIMARY KEY (`payment_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`widget_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads_campaigns`
--
ALTER TABLE `ads_campaigns`
  MODIFY `campaign_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads_system`
--
ALTER TABLE `ads_system`
  MODIFY `ads_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `affiliates_payments`
--
ALTER TABLE `affiliates_payments`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcement_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcements_users`
--
ALTER TABLE `announcements_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auto_connect`
--
ALTER TABLE `auto_connect`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_transfers`
--
ALTER TABLE `bank_transfers`
  MODIFY `transfer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blacklist`
--
ALTER TABLE `blacklist`
  MODIFY `node_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs_categories`
--
ALTER TABLE `blogs_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `coinpayments_transactions`
--
ALTER TABLE `coinpayments_transactions`
  MODIFY `transaction_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `conversation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `conversations_calls`
--
ALTER TABLE `conversations_calls`
  MODIFY `call_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations_messages`
--
ALTER TABLE `conversations_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `conversations_messages_reactions`
--
ALTER TABLE `conversations_messages_reactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations_users`
--
ALTER TABLE `conversations_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `courses_categories`
--
ALTER TABLE `courses_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `field_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields_values`
--
ALTER TABLE `custom_fields_values`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `developers_apps`
--
ALTER TABLE `developers_apps`
  MODIFY `app_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `developers_apps_categories`
--
ALTER TABLE `developers_apps_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `developers_apps_users`
--
ALTER TABLE `developers_apps_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emojis`
--
ALTER TABLE `emojis`
  MODIFY `emoji_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1803;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events_categories`
--
ALTER TABLE `events_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `events_members`
--
ALTER TABLE `events_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followings`
--
ALTER TABLE `followings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `forum_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forums_replies`
--
ALTER TABLE `forums_replies`
  MODIFY `reply_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forums_threads`
--
ALTER TABLE `forums_threads`
  MODIFY `thread_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `funding_payments`
--
ALTER TABLE `funding_payments`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `game_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games_genres`
--
ALTER TABLE `games_genres`
  MODIFY `genre_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `games_players`
--
ALTER TABLE `games_players`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gifts`
--
ALTER TABLE `gifts`
  MODIFY `gift_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups_admins`
--
ALTER TABLE `groups_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups_categories`
--
ALTER TABLE `groups_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `groups_invites`
--
ALTER TABLE `groups_invites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups_members`
--
ALTER TABLE `groups_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `hashtag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hashtags_posts`
--
ALTER TABLE `hashtags_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invitation_codes`
--
ALTER TABLE `invitation_codes`
  MODIFY `code_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs_categories`
--
ALTER TABLE `jobs_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `log_commissions`
--
ALTER TABLE `log_commissions`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_payments`
--
ALTER TABLE `log_payments`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_points`
--
ALTER TABLE `log_points`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_sessions`
--
ALTER TABLE `log_sessions`
  MODIFY `session_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT for table `log_subscriptions`
--
ALTER TABLE `log_subscriptions`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `market_categories`
--
ALTER TABLE `market_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `market_payments`
--
ALTER TABLE `market_payments`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merits_categories`
--
ALTER TABLE `merits_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `monetization_coupons`
--
ALTER TABLE `monetization_coupons`
  MODIFY `coupon_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `monetization_coupons_users`
--
ALTER TABLE `monetization_coupons_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `monetization_payments`
--
ALTER TABLE `monetization_payments`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `monetization_plans`
--
ALTER TABLE `monetization_plans`
  MODIFY `plan_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movies_genres`
--
ALTER TABLE `movies_genres`
  MODIFY `genre_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `movies_payments`
--
ALTER TABLE `movies_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT for table `offers_categories`
--
ALTER TABLE `offers_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `package_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages_payments`
--
ALTER TABLE `packages_payments`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages_admins`
--
ALTER TABLE `pages_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages_categories`
--
ALTER TABLE `pages_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pages_invites`
--
ALTER TABLE `pages_invites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages_likes`
--
ALTER TABLE `pages_likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `permissions_groups`
--
ALTER TABLE `permissions_groups`
  MODIFY `permissions_group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `points_payments`
--
ALTER TABLE `points_payments`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `posts_articles`
--
ALTER TABLE `posts_articles`
  MODIFY `article_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_articles_references`
--
ALTER TABLE `posts_articles_references`
  MODIFY `refrence_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_audios`
--
ALTER TABLE `posts_audios`
  MODIFY `audio_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_cache`
--
ALTER TABLE `posts_cache`
  MODIFY `cache_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2192;

--
-- AUTO_INCREMENT for table `posts_collaborative_users`
--
ALTER TABLE `posts_collaborative_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_colored_patterns`
--
ALTER TABLE `posts_colored_patterns`
  MODIFY `pattern_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts_comments`
--
ALTER TABLE `posts_comments`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `posts_comments_reactions`
--
ALTER TABLE `posts_comments_reactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts_courses`
--
ALTER TABLE `posts_courses`
  MODIFY `course_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_courses_applications`
--
ALTER TABLE `posts_courses_applications`
  MODIFY `application_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_files`
--
ALTER TABLE `posts_files`
  MODIFY `file_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_funding`
--
ALTER TABLE `posts_funding`
  MODIFY `funding_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_funding_donors`
--
ALTER TABLE `posts_funding_donors`
  MODIFY `donation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_hidden`
--
ALTER TABLE `posts_hidden`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_jobs`
--
ALTER TABLE `posts_jobs`
  MODIFY `job_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_jobs_applications`
--
ALTER TABLE `posts_jobs_applications`
  MODIFY `application_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_links`
--
ALTER TABLE `posts_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_live`
--
ALTER TABLE `posts_live`
  MODIFY `live_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_live_users`
--
ALTER TABLE `posts_live_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_media`
--
ALTER TABLE `posts_media`
  MODIFY `media_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_merits`
--
ALTER TABLE `posts_merits`
  MODIFY `merit_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_offers`
--
ALTER TABLE `posts_offers`
  MODIFY `offer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_paid`
--
ALTER TABLE `posts_paid`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_photos`
--
ALTER TABLE `posts_photos`
  MODIFY `photo_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `posts_photos_albums`
--
ALTER TABLE `posts_photos_albums`
  MODIFY `album_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `posts_photos_reactions`
--
ALTER TABLE `posts_photos_reactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_polls`
--
ALTER TABLE `posts_polls`
  MODIFY `poll_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_polls_options`
--
ALTER TABLE `posts_polls_options`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_polls_options_users`
--
ALTER TABLE `posts_polls_options_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_products`
--
ALTER TABLE `posts_products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts_reactions`
--
ALTER TABLE `posts_reactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `posts_reels`
--
ALTER TABLE `posts_reels`
  MODIFY `reel_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts_saved`
--
ALTER TABLE `posts_saved`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_videos`
--
ALTER TABLE `posts_videos`
  MODIFY `video_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts_videos_categories`
--
ALTER TABLE `posts_videos_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `posts_views`
--
ALTER TABLE `posts_views`
  MODIFY `view_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports_categories`
--
ALTER TABLE `reports_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews_photos`
--
ALTER TABLE `reviews_photos`
  MODIFY `photo_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sneak_peaks`
--
ALTER TABLE `sneak_peaks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `static_pages`
--
ALTER TABLE `static_pages`
  MODIFY `page_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stickers`
--
ALTER TABLE `stickers`
  MODIFY `sticker_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `story_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stories_media`
--
ALTER TABLE `stories_media`
  MODIFY `media_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `ticket_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets_replies`
--
ALTER TABLE `support_tickets_replies`
  MODIFY `reply_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_countries`
--
ALTER TABLE `system_countries`
  MODIFY `country_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `system_currencies`
--
ALTER TABLE `system_currencies`
  MODIFY `currency_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `system_genders`
--
ALTER TABLE `system_genders`
  MODIFY `gender_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_languages`
--
ALTER TABLE `system_languages`
  MODIFY `language_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `system_options`
--
ALTER TABLE `system_options`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17995;

--
-- AUTO_INCREMENT for table `system_reactions`
--
ALTER TABLE `system_reactions`
  MODIFY `reaction_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `system_themes`
--
ALTER TABLE `system_themes`
  MODIFY `theme_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users_accounts`
--
ALTER TABLE `users_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_addresses`
--
ALTER TABLE `users_addresses`
  MODIFY `address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_affiliates`
--
ALTER TABLE `users_affiliates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_blocks`
--
ALTER TABLE `users_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_gifts`
--
ALTER TABLE `users_gifts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `user_group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_invitations`
--
ALTER TABLE `users_invitations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_merits`
--
ALTER TABLE `users_merits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_packages_points`
--
ALTER TABLE `users_packages_points`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_pokes`
--
ALTER TABLE `users_pokes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_recurring_payments`
--
ALTER TABLE `users_recurring_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_searches`
--
ALTER TABLE `users_searches`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_sessions`
--
ALTER TABLE `users_sessions`
  MODIFY `session_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `users_sms`
--
ALTER TABLE `users_sms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_top_friends`
--
ALTER TABLE `users_top_friends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_uploads`
--
ALTER TABLE `users_uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `users_uploads_pending`
--
ALTER TABLE `users_uploads_pending`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `verification_requests`
--
ALTER TABLE `verification_requests`
  MODIFY `request_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_payments`
--
ALTER TABLE `wallet_payments`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `transaction_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `widget_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
