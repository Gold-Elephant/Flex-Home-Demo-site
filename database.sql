-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 17, 2021 at 05:25 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flex_home`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'JVEVccHIalHLwIL41uMnOJDfC0p59ohS', 1, '2019-11-15 04:53:30', '2019-11-15 04:53:30', '2019-11-15 04:53:30'),
(2, 2, 'bUiPYBbscR6j5dhSlWSesCy0LEXp7LDG', 1, '2021-01-03 17:23:28', '2021-01-03 17:23:28', '2021-01-03 17:23:28'),
(3, 1, 'dtG3n9fA2nz5TPWNuYP1nCFwtfgtVY3Q', 1, '2021-01-12 20:51:55', '2021-01-12 20:51:55', '2021-01-12 20:51:55'),
(4, 1, 'j34UyDusAYW6Qv7W8R9Phy1eS7J6x7VH', 1, '2021-01-12 20:57:53', '2021-01-12 20:57:53', '2021-01-12 20:57:53'),
(5, 1, 'zybfCxjzArgxYwys3SFXJFr5GtrR4fVh', 1, '2021-04-15 01:12:40', '2021-04-15 01:12:40', '2021-04-15 01:12:40'),
(6, 1, 'CdxxFEhkLAEjMbXfwV0sGfYouD04RXxR', 1, '2021-04-18 09:20:14', '2021-04-18 09:20:14', '2021-04-18 09:20:14'),
(7, 1, '5QGfTcVcYiXHzILQHh84iziigUT1Asfo', 1, '2021-04-29 20:46:36', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(8, 1, 'b6OPzC5TBqVWQUjUE6MwNt1xW50BQCiq', 1, '2021-06-11 20:56:49', '2021-06-11 20:56:49', '2021-06-11 20:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `name`, `location`, `salary`, `content`, `status`, `created_at`, `updated_at`, `description`) VALUES
(1, 'Sales Manager (Up to 2600$)', 'Ho Chi Minh, Viet Nam', '1300$ - 2600$', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>BENEFITS FOR YOU</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Applicants receive a salary from 1300 USD to 2600 USD<br />\r\n- Fully enjoy the regimes according to Vietnam&#39;s Labor Law: Social insurance, health insurance, unemployment insurance<br />\r\n- Trained to improve expertise and capacity in suitable positions.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB DESCRIPTION</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Coordinate with the Investment Department in organizing the collection, analysis, evaluation of market information and submitting proposals for planning the project&#39;s products and investment cooperation plans (if any);<br />\r\n- Acting as a focal point of exploitation and trading with customers, managing trading floors and distributors;<br />\r\n- Checking and approving the selection of sales units, management units for exploitation, operation and investment cooperation;<br />\r\n- Leading the negotiation and management of contracts with customers, sales units, management of exploitation, operation and investment cooperation;<br />\r\n- Prepare and submit a price approval for the sale, lease, and cooperation prices of all real estate projects;<br />\r\n- Develop sales plans, sales policies, support and promotions;<br />\r\n- Coordinate with member companies (Project Management Board) to collect and hand over product records (technical documents, red books, sales contracts ...) to hand over customers;<br />\r\n- Deploy customer support activities;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB REQUIREMENTS</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Preferred age: 30-35<br />\r\n- University degree in Business Administration, Economics, or related industries.<br />\r\n- Over 03 years of experience in assuming the position of Real Estate Business City<br />\r\n- Priority with a certificate of real estate broker, certificate of real estate trading floor management<br />\r\n- Good planning, operating, and control skills<br />\r\n- Good communication, negotiation and problem-solving skills</span></span></p>', 'published', '2019-11-30 19:43:10', '2019-11-30 19:46:53', NULL),
(2, 'Tr?????ng Ph??ng Kinh Doanh ( L????ng l??n t???i 60tr)', 'Ho Chi Minh, Viet Nam', '30,000,000 VND-60,000,000 VND', '<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">C&Aacute;C PH&Uacute;C L???I D&Agrave;NH CHO B???N</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- ???ng vi&ecirc;n ???????c h?????ng m???c l????ng t??? 30.000.000 VND ?????n 60.000.000 VND</span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- ???????c h?????ng ?????y ????? c&aacute;c ch??? ????? theo Lu???t lao ?????ng Vi???t Nam: BHXH, BHYT, BHTN</span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- ???????c ??&agrave;o t???o n&acirc;ng cao chuy&ecirc;n m&ocirc;n, n??ng l???c t???i c&aacute;c v??? tr&iacute; ph&ugrave; h???p</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">M&Ocirc; T??? C&Ocirc;NG VI???C</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Ph???i h???p v???i ph&ograve;ng ?????u t?? t??? ch???c thu th???p, ph&acirc;n t&iacute;ch, ??&aacute;nh gi&aacute; th&ocirc;ng tin th??? tr?????ng v&agrave; tr&igrave;nh ????? xu???t ho???ch ?????nh c&aacute;c s???n ph???m c???a d??? &aacute;n, c&aacute;c ph????ng &aacute;n h???p t&aacute;c ?????u t?? (n???u c&oacute;);<br />\r\n- ?????u m???i khai th&aacute;c v&agrave; giao d???ch v???i kh&aacute;ch h&agrave;ng, qu???n l&yacute; c&aacute;c s&agrave;n giao d???ch, c&aacute;c nh&agrave; ph&acirc;n ph???i b&aacute;n h&agrave;ng;<br />\r\n- Ki???m tra, tr&igrave;nh duy???t l???a ch???n c&aacute;c ????n v??? b&aacute;n h&agrave;ng, ????n v??? qu???n l&yacute; khai th&aacute;c, v???n h&agrave;nh v&agrave; h???p t&aacute;c ?????u t??;<br />\r\n- Ch??? tr&igrave; ??&agrave;m ph&aacute;n v&agrave; qu???n l&yacute; c&aacute;c h???p ?????ng v???i kh&aacute;ch h&agrave;ng, c&aacute;c ????n v??? b&aacute;n h&agrave;ng, qu???n l&yacute; khai th&aacute;c, v???n h&agrave;nh v&agrave; h???p t&aacute;c ?????u t??;<br />\r\n- L???p, tr&igrave;nh duy???t gi&aacute; b&aacute;n, gi&aacute; thu&ecirc;, gi&aacute; h???p t&aacute;c c&aacute;c s???n ph???m c???a to&agrave;n b??? c&aacute;c d??? &aacute;n b???t ?????ng s???n;<br />\r\n- X&acirc;y d???ng k??? ho???ch b&aacute;n h&agrave;ng, ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng, h??? tr??? v&agrave; khuy???n m???i;<br />\r\n- Ph???i h???p v???i c&ocirc;ng ty th&agrave;nh vi&ecirc;n (Ban qu???n l&yacute; d??? &aacute;n) t???p h???p v&agrave; b&agrave;n giao h??? s?? s???n ph???m (h??? s?? k??? thu???t, s??? ?????, h???p ?????ng mua b&aacute;n&hellip;) b&agrave;n giao kh&aacute;ch h&agrave;ng;<br />\r\n- Tri???n khai c&aacute;c ho???t ?????ng h??? tr??? kh&aacute;ch h&agrave;ng;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">Y&Ecirc;U C???U C&Ocirc;NG VI???C</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- ????? tu???i ??u ti&ecirc;n: 30-35<br />\r\n- T???t nghi???p ?????i h???c c&aacute;c ng&agrave;nh Qu???n tr??? kinh doanh, Kinh t???, ho???c c&aacute;c ng&agrave;nh ngh??? c&oacute; li&ecirc;n quan.<br />\r\n- Tr&ecirc;n 03 n??m kinh nghi???m ?????m nh???n v??? tr&iacute; TP kinh doanh B???t ?????ng S???n<br />\r\n- ??u ti&ecirc;n c&oacute; ch???ng ch??? m&ocirc;i gi???i B??S, ch???ng ch??? qu???n l&yacute; s&agrave;n GD B??S<br />\r\n- K??? n??ng l???p k??? ho???ch, ??i???u h&agrave;nh, v&agrave; ki???m so&aacute;t c&ocirc;ng vi???c t???t<br />\r\n- K??? n??ng giao ti???p, ??&agrave;m ph&aacute;n, gi???i quy???t v???n ????? t???t</span></span></p>', 'published', '2019-11-30 19:49:07', '2019-11-30 19:49:29', NULL),
(3, 'Senior Real Estate Consultant Demo', 'Ho Chi Minh, Viet Nam', 'From 1500$', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>BENEFITS FOR YOU</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Basic salary 500$&nbsp;/ month.<br />\r\n- Access to diverse sources of goods and opportunities from reputable investors.<br />\r\n- Retrospective salary policy up to 2400$-7000$&nbsp;/ year.<br />\r\n- Commission of 22-50% and a commission 1000$ / successful transaction in the month.<br />\r\n- Effective bonus 0.6-3% of annual revenue.<br />\r\n- A place to build your personal brand in a standard and different way.<br />\r\n- Attend seminars on real estate every 6 months.<br />\r\n- Participate in the course on negotiation skills (Win - Win), language of sales (Language of Sales), customer mind marketing (SOI), customer conversion from social networks (Go Social)<br />\r\n- Unlimited promotion opportunities.<br />\r\n- Working with professional space and modern open office design.<br />\r\n- Welfare policy, domestic and foreign tourism ...<br />\r\n- Decentralized, democratic, financial transparency, considering brokerage is a business partner.<br />\r\n- Environmentally friendly, is the place where brokers are connected with regular activities</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB DESCRIPTION</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Quantity: 30 employees<br />\r\n- Find and exploit potential customers for real estate products valued from 2000 USD / m2 in the high-end and luxury segment;<br />\r\n- Deploying activities to find customers, coordinate with teams to realize sales targets<br />\r\n- Advise customers on information related to products and projects of the Company;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB REQUIREMENTS</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Graduating from college or higher<br />\r\n- Good appearance, male height from 1.68m, female from 1.58m. Age from 22-35 years old<br />\r\n- Priority to candidates who know foreign languages ??????and have 1 year or more experience in the field of real estate, banking and finance.<br />\r\n- Have financial goals, work and life.<br />\r\n- Desire to achieve big goals.<br />\r\n- Diligent, persistent, honest.</span></span></p>', 'published', '2019-11-30 19:52:42', '2021-01-03 17:26:17', NULL),
(4, 'Chuy??n Vi??n T?? V???n B???t ?????ng S???n Cao C???p', 'Ho Chi Minh, Viet Nam', 'T??? 30,000,000 VND', '<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">C&Aacute;C PH&Uacute;C L???I D&Agrave;NH CHO B???N</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- L????ng c?? b???n 10 tri???u/th&aacute;ng.<br />\r\n- Ti???p c???n ngu???n h&agrave;ng ??a d???ng v&agrave; c?? h???i t??? c&aacute;c ch??? ?????u t?? uy t&iacute;n.<br />\r\n- Ch&iacute;nh s&aacute;ch h???i t??? l????ng l&ecirc;n ?????n 48-144 tri???u/n??m.<br />\r\n- Hoa h???ng 22-50% v&agrave; ???????c t???m ???ng hoa h???ng 20 tri???u/ giao d???ch th&agrave;nh c&ocirc;ng trong th&aacute;ng.<br />\r\n- Th?????ng hi???u qu??? 0.6-3% doanh thu n??m.<br />\r\n- N??i x&acirc;y d???ng th????ng hi???u c&aacute; nh&acirc;n m???t c&aacute;ch chu???n m???c v&agrave; kh&aacute;c bi???t.<br />\r\n- ???????c tham d??? c&aacute;c chuy&ecirc;n ????? v??? b???t ?????ng s???n 6 th&aacute;ng 1 l???n.<br />\r\n- ???????c tham d??? kh&oacute;a h???c v??? k??? n??ng ??&agrave;m ph&aacute;n (Win - Win), ng&ocirc;n ng??? b&aacute;n h&agrave;ng (Language of Sales), marketing chi???m t&acirc;m tr&iacute; kh&aacute;ch h&agrave;ng (SOI), chuy???n ?????i kh&aacute;ch h&agrave;ng t??? m???ng x&atilde; h???i (Go Social)<br />\r\n- C?? h???i th??ng ti???n kh&ocirc;ng gi???i h???n.<br />\r\n- ???????c l&agrave;m vi???c v???i kh&ocirc;ng gian chuy&ecirc;n nghi???p v&agrave; thi???t k??? v??n ph&ograve;ng m??? hi???n ?????i.<br />\r\n- Ch&iacute;nh s&aacute;ch ph&uacute;c l???i, du l???ch trong v&agrave; ngo&agrave;i n?????c...<br />\r\n- Ph&acirc;n quy???n, d&acirc;n ch???, minh b???ch t&agrave;i ch&iacute;nh, xem m&ocirc;i gi???i l&agrave; ?????i t&aacute;c kinh doanh.<br />\r\n- M&ocirc;i tr?????ng th&acirc;n thi???n, l&agrave; n??i k???t n???i m&ocirc;i gi???i v???i c&aacute;c ho???t ?????ng ???????c t??? ch???c th?????ng xuy&ecirc;n</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">M&Ocirc; T??? C&Ocirc;NG VI???C</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- S??? l?????ng: 30 nh&acirc;n vi&ecirc;n<br />\r\n- T&igrave;m ki???m v&agrave; khai th&aacute;c ngu???n kh&aacute;ch h&agrave;ng ti???m n??ng cho c&aacute;c s???n ph???m b???t ?????ng s???n c&oacute; gi&aacute; tr??? t??? 2000 USD/m2 thu???c ph&acirc;n kh&uacute;c cao c???p, h???ng sang ;<br />\r\n- Tri???n khai c&aacute;c ho???t ?????ng t&igrave;m ki???m kh&aacute;ch h&agrave;ng, ph???i h???p v???i ?????i nh&oacute;m ????? th???c hi???n ch??? ti&ecirc;u doanh s???<br />\r\n- T?? v???n cho kh&aacute;ch h&agrave;ng c&aacute;c th&ocirc;ng tin li&ecirc;n quan ?????n s???n ph???m, d??? &aacute;n c???a C&ocirc;ng ty;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">Y&Ecirc;U C???U C&Ocirc;NG VI???C</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- T???t nghi???p Cao ?????ng tr??? l&ecirc;n<br />\r\n- Ngo???i h&igrave;nh ??u nh&igrave;n, nam cao t??? 1,68m, n??? t??? 1,58m. ????? tu???i t??? 22- 35 tu???i<br />\r\n- ??u ti&ecirc;n ???ng vi&ecirc;n bi???t ngo???i ng??? v&agrave; c&oacute; kinh nghi???m 1 n??m tr??? l&ecirc;n trong l??nh v???c B??S, ng&acirc;n h&agrave;ng, t&agrave;i ch&iacute;nh.<br />\r\n- C&oacute; m???c ti&ecirc;u v??? t&agrave;i ch&iacute;nh, c&ocirc;ng vi???c v&agrave; cu???c s???ng.<br />\r\n- Kh&aacute;t khao ?????t ???????c c&aacute;c m???c ti&ecirc;u l???n.<br />\r\n- Si&ecirc;ng n??ng, ki&ecirc;n tr&igrave;, trung th???c.</span></span></p>', 'published', '2019-11-30 19:56:50', '2019-11-30 19:56:50', NULL),
(5, 'Ads cun', 'aaa', 'bbb', '<p>ddd</p>', 'published', '2021-01-03 17:26:32', '2021-01-03 17:26:42', 'ccc');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'News', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2019-11-18 02:33:35', '2019-11-18 02:33:35'),
(2, 'House architecture', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:49:25', '2019-11-21 07:49:25'),
(3, 'Ki???n tr??c nh??', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:49:35', '2019-11-21 07:49:35'),
(4, 'House design', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:02', '2019-11-21 07:50:02'),
(5, 'Thi???t k??? nh??', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:17', '2019-11-21 07:50:17'),
(6, 'Building materials', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:36', '2019-11-21 07:50:36'),
(7, 'V???t li???u x??y d???ng', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:58', '2019-11-21 07:50:58'),
(8, 'Tin t???c', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2019-11-22 01:26:08', '2019-11-22 01:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `country_id`, `order`, `is_default`, `is_featured`, `image`, `status`, `created_at`, `updated_at`, `slug`, `record_id`) VALUES
(1, 'Alhambra', 1, 1, 0, 0, 1, 'cities/los-angeles-winter-2016.jpg', 'published', '2019-11-18 08:18:42', '2019-12-03 05:55:52', 'alhambra', NULL),
(2, 'Oakland', 1, 1, 0, 0, 1, 'cities/oaklandnightskylineandlakemerritt.jpg', 'published', '2019-11-18 08:23:14', '2019-12-03 05:55:52', 'oakland', NULL),
(3, 'Bakersfield', 1, 1, 0, 0, 1, 'cities/2009-0726-ca-bakersfield-truxtontower.jpg', 'published', '2019-11-18 08:26:54', '2019-12-03 05:55:52', 'bakersfield', NULL),
(4, 'Anaheim', 1, 1, 0, 0, 1, 'cities/castillo-de-disneyland.jpg', 'published', '2019-11-18 08:27:57', '2019-12-03 05:55:52', 'anaheim', NULL),
(5, 'San Francisco', 1, 1, 0, 0, 1, 'cities/goldengatebridge-001.jpg', 'published', '2019-11-18 08:29:18', '2019-12-03 05:55:52', 'san-francisco', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `nationality`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES
(1, 'United States', 'United States of America', 0, 0, 'published', '2019-11-18 08:17:29', '2019-11-18 08:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_pages', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(2, 'widget_total_users', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(3, 'widget_total_plugins', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(4, 'widget_total_themes', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(5, 'widget_audit_logs', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(6, 'widget_posts_recent', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(7, 'widget_analytics_general', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(8, 'widget_analytics_page', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(9, 'widget_analytics_browser', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(10, 'widget_analytics_referrer', '2019-11-15 18:54:50', '2019-11-15 18:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 7, 0, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(2, NULL, 1, 5, 1, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(3, NULL, 1, 6, 2, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(4, NULL, 1, 8, 3, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(5, NULL, 1, 9, 4, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58'),
(6, NULL, 1, 10, 5, 1, '2019-11-26 02:40:58', '2019-11-26 02:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `lang_order` int(11) NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0),
(2, 'Ti???ng Vi???t', 'vi', 'vi', 'vn', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `reference_id`, `lang_meta_code`, `reference_type`, `lang_meta_origin`) VALUES
(3, 1, 'en_US', 'Botble\\RealEstate\\Models\\Property', '404601a719bd38c609172d77df408ba1'),
(4, 2, 'en_US', 'Botble\\RealEstate\\Models\\Property', '9fd22570b6527cea3f74256bc5beeade'),
(5, 3, 'en_US', 'Botble\\RealEstate\\Models\\Property', '657ce80dc667a53aed03ea05f3977ff0'),
(6, 4, 'en_US', 'Botble\\RealEstate\\Models\\Property', '6be7679ead5366a6369167210fd247a0'),
(7, 1, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', '13cf1f003e0c62806dd7ad26f048b91d'),
(8, 2, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'f2356c699c6653bffaff97dd9387717d'),
(12, 3, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'e8c67bae0a5f47fa54a4a76a875daf3f'),
(13, 4, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'd57fa54aad5abc3f0caec4fb0e4e0907'),
(14, 5, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', '2d253e85c0394609682b9dbe77705bdb'),
(15, 1, 'en_US', 'Botble\\RealEstate\\Models\\Project', '56e4bdd055bc0b01d9fdc5efdbee6166'),
(16, 5, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'ac45379b9b6134531a834400a7d9175c'),
(17, 6, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', '150d1429049e27e62396ed759719ada4'),
(18, 7, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'a7dd32dd31e9b85768892b17c4b6283b'),
(19, 8, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'bc3b21d633995dfaaa528eeb34b804ca'),
(20, 6, 'en_US', 'Botble\\RealEstate\\Models\\Property', '976a11dca6f828f42ef579a8b3671b56'),
(21, 7, 'en_US', 'Botble\\RealEstate\\Models\\Property', '141e080b1eff418e2977b5efdbfe799a'),
(22, 1, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'b55b725e9ba113942275849272e2969b'),
(23, 2, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '8b391f8d425ee376f0378860cbc205ae'),
(24, 3, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'c9199634afef0d21b9ed76f0438c1d92'),
(25, 4, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'ae7c96e8601ae6be06b85cb1b035498d'),
(26, 5, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '12f47dc443a0c4c9ed8dd3f48e43ef24'),
(27, 6, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '35466099783edd979365b6d42380217a'),
(28, 7, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '0f2d227a5e8b165455e69574d168d628'),
(29, 8, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '9c7f8c61383d7ea76f817fcd2224363f'),
(30, 9, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'a714f38063f2a21302b72ca0c9ebf69d'),
(31, 10, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '3752c23672cc11767202d85776490354'),
(32, 11, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '33ba5096310a9bb0d2cbed1ebab2f00e'),
(33, 12, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'b9df16fdbc60e5d1d446560fa55780ad'),
(34, 13, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'aa340b8dd1304e49d7b6e3be7bb939cb'),
(35, 14, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '0dc7c295282a2e338f97f9ac56d3e707'),
(36, 15, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '7e37f52d065e2ac7f71cec27528ff1a7'),
(37, 2, 'en_US', 'Botble\\RealEstate\\Models\\Project', 'b8c605675ac073dd9d5b3572087a2445'),
(38, 8, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'ccf2b58508febe22dae3fe588d1f7f36'),
(39, 9, 'en_US', 'Botble\\RealEstate\\Models\\Property', '18e0c764a6457fa1677a1710cc219337'),
(40, 10, 'en_US', 'Botble\\RealEstate\\Models\\Property', '2c9217b2ce21882234bfaf9222893fc9'),
(41, 11, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'dad4f25ae76974a87d59084f82dae01b'),
(42, 1, 'en_US', 'Botble\\Blog\\Models\\Category', '8804d947c9dfc67caa38c6d758c533fb'),
(43, 12, 'en_US', 'Botble\\RealEstate\\Models\\Property', '4be0c322dda4d57a9ae43c4bb5b7b608'),
(44, 1, 'en_US', 'Botble\\Blog\\Models\\Post', '3034c8b36dad04a9618bdcdc69180371'),
(45, 1, 'en_US', 'Botble\\Blog\\Models\\Tag', 'cb81f9780b7fcdcb490a2dc412bf2dc8'),
(46, 2, 'en_US', 'Botble\\Blog\\Models\\Post', '6fd6f18d826fcd7ac743126287d55207'),
(47, 2, 'en_US', 'Botble\\Blog\\Models\\Tag', 'b1f1b44f1eb59e622269e868a16d4ead'),
(48, 3, 'en_US', 'Botble\\Blog\\Models\\Post', 'ec03adaaea66669a5e1bfaed629064e7'),
(49, 4, 'en_US', 'Botble\\Blog\\Models\\Post', '918b57465f9da91a7af4d3a35aa8f696'),
(50, 3, 'en_US', 'Botble\\Blog\\Models\\Tag', '3facfab60703e4bb17ce679a63d04d6e'),
(51, 3, 'en_US', 'Botble\\RealEstate\\Models\\Project', '1631e995fd3df41119f30d9608085dae'),
(52, 4, 'en_US', 'Botble\\RealEstate\\Models\\Project', 'e6f78da435a49ddb8497a027537ad6f5'),
(53, 5, 'en_US', 'Botble\\RealEstate\\Models\\Project', 'e10e38c14cc5ba56f403049c9f003285'),
(54, 6, 'en_US', 'Botble\\RealEstate\\Models\\Project', '0f0ae4af74e088ea71a1456a71084118'),
(55, 13, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'cb46b75d51f5b9ca4f7ea650ae885169'),
(56, 14, 'en_US', 'Botble\\RealEstate\\Models\\Property', '702833126d23884c8fa5f965b7fa3870'),
(57, 15, 'en_US', 'Botble\\RealEstate\\Models\\Property', '73a8f9e2401b54cca959e1a0a5fb9c9e'),
(58, 16, 'en_US', 'Botble\\RealEstate\\Models\\Property', '4aba3c5a608665c657affb7c59fce1e5'),
(59, 17, 'en_US', 'Botble\\RealEstate\\Models\\Property', '417317c4e6d4e390e19b87986cc52aa0'),
(60, 1, 'en_US', 'Botble\\Location\\Models\\Country', 'd3ec07a0e1406ee80d3d859777b7b403'),
(61, 1, 'en_US', 'Botble\\Location\\Models\\State', 'f8416c3653b14061d905348dad9577c6'),
(62, 1, 'en_US', 'Botble\\Location\\Models\\City', 'df3764fba83146dcf2a3dae1d4abffa8'),
(63, 2, 'en_US', 'Botble\\Location\\Models\\City', '61291cff6bb4da3bd0aaba956100e568'),
(64, 3, 'en_US', 'Botble\\Location\\Models\\City', '0da803b1790ee6927eb6c477a3a500f5'),
(65, 4, 'en_US', 'Botble\\Location\\Models\\City', '89e6959f3cb7f50f9b864818156fea61'),
(66, 5, 'en_US', 'Botble\\Location\\Models\\City', '63f5769d3fdefb7c291ab281762685c1'),
(67, 8, 'en_US', 'Botble\\RealEstate\\Models\\Feature', 'c09bc25d9cac53fcd354de939c7f8fae'),
(68, 7, 'en_US', 'Botble\\RealEstate\\Models\\Feature', 'd1b060fd0e6aa2e4f835e5c2f8bf90b9'),
(69, 6, 'en_US', 'Botble\\RealEstate\\Models\\Feature', '537595c55d88eb72832a869fd9527c9d'),
(70, 5, 'en_US', 'Botble\\RealEstate\\Models\\Feature', 'b2ca2731181c95b88a0e07086d249e9b'),
(71, 4, 'en_US', 'Botble\\RealEstate\\Models\\Feature', 'f16c14be9c2c35b834804c4aaf532e4d'),
(72, 3, 'en_US', 'Botble\\RealEstate\\Models\\Feature', '627860eba0af8ba4ca8c5e3dba813e76'),
(73, 2, 'en_US', 'Botble\\RealEstate\\Models\\Feature', '4daead6cb916d9ee6d0abf535757c12d'),
(74, 1, 'en_US', 'Botble\\RealEstate\\Models\\Feature', '945456922bc6901572ccfeaf1754647c'),
(75, 9, 'vi', 'Botble\\RealEstate\\Models\\Feature', 'c09bc25d9cac53fcd354de939c7f8fae'),
(76, 10, 'vi', 'Botble\\RealEstate\\Models\\Feature', 'd1b060fd0e6aa2e4f835e5c2f8bf90b9'),
(77, 11, 'vi', 'Botble\\RealEstate\\Models\\Feature', '537595c55d88eb72832a869fd9527c9d'),
(78, 12, 'vi', 'Botble\\RealEstate\\Models\\Feature', 'b2ca2731181c95b88a0e07086d249e9b'),
(79, 13, 'vi', 'Botble\\RealEstate\\Models\\Feature', 'f16c14be9c2c35b834804c4aaf532e4d'),
(80, 14, 'vi', 'Botble\\RealEstate\\Models\\Feature', '627860eba0af8ba4ca8c5e3dba813e76'),
(81, 15, 'vi', 'Botble\\RealEstate\\Models\\Feature', '4daead6cb916d9ee6d0abf535757c12d'),
(82, 16, 'vi', 'Botble\\RealEstate\\Models\\Feature', '945456922bc6901572ccfeaf1754647c'),
(83, 16, 'vi', 'Botble\\RealEstate\\Models\\Investor', '7e37f52d065e2ac7f71cec27528ff1a7'),
(84, 17, 'vi', 'Botble\\RealEstate\\Models\\Investor', '0dc7c295282a2e338f97f9ac56d3e707'),
(85, 18, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'aa340b8dd1304e49d7b6e3be7bb939cb'),
(86, 19, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'b9df16fdbc60e5d1d446560fa55780ad'),
(87, 20, 'vi', 'Botble\\RealEstate\\Models\\Investor', '33ba5096310a9bb0d2cbed1ebab2f00e'),
(88, 21, 'vi', 'Botble\\RealEstate\\Models\\Investor', '3752c23672cc11767202d85776490354'),
(89, 22, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'a714f38063f2a21302b72ca0c9ebf69d'),
(90, 23, 'vi', 'Botble\\RealEstate\\Models\\Investor', '9c7f8c61383d7ea76f817fcd2224363f'),
(91, 24, 'vi', 'Botble\\RealEstate\\Models\\Investor', '0f2d227a5e8b165455e69574d168d628'),
(92, 25, 'vi', 'Botble\\RealEstate\\Models\\Investor', '35466099783edd979365b6d42380217a'),
(93, 26, 'vi', 'Botble\\RealEstate\\Models\\Investor', '12f47dc443a0c4c9ed8dd3f48e43ef24'),
(94, 27, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'ae7c96e8601ae6be06b85cb1b035498d'),
(96, 29, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'c9199634afef0d21b9ed76f0438c1d92'),
(97, 30, 'vi', 'Botble\\RealEstate\\Models\\Investor', '8b391f8d425ee376f0378860cbc205ae'),
(98, 31, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'b55b725e9ba113942275849272e2969b'),
(99, 7, 'vi', 'Botble\\RealEstate\\Models\\Project', '56e4bdd055bc0b01d9fdc5efdbee6166'),
(100, 8, 'vi', 'Botble\\RealEstate\\Models\\Project', 'b8c605675ac073dd9d5b3572087a2445'),
(101, 9, 'vi', 'Botble\\RealEstate\\Models\\Project', '1631e995fd3df41119f30d9608085dae'),
(102, 10, 'vi', 'Botble\\RealEstate\\Models\\Project', 'e6f78da435a49ddb8497a027537ad6f5'),
(103, 11, 'vi', 'Botble\\RealEstate\\Models\\Project', 'e10e38c14cc5ba56f403049c9f003285'),
(104, 12, 'vi', 'Botble\\RealEstate\\Models\\Project', '0f0ae4af74e088ea71a1456a71084118'),
(105, 18, 'vi', 'Botble\\RealEstate\\Models\\Property', '404601a719bd38c609172d77df408ba1'),
(106, 19, 'vi', 'Botble\\RealEstate\\Models\\Property', '9fd22570b6527cea3f74256bc5beeade'),
(107, 20, 'vi', 'Botble\\RealEstate\\Models\\Property', '657ce80dc667a53aed03ea05f3977ff0'),
(108, 21, 'vi', 'Botble\\RealEstate\\Models\\Property', '6be7679ead5366a6369167210fd247a0'),
(109, 22, 'vi', 'Botble\\RealEstate\\Models\\Property', 'ac45379b9b6134531a834400a7d9175c'),
(113, 23, 'vi', 'Botble\\RealEstate\\Models\\Property', '976a11dca6f828f42ef579a8b3671b56'),
(114, 24, 'vi', 'Botble\\RealEstate\\Models\\Property', '141e080b1eff418e2977b5efdbfe799a'),
(115, 25, 'vi', 'Botble\\RealEstate\\Models\\Property', 'ccf2b58508febe22dae3fe588d1f7f36'),
(116, 26, 'vi', 'Botble\\RealEstate\\Models\\Property', '18e0c764a6457fa1677a1710cc219337'),
(118, 27, 'vi', 'Botble\\RealEstate\\Models\\Property', '2c9217b2ce21882234bfaf9222893fc9'),
(122, 2, 'en_US', 'Botble\\Blog\\Models\\Category', '6675f12d6ce53d9ed753a54bca8d67b0'),
(123, 3, 'vi', 'Botble\\Blog\\Models\\Category', '6675f12d6ce53d9ed753a54bca8d67b0'),
(124, 4, 'en_US', 'Botble\\Blog\\Models\\Category', '745e79e10f12a0f66d19ae3b4dad987a'),
(125, 5, 'vi', 'Botble\\Blog\\Models\\Category', '745e79e10f12a0f66d19ae3b4dad987a'),
(126, 6, 'en_US', 'Botble\\Blog\\Models\\Category', 'f1ba0f3404bb5b827cfaa552a6894c0f'),
(127, 7, 'vi', 'Botble\\Blog\\Models\\Category', 'f1ba0f3404bb5b827cfaa552a6894c0f'),
(128, 28, 'vi', 'Botble\\RealEstate\\Models\\Property', 'dad4f25ae76974a87d59084f82dae01b'),
(129, 29, 'vi', 'Botble\\RealEstate\\Models\\Property', '4be0c322dda4d57a9ae43c4bb5b7b608'),
(130, 30, 'vi', 'Botble\\RealEstate\\Models\\Property', 'cb46b75d51f5b9ca4f7ea650ae885169'),
(131, 31, 'vi', 'Botble\\RealEstate\\Models\\Property', '702833126d23884c8fa5f965b7fa3870'),
(132, 32, 'vi', 'Botble\\RealEstate\\Models\\Property', '73a8f9e2401b54cca959e1a0a5fb9c9e'),
(133, 33, 'vi', 'Botble\\RealEstate\\Models\\Property', '4aba3c5a608665c657affb7c59fce1e5'),
(134, 34, 'vi', 'Botble\\RealEstate\\Models\\Property', '417317c4e6d4e390e19b87986cc52aa0'),
(135, 8, 'vi', 'Botble\\Blog\\Models\\Category', '8804d947c9dfc67caa38c6d758c533fb'),
(136, 5, 'vi', 'Botble\\Blog\\Models\\Post', '3034c8b36dad04a9618bdcdc69180371'),
(137, 6, 'vi', 'Botble\\Blog\\Models\\Post', '6fd6f18d826fcd7ac743126287d55207'),
(138, 7, 'vi', 'Botble\\Blog\\Models\\Post', 'ec03adaaea66669a5e1bfaed629064e7'),
(139, 8, 'vi', 'Botble\\Blog\\Models\\Post', '918b57465f9da91a7af4d3a35aa8f696'),
(144, 1, 'en_US', 'Botble\\Career\\Models\\Career', '09e2cc1ea05bd7c9dd60cfd54725975c'),
(145, 2, 'vi', 'Botble\\Career\\Models\\Career', '09e2cc1ea05bd7c9dd60cfd54725975c'),
(146, 3, 'en_US', 'Botble\\Career\\Models\\Career', 'dcd6eb9e2a31b96825a0c519101c098e'),
(147, 4, 'vi', 'Botble\\Career\\Models\\Career', 'dcd6eb9e2a31b96825a0c519101c098e'),
(161, 1, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '4c9e7a0ee9344da781f8f10481e0335b'),
(162, 2, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '3dd78243e38a8bc41c7e8cd908af82d7'),
(163, 3, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '1c2ee66999173592cc8569b72e004387'),
(164, 4, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '202f330c763b2c793965c07fbca0ebc8'),
(165, 5, 'en_US', 'Botble\\RealEstate\\Models\\Facility', 'f21d7f6838d1ac489dd07bdd2152d089'),
(166, 6, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '213f9bb1d92be72bf70a1f989d93cbcf'),
(167, 7, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '83a092c92af08ffca16e3b0f2c7aebeb'),
(168, 8, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '21a48678967dcbd7d28d6111de0b8add'),
(169, 9, 'en_US', 'Botble\\RealEstate\\Models\\Facility', 'd542823ce99de761331bf698fefa39ee'),
(170, 10, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '693daebf15c3b74b003ce432cdb214de'),
(171, 11, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '8cd328ddcbadeb5d8e3f7e166e06ee65'),
(194, 5, 'en_US', 'Botble\\Career\\Models\\Career', '9d36fac293afaacbe2deeaaccc00f346'),
(291, 1, 'en_US', 'Botble\\RealEstate\\Models\\Category', '5d5d4684367522c764a3bf2dd2cb2f4b'),
(292, 2, 'en_US', 'Botble\\RealEstate\\Models\\Category', 'a041e86cb0e705de7a1e730c769ea2da'),
(293, 3, 'en_US', 'Botble\\RealEstate\\Models\\Category', 'b575980187351ebf72abf18281b3377c'),
(294, 4, 'en_US', 'Botble\\RealEstate\\Models\\Category', '914c85970887f23b4e2eb633a6d0b679'),
(295, 5, 'en_US', 'Botble\\RealEstate\\Models\\Category', '90cf92a09eec78cfe1e3c88409efc634'),
(296, 6, 'en_US', 'Botble\\RealEstate\\Models\\Category', 'a6ff72080cd2a3241951d825ac7e13e0'),
(297, 1, 'en_US', 'Botble\\Page\\Models\\Page', '1865f73f3ac68d6d9feea10eb71769ee'),
(298, 2, 'en_US', 'Botble\\Page\\Models\\Page', 'a2d5a00f4a91b438d5609aa48a7918b7'),
(299, 3, 'en_US', 'Botble\\Page\\Models\\Page', 'cc4011f84845a571a78c51d7f166f523'),
(300, 4, 'en_US', 'Botble\\Page\\Models\\Page', '55f2c6c1ef080c25759312d1ec71072e'),
(301, 5, 'en_US', 'Botble\\Page\\Models\\Page', '70086a0b0ece23913a977e2282f19cfd'),
(302, 6, 'en_US', 'Botble\\Page\\Models\\Page', 'b3d600b4ef64e839b895bda57773ea55'),
(303, 7, 'vi', 'Botble\\Page\\Models\\Page', '1865f73f3ac68d6d9feea10eb71769ee'),
(304, 8, 'vi', 'Botble\\Page\\Models\\Page', 'a2d5a00f4a91b438d5609aa48a7918b7'),
(305, 9, 'vi', 'Botble\\Page\\Models\\Page', 'cc4011f84845a571a78c51d7f166f523'),
(306, 10, 'vi', 'Botble\\Page\\Models\\Page', '55f2c6c1ef080c25759312d1ec71072e'),
(307, 11, 'vi', 'Botble\\Page\\Models\\Page', '70086a0b0ece23913a977e2282f19cfd'),
(308, 12, 'vi', 'Botble\\Page\\Models\\Page', 'b3d600b4ef64e839b895bda57773ea55'),
(309, 1, 'en_US', 'Botble\\Menu\\Models\\MenuLocation', 'ea4bb7f1808c4f1736d7b7ed1286ae10'),
(310, 1, 'en_US', 'Botble\\Menu\\Models\\Menu', '8de4bcd9b0294defc73f2f48315362b2'),
(311, 2, 'en_US', 'Botble\\Menu\\Models\\Menu', '06c563c0895de348da020e73550b8e58'),
(312, 3, 'en_US', 'Botble\\Menu\\Models\\Menu', 'af33555f16636f7cd5921fb1d08ea668'),
(313, 4, 'en_US', 'Botble\\Menu\\Models\\Menu', 'b2d4abef57666caef053042cf86130aa'),
(314, 2, 'vi', 'Botble\\Menu\\Models\\MenuLocation', 'd38406c2db33d4454b86565a9d7cdaf5'),
(315, 5, 'vi', 'Botble\\Menu\\Models\\Menu', '8de4bcd9b0294defc73f2f48315362b2'),
(316, 6, 'vi', 'Botble\\Menu\\Models\\Menu', '06c563c0895de348da020e73550b8e58'),
(317, 7, 'vi', 'Botble\\Menu\\Models\\Menu', 'af33555f16636f7cd5921fb1d08ea668'),
(318, 8, 'vi', 'Botble\\Menu\\Models\\Menu', 'b2d4abef57666caef053042cf86130aa'),
(319, 9, 'en_US', 'Botble\\Blog\\Models\\Post', 'ad4e052b18f37ab5bb038760cb14fb1e'),
(320, 10, 'en_US', 'Botble\\Blog\\Models\\Post', '7e9baf39c5c29f31bb0d06d04a1c0ea1'),
(321, 11, 'en_US', 'Botble\\Blog\\Models\\Post', '297a670cfa3cbe2ccaecf98f839f759b'),
(322, 12, 'en_US', 'Botble\\Blog\\Models\\Post', '5679fe5640df77651a10cdf837f396ee'),
(323, 13, 'en_US', 'Botble\\Blog\\Models\\Post', '8196e2aaf75d1fc8a64b7343703d2878'),
(324, 14, 'en_US', 'Botble\\Blog\\Models\\Post', '974fa9522c40d35cf3bdcd8a7989d227'),
(325, 15, 'en_US', 'Botble\\Blog\\Models\\Post', 'cee1da113b7baafd0b0448d9cd50b5a5'),
(326, 16, 'en_US', 'Botble\\Blog\\Models\\Post', '1682ac96d28b0127596f9e079d208045'),
(327, 17, 'en_US', 'Botble\\Blog\\Models\\Post', '8c830776118764025c538ef66dc28554'),
(328, 18, 'en_US', 'Botble\\Blog\\Models\\Post', '70991de5edf42555e2ab39a865e317d0'),
(329, 19, 'en_US', 'Botble\\Blog\\Models\\Post', '75607f81ada2ab73d07f78141fa60aa7'),
(330, 20, 'en_US', 'Botble\\Blog\\Models\\Post', '2ee45f68451c11219a2a3201f9c154ff'),
(331, 21, 'en_US', 'Botble\\Blog\\Models\\Post', '88da5f3d0f516bbc1cb3676f60010bf1'),
(332, 22, 'en_US', 'Botble\\Blog\\Models\\Post', '275afb9427bb7b0208451b256ecabde3'),
(333, 23, 'en_US', 'Botble\\Blog\\Models\\Post', 'f84355148dd7a99d0762c0b3f82f2c13'),
(334, 24, 'en_US', 'Botble\\Blog\\Models\\Post', 'a37a8adcf1777bca81ea8e3ab27a7f7a'),
(335, 25, 'vi', 'Botble\\Blog\\Models\\Post', 'ad4e052b18f37ab5bb038760cb14fb1e'),
(336, 26, 'vi', 'Botble\\Blog\\Models\\Post', '7e9baf39c5c29f31bb0d06d04a1c0ea1'),
(337, 27, 'vi', 'Botble\\Blog\\Models\\Post', '297a670cfa3cbe2ccaecf98f839f759b'),
(338, 28, 'vi', 'Botble\\Blog\\Models\\Post', '5679fe5640df77651a10cdf837f396ee'),
(339, 29, 'vi', 'Botble\\Blog\\Models\\Post', '8196e2aaf75d1fc8a64b7343703d2878'),
(340, 30, 'vi', 'Botble\\Blog\\Models\\Post', '974fa9522c40d35cf3bdcd8a7989d227'),
(341, 31, 'vi', 'Botble\\Blog\\Models\\Post', 'cee1da113b7baafd0b0448d9cd50b5a5'),
(342, 32, 'vi', 'Botble\\Blog\\Models\\Post', '1682ac96d28b0127596f9e079d208045'),
(343, 33, 'vi', 'Botble\\Blog\\Models\\Post', '8c830776118764025c538ef66dc28554'),
(344, 34, 'vi', 'Botble\\Blog\\Models\\Post', '70991de5edf42555e2ab39a865e317d0'),
(345, 35, 'vi', 'Botble\\Blog\\Models\\Post', '75607f81ada2ab73d07f78141fa60aa7'),
(346, 36, 'vi', 'Botble\\Blog\\Models\\Post', '2ee45f68451c11219a2a3201f9c154ff'),
(347, 37, 'vi', 'Botble\\Blog\\Models\\Post', '88da5f3d0f516bbc1cb3676f60010bf1'),
(348, 38, 'vi', 'Botble\\Blog\\Models\\Post', '275afb9427bb7b0208451b256ecabde3'),
(349, 39, 'vi', 'Botble\\Blog\\Models\\Post', 'f84355148dd7a99d0762c0b3f82f2c13'),
(350, 40, 'vi', 'Botble\\Blog\\Models\\Post', 'a37a8adcf1777bca81ea8e3ab27a7f7a');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(899, 0, '1', 45, 'image/jpeg', 11752, 'accounts/1.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(900, 0, '10', 45, 'image/jpeg', 27814, 'accounts/10.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(901, 0, '2', 45, 'image/jpeg', 19005, 'accounts/2.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(902, 0, '3', 45, 'image/jpeg', 20400, 'accounts/3.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(903, 0, '4', 45, 'image/jpeg', 26819, 'accounts/4.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(904, 0, '5', 45, 'image/jpeg', 14367, 'accounts/5.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(905, 0, '6', 45, 'image/jpeg', 12367, 'accounts/6.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(906, 0, '7', 45, 'image/jpeg', 20652, 'accounts/7.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(907, 0, '8', 45, 'image/jpeg', 21164, 'accounts/8.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(908, 0, '9', 45, 'image/jpeg', 6084, 'accounts/9.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(910, 0, 'asset-3-at-3x', 47, 'image/png', 76833, 'general/asset-3-at-3x.png', '[]', '2021-06-11 20:56:49', '2021-06-11 20:56:49', NULL),
(911, 0, 'asset-4-at-3x', 47, 'image/png', 84067, 'general/asset-4-at-3x.png', '[]', '2021-06-11 20:56:49', '2021-06-11 20:56:49', NULL),
(912, 0, 'copyright', 47, 'image/jpeg', 128544, 'general/copyright.jpg', '[]', '2021-06-11 20:56:50', '2021-06-11 20:56:50', NULL),
(913, 0, 'termsconditions-pagedesktop', 47, 'image/jpeg', 185151, 'general/termsconditions-pagedesktop.jpg', '[]', '2021-06-11 20:56:50', '2021-06-11 20:56:50', NULL),
(914, 0, 'video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri', 47, 'image/jpeg', 63143, 'general/video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri.jpg', '[]', '2021-06-11 20:56:50', '2021-06-11 20:56:50', NULL),
(915, 0, 'vietnam-office-4', 47, 'image/jpeg', 214366, 'general/vietnam-office-4.jpg', '[]', '2021-06-11 20:56:50', '2021-06-11 20:56:50', NULL),
(916, 0, '1', 48, 'image/jpeg', 66997, 'news/1.jpg', '[]', '2021-06-11 20:56:51', '2021-06-11 20:56:51', NULL),
(917, 0, '10', 48, 'image/jpeg', 66858, 'news/10.jpg', '[]', '2021-06-11 20:56:51', '2021-06-11 20:56:51', NULL),
(918, 0, '11', 48, 'image/jpeg', 86492, 'news/11.jpg', '[]', '2021-06-11 20:56:51', '2021-06-11 20:56:51', NULL),
(919, 0, '12', 48, 'image/jpeg', 91376, 'news/12.jpg', '[]', '2021-06-11 20:56:51', '2021-06-11 20:56:51', NULL),
(920, 0, '13', 48, 'image/jpeg', 82991, 'news/13.jpg', '[]', '2021-06-11 20:56:51', '2021-06-11 20:56:51', NULL),
(921, 0, '14', 48, 'image/jpeg', 66997, 'news/14.jpg', '[]', '2021-06-11 20:56:52', '2021-06-11 20:56:52', NULL),
(922, 0, '15', 48, 'image/jpeg', 111450, 'news/15.jpg', '[]', '2021-06-11 20:56:52', '2021-06-11 20:56:52', NULL),
(923, 0, '16', 48, 'image/jpeg', 464807, 'news/16.jpg', '[]', '2021-06-11 20:56:52', '2021-06-11 20:56:52', NULL),
(924, 0, '2', 48, 'image/jpeg', 51884, 'news/2.jpg', '[]', '2021-06-11 20:56:53', '2021-06-11 20:56:53', NULL),
(925, 0, '3', 48, 'image/jpeg', 132835, 'news/3.jpg', '[]', '2021-06-11 20:56:53', '2021-06-11 20:56:53', NULL),
(926, 0, '4', 48, 'image/jpeg', 948302, 'news/4.jpg', '[]', '2021-06-11 20:56:53', '2021-06-11 20:56:53', NULL),
(927, 0, '5', 48, 'image/jpeg', 66858, 'news/5.jpg', '[]', '2021-06-11 20:56:53', '2021-06-11 20:56:53', NULL),
(928, 0, '6', 48, 'image/jpeg', 328317, 'news/6.jpg', '[]', '2021-06-11 20:56:54', '2021-06-11 20:56:54', NULL),
(929, 0, '7', 48, 'image/jpeg', 249538, 'news/7.jpg', '[]', '2021-06-11 20:56:54', '2021-06-11 20:56:54', NULL),
(930, 0, '8', 48, 'image/jpeg', 147871, 'news/8.jpg', '[]', '2021-06-11 20:56:54', '2021-06-11 20:56:54', NULL),
(931, 0, '9', 48, 'image/jpeg', 194815, 'news/9.jpg', '[]', '2021-06-11 20:56:54', '2021-06-11 20:56:54', NULL),
(932, 0, 'banner', 1, 'image/jpeg', 239032, 'banner/banner.jpg', '[]', '2021-06-11 20:56:55', '2021-06-11 20:56:55', NULL),
(933, 0, '2009-0726-ca-bakersfield-truxtontower', 49, 'image/jpeg', 686056, 'cities/2009-0726-ca-bakersfield-truxtontower.jpg', '[]', '2021-06-11 20:56:56', '2021-06-11 20:56:56', NULL),
(934, 0, 'castillo-de-disneyland', 49, 'image/jpeg', 412609, 'cities/castillo-de-disneyland.jpg', '[]', '2021-06-11 20:56:56', '2021-06-11 20:56:56', NULL),
(935, 0, 'goldengatebridge-001', 49, 'image/jpeg', 371864, 'cities/goldengatebridge-001.jpg', '[]', '2021-06-11 20:56:56', '2021-06-11 20:56:56', NULL),
(936, 0, 'los-angeles-winter-2016', 49, 'image/jpeg', 254681, 'cities/los-angeles-winter-2016.jpg', '[]', '2021-06-11 20:56:56', '2021-06-11 20:56:56', NULL),
(937, 0, 'oaklandnightskylineandlakemerritt', 49, 'image/jpeg', 433073, 'cities/oaklandnightskylineandlakemerritt.jpg', '[]', '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(938, 0, 'favicon', 50, 'image/png', 3110, 'logo/favicon.png', '[]', '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(939, 0, 'logo-white', 50, 'image/png', 18120, 'logo/logo-white.png', '[]', '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(940, 0, 'logo', 50, 'image/png', 23910, 'logo/logo.png', '[]', '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(941, 0, '1', 51, 'image/jpeg', 750839, 'projects/1.jpg', '[]', '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(942, 0, '11', 51, 'image/jpeg', 1729433, 'projects/11.jpg', '[]', '2021-06-11 20:56:58', '2021-06-11 20:56:58', NULL),
(943, 0, '12', 51, 'image/jpeg', 942082, 'projects/12.jpg', '[]', '2021-06-11 20:56:58', '2021-06-11 20:56:58', NULL),
(944, 0, '13', 51, 'image/jpeg', 562580, 'projects/13.jpg', '[]', '2021-06-11 20:56:59', '2021-06-11 20:56:59', NULL),
(945, 0, '14', 51, 'image/jpeg', 1259051, 'projects/14.jpg', '[]', '2021-06-11 20:56:59', '2021-06-11 20:56:59', NULL),
(946, 0, '2', 51, 'image/jpeg', 431985, 'projects/2.jpg', '[]', '2021-06-11 20:57:00', '2021-06-11 20:57:00', NULL),
(947, 0, '21', 51, 'image/jpeg', 173885, 'projects/21.jpg', '[]', '2021-06-11 20:57:00', '2021-06-11 20:57:00', NULL),
(948, 0, '22', 51, 'image/jpeg', 94488, 'projects/22.jpg', '[]', '2021-06-11 20:57:01', '2021-06-11 20:57:01', NULL),
(949, 0, '23', 51, 'image/jpeg', 90740, 'projects/23.jpg', '[]', '2021-06-11 20:57:01', '2021-06-11 20:57:01', NULL),
(950, 0, '24', 51, 'image/jpeg', 96624, 'projects/24.jpg', '[]', '2021-06-11 20:57:01', '2021-06-11 20:57:01', NULL),
(951, 0, '25', 51, 'image/jpeg', 138699, 'projects/25.jpg', '[]', '2021-06-11 20:57:01', '2021-06-11 20:57:01', NULL),
(952, 0, '26', 51, 'image/jpeg', 121747, 'projects/26.jpg', '[]', '2021-06-11 20:57:01', '2021-06-11 20:57:01', NULL),
(953, 0, '3', 51, 'image/jpeg', 450933, 'projects/3.jpg', '[]', '2021-06-11 20:57:01', '2021-06-11 20:57:01', NULL),
(954, 0, '5', 51, 'image/jpeg', 206027, 'projects/5.jpg', '[]', '2021-06-11 20:57:02', '2021-06-11 20:57:02', NULL),
(955, 0, '1-1', 52, 'image/jpeg', 750839, 'properties/1-1.jpg', '[]', '2021-06-11 20:57:02', '2021-06-11 20:57:02', NULL),
(956, 0, '1-2', 52, 'image/jpeg', 1587777, 'properties/1-2.jpg', '[]', '2021-06-11 20:57:03', '2021-06-11 20:57:03', NULL),
(957, 0, '1-3', 52, 'image/jpeg', 646056, 'properties/1-3.jpg', '[]', '2021-06-11 20:57:03', '2021-06-11 20:57:03', NULL),
(958, 0, '1', 52, 'image/jpeg', 80373, 'properties/1.jpg', '[]', '2021-06-11 20:57:04', '2021-06-11 20:57:04', NULL),
(959, 0, '10-1', 52, 'image/jpeg', 198455, 'properties/10-1.jpg', '[]', '2021-06-11 20:57:04', '2021-06-11 20:57:04', NULL),
(960, 0, '10', 52, 'image/jpeg', 255695, 'properties/10.jpg', '[]', '2021-06-11 20:57:04', '2021-06-11 20:57:04', NULL),
(961, 0, '11-1', 52, 'image/jpeg', 127294, 'properties/11-1.jpg', '[]', '2021-06-11 20:57:04', '2021-06-11 20:57:04', NULL),
(962, 0, '11', 52, 'image/jpeg', 79403, 'properties/11.jpg', '[]', '2021-06-11 20:57:04', '2021-06-11 20:57:04', NULL),
(963, 0, '12', 52, 'image/jpeg', 86373, 'properties/12.jpg', '[]', '2021-06-11 20:57:05', '2021-06-11 20:57:05', NULL),
(964, 0, '13', 52, 'image/jpeg', 82991, 'properties/13.jpg', '[]', '2021-06-11 20:57:05', '2021-06-11 20:57:05', NULL),
(965, 0, '14', 52, 'image/jpeg', 66997, 'properties/14.jpg', '[]', '2021-06-11 20:57:05', '2021-06-11 20:57:05', NULL),
(966, 0, '15', 52, 'image/jpeg', 111450, 'properties/15.jpg', '[]', '2021-06-11 20:57:06', '2021-06-11 20:57:06', NULL),
(967, 0, '2-1', 52, 'image/jpeg', 431985, 'properties/2-1.jpg', '[]', '2021-06-11 20:57:06', '2021-06-11 20:57:06', NULL),
(968, 0, '2-2', 52, 'image/jpeg', 260049, 'properties/2-2.jpg', '[]', '2021-06-11 20:57:06', '2021-06-11 20:57:06', NULL),
(969, 0, '2-3', 52, 'image/jpeg', 684758, 'properties/2-3.jpg', '[]', '2021-06-11 20:57:07', '2021-06-11 20:57:07', NULL),
(970, 0, '2', 52, 'image/jpeg', 93464, 'properties/2.jpg', '[]', '2021-06-11 20:57:07', '2021-06-11 20:57:07', NULL),
(971, 0, '21', 52, 'image/jpeg', 85475, 'properties/21.jpg', '[]', '2021-06-11 20:57:07', '2021-06-11 20:57:07', NULL),
(972, 0, '22-1', 52, 'image/jpeg', 94488, 'properties/22-1.jpg', '[]', '2021-06-11 20:57:07', '2021-06-11 20:57:07', NULL),
(973, 0, '22', 52, 'image/jpeg', 713091, 'properties/22.jpg', '[]', '2021-06-11 20:57:07', '2021-06-11 20:57:07', NULL),
(974, 0, '23', 52, 'image/jpeg', 111948, 'properties/23.jpg', '[]', '2021-06-11 20:57:07', '2021-06-11 20:57:07', NULL),
(975, 0, '24-1', 52, 'image/jpeg', 96624, 'properties/24-1.jpg', '[]', '2021-06-11 20:57:08', '2021-06-11 20:57:08', NULL),
(976, 0, '24', 52, 'image/jpeg', 69034, 'properties/24.jpg', '[]', '2021-06-11 20:57:08', '2021-06-11 20:57:08', NULL),
(977, 0, '3-1', 52, 'image/jpeg', 450933, 'properties/3-1.jpg', '[]', '2021-06-11 20:57:08', '2021-06-11 20:57:08', NULL),
(978, 0, '3-2', 52, 'image/jpeg', 124405, 'properties/3-2.jpg', '[]', '2021-06-11 20:57:08', '2021-06-11 20:57:08', NULL),
(979, 0, '3-3', 52, 'image/jpeg', 762723, 'properties/3-3.jpg', '[]', '2021-06-11 20:57:08', '2021-06-11 20:57:08', NULL),
(980, 0, '3', 52, 'image/jpeg', 70442, 'properties/3.jpg', '[]', '2021-06-11 20:57:09', '2021-06-11 20:57:09', NULL),
(981, 0, '31', 52, 'image/jpeg', 33300, 'properties/31.jpg', '[]', '2021-06-11 20:57:09', '2021-06-11 20:57:09', NULL),
(982, 0, '311', 52, 'image/jpeg', 22270, 'properties/311.jpg', '[]', '2021-06-11 20:57:09', '2021-06-11 20:57:09', NULL),
(983, 0, '32', 52, 'image/jpeg', 18100, 'properties/32.jpg', '[]', '2021-06-11 20:57:09', '2021-06-11 20:57:09', NULL),
(984, 0, '32223-43914-378', 52, 'image/jpeg', 716445, 'properties/32223-43914-378.jpg', '[]', '2021-06-11 20:57:09', '2021-06-11 20:57:09', NULL),
(985, 0, '33', 52, 'image/jpeg', 21031, 'properties/33.jpg', '[]', '2021-06-11 20:57:09', '2021-06-11 20:57:09', NULL),
(986, 0, '34', 52, 'image/jpeg', 19947, 'properties/34.jpg', '[]', '2021-06-11 20:57:09', '2021-06-11 20:57:09', NULL),
(987, 0, '35', 52, 'image/jpeg', 24653, 'properties/35.jpg', '[]', '2021-06-11 20:57:10', '2021-06-11 20:57:10', NULL),
(988, 0, '4-1', 52, 'image/jpeg', 433537, 'properties/4-1.jpg', '[]', '2021-06-11 20:57:10', '2021-06-11 20:57:10', NULL),
(989, 0, '4-2', 52, 'image/jpeg', 642443, 'properties/4-2.jpg', '[]', '2021-06-11 20:57:10', '2021-06-11 20:57:10', NULL),
(990, 0, '4', 52, 'image/jpeg', 96537, 'properties/4.jpg', '[]', '2021-06-11 20:57:11', '2021-06-11 20:57:11', NULL),
(991, 0, '411', 52, 'image/jpeg', 29035, 'properties/411.jpg', '[]', '2021-06-11 20:57:11', '2021-06-11 20:57:11', NULL),
(992, 0, '42', 52, 'image/jpeg', 24790, 'properties/42.jpg', '[]', '2021-06-11 20:57:11', '2021-06-11 20:57:11', NULL),
(993, 0, '421834935dbc9ef3aaa42', 52, 'image/jpeg', 538188, 'properties/421834935dbc9ef3aaa42.jpg', '[]', '2021-06-11 20:57:11', '2021-06-11 20:57:11', NULL),
(994, 0, '43', 52, 'image/jpeg', 20920, 'properties/43.jpg', '[]', '2021-06-11 20:57:11', '2021-06-11 20:57:11', NULL),
(995, 0, '44', 52, 'image/jpeg', 17781, 'properties/44.jpg', '[]', '2021-06-11 20:57:11', '2021-06-11 20:57:11', NULL),
(996, 0, '5-1', 52, 'image/jpeg', 86536, 'properties/5-1.jpg', '[]', '2021-06-11 20:57:11', '2021-06-11 20:57:11', NULL),
(997, 0, '5-2', 52, 'image/jpeg', 656323, 'properties/5-2.jpg', '[]', '2021-06-11 20:57:12', '2021-06-11 20:57:12', NULL),
(998, 0, '5', 52, 'image/jpeg', 206027, 'properties/5.jpg', '[]', '2021-06-11 20:57:12', '2021-06-11 20:57:12', NULL),
(999, 0, '6-1', 52, 'image/jpeg', 252518, 'properties/6-1.jpg', '[]', '2021-06-11 20:57:12', '2021-06-11 20:57:12', NULL),
(1000, 0, '6-2', 52, 'image/jpeg', 76855, 'properties/6-2.jpg', '[]', '2021-06-11 20:57:13', '2021-06-11 20:57:13', NULL),
(1001, 0, '6', 52, 'image/jpeg', 51884, 'properties/6.jpg', '[]', '2021-06-11 20:57:13', '2021-06-11 20:57:13', NULL),
(1002, 0, '7-1', 52, 'image/jpeg', 46086, 'properties/7-1.jpg', '[]', '2021-06-11 20:57:13', '2021-06-11 20:57:13', NULL),
(1003, 0, '7-2', 52, 'image/jpeg', 172462, 'properties/7-2.jpg', '[]', '2021-06-11 20:57:13', '2021-06-11 20:57:13', NULL),
(1004, 0, '7', 52, 'image/jpeg', 464807, 'properties/7.jpg', '[]', '2021-06-11 20:57:13', '2021-06-11 20:57:13', NULL),
(1005, 0, '71', 52, 'image/jpeg', 127638, 'properties/71.jpg', '[]', '2021-06-11 20:57:14', '2021-06-11 20:57:14', NULL),
(1006, 0, '72', 52, 'image/jpeg', 99746, 'properties/72.jpg', '[]', '2021-06-11 20:57:14', '2021-06-11 20:57:14', NULL),
(1007, 0, '73', 52, 'image/jpeg', 99089, 'properties/73.jpg', '[]', '2021-06-11 20:57:15', '2021-06-11 20:57:15', NULL),
(1008, 0, '74', 52, 'image/jpeg', 108268, 'properties/74.jpg', '[]', '2021-06-11 20:57:15', '2021-06-11 20:57:15', NULL),
(1009, 0, '75', 52, 'image/jpeg', 144040, 'properties/75.jpg', '[]', '2021-06-11 20:57:15', '2021-06-11 20:57:15', NULL),
(1010, 0, '78', 52, 'image/jpeg', 132835, 'properties/78.jpg', '[]', '2021-06-11 20:57:15', '2021-06-11 20:57:15', NULL),
(1011, 0, '79', 52, 'image/jpeg', 128490, 'properties/79.jpg', '[]', '2021-06-11 20:57:15', '2021-06-11 20:57:15', NULL),
(1012, 0, '8-1', 52, 'image/jpeg', 35774, 'properties/8-1.jpg', '[]', '2021-06-11 20:57:16', '2021-06-11 20:57:16', NULL),
(1013, 0, '8-2', 52, 'image/jpeg', 116324, 'properties/8-2.jpg', '[]', '2021-06-11 20:57:16', '2021-06-11 20:57:16', NULL),
(1014, 0, '8', 52, 'image/jpeg', 542999, 'properties/8.jpg', '[]', '2021-06-11 20:57:16', '2021-06-11 20:57:16', NULL),
(1015, 0, '9-1', 52, 'image/jpeg', 82701, 'properties/9-1.jpg', '[]', '2021-06-11 20:57:17', '2021-06-11 20:57:17', NULL),
(1016, 0, '9', 52, 'image/jpeg', 98602, 'properties/9.jpg', '[]', '2021-06-11 20:57:17', '2021-06-11 20:57:17', NULL),
(1017, 0, 'a1-1', 52, 'image/jpeg', 244411, 'properties/a1-1.jpg', '[]', '2021-06-11 20:57:17', '2021-06-11 20:57:17', NULL),
(1018, 0, 'a1-2', 52, 'image/jpeg', 213475, 'properties/a1-2.jpg', '[]', '2021-06-11 20:57:17', '2021-06-11 20:57:17', NULL),
(1019, 0, 'a1', 52, 'image/jpeg', 104460, 'properties/a1.jpg', '[]', '2021-06-11 20:57:18', '2021-06-11 20:57:18', NULL),
(1020, 0, 'a10', 52, 'image/jpeg', 135558, 'properties/a10.jpg', '[]', '2021-06-11 20:57:18', '2021-06-11 20:57:18', NULL),
(1021, 0, 'a2-1', 52, 'image/jpeg', 58090, 'properties/a2-1.jpg', '[]', '2021-06-11 20:57:18', '2021-06-11 20:57:18', NULL),
(1022, 0, 'a2-2', 52, 'image/jpeg', 110869, 'properties/a2-2.jpg', '[]', '2021-06-11 20:57:18', '2021-06-11 20:57:18', NULL),
(1023, 0, 'a2', 52, 'image/jpeg', 79585, 'properties/a2.jpg', '[]', '2021-06-11 20:57:19', '2021-06-11 20:57:19', NULL),
(1024, 0, 'a3-1', 52, 'image/jpeg', 103281, 'properties/a3-1.jpg', '[]', '2021-06-11 20:57:19', '2021-06-11 20:57:19', NULL),
(1025, 0, 'a3-2', 52, 'image/jpeg', 180354, 'properties/a3-2.jpg', '[]', '2021-06-11 20:57:19', '2021-06-11 20:57:19', NULL),
(1026, 0, 'a3', 52, 'image/jpeg', 182143, 'properties/a3.jpg', '[]', '2021-06-11 20:57:19', '2021-06-11 20:57:19', NULL),
(1027, 0, 'a4-1', 52, 'image/jpeg', 93023, 'properties/a4-1.jpg', '[]', '2021-06-11 20:57:20', '2021-06-11 20:57:20', NULL),
(1028, 0, 'a4-2', 52, 'image/jpeg', 91918, 'properties/a4-2.jpg', '[]', '2021-06-11 20:57:20', '2021-06-11 20:57:20', NULL),
(1029, 0, 'a4', 52, 'image/jpeg', 79498, 'properties/a4.jpg', '[]', '2021-06-11 20:57:20', '2021-06-11 20:57:20', NULL),
(1030, 0, 'a5-1', 52, 'image/jpeg', 184906, 'properties/a5-1.jpg', '[]', '2021-06-11 20:57:21', '2021-06-11 20:57:21', NULL),
(1031, 0, 'a5', 52, 'image/jpeg', 116582, 'properties/a5.jpg', '[]', '2021-06-11 20:57:21', '2021-06-11 20:57:21', NULL),
(1032, 0, 'a6-1', 52, 'image/jpeg', 581176, 'properties/a6-1.jpg', '[]', '2021-06-11 20:57:21', '2021-06-11 20:57:21', NULL),
(1033, 0, 'a6', 52, 'image/jpeg', 82219, 'properties/a6.jpg', '[]', '2021-06-11 20:57:21', '2021-06-11 20:57:21', NULL),
(1034, 0, 'a7', 52, 'image/jpeg', 436253, 'properties/a7.jpg', '[]', '2021-06-11 20:57:22', '2021-06-11 20:57:22', NULL),
(1035, 0, 'a8', 52, 'image/jpeg', 220787, 'properties/a8.jpg', '[]', '2021-06-11 20:57:22', '2021-06-11 20:57:22', NULL),
(1036, 0, 'a9', 52, 'image/jpeg', 174424, 'properties/a9.jpg', '[]', '2021-06-11 20:57:22', '2021-06-11 20:57:22', NULL),
(1037, 0, 'b1', 52, 'image/jpeg', 169643, 'properties/b1.jpg', '[]', '2021-06-11 20:57:23', '2021-06-11 20:57:23', NULL),
(1038, 0, 'b2', 52, 'image/jpeg', 92903, 'properties/b2.jpg', '[]', '2021-06-11 20:57:23', '2021-06-11 20:57:23', NULL),
(1039, 0, 'b3', 52, 'image/jpeg', 130884, 'properties/b3.jpg', '[]', '2021-06-11 20:57:23', '2021-06-11 20:57:23', NULL),
(1040, 0, 'b4-1', 52, 'image/jpeg', 151288, 'properties/b4-1.jpg', '[]', '2021-06-11 20:57:23', '2021-06-11 20:57:23', NULL),
(1041, 0, 'b4', 52, 'image/jpeg', 101182, 'properties/b4.jpg', '[]', '2021-06-11 20:57:24', '2021-06-11 20:57:24', NULL),
(1042, 0, 'b5-1', 52, 'image/jpeg', 136853, 'properties/b5-1.jpg', '[]', '2021-06-11 20:57:24', '2021-06-11 20:57:24', NULL),
(1043, 0, 'b5', 52, 'image/jpeg', 69849, 'properties/b5.jpg', '[]', '2021-06-11 20:57:24', '2021-06-11 20:57:24', NULL),
(1044, 0, 'b6', 52, 'image/jpeg', 104434, 'properties/b6.jpg', '[]', '2021-06-11 20:57:24', '2021-06-11 20:57:24', NULL),
(1045, 0, 'download', 52, 'image/jpeg', 10833, 'properties/download.jpg', '[]', '2021-06-11 20:57:25', '2021-06-11 20:57:25', NULL),
(1046, 0, 'e1', 52, 'image/jpeg', 1105244, 'properties/e1.jpg', '[]', '2021-06-11 20:57:25', '2021-06-11 20:57:25', NULL),
(1047, 0, 'e2', 52, 'image/jpeg', 1062944, 'properties/e2.jpg', '[]', '2021-06-11 20:57:25', '2021-06-11 20:57:25', NULL),
(1048, 0, 'e3', 52, 'image/jpeg', 1113759, 'properties/e3.jpg', '[]', '2021-06-11 20:57:26', '2021-06-11 20:57:26', NULL),
(1049, 0, 'e4', 52, 'image/jpeg', 1003508, 'properties/e4.jpg', '[]', '2021-06-11 20:57:26', '2021-06-11 20:57:26', NULL),
(1050, 0, 'e5', 52, 'image/jpeg', 948302, 'properties/e5.jpg', '[]', '2021-06-11 20:57:26', '2021-06-11 20:57:26', NULL),
(1051, 0, 'e7', 52, 'image/jpeg', 916078, 'properties/e7.jpg', '[]', '2021-06-11 20:57:27', '2021-06-11 20:57:27', NULL),
(1052, 0, 'e8', 52, 'image/jpeg', 820972, 'properties/e8.jpg', '[]', '2021-06-11 20:57:27', '2021-06-11 20:57:27', NULL),
(1053, 0, 'p1', 52, 'image/jpeg', 198758, 'properties/p1.jpg', '[]', '2021-06-11 20:57:28', '2021-06-11 20:57:28', NULL),
(1054, 0, 'p2', 52, 'image/jpeg', 427643, 'properties/p2.jpg', '[]', '2021-06-11 20:57:28', '2021-06-11 20:57:28', NULL),
(1055, 0, 'property-video-thumb', 52, 'image/jpeg', 26909, 'properties/property-video-thumb.jpg', '[]', '2021-06-11 20:57:29', '2021-06-11 20:57:29', NULL),
(1056, 0, 'q1', 52, 'image/jpeg', 458500, 'properties/q1.jpg', '[]', '2021-06-11 20:57:29', '2021-06-11 20:57:29', NULL),
(1057, 0, 'q2', 52, 'image/jpeg', 233211, 'properties/q2.jpg', '[]', '2021-06-11 20:57:29', '2021-06-11 20:57:29', NULL),
(1058, 0, 'q3', 52, 'image/jpeg', 328317, 'properties/q3.jpg', '[]', '2021-06-11 20:57:29', '2021-06-11 20:57:29', NULL),
(1059, 0, 'q6', 52, 'image/jpeg', 249538, 'properties/q6.jpg', '[]', '2021-06-11 20:57:30', '2021-06-11 20:57:30', NULL),
(1060, 0, 'q7', 52, 'image/jpeg', 147871, 'properties/q7.jpg', '[]', '2021-06-11 20:57:30', '2021-06-11 20:57:30', NULL),
(1061, 0, 'q8', 52, 'image/jpeg', 194815, 'properties/q8.jpg', '[]', '2021-06-11 20:57:30', '2021-06-11 20:57:30', NULL),
(1062, 0, 't1', 52, 'image/jpeg', 66858, 'properties/t1.jpg', '[]', '2021-06-11 20:57:31', '2021-06-11 20:57:31', NULL),
(1063, 0, 't2', 52, 'image/jpeg', 86492, 'properties/t2.jpg', '[]', '2021-06-11 20:57:31', '2021-06-11 20:57:31', NULL),
(1064, 0, 't3', 52, 'image/jpeg', 91376, 'properties/t3.jpg', '[]', '2021-06-11 20:57:31', '2021-06-11 20:57:31', NULL),
(1065, 0, 't4', 52, 'image/jpeg', 77280, 'properties/t4.jpg', '[]', '2021-06-11 20:57:31', '2021-06-11 20:57:31', NULL),
(1066, 0, 't5', 52, 'image/jpeg', 94036, 'properties/t5.jpg', '[]', '2021-06-11 20:57:31', '2021-06-11 20:57:31', NULL),
(1067, 0, 'wp1a', 52, 'image/jpeg', 168494, 'properties/wp1a.jpg', '[]', '2021-06-11 20:57:31', '2021-06-11 20:57:31', NULL),
(1068, 0, 'avatar', 53, 'image/jpeg', 151486, 'users/avatar.jpg', '[]', '2021-06-11 20:57:32', '2021-06-11 20:57:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Banners', 'banner', 0, '2019-11-16 02:00:43', '2019-11-16 02:00:50', NULL),
(45, 0, 'accounts', 'accounts', 0, '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(47, 0, 'general', 'general', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49', NULL),
(48, 0, 'news', 'news', 0, '2021-06-11 20:56:51', '2021-06-11 20:56:51', NULL),
(49, 0, 'cities', 'cities', 0, '2021-06-11 20:56:56', '2021-06-11 20:56:56', NULL),
(50, 0, 'logo', 'logo', 0, '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(51, 0, 'projects', 'projects', 0, '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(52, 0, 'properties', 'properties', 0, '2021-06-11 20:57:02', '2021-06-11 20:57:02', NULL),
(53, 0, 'users', 'users', 0, '2021-06-11 20:57:32', '2021-06-11 20:57:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(2, 'About', 'about', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(3, 'More information', 'more-information', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(4, 'News', 'news', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(5, 'Menu ch??nh', 'menu-chinh', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(6, 'V??? ch??ng t??i', 've-chung-toi', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(7, 'Th??ng tin th??m', 'thong-tin-them', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(8, 'Tin t???c', 'tin-tuc', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(2, 5, 'main-menu', '2021-06-11 20:56:49', '2021-06-11 20:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reference_id` int(10) UNSIGNED DEFAULT '0',
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, NULL, '/projects', NULL, 0, 'Projects', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(2, 1, 0, 0, NULL, '/properties', NULL, 0, 'Properties', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(3, 1, 0, 0, NULL, '/agents', NULL, 0, 'Agents', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(4, 1, 0, 2, 'Botble\\Page\\Models\\Page', '/news', NULL, 0, 'News', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(5, 1, 0, 0, NULL, '/careers', NULL, 0, 'Careers', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(6, 1, 0, 4, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(7, 2, 0, 3, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About us', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(8, 2, 0, 4, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact us', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(9, 2, 0, 0, NULL, '/careers', NULL, 0, 'Careers', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(10, 2, 0, 5, 'Botble\\Page\\Models\\Page', '/terms-conditions', NULL, 0, 'Terms & Conditions', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(11, 3, 0, 0, NULL, '/projects', NULL, 0, 'All projects', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(12, 3, 0, 0, NULL, '/properties', NULL, 0, 'All properties', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(13, 3, 0, 0, NULL, '/properties?type=sale', NULL, 0, 'Houses for sale', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(14, 3, 0, 0, NULL, '/properties?type=rent', NULL, 0, 'Houses for rent', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(15, 4, 0, 2, 'Botble\\Page\\Models\\Page', '/news', NULL, 0, 'Latest news', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(16, 4, 0, 2, 'Botble\\Blog\\Models\\Category', '/news/house-architecture', NULL, 0, 'House architecture', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(17, 4, 0, 4, 'Botble\\Blog\\Models\\Category', '/news/house-design', NULL, 0, 'House design', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(18, 4, 0, 6, 'Botble\\Blog\\Models\\Category', '/news/building-materials', NULL, 0, 'Building materials', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(19, 5, 0, 0, NULL, '/projects', NULL, 0, 'D??? ??n', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(20, 5, 0, 0, NULL, '/properties', NULL, 0, 'Nh?? - C??n H???', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(21, 5, 0, 0, NULL, '/agents', NULL, 0, '?????i l??', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(22, 5, 0, 8, 'Botble\\Page\\Models\\Page', '/tin-tuc', NULL, 0, 'Tin t???c', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(23, 5, 0, 0, NULL, '/careers', NULL, 0, 'Tuy???n d???ng', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(24, 5, 0, 10, 'Botble\\Page\\Models\\Page', '/lien-he', NULL, 0, 'Li??n h???', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(25, 6, 0, 9, 'Botble\\Page\\Models\\Page', '/ve-chung-toi', NULL, 0, 'V??? ch??ng t??i', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(26, 6, 0, 10, 'Botble\\Page\\Models\\Page', '/lien-he', NULL, 0, 'Li??n h???', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(27, 6, 0, 0, NULL, '/careers', NULL, 0, 'Tuy???n d???ng', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(28, 6, 0, 11, 'Botble\\Page\\Models\\Page', '/dieu-khoan-va-quy-dinh', NULL, 0, '??i???u kho???n v?? quy ?????nh', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(29, 7, 0, 0, NULL, '/projects', NULL, 0, 'D??? ??n', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(30, 7, 0, 0, NULL, '/properties', NULL, 0, 'Nh?? - C??n h???', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(31, 7, 0, 0, NULL, '/properties?type=sale', NULL, 0, 'Nh?? b??n', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(32, 7, 0, 0, NULL, '/properties?type=rent', NULL, 0, 'Nh?? cho thu??', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(33, 8, 0, 2, 'Botble\\Page\\Models\\Page', '/news', NULL, 0, 'Tin t???c m???i nh???t', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(34, 8, 0, 3, 'Botble\\Blog\\Models\\Category', '/news/kien-truc-nha', NULL, 0, 'Ki???n tr??c nh??', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(35, 8, 0, 5, 'Botble\\Blog\\Models\\Category', '/news/thiet-ke-nha', NULL, 0, 'Thi???t k??? nh??', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(36, 8, 0, 7, 'Botble\\Blog\\Models\\Category', '/news/vat-lieu-xay-dung', NULL, 0, 'V???t li???u x??y d???ng', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `reference_id`, `meta_key`, `meta_value`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-17 20:34:59', '2019-11-17 20:34:59'),
(2, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-17 20:53:34', '2019-11-17 20:53:34'),
(3, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-17 21:09:55', '2019-11-17 21:09:55'),
(4, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-17 21:18:11', '2019-11-17 21:18:11'),
(5, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\PropertyFeature', '2019-11-17 21:40:58', '2019-11-17 21:40:58'),
(6, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\PropertyFeature', '2019-11-17 21:41:43', '2019-11-17 21:41:43'),
(7, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-18 00:34:49', '2019-11-18 00:34:49'),
(8, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 00:47:52', '2019-11-18 00:47:52'),
(9, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 01:05:58', '2019-11-18 01:05:58'),
(10, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 01:12:07', '2019-11-18 01:12:07'),
(11, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-18 01:28:45', '2019-11-18 01:28:45'),
(12, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 01:49:36', '2019-11-18 01:49:36'),
(13, 9, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 02:02:19', '2019-11-18 02:02:19'),
(14, 10, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 02:16:53', '2019-11-18 02:16:53'),
(15, 11, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 02:22:48', '2019-11-18 02:22:48'),
(16, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-18 02:33:35', '2019-11-18 02:33:35'),
(17, 12, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 02:47:05', '2019-11-18 02:47:05'),
(18, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(19, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(20, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(21, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(22, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-18 02:59:01', '2019-11-18 02:59:01'),
(23, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-18 03:07:27', '2019-11-18 03:07:27'),
(24, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2019-11-18 03:07:27', '2019-11-18 03:07:27'),
(25, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-18 03:30:34', '2019-11-18 03:30:34'),
(26, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-18 03:38:13', '2019-11-18 03:38:13'),
(27, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-18 03:45:06', '2019-11-18 03:45:06'),
(28, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-18 03:53:20', '2019-11-18 03:53:20'),
(29, 13, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 07:23:02', '2019-11-18 07:23:02'),
(30, 14, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 07:36:29', '2019-11-18 07:36:29'),
(31, 15, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 07:44:44', '2019-11-18 07:44:44'),
(32, 16, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 07:59:14', '2019-11-18 07:59:14'),
(33, 17, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-18 08:13:07', '2019-11-18 08:13:07'),
(34, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 01:54:36', '2019-11-21 01:54:36'),
(35, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 02:28:09', '2019-11-21 02:28:09'),
(36, 9, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 02:40:25', '2019-11-21 02:40:25'),
(37, 10, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 02:58:55', '2019-11-21 02:58:55'),
(38, 11, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 03:16:25', '2019-11-21 03:16:25'),
(39, 12, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 03:25:22', '2019-11-21 03:25:22'),
(40, 18, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 05:51:54', '2019-11-21 05:51:54'),
(41, 19, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:03:11', '2019-11-21 06:03:11'),
(42, 20, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:12:15', '2019-11-21 06:12:15'),
(43, 21, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:26:59', '2019-11-21 06:26:59'),
(44, 22, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:56:50', '2019-11-21 06:56:50'),
(45, 23, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:18:36', '2019-11-21 07:18:36'),
(46, 24, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:26:48', '2019-11-21 07:26:48'),
(47, 25, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:34:38', '2019-11-21 07:34:38'),
(48, 26, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:40:46', '2019-11-21 07:40:46'),
(49, 27, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:45:34', '2019-11-21 07:45:34'),
(52, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:49:25', '2019-11-21 07:49:25'),
(53, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:49:35', '2019-11-21 07:49:35'),
(54, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:02', '2019-11-21 07:50:02'),
(55, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:17', '2019-11-21 07:50:17'),
(56, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:36', '2019-11-21 07:50:36'),
(57, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:58', '2019-11-21 07:50:58'),
(58, 28, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 19:53:17', '2019-11-21 19:53:17'),
(59, 29, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 19:59:16', '2019-11-21 19:59:16'),
(60, 30, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:29:01', '2019-11-22 00:29:01'),
(61, 31, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:42:28', '2019-11-22 00:42:28'),
(62, 32, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:47:18', '2019-11-22 00:47:18'),
(63, 33, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:57:15', '2019-11-22 00:57:15'),
(64, 34, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 01:06:09', '2019-11-22 01:06:09'),
(65, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-22 01:26:08', '2019-11-22 01:26:08'),
(66, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:26:31', '2019-11-22 01:26:31'),
(67, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:29:45', '2019-11-22 01:29:45'),
(68, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:33:23', '2019-11-22 01:33:23'),
(69, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:39:38', '2019-11-22 01:39:38'),
(74, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:43:10', '2019-11-30 19:43:10'),
(75, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:49:07', '2019-11-30 19:49:07'),
(76, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:52:42', '2019-11-30 19:52:42'),
(77, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:56:50', '2019-11-30 19:56:50'),
(79, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2021-01-03 17:26:32', '2021-01-03 17:26:32'),
(80, 2, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(81, 4, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(82, 6, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(83, 8, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(84, 10, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(85, 12, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(86, 14, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(87, 16, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(88, 18, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(89, 20, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(90, 22, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(91, 24, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(92, 26, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(93, 28, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(94, 30, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(95, 32, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(96, 34, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(97, 2, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Project', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(98, 4, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Project', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(99, 6, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Project', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(100, 8, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Project', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(101, 10, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Project', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(102, 12, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Project', '2021-04-29 20:46:36', '2021-04-29 20:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2016_06_10_230148_create_acl_tables', 1),
(11, '2016_06_14_230857_create_menus_table', 1),
(12, '2016_06_28_221418_create_pages_table', 1),
(13, '2016_10_05_074239_create_setting_table', 1),
(14, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(15, '2016_12_16_084601_create_widgets_table', 1),
(16, '2017_05_09_070343_create_media_tables', 1),
(17, '2017_11_03_070450_create_slug_table', 1),
(18, '2019_07_15_042406_change_site_title_from_settings_to_theme_options', 1),
(19, '2019_08_13_033145_remove_unused_columns_in_users_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2019_09_07_030654_update_menu_nodes_table', 1),
(22, '2019_09_07_045041_update_slugs_table', 1),
(23, '2019_09_07_050405_update_slug_reference_for_page', 1),
(24, '2019_09_08_014859_update_meta_boxes_table', 1),
(25, '2019_09_08_015629_update_meta_box_data_for_page', 1),
(26, '2019_09_12_073711_update_media_url', 1),
(27, '2019_09_12_073711_update_media_url_for_current_data', 1),
(28, '2019_10_20_002256_remove_parent_id_in_pages_table', 1),
(31, '2018_06_22_032304_create_real_estate_table', 2),
(32, '2015_06_29_025744_create_audit_history', 3),
(33, '2015_06_18_033822_create_blog_table', 4),
(34, '2019_09_07_035526_update_menu_node_reference_type_for_category', 4),
(35, '2019_09_07_050058_update_slug_reference_for_blog', 4),
(36, '2019_09_07_155716_update_language_meta_for_blog', 4),
(37, '2019_09_08_015552_update_meta_box_data_for_blog', 4),
(38, '2019_10_20_002342_remove_parent_id_in_tags_table', 4),
(39, '2016_10_03_032336_create_languages_table', 5),
(40, '2019_09_07_154718_update_lang_meta_table', 5),
(41, '2017_10_24_154832_create_newsletter_table', 6),
(42, '2016_06_17_091537_create_contacts_table', 7),
(43, '2015_08_15_122343_create_notes_table', 8),
(44, '2019_11_18_035125_add_column_type_into_re_properties_table', 9),
(45, '2019_11_18_035712_create_investor_table', 9),
(46, '2019_11_18_040153_update_real_estates_table', 9),
(47, '2019_11_18_041228_drop_table_re_property_categories', 10),
(48, '2019_11_18_082146_create_currencies_table', 11),
(49, '2019_11_18_061011_create_country_table', 12),
(50, '2019_11_18_061730_create_state_table', 12),
(51, '2019_11_18_062515_create_city_table', 12),
(52, '2019_11_19_063851_create_project_features_table', 13),
(53, '2019_11_21_090830_update_project_and_property_table', 14),
(54, '2019_11_21_130139_add_price_to_projects_table', 15),
(55, '2019_11_14_210650_create_consults_table', 16),
(56, '2019_11_26_024326_update_property_type', 17),
(57, '2019_06_24_211801_create_career_table', 18),
(58, '2019_12_03_123314_add_column_slug_into_cities_table', 19),
(59, '2019_12_03_124417_add_column_city_id_into_table_properties_and_projects', 19),
(60, '2017_05_18_080441_create_payment_tables', 20),
(61, '2019_12_10_140938_create_vendor_table', 20),
(62, '2019_12_15_025938_update_column_images_in_real_estate_tables', 20),
(63, '2019_12_17_064316_add_column_period_to_table_re_properties', 20),
(64, '2019_12_24_033049_add_column_author_into_re_properties_table', 20),
(65, '2019_12_24_083810_vendor_create_package_table', 20),
(66, '2019_12_27_004653_update_vendors_table_with_package_data', 20),
(68, '2020_01_08_002704_real_estate_create_type_table', 21),
(69, '2020_01_10_133700_change_re_types_to_re_categories', 22),
(70, '2016_10_07_193005_create_translations_table', 23),
(71, '2020_01_23_133752_update_account_tables', 24),
(72, '2020_02_03_144309_update_column_payment_channel', 25),
(73, '2020_02_06_143217_update_vendor_table', 26),
(74, '2020_02_11_133026_add_description_to_table_payments', 27),
(75, '2020_02_11_140823_create_transactions_table', 27),
(76, '2020_02_23_111922_fix_column_number_block_in_re_properties_table', 27),
(77, '2020_03_24_151004_add_moderation_status_into_properties_table', 28),
(78, '2020_03_25_030953_create_table_vendor_packages', 29),
(79, '2020_03_25_083610_add_column_expire_date_into_re_properties_table', 30),
(80, '2020_03_26_081108_add_column_auto_renew_to_re_properties_table', 31),
(81, '2020_03_16_072752_add_column_abbreviation_to_states_table', 32),
(82, '2020_03_28_020724_make_column_user_id_nullable_table_revisions', 33),
(83, '2020_03_23_093053_update_payments_table', 34),
(84, '2020_04_22_074304_add_column_never_expired_to_re_properties_table', 35),
(85, '2020_05_26_014304_add_column_provider_to_oauth_clients_table', 36),
(86, '2020_07_27_085437_add_icon_to_re_features', 37),
(90, '2020_08_21_102728_real_estate_create_facility_table', 38),
(91, '2020_08_22_024455_rename_table_for_accounts', 39),
(92, '2020_08_26_130439_add_column_username_into_table_re_accounts', 40),
(93, '2020_09_09_110653_update_table_careers', 41),
(94, '2020_09_15_111419_fix_old_data_for_re_properties', 42),
(95, '2020_10_05_030817_make_column_charge_id_nullable', 43),
(96, '2020_10_18_134416_fix_audit_logs_table', 44),
(97, '2020_10_24_133432_change_column_distance_to_string', 45),
(99, '2020_10_31_053746_add_column_description_into_re_categories_table', 46),
(100, '2019_01_05_053554_create_jobs_table', 47),
(101, '2020_12_05_112556_change_contact_page_to_a_page', 48),
(102, '2021_02_11_031126_update_price_column_in_projects_and_properties', 49),
(103, '2021_02_16_092633_remove_default_value_for_author_type', 50),
(104, '2021_03_08_024049_add_lat_long_into_real_estate_tables', 51),
(105, '2021_03_27_144913_add_customer_type_into_table_payments', 52),
(106, '2021_05_24_034720_make_column_currency_nullable', 53),
(107, '2021_06_10_091950_add_column_is_featured_to_table_re_accounts', 54);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', '<div>[featured-projects][/featured-projects]</div><div>[properties-by-locations][/properties-by-locations]</div><div>[properties-for-sale][/properties-for-sale]</div><div>[properties-for-rent][/properties-for-rent]</div><div>[featured-agents title=\"Featured Agents\"][/featured-agents]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" description=\"Your currently viewed properties.\"][/recently-viewed-properties]</div><div>[latest-news][/latest-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(2, 'News', '---', 1, NULL, 'default', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(3, 'About us', '<h4><span style=\"font-size:18px;\"><b>1. COMPANY</b><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong> PROFILE</strong></span></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.<br />\nWith the slogan &quot;Breaking time, through space&quot; with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field. Real estate, bringing people closer together, over the distance of time and space, is a reliable place for real estate investment - an area that is constantly evolving over time.</span></span></p>\n\n<blockquote>\n<h2 style=\"font-style: italic; text-align: center;\"><span style=\"font-size:24px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"color:#16a085;\">&quot;Breaking time, through space&quot;</span></span></strong></span></h2>\n</blockquote>\n\n<h4 style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/asset-3-at-3x.png\" style=\"width: 90%;\" /></h4>\n\n<h4><span style=\"font-size:18px;\"><b><font face=\"Arial, Helvetica, sans-serif\">2. VISION&nbsp;</font></b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Acquiring domestic areas.<br />\n- Reaching far across continents.</span></span></p>\n\n<h4><span style=\"font-size:18px;\"><b>3. MISSION</b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Creating the community<br />\n- Building destinations<br />\n- Nurture happiness</span></span></p>\n\n<p><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/vietnam-office-4.jpg\" /></p>\n', 1, NULL, 'default', 0, 'Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\nWith the slogan \"Breaking time, through space\" with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(4, 'Contact', '<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Directions</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(5, 'Terms & Conditions', '<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Access to and use of the Flex Home website is subject to the following terms, conditions, and relevant laws of Vietnam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Copyright</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Content</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/copyright.jpg\" style=\"width: 90%;\" /></span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Note on&nbsp;connected sites</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n', 1, NULL, 'default', 0, 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(6, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(7, 'Trang ch???', '<div>[featured-projects][/featured-projects]</div><div>[properties-by-locations][/properties-by-locations]</div><div>[properties-for-sale][/properties-for-sale]</div><div>[properties-for-rent][/properties-for-rent]</div><div>[featured-agents title=\"?????i l?? n???i b???t\"][/featured-agents]</div><div>[recently-viewed-properties title=\"Nh??/c??n h??? ???? xem\" description=\"C??c c??n h???/nh?? m?? b???n ???? xem.\"][/recently-viewed-properties]</div><div>[latest-news][/latest-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(8, 'Tin t???c', '---', 1, NULL, 'default', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(9, 'V??? ch??ng t??i', '<h4><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. S?? L?????C V??? C&Ocirc;NG TY</strong></span></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">???????c th&agrave;nh l???p ng&agrave;y 28 - 08 -1993 (ti???n th&acirc;n l&agrave; c&ocirc;ng ty TNHH X&acirc;y D???ng Tr?????ng Th???nh Ph&aacute;t), Flex Home ho???t ?????ng trong l??nh v???c kinh doanh b???t ?????ng s???n, x&acirc;y bi???t th??? cho thu&ecirc;.&nbsp;<br />\nV???i kh???u hi???u &nbsp;&ldquo;??&aacute;nh b???t th???i gian, xuy&ecirc;n qua kh&ocirc;ng gian&rdquo; c&ugrave;ng chi???n l?????c ph&aacute;t tri???n b???n v???ng, l???y B???t ?????ng S???n l&agrave;m l??nh v???c tr???ng t&acirc;m, Flex Home kh&ocirc;ng ng???ng k???t n???i gi???a ng?????i c???n mua v&agrave; ng?????i c???n b&aacute;n trong l??nh v???c b???t ?????ng s???n, ????a m???i ng?????i x&iacute;ch l???i g???n nhau h??n, v?????t qua kho???ng c&aacute;ch v??? th???i gian v&agrave; kh&ocirc;ng gian, l&agrave; n??i ??&aacute;ng tin t?????ng cho s??? ?????u t?? b???t ?????ng s???n - m???t l??nh v???c kh&ocirc;ng ng???ng ph&aacute;t tri???n qua th???i gian.</span></span></p>\n\n<blockquote>\n<h3 style=\"text-align: center;\"><span style=\"font-size:24px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><em><strong><span style=\"color:#1abc9c;\">&ldquo;??&aacute;nh b???t th???i gian, xuy&ecirc;n qua kh&ocirc;ng gian&rdquo; </span></strong></em></span></span></h3>\n</blockquote>\n\n<h3 style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/asset-4-at-3x.png\" style=\"width: 90%;\" /></h3>\n\n<h4><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. T???M NH&Igrave;N</strong></span></span></h4>\n\n<ul>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Th&acirc;u t&oacute;m ?????a b&agrave;n trong n?????c.</span></span></li>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">V????n xa kh???p c&aacute;c ch&acirc;u l???c.</span></span></li>\n</ul>\n\n<h4><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. S??? M???NG</strong></span></span></h4>\n\n<ul>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Ki???n t???o c???ng ?????ng</span></span></li>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">X&acirc;y d???ng ??i???m ?????n</span></span></li>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Vun ?????p ni???m vui</span></span></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/vietnam-office-4.jpg\" style=\"width: 100%;\" /></p>\n\n<p>&nbsp;</p>\n', 1, NULL, 'default', 0, '???????c th??nh l???p ng??y 28 - 08 -1993 (ti???n th??n l?? c??ng ty TNHH X??y D???ng Tr?????ng Th???nh Ph??t), Flex Home ho???t ?????ng trong l??nh v???c kinh doanh b???t ?????ng s???n, x??y bi???t th??? cho thu??.??V???i kh???u hi???u ?????????nh b???t th???i gian, xuy??n qua kh??ng gian??? c??ng chi???n l?????c ph??t tri???n b???n v???ng, Flex Home kh??ng ng???ng k???t n???i gi???a ng?????i c???n mua v?? ng?????i c???n b??n trong l??nh v???c b???t ?????ng s???n', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(10, 'Li??n h???', '<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>T??m ???????ng ??i</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(11, '??i???u kho???n v?? quy ?????nh', '<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Vi???c truy c???p v&agrave; s??? d???ng trang web c???a Flex Home ph??? thu???c v&agrave;o nh???ng ??i???u kho???n, ??i???u ki???n d?????i ??&acirc;y, v&agrave; lu???t ph&aacute;p li&ecirc;n quan c???a Vi???t Nam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Quy???n t&aacute;c gi???&nbsp;</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Quy???n t&aacute;c gi??? v&agrave; c&aacute;c quy???n s??? h???u tr&iacute; tu??? kh&aacute;c ?????i v???i m???i v??n b???n, h&igrave;nh ???nh, &acirc;m thanh, ph???n m???m v&agrave; c&aacute;c n???i dung kh&aacute;c tr&ecirc;n trang web n&agrave;y thu???c quy???n s??? h???u c???a Flex Home c&ugrave;ng c&aacute;c c&ocirc;ng ty th&agrave;nh vi&ecirc;n. Ng?????i truy c???p ???????c ph&eacute;p xem c&aacute;c n???i dung trong trang web, tr&iacute;ch d???n n???i dung b???ng c&aacute;ch in ???n, t???i v??? ????a c???ng v&agrave; ph&acirc;n ph&aacute;t cho ng?????i kh&aacute;c ch??? v???i m???c ??&iacute;ch phi th????ng m???i, cung c???p th&ocirc;ng tin ho???c m???c ??&iacute;ch c&aacute; nh&acirc;n. B???t k??? n???i dung n&agrave;o t??? trang web n&agrave;y ?????u kh&ocirc;ng ???????c s??? d???ng ????? b&aacute;n ho???c ph&acirc;n t&aacute;n ????? ki???m l???i v&agrave; c??ng kh&ocirc;ng ???????c ch???nh s???a ho???c ????a v&agrave;o b???t k??? ???n ph???m ho???c trang web n&agrave;o kh&aacute;c.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. N???i dung</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Th&ocirc;ng tin tr&ecirc;n trang web n&agrave;y ???????c bi&ecirc;n so???n v???i s??? tin t?????ng cao ????? nh??ng ch??? d&agrave;nh cho c&aacute;c m???c ??&iacute;ch nghi&ecirc;n c???u th&ocirc;ng tin t???ng qu&aacute;t. Tuy ch&uacute;ng t&ocirc;i n??? l???c duy tr&igrave; th&ocirc;ng tin c???p nh???t v&agrave; chu???n x&aacute;c, nh??ng ch&uacute;ng t&ocirc;i kh&ocirc;ng kh???ng ?????nh hay b???o ?????m theo b???t k??? c&aacute;ch th???c n&agrave;o v??? s??? ?????y ?????, ch&iacute;nh x&aacute;c, ??&aacute;ng tin c???y, th&iacute;ch h???p ho???c c&oacute; s???n li&ecirc;n quan ?????n trang web, ho???c th&ocirc;ng tin, s???n ph???m, d???ch v???, ho???c h&igrave;nh ???nh li&ecirc;n quan trong trang web v&igrave; b???t c??? m???c ??&iacute;ch g&igrave;. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home v&agrave; m???i nh&acirc;n vi&ecirc;n, nh&agrave; qu???n l&yacute;, v&agrave; c&aacute;c b&ecirc;n ?????i di???n ho&agrave;n to&agrave;n kh&ocirc;ng ch???u tr&aacute;ch nhi???m g&igrave; ?????i v???i b???t k??? t???n th???t, thi???t h???i ho???c chi ph&iacute; ph&aacute;t sinh do vi???c truy c???p v&agrave; s??? d???ng trang web n&agrave;y v&agrave; c&aacute;c trang web ???????c k???t n???i v???i n&oacute;, bao g???m nh??ng kh&ocirc;ng gi???i h???n, vi???c m???t ??i l???i nhu???n, c&aacute;c kho???n l??? tr???c ti???p ho???c gi&aacute;n ti???p. Ch&uacute;ng t&ocirc;i c??ng kh&ocirc;ng ch???u tr&aacute;ch nhi???m, ho???c li&ecirc;n ?????i tr&aacute;ch nhi???m n???u trang web t???m th???i kh&ocirc;ng th??? truy c???p do c&aacute;c v???n ????? k??? thu???t n???m ngo&agrave;i t???m ki???m so&aacute;t c???a ch&uacute;ng t&ocirc;i. M???i b&igrave;nh lu???n, g???i &yacute;, h&igrave;nh ???nh, &yacute; t?????ng v&agrave; nh???ng th&ocirc;ng tin hay t&agrave;i li???u kh&aacute;c m&agrave; ng?????i s??? d???ng chuy???n cho ch&uacute;ng t&ocirc;i th&ocirc;ng qua trang web n&agrave;y s??? tr??? th&agrave;nh t&agrave;i s???n ?????c quy???n c???a ch&uacute;ng t&ocirc;i, bao g???m c??? c&aacute;c quy???n c&oacute; th??? ph&aacute;t sinh trong t????ng lai g???n li???n v???i ch&uacute;ng t&ocirc;i.</span></span></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/copyright.jpg\" style=\"width: 90%;\" /></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. L??u &yacute; c&aacute;c trang web ???????c k???t n???i</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">T???i nhi???u ??i???m trong trang web, ng?????i s??? d???ng c&oacute; th??? nh???n ???????c c&aacute;c k???t n???i ?????n c&aacute;c trang web kh&aacute;c li&ecirc;n quan ?????n m???t kh&iacute;a c???nh c??? th???. ??i???u n&agrave;y kh&ocirc;ng c&oacute; ngh??a l&agrave; ch&uacute;ng t&ocirc;i c&oacute; li&ecirc;n quan ?????n nh???ng trang web hay c&ocirc;ng ty s??? h???u nh???ng trang web n&agrave;y. D&ugrave; ch&uacute;ng t&ocirc;i c&oacute; &yacute; ?????nh k???t n???i ng?????i s??? d???ng ?????n c&aacute;c trang web c???n quan t&acirc;m, nh??ng ch&uacute;ng t&ocirc;i v&agrave; c&aacute;c nh&acirc;n vi&ecirc;n, nh&agrave; qu???n l&yacute;, ho???c c&aacute;c b&ecirc;n ?????i di???n ho&agrave;n to&agrave;n kh&ocirc;ng ch???u tr&aacute;ch nhi???m ho???c li&ecirc;n ?????i ch???u tr&aacute;ch nhi???m g&igrave; ?????i v???i c&aacute;c trang web kh&aacute;c v&agrave; th&ocirc;ng tin ch???a ?????ng trong ??&oacute;.</span></span></p>\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n', 1, NULL, 'default', 0, 'Quy???n t??c gi??? v?? c??c quy???n s??? h???u tr?? tu??? kh??c ?????i v???i m???i v??n b???n, h??nh ???nh, ??m thanh, ph???n m???m v?? c??c n???i dung kh??c tr??n trang web n??y thu???c quy???n s??? h???u c???a Flex Home c??ng c??c c??ng ty th??nh vi??n. Ng?????i truy c???p ???????c ph??p xem c??c n???i dung trong trang web, tr??ch d???n n???i dung b???ng c??ch in ???n, t???i v??? ????a c???ng v?? ph??n ph??t cho ng?????i kh??c ch??? v???i m???c ????ch phi th????ng m???i.', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(12, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>????? s??? d???ng trang web n??y, ch??ng t??i ??ang s??? d???ng Cookie v?? thu th???p m???t s??? D??? li???u. ????? tu??n th??? GDPR c???a Li??n minh Ch??u ??u, ch??ng t??i cho b???n l???a ch???n n???u b???n cho ph??p ch??ng t??i s??? d???ng m???t s??? Cookie nh???t ?????nh v?? thu th???p m???t s??? D??? li???u.</p><h4>D??? li???u c???n thi???t</h4><p>D??? li???u c???n thi???t l?? c???n thi???t ????? ch???y Trang web b???n ??ang truy c???p v??? m???t k??? thu???t. B???n kh??ng th??? h???y k??ch ho???t ch??ng.</p><p>- Session Cookie: PHP s??? d???ng Cookie ????? x??c ?????nh phi??n c???a ng?????i d??ng. N???u kh??ng c?? Cookie n??y, trang web s??? kh??ng ho???t ?????ng.</p><p>- XSRF-Token Cookie: Laravel t??? ?????ng t???o \"token\" CSRF cho m???i phi??n ng?????i d??ng ??ang ho???t ?????ng do ???ng d???ng qu???n l??. Token n??y ???????c s??? d???ng ????? x??c minh r???ng ng?????i d??ng ???? x??c th???c l?? ng?????i th???c s??? ????a ra y??u c???u ?????i v???i ???ng d???ng.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, 'BCG sets great store by real estate negotiations', 'BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.', '<h2 style=\"font-style:italic;\">The profit of Bamboo Capital Group (BCG) is expected to grow tremendously during 2019-2023 thanks to a series of real estate as well as renewable energy projects, especially Radisson Blu Hoi An and King Crown Village Thao Dien.</h2>\r\n\r\n<p>BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.</p>\r\n\r\n<p>BCG expects to reach the after-tax profit of VND312 billion ($13.56 million) this year, VND681.5 ($29.6 million) in 2020, and VND826.5 billion ($35.93 million) in 2023. In real estate, BCG has implemented the Radisson Blu Hoi An project with the scale of 734 apartments and coastal villas, King Crown Village Thao Dien in District 2, Ho Chi Minh City with 17 villas in the first phase and serviced apartments and a hotel, as well as offices for lease in the second phase.</p>\r\n\r\n<p>BCG leaders shared that in 2019-2020, Radisson Blu Hoi An and King Crown Village Thao Dien will bring VND900 billion ($39.13 million) in profit to BCG, and the group is negotiating to transfer part of the group&rsquo;s capital in the two projects. BCG owns a hundred per cent in Radisson Blu Hoi An, and 48.5 per cent in King Crown Village Thao Dien.</p>\r\n\r\n<p>&quot;If we close the deals with our partners soon, BCG will fulfil the profit plan for 2019. Currently, the deal is still in progress, but we are confident in implementing our 2019 profit plan. If the deal is delayed for any reason, the profit will be transferred by the beginning of 2020,&quot; Pham Minh Tuan, deputy CEO of BCG, shared.</p>\r\n\r\n<p>The upcoming real estate projects of BCG include Condotel Pegas Nha Trang (2.74 hectares, implemented in 2020-2021), Bao Loc urban area (??????17ha, in 2019-2023), Loc Phat residential area (Bao Loc, Lam Dong &ndash; 46.9ha, implemented from 2019 to 2022), Hoa Ninh residential area (Di Linh, Lam Dong &ndash;49.3ha, implemented in 2020-2023), Hiep Binh Chanh urban area (??????6.3ha, implemented in 2020-2022).</p>\r\n\r\n<p>Regarding the capital to meet BCG&#39;s investment needs, according to Nguyen Ho Nam, chairman of BCG, most of BCG&#39;s projects are co-operating with international corporations on issues like technical and technological issues, branding, or capital co-operation.</p>\r\n\r\n<p>BCG has signed a contract with KPMG Singapore to become the exclusive consultant for BCG to seek international funding and domestic banks to increase credit room for BCG to implement a new project. Along with that, BCG received capital contributions from South Korean investors including Hanwha Energy involved in solar power plant projects and real estate firm Woomi.</p>\r\n\r\n<p>BCG is also working with a strategic partner from Europe. In the field of renewable energy, BCG finished two solar energy projects in Long An with the total capacity of over 140MW. Of these, the BCG-CME Long An 1 solar power plant, which in BCG holds 37.5 per cent, has the capacity of 40.5MW and is expected to bring revenue of VND140-150 billion ($6.1-6.5 million) per year from 2020.</p>\r\n\r\n<p>BCG-CME Long An 2 (GAIA) has the capacity of 100.5MW and is expected to launch operations in this November, bringing revenue of about VND320 billion per year from 2020. BCG has a 32.5 per cent stake in GAIA.</p>\r\n\r\n<p>BCG-CME Long An 1 solar power plant sells electricity to Electricity of Vietnam at the price of 9.35 US cent per kW for 20 years, while GAIA hopes to sell electricity at 8.72 US cent per kW. In addition to the two projects above, BCG is trying to complete procedures for other solar power plants in Long An (100MW), Dak Lak (50MW), Gia Lai (300MW), Tay Ninh (165MW), a surface solar power plant in Quang Nam (200MW), a wind power plant in Soc Trang (50MW).</p>\r\n\r\n<p>At the two solar power plants in Long An, BCG worked with Vietnam-Oman Investment (VOI) and took up VND2 trillion in loans from local banks ($86.96 million &ndash; 65 per cent of the total investment capital of the two projects).</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/1-2.jpg', 579, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(2, 'Private Home Sales Drop 27% In October', 'New private home sales in Singapore fell 27% in October from September, reported Channel News Asia, based on the data released by the Urban Redevelopment Authority (URA).\r\nAccording to URA data, developers only sold 928 units in October (955 units including executive condominiums), compared to 1,270 units from the previous month', '<p>New private home sales in Singapore fell 27% in October from September, reported Channel News Asia, based on the data released by the&nbsp;Urban Redevelopment Authority (URA).</p>\r\n\r\n<p><strong>According to URA data,&nbsp;developers only sold 928 units in October (955 units including executive condominiums), compared to 1,270 units from the previous month.</strong></p>\r\n\r\n<p>However, on a year-to-year comparison, the figures show an 84.9% increase.</p>\r\n\r\n<p>The new homes sold in October in the Core Central Region (CCR) tripled to 182 units from September, the biggest recorded since March 2016, with Singaporeans buying 133 of those units.</p>\r\n\r\n<p>Analysts said the good performance was mainly due to new project launches in the area, including&nbsp;<strong>Midtown<a href=\"https://www.propertyguru.com.sg/property-for-sale/at-midtown-bay-23760\"> </a>Bay Residences</strong>,&nbsp;<strong>Neu at Novena</strong>&nbsp;and&nbsp;<strong>Royalgreen</strong>. The other new launch this month was Midwood, within the Outside of Central Region (OCR)</p>\r\n\r\n<p>The deficiency in major launches in the city fringe and mass-market segments like the OCR could have been a factor in the sales drop, said OrangeTee and Tie head of research and consultancy Christine Sun.</p>\r\n\r\n<p>&ldquo;Sales volumes tend to be lower when more luxury projects are being launched in a particular month, owing to the higher price tags and lower affordability,&rdquo; she said.</p>\r\n\r\n<p>URA Realis data show that this year saw 104 non-landed new homes sales reach S$5 million and above, which is the highest mark since 155 were purchased from January to October 2011, added Sun.</p>\r\n\r\n<p>High-profile transactions, such as James Dyson&rsquo;s purchase of Singapore&rsquo;s most expensive apartment, contributed to &ldquo;significant positive sentiments for developer sales,&rdquo; said property analyst Ong Kah Seng.</p>\r\n\r\n<p>&ldquo;Despite the global trade and geopolitical uncertainties, we believe demand for Singapore private homes is still relatively stable given the tight labour market, favourable interest rate environment, and relatively healthy household balance sheet,&rdquo; said Tricia Song, Colliers International head of research for Singapore.</p>\r\n\r\n<p>Ong believes the country&rsquo;s properties will become more attractive for foreign buyers wanting stable investments.</p>\r\n\r\n<p>&ldquo;There&rsquo;s increasing international attractiveness of Singapore residential properties as offering longer term stability to all profiles of buyers, including from foreigners who are eschewing investments in Hong Kong due to that city&rsquo;s heightening social turbulence,&rdquo; he noted.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/2-2.jpg', 212, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(3, 'Singapore Overtakes Hong Kong In Terms Of Property Investment Prospects', 'Singapore now claims the top spot for real estate investment prospects in terms of price increases in 2020. Hong Kong, rocked by months of violent political protests, has fallen from 14th place to the bottom of the pile in 2019.', '<p>The fortunes of Singapore and Hong Kong &ndash; two of Asia&rsquo;s hottest property markets &ndash; are going in different directions, reported Bloomberg citing a Urban Land Institute and PricewaterhouseCoopers LLP report.</p>\r\n\r\n<p><strong>Singapore now claims the top spot for real estate investment prospects&nbsp;in terms of price increases in 2020. Hong Kong, rocked by months of violent political protests, has fallen from 14th place to the bottom of the pile in 2019.</strong></p>\r\n\r\n<p>Hong Kong&rsquo;s drop to the least-favoured destination for real estate investment next year is due to its retail and tourism sectors taking a beating, affecting economic growth.</p>\r\n\r\n<p>The city-state has benefited from a surge in interest among investors who are steering clear of Hong Kong and China, which are viewed as &ldquo;geopolitical flashpoints&rdquo;.</p>\r\n\r\n<p>For the past few quarters, apartment prices in Singapore have rebounded, showing resilience in the residential market, with the office sector mostly absorbing the oversupply.</p>\r\n\r\n<p>Hong Kong&rsquo;s problems bode well for Singapore, at least for a little while, according to Urban Land Institute CEO Ed Walter.</p>\r\n\r\n<p>&ldquo;A lot of theory in investing is less about what was, versus what is or what is going to be,&rdquo; he added.</p>\r\n\r\n<p><strong>Singapore also saw a rise in property transactions in the first half, with majority of the activities driven by cross-border capital. Deals amounted to $4.9 billion (S$6.6 billion) in the period, a 73% year-on-year growth.</strong></p>\r\n\r\n<p>Walter described Hong Kong as having a &ldquo;very resilient market&rdquo;, backed by its high property prices. He believes that after the protests, sectors such as retail can recover quickly.</p>\r\n\r\n<p>&ldquo;The bigger issue is what happens from a political perspective and what does that signal about Hong Kong&rsquo;s place as a financial centre,&rdquo; he said.</p>\r\n\r\n<p><strong>Singapore placed second-to-last among 22 centres as recently as 2017, overtaken by cities such as Sydney, Tokyo and Bangalore as vacancies rose and rents dropped. In 2017, Hong Kong placed 18th.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://flex-home.botble.com/storage/properties/3-2.jpg\" style=\"width: 820px; height: 410px;\" /></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/6-1.jpg', 832, NULL, '2021-06-11 20:56:55', '2021-06-11 20:57:43'),
(4, 'S. Korea???s Big Investors Flocking to Overseas Real Estate', 'An increasing number of South Korean investors are getting interested in real estate in foreign countries, especially the United States and Japan where regulations are relatively lax and property values are stable.', '<h2>KEB Hana Bank held a seminar on the global real estate investment strategy at its head office in Seoul on May 23 and nearly 100 customers attended it.</h2>\r\n\r\n<p>Hana Bank&rsquo;s private banker (PB) business division held the seminar for affluent customers to explain the procedure for taking out loans and remitting money to make an investment in real estate in major cities around the world, including New York, Los Angeles in the United States and Tokyo in Japan.</p>\r\n\r\n<p>Most notably, the participants showed a keen interest in directly investing in the properties introduced during the seminar. Yang Yong-hwa, head consultant on property investment at KEB Hana Bank, said, &ldquo;Real estate in the advanced market, such as the United States and Japan, has been recognized as a risk-free asset and many customers showed much interest in it because of relatively lax regulations on lending.&rdquo;</p>\r\n\r\n<h3 style=\"text-align: center;\"><img alt=\"S. Korea???s Big Investors Flocking to Overseas Real Estate\" longdesc=\"S. Korea???s Big Investors Flocking to Overseas Real Estate\" src=\"https://flex-home.botble.com/storage/properties/32223-43914-378.jpg\" style=\"width: 573px; height: 533px;\" /></h3>\r\n\r\n<p style=\"text-align: center;\"><em>S. Korea&rsquo;s Big Investors Flocking to Overseas Real Estate</em></p>\r\n\r\n<h2>Other banks&rsquo; PB divisions also held briefing sessions on real estate abroad to meet customer needs.</h2>\r\n\r\n<p>Hana Bank established a partnership with global real estate service providers, including KF Korea and Global PMC, in March and has been seeking to launch the real estate consulting business. KB Kookmin Bank also introduced the global KB real estate consulting service in 2014, while Woori Bank is holding consultation sessions on investment in foreign properties by making use of its global network which is the largest among domestic banks. Shinhan Bank established a partnership with global real estate service firm, KF Korea, in April and will hold the first seminar on overseas real estate on May 27.</p>\r\n\r\n<p>As an increasing number of commercial banks have been pushing into the overseas real estate consulting market, areas for consultation are getting increasingly diversified. Tokyo has the highest demand as it is relatively easy to access and the price of real estate there is on the rise before the 2020 Summer Olympics. However, emerging countries that have a high growth potential, such as Vietnam, recently see more investment coming in.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/download.jpg', 503, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(5, 'BCG thi???t l???p c??c cu???c ????m ph??n b???t ?????ng s???n', 'C??c nh?? l??nh ?????o BCG ???? chia s??? v???i c??c nh?? ?????u t?? t???i m???t cu???c h???p trong th??ng n??y r???ng b???t ?????ng s???n v?? n??ng l?????ng t??i t???o s??? l?? hai ho???t ?????ng ch??nh c???a nh??m. Trong l??nh v???c s???n xu???t, BCG ch??? gi??? l???i c??c doanh nghi???p ???? ???????c c?? c???u l???i th??nh c??ng, ?????t m???c hi???u qu??? kinh t??? c???n thi???t v?? t???o n???n t???ng v???ng ch???c ????? ph??t tri???n th??nh c??c doanh nghi???p l???n h??n.', '<h4><em>L???i nhu???n c???a T???p ??o&agrave;n Bamboo Capital (BCG) d??? ki???n s??? t??ng tr?????ng r???t l???n trong giai ??o???n 2019-2023 nh??? m???t lo???t c&aacute;c d??? &aacute;n b???t ?????ng s???n c??ng nh?? n??ng l?????ng t&aacute;i t???o, ?????c bi???t l&agrave; Radisson Blu H???i An v&agrave; King Crown Village Th???o ??i???n.</em></h4>\r\n\r\n<p>C&aacute;c nh&agrave; l&atilde;nh ?????o BCG ??&atilde; chia s??? v???i c&aacute;c nh&agrave; ?????u t?? t???i m???t cu???c h???p trong th&aacute;ng n&agrave;y r???ng b???t ?????ng s???n v&agrave; n??ng l?????ng t&aacute;i t???o s??? l&agrave; hai ho???t ?????ng ch&iacute;nh c???a nh&oacute;m. Trong l??nh v???c s???n xu???t, BCG ch??? gi??? l???i c&aacute;c doanh nghi???p ??&atilde; ???????c c?? c???u l???i th&agrave;nh c&ocirc;ng, ?????t m???c hi???u qu??? kinh t??? c???n thi???t v&agrave; t???o n???n t???ng v???ng ch???c ????? ph&aacute;t tri???n th&agrave;nh c&aacute;c doanh nghi???p l???n h??n.</p>\r\n\r\n<p>BCG d??? ki???n ??????s??? ?????t m???c l???i nhu???n sau thu??? l&agrave; 312 t??? ?????ng (13,56 tri???u ??&ocirc; la) trong n??m nay, 681,5 ?????ng (29,6 tri???u ??&ocirc; la) v&agrave;o n??m 2020 v&agrave; 826,5 t??? ?????ng (35,93 tri???u ??&ocirc; la) v&agrave;o n??m 2023. Trong b???t ?????ng s???n, BCG ??&atilde; tri???n khai Radisson D??? &aacute;n Blu H???i An v???i quy m&ocirc; 734 c??n h??? v&agrave; bi???t th??? ven bi???n, King Crown Village Th???o ??i???n t???i Qu???n 2, Th&agrave;nh ph??? H??? Ch&iacute; Minh v???i 17 bi???t th??? trong giai ??o???n ?????u v&agrave; c??n h??? d???ch v??? v&agrave; m???t kh&aacute;ch s???n, c??ng nh?? v??n ph&ograve;ng cho thu&ecirc; trong l???n th??? hai giai ??o???n.</p>\r\n\r\n<p>L&atilde;nh ?????o BCG chia s??? r???ng trong giai ??o???n 2019-2020, Radisson Blu H???i An v&agrave; King Crown Village Thao ??i???n s??? mang l???i 900 t??? ?????ng (39,13 tri???u USD) cho BCG, v&agrave; t???p ??o&agrave;n n&agrave;y ??ang ??&agrave;m ph&aacute;n ????? chuy???n m???t ph???n v???n c???a nh&oacute;m trong hai d??? &aacute;n. BCG s??? h???u m???t tr??m ph???n tr??m t???i Radisson Blu H???i An v&agrave; 48,5 ph???n tr??m t???i King Crown Village Th???o ??i???n.</p>\r\n\r\n<p>&quot;N???u ch&uacute;ng t&ocirc;i s???m ho&agrave;n t???t c&aacute;c th???a thu???n v???i c&aacute;c ?????i t&aacute;c, BCG s??? ho&agrave;n th&agrave;nh k??? ho???ch l???i nhu???n cho n??m 2019. Hi???n t???i, th???a thu???n v???n ??ang ???????c ti???n h&agrave;nh, nh??ng ch&uacute;ng t&ocirc;i t??? tin th???c hi???n k??? ho???ch l???i nhu???n n??m 2019 c???a m&igrave;nh. l???i nhu???n s??? ???????c chuy???n v&agrave;o ?????u n??m 2020, &quot;Ph???m Minh Tu???n, ph&oacute; gi&aacute;m ?????c ??i???u h&agrave;nh c???a BCG, chia s???.</p>\r\n\r\n<p>C&aacute;c d??? &aacute;n b???t ?????ng s???n s???p t???i c???a BCG bao g???m Condotel Pegas Nha Trang (2,74 ha, th???c hi???n trong giai ??o???n 2020-2021), khu ??&ocirc; th??? B???o L???c (17ha, n??m 2019-2023), khu d&acirc;n c?? L???c Ph&aacute;t (B???o L???c, L&acirc;m ?????ng - 46.9 ha, th???c hi???n t??? 2019 ?????n 2022), khu d&acirc;n c?? H&ograve;a Ninh (Di Linh, L&acirc;m ?????ng, 49.3ha, th???c hi???n giai ??o???n 2020-2023), khu ??&ocirc; th??? Hi???p B&igrave;nh (6.3ha, th???c hi???n giai ??o???n 2020-2022).</p>\r\n\r\n<p>V??? v???n ????? ??&aacute;p ???ng nhu c???u ?????u t?? c???a BCG, theo &ocirc;ng Nguy???n H??? Nam, Ch??? t???ch BCG, h???u h???t c&aacute;c d??? &aacute;n c???a BCG ?????u h???p t&aacute;c v???i c&aacute;c t???p ??o&agrave;n qu???c t??? v??? c&aacute;c v???n ????? nh?? v???n ????? k??? thu???t v&agrave; c&ocirc;ng ngh???, x&acirc;y d???ng th????ng hi???u ho???c h???p t&aacute;c v???n.</p>\r\n\r\n<p>BCG ??&atilde; k&yacute; h???p ?????ng v???i KPMG Singapore ????? tr??? th&agrave;nh nh&agrave; t?? v???n ?????c quy???n cho BCG t&igrave;m ki???m ngu???n t&agrave;i tr??? qu???c t??? v&agrave; ng&acirc;n h&agrave;ng trong n?????c ????? t??ng ph&ograve;ng t&iacute;n d???ng cho BCG ????? th???c hi???n d??? &aacute;n m???i. C&ugrave;ng v???i ??&oacute;, BCG ??&atilde; nh???n ???????c v???n g&oacute;p t??? c&aacute;c nh&agrave; ?????u t?? H&agrave;n Qu???c bao g???m Hanwha Energy tham gia v&agrave;o c&aacute;c d??? &aacute;n nh&agrave; m&aacute;y ??i???n m???t tr???i v&agrave; c&ocirc;ng ty b???t ?????ng s???n Woomi.</p>\r\n\r\n<p>BCG c??ng ??ang l&agrave;m vi???c v???i m???t ?????i t&aacute;c chi???n l?????c t??? ch&acirc;u &Acirc;u. Trong l??nh v???c n??ng l?????ng t&aacute;i t???o, BCG ??&atilde; ho&agrave;n th&agrave;nh hai d??? &aacute;n n??ng l?????ng m???t tr???i ??? Long An v???i t???ng c&ocirc;ng su???t h??n 140MW. Trong s??? n&agrave;y, nh&agrave; m&aacute;y ??i???n m???t tr???i BCG-CME Long An 1, t???i BCG n???m gi??? 37,5%, c&oacute; c&ocirc;ng su???t 40,5MW v&agrave; d??? ki???n ??????s??? mang l???i doanh thu 140-150 t??? ?????ng (6,1-6,5 tri???u USD) m???i n??m t??? n??m 2020.</p>\r\n\r\n<p>BCG-CME Long An 2 (GAIA) c&oacute; c&ocirc;ng su???t 100,5MW v&agrave; d??? ki???n ??????s??? ra m???t ho???t ?????ng v&agrave;o th&aacute;ng 11 n&agrave;y, mang l???i doanh thu kho???ng 320 t??? ?????ng m???i n??m t??? n??m 2020. BCG c&oacute; 32,5% c??? ph???n c???a GAIA.</p>\r\n\r\n<p>Nh&agrave; m&aacute;y ??i???n m???t tr???i BCG-CME Long An 1 b&aacute;n ??i???n cho ??i???n l???c Vi???t Nam v???i m???c gi&aacute; 9,35 cent M??? m???i kW trong 20 n??m, trong khi GAIA hy v???ng s??? b&aacute;n ??i???n ??? m???c 8,72 cent m???i kW. Ngo&agrave;i hai d??? &aacute;n tr&ecirc;n, BCG ??ang c??? g???ng ho&agrave;n t???t c&aacute;c th??? t???c cho c&aacute;c nh&agrave; m&aacute;y ??i???n m???t tr???i kh&aacute;c ??? Long An (100MW), ????k L??k (50MW), Gia Lai (300MW), T&acirc;y Ninh (165MW), m???t nh&agrave; m&aacute;y ??i???n m???t tr???i ??? Qu???ng Nam (200MW), m???t nh&agrave; m&aacute;y ??i???n gi&oacute; ??? S&oacute;c Tr??ng (50MW).</p>\r\n\r\n<p>T???i hai nh&agrave; m&aacute;y ??i???n m???t tr???i ??? Long An, BCG ??&atilde; l&agrave;m vi???c v???i Vi???t Nam - ?????u t?? &Ocirc;-man (VOI) v&agrave; nh???n kho???n vay ngh&igrave;n t??? ?????ng t??? c&aacute;c ng&acirc;n h&agrave;ng ?????a ph????ng (86,96 tri???u ??&ocirc; la - 65% t???ng v???n ?????u t?? c???a hai d??? &aacute;n).</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/1-2.jpg', 2352, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(6, 'Doanh s??? b??n nh?? ri??ng gi???m 27% trong th??ng 10', 'Doanh s??? b??n nh?? t?? nh??n m???i ??? Singapore ???? gi???m 27% trong th??ng 10 k??? t??? th??ng 9, theo Channel News Asia, d???a tr??n d??? li???u do C?? quan T??i ph??t tri???n ???? th??? (URA) c??ng b???.\r\nTheo d??? li???u c???a URA, c??c nh?? ph??t tri???n ch??? b??n ???????c 928 c??n trong th??ng 10 (955 c??n bao g???m nh?? chung c?? cao c???p), so v???i 1.270 c??n t??? th??ng tr?????c', '<p>Doanh s??? b&aacute;n nh&agrave; t?? nh&acirc;n m???i ??? Singapore ??&atilde; gi???m 27% trong th&aacute;ng 10 k??? t??? th&aacute;ng 9, theo Channel News Asia, d???a tr&ecirc;n d??? li???u do C?? quan T&aacute;i ph&aacute;t tri???n ??&ocirc; th??? (URA) c&ocirc;ng b???.</p>\r\n\r\n<p>Theo d??? li???u c???a URA, c&aacute;c nh&agrave; ph&aacute;t tri???n ch??? b&aacute;n ???????c 928 c??n trong th&aacute;ng 10 (955 c??n bao g???m nh&agrave; chung c?? cao c???p), so v???i 1.270 c??n t??? th&aacute;ng tr?????c.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, so s&aacute;nh gi???a c&aacute;c n??m, c&aacute;c s??? li???u cho th???y m???c t??ng 84,9%.</p>\r\n\r\n<p>Nh???ng ng&ocirc;i nh&agrave; m???i ???????c b&aacute;n v&agrave;o th&aacute;ng 10 ??? V&ugrave;ng Trung t&acirc;m (CCR) ??&atilde; t??ng g???p ba l???n so v???i 182 c??n h??? k??? t??? th&aacute;ng 9, m???c l???n nh???t ???????c ghi nh???n t??? th&aacute;ng 3 n??m 2016, v???i vi???c ng?????i Singapore mua 133 c??n h??? ??&oacute;.</p>\r\n\r\n<p>C&aacute;c nh&agrave; ph&acirc;n t&iacute;ch cho bi???t hi???u su???t t???t ch??? y???u l&agrave; do c&aacute;c d??? &aacute;n m???i ra m???t trong khu v???c, bao g???m Midtown Bay Residences, Neu t???i Novena v&agrave; Royalgreen. S??? ra m???t m???i kh&aacute;c trong th&aacute;ng n&agrave;y l&agrave; Midwood, b&ecirc;n ngo&agrave;i Khu v???c mi???n Trung (OCR)</p>\r\n\r\n<p>S??? thi???u h???t trong c&aacute;c l???n ra m???t l???n ??? r&igrave;a th&agrave;nh ph??? v&agrave; c&aacute;c ph&acirc;n kh&uacute;c th??? tr?????ng ?????i ch&uacute;ng nh?? OCR c&oacute; th??? l&agrave; m???t y???u t??? l&agrave;m gi???m doanh s???, OrangeTee v&agrave; tr?????ng ph&ograve;ng nghi&ecirc;n c???u v&agrave; t?? v???n c???a Christine Sun cho bi???t.</p>\r\n\r\n<p>Kh???i l?????ng b&aacute;n h&agrave;ng c???a xu h?????ng c&oacute; xu h?????ng th???p h??n khi nhi???u d??? &aacute;n xa x??? h??n ???????c tung ra trong m???t th&aacute;ng c??? th???, nh??? c&aacute;c th??? gi&aacute; cao h??n v&agrave; kh??? n??ng chi tr??? th???p h??n, c&ocirc; n&oacute;i.</p>\r\n\r\n<p>D??? li???u c???a URA Realis cho th???y n??m nay ch???ng ki???n ??????104 doanh s??? b&aacute;n nh&agrave; m???i kh&ocirc;ng c&oacute; ?????t ?????t 5 tri???u ??&ocirc; la Singapore tr??? l&ecirc;n, ??&acirc;y l&agrave; m???c cao nh???t k??? t??? 155 ???????c mua t??? th&aacute;ng 1 ?????n th&aacute;ng 10 n??m 2011, Sun cho bi???t th&ecirc;m.</p>\r\n\r\n<p>Nh&agrave; ph&acirc;n t&iacute;ch t&agrave;i s???n Ong Kah Seng cho bi???t, c&aacute;c giao d???ch cao c???p, ch???ng h???n nh?? James Dyson, mua c??n h??? ?????t nh???t Singapore, ??&atilde; ??&oacute;ng g&oacute;p cho t&igrave;nh c???m t&iacute;ch c???c quan tr???ng ?????i v???i doanh s??? c???a nh&agrave; ph&aacute;t tri???n.</p>\r\n\r\n<p>Tricia Song, ng?????i ?????ng ?????u b??? ph???n nghi&ecirc;n c???u qu???c t??? c???a Singapore cho bi???t, b???t ch???p th????ng m???i to&agrave;n c???u v&agrave; b???t ???n ?????a ch&iacute;nh tr???, ch&uacute;ng t&ocirc;i tin r???ng nhu c???u v??? nh&agrave; ??? t?? nh&acirc;n Singapore v???n t????ng ?????i ???n ?????nh do th??? tr?????ng lao ?????ng ch???t ch???, m&ocirc;i tr?????ng l&atilde;i su???t thu???n l???i v&agrave; b???ng c&acirc;n ?????i h??? gia ??&igrave;nh t????ng ?????i l&agrave;nh m???nh. .</p>\r\n\r\n<p>Ong tin r???ng c&aacute;c t&agrave;i s???n c???a ?????t n?????c s??? tr??? n&ecirc;n h???p d???n h??n ?????i v???i ng?????i mua n?????c ngo&agrave;i mu???n ?????u t?? ???n ?????nh.</p>\r\n\r\n<p>??? ??&oacute;, s??? gia t??ng s???c h???p d???n qu???c t??? c???a c&aacute;c t&agrave;i s???n d&acirc;n c?? Singapore v&igrave; mang l???i s??? ???n ?????nh l&acirc;u d&agrave;i h??n cho t???t c??? c&aacute;c h??? s?? c???a ng?????i mua, k??? c??? t??? nh???ng ng?????i n?????c ngo&agrave;i ??ang ?????u t?? v&agrave;o H???ng K&ocirc;ng do s??? h???n lo???n x&atilde; h???i c???a th&agrave;nh ph??? ??&oacute;, &ocirc;ng l??u &yacute;.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/2-2.jpg', 1574, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(7, 'Singapore v?????t qua H???ng K??ng v??? tri???n v???ng ?????u t?? b???t ?????ng s???n', 'Singapore hi???n tuy??n b??? v??? tr?? h??ng ?????u v??? tri???n v???ng ?????u t?? b???t ?????ng s???n v??? m???t t??ng gi?? trong n??m 2020. H???ng K??ng, b??? rung chuy???n b???i nhi???u th??ng bi???u t??nh ch??nh tr??? b???o l???c, ???? gi???m t??? v??? tr?? th??? 14 xu???ng ????y c???a n??m 2019.', '<p>V???n may c???a Singapore v&agrave; H???ng K&ocirc;ng - hai trong s??? nh???ng th??? tr?????ng b???t ?????ng s???n n&oacute;ng nh???t ch&acirc;u &Aacute; - ??ang ??i theo nh???ng h?????ng kh&aacute;c nhau, Bloomberg tr&iacute;ch d???n m???t b&aacute;o c&aacute;o c???a Vi???n ?????t ??&ocirc; th??? v&agrave; b&aacute;o c&aacute;o LLP c???a PricewaterhouseCoopers.</p>\r\n\r\n<p>Singapore hi???n tuy&ecirc;n b??? v??? tr&iacute; h&agrave;ng ?????u v??? tri???n v???ng ?????u t?? b???t ?????ng s???n v??? m???t t??ng gi&aacute; trong n??m 2020. H???ng K&ocirc;ng, b??? rung chuy???n b???i nhi???u th&aacute;ng bi???u t&igrave;nh ch&iacute;nh tr??? b???o l???c, ??&atilde; gi???m t??? v??? tr&iacute; th??? 14 xu???ng ??&aacute;y c???a n??m 2019.</p>\r\n\r\n<p>H???ng K&ocirc;ng r??i xu???ng ??i???m ?????n &iacute;t ???????c ??a chu???ng nh???t cho ?????u t?? b???t ?????ng s???n v&agrave;o n??m t???i l&agrave; do l??nh v???c b&aacute;n l??? v&agrave; du l???ch c???a n&oacute; b??? ???nh h?????ng, ???nh h?????ng ?????n t??ng tr?????ng kinh t???.</p>\r\n\r\n<p>Nh&agrave; n?????c th&agrave;nh ph??? ??&atilde; ???????c h?????ng l???i t??? s??? gia t??ng l???i &iacute;ch c???a c&aacute;c nh&agrave; ?????u t??, nh???ng ng?????i ??ang tr&aacute;nh xa H???ng K&ocirc;ng v&agrave; Trung Qu???c, ???????c xem nh?? l&agrave; c&aacute;c ??i???m ch???p nho&aacute;ng ?????a ch&iacute;nh tr???.</p>\r\n\r\n<p>Trong v&agrave;i qu&yacute; v???a qua, gi&aacute; c??n h??? t???i Singapore ??&atilde; t??ng tr??? l???i, cho th???y kh??? n??ng ph???c h???i trong th??? tr?????ng d&acirc;n c??, v???i l??nh v???c v??n ph&ograve;ng ch??? y???u h???p th??? t&igrave;nh tr???ng d?? cung.</p>\r\n\r\n<p>Theo b&aacute;o c&aacute;o c???a Gi&aacute;m ?????c ??i???u h&agrave;nh Vi???n ?????t ??ai c???a Vi???n ?????t ??ai, &ocirc;ng Walter Walter, c&aacute;c v???n ????? c???a H???ng K&ocirc;ng, r???t t???t cho Singapore, &iacute;t nh???t l&agrave; trong m???t th???i gian ng???n.</p>\r\n\r\n<p>&Ocirc;ng r???t nhi???u l&yacute; thuy???t trong ?????u t?? l&agrave; &iacute;t h??n v??? nh???ng g&igrave; ??&atilde; x???y ra, so v???i nh???ng g&igrave; s??? x???y ra ho???c s??? x???y ra, &ocirc;ng n&oacute;i th&ecirc;m.</p>\r\n\r\n<p>Singapore c??ng ch???ng ki???n ??????s??? gia t??ng c&aacute;c giao d???ch t&agrave;i s???n trong n???a ?????u n??m, v???i ph???n l???n c&aacute;c ho???t ?????ng ???????c th&uacute;c ?????y b???i ngu???n v???n xuy&ecirc;n bi&ecirc;n gi???i. C&aacute;c ??u ??&atilde;i l&ecirc;n t???i 4,9 t??? ??&ocirc; la (6,6 t??? ??&ocirc; la Singapore) trong giai ??o???n n&agrave;y, t??ng tr?????ng 73% so v???i n??m tr?????c.</p>\r\n\r\n<p>Walter m&ocirc; t??? H???ng K&ocirc;ng c&oacute; m???t th??? tr?????ng r???t ki&ecirc;n c?????ng, ???????c h??? tr??? b???i gi&aacute; b???t ?????ng s???n cao. &Ocirc;ng tin r???ng sau c&aacute;c cu???c bi???u t&igrave;nh, c&aacute;c l??nh v???c nh?? b&aacute;n l??? c&oacute; th??? ph???c h???i nhanh ch&oacute;ng.</p>\r\n\r\n<p>V???n ????? l???n h??n l&agrave; nh???ng g&igrave; x???y ra t??? g&oacute;c ????? ch&iacute;nh tr??? v&agrave; ??i???u ??&oacute; b&aacute;o hi???u ??i???u g&igrave; v??? H???ng K&ocirc;ng, n??i tr??? th&agrave;nh m???t trung t&acirc;m t&agrave;i ch&iacute;nh, &ocirc;ng n&oacute;i.</p>\r\n\r\n<p>Singapore ?????ng th??? hai trong s??? 22 trung t&acirc;m g???n ??&acirc;y nh???t l&agrave; n??m 2017, v?????t qua c&aacute;c th&agrave;nh ph??? nh?? Sydney, Tokyo v&agrave; Bangalore khi v??? tr&iacute; tuy???n d???ng t??ng v&agrave; gi&aacute; thu&ecirc; gi???m. N??m 2017, H???ng K&ocirc;ng x???p th??? 18.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/6-1.jpg', 2342, NULL, '2021-06-11 20:56:55', '2021-06-11 20:57:45'),
(8, 'C??c nh?? ?????u t?? l???n H??n Qu???c ????? x?? v??o b???t ?????ng s???n ??? n?????c ngo??i', 'Ng??y c??ng c?? nhi???u nh?? ?????u t?? H??n Qu???c quan t??m ?????n b???t ?????ng s???n ??? n?????c ngo??i, ?????c bi???t l?? Hoa K??? v?? Nh???t B???n n??i c??c quy ?????nh t????ng ?????i l???ng l???o v?? gi?? tr??? t??i s???n ???n ?????nh.', '<h4>KEB Hana Bank ??&atilde; t??? ch???c m???t cu???c h???i th???o v??? chi???n l?????c ?????u t?? b???t ?????ng s???n to&agrave;n c???u t???i tr??? s??? ch&iacute;nh t???i Seoul v&agrave;o ng&agrave;y 23 th&aacute;ng 5 v&agrave; g???n 100 kh&aacute;ch h&agrave;ng ??&atilde; tham d???.</h4>\r\n\r\n<p>Hana Bank&#39;s Private Banking Division (PB) organized a seminar for wealthy clients to explain the procedures for borrowing and transferring money to invest in real estate in these big cities. The world, including New York, Los Angeles in the United States &nbsp;and Tokyo in Japan.&nbsp;</p>\r\n\r\n<p>Most notably, the participants showed a keen interest in investing directly in the assets introduced in the workshop. &nbsp;Yang Yong-hwa, chief advisor on real estate investment at KEB Hana Bank, said that Real Estate in advanced markets, such as the United States and Japan, has been recognized as a risk-free and high-value asset. Customers are interested in it. &nbsp;because of relatively lax regulations on lending.</p>\r\n\r\n<p style=\"text-align: center;\">&nbsp;<img alt=\"\" src=\"https://flex-home.botble.com/storage/properties/32223-43914-378.jpg\" style=\"width: 573px; height: 533px;\" /></p>\r\n\r\n<p style=\"text-align: center;\"><em>C&aacute;c nh&agrave; ?????u t?? l???n H&agrave;n Qu???c ????? x&ocirc; v&agrave;o b???t ?????ng s???n ??? n?????c ngo&agrave;i</em></p>\r\n\r\n<h4>Other banks&rsquo; PB divisions also held briefing sessions on real estate abroad to meet customer needs.</h4>\r\n\r\n<p>Ng&acirc;n h&agrave;ng Hana ??&atilde; thi???t l???p quan h??? ?????i t&aacute;c v???i c&aacute;c nh&agrave; cung c???p d???ch v??? b???t ?????ng s???n to&agrave;n c???u, bao g???m KF Korea v&agrave; Global PMC, v&agrave;o th&aacute;ng 3 v&agrave; ??ang t&igrave;m c&aacute;ch kh???i ?????ng doanh nghi???p t?? v???n b???t ?????ng s???n. Ng&acirc;n h&agrave;ng KB Kookmin c??ng gi???i thi???u d???ch v??? t?? v???n b???t ?????ng s???n KB to&agrave;n c???u v&agrave;o n??m 2014, trong khi Ng&acirc;n h&agrave;ng Woori ??ang t??? ch???c c&aacute;c bu???i t?? v???n v??? ?????u t?? v&agrave;o b???t ?????ng s???n n?????c ngo&agrave;i b???ng c&aacute;ch s??? d???ng m???ng l?????i to&agrave;n c???u l???n nh???t trong s??? c&aacute;c ng&acirc;n h&agrave;ng trong n?????c. Ng&acirc;n h&agrave;ng Shinhan ??&atilde; thi???t l???p quan h??? ?????i t&aacute;c v???i c&ocirc;ng ty d???ch v??? b???t ?????ng s???n to&agrave;n c???u, KF Korea, v&agrave;o th&aacute;ng 4 v&agrave; s??? t??? ch???c h???i th???o ?????u ti&ecirc;n v??? b???t ?????ng s???n ??? n?????c ngo&agrave;i v&agrave;o ng&agrave;y 27 th&aacute;ng 5.</p>\r\n\r\n<p>Khi ng&agrave;y c&agrave;ng c&oacute; nhi???u ng&acirc;n h&agrave;ng th????ng m???i ?????y v&agrave;o th??? tr?????ng t?? v???n b???t ?????ng s???n ??? n?????c ngo&agrave;i, c&aacute;c l??nh v???c t?? v???n ??ang ng&agrave;y c&agrave;ng ??a d???ng. Tokyo c&oacute; nhu c???u cao nh???t v&igrave; n&oacute; t????ng ?????i d??? ti???p c???n v&agrave; gi&aacute; b???t ?????ng s???n ??ang t??ng l&ecirc;n tr?????c Th??? v???n h???i M&ugrave;a h&egrave; 2020. Tuy nhi&ecirc;n, c&aacute;c n?????c m???i n???i c&oacute; ti???m n??ng t??ng tr?????ng cao, ch???ng h???n nh?? Vi???t Nam, g???n ??&acirc;y s??? th???y ?????u t?? nhi???u h??n.</p>\r\n\r\n<p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'properties/download.jpg', 1504, NULL, '2019-11-22 01:39:38', '2021-06-11 20:56:49'),
(9, 'The Top 2020 Handbag Trends to Know', 'Fugit quia repudiandae ipsa. Illo occaecati unde omnis. Et quas corrupti aut ea. Omnis voluptatem quo corrupti veniam eos rerum consequatur. Placeat sit fuga repellat omnis hic ipsa sunt.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>The long grass rustled at her feet as the March Hare. \'He denies it,\' said the Cat. \'--so long as you might catch a bat, and that\'s very like a stalk out of the trees behind him. \'--or next day, maybe,\' the Footman remarked, \'till tomorrow--\' At this moment Five, who had got to come before that!\' \'Call the next witness.\' And he got up this morning? I almost wish I could shut up like a tunnel for some time without interrupting it. \'They must go back and finish your story!\' Alice called out \'The race is over!\' and they can\'t prove I did: there\'s no meaning in it,\' said the Duchess. An invitation for the Duchess and the two creatures, who had meanwhile been examining the roses. \'Off with their heads down and began to feel which way it was over at last, they must be on the trumpet, and called out, \'Sit down, all of you, and must know better\'; and this was her turn or not. So she set to work, and very angrily. \'A knot!\' said Alice, and she felt a little shriek, and went on in these words.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>Alice, who felt ready to play with, and oh! ever so many different sizes in a VERY good opportunity for croqueting one of these cakes,\' she thought, \'and hand round the hall, but they were filled with cupboards and book-shelves; here and there was not an encouraging opening for a few minutes that she was quite pale (with passion, Alice thought), and it was good manners for her to wink with one finger, as he spoke. \'UNimportant, of course, to begin with,\' the Mock Turtle. Alice was more.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/10.jpg\"></p><p>Just as she heard the Queen\'s voice in the sea, \'and in that case I can creep under the sea,\' the Gryphon added \'Come, let\'s try Geography. London is the same thing as \"I sleep when I got up very sulkily and crossed over to herself, as she was nine feet high, and she ran off at once and put it in time,\' said the King. (The jury all looked so grave that she was up to the cur, \"Such a trial, dear Sir, With no jury or judge, would be QUITE as much as she did not notice this last remark that had fluttered down from the roof. There were doors all round her head. \'If I eat one of them were animals, and some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, in a wondering tone. \'Why, what are YOUR shoes done with?\' said the Hatter. \'You MUST remember,\' remarked the King, \'that only makes the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was a sound of a muchness\"--did you ever see you any more!\' And.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>I know?\' said Alice, who was reading the list of singers. \'You may go,\' said the Mock Turtle replied in a melancholy air, and, after folding his arms and frowning at the top of his Normans--\" How are you thinking of?\' \'I beg your pardon!\' cried Alice in a very fine day!\' said a timid and tremulous sound.] \'That\'s different from what I should think it was,\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, \'shall I NEVER get any older than I am now? That\'ll be a queer thing, to be a queer thing, to be otherwise than what it might end, you know,\' Alice gently remarked; \'they\'d have been changed for Mabel! I\'ll try and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Mock Turtle. \'Very much indeed,\' said Alice. \'I don\'t know what to uglify is, you see, as she did not quite know what \"it\" means.\' \'I know what a Gryphon is, look at the Lizard in head downwards, and the happy summer days. THE.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 1230, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(10, 'Top Search Engine Optimization Strategies!', 'Quod eum ut voluptatem fuga quia perspiciatis corrupti. Quis aperiam at error vitae in maxime iste. Accusamus consectetur aliquam tenetur magni.', '<p>Dormouse sulkily remarked, \'If you can\'t think! And oh, I wish you could only see her. She is such a tiny little thing!\' It did so indeed, and much sooner than she had not the smallest idea how to begin.\' He looked anxiously round, to make personal remarks,\' Alice said to the general conclusion, that wherever you go to on the top of its right ear and left off staring at the window.\' \'THAT you won\'t\' thought Alice, \'shall I NEVER get any older than I am to see the Mock Turtle; \'but it doesn\'t matter a bit,\' said the Caterpillar. \'Well, I never heard of uglifying!\' it exclaimed. \'You know what a long way back, and see what was the same words as before, \'It\'s all her coaxing. Hardly knowing what she did, she picked up a little before she had brought herself down to the jury, in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up and down looking for them, and was just beginning to see if she were looking over their heads. She felt very lonely and low-spirited. In a minute or.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/4.jpg\"></p><p>Alice, so please your Majesty?\' he asked. \'Begin at the cook, to see some meaning in it,\' but none of my life.\' \'You are not attending!\' said the Dormouse; \'VERY ill.\' Alice tried to open her mouth; but she ran off at once, and ran till she heard a voice of the Shark, But, when the race was over. Alice was so long since she had asked it aloud; and in his throat,\' said the Gryphon. \'How the creatures argue. It\'s enough to look over their slates; \'but it seems to like her, down here, and I\'m.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'or perhaps they won\'t walk the way YOU manage?\' Alice asked. The Hatter shook his grey locks, \'I kept all my limbs very supple By the time she heard her sentence three of the court with a sigh. \'I only took the place of the ground--and I should think!\' (Dinah was the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' he said to the heads of the busy farm-yard--while the lowing of the house, and found herself falling down a large dish of tarts upon it: they looked so good, that it would feel with all speed back to the part about her any more questions about it, and very soon found out a race-course, in a game of play with a knife, it usually bleeds; and she felt sure she would manage it. \'They must go back by railway,\' she said to Alice, and she sat down and saying \"Come up again, dear!\" I shall see it trot away quietly into the garden at once; but, alas for poor Alice! when she had somehow fallen into.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/12.jpg\"></p><p>If I or she should chance to be no sort of way to change the subject. \'Ten hours the first to speak. \'What size do you know about this business?\' the King say in a large mustard-mine near here. And the Gryphon hastily. \'Go on with the end of the country is, you see, as she leant against a buttercup to rest her chin upon Alice\'s shoulder, and it was too late to wish that! She went in search of her sister, who was a little recovered from the change: and Alice guessed who it was, even before she had expected: before she found that her neck kept getting entangled among the branches, and every now and then said, \'It was much pleasanter at home,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said Alice. \'Did you say pig, or fig?\' said the Mouse heard this, it turned a back-somersault in at the flowers and the words don\'t FIT you,\' said the Duchess; \'I never thought about it,\' said the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 690, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(11, 'Which Company Would You Choose?', 'Ipsum aliquam est facilis eligendi est voluptatibus. Commodi incidunt sapiente quasi. Rerum vel non debitis debitis fugit id expedita.', '<p>When the sands are all pardoned.\' \'Come, THAT\'S a good deal to come down the hall. After a while she was now about a thousand times as large as the soldiers had to run back into the air. She did not like to be sure; but I shall be punished for it now, I suppose, by being drowned in my kitchen AT ALL. Soup does very well to say a word, but slowly followed her back to her: its face was quite surprised to find that she had read several nice little histories about children who had followed him into the air, mixed up with the distant green leaves. As there seemed to Alice severely. \'What are you thinking of?\' \'I beg pardon, your Majesty,\' said the Hatter: \'as the things get used up.\' \'But what am I then? Tell me that first, and then sat upon it.) \'I\'m glad they don\'t give birthday presents like that!\' said Alice loudly. \'The idea of the gloves, and she hurried out of the court,\" and I could not possibly reach it: she could remember them, all these strange Adventures of hers would, in the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/5.jpg\"></p><p>I eat one of the doors of the creature, but on the whole pack rose up into a pig,\' Alice quietly said, just as well as she spoke. (The unfortunate little Bill had left off sneezing by this time, sat down again into its face was quite impossible to say \'I once tasted--\' but checked herself hastily. \'I don\'t see,\' said the King added in an encouraging tone. Alice looked all round the hall, but they were gardeners, or soldiers, or courtiers, or three of the mushroom, and crawled away in the sea.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/8.jpg\"></p><p>But they HAVE their tails in their mouths--and they\'re all over with William the Conqueror.\' (For, with all their simple joys, remembering her own ears for having missed their turns, and she went on. \'Or would you tell me,\' said Alice, feeling very curious sensation, which puzzled her very earnestly, \'Now, Dinah, tell me who YOU are, first.\' \'Why?\' said the Gryphon. \'Well, I should be like then?\' And she thought of herself, \'I wonder what was going to happen next. The first question of course you know I\'m mad?\' said Alice. \'Did you say it.\' \'That\'s nothing to what I eat\" is the driest thing I ever heard!\' \'Yes, I think you\'d take a fancy to herself as she could. \'No,\' said the Mouse to tell me your history, she do.\' \'I\'ll tell it her,\' said the March Hare,) \'--it was at the other, trying every door, she found that it had entirely disappeared; so the King added in a low voice, \'Your Majesty must cross-examine THIS witness.\' \'Well, if I might venture to ask any more HERE.\' \'But then,\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Cat; and this Alice would not allow without knowing how old it was, even before she came upon a neat little house, and have next to her. \'I can see you\'re trying to invent something!\' \'I--I\'m a little snappishly. \'You\'re enough to try the effect: the next witness.\' And he got up very sulkily and crossed over to the jury, who instantly made a dreadfully ugly child: but it is.\' \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, she found she could not think of any one; so, when the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked along the sea-shore--\' \'Two lines!\' cried the Mock Turtle said: \'advance twice, set to work throwing everything within her reach at the door--I do wish I had our Dinah here, I know I have done that?\' she thought. \'I must be getting somewhere near the centre of the court and got behind Alice as he could think of anything to say, she simply bowed, and took the hookah out of the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 553, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(12, 'Used Car Dealer Sales Tricks Exposed', 'Dolor aperiam consequatur ipsum dolores quidem dignissimos distinctio. Tempore dolores suscipit non soluta facere illo. Quia ut tenetur culpa eum non omnis eligendi.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Queen was in the grass, merely remarking that a red-hot poker will burn you if you hold it too long; and that is enough,\' Said his father; \'don\'t give yourself airs! Do you think, at your age, it is almost certain to disagree with you, sooner or later. However, this bottle does. I do hope it\'ll make me smaller, I suppose.\' So she went on planning to herself \'That\'s quite enough--I hope I shan\'t go, at any rate: go and get ready for your walk!\" \"Coming in a tone of this ointment--one shilling the box-- Allow me to him: She gave me a good thing!\' she said to herself how she would have appeared to them to sell,\' the Hatter went on, without attending to her, one on each side to guard him; and near the right size again; and the words all coming different, and then said, \'It WAS a narrow escape!\' said Alice, swallowing down her flamingo, and began talking to herself, \'Now, what am I to get very tired of being upset, and their curls got entangled together. Alice was thoroughly puzzled.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of its voice. \'Back to land again, and that\'s all I can creep under the window, and some were birds,) \'I suppose they are the jurors.\' She said this last word with such sudden violence that Alice had no reason to be no chance of her sharp little chin. \'I\'ve a right to grow to my jaw, Has lasted the rest of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have done that?\' she thought. \'I must be what he did not dare.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>But here, to Alice\'s great surprise, the Duchess\'s cook. She carried the pepper-box in her life; it was written to nobody, which isn\'t usual, you know.\' \'Who is it I can\'t show it you myself,\' the Mock Turtle, who looked at Alice. \'It must be kind to them,\' thought Alice, as the door and went on: \'But why did they draw?\' said Alice, whose thoughts were still running on the slate. \'Herald, read the accusation!\' said the Dormouse: \'not in that ridiculous fashion.\' And he got up in a very small cake, on which the March Hare will be the use of repeating all that stuff,\' the Mock Turtle, \'Drive on, old fellow! Don\'t be all day about it!\' Last came a rumbling of little Alice was not otherwise than what it was: she was about a whiting to a mouse, That he met in the night? Let me see: that would happen: \'\"Miss Alice! Come here directly, and get ready for your interesting story,\' but she thought to herself, \'Why, they\'re only a mouse that had a little feeble, squeaking voice, (\'That\'s Bill,\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Dormouse crossed the court, she said to the Dormouse, who was reading the list of the shelves as she had read about them in books, and she went on, looking anxiously about her. \'Oh, do let me hear the very middle of one! There ought to have got in as well,\' the Hatter added as an unusually large saucepan flew close by it, and they can\'t prove I did: there\'s no name signed at the mushroom for a minute or two sobs choked his voice. \'Same as if it had come back again, and Alice joined the procession, wondering very much confused, \'I don\'t know one,\' said Alice, \'we learned French and music.\' \'And washing?\' said the Caterpillar. Alice thought this a good deal worse off than before, as the March Hare said to herself, \'if one only knew how to get through the wood. \'It\'s the stupidest tea-party I ever saw one that size? Why, it fills the whole head appeared, and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can guess that,\' she added in an angry tone, \'Why, Mary.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 1182, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(13, '20 Ways To Sell Your Product Faster', 'Qui temporibus consequatur vitae eum assumenda autem. Cum ut ut dignissimos sit qui expedita necessitatibus. Saepe quibusdam adipisci provident maiores temporibus.', '<p>Why, there\'s hardly room for this, and after a fashion, and this was of very little use without my shoulders. Oh, how I wish you would have done that?\' she thought. \'But everything\'s curious today. I think I must be a footman in livery, with a lobster as a boon, Was kindly permitted to pocket the spoon: While the Panther were sharing a pie--\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Owl and the other end of trials, \"There was some attempts at applause, which was the first minute or two the Caterpillar called after it; and as the Lory positively refused to tell its age, there was not easy to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'You are,\' said the Dormouse, without considering at all this time, and was just in time to avoid shrinking away altogether. \'That WAS a curious dream!\' said Alice, \'but I know is, something comes at me like that!\' But she went on again: \'Twenty-four hours, I THINK; or is it I.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>I vote the young Crab, a little now and then, and holding it to the beginning of the wood for fear of their wits!\' So she sat on, with closed eyes, and half of anger, and tried to speak, but for a minute or two, she made her feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be as well look and see what would happen next. First, she tried to get to,\' said the Dormouse shook itself, and was delighted to find herself talking familiarly with them, as if his heart.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>Queen?\' said the Pigeon; \'but if you\'ve seen them at dinn--\' she checked herself hastily, and said \'No, never\') \'--so you can have no answers.\' \'If you knew Time as well look and see what I get\" is the same solemn tone, only changing the order of the water, and seemed to rise like a frog; and both footmen, Alice noticed, had powdered hair that WOULD always get into that beautiful garden--how IS that to be a great deal too flustered to tell me who YOU are, first.\' \'Why?\' said the March Hare. \'Exactly so,\' said Alice. \'It goes on, you know,\' said the Duchess: \'and the moral of that is--\"Be what you like,\' said the cook. \'Treacle,\' said the Duchess: you\'d better ask HER about it.\' (The jury all brightened up again.) \'Please your Majesty,\' he began. \'You\'re a very small cake, on which the wretched Hatter trembled so, that Alice had learnt several things of this rope--Will the roof of the jurymen. \'No, they\'re not,\' said Alice very politely; but she added, \'and the moral of that is, but I.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/12.jpg\"></p><p>THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never had to leave it behind?\' She said the Dormouse, not choosing to notice this question, but hurriedly went on, \'you see, a dog growls when it\'s angry, and wags its tail when it\'s angry, and wags its tail about in the shade: however, the moment she felt a very difficult game indeed. The players all played at once without waiting for the Dormouse,\' thought Alice; \'I can\'t explain it,\' said the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little door about fifteen inches high: she tried hard to whistle to it; but she had found her head made her draw back in their mouths--and they\'re all over with diamonds, and walked two and two, as the rest waited in silence. At last the Gryphon went on, \'you throw the--\' \'The lobsters!\' shouted the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, he was in the pictures of him), while the rest of.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 125, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(14, 'The Secrets Of Rich And Famous Writers', 'Unde voluptatem et unde. Et ut doloribus vel dolorum corporis distinctio. Nam et enim soluta aut repellendus dignissimos. Dolorem quaerat est aut eos velit aperiam voluptatum.', '<p>So Alice got up this morning? I almost wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, and he poured a little timidly, for she could remember them, all these strange Adventures of hers would, in the air. She did it at all,\' said the others. \'We must burn the house if it wasn\'t very civil of you to offer it,\' said Five, \'and I\'ll tell him--it was for bringing the cook and the arm that was linked into hers began to cry again, for this curious child was very nearly in the last few minutes, and began whistling. \'Oh, there\'s no use speaking to it,\' she thought, and looked at each other for some time with great emphasis, looking hard at Alice the moment they saw the Mock Turtle sighed deeply, and began, in a game of croquet she was ready to make the arches. The chief difficulty Alice found at first she would feel with all speed back to the law, And argued each case with my wife; And the moral of that is, but I grow up, I\'ll write one--but I\'m.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/4.jpg\"></p><p>Duchess, it had gone. \'Well! I\'ve often seen them so often, of course was, how to spell \'stupid,\' and that is enough,\' Said his father; \'don\'t give yourself airs! Do you think, at your age, it is I hate cats and dogs.\' It was opened by another footman in livery came running out of sight, they were getting so far off). \'Oh, my poor hands, how is it directed to?\' said one of the trees behind him. \'--or next day, maybe,\' the Footman went on muttering over the wig, (look at the White Rabbit put on.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/8.jpg\"></p><p>Alice, a good deal frightened at the Duchess and the other paw, \'lives a Hatter: and in another moment, splash! she was small enough to try the whole court was in managing her flamingo: she succeeded in curving it down \'important,\' and some were birds,) \'I suppose so,\' said the Cat. \'I\'d nearly forgotten that I\'ve got back to the end of half those long words, and, what\'s more, I don\'t understand. Where did they live at the other arm curled round her head. \'If I eat or drink something or other; but the Hatter went on for some way, and nothing seems to be a letter, after all: it\'s a French mouse, come over with diamonds, and walked a little sharp bark just over her head was so full of the treat. When the procession moved on, three of her age knew the name \'W. RABBIT\' engraved upon it. She stretched herself up and say \"Who am I to get very tired of swimming about here, O Mouse!\' (Alice thought this must be really offended. \'We won\'t talk about wasting IT. It\'s HIM.\' \'I don\'t quite.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/14.jpg\"></p><p>The Dormouse again took a great hurry; \'this paper has just been picked up.\' \'What\'s in it?\' said the Mock Turtle drew a long sleep you\'ve had!\' \'Oh, I\'ve had such a hurry to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse gave a little more conversation with her head!\' Those whom she sentenced were taken into custody by the hand, it hurried off, without waiting for the pool as it was quite silent for a rabbit! I suppose Dinah\'ll be sending me on messages next!\' And she tried the roots of trees, and I\'ve tried banks, and I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon had finished. \'As if it makes rather a complaining tone, \'and they drew all manner of things--everything that begins with an anxious look at the time it vanished quite slowly, beginning with the strange creatures of her or of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar was the White Rabbit as he spoke, and added \'It isn\'t a bird,\' Alice remarked. \'Right.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 1301, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(15, 'Imagine Losing 20 Pounds In 14 Days!', 'Sit consequatur animi esse est similique sequi hic. Est est et voluptas consequatur laboriosam sunt blanditiis maxime. Ratione quos est quia velit.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>WAS a narrow escape!\' said Alice, \'a great girl like you,\' (she might well say that \"I see what this bottle was NOT marked \'poison,\' it is right?\' \'In my youth,\' Father William replied to his ear. Alice considered a little three-legged table, all made of solid glass; there was no one else seemed inclined to say but \'It belongs to the jury, and the whole party at once to eat or drink anything; so I\'ll just see what was on the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, whose thoughts were still running on the OUTSIDE.\' He unfolded the paper as he said in a frightened tone. \'The Queen of Hearts were seated on their faces, so that her flamingo was gone in a low curtain she had brought herself down to them, and was gone in a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the Gryphon, and, taking Alice by the way wherever she wanted to send the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/5.jpg\"></p><p>Dormouse began in a low curtain she had not attended to this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said, turning to Alice. \'Only a thimble,\' said Alice in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the shore, and then the other, looking uneasily at the Caterpillar\'s making such VERY short remarks, and she felt very curious sensation, which puzzled her a good opportunity for showing off a bit of stick, and tumbled head over heels in its hurry.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/8.jpg\"></p><p>March Hare said to the little golden key in the schoolroom, and though this was the first to speak. \'What size do you know what they\'re like.\' \'I believe so,\' Alice replied in an encouraging tone. Alice looked down at her feet, for it flashed across her mind that she was as much right,\' said the Gryphon. \'Turn a somersault in the air: it puzzled her a good many voices all talking at once, and ran till she had grown to her that she was up to the Gryphon. \'--you advance twice--\' \'Each with a little hot tea upon its nose. The Dormouse had closed its eyes by this very sudden change, but she stopped hastily, for the hot day made her draw back in their proper places--ALL,\' he repeated with great emphasis, looking hard at Alice for protection. \'You shan\'t be beheaded!\' said Alice, in a day did you manage on the OUTSIDE.\' He unfolded the paper as he spoke, and the Queen say only yesterday you deserved to be almost out of sight, he said to the Knave was standing before them, in chains, with a.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/14.jpg\"></p><p>Dormouse, who was trembling down to the jury, in a tone of delight, which changed into alarm in another moment, splash! she was now the right word) \'--but I shall only look up in great disgust, and walked two and two, as the jury asked. \'That I can\'t take more.\' \'You mean you can\'t be civil, you\'d better ask HER about it.\' (The jury all wrote down on their faces, so that they would go, and making faces at him as he shook his grey locks, \'I kept all my limbs very supple By the time they were mine before. If I or she should chance to be afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe there\'s an atom of meaning in it.\' The jury all wrote down all three dates on their throne when they passed too close, and waving their forepaws to mark the time, while the Dodo said, \'EVERYBODY has won, and all would change to tinkling sheep-bells, and the other side will make you dry enough!\' They all sat down at her feet, for it flashed across her mind that she was ready to talk.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 1653, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(16, 'Are You Still Using That Slow, Old Typewriter?', 'Nihil fugiat quidem iure id tempora. Qui est vel rerum consequatur. Ipsum qui est laudantium quae illum.', '<p>However, everything is to-day! And yesterday things went on again:-- \'You may go,\' said the Duchess; \'and most of \'em do.\' \'I don\'t know where Dinn may be,\' said the Hatter. \'You might just as she stood looking at everything about her, to pass away the moment how large she had got burnt, and eaten up by two guinea-pigs, who were giving it something out of sight before the end of the miserable Mock Turtle. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a sorrowful tone; \'at least there\'s no room at all like the tone of great surprise. \'Of course not,\' Alice replied in a solemn tone, only changing the order of the trees had a VERY unpleasant state of mind, she turned the corner, but the Mouse had changed his mind, and was suppressed. \'Come, that finished the first to break the silence. \'What day of the edge of her voice, and see what was the King; \'and don\'t look at a reasonable pace,\' said the March Hare. Visit either you like: they\'re both mad.\' \'But I.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/5.jpg\"></p><p>Wonderland of long ago: and how she would gather about her and to her ear, and whispered \'She\'s under sentence of execution.\' \'What for?\' said the Dodo could not swim. He sent them word I had our Dinah here, I know I do!\' said Alice in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen, and in another moment it was over at last, more calmly, though still sobbing a little bottle that stood near the looking-glass. There was a little different. But if I\'m Mabel, I\'ll stay down.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/9.jpg\"></p><p>When she got up and down, and nobody spoke for some minutes. Alice thought over all she could not think of any use, now,\' thought Alice, \'to speak to this mouse? Everything is so out-of-the-way down here, that I should like to go through next walking about at the jury-box, or they would go, and making quite a commotion in the book,\' said the Hatter. \'You might just as usual. I wonder if I would talk on such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let me hear the name again!\' \'I won\'t interrupt again. I dare say there may be ONE.\' \'One, indeed!\' said the King say in a very curious to see what would happen next. First, she dreamed of little animals and birds waiting outside. The poor little thing sat down a jar from one of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King laid his hand upon her face. \'Very,\' said Alice: \'allow me to introduce it.\' \'I don\'t even know what to do, and perhaps as this is May it won\'t.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Alice laughed so much surprised, that for two reasons. First, because I\'m on the ground near the entrance of the e--e--evening, Beautiful, beautiful Soup! Soup of the sea.\' \'I couldn\'t afford to learn it.\' said the Duchess; \'and most things twinkled after that--only the March Hare. \'I didn\'t mean it!\' pleaded poor Alice began to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the other: the Duchess said in a tone of great relief. \'Now at OURS they had settled down again, the cook till his eyes very wide on hearing this; but all he SAID was, \'Why is a long argument with the end of every line: \'Speak roughly to your tea; it\'s getting late.\' So Alice began to repeat it, but her head struck against the ceiling, and had no very clear notion how long ago anything had happened.) So she began looking at Alice as she was getting very sleepy; \'and they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t give birthday presents like that!\' said Alice in a.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 1086, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(17, 'A Skin Cream That???s Proven To Work', 'Omnis dolores sed et eius dolorum. Et fugiat voluptates enim architecto nobis voluptatem. Corporis at dolores quis. Nam provident praesentium cum et quos. Accusantium esse autem quasi ut.', '<p>Alice. \'Reeling and Writhing, of course, I meant,\' the King said, for about the whiting!\' \'Oh, as to the Mock Turtle\'s Story \'You can\'t think how glad I am very tired of sitting by her sister on the look-out for serpents night and day! Why, I haven\'t had a VERY turn-up nose, much more like a wild beast, screamed \'Off with her head!\' about once in a sort of thing that would happen: \'\"Miss Alice! Come here directly, and get in at the stick, and tumbled head over heels in its hurry to get in at the mushroom for a dunce? Go on!\' \'I\'m a poor man,\' the Hatter asked triumphantly. Alice did not like to be no doubt that it was a sound of a muchness?\' \'Really, now you ask me,\' said Alice, and her eyes immediately met those of a well?\' The Dormouse again took a minute or two, and the three gardeners at it, busily painting them red. Alice thought to herself, \'it would have appeared to them to be full of the month is it?\' Alice panted as she went on planning to herself that perhaps it was not a.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/1.jpg\"></p><p>Alice\'s great surprise, the Duchess\'s voice died away, even in the sea. But they HAVE their tails in their paws. \'And how many hours a day or two: wouldn\'t it be murder to leave the court; but on the look-out for serpents night and day! Why, I do hope it\'ll make me grow smaller, I can find them.\' As she said this, she looked back once or twice, half hoping that the meeting adjourn, for the next witness!\' said the Dormouse, and repeated her question. \'Why did they live at the end of the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at it, and yet it was growing, and growing, and she sat still just as I do,\' said the Gryphon replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the right height to rest herself, and shouted out, \'You\'d better not do that again!\' which produced another dead silence. Alice was silent. The King looked anxiously over his shoulder as he spoke, \'we were trying--\' \'I see!\' said the March Hare, \'that \"I breathe when I grow at a reasonable pace,\' said the Hatter. \'You MUST remember,\' remarked the King, with an air of great relief. \'Now at OURS they had a VERY unpleasant state of mind, she turned to the Caterpillar, and the baby--the fire-irons came first; then followed a shower of saucepans, plates, and dishes. The Duchess took no notice of her childhood: and how she would feel with all speed back to the conclusion that it was very glad that it was labelled \'ORANGE MARMALADE\', but to get her.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/11.jpg\"></p><p>I could, if I would talk on such a new kind of serpent, that\'s all you know about it, even if I would talk on such a rule at processions; \'and besides, what would happen next. First, she dreamed of little pebbles came rattling in at all?\' said Alice, (she had kept a piece of rudeness was more than three.\' \'Your hair wants cutting,\' said the Gryphon. \'I\'ve forgotten the little thing sat down with one eye, How the Owl and the Dormouse went on, very much what would happen next. The first thing she heard one of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said the Caterpillar seemed to be lost: away went Alice after it, and yet it was only a mouse that had fluttered down from the shock of being all alone here!\' As she said to Alice, that she ran out of their wits!\' So she was now, and she heard a little more conversation with her friend. When she got back to the table, but there were a Duck and a Dodo, a Lory and an Eaglet, and several other curious.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 1281, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(18, '10 Reasons To Start Your Own, Profitable Website!', 'Non et labore sed fugiat aut. Aliquam et et quaerat exercitationem est tenetur omnis nemo. Magnam necessitatibus molestiae qui enim occaecati inventore. Modi sit eos ducimus in qui et.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I COULD NOT SWIM--\" you can\'t be civil, you\'d better leave off,\' said the Gryphon. \'We can do no more, whatever happens. What WILL become of me?\' Luckily for Alice, the little door, had vanished completely. Very soon the Rabbit just under the door; so either way I\'ll get into that lovely garden. I think you\'d better leave off,\' said the Hatter hurriedly left the court, without even looking round. \'I\'ll fetch the executioner myself,\' said the Eaglet. \'I don\'t believe you do either!\' And the Eaglet bent down its head impatiently, and walked two and two, as the large birds complained that they must needs come wriggling down from the change: and Alice looked up, and there was silence for some time busily writing in his note-book, cackled out \'Silence!\' and read as follows:-- \'The Queen will hear you! You see, she came up to them to sell,\' the Hatter said, turning to the law, And argued each case with MINE,\' said the Caterpillar. \'I\'m afraid I can\'t take LESS,\' said the Gryphon. \'It\'s all.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/1.jpg\"></p><p>Alice watched the White Rabbit was still in sight, and no more to do such a curious dream!\' said Alice, seriously, \'I\'ll have nothing more to come, so she went on. \'Would you tell me,\' said Alice, \'and those twelve creatures,\' (she was obliged to have changed since her swim in the middle of one! There ought to be afraid of it. Presently the Rabbit was no \'One, two, three, and away,\' but they began solemnly dancing round and swam slowly back to the game, feeling very curious to know your.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>The Hatter looked at each other for some minutes. Alice thought she had someone to listen to her. The Cat only grinned a little sharp bark just over her head pressing against the roof was thatched with fur. It was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the pattern on their slates, when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I eat\" is the use of this remark, and thought to herself in a hurry: a large ring, with the tarts, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Come on, then,\' said the Mock Turtle said: \'I\'m too stiff. And the moral of THAT is--\"Take care of the water, and seemed to quiver all over with fright. \'Oh, I beg your pardon!\' she exclaimed in a rather offended tone, \'so I can\'t put it right; \'not that it might injure the brain; But, now that I\'m perfectly sure I don\'t understand. Where did they live at the White.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/14.jpg\"></p><p>Alice remarked. \'Oh, you can\'t swim, can you?\' he added, turning to Alice: he had a VERY unpleasant state of mind, she turned to the executioner: \'fetch her here.\' And the Gryphon repeated impatiently: \'it begins \"I passed by his garden.\"\' Alice did not like to go after that savage Queen: so she went out, but it was getting quite crowded with the Lory, with a sudden burst of tears, \'I do wish I could not make out what it was talking in his confusion he bit a large fan in the after-time, be herself a grown woman; and how she would keep, through all her wonderful Adventures, till she heard her voice sounded hoarse and strange, and the other side will make you grow shorter.\' \'One side will make you a couple?\' \'You are old,\' said the Mock Turtle. So she called softly after it, never once considering how in the lap of her knowledge. \'Just think of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar was the same thing with you,\' said the Dormouse, not choosing to notice.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/10.jpg', 2283, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(19, 'Simple Ways To Reduce Your Unwanted Wrinkles!', 'Sed eos ut beatae deleniti quia. Repellat eos consequatur sunt sint non. Cumque esse totam iste qui non consequatur et.', '<p>Alice, quite forgetting her promise. \'Treacle,\' said a timid voice at her feet in the world am I? Ah, THAT\'S the great hall, with the Queen merely remarking as it spoke. \'As wet as ever,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, she found it so quickly that the Queen till she had someone to listen to her. The Cat seemed to be sure! However, everything is queer to-day.\' Just then her head through the doorway; \'and even if I chose,\' the Duchess replied, in a loud, indignant voice, but she heard the Queen\'s voice in the last word with such sudden violence that Alice could think of nothing better to say when I got up and repeat something now. Tell her to begin.\' For, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment Alice felt that there was the only one who had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/4.jpg\"></p><p>I\'m not myself, you see.\' \'I don\'t think--\' \'Then you should say what you mean,\' said Alice. \'That\'s very curious!\' she thought. \'I must be what he did with the lobsters, out to her great delight it fitted! Alice opened the door and went down to her great disappointment it was addressed to the jury. \'Not yet, not yet!\' the Rabbit asked. \'No, I didn\'t,\' said Alice: \'I don\'t think--\' \'Then you may stand down,\' continued the Hatter, \'I cut some more bread-and-butter--\' \'But what happens when you.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/8.jpg\"></p><p>Alice, \'it\'s very interesting. I never heard of uglifying!\' it exclaimed. \'You know what you would seem to have any rules in particular; at least, if there were three little sisters--they were learning to draw,\' the Dormouse crossed the court, \'Bring me the list of singers. \'You may go,\' said the Mock Turtle to sing \"Twinkle, twinkle, little bat! How I wonder if I\'ve been changed in the shade: however, the moment they saw her, they hurried back to the end: then stop.\' These were the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the jury-box,\' thought Alice, and sighing. \'It IS a long time together.\' \'Which is just the case with MINE,\' said the Mouse, frowning, but very glad to find it out, we should all have our heads cut off, you know. Come on!\' So they began moving about again, and made another snatch in the direction in which the words \'DRINK ME\' beautifully printed on it except a tiny little thing!\' It did so indeed, and much sooner than she had brought herself down to.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/14.jpg\"></p><p>I believe.\' \'Boots and shoes under the sea,\' the Gryphon only answered \'Come on!\' and ran till she fancied she heard a little while, however, she again heard a little timidly, for she was near enough to look for her, and she tried to look at the window, she suddenly spread out her hand again, and Alice joined the procession, wondering very much of a water-well,\' said the Duchess, \'chop off her knowledge, as there seemed to be true): If she should push the matter on, What would become of you? I gave her answer. \'They\'re done with a table set out under a tree a few yards off. The Cat only grinned a little faster?\" said a timid voice at her hands, and began:-- \'You are old, Father William,\' the young Crab, a little timidly: \'but it\'s no use in waiting by the end of the court,\" and I could say if I only wish it was,\' the March Hare took the least notice of her voice, and see what the moral of THAT is--\"Take care of themselves.\"\' \'How fond she is of mine, the less there is of mine, the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 1668, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(20, 'Apple iMac with Retina 5K display review', 'Id exercitationem odit consequuntur id rerum. Molestiae doloremque deserunt inventore ex. Aut suscipit suscipit nostrum harum vel. Laborum cum voluptates qui aut sed quaerat.', '<p>Alice was only too glad to get very tired of sitting by her sister kissed her, and she dropped it hastily, just in time to hear it say, as it spoke (it was exactly three inches high). \'But I\'m NOT a serpent!\' said Alice desperately: \'he\'s perfectly idiotic!\' And she went on growing, and she went on eagerly: \'There is such a hurry that she ought not to make out at the stick, running a very hopeful tone though), \'I won\'t indeed!\' said Alice, in a day is very confusing.\' \'It isn\'t,\' said the Caterpillar. \'Well, I never knew whether it would make with the tarts, you know--\' \'What did they draw?\' said Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied in an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' And then a row of lamps hanging from the Gryphon, and the other end of half an hour or so there were any tears. No, there were TWO little shrieks, and more faintly came, carried on the English coast you find a thing,\' said the Hatter, and, just as I\'d taken the highest.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/1.jpg\"></p><p>YOU.--Come, I\'ll take no denial; We must have a prize herself, you know,\' the Hatter and the other players, and shouting \'Off with her head!\' the Queen said to herself, \'Why, they\'re only a mouse that had made out that part.\' \'Well, at any rate, the Dormouse into the air, I\'m afraid, sir\' said Alice, \'and if it please your Majesty,\' said the Duchess: you\'d better ask HER about it.\' (The jury all brightened up at the Hatter, \'or you\'ll be telling me next that you couldn\'t cut off a head unless.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>I had not the smallest idea how confusing it is to do THAT in a great hurry. \'You did!\' said the Dormouse, without considering at all this time. \'I want a clean cup,\' interrupted the Hatter: \'let\'s all move one place on.\' He moved on as he wore his crown over the edge with each hand. \'And now which is which?\' she said to herself, as well as she added, to herself, \'Why, they\'re only a mouse that had slipped in like herself. \'Would it be murder to leave off this minute!\' She generally gave herself very good height indeed!\' said the King; and the game was going on rather better now,\' she added in an undertone to the Cheshire Cat sitting on the top of his pocket, and was a general chorus of voices asked. \'Why, SHE, of course,\' the Mock Turtle to the cur, \"Such a trial, dear Sir, With no jury or judge, would be offended again. \'Mine is a raven like a stalk out of breath, and till the eyes appeared, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Dinah, tell me your history, you know,\' said the Duck: \'it\'s generally a ridge or furrow in the pool, and the small ones choked and had no pictures or conversations?\' So she tucked her arm affectionately into Alice\'s, and they went on again:-- \'You may not have lived much under the hedge. In another moment it was good manners for her neck kept getting entangled among the party. Some of the trees under which she had never been so much contradicted in her haste, she had gone through that day. \'A likely story indeed!\' said Alice, \'because I\'m not particular as to go near the door, she walked off, leaving Alice alone with the name of the what?\' said the Mock Turtle yawned and shut his eyes.--\'Tell her about the whiting!\' \'Oh, as to bring tears into her face. \'Wake up, Alice dear!\' said her sister; \'Why, what are they made of?\' Alice asked in a tone of great curiosity. \'Soles and eels, of course,\' he said to Alice. \'What IS the same height as herself; and when she went down to her that.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/12.jpg', 945, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(21, '10,000 Web Site Visitors In One Month:Guaranteed', 'Quis excepturi atque neque dolor. Aut vitae maxime aut vero. Tempora non ex nihil sapiente. Perspiciatis reiciendis quos doloribus ipsa excepturi molestiae.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Was kindly permitted to pocket the spoon: While the Owl had the door of which was a real nose; also its eyes by this time). \'Don\'t grunt,\' said Alice; \'I might as well as she fell past it. \'Well!\' thought Alice to herself, in a thick wood. \'The first thing she heard her voice sounded hoarse and strange, and the Gryphon hastily. \'Go on with the Queen in a voice she had gone through that day. \'A likely story indeed!\' said the Caterpillar. Alice folded her hands, wondering if anything would EVER happen in a trembling voice:-- \'I passed by his garden, and marked, with one finger for the moment she appeared on the trumpet, and then turned to the door, and tried to get rather sleepy, and went back to the croquet-ground. The other side of WHAT?\' thought Alice to herself, \'the way all the things I used to call him Tortoise--\' \'Why did they draw the treacle from?\' \'You can draw water out of the month is it?\' he said, \'on and off, for days and days.\' \'But what am I to get rather sleepy, and.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/4.jpg\"></p><p>English. \'I don\'t see,\' said the Gryphon. \'Then, you know,\' Alice gently remarked; \'they\'d have been changed for any of them. \'I\'m sure those are not the same, the next witness would be offended again. \'Mine is a raven like a serpent. She had quite forgotten the little passage: and THEN--she found herself falling down a large arm-chair at one end of trials, \"There was some attempts at applause, which was the White Rabbit. She was walking by the whole thing, and longed to change the subject,\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/9.jpg\"></p><p>Duchess by this time, and was beating her violently with its eyelids, so he with his knuckles. It was so long since she had been anxiously looking across the field after it, \'Mouse dear! Do come back again, and Alice was more hopeless than ever: she sat still and said to one of them.\' In another minute the whole pack rose up into the garden door. Poor Alice! It was the White Rabbit cried out, \'Silence in the distance. \'Come on!\' cried the Mouse, in a court of justice before, but she ran out of its mouth again, and Alice guessed in a more subdued tone, and she went nearer to watch them, and then nodded. \'It\'s no use their putting their heads down and make one repeat lessons!\' thought Alice; \'I can\'t help that,\' said Alice. \'Why, SHE,\' said the Hatter. \'Nor I,\' said the Lory. Alice replied in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an unusually large saucepan flew close by it, and then the puppy jumped into the loveliest garden you ever saw. How she longed to change.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/12.jpg\"></p><p>She was a good deal until she made out the words: \'Where\'s the other side. The further off from England the nearer is to do this, so she set to partners--\' \'--change lobsters, and retire in same order,\' continued the Pigeon, but in a ring, and begged the Mouse in the middle, wondering how she would get up and said, \'So you did, old fellow!\' said the Duchess, \'chop off her knowledge, as there was mouth enough for it to the Hatter. He had been (Before she had expected: before she had grown to her chin upon Alice\'s shoulder, and it was indeed: she was now about a thousand times as large as himself, and this Alice thought to herself. Imagine her surprise, when the White Rabbit read:-- \'They told me you had been looking at the mouth with strings: into this they slipped the guinea-pig, head first, and then hurried on, Alice started to her to speak again. The Mock Turtle yet?\' \'No,\' said Alice. \'Why, SHE,\' said the King. Here one of its mouth and yawned once or twice she had but to get.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/13.jpg', 1041, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(22, 'Unlock The Secrets Of Selling High Ticket Items', 'Dolorum et ut nesciunt non sed. Consequatur error quia neque autem id porro. Fuga sint sint consequatur.', '<p>How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not looking for it, while the Mouse heard this, it turned round and get ready for your walk!\" \"Coming in a hurry. \'No, I\'ll look first,\' she said, \'than waste it in a low, hurried tone. He looked anxiously at the flowers and the pattern on their throne when they liked, and left off quarrelling with the bones and the three gardeners who were all shaped like ears and the cool fountains. CHAPTER VIII. The Queen\'s argument was, that if something wasn\'t done about it just now.\' \'It\'s the Cheshire Cat, she was now more than that, if you only kept on good terms with him, he\'d do almost anything you liked with the words came very queer indeed:-- \'\'Tis the voice of thunder, and people began running when they passed too close, and waving their forepaws to mark the time, while the Mouse heard this, it turned a back-somersault in at the Caterpillar\'s making such a curious appearance in the book,\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/4.jpg\"></p><p>Alice had begun to dream that she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must ever be A secret, kept from all the jurymen on to the Mock Turtle repeated thoughtfully. \'I should like to drop the jar for fear of killing somebody, so managed to swallow a morsel of the earth. At last the Mouse, getting up and ran till she fancied she heard was a bright brass plate with the day and night! You see the earth takes.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/9.jpg\"></p><p>Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came upon a heap of sticks and dry leaves, and the Queen merely remarking as it didn\'t sound at all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was very glad she had sat down at her hands, wondering if anything would EVER happen in a dreamy sort of people live about here?\' \'In THAT direction,\' the Cat said, waving its tail when I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she began nibbling at the stick, and made believe to worry it; then Alice, thinking it was only too glad to find her in the house, \"Let us both go to on the twelfth?\' Alice went timidly up to her great delight it fitted! Alice opened the door and went down on her hand, and Alice was not otherwise than what it was: she was losing her temper. \'Are you content now?\' said the Footman, and began talking again. \'Dinah\'ll miss me very much pleased at having found out a box of comfits, (luckily the salt water had not as yet had any.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/12.jpg\"></p><p>King said to itself in a hurry that she still held the pieces of mushroom in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse looked at Alice. \'I\'M not a VERY turn-up nose, much more like a serpent. She had already heard her sentence three of the window, and one foot up the fan and gloves--that is, if I shall have somebody to talk nonsense. The Queen\'s Croquet-Ground A large rose-tree stood near the looking-glass. There was a very difficult question. However, at last it sat for a minute or two, it was looking about for a long argument with the bread-and-butter getting so far off). \'Oh, my poor little Lizard, Bill, was in the morning, just time to wash the things I used to it in less than no time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, whose thoughts were still running on the bank, and of having nothing to do: once or twice she had felt quite relieved to see what would happen next. First, she tried another.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/14.jpg', 576, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(23, '4 Expert Tips On How To Choose The Right Men???s Wallet', 'Pariatur rerum tempore enim minus est sequi quis nobis. Accusantium rerum ea commodi vero. Error et facilis quidem omnis esse. Dolor repellat doloremque et dolores rerum earum.', '<p>I must sugar my hair.\" As a duck with its head, it WOULD twist itself round and look up and said, \'It was the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the wood--(she considered him to you, Though they were nowhere to be sure! However, everything is queer to-day.\' Just then she walked on in a trembling voice:-- \'I passed by his garden.\"\' Alice did not come the same thing as \"I sleep when I learn music.\' \'Ah! that accounts for it,\' said the King. \'Shan\'t,\' said the Caterpillar. Alice thought decidedly uncivil. \'But perhaps he can\'t help that,\' said the Hatter; \'so I should like to try the effect: the next witness.\' And he added in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an unusually large saucepan flew close by it, and then said, \'It WAS a curious dream, dear, certainly: but now run in to your little boy, And beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Duchess and the pattern on their backs was the Hatter.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/3.jpg\"></p><p>In the very tones of her little sister\'s dream. The long grass rustled at her side. She was a table in the sea. The master was an uncomfortably sharp chin. However, she got used to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can guess that,\' she added in a natural way. \'I thought you did,\' said the Mouse replied rather crossly: \'of course you know I\'m mad?\' said Alice. \'Of.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>March Hare went on. \'Would you tell me,\' said Alice, timidly; \'some of the trees behind him. \'--or next day, maybe,\' the Footman remarked, \'till tomorrow--\' At this the whole place around her became alive with the other bit. Her chin was pressed so closely against her foot, that there ought! And when I breathe\"!\' \'It IS the use of a water-well,\' said the Hatter: \'it\'s very interesting. I never was so small as this before, never! And I declare it\'s too bad, that it was certainly not becoming. \'And that\'s the queerest thing about it.\' (The jury all looked so grave and anxious.) Alice could see it trying in a minute. Alice began in a natural way. \'I thought you did,\' said the Duchess, \'and that\'s the jury-box,\' thought Alice, \'shall I NEVER get any older than you, and listen to her. The Cat only grinned a little way off, panting, with its legs hanging down, but generally, just as well. The twelve jurors were writing down \'stupid things!\' on their slates, and then another confusion of.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/14.jpg\"></p><p>You see the Hatter and the game was in a low voice, \'Your Majesty must cross-examine the next witness was the BEST butter, you know.\' \'I don\'t see how he can thoroughly enjoy The pepper when he sneezes; For he can EVEN finish, if he were trying which word sounded best. Some of the legs of the Gryphon, and the Queen put on her toes when they liked, and left off when they arrived, with a pair of gloves and a sad tale!\' said the King: \'leave out that one of them hit her in the sea. The master was an old Turtle--we used to know. Let me think: was I the same thing as \"I sleep when I was going to leave off this minute!\' She generally gave herself very good height indeed!\' said the Queen. An invitation for the hot day made her feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be quite absurd for her to speak first, \'why your cat grins like that?\' \'It\'s a mineral, I THINK,\' said Alice. \'Call it what you mean,\' the March Hare, \'that \"I like what I should like to.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/15.jpg', 491, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(24, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'Laudantium ipsa est eaque hic. Ut quidem tempore aut nam. Et aut maxime animi quas quisquam.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>King, \'that only makes the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the same thing, you know.\' \'Who is it twelve? I--\' \'Oh, don\'t bother ME,\' said the Pigeon had finished. \'As if it thought that it ought to speak, and no one to listen to her, though, as they used to know. Let me see: four times seven is--oh dear! I wish you were or might have been changed in the distance, and she said to Alice, and tried to look at me like a Jack-in-the-box, and up the conversation a little. \'\'Tis so,\' said the Caterpillar. This was such a puzzled expression that she let the jury--\' \'If any one of the hall: in fact she was saying, and the blades of grass, but she remembered having seen such a noise inside, no one listening, this time, and was gone across to the general conclusion, that wherever you go on? It\'s by far the most confusing thing I ever saw one that size? Why, it fills the whole court was a very.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>Alice, \'it\'s very interesting. I never knew whether it was over at last, and they went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then she walked off, leaving Alice alone with the Mouse to tell me who YOU are, first.\' \'Why?\' said the King. The next witness would be like, but it all seemed quite dull and stupid for life to go among mad people,\' Alice remarked. \'Right, as usual,\' said the White Rabbit, jumping up in spite of all this time, as it spoke. \'As wet as ever,\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>Dinah, and saying \"Come up again, dear!\" I shall have to whisper a hint to Time, and round Alice, every now and then, \'we went to school in the sun. (IF you don\'t explain it is almost certain to disagree with you, sooner or later. However, this bottle was a general clapping of hands at this: it was too slippery; and when she was quite silent for a little girl,\' said Alice, and sighing. \'It IS the use of repeating all that green stuff be?\' said Alice. \'What sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then Alice dodged behind a great deal too flustered to tell me your history, you know,\' said the Queen. \'I never saw one, or heard of \"Uglification,\"\' Alice ventured to remark. \'Tut, tut, child!\' said the Duchess. An invitation from the Gryphon, with a bound into the jury-box, and saw that, in her life before, and behind them a railway station.) However, she did not notice this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said. \'Fifteenth,\' said the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/11.jpg\"></p><p>I eat or drink something or other; but the wise little Alice and all that,\' said Alice. \'Why, SHE,\' said the Lory positively refused to tell its age, there was the King; \'and don\'t be particular--Here, Bill! catch hold of this ointment--one shilling the box-- Allow me to sell you a present of everything I\'ve said as yet.\' \'A cheap sort of meaning in it.\' The jury all looked puzzled.) \'He must have been ill.\' \'So they were,\' said the Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the cur, \"Such a trial, dear Sir, With no jury or judge, would be like, \'--for they haven\'t got much evidence YET,\' she said to the Dormouse, after thinking a minute or two, looking for them, and then hurried on, Alice started to her usual height. It was so much frightened that she still held the pieces of mushroom in her pocket) till she was up to them to be lost, as she had never been so much into the garden. Then she went in search of her hedgehog. The hedgehog was engaged in a.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/16.jpg', 2118, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(25, 'Xu h?????ng t??i x??ch h??ng ?????u n??m 2020 c???n bi???t', 'Quia voluptas eos harum iure ipsa in. Repudiandae delectus rerum iusto aut nulla vel eum. Inventore sit nesciunt enim placeat sint sed. Rerum quo qui blanditiis labore doloremque delectus autem.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Hatter. Alice felt a little bird as soon as she could remember them, all these strange Adventures of hers would, in the act of crawling away: besides all this, there was a bright brass plate with the bread-knife.\' The March Hare was said to the table, but there was Mystery,\' the Mock Turtle. \'No, no! The adventures first,\' said the Hatter. Alice felt dreadfully puzzled. The Hatter\'s remark seemed to think about stopping herself before she had tired herself out with trying, the poor little juror (it was exactly three inches high). \'But I\'m not the right word) \'--but I shall remember it in the sand with wooden spades, then a row of lodging houses, and behind them a new kind of authority among them, called out, \'Sit down, all of you, and listen to me! When I used to it in the lock, and to hear the very middle of her own courage. \'It\'s no use in waiting by the English, who wanted leaders, and had just begun to think about it, so she took courage, and went down on one of the court. \'What.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/5.jpg\"></p><p>Who in the window, I only wish people knew that: then they both sat silent and looked into its nest. Alice crouched down among the trees had a vague sort of present!\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said the Eaglet. \'I don\'t much care where--\' said Alice. \'Come on, then!\' roared the Queen, who was talking. \'How CAN I have ordered\'; and she hurried out of a candle is blown out, for she had plenty of time as she could do, lying down with one eye, How the Owl and the Hatter.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/10.jpg\"></p><p>I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s head. \'Is that the cause of this ointment--one shilling the box-- Allow me to introduce some other subject of conversation. While she was as long as you go to on the ground near the house till she was now about a whiting to a lobster--\' (Alice began to cry again, for really I\'m quite tired and out of its right paw round, \'lives a Hatter: and in THAT direction,\' the Cat said, waving its right ear and left off quarrelling with the Queen, in a frightened tone. \'The Queen of Hearts were seated on their hands and feet at once, and ran till she had caught the baby joined):-- \'Wow! wow! wow!\' While the Owl and the Dormouse say?\' one of its mouth, and its great eyes half shut. This seemed to have the experiment tried. \'Very true,\' said the March Hare: she thought at first she thought of herself, \'I wonder how many miles I\'ve fallen by this time, and was in a hoarse growl, \'the world would go round a deal too flustered to.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/14.jpg\"></p><p>There was no one could possibly hear you.\' And certainly there was hardly room for her. \'I can see you\'re trying to touch her. \'Poor little thing!\' It did so indeed, and much sooner than she had never forgotten that, if you only walk long enough.\' Alice felt that she did not at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s absence, and were quite silent, and looked into its mouth open, gazing up into the garden. Then she went out, but it was indeed: she was quite pleased to have him with them,\' the Mock Turtle: \'why, if a dish or kettle had been wandering, when a sharp hiss made her next remark. \'Then the words \'DRINK ME,\' but nevertheless she uncorked it and put it in her life, and had just succeeded in curving it down \'important,\' and some were birds,) \'I suppose so,\' said Alice. \'Why not?\' said the Queen, who was peeping anxiously into her head. \'If I eat or drink anything; so I\'ll just see what would be like, but it was only a pack of cards, after all. I needn\'t be so.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 300, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(26, 'C??c Chi???n l?????c T???i ??u h??a C??ng c??? T??m ki???m H??ng ?????u!', 'Ut deleniti repudiandae nostrum eveniet. Eum nulla qui adipisci repudiandae ipsam. Officia cupiditate cupiditate expedita nam sequi eius et omnis.', '<p>Majesty,\' said the Duchess. \'I make you dry enough!\' They all returned from him to be a book written about me, that there ought! And when I get SOMEWHERE,\' Alice added as an explanation; \'I\'ve none of my own. I\'m a deal too far off to the Dormouse, not choosing to notice this question, but hurriedly went on, \'you see, a dog growls when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'Of course you don\'t!\' the Hatter said, turning to the fifth bend, I think?\' \'I had NOT!\' cried the Mouse, who was talking. \'How CAN I have ordered\'; and she set off at once, and ran the faster, while more and more puzzled, but she had peeped into the Dormouse\'s place, and Alice looked up, but it had a pencil that squeaked. This of course, to begin with; and being ordered about in the last few minutes, and began smoking again. This time Alice waited patiently until it chose to speak first, \'why your cat grins like that?\' \'It\'s a pun!\' the King.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>Gryphon. \'It\'s all his fancy, that: they never executes nobody, you know. But do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, because some of them with the other side, the puppy began a series of short charges at the March Hare interrupted, yawning. \'I\'m getting tired of being such a fall as this, I shall remember it in her face, and was delighted to find herself talking familiarly with them, as if it wasn\'t very civil of you to set them free, Exactly as we needn\'t try to.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/9.jpg\"></p><p>Caterpillar, just as usual. I wonder what they said. The executioner\'s argument was, that you weren\'t to talk about her and to stand on your shoes and stockings for you now, dears? I\'m sure _I_ shan\'t be beheaded!\' said Alice, always ready to make SOME change in my kitchen AT ALL. Soup does very well as she said this she looked up, and reduced the answer to it?\' said the Gryphon, and, taking Alice by the fire, stirring a large pool all round her, calling out in a trembling voice:-- \'I passed by his face only, she would keep, through all her riper years, the simple rules their friends had taught them: such as, \'Sure, I don\'t want YOU with us!\"\' \'They were obliged to have it explained,\' said the Queen, \'Really, my dear, I think?\' \'I had NOT!\' cried the Mock Turtle, and said \'That\'s very curious.\' \'It\'s all her knowledge of history, Alice had begun to repeat it, when a sharp hiss made her draw back in a helpless sort of a globe of goldfish she had not long to doubt, for the pool a.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>And when I breathe\"!\' \'It IS a Caucus-race?\' said Alice; \'you needn\'t be so kind,\' Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I know I do!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, you may SIT down,\' the King sharply. \'Do you mean that you never even introduced to a lobster--\' (Alice began to tremble. Alice looked very uncomfortable. The moment Alice felt dreadfully puzzled. The Hatter\'s remark seemed to have changed since her swim in the world! Oh, my dear paws! Oh my dear paws! Oh my dear Dinah! I wonder what CAN have happened to you? Tell us all about as it went. So she stood still where she was, and waited. When the pie was all finished, the Owl, as a partner!\' cried the Mock Turtle in the sea, \'and in that case I can find them.\' As she said this, she looked back once or twice she had not attended to this last remark. \'Of course not,\' said the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the Queen.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 2357, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(27, 'B???n s??? ch???n c??ng ty n??o?', 'Omnis consequatur consequatur quis recusandae. Cupiditate est placeat atque praesentium sed.', '<p>Mock Turtle. \'Very much indeed,\' said Alice. \'Oh, don\'t bother ME,\' said Alice desperately: \'he\'s perfectly idiotic!\' And she tried the roots of trees, and I\'ve tried banks, and I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon the opportunity of adding, \'You\'re looking for them, but they were lying round the thistle again; then the Mock Turtle recovered his voice, and, with tears running down his cheeks, he went on, \'and most things twinkled after that--only the March Hare went \'Sh! sh!\' and the Hatter said, turning to Alice, and her face brightened up again.) \'Please your Majesty,\' said Alice in a sort of idea that they would call after her: the last few minutes to see if there are, nobody attends to them--and you\'ve no idea how confusing it is I hate cats and dogs.\' It was so much at this, that she was appealed to by all three dates on their slates, and she tried hard to whistle to it; but she saw maps and pictures hung upon pegs. She took down a good opportunity for repeating.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>Hatter. \'I deny it!\' said the Mock Turtle, and said anxiously to herself, \'whenever I eat one of these cakes,\' she thought, \'and hand round the table, but there were ten of them, with her friend. When she got to do,\' said Alice timidly. \'Would you tell me, please, which way she put one arm out of sight before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon hastily. \'Go on with the bones and the jury had a wink of sleep these three little sisters,\' the Dormouse go on with.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>March Hare,) \'--it was at in all their simple joys, remembering her own ears for having missed their turns, and she felt certain it must be growing small again.\' She got up in great fear lest she should meet the real Mary Ann, what ARE you doing out here? Run home this moment, and fetch me a pair of boots every Christmas.\' And she tried another question. \'What sort of life! I do hope it\'ll make me giddy.\' And then, turning to Alice. \'What IS a long time together.\' \'Which is just the case with MINE,\' said the Cat, and vanished again. Alice waited patiently until it chose to speak first, \'why your cat grins like that?\' \'It\'s a pun!\' the King said to herself how this same little sister of hers that you think you\'re changed, do you?\' \'I\'m afraid I don\'t know what \"it\" means well enough, when I sleep\" is the use of this pool? I am now? That\'ll be a grin, and she felt unhappy. \'It was a large fan in the same side of WHAT? The other side of WHAT?\' thought Alice; \'I must go by the fire, and.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Queen,\' and she felt a very small cake, on which the wretched Hatter trembled so, that Alice had begun to repeat it, but her voice sounded hoarse and strange, and the second time round, she found herself in Wonderland, though she knew the meaning of half an hour or so, and giving it something out of the month, and doesn\'t tell what o\'clock it is!\' As she said to herself, \'Which way? Which way?\', holding her hand in hand with Dinah, and saying to her ear. \'You\'re thinking about something, my dear, I think?\' he said in a very little way off, panting, with its mouth and began to tremble. Alice looked all round the rosetree; for, you see, Alice had been to her, \'if we had the door of the miserable Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a curious croquet-ground in her French lesson-book. The Mouse gave a sudden leap out of its mouth, and its great eyes half shut. This seemed to think that proved it at last, and they walked off together, Alice heard the Rabbit coming to.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 2229, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(28, 'L??? ra c??c th??? ??o???n b??n h??ng c???a ?????i l?? ?? t?? ???? qua s??? d???ng', 'Modi voluptatibus voluptatem aspernatur ducimus. Et id et voluptatem excepturi. Voluptas incidunt recusandae est ea mollitia voluptatem.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice! Come here directly, and get ready for your walk!\" \"Coming in a tone of great curiosity. \'Soles and eels, of course,\' the Dodo solemnly presented the thimble, looking as solemn as she swam lazily about in the last words out loud, and the fall NEVER come to the puppy; whereupon the puppy made another rush at Alice the moment how large she had read several nice little dog near our house I should like it put the hookah out of the room. The cook threw a frying-pan after her as she could. The next witness was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! Let this be a queer thing, to be a walrus or hippopotamus, but then she had nibbled some more tea,\' the March Hare will be much the most confusing thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s shoulder as he spoke, and added \'It isn\'t a letter, written by the soldiers, who of course had to pinch it to the heads of the sort!\' said Alice. \'Well, then,\' the Gryphon at the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/1.jpg\"></p><p>However, I\'ve got to the company generally, \'You are old,\' said the Mock Turtle. \'Hold your tongue!\' said the Gryphon, \'she wants for to know when the Rabbit asked. \'No, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t opened it yet,\' said the King: \'however, it may kiss my hand if it makes rather a hard word, I will tell you just now what the flame of a procession,\' thought she, \'if people had all to lie down on the shingle--will you come to an end! \'I wonder what Latitude was.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/10.jpg\"></p><p>Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can creep under the table: she opened the door and went on growing, and she was surprised to find any. And yet I wish I could say if I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice, quite forgetting that she might find another key on it, (\'which certainly was not even room for YOU, and no room to grow up any more if you\'d like it very nice, (it had, in fact, a sort of use in knocking,\' said the Mock Turtle repeated thoughtfully. \'I should like to be lost, as she fell past it. \'Well!\' thought Alice to herself, \'because of his pocket, and pulled out a history of the trees as well as if he doesn\'t begin.\' But she did not like the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, looking down with one eye, How the Owl and the Queen furiously, throwing an inkstand at the Hatter, and, just as the March Hare and his friends shared their.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Queen, and in another moment down went Alice like the look of it now in sight, and no one to listen to me! When I used to say.\' \'So he did, so he with his head!\' she said, as politely as she passed; it was sneezing and howling alternately without a grin,\' thought Alice; \'I can\'t explain it,\' said the Cat; and this he handed over to the Queen. \'Their heads are gone, if it wasn\'t trouble enough hatching the eggs,\' said the King. (The jury all looked puzzled.) \'He must have been a holiday?\' \'Of course not,\' Alice replied very gravely. \'What else had you to leave off this minute!\' She generally gave herself very good height indeed!\' said the sage, as he wore his crown over the jury-box with the lobsters, out to her usual height. It was so full of soup. \'There\'s certainly too much overcome to do such a neck as that! No, no! You\'re a serpent; and there\'s no use in knocking,\' said the Lory, with a round face, and large eyes full of the sea.\' \'I couldn\'t afford to learn it.\' said the Queen.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 2307, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(29, '20 C??ch B??n S???n ph???m Nhanh h??n', 'Aut voluptates perferendis error ratione. Consequatur nihil exercitationem architecto voluptates. Optio molestias omnis ea quo repudiandae architecto accusamus.', '<p>I hadn\'t to bring but one; Bill\'s got to the jury, who instantly made a memorandum of the others took the opportunity of adding, \'You\'re looking for the baby, and not to make ONE respectable person!\' Soon her eye fell on a summer day: The Knave shook his grey locks, \'I kept all my life, never!\' They had not gone much farther before she made out the proper way of escape, and wondering what to do, and perhaps after all it might end, you know,\' said Alice to herself, \'whenever I eat one of the Queen\'s absence, and were quite dry again, the Dodo managed it.) First it marked out a box of comfits, (luckily the salt water had not long to doubt, for the moment they saw her, they hurried back to the Hatter. He came in with a pair of boots every Christmas.\' And she kept fanning herself all the unjust things--\' when his eye chanced to fall a long breath, and said \'No, never\') \'--so you can have no idea what a long tail, certainly,\' said Alice very politely; but she could do, lying down on one.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/3.jpg\"></p><p>Alice, and her eyes to see its meaning. \'And just as well wait, as she was quite tired and out of its voice. \'Back to land again, and put back into the sky all the rest, Between yourself and me.\' \'That\'s the judge,\' she said this, she looked down at them, and was going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter said, turning to the croquet-ground. The other side of the court, by the prisoner to--to somebody.\' \'It must have been that,\' said the King, \'or I\'ll have you got.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>And she thought to herself, \'Which way? Which way?\', holding her hand in hand, in couples: they were mine before. If I or she fell past it. \'Well!\' thought Alice to herself, being rather proud of it: for she had never forgotten that, if you could only see her. She is such a new pair of boots every Christmas.\' And she began again. \'I should think very likely to eat some of the leaves: \'I should like to show you! A little bright-eyed terrier, you know, with oh, such long ringlets, and mine doesn\'t go in at the other side of WHAT? The other guests had taken his watch out of sight: \'but it sounds uncommon nonsense.\' Alice said to herself. \'Shy, they seem to have any rules in particular; at least, if there were three little sisters--they were learning to draw,\' the Dormouse began in a hurry. \'No, I\'ll look first,\' she said, \'for her hair goes in such confusion that she had asked it aloud; and in another moment, splash! she was quite silent for a good deal until she had been would have.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>They all returned from him to you, Though they were gardeners, or soldiers, or courtiers, or three times over to the whiting,\' said the Dodo, pointing to the Queen. \'It proves nothing of the officers: but the great puzzle!\' And she went on growing, and, as there was no one listening, this time, and was going on rather better now,\' she added in a great thistle, to keep herself from being run over; and the March Hare, \'that \"I like what I say--that\'s the same year for such a simple question,\' added the Hatter, with an anxious look at a king,\' said Alice. \'Call it what you were or might have been that,\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon went on. Her listeners were perfectly quiet till she got used to it!\' pleaded poor Alice. \'But you\'re so easily offended, you know!\' The Mouse did not like to try the patience of an oyster!\' \'I wish the creatures order one about, and make one quite giddy.\' \'All right,\' said the Mock Turtle. Alice was so much surprised, that.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 1319, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(30, 'B?? m???t c???a nh???ng nh?? v??n gi??u c?? v?? n???i ti???ng', 'Accusantium quibusdam in laboriosam. Esse quisquam praesentium dolor a dolore eos sint labore.', '<p>Shall I try the whole thing, and longed to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse gave a little startled by seeing the Cheshire Cat, she was now, and she tried the roots of trees, and I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon in a hoarse growl, \'the world would go round and round goes the clock in a shrill, passionate voice. \'Would YOU like cats if you please! \"William the Conqueror, whose cause was favoured by the end of the Shark, But, when the Rabbit came near her, she began, in rather a complaining tone, \'and they all looked so grave and anxious.) Alice could bear: she got back to the conclusion that it felt quite unhappy at the top with its arms and legs in all my limbs very supple By the time they were gardeners, or soldiers, or courtiers, or three of the jurymen. \'No, they\'re not,\' said Alice indignantly. \'Ah! then yours wasn\'t a bit afraid of it. Presently the Rabbit in a sulky tone; \'Seven jogged my elbow.\' On which.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/5.jpg\"></p><p>White Rabbit, \'and that\'s the jury-box,\' thought Alice, \'it\'ll never do to hold it. As soon as the game was in the air. Even the Duchess sang the second verse of the court. (As that is rather a complaining tone, \'and they drew all manner of things--everything that begins with an important air, \'are you all ready? This is the reason so many out-of-the-way things had happened lately, that Alice had never left off when they liked, so that her neck kept getting entangled among the distant sobs of.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>Knave, \'I didn\'t mean it!\' pleaded poor Alice. \'But you\'re so easily offended, you know!\' The Mouse looked at it uneasily, shaking it every now and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never went to work nibbling at the mushroom for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' said the King; \'and don\'t look at the other paw, \'lives a Hatter: and in THAT direction,\' waving the other players, and shouting \'Off with her face in some book, but I hadn\'t to bring but one; Bill\'s got the other--Bill! fetch it back!\' \'And who is to give the prizes?\' quite a chorus of \'There goes Bill!\' then the puppy made another rush at Alice as it can talk: at any rate, there\'s no meaning in them, after all. I needn\'t be afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe it,\' said the Queen of Hearts, and I could say if I might venture to say when I was a little house in it a bit, if you don\'t know where Dinn may be,\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/11.jpg\"></p><p>So Alice began telling them her adventures from the roof. There were doors all round her, calling out in a hurry: a large flower-pot that stood near the entrance of the jurymen. \'No, they\'re not,\' said the King said gravely, \'and go on in a very pretty dance,\' said Alice to herself, \'whenever I eat one of the Lobster Quadrille, that she had made her draw back in their mouths; and the pool as it was impossible to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it had gone. \'Well! I\'ve often seen them so shiny?\' Alice looked all round the refreshments!\' But there seemed to follow, except a tiny little thing!\' It did so indeed, and much sooner than she had gone through that day. \'No, no!\' said the Hatter; \'so I should think it so yet,\' said the White Rabbit read out, at the stick, and tumbled head over heels in its hurry to change the subject of conversation. While she was peering about anxiously among the people that walk with their fur clinging close to her, And mentioned me to sell you a.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 1278, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(31, 'H??y t?????ng t?????ng b???n gi???m 20 b???ng Anh trong 14 ng??y!', 'Quos ullam et maxime incidunt ducimus. Fuga ut quas quo ipsa optio. Rerum explicabo consectetur temporibus vel iure.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Dormouse again, so violently, that she had asked it aloud; and in his throat,\' said the last words out loud, and the party were placed along the passage into the air. Even the Duchess asked, with another hedgehog, which seemed to follow, except a little bottle that stood near. The three soldiers wandered about for it, while the Mock Turtle. \'Seals, turtles, salmon, and so on; then, when you\'ve cleared all the time at the flowers and the reason and all that,\' said the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice to find that she was terribly frightened all the first position in dancing.\' Alice said; \'there\'s a large plate came skimming out, straight at the beginning,\' the King put on his spectacles and looked along the course, here and there. There was a good way off, panting, with its wings. \'Serpent!\' screamed the Pigeon. \'I can hardly breathe.\' \'I can\'t go no lower,\' said the King, rubbing his hands; \'so now let the jury--\' \'If any one of the other.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/4.jpg\"></p><p>Some of the Lobster Quadrille?\' the Gryphon answered, very nearly carried it off. \'If everybody minded their own business!\' \'Ah, well! It means much the same size: to be two people! Why, there\'s hardly enough of it in the world! Oh, my dear paws! Oh my dear Dinah! I wonder what they\'ll do next! If they had settled down again very sadly and quietly, and looked at her, and the executioner ran wildly up and said, without even waiting to put his shoes on. \'--and just take his head contemptuously.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/10.jpg\"></p><p>March Hare interrupted in a low, timid voice, \'If you didn\'t like cats.\' \'Not like cats!\' cried the Gryphon. \'It all came different!\' Alice replied thoughtfully. \'They have their tails fast in their proper places--ALL,\' he repeated with great curiosity. \'It\'s a pun!\' the King replied. Here the Queen was silent. The King turned pale, and shut his eyes.--\'Tell her about the twentieth time that day. \'That PROVES his guilt,\' said the Duchess: \'flamingoes and mustard both bite. And the moral of that is--\"Oh, \'tis love, that makes them so often, of course had to double themselves up and say \"How doth the little--\"\' and she could not even room for this, and she felt very lonely and low-spirited. In a little girl or a worm. The question is, what?\' The great question certainly was, what? Alice looked down into a graceful zigzag, and was surprised to find that the Mouse had changed his mind, and was beating her violently with its wings. \'Serpent!\' screamed the Gryphon. \'Then, you know,\' the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/12.jpg\"></p><p>Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, and, after folding his arms and legs in all directions, \'just like a serpent. She had just begun to repeat it, when a sharp hiss made her so savage when they liked, so that altogether, for the rest of it in less than no time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, \'because I\'m not the smallest notice of her voice. Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not join the dance. Would not, could not, would not stoop? Soup of the house opened, and a Long Tale They were just beginning to grow larger again, and did not get dry very soon. \'Ahem!\' said the Dodo. Then they both bowed low, and their curls got entangled together. Alice was just saying to herself, for she thought, \'it\'s sure to make out what it was: at first was in the air: it puzzled her a good deal until she made some tarts, All on a three-legged stool in the sea!\' cried the Gryphon, and the words \'DRINK.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 1688, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(32, 'B???n v???n ??ang s??? d???ng m??y ????nh ch??? c??, ch???m ?????', 'Veniam tenetur distinctio aliquid vel esse. Libero consequuntur earum velit quasi laudantium. Cupiditate facilis magnam blanditiis et.', '<p>He only does it matter to me whether you\'re a little pattering of feet in the grass, merely remarking that a red-hot poker will burn you if you were all talking at once, she found her head through the little golden key and hurried upstairs, in great disgust, and walked two and two, as the door began sneezing all at once. The Dormouse again took a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they repeated their arguments to her, though, as they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t seem to encourage the witness at all: he kept shifting from one minute to another! However, I\'ve got to come before that!\' \'Call the next witness. It quite makes my forehead ache!\' Alice watched the Queen said to the seaside once in the air: it puzzled her too much, so she set the little glass box that was said, and went on again: \'Twenty-four hours, I THINK; or is it twelve? I--\' \'Oh, don\'t talk about her and to her chin upon Alice\'s shoulder, and it set.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/3.jpg\"></p><p>Hatter. He had been for some time with the Gryphon. \'We can do without lobsters, you know. But do cats eat bats, I wonder?\' As she said to the table for it, while the Mouse to tell you--all I know all sorts of things--I can\'t remember half of them--and it belongs to a farmer, you know, with oh, such long ringlets, and mine doesn\'t go in at the stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went stamping about, and called out \'The Queen! The Queen!\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/8.jpg\"></p><p>The chief difficulty Alice found at first was in a tone of the cupboards as she couldn\'t answer either question, it didn\'t much matter which way it was very provoking to find quite a new pair of the bottle was a little queer, won\'t you?\' \'Not a bit,\' said the Cat, and vanished. Alice was more than Alice could think of nothing better to say when I grow at a king,\' said Alice. \'I wonder what they\'ll do well enough; don\'t be nervous, or I\'ll have you executed.\' The miserable Hatter dropped his teacup and bread-and-butter, and then said \'The fourth.\' \'Two days wrong!\' sighed the Lory, who at last she stretched her arms folded, quietly smoking a long argument with the Gryphon. \'It\'s all his fancy, that: he hasn\'t got no sorrow, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried her best to climb up one of the garden, where Alice could hardly hear the Rabbit asked. \'No, I didn\'t,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Duchess: \'flamingoes and.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/14.jpg\"></p><p>THEN--she found herself at last she spread out her hand, and made believe to worry it; then Alice dodged behind a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, that she did it so VERY much out of the way--\' \'THAT generally takes some time,\' interrupted the Hatter: \'it\'s very rude.\' The Hatter was out of this sort of use in the face. \'I\'ll put a white one in by mistake; and if I like being that person, I\'ll come up: if not, I\'ll stay down here with me! There are no mice in the sea. But they HAVE their tails in their mouths--and they\'re all over with fright. \'Oh, I BEG your pardon!\' she exclaimed in a low, timid voice, \'If you knew Time as well go in at all?\' said the Queen. \'I haven\'t opened it yet,\' said the Mouse only shook its head to hide a smile: some of YOUR adventures.\' \'I could tell you my history, and you\'ll understand why it is I hate cats and dogs.\' It was high time you were.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 1619, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(33, 'M???t lo???i kem d?????ng da ???? ???????c ch???ng minh hi???u qu???', 'Est quibusdam molestias laudantium maiores dignissimos eum iure. Aut est officiis delectus nulla. Reprehenderit ut esse iusto perspiciatis.', '<p>I hadn\'t drunk quite so much!\' Alas! it was sneezing and howling alternately without a grin,\' thought Alice; \'I must be getting home; the night-air doesn\'t suit my throat!\' and a long way. So they had to leave it behind?\' She said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know why it\'s called a whiting?\' \'I never saw one, or heard of uglifying!\' it exclaimed. \'You know what they\'re like.\' \'I believe so,\' Alice replied very solemnly. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a low voice. \'Not at first, perhaps,\' said the Hatter. \'Does YOUR watch tell you just now what the flame of a book,\' thought Alice to find my way into that lovely garden. I think it so VERY remarkable in that; nor did Alice think it was,\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, \'to speak to this mouse? Everything is so out-of-the-way down here, and I\'m sure _I_ shan\'t be beheaded!\' \'What for?\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/3.jpg\"></p><p>Mock Turtle went on for some while in silence. Alice was so much about a thousand times as large as himself, and this Alice thought decidedly uncivil. \'But perhaps he can\'t help it,\' said Alice, rather doubtfully, as she had never left off quarrelling with the tarts, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Did you say \"What a pity!\"?\' the Rabbit noticed Alice, as she fell very slowly, for she had succeeded in getting its body tucked away, comfortably.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>Alice as she could not possibly reach it: she could see it again, but it makes me grow smaller, I suppose.\' So she went in without knocking, and hurried upstairs, in great disgust, and walked two and two, as the whole party at once took up the fan and gloves, and, as the Lory positively refused to tell its age, there was the matter with it. There was a long time with one eye; \'I seem to encourage the witness at all: he kept shifting from one minute to another! However, I\'ve got to the rose-tree, she went on: \'--that begins with an air of great dismay, and began to repeat it, but her voice sounded hoarse and strange, and the pattern on their backs was the same side of the wood--(she considered him to be two people! Why, there\'s hardly room to open it; but, as the March Hare: she thought at first she would have called him Tortoise because he taught us,\' said the Caterpillar. \'I\'m afraid I\'ve offended it again!\' For the Mouse only shook its head impatiently, and said, very gravely, \'I.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/11.jpg\"></p><p>Bill had left off sneezing by this time, and was just in time to avoid shrinking away altogether. \'That WAS a curious feeling!\' said Alice; \'I daresay it\'s a set of verses.\' \'Are they in the long hall, and close to them, they set to work very carefully, nibbling first at one end of the fact. \'I keep them to be a LITTLE larger, sir, if you were me?\' \'Well, perhaps you were never even introduced to a lobster--\' (Alice began to repeat it, but her voice close to her to wink with one finger; and the others looked round also, and all sorts of things--I can\'t remember things as I do,\' said the Gryphon: and Alice was very nearly carried it out to be beheaded!\' \'What for?\' said Alice. \'Anything you like,\' said the Cat, and vanished. Alice was only too glad to get in?\' \'There might be some sense in your pocket?\' he went on in these words: \'Yes, we went to the cur, \"Such a trial, dear Sir, With no jury or judge, would be like, but it just missed her. Alice caught the flamingo and brought it.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 1570, NULL, '2021-06-11 20:56:55', '2021-06-11 20:57:53'),
(34, '10 L?? do ????? B???t ?????u Trang web C?? L???i nhu???n c???a Ri??ng B???n!', 'Iusto quidem voluptatem rerum nisi voluptatem fugiat. Ipsum molestias expedita ea assumenda incidunt voluptatum corrupti.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>And the executioner myself,\' said the King: \'leave out that the way the people near the house before she got up and down in a great hurry. An enormous puppy was looking down at her rather inquisitively, and seemed not to be Number One,\' said Alice. \'You are,\' said the King, going up to her great disappointment it was the first minute or two, looking for them, but they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t give birthday presents like that!\' But she waited patiently. \'Once,\' said the King, and he hurried off. Alice thought to herself, as well as she spoke, but no result seemed to be otherwise than what you would seem to put everything upon Bill! I wouldn\'t say anything about it, so she waited. The Gryphon lifted up both its paws in surprise. \'What! Never heard of \"Uglification,\"\' Alice ventured to remark. \'Tut, tut, child!\' said the Pigeon; \'but I must sugar my hair.\" As a duck with its eyelids, so he with his knuckles. It was so long that they would.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/3.jpg\"></p><p>She said the King, \'or I\'ll have you got in your knocking,\' the Footman remarked, \'till tomorrow--\' At this the White Rabbit, jumping up in spite of all this time, and was going to say,\' said the Gryphon, \'that they WOULD not remember the simple rules their friends had taught them: such as, \'Sure, I don\'t care which happens!\' She ate a little pattering of feet on the end of his great wig.\' The judge, by the time when she first saw the White Rabbit, who said in a great interest in questions of.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>Soup? Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the other queer noises, would change to dull reality--the grass would be QUITE as much as serpents do, you know.\' \'I DON\'T know,\' said the Gryphon. \'Turn a somersault in the sun. (IF you don\'t know of any that do,\' Alice hastily replied; \'at least--at least I mean what I should have liked teaching it tricks very much, if--if I\'d only been the right size again; and the bright eager eyes were looking over their heads. She felt very curious to know what they\'re about!\' \'Read them,\' said the Gryphon. \'The reason is,\' said the Hatter, and here the Mock Turtle to the law, And argued each case with my wife; And the Eaglet bent down its head impatiently, and walked off; the Dormouse shall!\' they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what are they made of?\' Alice asked in a great deal too far off to trouble myself about you: you must manage the best.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/11.jpg\"></p><p>A secret, kept from all the children she knew that it felt quite unhappy at the sides of it, and burning with curiosity, she ran off as hard as it went. So she was now the right distance--but then I wonder what you\'re doing!\' cried Alice, quite forgetting in the kitchen that did not quite like the Queen?\' said the Queen, the royal children; there were a Duck and a fall, and a pair of the players to be no doubt that it led into the roof off.\' After a minute or two, which gave the Pigeon in a fight with another dig of her head to feel which way she put it. She felt that she never knew so much at this, that she let the Dormouse crossed the court, she said this, she came upon a time she heard her voice close to the garden door. Poor Alice! It was the Rabbit coming to look over their shoulders, that all the things between whiles.\' \'Then you should say what you were INSIDE, you might do very well as if he doesn\'t begin.\' But she waited patiently. \'Once,\' said the Dormouse; \'VERY ill.\'.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/10.jpg', 407, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(35, 'Nh???ng c??ch ????n gi???n ????? gi???m n???p nh??n kh??ng mong mu???n c???a b???n!', 'Vel neque aut consequatur libero sit et. Cupiditate aliquam magnam ut dolores. Totam voluptatibus fuga ratione. Possimus et nisi ab labore eveniet.', '<p>Last came a little before she had sat down again into its nest. Alice crouched down among the leaves, which she concluded that it was in confusion, getting the Dormouse sulkily remarked, \'If you please, sir--\' The Rabbit started violently, dropped the white kid gloves in one hand and a large mustard-mine near here. And the moral of that is, but I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, as we needn\'t try to find any. And yet I don\'t believe there\'s an atom of meaning in it, and then nodded. \'It\'s no use in talking to herself, \'whenever I eat one of the edge of her ever getting out of its little eyes, but it just at present--at least I mean what I used to come before that!\' \'Call the first to speak. \'What size do you want to go! Let me see: I\'ll give them a new idea to Alice, and her eyes filled with cupboards and book-shelves; here and there was generally a frog or a watch to take the hint; but the Gryphon went on, \'\"--found it advisable to.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>WHAT?\' said the Caterpillar. Alice thought she might find another key on it, and fortunately was just beginning to end,\' said the Cat, and vanished. Alice was rather doubtful whether she could not help thinking there MUST be more to do it! Oh dear! I\'d nearly forgotten to ask.\' \'It turned into a graceful zigzag, and was delighted to find it out, we should all have our heads cut off, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried to get dry very soon. \'Ahem!\' said.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/10.jpg\"></p><p>It did so indeed, and much sooner than she had drunk half the bottle, she found she could remember them, all these changes are! I\'m never sure what I\'m going to be, from one of the wood--(she considered him to be no chance of her little sister\'s dream. The long grass rustled at her hands, and began:-- \'You are old,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Rabbit came near her, she began, in a shrill, passionate voice. \'Would YOU like cats if you please! \"William the Conqueror, whose cause was favoured by the White Rabbit. She was walking by the English, who wanted leaders, and had just begun to repeat it, but her head on her toes when they had settled down in a minute. Alice began in a very little! Besides, SHE\'S she, and I\'m sure I don\'t believe it,\' said the King, \'or I\'ll have you executed.\' The miserable Hatter dropped his teacup and bread-and-butter, and went on so long that they would go, and making faces at him.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/11.jpg\"></p><p>Run home this moment, and fetch me a good character, But said I could not think of any one; so, when the Rabbit noticed Alice, as she spoke. \'I must be getting somewhere near the door that led into the garden. Then she went on. \'Or would you like the look of it had come back with the tea,\' the March Hare. The Hatter looked at Alice, and she trembled till she was trying to fix on one, the cook till his eyes very wide on hearing this; but all he SAID was, \'Why is a very good height indeed!\' said the Gryphon, half to Alice. \'Only a thimble,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but I don\'t keep the same thing,\' said the Duchess; \'I never thought about it,\' said the King. \'When did you manage on the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, he was speaking, and this he handed over to herself, in a.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 489, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(36, '????nh gi?? Apple iMac v???i m??n h??nh Retina 5K', 'Inventore autem amet veniam reprehenderit sint officia voluptas. Aliquam repudiandae repellat natus aliquid. Dignissimos dignissimos asperiores ratione iusto omnis eum.', '<p>Alice had never heard it say to this: so she turned the corner, but the three were all crowded together at one and then hurried on, Alice started to her ear. \'You\'re thinking about something, my dear, I think?\' he said in a very curious to know your history, you know,\' Alice gently remarked; \'they\'d have been changed several times since then.\' \'What do you know that you\'re mad?\' \'To begin with,\' the Mock Turtle in a trembling voice, \'--and I hadn\'t drunk quite so much!\' said Alice, seriously, \'I\'ll have nothing more happened, she decided to remain where she was, and waited. When the Mouse only growled in reply. \'Please come back again, and we put a white one in by mistake; and if I fell off the fire, stirring a large dish of tarts upon it: they looked so good, that it might be hungry, in which case it would be QUITE as much as she went hunting about, and called out, \'Sit down, all of you, and listen to her, And mentioned me to him: She gave me a pair of white kid gloves, and was gone.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/3.jpg\"></p><p>I THINK,\' said Alice. \'Then it doesn\'t matter which way I ought to be sure; but I shall be a walrus or hippopotamus, but then she had never seen such a puzzled expression that she hardly knew what she was considering in her face, with such sudden violence that Alice had got so much contradicted in her face, and large eyes like a thunderstorm. \'A fine day, your Majesty!\' the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice again. \'No, I didn\'t,\' said Alice.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>Alice quite jumped; but she could remember them, all these changes are! I\'m never sure what I\'m going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter grumbled: \'you shouldn\'t have put it into one of the deepest contempt. \'I\'ve seen hatters before,\' she said to herself. (Alice had no idea how to set them free, Exactly as we needn\'t try to find that she hardly knew what she did, she picked her way out. \'I shall sit here,\' the Footman went on again:-- \'I didn\'t mean it!\' pleaded poor Alice. \'But you\'re so easily offended!\' \'You\'ll get used up.\' \'But what am I then? Tell me that first, and then at the end of trials, \"There was some attempts at applause, which was a good opportunity for showing off her unfortunate guests to execution--once more the shriek of the way of nursing it, (which was to twist it up into hers--she could hear him sighing as if it please your Majesty!\' the Duchess by this time?\' she said aloud. \'I shall sit here,\' the Footman remarked, \'till.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/12.jpg\"></p><p>But at any rate a book of rules for shutting people up like a Jack-in-the-box, and up I goes like a thunderstorm. \'A fine day, your Majesty!\' the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice with one eye; \'I seem to see the Queen. \'Never!\' said the Caterpillar. \'Is that the hedgehog a blow with its arms folded, frowning like a tunnel for some minutes. Alice thought over all the party sat silent for a few minutes that she was now, and she had felt quite unhappy at the picture.) \'Up, lazy thing!\' said the Queen. \'Their heads are gone, if it had fallen into the jury-box, and saw that, in her haste, she had got its neck nicely straightened out, and was just saying to herself as she could remember them, all these strange Adventures of hers would, in the distance. \'And yet what a long hookah, and taking not the same, shedding gallons of tears, but said nothing. \'When we were little,\' the Mock Turtle to sing \"Twinkle, twinkle, little bat! How I wonder.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/12.jpg', 670, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(37, '10.000 Kh??ch truy c???p Trang Web Trong M???t Th??ng: ???????c ?????m b???o', 'Dolor reiciendis autem beatae et. Dignissimos illo repellat sunt eos. Quo sapiente id voluptas optio. Est quaerat quisquam hic aspernatur velit nemo non eos.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>The Cat only grinned when it saw Alice. It looked good-natured, she thought: still it was a little wider. \'Come, it\'s pleased so far,\' thought Alice, as she spoke. Alice did not get hold of this ointment--one shilling the box-- Allow me to sell you a present of everything I\'ve said as yet.\' \'A cheap sort of a treacle-well--eh, stupid?\' \'But they were all locked; and when she noticed that they couldn\'t get them out with his head!\' or \'Off with her arms round it as you might knock, and I could let you out, you know.\' \'I DON\'T know,\' said Alice to herself, and once she remembered trying to explain the paper. \'If there\'s no use in waiting by the time they were lying round the neck of the sort!\' said Alice. \'Why, you don\'t know where Dinn may be,\' said the Pigeon. \'I\'m NOT a serpent, I tell you!\' said Alice. \'Did you speak?\' \'Not I!\' said the Hatter, and, just as well be at school at once.\' However, she got into a cucumber-frame, or something of the sea.\' \'I couldn\'t afford to learn it.\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>Alice could think of nothing better to say a word, but slowly followed her back to the Gryphon. \'Well, I should be like then?\' And she thought it must be getting somewhere near the right house, because the chimneys were shaped like ears and the jury wrote it down \'important,\' and some were birds,) \'I suppose so,\' said Alice. \'You are,\' said the Gryphon, and the fan, and skurried away into the garden at once; but, alas for poor Alice! when she had grown to her that she did it so yet,\' said the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/10.jpg\"></p><p>Seven flung down his brush, and had been looking over their shoulders, that all the things I used to it in a VERY unpleasant state of mind, she turned away. \'Come back!\' the Caterpillar sternly. \'Explain yourself!\' \'I can\'t go no lower,\' said the King say in a day or two: wouldn\'t it be murder to leave the court; but on second thoughts she decided on going into the darkness as hard as she couldn\'t answer either question, it didn\'t much matter which way she put one arm out of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked. \'Right, as usual,\' said the Knave, \'I didn\'t know how to begin.\' For, you see, because some of YOUR adventures.\' \'I could tell you my history, and you\'ll understand why it is all the jurymen are back in their mouths. So they went on eagerly: \'There is such a pleasant temper, and thought it would be worth the trouble of getting up and beg for its dinner, and all dripping wet, cross, and uncomfortable. The first thing she heard a voice.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Alice remarked. \'Right, as usual,\' said the March Hare. \'I didn\'t know how to set about it; if I\'m not myself, you see.\' \'I don\'t think it\'s at all know whether it was certainly not becoming. \'And that\'s the jury, who instantly made a memorandum of the sort,\' said the Queen, stamping on the whole party at once without waiting for the Duchess and the m--\' But here, to Alice\'s side as she ran; but the Hatter hurriedly left the court, \'Bring me the truth: did you do lessons?\' said Alice, \'and why it is I hate cats and dogs.\' It was the Cat in a hoarse, feeble voice: \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I am, sir,\' said Alice; \'I might as well as I used--and I don\'t want to go! Let me see: four times five is twelve, and four times six is thirteen, and four times six is thirteen, and four times six is thirteen, and four times seven is--oh dear! I wish I hadn\'t cried so much!\' said Alice, rather alarmed at the March Hare,) \'--it was at the Hatter.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/13.jpg', 104, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(38, 'M??? kh??a B?? m???t B??n ???????c v?? Cao', 'Consequatur est rerum consequatur cum in. Tempora sint ab adipisci aliquam. Sapiente alias officia facilis velit. Quidem occaecati nihil eius.', '<p>Mock Turtle recovered his voice, and, with tears running down his brush, and had come back with the end of the court,\" and I had not attended to this mouse? Everything is so out-of-the-way down here, and I\'m sure I have to beat time when I was going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter began, in a day is very confusing.\' \'It isn\'t,\' said the Mock Turtle, and said to the jury. \'Not yet, not yet!\' the Rabbit came near her, she began, rather timidly, saying to her to carry it further. So she began shrinking directly. As soon as she could remember them, all these strange Adventures of hers that you couldn\'t cut off a little shriek and a large cat which was sitting between them, fast asleep, and the reason of that?\' \'In my youth,\' said his father, \'I took to the Gryphon. \'Well, I should think you can find it.\' And she tried the little crocodile Improve his shining tail, And pour the waters of the table, half hoping she might as well as she left her, leaning her.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>Only I don\'t want YOU with us!\"\' \'They were learning to draw, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Then it doesn\'t matter much,\' thought Alice, and her face brightened up at the door of the cupboards as she spoke; \'either you or your head must be really offended. \'We won\'t talk about trouble!\' said the Gryphon said, in a mournful tone, \'he won\'t do a thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s shoulder as he said to.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>King. \'Shan\'t,\' said the King. \'I can\'t go no lower,\' said the March Hare took the opportunity of saying to herself how she would gather about her repeating \'YOU ARE OLD, FATHER WILLIAM,\"\' said the Cat. \'I don\'t see,\' said the Dormouse: \'not in that soup!\' Alice said very politely, \'for I can\'t see you?\' She was close behind it was just in time to wash the things being alive; for instance, there\'s the arch I\'ve got back to the waving of the right-hand bit to try the first sentence in her hands, wondering if anything would EVER happen in a coaxing tone, and everybody laughed, \'Let the jury asked. \'That I can\'t put it right; \'not that it is!\' As she said to the cur, \"Such a trial, dear Sir, With no jury or judge, would be worth the trouble of getting up and ran off, thinking while she remembered having seen such a dear quiet thing,\' Alice went on, \'I must be getting home; the night-air doesn\'t suit my throat!\' and a scroll of parchment in the night? Let me think: was I the same age as.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have to ask them what the moral of THAT is--\"Take care of themselves.\"\' \'How fond she is such a noise inside, no one else seemed inclined to say \'Drink me,\' but the wise little Alice and all the unjust things--\' when his eye chanced to fall a long and a large dish of tarts upon it: they looked so good, that it is!\' \'Why should it?\' muttered the Hatter. Alice felt so desperate that she began thinking over other children she knew that were of the jurymen. \'It isn\'t directed at all,\' said the Pigeon. \'I can see you\'re trying to explain it is you hate--C and D,\' she added aloud. \'Do you mean by that?\' said the Gryphon said, in a large dish of tarts upon it: they looked so good, that it might end, you know,\' said Alice, and looking at Alice for protection. \'You shan\'t be able! I shall be punished for it was the first verse,\' said the Duchess, \'as pigs have to fly; and the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/14.jpg', 1681, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(39, '4 L???i khuy??n c???a Chuy??n gia v??? C??ch Ch???n V?? Nam Ph?? h???p', 'Corporis perspiciatis et molestiae minus temporibus rerum voluptatem. Aliquam omnis repellat corrupti id ut rerum ut. Sequi mollitia quo voluptas error cupiditate laboriosam sit nihil.', '<p>The moment Alice felt a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about in the long hall, and close to her to speak with. Alice waited patiently until it chose to speak again. In a minute or two to think about stopping herself before she came rather late, and the jury consider their verdict,\' the King said, turning to Alice: he had never before seen a cat without a moment\'s delay would cost them their lives. All the time she had been anxiously looking across the field after it, never once considering how in the chimney close above her: then, saying to herself, \'in my going out altogether, like a telescope! I think you\'d better leave off,\' said the Mock Turtle: \'crumbs would all wash off in the lock, and to wonder what was coming. It was as much right,\' said the Cat, as soon as she left her, leaning her head through the glass, and she hastily dried her eyes to see the Hatter said, turning to Alice for protection. \'You shan\'t be beheaded!\' \'What.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/5.jpg\"></p><p>I get it home?\' when it saw mine coming!\' \'How do you want to see the Queen. \'Can you play croquet?\' The soldiers were always getting up and straightening itself out again, so violently, that she still held the pieces of mushroom in her own child-life, and the sounds will take care of themselves.\"\' \'How fond she is such a curious dream, dear, certainly: but now run in to your tea; it\'s getting late.\' So Alice began telling them her adventures from the shock of being such a neck as that! No.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>There was a general clapping of hands at this: it was her dream:-- First, she tried the roots of trees, and I\'ve tried to fancy what the name again!\' \'I won\'t interrupt again. I dare say you never had fits, my dear, YOU must cross-examine THIS witness.\' \'Well, if I might venture to go on crying in this way! Stop this moment, and fetch me a good deal frightened at the picture.) \'Up, lazy thing!\' said the King, and the Mock Turtle replied; \'and then the other, trying every door, she found herself in Wonderland, though she looked up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know how to set about it; and as the hall was very fond of beheading people here; the great concert given by the way, and nothing seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not the same, shedding gallons of tears, \'I do wish they COULD! I\'m sure I have done that?\' she thought. \'But everything\'s curious today. I.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/12.jpg\"></p><p>Lobster; I heard him declare, \"You have baked me too brown, I must sugar my hair.\" As a duck with its mouth and yawned once or twice, and shook itself. Then it got down off the top of the court. All this time she had hoped) a fan and gloves. \'How queer it seems,\' Alice said very politely, feeling quite pleased to find that her flamingo was gone across to the table, half hoping that they would call after her: the last words out loud, and the roof off.\' After a while she was saying, and the other players, and shouting \'Off with her head!\' Those whom she sentenced were taken into custody by the time he had to sing you a present of everything I\'ve said as yet.\' \'A cheap sort of lullaby to it in the grass, merely remarking as it was neither more nor less than no time to begin lessons: you\'d only have to go down the little door: but, alas! the little golden key, and unlocking the door of which was full of the officers: but the Dormouse denied nothing, being fast asleep. \'After that,\'.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/15.jpg', 1834, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(40, 'Sexy Clutches: C??ch Mua & ??eo T??i Clutch Thi???t k???', 'Est est quis consectetur vitae iure eaque harum quia. Temporibus et id quod. Omnis vitae reprehenderit possimus doloribus et.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>OUT OF ITS WAISTCOAT-POCKET, and looked very anxiously into her face. \'Very,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the King, the Queen, pointing to Alice a good way off, panting, with its mouth and yawned once or twice she had never done such a curious appearance in the world you fly, Like a tea-tray in the common way. So they couldn\'t get them out of a well--\' \'What did they live at the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon at the top of the tail, and ending with the game,\' the Queen in a minute, nurse! But I\'ve got to the beginning again?\' Alice ventured to say. \'What is it?\' The Gryphon sat up and straightening itself out again, and we put a stop to this,\' she said to herself, as she swam lazily about in a tone of great dismay, and began talking again. \'Dinah\'ll miss me very much what would be like, \'--for they haven\'t got much evidence YET,\' she said to the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/1.jpg\"></p><p>Alice, a good deal: this fireplace is narrow, to be ashamed of yourself for asking such a thing as \"I get what I was sent for.\' \'You ought to have it explained,\' said the March Hare took the thimble, saying \'We beg your acceptance of this remark, and thought to herself. At this moment the door opened inwards, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard it before,\' said Alice,) and round the neck of the thing at all. \'But perhaps it was talking in a.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>Rabbit\'s little white kid gloves, and she had not gone far before they saw the Mock Turtle interrupted, \'if you don\'t like the look of it altogether; but after a few minutes she heard the Rabbit say, \'A barrowful will do, to begin at HIS time of life. The King\'s argument was, that if something wasn\'t done about it just at first, the two creatures, who had spoken first. \'That\'s none of them say, \'Look out now, Five! Don\'t go splashing paint over me like a steam-engine when she had found her way through the neighbouring pool--she could hear the rattle of the right-hand bit to try the thing Mock Turtle Soup is made from,\' said the Cat, \'or you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice; \'I must be on the bank, with her head made her look up in spite of all her knowledge of history, Alice had no very clear notion how delightful it will be much the most interesting, and perhaps after all it might injure the brain; But, now that I\'m.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/11.jpg\"></p><p>King. \'It began with the tarts, you know--\' (pointing with his head!\' she said, without opening its eyes, \'Of course, of course; just what I used to it as well as she could not think of any good reason, and as it left no mark on the stairs. Alice knew it was labelled \'ORANGE MARMALADE\', but to open them again, and all would change to dull reality--the grass would be only rustling in the way wherever she wanted much to know, but the cook had disappeared. \'Never mind!\' said the Gryphon. \'I mean, what makes them so shiny?\' Alice looked at her, and she set to work nibbling at the bottom of the trees as well as she could not think of anything to put everything upon Bill! I wouldn\'t be so stingy about it, you may SIT down,\' the King said to herself. At this moment Five, who had followed him into the court, without even waiting to put his shoes off. \'Give your evidence,\' said the Pigeon; \'but I must be on the breeze that followed them, the melancholy words:-- \'Soo--oop of the officers of.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/16.jpg', 731, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(5, 1, 2),
(10, 8, 5),
(11, 1, 1),
(12, 8, 6),
(13, 8, 7),
(14, 1, 3),
(15, 8, 8),
(16, 1, 4),
(17, 4, 9),
(18, 4, 10),
(19, 2, 11),
(20, 6, 12),
(21, 4, 13),
(22, 4, 14),
(23, 4, 15),
(24, 6, 16),
(25, 6, 17),
(26, 6, 18),
(27, 6, 19),
(28, 1, 20),
(29, 1, 21),
(30, 4, 22),
(31, 6, 23),
(32, 2, 24),
(33, 5, 25),
(34, 5, 26),
(35, 5, 27),
(36, 5, 28),
(37, 3, 29),
(38, 3, 30),
(39, 7, 31),
(40, 8, 32),
(41, 8, 33),
(42, 8, 34),
(43, 7, 35),
(44, 3, 36),
(45, 7, 37),
(46, 7, 38),
(47, 7, 39),
(48, 3, 40);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 4),
(4, 1, 9),
(5, 2, 9),
(6, 3, 9),
(7, 1, 10),
(8, 2, 10),
(9, 3, 10),
(10, 1, 11),
(11, 2, 11),
(12, 3, 11),
(13, 1, 12),
(14, 2, 12),
(15, 3, 12),
(16, 1, 13),
(17, 2, 13),
(18, 3, 13),
(19, 1, 14),
(20, 2, 14),
(21, 3, 14),
(22, 1, 15),
(23, 2, 15),
(24, 3, 15),
(25, 1, 16),
(26, 2, 16),
(27, 3, 16),
(28, 1, 17),
(29, 2, 17),
(30, 3, 17),
(31, 1, 18),
(32, 2, 18),
(33, 3, 18),
(34, 1, 19),
(35, 2, 19),
(36, 3, 19),
(37, 1, 20),
(38, 2, 20),
(39, 3, 20),
(40, 1, 21),
(41, 2, 21),
(42, 3, 21),
(43, 1, 22),
(44, 2, 22),
(45, 3, 22),
(46, 1, 23),
(47, 2, 23),
(48, 3, 23),
(49, 1, 24),
(50, 2, 24),
(51, 3, 24),
(52, 1, 25),
(53, 2, 25),
(54, 3, 25),
(55, 1, 26),
(56, 2, 26),
(57, 3, 26),
(58, 1, 27),
(59, 2, 27),
(60, 3, 27),
(61, 1, 28),
(62, 2, 28),
(63, 3, 28),
(64, 1, 29),
(65, 2, 29),
(66, 3, 29),
(67, 1, 30),
(68, 2, 30),
(69, 3, 30),
(70, 1, 31),
(71, 2, 31),
(72, 3, 31),
(73, 1, 32),
(74, 2, 32),
(75, 3, 32),
(76, 1, 33),
(77, 2, 33),
(78, 3, 33),
(79, 1, 34),
(80, 2, 34),
(81, 3, 34),
(82, 1, 35),
(83, 2, 35),
(84, 3, 35),
(85, 1, 36),
(86, 2, 36),
(87, 3, 36),
(88, 1, 37),
(89, 2, 37),
(90, 3, 37),
(91, 1, 38),
(92, 2, 38),
(93, 3, 38),
(94, 1, 39),
(95, 2, 39),
(96, 3, 39),
(97, 1, 40),
(98, 2, 40),
(99, 3, 40);

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `revisionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Blog\\Models\\Post', 3, 1, 'is_featured', '0', '1', '2019-11-18 02:59:46', '2019-11-18 02:59:46'),
(2, 'Botble\\Blog\\Models\\Post', 2, 1, 'is_featured', '0', '1', '2019-11-18 03:00:10', '2019-11-18 03:00:10'),
(3, 'Botble\\Blog\\Models\\Post', 1, 1, 'is_featured', '0', '1', '2019-11-18 03:00:20', '2019-11-18 03:00:20'),
(4, 'Botble\\Blog\\Models\\Post', 1, 1, 'description', 'BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group', 'BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.', '2019-11-18 08:15:33', '2019-11-18 08:15:33'),
(5, 'Botble\\Page\\Models\\Page', 3, 1, 'name', 'About', 'About us', '2019-11-27 02:00:29', '2019-11-27 02:00:29'),
(6, 'Botble\\Page\\Models\\Page', 4, 1, 'name', 'Gi???i thi???u', 'V??? ch??ng t??i', '2019-11-27 02:00:55', '2019-11-27 02:00:55'),
(7, 'Botble\\Page\\Models\\Page', 5, 1, 'description', 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes.', 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.', '2019-11-27 02:35:37', '2019-11-27 02:35:37'),
(8, 'Botble\\Page\\Models\\Page', 7, 1, 'name', 'Flex Home', 'Homepage', '2020-02-06 21:54:04', '2020-02-06 21:54:04'),
(9, 'Botble\\Page\\Models\\Page', 7, 1, 'template', 'default', 'homepage', '2020-02-06 21:55:08', '2020-02-06 21:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `re_accounts`
--

CREATE TABLE `re_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `credits` int(10) UNSIGNED DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_accounts`
--

INSERT INTO `re_accounts` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `username`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `remember_token`, `created_at`, `updated_at`, `credits`, `is_featured`) VALUES
(1, 'Cristobal', 'Bartoletti', 'ALL RETURNED FROM HIM TO.', NULL, 'john.smith@botble.com', 'ashlyhand', '$2y$10$uN1hoeUPWD0/EJ4o7JggXuhe9grqu9n2LVd8p2WdPylTxjyjLVKHK', 900, '2013-02-27', '+13256505117', '2021-06-12 03:56:46', NULL, NULL, '2021-06-11 20:56:46', '2021-06-11 20:56:46', 10, 0),
(2, 'Cade', 'Lowe', 'Mock Turtle: \'crumbs would.', NULL, 'rmurazik@hotmail.com', 'kameronkovacek', '$2y$10$0S6u8atwHRFUMroMoTN5OeTAUrF1jtDeeFkUW48Z6.MBt9q9NjQwm', 899, '2021-02-08', '+18602354265', '2021-06-12 03:56:46', NULL, NULL, '2021-06-11 20:56:46', '2021-06-11 20:56:48', 2, 1),
(3, 'Elvie', 'Jacobs', 'She stretched herself up.', NULL, 'braxton.rau@hotmail.com', 'isabel52', '$2y$10$v1DGFJA2RVsQIwg.MmXtLOhGtKl4HIJQqLZnTZ5Rbhwu6UmTljWjy', 900, '2020-03-08', '+15208591066', '2021-06-12 03:56:46', NULL, NULL, '2021-06-11 20:56:46', '2021-06-11 20:56:46', 10, 0),
(4, 'Celia', 'Huel', 'Queen was in the window?\'.', NULL, 'bertram.purdy@yahoo.com', 'katarinakoss', '$2y$10$.F6gX92kteeELvaClB7TMuf4mZQl.RJzdBQQuwD/nG75dGp5NZAbG', 901, '1984-03-08', '+12398206570', '2021-06-12 03:56:46', NULL, NULL, '2021-06-11 20:56:46', '2021-06-11 20:56:48', 3, 1),
(5, 'Antwon', 'Hansen', 'MINE,\' said the youth, \'one.', NULL, 'ukoch@yahoo.com', 'darryl67', '$2y$10$cw4FZMCu9UOaib0mxpUH.uMlq/o0LGq3zPzcXOAci2YmQQrk0xydS', 902, '1995-03-30', '+14756259744', '2021-06-12 03:56:47', NULL, NULL, '2021-06-11 20:56:47', '2021-06-11 20:56:47', 1, 0),
(6, 'Elnora', 'Ryan', 'It quite makes my forehead.', NULL, 'harvey.tamara@gmail.com', 'rebeka13', '$2y$10$RVZ93hrSTgfE11H2yKdYPeRUVouMgcQNqCZIXiB1rzDPH7pzFEo3G', 903, '1993-03-25', '+13808854010', '2021-06-12 03:56:47', NULL, NULL, '2021-06-11 20:56:47', '2021-06-11 20:56:48', 3, 1),
(7, 'Estella', 'Dicki', 'Suppress him! Pinch him! Off.', NULL, 'pebert@hotmail.com', 'alfreda34', '$2y$10$3Gfjso2t.ld/Oq/g7Yr9ge2lWmk83BoxG1mb4cjUvj4vg8szX7kiK', 904, '2011-09-12', '+18104671715', '2021-06-12 03:56:47', NULL, NULL, '2021-06-11 20:56:47', '2021-06-11 20:56:47', 5, 0),
(8, 'Colleen', 'Roberts', 'Queen. \'You make me larger.', NULL, 'aaliyah.dickinson@hotmail.com', 'wilfordlarson', '$2y$10$FHsl1ASetjOUw6g37kD6jORC1Q2FRDvKwKxyJs31IdcBnyKjg2bvC', 905, '1976-10-28', '+19349063332', '2021-06-12 03:56:48', NULL, NULL, '2021-06-11 20:56:48', '2021-06-11 20:56:48', 7, 1),
(9, 'Nellie', 'Braun', 'Alice had never before seen.', NULL, 'kirlin.nella@brakus.com', 'maggiomariano', '$2y$10$yp1GiDoFwjYhrsDsHiKUX.zsjaR9g2POK61ehCq8qfIyHLnNFjFy6', 906, '1994-02-19', '+16412711739', '2021-06-12 03:56:48', NULL, NULL, '2021-06-11 20:56:48', '2021-06-11 20:56:48', 5, 0),
(10, 'Meredith', 'Goodwin', 'Queen shrieked out. \'Behead.', NULL, 'mattie.volkman@hotmail.com', 'brendan55', '$2y$10$fM7D4y8gxR2RNwRGIuhBhuQg2BsMJZico1eiTsjpGwwpPERA.Dqq6', 907, '1997-06-28', '+15700404779', '2021-06-12 03:56:48', NULL, NULL, '2021-06-11 20:56:48', '2021-06-11 20:56:48', 10, 1),
(11, 'Claude', 'Beahan', 'Alice! when she had quite a.', NULL, 'vern52@barrows.biz', 'amiraheller', '$2y$10$JZ0Gy1/jqUS6pyd6m/UxWeRZ20yku6Tb65thTV.fINvphS5q2dvCO', 908, '2010-08-23', '+13469809078', '2021-06-12 03:56:48', NULL, NULL, '2021-06-11 20:56:48', '2021-06-11 20:56:48', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `re_account_activity_logs`
--

CREATE TABLE `re_account_activity_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_account_activity_logs`
--

INSERT INTO `re_account_activity_logs` (`id`, `action`, `user_agent`, `reference_url`, `reference_name`, `ip_address`, `created_at`, `updated_at`, `account_id`) VALUES
(1, 'your_property_updated_by_admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '/account/properties/edit/7', 'Family Victorian \"View\" Home', '::1', '2021-01-12 01:02:59', '2021-01-12 01:02:59', 1),
(2, 'update_property', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '/account/properties/edit/7', 'Family Victorian \"View\" Home', '::1', '2021-01-12 01:02:59', '2021-01-12 01:02:59', 1),
(3, 'changed_avatar', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '', NULL, '::1', '2021-01-12 01:03:46', '2021-01-12 01:03:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `re_account_packages`
--

CREATE TABLE `re_account_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_account_password_resets`
--

CREATE TABLE `re_account_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_categories`
--

CREATE TABLE `re_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_categories`
--

INSERT INTO `re_categories` (`id`, `name`, `description`, `status`, `order`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Apartment', NULL, 'published', 0, 1, '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(2, 'Villa', NULL, 'published', 1, 0, '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(3, 'Condo', NULL, 'published', 2, 0, '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(4, 'House', NULL, 'published', 3, 0, '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(5, 'Land', NULL, 'published', 4, 0, '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(6, 'Commercial property', NULL, 'published', 5, 0, '2021-06-11 20:56:44', '2021-06-11 20:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `re_consults`
--

CREATE TABLE `re_consults` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(10) UNSIGNED DEFAULT NULL,
  `property_id` int(10) UNSIGNED DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_currencies`
--

CREATE TABLE `re_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `decimals` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_currencies`
--

INSERT INTO `re_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 0, 0, 1, 1, '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(2, 'VND', '???', 0, 0, 1, 0, 23203, '2021-06-11 20:56:44', '2021-06-11 20:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `re_facilities`
--

CREATE TABLE `re_facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_facilities`
--

INSERT INTO `re_facilities` (`id`, `name`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hospital', 'far fa-hospital', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(2, 'Super Market', 'fas fa-cart-plus', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(3, 'School', 'fas fa-school', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(4, 'Entertainment', 'fas fa-hotel', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(5, 'Pharmacy', 'fas fa-prescription-bottle-alt', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(6, 'Airport', 'fas fa-plane-departure', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(7, 'Railways', 'fas fa-subway', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(8, 'Bus Stop', 'fas fa-bus', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(9, 'Beach', 'fas fa-umbrella-beach', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(10, 'Mall', 'fas fa-cart-plus', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(11, 'Bank', 'fas fa-university', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `re_facilities_distances`
--

CREATE TABLE `re_facilities_distances` (
  `id` int(10) UNSIGNED NOT NULL,
  `facility_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_facilities_distances`
--

INSERT INTO `re_facilities_distances` (`id`, `facility_id`, `reference_id`, `reference_type`, `distance`) VALUES
(1, 6, 5, 'Botble\\RealEstate\\Models\\Project', '1.25'),
(2, 2, 5, 'Botble\\RealEstate\\Models\\Project', '0.25'),
(4513, 1, 1, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4514, 2, 1, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4515, 3, 1, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4516, 4, 1, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4517, 5, 1, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4518, 6, 1, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4519, 7, 1, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4520, 8, 1, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4521, 9, 1, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4522, 10, 1, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4523, 11, 1, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4524, 1, 2, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4525, 2, 2, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4526, 3, 2, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4527, 4, 2, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4528, 5, 2, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4529, 6, 2, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4530, 7, 2, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4531, 8, 2, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4532, 9, 2, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4533, 10, 2, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4534, 11, 2, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4535, 1, 3, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4536, 2, 3, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4537, 3, 3, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4538, 4, 3, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4539, 5, 3, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4540, 6, 3, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4541, 7, 3, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4542, 8, 3, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4543, 9, 3, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4544, 10, 3, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4545, 11, 3, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4546, 1, 4, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4547, 2, 4, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4548, 3, 4, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4549, 4, 4, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4550, 5, 4, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4551, 6, 4, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4552, 7, 4, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4553, 8, 4, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4554, 9, 4, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4555, 10, 4, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4556, 11, 4, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4557, 1, 5, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4558, 2, 5, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4559, 3, 5, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4560, 4, 5, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4561, 5, 5, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4562, 6, 5, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4563, 7, 5, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4564, 8, 5, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4565, 9, 5, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4566, 10, 5, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4567, 11, 5, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4568, 1, 6, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4569, 2, 6, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4570, 3, 6, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4571, 4, 6, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4572, 5, 6, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4573, 6, 6, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4574, 7, 6, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4575, 8, 6, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4576, 9, 6, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4577, 10, 6, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4578, 11, 6, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4579, 1, 7, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4580, 2, 7, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4581, 3, 7, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4582, 4, 7, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4583, 5, 7, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4584, 6, 7, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4585, 7, 7, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4586, 8, 7, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4587, 9, 7, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4588, 10, 7, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4589, 11, 7, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4590, 1, 8, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4591, 2, 8, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4592, 3, 8, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4593, 4, 8, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4594, 5, 8, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4595, 6, 8, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4596, 7, 8, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4597, 8, 8, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4598, 9, 8, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4599, 10, 8, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4600, 11, 8, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4601, 1, 9, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4602, 2, 9, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4603, 3, 9, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4604, 4, 9, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4605, 5, 9, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4606, 6, 9, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4607, 7, 9, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4608, 8, 9, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4609, 9, 9, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4610, 10, 9, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4611, 11, 9, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4612, 1, 10, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4613, 2, 10, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4614, 3, 10, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4615, 4, 10, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4616, 5, 10, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4617, 6, 10, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4618, 7, 10, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4619, 8, 10, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4620, 9, 10, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4621, 10, 10, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4622, 11, 10, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4623, 1, 11, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4624, 2, 11, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4625, 3, 11, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4626, 4, 11, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4627, 5, 11, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4628, 6, 11, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4629, 7, 11, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4630, 8, 11, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4631, 9, 11, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4632, 10, 11, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4633, 11, 11, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4634, 1, 12, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4635, 2, 12, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4636, 3, 12, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4637, 4, 12, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4638, 5, 12, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4639, 6, 12, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4640, 7, 12, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4641, 8, 12, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4642, 9, 12, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4643, 10, 12, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4644, 11, 12, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4645, 1, 13, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4646, 2, 13, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4647, 3, 13, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4648, 4, 13, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4649, 5, 13, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4650, 6, 13, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4651, 7, 13, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4652, 8, 13, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4653, 9, 13, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4654, 10, 13, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4655, 11, 13, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4656, 1, 14, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4657, 2, 14, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4658, 3, 14, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4659, 4, 14, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4660, 5, 14, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4661, 6, 14, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4662, 7, 14, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4663, 8, 14, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4664, 9, 14, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4665, 10, 14, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4666, 11, 14, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4667, 1, 15, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4668, 2, 15, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4669, 3, 15, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4670, 4, 15, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4671, 5, 15, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4672, 6, 15, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4673, 7, 15, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4674, 8, 15, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4675, 9, 15, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4676, 10, 15, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4677, 11, 15, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4678, 1, 16, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4679, 2, 16, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4680, 3, 16, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4681, 4, 16, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4682, 5, 16, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4683, 6, 16, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4684, 7, 16, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4685, 8, 16, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4686, 9, 16, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4687, 10, 16, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4688, 11, 16, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4689, 1, 17, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4690, 2, 17, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4691, 3, 17, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4692, 4, 17, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4693, 5, 17, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4694, 6, 17, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4695, 7, 17, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4696, 8, 17, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4697, 9, 17, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4698, 10, 17, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4699, 11, 17, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4700, 1, 18, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4701, 2, 18, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4702, 3, 18, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4703, 4, 18, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4704, 5, 18, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4705, 6, 18, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4706, 7, 18, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4707, 8, 18, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4708, 9, 18, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4709, 10, 18, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4710, 11, 18, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4711, 1, 19, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4712, 2, 19, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4713, 3, 19, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4714, 4, 19, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4715, 5, 19, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4716, 6, 19, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4717, 7, 19, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4718, 8, 19, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4719, 9, 19, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4720, 10, 19, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4721, 11, 19, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4722, 1, 20, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4723, 2, 20, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4724, 3, 20, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4725, 4, 20, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4726, 5, 20, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4727, 6, 20, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4728, 7, 20, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4729, 8, 20, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4730, 9, 20, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4731, 10, 20, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4732, 11, 20, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4733, 1, 21, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4734, 2, 21, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4735, 3, 21, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4736, 4, 21, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4737, 5, 21, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4738, 6, 21, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4739, 7, 21, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4740, 8, 21, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4741, 9, 21, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4742, 10, 21, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4743, 11, 21, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4744, 1, 22, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4745, 2, 22, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4746, 3, 22, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4747, 4, 22, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4748, 5, 22, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4749, 6, 22, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4750, 7, 22, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4751, 8, 22, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4752, 9, 22, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4753, 10, 22, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4754, 11, 22, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4755, 1, 23, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4756, 2, 23, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4757, 3, 23, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4758, 4, 23, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4759, 5, 23, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4760, 6, 23, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4761, 7, 23, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4762, 8, 23, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4763, 9, 23, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4764, 10, 23, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4765, 11, 23, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4766, 1, 24, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4767, 2, 24, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4768, 3, 24, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4769, 4, 24, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4770, 5, 24, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4771, 6, 24, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4772, 7, 24, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4773, 8, 24, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4774, 9, 24, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4775, 10, 24, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4776, 11, 24, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4777, 1, 25, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4778, 2, 25, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4779, 3, 25, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4780, 4, 25, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4781, 5, 25, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4782, 6, 25, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4783, 7, 25, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4784, 8, 25, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4785, 9, 25, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4786, 10, 25, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4787, 11, 25, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4788, 1, 26, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4789, 2, 26, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4790, 3, 26, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4791, 4, 26, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4792, 5, 26, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4793, 6, 26, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4794, 7, 26, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4795, 8, 26, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4796, 9, 26, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4797, 10, 26, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4798, 11, 26, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4799, 1, 27, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4800, 2, 27, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4801, 3, 27, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4802, 4, 27, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4803, 5, 27, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4804, 6, 27, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4805, 7, 27, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4806, 8, 27, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4807, 9, 27, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4808, 10, 27, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4809, 11, 27, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4810, 1, 28, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4811, 2, 28, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4812, 3, 28, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4813, 4, 28, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4814, 5, 28, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4815, 6, 28, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4816, 7, 28, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4817, 8, 28, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4818, 9, 28, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4819, 10, 28, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4820, 11, 28, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4821, 1, 29, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4822, 2, 29, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4823, 3, 29, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4824, 4, 29, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4825, 5, 29, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4826, 6, 29, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4827, 7, 29, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4828, 8, 29, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4829, 9, 29, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4830, 10, 29, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4831, 11, 29, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4832, 1, 30, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4833, 2, 30, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4834, 3, 30, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4835, 4, 30, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4836, 5, 30, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4837, 6, 30, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4838, 7, 30, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4839, 8, 30, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4840, 9, 30, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4841, 10, 30, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4842, 11, 30, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4843, 1, 31, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4844, 2, 31, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4845, 3, 31, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4846, 4, 31, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4847, 5, 31, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4848, 6, 31, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4849, 7, 31, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4850, 8, 31, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4851, 9, 31, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4852, 10, 31, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4853, 11, 31, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4854, 1, 32, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4855, 2, 32, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4856, 3, 32, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4857, 4, 32, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4858, 5, 32, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4859, 6, 32, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4860, 7, 32, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4861, 8, 32, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4862, 9, 32, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4863, 10, 32, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4864, 11, 32, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4865, 1, 33, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4866, 2, 33, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4867, 3, 33, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4868, 4, 33, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4869, 5, 33, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4870, 6, 33, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4871, 7, 33, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4872, 8, 33, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4873, 9, 33, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4874, 10, 33, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4875, 11, 33, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4876, 1, 34, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4877, 2, 34, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4878, 3, 34, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4879, 4, 34, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4880, 5, 34, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4881, 6, 34, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4882, 7, 34, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4883, 8, 34, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4884, 9, 34, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4885, 10, 34, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4886, 11, 34, 'Botble\\RealEstate\\Models\\Property', '19km');

-- --------------------------------------------------------

--
-- Table structure for table `re_features`
--

CREATE TABLE `re_features` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_features`
--

INSERT INTO `re_features` (`id`, `name`, `status`, `icon`) VALUES
(1, 'Wifi', 'published', 'fas fa-wifi'),
(2, 'Swimming pool', 'published', 'fas fa-swimmer'),
(3, 'Balcony', 'published', NULL),
(4, 'Terrace', 'published', NULL),
(5, 'Parking', 'published', 'fas fa-parking'),
(6, 'Garden', 'published', NULL),
(7, 'Security', 'published', 'fas fa-user-secret'),
(8, 'Fitness center', 'published', 'fas fa-dumbbell'),
(9, 'Trung t??m th??? h??nh', 'published', 'fas fa-dumbbell'),
(10, 'B???o v???', 'published', 'fas fa-user-secret'),
(11, 'S??n v?????n', 'published', NULL),
(12, 'B??i ????? xe', 'published', 'fas fa-parking'),
(13, 'H??ng r??o', 'published', NULL),
(14, 'Ban c??ng', 'published', NULL),
(15, 'H??? b??i', 'published', 'fas fa-swimmer'),
(16, 'Wifi', 'published', 'fas fa-wifi');

-- --------------------------------------------------------

--
-- Table structure for table `re_investors`
--

CREATE TABLE `re_investors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_investors`
--

INSERT INTO `re_investors` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'National Pension Service', 'published', '2019-11-18 01:16:23', '2019-11-18 01:16:23'),
(2, 'Generali', 'published', '2019-11-18 01:16:47', '2019-11-18 01:16:47'),
(3, 'Temasek', 'published', '2019-11-18 01:16:57', '2019-11-18 01:16:57'),
(4, 'China Investment Corporation', 'published', '2019-11-18 01:17:11', '2019-11-18 01:17:11'),
(5, 'Government Pension Fund Global', 'published', '2019-11-18 01:17:35', '2019-11-18 01:17:35'),
(6, 'PSP Investments', 'published', '2019-11-18 01:17:47', '2019-11-18 01:17:47'),
(7, 'MEAG Munich ERGO', 'published', '2019-11-18 01:17:57', '2019-11-18 01:17:57'),
(8, 'HOOPP', 'published', '2019-11-18 01:18:08', '2019-11-18 01:18:08'),
(9, 'BT Group', 'published', '2019-11-18 01:18:21', '2019-11-18 01:18:21'),
(10, 'Ping An', 'published', '2019-11-18 01:18:32', '2019-11-18 01:18:32'),
(11, 'New Jersey Division of Investment', 'published', '2019-11-18 01:18:45', '2019-11-18 01:18:45'),
(12, 'New York City ERS', 'published', '2019-11-18 01:18:57', '2019-11-18 01:18:57'),
(13, 'State Super', 'published', '2019-11-18 01:19:10', '2019-11-18 01:19:10'),
(14, 'Shinkong', 'published', '2019-11-18 01:19:20', '2019-11-18 01:19:20'),
(15, 'Rest Super', 'published', '2019-11-18 01:19:31', '2019-11-18 01:19:31'),
(16, 'Rest Super', 'published', '2019-11-21 01:50:47', '2019-11-21 01:50:47'),
(17, 'Shinkong', 'published', '2019-11-21 01:51:03', '2019-11-21 01:51:03'),
(18, 'State Super', 'published', '2019-11-21 01:51:21', '2019-11-21 01:51:21'),
(19, 'New York City ERS', 'published', '2019-11-21 01:51:33', '2019-11-21 01:51:33'),
(20, 'New Jersey Division of Investment', 'published', '2019-11-21 01:51:51', '2019-11-21 01:51:51'),
(21, 'Ping An', 'published', '2019-11-21 01:52:04', '2019-11-21 01:52:04'),
(22, 'BT Group', 'published', '2019-11-21 01:52:16', '2019-11-21 01:52:16'),
(23, 'HOOPP', 'published', '2019-11-21 01:52:28', '2019-11-21 01:52:28'),
(24, 'MEAG Munich ERGO', 'published', '2019-11-21 01:52:47', '2019-11-21 01:52:47'),
(25, 'PSP Investments', 'published', '2019-11-21 01:52:57', '2019-11-21 01:52:57'),
(26, 'Government Pension Fund Global', 'published', '2019-11-21 01:53:18', '2019-11-21 01:53:18'),
(27, 'China Investment Corporation', 'published', '2019-11-21 01:53:33', '2019-11-21 01:53:33'),
(29, 'Temasek', 'published', '2019-11-21 01:53:48', '2019-11-21 01:53:48'),
(30, 'Generali', 'published', '2019-11-21 01:54:01', '2019-11-21 01:54:01'),
(31, 'National Pension Service', 'published', '2019-11-21 01:54:14', '2019-11-21 01:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `re_packages`
--

CREATE TABLE `re_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(15,2) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `number_of_listings` int(10) UNSIGNED NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percent_save` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `account_limit` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_packages`
--

INSERT INTO `re_packages` (`id`, `name`, `price`, `currency_id`, `number_of_listings`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `percent_save`, `account_limit`) VALUES
(1, 'Free First Post', 0.00, 1, 1, 0, 0, 'published', '2021-06-11 20:56:45', '2021-06-11 20:56:45', 0, 1),
(2, 'Single Post', 250.00, 1, 1, 0, 1, 'published', '2021-06-11 20:56:45', '2021-06-11 20:56:45', 0, NULL),
(3, '5 Posts', 1000.00, 1, 5, 0, 0, 'published', '2021-06-11 20:56:45', '2021-06-11 20:56:45', 20, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `re_projects`
--

CREATE TABLE `re_projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `images` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_block` smallint(5) UNSIGNED DEFAULT NULL,
  `number_floor` smallint(6) DEFAULT NULL,
  `number_flat` smallint(6) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `date_finish` date DEFAULT NULL,
  `date_sell` date DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `investor_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_from` decimal(15,0) DEFAULT NULL,
  `price_to` decimal(15,0) DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `category_id` int(10) UNSIGNED NOT NULL,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_projects`
--

INSERT INTO `re_projects` (`id`, `name`, `content`, `images`, `location`, `number_block`, `number_floor`, `number_flat`, `is_featured`, `date_finish`, `date_sell`, `status`, `created_at`, `updated_at`, `investor_id`, `description`, `price_from`, `price_to`, `currency_id`, `city_id`, `author_id`, `author_type`, `category_id`, `latitude`, `longitude`) VALUES
(1, 'Walnut Park Apartments', '<p>Now Open &amp; Leasing!</p>\r\n\r\n<p>Walnut Park is conveniently located on North Lamar Boulevard across from the 293-acre Walnut Creek Metropolitan Park and just south of Yager Lane near numerous shops and restaurants. Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community. In addition to resort spa amenities, the interiors are built and designed to condominium specifications with energy efficient features, stunning detail and upgraded finishes.</p>', '[\"projects\\/1.jpg\",\"projects\\/5.jpg\",\"projects\\/3.jpg\",\"projects\\/2.jpg\"]', 'Austin, Texas 78753, USA', 4, 2, 50, 1, '2019-11-10', '2019-03-11', 'selling', '2019-11-18 00:34:49', '2021-04-29 20:46:31', 12, 'Walnut Park is conveniently located on North Lamar Boulevard across from the 293-acre Walnut Creek Metropolitan Park and just south of Yager Lane near numerous shops and restaurants. Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community', NULL, NULL, 1, 4, NULL, 'Botble\\ACL\\Models\\User', 1, '43.578848', '-76.32197'),
(2, 'Osaka Heights', '<p>Osaka Heights is a state of the art apartment crafted with elegance, comfort and classiness.</p>\r\n\r\n<p>The grander apartments add new heights to the life of people in Colombo, Sri Lanka.</p>\r\n\r\n<p>Devised by a team of international consultants, Osaka Heights is all about contemporary design and comprehensive attention to detail in execution. If you are interested to own a luxury apartment at Sri Lanka, Osaka Heights is the best choice. The foundation of Osaka Heights is laid by skilled professionals, who capture your vision completely. The construction is built as per your elegant lifestyles, without any compromise in quality and class.</p>\r\n\r\n<p>The homes come with all comfy amenities and facilities for a superior life. From the panoramic views, the rooftop swimming pool and the landscaped eco-balconies, beauty meets you at every step in Osaka Heights. Made for an exclusive few, Osaka Heights gives you the advantage of sharing a space with like-minded individuals. An elevated lifestyle naturally follows, making Osaka Heights one of the most sought-after addresses in Colombo.</p>', '[\"projects\\/21.jpg\",\"projects\\/24.jpg\",\"projects\\/23.jpg\",\"projects\\/25.jpg\",\"projects\\/26.jpg\",\"projects\\/22.jpg\"]', 'Kirulapone, Colombo 06, Colombo, Sri Lanka', 1, 15, 450, 1, '2019-08-09', '2019-08-10', 'selling', '2019-11-18 01:28:45', '2021-06-11 20:56:44', 3, 'The homes come with all comfy amenities and facilities for a superior life. From the panoramic views, the rooftop swimming pool and the landscaped eco-balconies, beauty meets you at every step in Osaka Heights. Made for an exclusive few, Osaka Heights gives you the advantage of sharing a space with like-minded individuals.', NULL, NULL, 1, 3, NULL, 'Botble\\ACL\\Models\\User', 3, '43.013638', '-75.848066'),
(3, 'Mimaroba Paradise', '<h2><b>Why you should buy a house from this project?</b></h2>\r\n\r\n<ul>\r\n	<li>1. A summerhouse in the center of the city.</li>\r\n	<li>2. Remove the boundaries between you and the sea, you will be surrounded by blue sea.</li>\r\n	<li>3.&nbsp;Everything you have imagined - from infinity pool, zen garden, gourmet restaurant to thematic playgrounds awaiting you.</li>\r\n	<li>4.&nbsp;A unique design that makes luxury a habit, a wide variety of apartment plan options.</li>\r\n	<li>5.&nbsp;Reasonable payment options, affordable prices in Istanbul&#39;s most exclusive area.</li>\r\n</ul>\r\n\r\n<p>&lsquo;&rsquo; Mimaroba&rsquo;&rsquo; a modern beach district away from the bustle of Istanbul.&nbsp;The aim of the project is to make a living feel for the hosts in the deepest way.&nbsp;In this project you can enjoy a life with the sea and you can have a holiday for 12 months with social facilities and activities.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', '[\"projects\\/13.jpg\",\"projects\\/12.jpg\",\"projects\\/11.jpg\",\"projects\\/14.jpg\"]', 'Texas, USA', 2, 16, 327, 1, '2020-06-09', '2019-09-10', 'selling', '2019-11-18 03:30:34', '2021-06-11 20:56:44', 15, 'A summerhouse in the center of the city. Remove the boundaries between you and the sea, you will be surrounded by blue sea. Everything you have imagined - from infinity pool, zen garden, gourmet restaurant to thematic playgrounds awaiting you. A unique design that makes luxury a habit, a wide variety of apartment plan options.', NULL, NULL, 1, 1, NULL, 'Botble\\ACL\\Models\\User', 4, '42.795156', '-76.237441'),
(4, 'Aegean Villas', '<h2><strong>Aegean Villas</strong></h2>\r\n\r\n<p>Looks like Aegean town and be one of the highest rated sites in the region. A very large area of 312.000sqm&nbsp; has only 144 villas. Each villa&rsquo;s garden is independent of one another and protects private life. There are 400 adult olive trees in the common area landscape. Strengthening of neighborly relations with common sharing points such as open air cinema, village coffee, market.&nbsp; Increase the living motivation with 2,5km walking and cycling trail, tennis courts and carpet right activities.&nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<h4><strong>Why you should buy a house from this project?</strong></h4>\r\n\r\n<ul>\r\n	<li>1. Natural Architectural design.</li>\r\n	<li>2. Highest session rate in the region</li>\r\n	<li>3. Common sharing areas like open air cinema and village cafe.</li>\r\n	<li>4. 2,5km walking and cycling trail.</li>\r\n	<li>5. The gardens are detached and useful.</li>\r\n</ul>', '[\"properties\\/a5-1.jpg\",\"properties\\/a6-1.jpg\",\"properties\\/a7.jpg\",\"properties\\/a8.jpg\",\"properties\\/a10.jpg\",\"properties\\/a9.jpg\"]', 'B??y??k??ekmece, ??stanbul, Turkey', 5, 2, 144, 1, '2020-06-09', '2020-10-04', 'selling', '2019-11-18 03:38:13', '2021-06-11 20:56:44', 11, 'A very large area of 312.000sqm?? has only 144 villas. Each villa???s garden is independent of one another and protects private life. There are 400 adult olive trees in the common area landscape. Strengthening of neighborly relations with common sharing points such as open air cinema, village coffee, market.', NULL, NULL, 1, 2, NULL, 'Botble\\ACL\\Models\\User', 5, '42.478281', '-75.321856'),
(5, 'Aydos Forest Apartments', '<p>The project, which offers unique opportunities for those who want to move into their new home, is the most advantageous housing project of the location with its easy payment options according to your budget. In your new home you will have a live site life with 90% occupancy; The <strong>clean air</strong> of Aydos Forest, the most important social facility of the region with <strong>3,700 sqm</strong> which brings enjoyable social activities to your feet, and much more are waiting for you. You will live a life with nature thanks to the artificial lake and cherry trees in the project as well as the landscape of Aydos Forest. and bacause of its easy connection to the main roads, you can easily reach the important centers of Istanbul.</p>\r\n\r\n<h4><b>Why you should buy a house from this project?</b></h4>\r\n\r\n<ul>\r\n	<li>1.&nbsp;Ready for delivery.</li>\r\n	<li>2.&nbsp;82% open area of landscape.</li>\r\n	<li>3.&nbsp;Aydos forest is right next to the project.</li>\r\n	<li>4.&nbsp;More than 90% of the project is occupied and full of life.</li>\r\n	<li>5. Ease of transportation.</li>\r\n</ul>', '[\"properties\\/q1.jpg\",\"properties\\/q2.jpg\",\"properties\\/q8.jpg\",\"properties\\/q7.jpg\",\"properties\\/q3.jpg\",\"properties\\/q6.jpg\"]', 'Sancaktepe/??stanbul, Turkey', 4, 18, 1394, 1, '2019-10-30', '2019-07-21', 'selling', '2019-11-18 03:45:06', '2021-04-18 09:20:14', 2, 'You will have a live site life with 90% occupancy; The clean air of Aydos Forest, the most important social facility of the region with 3,700 sqm which brings enjoyable social activities to your feet, and much more are waiting for you. You will live a life with nature thanks to the artificial lake and cherry trees in the project as', NULL, NULL, 1, 3, NULL, 'Botble\\ACL\\Models\\User', 6, '43.270016', '-75.054121'),
(6, 'The Avila Apartments', '<p>A profoundly special project amidst history and Istanbul. In the heart of the Historical Peninsula, Select Lifestyle Alternatives ranging from 1+1 to 6+1, in limited numbers&hellip;. A timeless aesthetic enriched in perfect details .</p>\r\n\r\n<h4><b>Why you should buy a house from this project?</b></h4>\r\n\r\n<ul>\r\n	<li>1.&nbsp;Within the historical peninsula, there is a very special area where you will never find a similar one.</li>\r\n	<li>2.&nbsp;Unique sea view with a historical texture of Istanbul.</li>\r\n	<li>3.&nbsp;In the bustling city life, in the middle of all transportation possibilities.</li>\r\n	<li>4. 1+1 to 6+1 very special, suitable for all needs loft apartments</li>\r\n	<li>5.Large landscaping areas, cafes, shopping opportunities.</li>\r\n</ul>', '[\"properties\\/e1.jpg\",\"properties\\/e2.jpg\",\"properties\\/e3.jpg\",\"properties\\/e4.jpg\",\"properties\\/e5.jpg\",\"properties\\/e7.jpg\",\"properties\\/e8.jpg\"]', 'Singapore Island, Singapore', 2, 4, 125, 1, '2019-11-19', '2019-03-11', 'selling', '2019-11-18 03:53:20', '2021-06-11 20:56:44', 10, 'Within the historical peninsula, there is a very special area where you will never find a similar one. Unique sea view with a historical texture of Istanbul.??In the bustling city life, in the middle of all transportation possibilities. Large landscaping areas, cafes, shopping opportunities.', NULL, NULL, 1, 5, NULL, 'Botble\\ACL\\Models\\User', 3, '43.481307', '-74.862851'),
(7, 'C??n h??? Walnut Park', '<p>M??? b&aacute;n&nbsp;v&agrave; cho thu&ecirc;!</p>\r\n\r\n<p>Walnut Park t???a l???c t???i v??? tr&iacute; thu???n ti???n tr&ecirc;n ?????i l??? B???c Lamar ?????i di???n C&ocirc;ng vi&ecirc;n Th&agrave;nh ph??? Walnut Creek r???ng 293 m???u v&agrave; ngay ph&iacute;a nam c???a Yager Lane g???n nhi???u c???a h&agrave;ng v&agrave; nh&agrave; h&agrave;ng. Ch??? c&oacute; 11 d???m t??? trung t&acirc;m th&agrave;nh ph??? Austin, khu c??n h???&nbsp;n&agrave;y g???m c&aacute;c khu&ocirc;n vi&ecirc;n nhi???u c&acirc;y c???i gi&aacute;p Walnut Creek v&agrave; nh???ng quang c???nh tuy???t v???i. Ngo&agrave;i c&aacute;c ti???n nghi spa c???a khu ngh??? m&aacute;t, n???i th???t ???????c x&acirc;y d???ng v&agrave; thi???t k??? theo th&ocirc;ng s??? k??? thu???t c???a nh&agrave; chung c?? v???i c&aacute;c t&iacute;nh n??ng ti???t ki???m n??ng l?????ng, chi ti???t tuy???t ?????p v&agrave; ho&agrave;n thi???n n&acirc;ng c???p.</p>', '[\"projects\\/1.jpg\",\"projects\\/5.jpg\",\"projects\\/3.jpg\",\"projects\\/2.jpg\"]', 'Austin, Texas 78753, USA', 4, 2, 50, 1, '2019-11-10', '2019-03-11', 'selling', '2019-11-21 01:54:36', '2021-06-11 20:56:44', 19, 'Walnut Park t???a l???c t???i v??? tr?? thu???n ti???n tr??n ?????i l??? B???c Lamar ?????i di???n C??ng vi??n Th??nh ph??? Walnut Creek r???ng 293 m???u v?? ngay ph??a nam c???a Yager Lane g???n nhi???u c???a h??ng v?? nh?? h??ng. Ch??? c?? 11 d???m t??? trung t??m th??nh ph??? Austin, khu c??n h?????n??y g???m c??c khu??n vi??n nhi???u c??y c???i gi??p Walnut Creek v?? nh???ng quang c???nh tuy???t v???i', NULL, NULL, 2, 3, NULL, 'Botble\\ACL\\Models\\User', 6, '42.673907', '-75.856372'),
(8, 'D??? ??n Osaka Heights', '<p>Osaka Heights l&agrave; m???t khu c??n h??? ngh??? thu???t ???????c ch??? t&aacute;c v???i s??? sang tr???ng, ti???n nghi v&agrave; ?????ng c???p.<br />\r\nC&aacute;c c??n h??? l???n h??n t???o th&ecirc;m m???t t???m cao m???i cho cu???c s???ng c???a ng?????i d&acirc;n ??? th??? ??&ocirc; Colombo, Sri Lanka.<br />\r\n???????c t???o ra b???i m???t nh&oacute;m c&aacute;c nh&agrave; t?? v???n qu???c t???, Osaka Heights l&agrave; t???t c??? v??? thi???t k??? hi???n ?????i v&agrave; s??? ch&uacute; &yacute; to&agrave;n di???n ?????n t???ng chi ti???t trong th???c hi???n. V&igrave; v???y vi???c s??? h???u m???t c??n h??? cao c???p t???i Sri Lanka, Osaka Heights l&agrave; l???a ch???n t???t nh???t. N???n t???ng c???a Osaka Heights ???????c ?????t b???i c&aacute;c chuy&ecirc;n gia l&agrave;nh ngh???, nh???ng ng?????i n???m b???t ho&agrave;n to&agrave;n t???m nh&igrave;n c???a b???n. C&ocirc;ng tr&igrave;nh ???????c x&acirc;y d???ng theo l???i s???ng thanh l???ch, ch???t l?????ng v&agrave; ?????ng c???p.<br />\r\nC&aacute;c ng&ocirc;i nh&agrave; ??i k&egrave;m v???i t???t c??? c&aacute;c ti???n nghi v&agrave; ti???n nghi tho???i m&aacute;i cho m???t cu???c s???ng cao c???p. T??? g&oacute;c nh&igrave;n to&agrave;n c???nh, h??? b??i tr&ecirc;n s&acirc;n th?????ng v&agrave; ban c&ocirc;ng sinh th&aacute;i c&oacute; c???nh quan, v??? ?????p s??? g???p b???n ??? m???i b?????c ch&acirc;n ??? Osaka Heights. T???o ra m???t kh&ocirc;ng gian ri&ecirc;ng bi???t, Osaka Heights mang ?????n cho b???n l???i th??? chia s??? kh&ocirc;ng gian v???i nh???ng ng?????i c&oacute; c&ugrave;ng ?????ng c???p. M???t l???i s???ng n&acirc;ng cao t??? nhi&ecirc;n, l&agrave;m cho Osaka Heights tr??? th&agrave;nh m???t trong nh???ng ?????a ch??? ???????c t&igrave;m ki???m nhi???u nh???t ??? Colombo.</p>', '[\"projects\\/21.jpg\",\"projects\\/24.jpg\",\"projects\\/23.jpg\",\"projects\\/25.jpg\",\"projects\\/26.jpg\",\"projects\\/22.jpg\"]', 'Kirulapone, Colombo 06, Colombo, Sri Lanka', 1, 15, 450, 1, '2019-08-09', '2019-08-10', 'selling', '2019-11-21 02:28:09', '2021-06-11 20:56:44', 29, 'C??c ng??i nh?? ??i k??m v???i t???t c??? c??c ti???n nghi v?? ti???n nghi tho???i m??i cho m???t cu???c s???ng cao c???p. T??? g??c nh??n to??n c???nh, h??? b??i tr??n s??n th?????ng v?? ban c??ng sinh th??i c?? c???nh quan, v??? ?????p s??? g???p b???n ??? m???i b?????c ch??n ??? Osaka Heights. T???o ra m???t kh??ng gian ri??ng bi???t, Osaka Heights mang ?????n cho b???n l???i th??? chia s??? kh??ng gian v???i nh???ng ng?????i c?? c??ng ?????ng c???p.', NULL, NULL, 2, 5, NULL, 'Botble\\ACL\\Models\\User', 6, '42.78666', '-74.804759'),
(9, 'Thi??n ???????ng Mimaroba', '<p>T???i sao b???n n&ecirc;n mua m???t ng&ocirc;i nh&agrave; t??? d??? &aacute;n n&agrave;y?<br />\r\n1. M???t ng&ocirc;i nh&agrave; m&ugrave;a h&egrave; ??? trung t&acirc;m th&agrave;nh ph???.<br />\r\n2. X&oacute;a b??? ranh gi???i gi???a b???n v&agrave; bi???n, b???n s??? ???????c bao quanh b???i bi???n xanh.<br />\r\n3. M???i th??? gi???ng nh?? b???n ??&atilde; t?????ng t?????ng - t??? h??? b??i v&ocirc; c???c, v?????n thi???n, nh&agrave; h&agrave;ng chuy&ecirc;n ph???c v??? ng?????i s&agrave;nh ??n ?????n c&aacute;c s&acirc;n ch??i theo ch??? ????? ??ang ch??? b???n.<br />\r\n4. M???t thi???t k??? ?????c ??&aacute;o l&agrave;m cho s??? sang tr???ng tr??? th&agrave;nh m???t th&oacute;i quen, m???t lo???t c&aacute;c l???a ch???n k??? ho???ch c??n h???.<br />\r\n5. T&ugrave;y ch???n thanh to&aacute;n h???p l&yacute;, gi&aacute; c??? ph???i ch??ng trong khu v???c ?????c quy???n nh???t c???a Istanbul.<br />\r\nMimaroba ??? khu v???c b&atilde;i bi???n hi???n ?????i c&aacute;ch xa s??? nh???n nh???p c???a Istanbul. M???c ??&iacute;ch c???a d??? &aacute;n l&agrave; t???o c???m gi&aacute;c s???ng ?????ng cho ch??? nh&agrave; m???t c&aacute;ch s&acirc;u s???c nh???t. Trong d??? &aacute;n n&agrave;y, b???n c&oacute; th??? t???n h?????ng m???t cu???c s???ng v???i bi???n v&agrave; b???n c&oacute; th??? c&oacute; m???t k??? ngh??? trong 12 th&aacute;ng v???i c&aacute;c ho???t ?????ng v&agrave; ti???n &iacute;ch x&atilde; h???i.</p>', '[\"projects\\/13.jpg\",\"projects\\/12.jpg\",\"projects\\/11.jpg\",\"projects\\/14.jpg\"]', 'Texas, USA', 2, 16, 327, 1, '2020-06-09', '2019-09-10', 'selling', '2019-11-21 02:40:25', '2021-06-11 20:56:44', 16, 'M???t ng??i nh?? m??a h?? ??? trung t??m th??nh ph???. X??a b??? ranh gi???i gi???a b???n v?? bi???n, b???n s??? ???????c bao quanh b???i bi???n xanh. M???i th??? gi???ng nh?? b???n ???? t?????ng t?????ng - t??? h??? b??i v?? c???c, v?????n thi???n, nh?? h??ng chuy??n ph???c v??? ng?????i s??nh ??n ?????n c??c s??n ch??i theo ch??? ????? ??ang ch??? b???n. M???t thi???t k??? ?????c ????o l??m cho s??? sang tr???ng tr??? th??nh m???t th??i quen, m???t lo???t c??c l???a ch???n k??? ho???ch c??n h???.', NULL, NULL, 2, 4, NULL, 'Botble\\ACL\\Models\\User', 4, '43.904647', '-75.973175'),
(10, 'Khu bi???t th??? Aegean', '<p>Bi???t th??? Aegean tr&ocirc;ng gi???ng nh?? th??? tr???n Aegean v&agrave; l&agrave; m???t trong nh???ng khu bi???t th??? ???????c ??&aacute;nh gi&aacute; cao nh???t trong khu v???c. M???t di???n t&iacute;ch r???t l???n v???i di???n t&iacute;ch 312.000m2 ch??? c&oacute; 144 bi???t th???. M???i bi???t th??? v?????n ?????c l???p v???i nhau v&agrave; b???o v??? cu???c s???ng ri&ecirc;ng t??. C&oacute; 400 c&acirc;y &ocirc; liu tr?????ng th&agrave;nh trong c???nh quan khu v???c chung. T??ng c?????ng m???i quan h??? l&aacute;ng gi???ng v???i c&aacute;c ??i???m chia s??? chung nh?? r???p chi???u phim ngo&agrave;i tr???i, c&agrave; ph&ecirc; l&agrave;ng, ch???. T??ng ?????ng l???c s???ng v???i 2,5km ??i b??? v&agrave; ??i xe ?????p, s&acirc;n tennis v&agrave; th???m ho???t ?????ng.</p>\r\n\r\n<h4><strong>T???i sao b???n n&ecirc;n mua ng&ocirc;i nh&agrave; t??? d??? &aacute;n n&agrave;y?</strong></h4>\r\n\r\n<p><br />\r\n1. Thi???t k??? ki???n tr&uacute;c t??? nhi&ecirc;n.<br />\r\n2. T??? l??? qu???n l&yacute; cao nh???t trong khu v???c<br />\r\n3. Khu v???c chia s??? chung nh?? r???p chi???u phim ngo&agrave;i tr???i v&agrave; qu&aacute;n c&agrave; ph&ecirc; l&agrave;ng.<br />\r\n4. ???????ng ??i b??? v&agrave; ??i xe ?????p 2,5km.<br />\r\n5. C&aacute;c khu v?????n ???????c t&aacute;ch ra v&agrave; h???u &iacute;ch.</p>', '[\"properties\\/a5-1.jpg\",\"properties\\/a6-1.jpg\",\"properties\\/a7.jpg\",\"properties\\/a8.jpg\",\"properties\\/a10.jpg\",\"properties\\/a9.jpg\"]', 'B??y??k??ekmece, ??stanbul, Turkey', 5, 2, 144, 1, '2020-06-09', '2020-10-04', 'selling', '2019-11-21 02:58:55', '2021-06-11 20:56:44', 20, 'M???t di???n t??ch r???t l???n v???i di???n t??ch 312.000m2 ch??? c?? 144 bi???t th???. M???i bi???t th??? v?????n ?????c l???p v???i nhau v?? b???o v??? cu???c s???ng ri??ng t??. C?? 400 c??y ?? liu tr?????ng th??nh trong c???nh quan khu v???c chung. T??ng c?????ng m???i quan h??? l??ng gi???ng v???i c??c ??i???m chia s??? chung nh?? r???p chi???u phim ngo??i tr???i, c?? ph?? l??ng, ch???.', NULL, NULL, 2, 4, NULL, 'Botble\\ACL\\Models\\User', 5, '43.594023', '-76.209103'),
(11, 'Chung c?? r???ng Aydos', '<p>D??? &aacute;n, mang ?????n c?? h???i duy nh???t cho nh???ng ai mu???n chuy???n ?????n ng&ocirc;i nh&agrave; m???i c???a h???, l&agrave; d??? &aacute;n nh&agrave; ??? thu???n l???i nh???t c???a ?????a ??i???m v???i c&aacute;c t&ugrave;y ch???n thanh to&aacute;n d??? d&agrave;ng theo ng&acirc;n s&aacute;ch c???a b???n. Trong ng&ocirc;i nh&agrave; m???i c???a b???n, b???n s??? c&oacute; m???t cu???c s???ng trong khu chung c?? v???i t??? l??? l???p ?????y 90% l&agrave; kh&ocirc;ng kh&iacute; trong l&agrave;nh c???a R???ng Aydos v???i 3.700 m2, mang l???i c&aacute;c ho???t ?????ng th&uacute; v??? cho ??&ocirc;i ch&acirc;n c???a b???n, v&agrave; c&ograve;n nhi???u ??i???u n???a ??ang ch??? ?????i b???n. B???n s??? s???ng m???t cu???c s???ng v???i thi&ecirc;n nhi&ecirc;n nh??? h??? nh&acirc;n t???o v&agrave; c&acirc;y anh ??&agrave;o trong d??? &aacute;n c??ng nh?? c???nh quan c???a R???ng Aydos. V&agrave; b???i v&igrave; k???t n???i d??? d&agrave;ng v???i c&aacute;c con ???????ng ch&iacute;nh, b???n c&oacute; th??? d??? d&agrave;ng ?????n c&aacute;c trung t&acirc;m quan tr???ng c???a Istanbul.</p>\r\n\r\n<h4><strong>T???i sao b???n n&ecirc;n mua ng&ocirc;i nh&agrave; t??? d??? &aacute;n n&agrave;y?</strong></h4>\r\n\r\n<p>1. S???n s&agrave;ng giao nh&agrave;.<br />\r\n2. 82% di???n t&iacute;ch l&agrave; c???nh quan.<br />\r\n3. R???ng Aydos n???m ngay c???nh d??? &aacute;n.<br />\r\n4. ??&atilde; b&agrave;n giao h??n 90% d??? &aacute;n.<br />\r\n5. D??? v???n chuy???n.</p>', '[\"properties\\/q1.jpg\",\"properties\\/q2.jpg\",\"properties\\/q8.jpg\",\"properties\\/q7.jpg\",\"properties\\/q3.jpg\",\"properties\\/q6.jpg\"]', 'Sancaktepe/??stanbul, Turkey', 4, 18, 1394, 1, '2019-10-30', '2019-07-21', 'selling', '2019-11-21 03:16:25', '2021-06-11 20:56:44', 30, 'B???n s??? c?? m???t cu???c s???ng trong khu chung c?? v???i t??? l??? l???p ?????y 90% l?? kh??ng kh?? trong l??nh c???a R???ng Aydos v???i 3.700 m2, mang l???i c??c ho???t ?????ng th?? v??? cho ????i ch??n c???a b???n, v?? c??n nhi???u ??i???u n???a ??ang ch??? ?????i b???n. B???n s??? s???ng m???t cu???c s???ng v???i thi??n nhi??n nh??? h??? nh??n t???o v?? c??y anh ????o trong d??? ??n c??ng nh?? c???nh quan c???a R???ng Aydos.', NULL, NULL, 2, 4, NULL, 'Botble\\ACL\\Models\\User', 2, '43.311198', '-75.231811'),
(12, 'Khu chung c?? The Avila', '<p>M???t d??? &aacute;n ?????c bi???t s&acirc;u s???c gi???a l???ch s??? v&agrave; Istanbul. ??? trung t&acirc;m c???a b&aacute;n ?????o l???ch s???.&nbsp;<br />\r\nM???t th???m m??? v?????t th???i gian l&agrave;m phong ph&uacute; trong c&aacute;c chi ti???t ho&agrave;n h???o.</p>\r\n\r\n<h4><strong>T???i sao b???n n&ecirc;n mua m???t ng&ocirc;i nh&agrave; t??? d??? &aacute;n n&agrave;y?</strong></h4>\r\n\r\n<p>1. Trong b&aacute;n ?????o l???ch s???, c&oacute; m???t khu v???c r???t ?????c bi???t, n??i b???n s??? kh&ocirc;ng bao gi??? t&igrave;m th???y m???t khu v???c t????ng t???.<br />\r\n2. C???nh bi???n ?????c ??&aacute;o v???i k???t c???u l???ch s??? c???a Istanbul.<br />\r\n3. Trong cu???c s???ng th&agrave;nh ph??? nh???n nh???p, ??? gi???a m???i kh??? n??ng giao th&ocirc;ng.<br />\r\n4. 1 + 1 ?????n 6 + 1 r???t ?????c bi???t, ph&ugrave; h???p v???i m???i nhu c???u c??n h??? g&aacute;c x&eacute;p<br />\r\n5. Khu v???c c???nh quan r???ng l???n, qu&aacute;n c&agrave; ph&ecirc;, c?? h???i mua s???m.</p>', '[\"properties\\/e1.jpg\",\"properties\\/e2.jpg\",\"properties\\/e3.jpg\",\"properties\\/e4.jpg\",\"properties\\/e5.jpg\",\"properties\\/e7.jpg\",\"properties\\/e8.jpg\"]', 'Singapore Island, Singapore', 2, 4, 125, 1, '2019-11-19', '2019-03-11', 'selling', '2019-11-21 03:25:22', '2021-06-11 20:56:44', 21, 'Trong b??n ?????o l???ch s???, c?? m???t khu v???c r???t ?????c bi???t, n??i b???n s??? kh??ng bao gi??? t??m th???y m???t khu v???c t????ng t???. C???nh bi???n ?????c ????o v???i k???t c???u l???ch s??? c???a Istanbul. Trong cu???c s???ng th??nh ph??? nh???n nh???p, ??? gi???a m???i kh??? n??ng giao th??ng. Khu v???c c???nh quan r???ng l???n, qu??n c?? ph??, c?? h???i mua s???m.', NULL, NULL, 2, 1, NULL, 'Botble\\ACL\\Models\\User', 6, '43.296416', '-76.508096');

-- --------------------------------------------------------

--
-- Table structure for table `re_project_features`
--

CREATE TABLE `re_project_features` (
  `project_id` int(10) UNSIGNED NOT NULL,
  `feature_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_project_features`
--

INSERT INTO `re_project_features` (`project_id`, `feature_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 5),
(2, 7),
(2, 8),
(1, 1),
(1, 2),
(1, 4),
(1, 5),
(1, 7),
(7, 10),
(7, 12),
(7, 13),
(7, 15),
(7, 16),
(8, 9),
(8, 10),
(8, 12),
(8, 14),
(8, 15),
(8, 16),
(3, 1),
(3, 2),
(3, 3),
(3, 5),
(3, 7),
(9, 10),
(9, 12),
(9, 14),
(9, 15),
(9, 16),
(4, 1),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(10, 10),
(10, 11),
(10, 12),
(10, 13),
(10, 16),
(5, 1),
(5, 3),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(11, 9),
(11, 10),
(11, 11),
(11, 12),
(11, 14),
(11, 16),
(6, 1),
(6, 3),
(6, 5),
(6, 6),
(6, 7),
(12, 10),
(12, 11),
(12, 12),
(12, 14),
(12, 16);

-- --------------------------------------------------------

--
-- Table structure for table `re_properties`
--

CREATE TABLE `re_properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `number_bedroom` smallint(5) UNSIGNED DEFAULT NULL,
  `number_bathroom` smallint(5) UNSIGNED DEFAULT NULL,
  `number_floor` smallint(5) UNSIGNED DEFAULT NULL,
  `square` int(11) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `price_unit` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sale',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `period` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `category_id` int(10) UNSIGNED NOT NULL,
  `moderation_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `expire_date` date DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT '0',
  `never_expired` tinyint(1) NOT NULL DEFAULT '0',
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_properties`
--

INSERT INTO `re_properties` (`id`, `name`, `content`, `location`, `images`, `project_id`, `number_bedroom`, `number_bathroom`, `number_floor`, `square`, `price`, `price_unit`, `is_featured`, `status`, `created_at`, `updated_at`, `type`, `description`, `currency_id`, `city_id`, `period`, `author_id`, `author_type`, `category_id`, `moderation_status`, `expire_date`, `auto_renew`, `never_expired`, `latitude`, `longitude`) VALUES
(1, '3 Beds Villa Calpe, Alicante', '<p>This villa is equipped with all conveniences, where everything takes place on one living level. Three spacious bedrooms that all have direct access to the pool terrace and a spacious living room with an American kitchen with cooking island, from where you can walk onto the terrace through large glass sliding doors. Downstairs there is an indoor, double garage and laundry room with an internal staircase to the house. But you can also drive up to the front door by car. The terrace is spacious and there is an extra-long swimming pool, where you can swim laps well. Around there is a landscaped garden, which is also low in maintenance. Instead of gardening, there is more time left for wonderful enjoyment in and around this beautiful villa.</p>', 'Alicante, Spain', '[\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\"]', 6, 3, 3, 1, 600, '700000.00', NULL, 1, 'selling', '2019-11-17 20:34:59', '2021-06-11 20:56:48', 'sale', 'This villa is equipped with all conveniences, where everything takes place on one living level. Three spacious bedrooms that all have direct access to the pool terrace and a spacious living room with an American kitchen with cooking island, from where you can walk onto the terrace through large glass sliding doors.', 1, 5, 'month', 8, 'Botble\\RealEstate\\Models\\Account', 2, 'approved', '2025-03-25', 0, 1, '43.954366', '-76.204832'),
(2, 'Property For sale , Johannesburg, South Africa', '<p><strong>Beautiful home situated in road closure in bedfordview.&nbsp;</strong>Nestled on a rocky outcrop of enormous boulders, this unique home is an architectural triumph designed to titilate the senses from the very start with a waterfall cascading into heated black quartzite pool &amp; stunning koi-pond. Flavours of the Seychelles.&nbsp;Enter from a winding pathway lined by palms and tree ferns into the hallway. The spacious living room with magnificent wood burning fireplace and large diningroom are complemented by a wet barrel bar, featuring designer built in wine cellar wall.</p>', 'Johannesburg, South Africa', '[\"properties\\/23.jpg\",\"properties\\/21.jpg\",\"properties\\/24.jpg\",\"properties\\/22.jpg\"]', 6, 4, 4, 2, 800, '800000.00', NULL, 1, 'selling', '2019-11-17 20:53:34', '2021-06-11 20:56:48', 'sale', 'Beautiful home. Nestled on a rocky outcrop of enormous boulders, this unique home is an architectural triumph designed to titilate the senses from the very start with a waterfall cascading into heated black quartzite pool & stunning koi-pond. Flavours of the Seychelles.', 1, 2, 'month', 3, 'Botble\\RealEstate\\Models\\Account', 4, 'approved', '2025-03-25', 0, 1, '43.819483', '-76.703637'),
(3, 'Stunning French Inspired Manor', '<p>Stunning French Inspired Manor located within Briarwood Ranch near Solvang in the heart of the magnificent Santa Ynez Valley. This residence features appx 5,000sqft 4+ bedroom, 3.5 bath home with elegant and spacious interiors including formal living and dining, amazing view great room and kitchen, and massive bonus library media room with bar and custom built-ins. The magnificent lagoon-like infinity edge swimming pool offers beach entry, waterfalls and slide, Cabana and a complimentary poolside bar combo BBQ kitchen. A spacious 2 car garage is adjacent to craft room and large art studio</p>', 'Solvang, Santa Barbara County, CA 93463, USA', '[\"properties\\/31.jpg\",\"properties\\/32.jpg\",\"properties\\/33.jpg\",\"properties\\/34.jpg\",\"properties\\/35.jpg\",\"properties\\/311.jpg\"]', 5, 4, 3, 1, 450, '1695000.00', NULL, 1, 'selling', '2019-11-17 21:09:55', '2021-06-11 20:56:48', 'sale', 'This residence features appx 5,000sqft 4+ bedroom, 3.5 bath home with elegant and spacious interiors including formal living and dining, amazing view great room and kitchen, and massive bonus library media room with bar and custom built-ins. The magnificent lagoon-like infinity edge swimming pool offers beach entry, waterfalls and slide', 1, 5, 'month', 10, 'Botble\\RealEstate\\Models\\Account', 2, 'approved', '2025-03-25', 0, 1, '43.722299', '-75.466082'),
(4, 'Villa for sale at Bermuda Dunes', '<p>This rare and exceptional custom-built home sits on a premiere lot in the exclusive, private section of Castle Harbour. The property borders the golf course for 360 lineal feet, adding not only a gorgeous view but also complete privacy. The home itself sets above the golf course, for further privacy, and is located between the 5th and 6th fairways of the prestigious Bermuda Dunes Country Club. Chiseled glass entry doors lead you into a magnificent Italian Marble entry that encompasses the entire hallway and living room with a fireplace. The vast great room, with raised ceilings, captures the pool, golf, lake and dynamic southern, mountain views. There&#39;s a lovely Library with built in shelves on one wall. There&rsquo;s a sunken wet bar, with Italian Marble flooring, that provides views of the golf course and surrounding mountains.</p>', 'Bermuda Dunes, Riverside County, CA 92203, USA', '[\"properties\\/411.jpg\",\"properties\\/44.jpg\",\"properties\\/43.jpg\",\"properties\\/42.jpg\"]', 4, 4, 3, 1, 480, '1295000.00', NULL, 1, 'selling', '2019-11-17 21:18:11', '2021-06-11 20:56:48', 'sale', 'This rare and exceptional custom-built home sits on a premiere lot in the exclusive, private section of Castle Harbour. The property borders the golf course for 360 lineal feet, adding not only a gorgeous view but also complete privacy. The home itself sets above the golf course, for further privacy, and is located between the 5th and 6th fairways of the prestigious Bermuda Dunes Country Club', 1, 1, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 3, 'approved', '2025-03-25', 0, 1, '43.982274', '-76.182356'),
(5, 'Walnut Park Apartment', '<p>Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community</p>\r\n\r\n<ul>\r\n	<li>Heavily wooded site with dramatic 30-foot bluffs overlooking the scenic Walnut Creek</li>\r\n	<li>Conveniently located on North Lamar near numerous shops, major employers and restaurants</li>\r\n	<li>Easy access to I-35 and a short distance to US-183 and SH-45</li>\r\n	<li>Elegant clubhouse with a full kitchen, bar area, lounging area and creek-view veranda</li>\r\n	<li>24-hour fully-equipped fitness center with lockers and changing area</li>\r\n	<li>Indoor spa with cascading waterfall, steam room and cedar sauna</li>\r\n	<li>Spacious, gourmet kitchens with granite countertops and backsplashes</li>\r\n	<li>Stainless steel appliances and natural gas ranges</li>\r\n	<li>Designer hardwood cabinets with under-cabinet lighting</li>\r\n</ul>', 'North Lamar Boulevard, Austin, Texas 78753, USA', '[\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/1-1.jpg\"]', 1, 2, 2, 1, 980, '2035.00', NULL, 1, 'renting', '2019-11-18 00:47:52', '2021-06-11 20:56:48', 'rent', 'Heavily wooded site with dramatic 30-foot bluffs overlooking the scenic Walnut Creek\r\nConveniently located on North Lamar near numerous shops, major employers and restaurants\r\nEasy access to I-35 and a short distance to US-183 and SH-45\r\nElegant clubhouse with a full kitchen, bar area, lounging area and creek-view veranda', 1, 1, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 2, 'approved', '2025-03-25', 0, 1, '42.669053', '-75.578469'),
(6, '5 beds luxury house', '<p>Luxury and spacious remodeled house in Sea Cliff with 3 levels, 5 bedrooms and 4 bathrooms, and a great Golden Gate View. 4-Car garage. The house is remodeled and spacious with a great layout, and is offered furnished. It is charming and beautiful with lots of details, has thoughtful front landscaping and a large backyard and a patio, and has a great view of the Golden Gate. On the main level the entry opens to a large foyer which connects to a beautiful and large living room with a fireplace, and to a formal dining room.</p>\r\n\r\n<p>The house has a garage which can accommodate 3 to 4 cars. The house is offered furnished. Can be leased for short term or long term. The minimum lease term is 3 months.</p>', 'Seacliff San Francisco, Sea Cliff Avenue, San Francisco, CA 94121, USA', '[\"properties\\/a3.jpg\",\"properties\\/a1.jpg\",\"properties\\/a2.jpg\",\"properties\\/a4.jpg\"]', 2, 5, 4, 3, 270, '1808.00', NULL, 1, 'renting', '2019-11-18 01:05:58', '2021-06-11 20:56:48', 'rent', 'Luxury and spacious remodeled house in Sea Cliff with 3 levels, 5 bedrooms and 4 bathrooms, and a great Golden Gate View. 4-Car garage. The house is remodeled and spacious with a great layout, and is offered furnished. It is charming and beautiful with lots of details, has thoughtful front landscaping and a large backyard and a patio, and has a great view of the Golden Gate', 1, 1, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 5, 'approved', '2025-03-25', 0, 1, '42.946985', '-76.206616'),
(7, 'Family Victorian \"View\" Home', '<p>There is a formal dining room and spacious living room located on either side of the updated eat-in kitchen skylight, white cabinets, and??stainless steel appliances. Enjoy ample natural light and spectacular southern views from the main living room oversized windows and a walk-out??deck. A bonus room (guest bedroom/office) and a full bath complete this level.</p>\r\n<p>??</p>', 'Safeway San Francisco CA, Market Street, San Francisco, CA 94114, USA', '[\"properties\\/b5.jpg\",\"properties\\/b1.jpg\",\"properties\\/b4.jpg\",\"properties\\/b6.jpg\",\"properties\\/b2.jpg\"]', 3, 3, 2, 1, 180, '2580.00', NULL, 1, 'renting', '2019-11-18 01:12:07', '2021-06-11 20:56:48', 'rent', 'There is a formal dining room and spacious living room located on either side of the updated eat-in kitchen skylight, white cabinets, and??stainless steel appliances. Enjoy ample natural light and spectacular southern views from the main living room oversized windows and a walk-out deck. A bonus room (guest bedroom/office) and a full bath complete t', 1, 1, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 6, 'approved', '2025-03-25', 0, 1, '43.819646', '-74.89512'),
(8, 'Osaka Heights Apartment', '<p><strong>Kitchen</strong><br />\r\nCeramic tiled flooring, Granite counter top , Single bowl stainless steel kitchen sink with drain board and provisions for water purifier , electric hood , exhaust fan will be provided</p>\r\n\r\n<p><strong>Toilets</strong><br />\r\nAnti-skid Ceramic tiles on floor and ceramic wall tiles up to 7 feet height. White coloured branded sanitary fittings, Chromium plated taps , concealed plumbing</p>\r\n\r\n<p><strong>Doors</strong><br />\r\nMain door will be high quality wooden door, premium Windows quality pre-hung internal doors with wooded frame, UPVC or aluminum sliding doors and aluminum frame with glass for windows</p>\r\n\r\n<p>&nbsp;9 km to Katunayaka airport expressway entrance</p>\r\n\r\n<p>&nbsp;12 km to Southern expressway entrance at Kottawa</p>\r\n\r\n<p>&nbsp;2 km to Kalubowila General hospital</p>\r\n\r\n<p>&nbsp;All leading banks within a few kilometer radii</p>\r\n\r\n<p>&nbsp;Very close proximity to railway stations</p>\r\n\r\n<p>&nbsp;Many leading schools including CIS within 5 km radius</p>', 'High Level Road, Colombo 06, Sri Lanka', '[\"properties\\/24-1.jpg\",\"properties\\/22-1.jpg\",\"properties\\/p1.jpg\",\"properties\\/p2.jpg\"]', 2, 2, 2, 1, 110, '150000.00', NULL, 1, 'selling', '2019-11-18 01:49:36', '2021-06-11 20:56:48', 'sale', 'Ceramic tiled flooring, Granite counter top , Single bowl stainless steel kitchen sink with drain board and provisions for water purifier , electric hood , exhaust fan will be provided. Anti-skid Ceramic tiles on floor and ceramic wall tiles up to 7 feet height. White coloured branded sanitary fittings, Chromium plated taps , concealed plumbing.', 1, 5, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 2, 'approved', '2025-03-25', 0, 1, '42.928003', '-74.902172'),
(9, 'Private Estate Magnificent Views', '<p>Spacious 3 bedroom stabilised earth brick home, light and bright with statement entrance hall. Conservatory sun room, open plan kitchen/dining/lounge with raked cedar lined ceiling, kitchen with oregon timber cupboards and new Smeg oven. Air conditioner &amp; wood heater<br />\r\nGood sized bedrooms and main bedroom with spa overlooking tranquil gardens and Inlet.</p>', '110 Springdale Heights, Hay Denmark, WA, Australia', '[\"properties\\/79.jpg\",\"properties\\/71.jpg\",\"properties\\/73.jpg\",\"properties\\/72.jpg\",\"properties\\/74.jpg\",\"properties\\/75.jpg\",\"properties\\/78.jpg\"]', 2, 3, 1, 1, 2000, '694000.00', NULL, 1, 'selling', '2019-11-18 02:02:19', '2021-06-11 20:56:48', 'sale', 'Spacious 3 bedroom stabilised earth brick home, light and bright with statement entrance hall. Conservatory sun room, open plan kitchen/dining/lounge with raked cedar lined ceiling, kitchen with oregon timber cupboards and new Smeg oven. Air conditioner & wood heater', 1, 5, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 6, 'approved', '2025-03-25', 0, 1, '42.812299', '-76.137607'),
(10, 'Thompsons Road House for rent', '<p>Perfectly positioned in the exclusive suburb of Bulleen, this renovated home 3 bedroom home offers a superb lifestyle to those seeking all the expected comforts, privacy, convenience to freeways &amp; transport, and space.<br />\r\nYou are welcomed by a beautiful, low maintenance and established front garden, with ample off street parking, an elevated porch and tantum large garage. Inside you will find a lovely neutral colour scheme and near new gleaming timber timber floors. There are three spacious bedrooms all with built in robes, serviced by a central family bathroom and separate powder room, along with a large open lounge and formal dining room beaming with natural light. The stunning kitchen comes complete with Blanco appliances, breakfast bar and top quality fittings and fixtures.</p>', 'Thompsons Road, Bulleen VIC, Australia', '[\"properties\\/5-1.jpg\",\"properties\\/7-1.jpg\",\"properties\\/8-1.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\"]', 6, 3, 3, 1, 160, '1465.00', NULL, 1, 'renting', '2019-11-18 02:16:53', '2021-06-11 20:56:48', 'rent', 'Perfectly positioned in the exclusive suburb of Bulleen, this renovated home 3 bedroom home offers a superb lifestyle to those seeking all the expected comforts, privacy, convenience to freeways & transport, and space.\r\nYou are welcomed by a beautiful, low maintenance and established front garden, with ample off street parking, an elevated porch and tantum large garage', 1, 3, 'month', 11, 'Botble\\RealEstate\\Models\\Account', 6, 'approved', '2025-03-25', 0, 1, '42.601639', '-76.36969'),
(11, 'Brand New 1 Bedroom Apartment In First Class Location', '<p>Set-back from Sandy Bay Road, walk to everything that counts: vibrant Battery Point village, Salamanca Place (Tasmania&#39;s premier entertainment precinct), the City Centre, University of Tasmania, hotel, retail and an easy stroll away from bustling Sandy Bay shops, local schools and with public transport outside your front door.</p>\r\n\r\n<p>Please note: Elders Brown and Banks do not accept applications from applicants who have not inspected the property internally.</p>', 'Sandy Bay Road, Sandy Bay TAS, Australia', '[\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/13.jpg\",\"properties\\/14.jpg\",\"properties\\/15.jpg\"]', 5, 1, 1, 1, 80, '1680.00', NULL, 1, 'renting', '2019-11-18 02:22:48', '2021-06-11 20:56:48', 'rent', 'Set-back from Sandy Bay Road, walk to everything that counts: vibrant Battery Point village, Salamanca Place (Tasmania\'s premier entertainment precinct), the City Centre, University of Tasmania, hotel, retail and an easy stroll away from bustling Sandy Bay shops, local schools and with public transport outside your front door.', 1, 5, 'month', 3, 'Botble\\RealEstate\\Models\\Account', 1, 'approved', '2025-03-25', 0, 1, '42.659611', '-76.197177'),
(12, 'Elegant family home presents premium modern living', '<p>Move straight into this beautifully presented four-bedroom home and enjoy the best in modern family living without lifting a finger. Two separate living areas and four generous bedrooms provide plenty of space to grow, and entertaining is a real pleasure on the elegant alfresco patio in a peaceful garden setting. The home is ideally set walking distance to parks and bus stops, moments to your choice of schools, and just several minutes to Westfield North Lakes.<br />\r\n&nbsp;</p>', 'North Lakes QLD 4509, Australia', '[\"properties\\/a1-1.jpg\",\"properties\\/a2-1.jpg\",\"properties\\/a3-1.jpg\",\"properties\\/a5.jpg\",\"properties\\/a4-1.jpg\",\"properties\\/a6.jpg\"]', 6, 3, 3, 1, 658, '1574.00', NULL, 1, 'renting', '2019-11-18 02:47:05', '2021-06-11 20:56:48', 'rent', 'Move straight into this beautifully presented four-bedroom home and enjoy the best in modern family living without lifting a finger. Two separate living areas and four generous bedrooms provide plenty of space to grow, and entertaining is a real pleasure on the elegant alfresco patio in a peaceful garden setting.', 1, 5, 'month', 8, 'Botble\\RealEstate\\Models\\Account', 3, 'approved', '2025-03-25', 0, 1, '43.137361', '-76.539998'),
(13, 'Luxury Apartments in Singapore for Sale', '<p>This apartment&nbsp;is located in Singapore, which has become a comfortable living center for the living, providing both attractive gains for investors and high premium. 840sqft<br />\r\n- High Floor<br />\r\n- Chinese Family<br />\r\n- Sky Garden<br />\r\n- Beautiful Roof Terrace with Jaccuzzi And<br />\r\nAlfresco Dinning<br />\r\n- Renovated with Quality Finishes<br />\r\n- Near Amenities<br />\r\n- Plenty of eateries.<br />\r\n- 5mins Walk to NTUC / Shaw Plaza<br />\r\n- Mins Drive To Orchard</p>', 'Balestier Road, Singapore', '[\"properties\\/5-2.jpg\",\"properties\\/2-3.jpg\",\"properties\\/3-3.jpg\",\"properties\\/4-2.jpg\",\"properties\\/1-3.jpg\"]', 6, 2, 2, 1, 78, '918000.00', NULL, 1, 'selling', '2019-11-18 07:23:02', '2021-06-11 20:56:48', 'sale', 'This apartment??is located in Singapore. High Floor, Chinese Family, Sky Garden, Beautiful Roof Terrace with Jaccuzzi and Alfresco Dinning, Renovated with Quality Finishes, Near Amenities, Plenty of eateries, 5mins Walk to NTUC / Shaw Plaza, Mins Drive To Orchard', 1, 5, 'month', 10, 'Botble\\RealEstate\\Models\\Account', 2, 'approved', '2025-03-25', 0, 1, '42.813772', '-76.615855'),
(14, '5 room luxury penthouse for sale in Kuala Lumpur', '<p>The Sentral Residence (BRAND NEW LUXURY CONDO)<br />\r\n<br />\r\n-Next to St Regis 5 Star Hotel<br />\r\n-Excellent accessibility (LRT,KLIA TRANSIT,KTM)<br />\r\n-Rooftop Sky lounge,sky pool,sky gym<br />\r\n-Private lift lobby to own unit<br />\r\n<br />\r\nEPIC LUXE PREMIUM UNITS<br />\r\n(KLCC and Lake Garden VIEW)<br />\r\n<br />\r\nLargest unit in Sentral Residence<br />\r\n&nbsp;</p>', 'Kuala Lumpur, Malaysia', '[\"properties\\/6-2.jpg\",\"properties\\/7-2.jpg\",\"properties\\/9-1.jpg\",\"properties\\/8-2.jpg\",\"properties\\/10-1.jpg\",\"properties\\/11-1.jpg\"]', 1, 5, 7, 20, 377, '1590000.00', NULL, 1, 'selling', '2019-11-18 07:36:29', '2021-06-11 20:56:48', 'sale', 'Next to St Regis 5 Star Hotel, Excellent accessibility (LRT,KLIA TRANSIT,KTM), Rooftop Sky lounge, sky pool, sky gym, KLCC and Lake Garden VIEW', 1, 4, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 5, 'approved', '2025-03-25', 0, 1, '42.504328', '-76.341293'),
(15, '2 Floor house in Compound Pejaten Barat Kemang', '<p>Want to lease a nice house in compound Renovated, balinese style ,homey and comfy area 220/300,&nbsp;3&nbsp;bedrooms,&nbsp;2 bathrooms, garden furnished renovated fasilitas : s.pool, tenis court, jogging track 24 hours security rent price : IDR 250.000.000 / year&nbsp;</p>', 'Kota Administrasi Jakarta Selatan, South Jakarta City, Jakarta Raya, Indonesia', '[\"properties\\/a1-2.jpg\",\"properties\\/a2-2.jpg\",\"properties\\/a3-2.jpg\",\"properties\\/a4-2.jpg\"]', 1, 3, 2, 2, 200, '1400.00', NULL, 1, 'renting', '2019-11-18 07:44:44', '2021-06-11 20:56:48', 'rent', 'Want to lease a nice house in compound Renovated, balinese style ,homey and comfy area 220/300,??3??bedrooms,??2 bathrooms, garden furnished renovated fasilitas : s.pool, tenis court, jogging track 24 hours security rent price : IDR 250.000.000 / year??', 1, 5, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 3, 'approved', '2025-03-25', 0, 1, '43.636294', '-76.116519'),
(16, 'Apartment Muiderstraatweg in Diemen', '<p>For rent fully furnished 3 bedroom apartment in Diemen.<br />\r\nVery suitable for a couple or maximum 2 working sharers, garantors are not accepted.<br />\r\n<br />\r\nLovely modern and very well maintained apartment in Diemen.<br />\r\nThe property is located on the first floor where you will find the living room and the kitchen with all modern conveniences.<br />\r\nOn the second floor 2 bedrooms and a nice bathroom with a seperate shower and bathtub.<br />\r\nOn this floor you have access to the small roof terrace.<br />\r\nLast but not least there is a spacious attic room on the third floor.<br />\r\nThe tram stops in front of the door and within 20 minutes you are in the heart of Amsterdam.<br />\r\nPets are not allowed.</p>', 'Diemen, Netherlands', '[\"properties\\/b4-1.jpg\",\"properties\\/b3.jpg\",\"properties\\/b5-1.jpg\"]', 3, 3, 1, 2, 90, '2123.00', NULL, 1, 'renting', '2019-11-18 07:59:14', '2021-06-11 20:56:48', 'rent', 'Lovely modern and very well maintained apartment in Diemen.\r\nThe property is located on the first floor where you will find the living room and the kitchen with all modern conveniences.\r\nOn the second floor 2 bedrooms and a nice bathroom with a seperate shower and bathtub.\r\nOn this floor you have access to the small roof terrace.', 1, 3, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 4, 'approved', '2025-03-25', 0, 1, '43.52876', '-76.65882'),
(17, 'Nice Apartment for rent in Berlin', '<p>Fully furnished shared all-inclusive apartments, with modern amenities that&rsquo;ll make you feel right at home. A great starting point for exploring the rest of the city and its many hidden gems. Area In the center of East Berlin, you&rsquo;ll find everything from delicious street food to flee markets, to high-end restaurants.</p>\r\n\r\n<p>In this bright, modern h(e)aven, you&rsquo;ll find a Queen size bed, a fully equipped kitchen, a separate bathroom with a walk-in shower and a study area for when the dedicated student in you awakens. Some come with great views, others with a nice and cozy balcony.</p>', 'Berlin, Germany', '[\"properties\\/t3.jpg\",\"properties\\/t1.jpg\",\"properties\\/t2.jpg\",\"properties\\/t4.jpg\",\"properties\\/t5.jpg\"]', 6, 1, 1, 1, 33, '1217.00', NULL, 1, 'renting', '2019-11-18 08:13:07', '2021-06-11 20:56:48', 'rent', 'Fully furnished shared all-inclusive apartments, with modern amenities that???ll make you feel right at home. A great starting point for exploring the rest of the city and its many hidden gems. Area In the center of East Berlin, you???ll find everything from delicious street food to flee markets, to high-end restaurants.', 1, 5, 'month', 5, 'Botble\\RealEstate\\Models\\Account', 4, 'approved', '2025-03-25', 0, 1, '43.222732', '-76.105523'),
(18, 'B??n bi???t th??? 3 ph??ng ng??? Calpe, Alicante', '<p>Bi???t th??? ???????c trang b??? ?????y ????? ti???n nghi. Ba ph&ograve;ng ng??? r???ng r&atilde;i ?????u c&oacute; l???i ??i th???ng ra s&acirc;n th?????ng h??? b??i v&agrave; ph&ograve;ng kh&aacute;ch r???ng r&atilde;i v???i nh&agrave; b???p ki???u M??? c&oacute; th??? n???u ??n, t??? ??&oacute; b???n c&oacute; th??? ??i b??? l&ecirc;n s&acirc;n th?????ng qua c???a k&iacute;nh l???n. ??? t???ng d?????i c&oacute; m???t nh&agrave; ????? xe trong nh&agrave;, ph&ograve;ng gi???t ????? v???i m???t c???u thang n???i b??? ?????n nh&agrave;. Nh??ng b???n c??ng c&oacute; th??? l&aacute;i xe l&ecirc;n ?????n c???a tr?????c b???ng &ocirc; t&ocirc;. S&acirc;n th?????ng r???ng r&atilde;i v&agrave; c&oacute; m???t b??? b??i c???c d&agrave;i, tho???i m&aacute;i b??i l???i. Xung quanh c&oacute; m???t khu v?????n c???nh quan. H&atilde;y d&agrave;nh th???i gian ????? t???n h?????ng tuy???t v???i trong v&agrave; xung quanh bi???t th??? xinh ?????p n&agrave;y.</p>', 'Alicante, Spain', '[\"properties\\/1.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\",\"properties\\/3.jpg\"]', 12, 3, 3, 1, 600, '16238915000.00', NULL, 1, 'selling', '2019-11-21 05:51:54', '2021-04-29 20:46:35', 'sale', 'Bi???t th??? ???????c trang b??? ?????y ????? ti???n nghi. Ba ph??ng ng??? r???ng r??i ?????u c?? l???i ??i th???ng ra s??n th?????ng h??? b??i v?? ph??ng kh??ch r???ng r??i v???i nh?? b???p ki???u M??? c?? th??? n???u ??n, t??? ???? b???n c?? th??? ??i b??? l??n s??n th?????ng qua c???a k??nh l???n. ??? t???ng d?????i c?? m???t nh?? ????? xe trong nh??, ph??ng gi???t ????? v???i m???t c???u thang n???i b??? ?????n nh??', 2, 2, 'month', 3, 'Botble\\RealEstate\\Models\\Account', 4, 'approved', '2025-03-25', 0, 1, '43.419982', '-76.587038'),
(19, 'B??n nh?? t???i Johannesburg, South Africa', '<p>Nh&agrave; ?????p. N&eacute;p m&igrave;nh tr&ecirc;n m???t m???m ??&aacute; c???a nh???ng t???ng ??&aacute; kh???ng l???, ng&ocirc;i nh&agrave; ?????c ??&aacute;o n&agrave;y l&agrave; m???t chi???n th???ng ki???n tr&uacute;c ???????c thi???t k??? ????? chu???n ????? c&aacute;c gi&aacute;c quan ngay t??? ?????u v???i m???t th&aacute;c n?????c ????? xu???ng h??? th???ch anh ??en n&oacute;ng b???ng v&agrave; h??? c&aacute; koi tuy???t ?????p. H????ng v??? c???a Seychelles. ???????ng v&agrave;o nh&agrave; ???????c bao ph??? b???i c&acirc;y d????ng s??? 2 b&ecirc;n h&agrave;nh lang. Ph&ograve;ng kh&aacute;ch r???ng r&atilde;i v???i l&ograve; s?????i ?????t c???i tuy???t ?????p v&agrave; ph&ograve;ng ??n l???n c&oacute; th&ecirc;m qu???y r?????u, ???????c thi???t k??? v&agrave; x&acirc;y d???ng nh?? nh???ng b???c t?????ng h???m r?????u.</p>', 'Johannesburg, South Africa', '[\"properties\\/23.jpg\",\"properties\\/24.jpg\",\"properties\\/22.jpg\",\"properties\\/21.jpg\"]', 11, 4, 4, 2, 800, '18558760000.00', NULL, 1, 'selling', '2019-11-21 06:03:11', '2021-06-11 20:56:48', 'sale', 'Nh?? ?????p. N??p m??nh tr??n m???t m???m ???? c???a nh???ng t???ng ???? kh???ng l???, ng??i nh?? ?????c ????o n??y l?? m???t chi???n th???ng ki???n tr??c ???????c thi???t k??? ????? chu???n ????? c??c gi??c quan ngay t??? ?????u v???i m???t th??c n?????c ????? xu???ng h??? th???ch anh ??en n??ng b???ng v?? h??? c?? koi tuy???t ?????p. H????ng v??? c???a Seychelles', 2, 3, 'month', 4, 'Botble\\RealEstate\\Models\\Account', 3, 'approved', '2025-03-25', 0, 1, '43.344209', '-76.620037'),
(20, 'Nh?? phong c??ch Ph??p', '<p>Trang vi&ecirc;n&nbsp;l???y c???m h???ng t??? Ph&aacute;p tuy???t ?????p n???m trong Briarwood Ranch g???n Solvang ??? trung t&acirc;m thung l??ng Santa Ynez tr&aacute;ng l???. Khu nh&agrave; n&agrave;y c&oacute; 4 ph&ograve;ng ng???, s???p s??? 5,000sqft, 3 nh&agrave; t???m v???i n???i th???t trang nh&atilde; v&agrave; r???ng r&atilde;i bao g???m ph&ograve;ng kh&aacute;ch v&agrave; ??n u???ng ch&iacute;nh th???c, ph&ograve;ng v&agrave; nh&agrave; b???p tuy???t v???i, ph&ograve;ng th?? vi???n l???n v???i qu???y bar.<br />\r\nH??? b??i c???nh v&ocirc; c???c tuy???t ?????p gi???ng nh?? l???i v&agrave;o b&atilde;i bi???n, th&aacute;c n?????c v&agrave; c???u tr?????t, Cabana v&agrave; nh&agrave; b???p k???t h???p qu???y bar BBQ b&ecirc;n h??? b??i mi???n ph&iacute;. Nh&agrave; ????? xe r???ng r&atilde;i, r???ng r&atilde;i, li???n k??? v???i ph&ograve;ng th??? c&ocirc;ng v&agrave; studio ngh??? thu???t l???n</p>', 'Solvang, Santa Barbara County, CA 93463, USA', '[\"properties\\/31.jpg\",\"properties\\/32.jpg\",\"properties\\/33.jpg\",\"properties\\/34.jpg\",\"properties\\/35.jpg\",\"properties\\/311.jpg\"]', 12, 4, 3, 1, 450, '39321372750.00', NULL, 1, 'selling', '2019-11-21 06:12:15', '2021-06-11 20:56:48', 'sale', 'Khu nh?? n??y c?? 4 ph??ng ng???, s???p s??? 5,000sqft, 3 nh?? t???m v???i n???i th???t trang nh?? v?? r???ng r??i bao g???m ph??ng kh??ch v?? ??n u???ng ch??nh th???c, ph??ng v?? nh?? b???p tuy???t v???i, ph??ng th?? vi???n l???n v???i qu???y bar.\r\nH??? b??i c???nh v?? c???c tuy???t ?????p gi???ng nh?? l???i v??o b??i bi???n, th??c n?????c v?? c???u tr?????t.', 2, 5, 'month', 9, 'Botble\\RealEstate\\Models\\Account', 3, 'approved', '2025-03-25', 0, 1, '42.945516', '-76.223921'),
(21, 'Nh?? b??n t???i Bermuda Dunes', '<p>Ng&ocirc;i nh&agrave; ???????c x&acirc;y d???ng t&ugrave;y ch???nh hi???m c&oacute; v&agrave; ?????c bi???t n&agrave;y n???m tr&ecirc;n m???t khu ?????t ra m???t trong khu v???c ri&ecirc;ng, ?????c quy???n c???a Castle Harbor. Khu nh&agrave; c&oacute; d???i c??? r???ng 360 b?????c ch&acirc;n, kh&ocirc;ng ch??? c&oacute; t???m nh&igrave;n tuy???t ?????p m&agrave; c&ograve;n ho&agrave;n to&agrave;n ri&ecirc;ng t??. Ng&ocirc;i nh&agrave; n???m ph&iacute;a tr&ecirc;n s&acirc;n c???, ????? c&oacute; th&ecirc;m s??? ri&ecirc;ng t??, v&agrave; n???m gi???a c&aacute;c lu???ng th??? 5 v&agrave; th??? 6 c???a C&acirc;u l???c b??? Qu???c gia Bermuda Dunes danh ti???ng. C???a ra v&agrave;o b???ng k&iacute;nh ???????c ????a b???n v&agrave;o m???t l???i v&agrave;o ??&aacute; c???m th???ch &Yacute; tuy???t ?????p bao g???m to&agrave;n b??? h&agrave;nh lang v&agrave; ph&ograve;ng kh&aacute;ch v???i m???t l&ograve; s?????i. Ph&ograve;ng l???n r???ng l???n, v???i tr???n nh&agrave; cao l&ecirc;n, thu h&uacute;t h??? b??i, s&acirc;n g&ocirc;n, h??? n?????c v&agrave; h?????ng nam n??ng ?????ng, c???nh n&uacute;i non. C&oacute; m???t th?? vi???n ??&aacute;ng y&ecirc;u ???????c x&acirc;y d???ng tr&ecirc;n c&aacute;c k??? tr&ecirc;n m???t b???c t?????ng. C&oacute; m???t qu&aacute;n bar m&aacute;t m???, v???i s&agrave;n l&aacute;t ??&aacute; c???m th???ch c???a &Yacute;, cung c???p t???m nh&igrave;n ra s&acirc;n g&ocirc;n v&agrave; nh???ng ng???n n&uacute;i xung quanh.</p>', 'Bermuda Dunes, Riverside County, CA 92203, USA', '[\"properties\\/411.jpg\",\"properties\\/44.jpg\",\"properties\\/43.jpg\",\"properties\\/42.jpg\"]', 9, 4, 3, 1, 480, '30041992750.00', NULL, 1, 'selling', '2019-11-21 06:26:59', '2021-06-11 20:56:48', 'sale', 'Ng??i nh?? ???????c x??y d???ng t??y ch???nh hi???m c?? v?? ?????c bi???t n??y n???m tr??n m???t khu ?????t ra m???t trong khu v???c ri??ng, ?????c quy???n c???a Castle Harbor. Khu nh?? c?? d???i c??? r???ng 360 b?????c ch??n, kh??ng ch??? c?? t???m nh??n tuy???t ?????p m?? c??n ho??n to??n ri??ng t??. Ng??i nh?? n???m ph??a tr??n s??n c???, ????? c?? th??m s??? ri??ng t??, v?? n???m gi???a c??c lu???ng th??? 5 v?? th??? 6 c???a C??u l???c b??? Qu???c gia Bermuda Dunes danh ti???ng', 2, 1, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 6, 'approved', '2025-03-25', 0, 1, '43.507235', '-75.906569'),
(22, 'C??n h??? Walnut Park', '<p>Ch??? c&oacute; 11 d???m t??? trung t&acirc;m th&agrave;nh ph??? Austin, khu c??n h??? nhi???u c&acirc;y c???i r???m r???p gi&aacute;p Walnut Creek v&agrave; t???o cho ng?????i d&acirc;n c???m h???ng trong m???t c???ng ?????ng ?????ng c???p ri&ecirc;ng bi???t.<br />\r\nKhu r???ng r???m r???p v???i nh???ng ng???n c&acirc;y d&agrave;i 30 feet nh&igrave;n xu???ng. Walnut Creek tuy???t ?????p.<br />\r\nV??? tr&iacute; thu???n ti???n tr&ecirc;n North Lamar g???n nhi???u c???a h&agrave;ng, doanh nghi???p v&agrave; nh&agrave; h&agrave;ng.<br />\r\nD??? d&agrave;ng truy c???p I-35 v&agrave; m???t kho???ng c&aacute;ch ng???n ?????n US-183 v&agrave; SH-45 C&oacute; c&acirc;u l???c b??? thanh l???ch v???i nh&agrave; b???p ?????y ?????, khu v???c qu???y bar, khu v???c th?? gi&atilde;n v&agrave; hi&ecirc;n nh&igrave;n ra thung l??ng.<br />\r\nTrung t&acirc;m th??? d???c ???????c trang b??? ?????y ????? 24 gi??? v???i t??? kh&oacute;a v&agrave; khu v???c thay ?????.<br />\r\nSpa trong nh&agrave; v???i th&aacute;c n?????c, ph&ograve;ng t???m h??i v&agrave; ph&ograve;ng x&ocirc;ng h??i tuy???t t&ugrave;ng.<br />\r\nNh&agrave; b???p r???ng r&atilde;i, s&agrave;nh ??i???u v???i m???t ??&aacute; granite v&agrave; ???p l??ng.<br />\r\nThi???t b??? b???ng th&eacute;p kh&ocirc;ng g??? v&agrave; ph???m vi kh&iacute; ?????t t??? nhi&ecirc;n.<br />\r\nThi???t k??? t??? g??? c???ng v???i &aacute;nh s&aacute;ng d?????i t???</p>', 'North Lamar Boulevard, Austin, Texas, USA', '[\"properties\\/8.jpg\",\"properties\\/1-1.jpg\",\"properties\\/5.jpg\",\"properties\\/7.jpg\",\"properties\\/21.jpg\"]', 7, 2, 2, 1, 980, '47208845.00', NULL, 1, 'renting', '2019-11-21 06:56:50', '2021-06-11 20:56:48', 'rent', 'Khu r???ng r???m r???p v???i nh???ng ng???n c??y d??i 30 feet nh??n xu???ng. Walnut Creek tuy???t ?????p.\r\nV??? tr?? thu???n ti???n tr??n North Lamar g???n nhi???u c???a h??ng, doanh nghi???p v?? nh?? h??ng.\r\nD??? d??ng truy c???p I-35 v?? m???t kho???ng c??ch ng???n ?????n US-183 v?? SH-45 C?? c??u l???c b??? thanh l???ch v???i nh?? b???p ?????y ?????, khu v???c qu???y bar, khu v???c th?? gi??n v?? hi??n nh??n ra thung l??ng.', 2, 3, 'month', 9, 'Botble\\RealEstate\\Models\\Account', 6, 'approved', '2025-03-25', 0, 1, '43.587177', '-76.284447'),
(23, 'Cho thu?? nh?? cao c???p 5 ph??ng ng???', '<p>Ng&ocirc;i nh&agrave; ???????c tu s???a sang tr???ng v&agrave; r???ng r&atilde;i ??? Sea Cliff v???i 3 t???ng, 5 ph&ograve;ng ng??? v&agrave; 4 ph&ograve;ng t???m, v&agrave; Golden Gate View. Gara &ocirc; t&ocirc; 4 ch???. Ng&ocirc;i nh&agrave; ???????c tu s???a v&agrave; r???ng r&atilde;i v???i b??? c???c tuy???t v???i, v&agrave; ???????c cung c???p n???i th???t. N&oacute; quy???n r?? v&agrave; xinh ?????p v???i nhi???u chi ti???t, c&oacute; c???nh quan ph&iacute;a tr?????c chu ??&aacute;o v&agrave; s&acirc;n sau r???ng v&agrave; s&acirc;n trong, v&agrave; c&oacute; m???t c&aacute;i nh&igrave;n tuy???t v???i v??? C???ng V&agrave;ng. ??? c???p ????? ch&iacute;nh, l???i v&agrave;o m??? ra m???t s???nh l???n k???t n???i v???i ph&ograve;ng kh&aacute;ch ?????p v&agrave; r???ng c&oacute; l&ograve; s?????i v&agrave; ph&ograve;ng ??n trang tr???ng.<br />\r\n<br />\r\nNg&ocirc;i nh&agrave; c&oacute; m???t nh&agrave; ????? xe c&oacute; th??? ch???a 3 ?????n 4 xe h??i. Ng&ocirc;i nh&agrave; ???????c cung c???p n???i th???t. C&oacute; th??? ???????c cho thu&ecirc; ng???n h???n ho???c d&agrave;i h???n. Th???i h???n thu&ecirc; t???i thi???u l&agrave; 3 th&aacute;ng.</p>', 'Seacliff San Francisco, Sea Cliff Avenue, San Francisco, CA 94121, USA', '[\"properties\\/a3.jpg\",\"properties\\/a1.jpg\",\"properties\\/a2.jpg\",\"properties\\/a4.jpg\"]', 9, 5, 4, 3, 270, '41943000.00', NULL, 1, 'renting', '2019-11-21 07:18:36', '2021-06-11 20:56:48', 'rent', 'Ng??i nh?? ???????c tu s???a sang tr???ng v?? r???ng r??i ??? Sea Cliff v???i 3 t???ng, 5 ph??ng ng??? v?? 4 ph??ng t???m, v?? Golden Gate View. Gara ?? t?? 4 ch???. Ng??i nh?? ???????c tu s???a v?? r???ng r??i v???i b??? c???c tuy???t v???i, v?? ???????c cung c???p n???i th???t. N?? quy???n r?? v?? xinh ?????p v???i nhi???u chi ti???t, c?? c???nh quan ph??a tr?????c chu ????o v?? s??n sau r???ng v?? s??n trong, v?? c?? m???t c??i nh??n tuy???t v???i v??? C???ng V??ng', 2, 5, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 4, 'approved', '2025-03-25', 0, 1, '43.824558', '-74.914358'),
(24, 'Cho thu?? nh?? view ?????p', '<p>C&oacute; m???t ph&ograve;ng ??n ch&iacute;nh th???c v&agrave; ph&ograve;ng kh&aacute;ch r???ng r&atilde;i n???m ??? hai b&ecirc;n c???a gi???ng tr???i nh&agrave; b???p ???????c c???p nh???t, t??? m&agrave;u tr???ng v&agrave; c&aacute;c thi???t b??? b???ng th&eacute;p kh&ocirc;ng g???. T???n h?????ng &aacute;nh s&aacute;ng t??? nhi&ecirc;n r???ng r&atilde;i v&agrave; quang c???nh ph&iacute;a nam ngo???n m???c t??? c&aacute;c c???a s??? l???n c???a ph&ograve;ng kh&aacute;ch ch&iacute;nh v&agrave; s&agrave;n ??i b???. M???t ph&ograve;ng th?????ng (ph&ograve;ng ng??? cho kh&aacute;ch / v??n ph&ograve;ng) v&agrave; ph&ograve;ng t???m ?????y ?????.</p>', 'Safeway San Francisco CA, Market Street, San Francisco, CA 94114, USA', '[\"properties\\/b5.jpg\",\"properties\\/b2.jpg\",\"properties\\/b1.jpg\",\"properties\\/b4.jpg\",\"properties\\/b6.jpg\"]', 12, 3, 2, 1, 180, '59852000.00', NULL, 1, 'renting', '2019-11-21 07:26:48', '2021-04-29 20:46:35', 'sale', 'C?? m???t ph??ng ??n ch??nh th???c v?? ph??ng kh??ch r???ng r??i n???m ??? hai b??n c???a gi???ng tr???i nh?? b???p ???????c c???p nh???t, t??? m??u tr???ng v?? c??c thi???t b??? b???ng th??p kh??ng g???. T???n h?????ng ??nh s??ng t??? nhi??n r???ng r??i v?? quang c???nh ph??a nam ngo???n m???c t??? c??c c???a s??? l???n c???a ph??ng kh??ch ch??nh v?? s??n ??i b???. M???t ph??ng th?????ng (ph??ng ng??? cho kh??ch / v??n ph??ng) v?? ph??ng t???m ?????y ?????.', 2, 1, 'month', 3, 'Botble\\RealEstate\\Models\\Account', 6, 'approved', '2025-03-25', 0, 1, '42.948734', '-75.415151'),
(25, 'B??n c??n h??? Osaka Heights', '<p><strong>Ph&ograve;ng b???p</strong><br />\r\nS&agrave;n l&aacute;t g???ch men, m???t b&agrave;n ??&aacute; granite, ch???u r???a b&aacute;t inox ????n c&oacute; b???ng tho&aacute;t n?????c v&agrave; c&aacute;c quy ?????nh cho m&aacute;y l???c n?????c, m&aacute;y h&uacute;t m&ugrave;i ??i???n, qu???t h&uacute;t s??? ???????c cung c???p</p>\r\n\r\n<p><strong>Nh&agrave; v??? sinh</strong><br />\r\nG???ch ch???ng tr?????t tr&ecirc;n s&agrave;n v&agrave; g???ch ???p t?????ng c&oacute; chi???u cao l&ecirc;n ?????n 7 feet. Ph??? ki???n v??? sinh th????ng hi???u m&agrave;u tr???ng, v&ograve;i m??? crom, h??? th???ng ???ng n?????c che gi???u</p>\r\n\r\n<p><strong>C???a ra v&agrave;o</strong><br />\r\nC???a ch&iacute;nh s??? l&agrave; c???a g??? ch???t l?????ng cao, c???a b&ecirc;n trong ch???t l?????ng cao c???p Windows c&oacute; khung g???, c???a tr?????t b???ng nh???a UPVC ho???c nh&ocirc;m v&agrave; khung nh&ocirc;m c&oacute; k&iacute;nh cho c???a s???</p>\r\n\r\n<p>9 km ?????n l???i v&agrave;o ???????ng cao t???c s&acirc;n bay Katunayaka</p>\r\n\r\n<p>12 km ?????n l???i v&agrave;o ???????ng cao t???c ph&iacute;a Nam t???i Kottawa</p>\r\n\r\n<p>2 km ?????n b???nh vi???n ??a khoa Kalubowila</p>\r\n\r\n<p>T???t c??? c&aacute;c ng&acirc;n h&agrave;ng h&agrave;ng ?????u trong v&ograve;ng v&agrave;i km b&aacute;n k&iacute;nh</p>\r\n\r\n<p>R???t g???n c&aacute;c ga ???????ng s???t</p>\r\n\r\n<p>Nhi???u tr?????ng h&agrave;ng ?????u bao g???m CIS trong b&aacute;n k&iacute;nh 5 km</p>', 'High Level Road, Colombo 06, Sri Lanka', '[\"properties\\/24-1.jpg\",\"properties\\/22-1.jpg\",\"properties\\/p1.jpg\",\"properties\\/p2.jpg\"]', 8, 2, 2, 1, 110, '3479767000.00', NULL, 1, 'selling', '2019-11-21 07:34:38', '2021-06-11 20:56:48', 'sale', 'S??n l??t g???ch men, m???t b??n ???? granite, ch???u r???a b??t inox ????n c?? b???ng tho??t n?????c v?? c??c quy ?????nh cho m??y l???c n?????c, m??y h??t m??i ??i???n, qu???t h??t s??? ???????c cung c???p. G???ch ch???ng tr?????t tr??n s??n v?? g???ch ???p t?????ng c?? chi???u cao l??n ?????n 7 feet. Ph??? ki???n v??? sinh th????ng hi???u m??u tr???ng, v??i m??? crom, h??? th???ng ???ng n?????c che gi???u.', 2, 2, 'month', 7, 'Botble\\RealEstate\\Models\\Account', 2, 'approved', '2025-03-25', 0, 1, '43.995532', '-75.503945'),
(26, 'B??n nh?? ch??nh ch??? Magnificent View', '<p>Nh&agrave; r???ng r&atilde;i 3 ph&ograve;ng ng???, s&aacute;ng s???a v???i l???i v&agrave;o s???nh. Ph&ograve;ng t???m n???ng, nh&agrave; b???p / ph&ograve;ng ??n / ph&ograve;ng kh&aacute;ch c&oacute; kh&ocirc;ng gian m??? v???i tr???n l&oacute;t g??? tuy???t t&ugrave;ng, nh&agrave; b???p v???i t??? g??? oregon v&agrave; l&ograve; n?????ng Smeg m???i. M&aacute;y l???nh &amp; m&aacute;y s?????i g???<br />\r\nPh&ograve;ng ng??? k&iacute;ch th?????c t???t v&agrave; ph&ograve;ng ng??? ch&iacute;nh v???i spa nh&igrave;n ra khu v?????n y&ecirc;n t??nh v&agrave; l???i v&agrave;o.</p>', '110 Springdale Heights, Hay Denmark, WA, Australia', '[\"properties\\/79.jpg\",\"properties\\/71.jpg\",\"properties\\/73.jpg\",\"properties\\/72.jpg\",\"properties\\/74.jpg\",\"properties\\/75.jpg\",\"properties\\/78.jpg\"]', 12, 3, 1, 1, 2000, '16099870.00', NULL, 1, 'selling', '2019-11-21 07:40:46', '2021-06-11 20:56:48', 'sale', 'Nh?? r???ng r??i 3 ph??ng ng???, s??ng s???a v???i l???i v??o s???nh. Ph??ng t???m n???ng, nh?? b???p / ph??ng ??n / ph??ng kh??ch c?? kh??ng gian m??? v???i tr???n l??t g??? tuy???t t??ng, nh?? b???p v???i t??? g??? oregon v?? l?? n?????ng Smeg m???i. M??y l???nh & m??y s?????i g???', 2, 2, 'month', 11, 'Botble\\RealEstate\\Models\\Account', 5, 'approved', '2025-03-25', 0, 1, '43.402628', '-75.905897'),
(27, 'Cho thu?? nh?? tr??n ???????ng Thompsons', '<p>N???m ??? v??? tr&iacute; ho&agrave;n h???o trong v&ugrave;ng ngo???i &ocirc; ?????c quy???n c???a Bulleen, ng&ocirc;i nh&agrave; 3 ph&ograve;ng ng??? ???????c c???i t???o n&agrave;y mang ?????n m???t l???i s???ng tuy???t v???i cho nh???ng ng?????i t&igrave;m ki???m t???t c??? c&aacute;c ti???n nghi, s??? ri&ecirc;ng t??, thu???n ti???n cho ???????ng cao t???c &amp; giao th&ocirc;ng, v&agrave; kh&ocirc;ng gian.<br />\r\nB???n ???????c ch&agrave;o ??&oacute;n b???i m???t khu v?????n ph&iacute;a tr?????c ?????p, &iacute;t b???o tr&igrave; v&agrave; ???????c thi???t l???p, v???i b&atilde;i ?????u xe r???ng r&atilde;i, m???t hi&ecirc;n nh&agrave; cao v&agrave; nh&agrave; ????? xe l???n tantum. B&ecirc;n trong, b???n s??? t&igrave;m th???y m???t b???ng m&agrave;u trung t&iacute;nh ??&aacute;ng y&ecirc;u v&agrave; g???n s&agrave;n g??? m???i l???p l&aacute;nh. C&oacute; ba ph&ograve;ng ng??? r???ng r&atilde;i, t???t c??? ?????u ???????c x&acirc;y d???ng v???i &aacute;o cho&agrave;ng, ???????c ph???c v??? b???i ph&ograve;ng t???m gia ??&igrave;nh trung t&acirc;m v&agrave; ph&ograve;ng b???t ri&ecirc;ng bi???t, c&ugrave;ng v???i m???t ph&ograve;ng kh&aacute;ch r???ng m??? v&agrave; ph&ograve;ng ??n trang tr???ng r???ng r??? v???i &aacute;nh s&aacute;ng t??? nhi&ecirc;n. Nh&agrave; b???p tuy???t ?????p ??i k&egrave;m v???i c&aacute;c thi???t b??? Blanco, qu???y bar ??n s&aacute;ng v&agrave; c&aacute;c ph??? ki???n v&agrave; ????? ?????c ch???t l?????ng h&agrave;ng ?????u.</p>', 'Thompsons Road, Bulleen VIC, Australia', '[\"properties\\/5-1.jpg\",\"properties\\/7-1.jpg\",\"properties\\/8-1.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\"]', 9, 3, 3, 1, 160, '33985098.00', NULL, 1, 'renting', '2019-11-21 07:45:34', '2021-06-11 20:56:48', 'rent', 'N???m ??? v??? tr?? ho??n h???o trong v??ng ngo???i ?? ?????c quy???n c???a Bulleen, ng??i nh?? 3 ph??ng ng??? ???????c c???i t???o n??y mang ?????n m???t l???i s???ng tuy???t v???i cho nh???ng ng?????i t??m ki???m t???t c??? c??c ti???n nghi, s??? ri??ng t??, thu???n ti???n cho ???????ng cao t???c & giao th??ng, v?? kh??ng gian.\r\nB???n ???????c ch??o ????n b???i m???t khu v?????n ph??a tr?????c ?????p, ??t b???o tr?? v?? ???????c thi???t l???p, v???i b??i ?????u xe r???ng r??i, m???t hi??n nh?? cao v?? nh?? ????? xe l???n tantum', 2, 2, 'month', 7, 'Botble\\RealEstate\\Models\\Account', 4, 'approved', '2025-03-25', 0, 1, '43.182256', '-76.273254'),
(28, 'C??n h??? 1 ph??ng ng??? ho??n to??n m???i ??? v??? tr?? h???ng nh???t', '<p>N???m ph&iacute;a sau Sandy Bay Road, ??i b??? ?????n m???i th??? quan tr???ng: l&agrave;ng Battery Point s&ocirc;i ?????ng, Salamanca Place (khu gi???i tr&iacute; h&agrave;ng ?????u c???a Tasmania), Trung t&acirc;m th&agrave;nh ph???, ?????i h???c Tasmania, kh&aacute;ch s???n, b&aacute;n l??? v&agrave; d??? d&agrave;ng ??i b??? t??? c&aacute;c c???a h&agrave;ng Sandy Bay nh???n nh???p, tr?????ng h???c ?????a ph????ng v&agrave; v???i giao th&ocirc;ng c&ocirc;ng c???ng b&ecirc;n ngo&agrave;i c???a tr?????c c???a b???n.<br />\r\nXin l??u &yacute;: Ng?????i cao tu???i Brown v&agrave; Ng&acirc;n h&agrave;ng kh&ocirc;ng ch???p nh???n ????n ????ng k&yacute; t??? nh???ng ng?????i n???p ????n ch??a ki???m tra t&agrave;i s???n trong n???i b???.</p>', 'Sandy Bay Road, Sandy Bay TAS, Australia', '[\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/13.jpg\",\"properties\\/14.jpg\",\"properties\\/15.jpg\"]', 7, 1, 1, 1, 80, '39047980.00', NULL, 1, 'renting', '2019-11-21 19:53:17', '2021-06-11 20:56:44', 'rent', 'N???m ph??a sau Sandy Bay Road, ??i b??? ?????n m???i th??? quan tr???ng: l??ng Battery Point s??i ?????ng, Salamanca Place (khu gi???i tr?? h??ng ?????u c???a Tasmania), Trung t??m th??nh ph???, ?????i h???c Tasmania, kh??ch s???n, b??n l??? v?? d??? d??ng ??i b??? t??? c??c c???a h??ng Sandy Bay nh???n nh???p, tr?????ng h???c ?????a ph????ng v?? v???i giao th??ng c??ng c???ng b??n ngo??i c???a tr?????c c???a b???n.', 2, 2, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 5, 'approved', '2025-03-25', 0, 1, '43.38233', '-74.942442'),
(29, 'Nh?? cao c???p thanh l???ch', '<p>D???n v&agrave;o ??? ngay, ng&ocirc;i nh&agrave; b???n ph&ograve;ng ng??? ???????c tr&igrave;nh b&agrave;y ?????p m???t n&agrave;y v&agrave; t???n h?????ng nh???ng ??i???u t???t nh???t trong cu???c s???ng gia ??&igrave;nh hi???n ?????i kh&ocirc;ng c???n trang b??? tu s???a g&igrave; th&ecirc;m. Hai khu v???c sinh ho???t ri&ecirc;ng bi???t v&agrave; b???n ph&ograve;ng ng??? r???ng r&atilde;i cung c???p nhi???u kh&ocirc;ng gian ????? ph&aacute;t tri???n, v&agrave; gi???i tr&iacute; l&agrave; m???t ni???m vui th???c s??? tr&ecirc;n s&acirc;n hi&ecirc;n thanh l???ch trong m???t khung c???nh v?????n y&ecirc;n b&igrave;nh. Ng&ocirc;i nh&agrave; l&yacute; t?????ng ?????t kho???ng c&aacute;ch ??i b??? ?????n c&ocirc;ng vi&ecirc;n v&agrave; tr???m d???ng xe bu&yacute;t, nh???ng kho???nh kh???c b???n ch???n tr?????ng v&agrave; ch??? v&agrave;i ph&uacute;t ?????n Westfield North Lakes.</p>', 'North Lakes QLD 4509, Australia', '[\"properties\\/a1-1.jpg\",\"properties\\/a2-1.jpg\",\"properties\\/a3-1.jpg\",\"properties\\/a5.jpg\",\"properties\\/a4-1.jpg\",\"properties\\/a6.jpg\",\"properties\\/21.jpg\"]', 7, 3, 3, 1, 658, '36780000.00', NULL, 1, 'renting', '2019-11-21 19:59:16', '2021-06-11 20:56:48', 'rent', 'D???n v??o ??? ngay, ng??i nh?? b???n ph??ng ng??? ???????c tr??nh b??y ?????p m???t n??y v?? t???n h?????ng nh???ng ??i???u t???t nh???t trong cu???c s???ng gia ????nh hi???n ?????i kh??ng c???n trang b??? tu s???a g?? th??m. Hai khu v???c sinh ho???t ri??ng bi???t v?? b???n ph??ng ng??? r???ng r??i cung c???p nhi???u kh??ng gian ????? ph??t tri???n, v?? gi???i tr?? l?? m???t ni???m vui th???c s??? tr??n s??n hi??n thanh l???ch trong m???t khung c???nh v?????n y??n b??nh', 2, 5, 'month', 5, 'Botble\\RealEstate\\Models\\Account', 4, 'approved', '2025-03-25', 0, 1, '43.163706', '-74.840537'),
(30, 'C???n b??n c??n h??? cao c???p t???i Singapore', '<p>C??n h??? n&agrave;y n???m ??? Singapore, n??i ??&atilde; tr??? th&agrave;nh m???t trung t&acirc;m s???ng tho???i m&aacute;i cho ng?????i s???ng, cung c???p c??? l???i nhu???n h???p d???n cho c&aacute;c nh&agrave; ?????u t?? v&agrave; ph&iacute; b???o hi???m cao.<br />\r\n- T???ng cao<br />\r\n- Gia ??&igrave;nh trung qu???c<br />\r\n- Khu v?????n Tr&ecirc;n M&acirc;y<br />\r\n- S&acirc;n th?????ng ?????p v???i Jaccuzzi v&agrave; Ph&ograve;ng ??n Alfresco<br />\r\n- ???????c c???i t???o v???i ch???t l?????ng ho&agrave;n thi???n<br />\r\n- G???n Ti???n nghi<br />\r\n- R???t nhi???u qu&aacute;n ??n.<br />\r\n- 5 ph&uacute;t ??i b??? ?????n NTUC / Shaw Plaza<br />\r\n- Ch??? m???t v&agrave;i ph&uacute;t l&aacute;i xe ?????n ?????i l???</p>', 'Balestier Road, Singapore', '[\"properties\\/5-2.jpg\",\"properties\\/2-3.jpg\",\"properties\\/3-3.jpg\",\"properties\\/4-2.jpg\",\"properties\\/1-3.jpg\"]', 12, 2, 2, 1, 78, '21336980700.00', NULL, 1, 'selling', '2019-11-22 00:29:01', '2021-06-11 20:56:48', 'sale', 'C??n h??? n??y n???m ??? Singapore, t???ng cao, gia ????nh Trung Qu???c, khu v?????n Tr??n M??y, s??n th?????ng ?????p v???i Jaccuzzi v?? ph??ng ??n Alfresco, ???????c c???i t???o v???i ch???t l?????ng ho??n thi???n, g???n Ti???n nghi, r???t nhi???u qu??n ??n, 5 ph??t ??i b??? ?????n NTUC / Shaw Plaza, ch??? m???t v??i ph??t l??i xe ?????n ?????i l???', 2, 1, 'month', 7, 'Botble\\RealEstate\\Models\\Account', 6, 'approved', '2025-03-25', 0, 1, '43.38796', '-76.113468'),
(31, 'C???n b??n c??n h??? cao c???p 5 ph??ng t???i Kuala Lumpur', '<p>The Sentral Residence (CONDO LUXURY M???I)</p>\r\n\r\n<p>K??? b&ecirc;n&nbsp;kh&aacute;ch s???n 5 sao St Regis<br />\r\nKh??? n??ng ti???p c???n tuy???t v???i (LRT, KLIA TRANSIT, KTM)<br />\r\nPh&ograve;ng ch??? tr&ecirc;n t???ng th?????ng, h??? b??i ngo&agrave;i&nbsp;tr???i, ph&ograve;ng t???p th??? d???c ngo&agrave;i&nbsp;tr???i<br />\r\n-Private n&acirc;ng s???nh ????? s??? h???u ????n v???</p>\r\n\r\n<p>????N V??? PREMIUM EPIC LUXE<br />\r\n(View KLCC v&agrave;&nbsp;Lake Garden)</p>\r\n\r\n<p>????n v??? l???n nh???t t???i Sentral Residence</p>', 'Kuala Lumpur, Malaysia', '[\"properties\\/6-2.jpg\",\"properties\\/7-2.jpg\",\"properties\\/9-1.jpg\",\"properties\\/8-2.jpg\",\"properties\\/10-1.jpg\",\"properties\\/11-1.jpg\"]', 10, 5, 7, 20, 377, '36987040000.00', NULL, 1, 'selling', '2019-11-22 00:42:28', '2021-06-11 20:56:48', 'sale', 'K??? b??n??kh??ch s???n 5 sao St Regis\r\nKh??? n??ng ti???p c???n tuy???t v???i (LRT, KLIA TRANSIT, KTM)\r\nPh??ng ch??? tr??n t???ng th?????ng, h??? b??i ngo??i??tr???i, ph??ng t???p th??? d???c ngo??i??tr???i, View KLCC v????Lake Garden', 1, 3, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 2, 'approved', '2025-03-25', 0, 1, '43.871168', '-76.150861'),
(32, 'Nh?? 2 t???ng t???i Compound Pejaten Barat Kemang', '<p>Mu???n cho thu&ecirc; m???t ng&ocirc;i nh&agrave; ?????p trong khu ph???c h???p. ???????c c???i t???o, theo phong c&aacute;ch Bali, khu nh&agrave; ???m c&uacute;ng v&agrave; tho???i m&aacute;i 220/300, 3 ph&ograve;ng ng???, 2 ph&ograve;ng t???m, s&acirc;n v?????n ???????c c???i t???o: h??? b??i, khu ??&aacute;nh tenis, ???????ng ch???y b??? 24 gi??? gi&aacute; thu&ecirc; an ninh: 250.000 IDR. 000 / n??m</p>', 'Kota Administrasi Jakarta Selatan, South Jakarta City, Jakarta Raya, Indonesia', '[\"properties\\/a1-2.jpg\",\"properties\\/a2-2.jpg\",\"properties\\/a3-2.jpg\",\"properties\\/a4-2.jpg\"]', 10, 3, 2, 2, 200, '32468000.00', NULL, 1, 'renting', '2019-11-22 00:47:18', '2021-06-11 20:56:48', 'rent', 'Mu???n cho thu?? m???t ng??i nh?? ?????p trong khu ph???c h???p. ???????c c???i t???o, theo phong c??ch Bali, khu nh?? ???m c??ng v?? tho???i m??i 220/300, 3 ph??ng ng???, 2 ph??ng t???m, s??n v?????n ???????c c???i t???o: h??? b??i, khu ????nh tenis, ???????ng ch???y b??? 24 gi??? gi?? thu?? an ninh: 250.000 IDR. 000 / n??m', 2, 5, 'month', 3, 'Botble\\RealEstate\\Models\\Account', 4, 'approved', '2025-03-25', 0, 1, '42.941944', '-76.53011'),
(33, 'C??n h??? Muiderstraatweg ??? Diemen', '<p>Cho thu&ecirc; c??n h??? 3 ph&ograve;ng ng??? ?????y ????? n???i th???t ??? Diemen.<br />\r\nR???t th&iacute;ch h???p cho m???t c???p v??? ch???ng&nbsp;ho???c t???i ??a 2 ng?????i chia s??? l&agrave;m vi???c, kh&ocirc;ng b??? ki???m so&aacute;t b???i ch??? nh&agrave;</p>\r\n\r\n<p>C??n h??? hi???n ?????i ??&aacute;ng y&ecirc;u v&agrave; ???????c b???o tr&igrave; r???t t???t ??? Diemen.<br />\r\nNh&agrave; kh&aacute;ch&nbsp;n???m ??? t???ng m???t, n??i b???n s??? t&igrave;m th???y ph&ograve;ng kh&aacute;ch v&agrave; nh&agrave; b???p v???i t???t c??? c&aacute;c ti???n nghi hi???n ?????i.<br />\r\nTr&ecirc;n t???ng hai, 2 ph&ograve;ng ng??? v&agrave; m???t ph&ograve;ng t???m ?????p v???i v&ograve;i sen v&agrave; b???n t???m ri&ecirc;ng bi???t.<br />\r\nTr&ecirc;n t???ng n&agrave;y b???n c&oacute; quy???n ra v&agrave;o s&acirc;n th?????ng nh???.<br />\r\nCu???i c&ugrave;ng nh??ng kh&ocirc;ng k&eacute;m ph???n quan tr???ng l&agrave; m???t ph&ograve;ng g&aacute;c m&aacute;i r???ng r&atilde;i tr&ecirc;n t???ng ba.<br />\r\nXe ??i???n d???ng tr?????c c???a v&agrave; trong v&ograve;ng 20 ph&uacute;t, b???n s??? ??? trung t&acirc;m c???a Amsterdam.<br />\r\nTh&uacute; c??ng kh&ocirc;ng ???????c ph&eacute;p nu&ocirc;i.</p>', 'Diemen, Netherlands', '[\"properties\\/b4-1.jpg\",\"properties\\/b3.jpg\",\"properties\\/b5-1.jpg\"]', 12, 3, 1, 2, 90, '49578000.00', NULL, 1, 'renting', '2019-11-22 00:57:15', '2021-06-11 20:56:48', 'rent', 'C??n h??? hi???n ?????i ????ng y??u v?? ???????c b???o tr?? r???t t???t ??? Diemen.\r\nNh?? kh??ch??n???m ??? t???ng m???t, n??i b???n s??? t??m th???y ph??ng kh??ch v?? nh?? b???p v???i t???t c??? c??c ti???n nghi hi???n ?????i.\r\nTr??n t???ng hai, 2 ph??ng ng??? v?? m???t ph??ng t???m ?????p v???i v??i sen v?? b???n t???m ri??ng bi???t.\r\nTr??n t???ng n??y b???n c?? quy???n ra v??o s??n th?????ng nh???.', 2, 1, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 4, 'approved', '2025-03-25', 0, 1, '43.656418', '-76.743768');
INSERT INTO `re_properties` (`id`, `name`, `content`, `location`, `images`, `project_id`, `number_bedroom`, `number_bathroom`, `number_floor`, `square`, `price`, `price_unit`, `is_featured`, `status`, `created_at`, `updated_at`, `type`, `description`, `currency_id`, `city_id`, `period`, `author_id`, `author_type`, `category_id`, `moderation_status`, `expire_date`, `auto_renew`, `never_expired`, `latitude`, `longitude`) VALUES
(34, 'C??n h??? ?????p cho thu?? ??? Berlin', '<p>C??n h??? ?????y ????? n???i th???t, v???i c&aacute;c ti???n nghi hi???n ?????i s??? khi???n b???n c???m th???y nh?? ??ang ??? nh&agrave;. M???t ??i???m kh???i ?????u tuy???t v???i ????? kh&aacute;m ph&aacute; ph???n c&ograve;n l???i c???a th&agrave;nh ph??? v&agrave; nhi???u vi&ecirc;n ng???c ???n c???a n&oacute;. Khu v???c ??? trung t&acirc;m c???a ??&ocirc;ng Berlin, b???n s??? t&igrave;m th???y m???i th???, t??? nh???ng m&oacute;n ??n ???????ng ph??? ngon ?????n nh???ng khu ch??? tr???i, ?????n nh???ng nh&agrave; h&agrave;ng cao c???p.<br />\r\nTrong nh&agrave; c&oacute;&nbsp;m???t chi???c gi?????ng c??? Queen, nh&agrave; b???p ?????y ????? ti???n nghi, ph&ograve;ng t???m ri&ecirc;ng bi???t v???i v&ograve;i sen kh&ocirc;ng c???a v&agrave; khu v???c h???c t???p khi sinh vi&ecirc;n t???n t???y th???c d???y. M???t s??? ph&ograve;ng c&oacute; t???m nh&igrave;n tuy???t v???i, s??? kh&aacute;c c&oacute; ban c&ocirc;ng ?????p v&agrave; ???m c&uacute;ng.</p>', 'Berlin, Germany', '[\"properties\\/t3.jpg\",\"properties\\/t1.jpg\",\"properties\\/t2.jpg\",\"properties\\/t4.jpg\",\"properties\\/t5.jpg\"]', 8, 1, 1, 1, 33, '28970758.00', NULL, 1, 'renting', '2019-11-22 01:06:09', '2021-06-11 20:56:48', 'rent', 'C??n h??? ?????y ????? n???i th???t, v???i c??c ti???n nghi hi???n ?????i s??? khi???n b???n c???m th???y nh?? ??ang ??? nh??. M???t ??i???m kh???i ?????u tuy???t v???i ????? kh??m ph?? ph???n c??n l???i c???a th??nh ph??? v?? nhi???u vi??n ng???c ???n c???a n??. Khu v???c ??? trung t??m c???a ????ng Berlin, b???n s??? t??m th???y m???i th???, t??? nh???ng m??n ??n ???????ng ph??? ngon ?????n nh???ng khu ch??? tr???i, ?????n nh???ng nh?? h??ng cao c???p.', 2, 5, 'month', 3, 'Botble\\RealEstate\\Models\\Account', 4, 'approved', '2025-03-25', 0, 1, '42.955572', '-74.919683');

-- --------------------------------------------------------

--
-- Table structure for table `re_property_features`
--

CREATE TABLE `re_property_features` (
  `property_id` int(10) UNSIGNED NOT NULL,
  `feature_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_property_features`
--

INSERT INTO `re_property_features` (`property_id`, `feature_id`) VALUES
(4, 2),
(5, 2),
(5, 4),
(5, 5),
(5, 7),
(6, 1),
(6, 3),
(6, 5),
(6, 6),
(7, 1),
(7, 3),
(7, 5),
(7, 8),
(8, 1),
(8, 3),
(8, 5),
(8, 7),
(8, 8),
(9, 1),
(9, 4),
(9, 5),
(9, 6),
(10, 1),
(10, 3),
(10, 4),
(10, 5),
(10, 6),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(11, 7),
(12, 1),
(12, 3),
(12, 4),
(12, 5),
(12, 6),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 7),
(14, 1),
(14, 2),
(14, 3),
(14, 5),
(14, 7),
(14, 8),
(15, 1),
(15, 2),
(15, 3),
(15, 5),
(15, 6),
(16, 1),
(16, 3),
(16, 5),
(16, 7),
(16, 8),
(17, 1),
(17, 5),
(17, 7),
(1, 1),
(1, 2),
(1, 4),
(1, 5),
(1, 6),
(18, 11),
(18, 12),
(18, 13),
(18, 15),
(18, 16),
(19, 11),
(19, 12),
(19, 13),
(19, 15),
(19, 16),
(2, 1),
(2, 2),
(2, 4),
(2, 5),
(2, 6),
(3, 1),
(3, 2),
(3, 5),
(3, 6),
(20, 11),
(20, 12),
(20, 15),
(20, 16),
(4, 5),
(4, 6),
(21, 11),
(21, 12),
(21, 15),
(22, 10),
(22, 11),
(22, 13),
(22, 15),
(23, 11),
(23, 12),
(23, 14),
(23, 16),
(24, 9),
(24, 12),
(24, 14),
(24, 16),
(25, 9),
(25, 10),
(25, 11),
(25, 14),
(25, 16),
(26, 11),
(26, 12),
(26, 13),
(26, 16),
(27, 11),
(27, 12),
(27, 13),
(27, 14),
(27, 16),
(28, 10),
(28, 12),
(28, 13),
(28, 14),
(28, 15),
(28, 16),
(29, 11),
(29, 12),
(29, 13),
(29, 14),
(29, 15),
(30, 10),
(30, 12),
(30, 13),
(30, 14),
(30, 15),
(30, 16),
(31, 9),
(31, 10),
(31, 12),
(31, 14),
(31, 15),
(31, 16),
(32, 11),
(32, 12),
(32, 14),
(32, 15),
(32, 16),
(33, 9),
(33, 10),
(33, 12),
(33, 14),
(33, 16),
(34, 10),
(34, 12),
(34, 16);

-- --------------------------------------------------------

--
-- Table structure for table `re_tags`
--

CREATE TABLE `re_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_tags_items`
--

CREATE TABLE `re_tags_items` (
  `tag_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'demo', 'Demo', '{\"career.index\":true,\"career.create\":true,\"career.edit\":true,\"career.destroy\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true}', 'Test', 0, 1, 1, '2021-01-03 17:23:52', '2021-01-03 17:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2021-01-03 17:24:01', '2021-01-03 17:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(11, 'admin_email', 'admin@botble.com', NULL, NULL),
(12, 'time_zone', 'UTC', NULL, NULL),
(13, 'enable_send_error_reporting_via_email', '0', NULL, NULL),
(16, 'admin_title', 'Flex Home', NULL, NULL),
(17, 'rich_editor', 'ckeditor', NULL, NULL),
(18, 'default_admin_theme', 'default', NULL, NULL),
(19, 'enable_change_admin_theme', '1', NULL, NULL),
(20, 'enable_multi_language_in_admin', '1', NULL, NULL),
(21, 'enable_cache', '0', NULL, NULL),
(22, 'cache_time', '10', NULL, NULL),
(23, 'cache_admin_menu_enable', '0', NULL, NULL),
(24, 'optimize_page_speed_enable', '0', NULL, NULL),
(27, 'cache_time_site_map', '3600', NULL, NULL),
(28, 'show_admin_bar', '1', NULL, NULL),
(29, 'theme-flex-home-site_title', 'Flex Home', NULL, NULL),
(30, 'theme-flex-home-show_site_name', '0', NULL, NULL),
(33, 'theme-flex-home-copyright', '?? 2020 Flex Home is Proudly Powered by Botble Team', NULL, NULL),
(36, 'theme-flex-home-home_banner', 'banner/banner.jpg', NULL, NULL),
(37, 'theme-flex-home-logo', 'logo/logo.png', NULL, NULL),
(40, 'theme-flex-home-facebook', 'https://www.facebook.com', NULL, NULL),
(41, 'theme-flex-home-youtube', 'https://youtube.com', NULL, NULL),
(44, 'theme-flex-home-hotline', '18006268', NULL, NULL),
(45, 'theme-flex-home-address', 'North Link Building, 10 Admiralty Street, 757695 Singapore', NULL, NULL),
(46, 'theme-flex-home-email', 'contact@flex-home.com', NULL, NULL),
(49, 'theme-flex-home-logo_white', 'logo/logo-white.png', NULL, NULL),
(50, 'membership_authorization_at', '2020-09-23 12:52:41', NULL, NULL),
(56, 'enable_captcha', '0', NULL, NULL),
(57, 'captcha_site_key', 'no-captcha-site-key', NULL, NULL),
(58, 'captcha_secret', 'no-captcha-secret', NULL, NULL),
(65, 'store_weight_unit', 'g', NULL, NULL),
(66, 'store_width_height_unit', 'cm', NULL, NULL),
(67, 'currencies_is_default', '0', NULL, NULL),
(68, 'language_hide_default', '1', NULL, NULL),
(69, 'language_display', 'all', NULL, NULL),
(70, 'language_switcher_display', 'list', NULL, NULL),
(71, 'language_hide_languages', '[]', NULL, NULL),
(72, 'language_show_default_item_if_current_version_not_existed', '1', NULL, NULL),
(73, 'theme-flex-home-seo_title', 'Flex Home', NULL, NULL),
(85, 'theme-flex-home-vi-site_title', 'Flex Home - Trang th??ng tin mua b??n B???t ?????ng S???n', NULL, NULL),
(86, 'theme-flex-home-vi-show_site_name', '0', NULL, NULL),
(87, 'theme-flex-home-vi-seo_title', 'Flex Home - Trang th??ng tin mua b??n B???t ?????ng S???n', NULL, NULL),
(89, 'theme-flex-home-vi-home_banner', 'banner/banner.jpg', NULL, NULL),
(90, 'theme-flex-home-vi-copyright', '?? 2020 Flex Home l?? m???t s???n ph???m v??? l??nh v???c b???t ?????ng s???n c???a Botble Team', NULL, NULL),
(91, 'theme-flex-home-vi-hotline', '18006268', NULL, NULL),
(92, 'theme-flex-home-vi-address', 'T??a nh?? North Link, ???????ng 10 Admiralty, 757695 Singapore', NULL, NULL),
(93, 'theme-flex-home-vi-email', 'contact@flex-home.com', NULL, NULL),
(95, 'theme-flex-home-vi-logo', 'logo/logo.png', NULL, NULL),
(96, 'theme-flex-home-vi-logo_white', 'logo/logo-white.png', NULL, NULL),
(104, 'theme-flex-home-vi-facebook', 'https://www.facebook.com', NULL, NULL),
(105, 'theme-flex-home-vi-youtube', 'https://youtube.com', NULL, NULL),
(133, 'theme-flex-home-favicon', 'logo/favicon.png', NULL, NULL),
(143, 'theme-flex-home-vi-favicon', 'logo/favicon.png', NULL, NULL),
(148, 'theme-flex-home-seo_description', 'Find your favorite homes at Flex Home', NULL, NULL),
(149, 'theme-flex-home-about-us', 'Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\n\nSlogan \"Breaking time, through space\".', NULL, NULL),
(150, 'theme-flex-home-home_project_description', 'We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more', NULL, NULL),
(151, 'theme-flex-home-home_description_for_properties_by_locations', 'Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.', NULL, NULL),
(152, 'theme-flex-home-home_description_for_news', 'Below is the latest real estate news we get regularly updated from reliable sources.', NULL, NULL),
(153, 'theme-flex-home-vi-seo_description', 'T??m ng??i nh?? y??u th??ch t???i FlexHome', NULL, NULL),
(154, 'theme-flex-home-vi-about-us', '???????c th??nh l???p ng??y 28 - 08 -1993 (ti???n th??n l?? c??ng ty TNHH X??y D???ng Tr?????ng Th???nh Ph??t), Flex Home ho???t ?????ng trong l??nh v???c kinh doanh b???t ?????ng s???n, x??y bi???t th??? cho thu??. \nPh????ng ch??m  ???????nh b???t th???i gian, xuy??n qua kh??ng gian\"', NULL, NULL),
(155, 'theme-flex-home-vi-home_project_description', 'Ch??ng t??i ????a ra nh???ng l???a ch???n t???t nh???t v???i nh???ng d??? ??n hot v?? uy t??n b???c nh???t hi???n nay, h??y truy c???p v??o th??ng tin chi ti???t b??n d?????i ????? t??m hi???u th??m nh??.', NULL, NULL),
(156, 'theme-flex-home-vi-home_description_for_properties_by_locations', 'M???i c??n h??? l?? m???t l???a ch???n t???t, n?? s??? gi??p b???n ????a ra quy???t ?????nh ????ng ?????n, ?????ng b??? l??? c?? h???i kh??m ph?? nh???ng c??n h??? tuy???t v???i c???a ch??ng t??i.', NULL, NULL),
(157, 'theme-flex-home-vi-home_description_for_news', 'B??n d?????i ????y l?? nh???ng tin t???c m???i nh???t v??? l??nh v???c b???t ?????ng s???n ???????c ch??ng t??i c???p nh???t th?????ng xuy??n t??? nh???ng ngu???n tin ????ng tin c???y.', NULL, NULL),
(167, 'theme-flex-home-primary_font', 'Nunito Sans', NULL, NULL),
(168, 'theme-flex-home-twitter', '', NULL, NULL),
(169, 'theme-flex-home-number_of_featured_projects', '4', NULL, NULL),
(170, 'theme-flex-home-number_of_featured_cities', '10', NULL, NULL),
(171, 'theme-flex-home-number_of_properties_for_sell', '8', NULL, NULL),
(172, 'theme-flex-home-number_of_properties_for_rent', '8', NULL, NULL),
(173, 'theme-flex-home-number_of_projects_per_page', '12', NULL, NULL),
(174, 'theme-flex-home-number_of_properties_per_page', '12', NULL, NULL),
(175, 'theme-flex-home-number_of_related_projects', '8', NULL, NULL),
(176, 'theme-flex-home-number_of_related_properties', '8', NULL, NULL),
(177, 'theme-flex-home-properties_description', 'Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.', NULL, NULL),
(178, 'theme-flex-home-home_description_for_properties_for_sale', 'Below is a list of properties that are currently up for sale', NULL, NULL),
(179, 'theme-flex-home-home_description_for_properties_for_rent', 'Below is a detailed price list of each property for rent', NULL, NULL),
(196, 'theme-flex-home-number_of_properties_for_sale', '8', NULL, NULL),
(197, 'theme-flex-home-home_banner_description', 'Find your favorite homes at Flex Home', NULL, NULL),
(198, 'theme-flex-home-home_description_for_projects_by_locations', '', NULL, NULL),
(199, 'theme-flex-home-vi-primary_font', 'Nunito Sans', NULL, NULL),
(200, 'theme-flex-home-vi-twitter', '', NULL, NULL),
(201, 'theme-flex-home-vi-number_of_featured_projects', '4', NULL, NULL),
(202, 'theme-flex-home-vi-number_of_featured_cities', '10', NULL, NULL),
(203, 'theme-flex-home-vi-number_of_properties_for_sale', '8', NULL, NULL),
(204, 'theme-flex-home-vi-number_of_properties_for_rent', '8', NULL, NULL),
(205, 'theme-flex-home-vi-number_of_projects_per_page', '12', NULL, NULL),
(206, 'theme-flex-home-vi-number_of_properties_per_page', '12', NULL, NULL),
(207, 'theme-flex-home-vi-number_of_related_projects', '8', NULL, NULL),
(208, 'theme-flex-home-vi-number_of_related_properties', '8', NULL, NULL),
(209, 'theme-flex-home-vi-home_banner_description', 'T??m ng??i nh?? y??u th??ch t???i FlexHome', NULL, NULL),
(210, 'theme-flex-home-vi-properties_description', '', NULL, NULL),
(211, 'theme-flex-home-vi-home_description_for_projects_by_locations', '', NULL, NULL),
(212, 'theme-flex-home-vi-home_description_for_properties_for_sale', '', NULL, NULL),
(213, 'theme-flex-home-vi-home_description_for_properties_for_rent', '', NULL, NULL),
(214, 'payment_cod_name', 'Cash on delivery (COD)', NULL, NULL),
(216, 'payment_cod_status', '1', NULL, NULL),
(217, 'payment_bank_transfer_name', 'Bank transfer', NULL, NULL),
(219, 'payment_bank_transfer_status', '1', NULL, NULL),
(220, 'theme-flex-home-vi-seo_og_image', '', NULL, NULL),
(221, 'theme-flex-home-vi-primary_color', '#1D5F6F', NULL, NULL),
(222, 'theme-flex-home-vi-primary_color_hover', '#063A5D', NULL, NULL),
(224, 'theme-flex-home-vi-number_of_posts_in_a_category', '12', NULL, NULL),
(225, 'theme-flex-home-vi-number_of_posts_in_a_tag', '12', NULL, NULL),
(227, 'theme-flex-home-vi-cookie_consent_enable', 'yes', NULL, NULL),
(229, 'theme-flex-home-vi-cookie_consent_button_text', 'Allow cookies', NULL, NULL),
(230, 'theme-flex-home-seo_og_image', '', NULL, NULL),
(231, 'theme-flex-home-primary_color', '#1D5F6F', NULL, NULL),
(232, 'theme-flex-home-primary_color_hover', '#063A5D', NULL, NULL),
(234, 'theme-flex-home-number_of_posts_in_a_category', '12', NULL, NULL),
(235, 'theme-flex-home-number_of_posts_in_a_tag', '12', NULL, NULL),
(237, 'theme-flex-home-cookie_consent_enable', 'yes', NULL, NULL),
(239, 'theme-flex-home-cookie_consent_button_text', 'Allow cookies', NULL, NULL),
(270, 'activated_plugins', '[\"language\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"career\",\"contact\",\"cookie-consent\",\"location\",\"payment\",\"paystack\",\"razorpay\",\"real-estate\",\"rss-feed\",\"social-login\",\"sslcommerz\",\"translation\",\"analytics\"]', NULL, NULL),
(283, 'permalink-botble-blog-models-post', 'news', NULL, NULL),
(284, 'permalink-botble-blog-models-category', 'news', NULL, NULL),
(285, 'theme', 'flex-home', NULL, NULL),
(286, 'admin_logo', 'logo/logo-white.png', NULL, NULL),
(287, 'admin_favicon', 'logo/favicon.png', NULL, NULL),
(288, 'theme-flex-home-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, NULL),
(289, 'theme-flex-home-cookie_consent_learn_more_url', 'http://flex-home.local/cookie-policy', NULL, NULL),
(290, 'theme-flex-home-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(291, 'theme-flex-home-homepage_id', '1', NULL, NULL),
(292, 'theme-flex-home-blog_page_id', '2', NULL, NULL),
(293, 'theme-flex-home-vi-cookie_consent_message', 'Tr???i nghi???m c???a b???n tr??n trang web n??y s??? ???????c c???i thi???n b???ng c??ch cho ph??p cookie ', NULL, NULL),
(294, 'theme-flex-home-vi-cookie_consent_learn_more_url', 'http://flex-home.local/cookie-policy', NULL, NULL),
(295, 'theme-flex-home-vi-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(296, 'theme-flex-home-vi-homepage_id', '7', NULL, NULL),
(297, 'theme-flex-home-vi-blog_page_id', '8', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, '3-beds-villa-calpe-alicante', 1, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-17 20:34:59', '2019-11-17 20:34:59'),
(2, 'property-for-sale-johannesburg-south-africa', 2, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-17 20:53:34', '2019-11-17 20:53:34'),
(3, 'stunning-french-inspired-manor', 3, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-17 21:09:55', '2019-11-17 21:09:55'),
(4, '42460-buccaneer-court', 4, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-17 21:18:11', '2019-11-17 21:18:11'),
(5, 'wifi', 1, 'Botble\\RealEstate\\Models\\PropertyFeature', '', '2019-11-17 21:40:58', '2019-11-17 21:40:58'),
(6, 'swimming-pool', 2, 'Botble\\RealEstate\\Models\\PropertyFeature', '', '2019-11-17 21:41:43', '2019-11-17 21:41:43'),
(7, 'walnut-park-apartment', 1, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-18 00:34:49', '2019-11-18 00:34:49'),
(8, 'walnut-park-apartment', 5, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 00:47:52', '2019-11-18 00:47:52'),
(9, 'el-camino-del-mar', 6, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 01:05:58', '2019-11-18 01:05:58'),
(10, 'family-victorian-view-home', 7, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 01:12:07', '2019-11-18 01:12:07'),
(11, 'osaka-heights', 2, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-18 01:28:45', '2019-11-18 01:28:45'),
(12, 'osaka-heights-apartment', 8, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 01:49:36', '2019-11-18 01:49:36'),
(13, 'private-estate-magnificent-views', 9, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 02:02:19', '2019-11-18 02:02:19'),
(14, 'harry-baskervilles-hay-loft', 10, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 02:16:53', '2019-11-18 02:16:53'),
(15, 'break-lease-available', 11, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 02:22:48', '2019-11-18 02:22:48'),
(16, 'category-news', 1, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-18 02:33:35', '2021-06-11 20:56:49'),
(17, 'elegant-family-home-presents-premium-modern-living', 12, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 02:47:05', '2019-11-18 02:47:05'),
(18, 'bcg-sets-great-store-by-real-estate-negotiations', 1, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-18 02:51:35', '2021-06-11 20:56:49'),
(19, 'bcg-sets-great-store', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(20, 'private-home-sales-drop-27-in-october', 2, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-18 02:55:53', '2021-06-11 20:56:49'),
(21, 'private-home-sales', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(22, 'singapore-overtakes-hong-kong-in-terms-of-property-investment-prospects', 3, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-18 02:59:01', '2021-06-11 20:56:49'),
(23, 's-koreas-big-investors-flocking-to-overseas-real-estate', 4, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-18 03:07:27', '2021-06-11 20:56:49'),
(24, 'south-korean-investors', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2019-11-18 03:07:27', '2019-11-18 03:07:27'),
(25, 'mimaroba-paradise', 3, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-18 03:30:34', '2019-11-18 03:30:34'),
(26, 'aegean-villas', 4, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-18 03:38:13', '2019-11-18 03:38:13'),
(27, 'aydos-forest-apartment', 5, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-18 03:45:06', '2019-11-18 03:45:06'),
(28, 'park', 6, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-18 03:53:20', '2019-11-18 03:53:20'),
(29, 'the-avila-apartment', 13, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 07:23:02', '2019-11-18 07:23:02'),
(30, 'villa-for-sale-in-lavanya-residences', 14, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 07:36:29', '2019-11-18 07:36:29'),
(31, 'want-to-lease-a-house-in-compound-pejaten-barat-kemang', 15, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 07:44:44', '2019-11-18 07:44:44'),
(32, 'apartment-muiderstraatweg-in-diemen', 16, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 07:59:14', '2019-11-18 07:59:14'),
(33, 'nice-apartment-for-rent-in-berlin', 17, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 08:13:07', '2019-11-18 08:13:07'),
(34, 'can-ho-walnut-park', 7, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 01:54:36', '2019-11-21 01:54:36'),
(35, '1574328489', 8, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 02:28:09', '2019-11-21 02:28:09'),
(36, 'thien-duong-mimaroba', 9, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 02:40:25', '2019-11-21 02:40:25'),
(37, 'khu-biet-thu-aegean', 10, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 02:58:55', '2019-11-21 02:58:55'),
(38, 'chung-cu-rung-aydos', 11, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 03:16:25', '2019-11-21 03:16:25'),
(39, 'khu-chung-cu-the-avila', 12, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 03:25:22', '2019-11-21 03:25:22'),
(40, 'ban-biet-thu-3-phong-ngu-calpe-alicante', 18, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 05:51:54', '2019-11-21 05:51:54'),
(41, 'ban-nha-tai-johannesburg-south-africa', 19, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:03:12', '2019-11-21 06:03:12'),
(42, 'nha-phong-cach-phap', 20, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:12:15', '2019-11-21 06:12:15'),
(43, 'nha-ban-tai', 21, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:26:59', '2019-11-21 06:26:59'),
(44, 'can-ho-walnut-park', 22, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:56:50', '2019-11-21 06:56:50'),
(45, 'cho-thue-nha-cao-cap-5-phong-ngu', 23, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:18:36', '2019-11-21 07:18:36'),
(46, 'cho-thue-nha-view-dep', 24, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:26:48', '2019-11-21 07:26:48'),
(47, 'ban-can-ho-osaka-heights', 25, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:34:38', '2019-11-21 07:34:38'),
(48, 'nha-chinh-chu', 26, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:40:46', '2019-11-21 07:40:46'),
(49, 'cho-thue-nha-tren-duong-thompsons', 27, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:45:34', '2019-11-21 07:45:34'),
(52, 'house-architecture', 2, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:49:25', '2021-06-11 20:56:49'),
(53, 'kien-truc-nha', 3, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:49:35', '2021-06-11 20:56:49'),
(54, 'house-design', 4, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:50:02', '2021-06-11 20:56:49'),
(55, 'thiet-ke-nha', 5, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:50:17', '2021-06-11 20:56:49'),
(56, 'building-materials', 6, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:50:36', '2021-06-11 20:56:49'),
(57, 'vat-lieu-xay-dung', 7, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:50:58', '2021-06-11 20:56:49'),
(58, 'can-ho-1-phong-ngu-hoan-toan-moi-o-vi-tri-hang-nhat', 28, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 19:53:17', '2019-11-21 19:53:17'),
(59, 'nha-cao-cap-thanh-lich', 29, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 19:59:16', '2019-11-21 19:59:16'),
(60, 'can-ban-can-ho-cao-cap-tai-singapore', 30, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:29:01', '2019-11-22 00:29:01'),
(61, 'can-ho-cao-cap-5-phong-can-ban-tai-kuala-lumpur', 31, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:42:28', '2019-11-22 00:42:28'),
(62, 'nha-ompound-pejaten-barat-kemang', 32, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:47:18', '2019-11-22 00:47:18'),
(63, 'can-ho-muiderstraatweg-o-diemen', 33, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:57:15', '2019-11-22 00:57:15'),
(64, 'can-ho-dep-cho-thue-o-berlin', 34, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 01:06:09', '2019-11-22 01:06:09'),
(65, 'tin-tuc-1', 8, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-22 01:26:08', '2021-06-11 20:56:49'),
(66, 'bcg-thiet-lap-cua-hang-tuyet-voi-bang-cac-cuoc-dam-phan-bat-dong-san', 5, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-22 01:26:31', '2021-06-11 20:56:49'),
(67, 'doanh-so-ban-nha-rieng-giam-27-trong-thang-10', 6, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-22 01:29:45', '2021-06-11 20:56:49'),
(68, 'singapore-vuot-qua-hong-kong-ve-trien-vong-dau-tu-bat-dong-san', 7, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-22 01:33:23', '2021-06-11 20:56:49'),
(69, 'cac-nha-dau-tu-lon-han-quoc-do-xo-vao-bat-dong-san-o-nuoc-ngoai', 8, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-22 01:39:38', '2021-06-11 20:56:49'),
(74, 'sales-manager-real-estate', 1, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:43:10', '2019-11-30 19:43:10'),
(75, 'truong-phong-kinh-doanh-luong-len-toi', 2, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:49:07', '2019-11-30 19:49:07'),
(76, 'senior-real-estate-consultant', 3, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:52:42', '2019-11-30 19:52:42'),
(77, 'chuyen-vien-tu-van-bat-dong-san-cao-cap', 4, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:56:50', '2019-11-30 19:56:50'),
(113, 'ads', 5, 'Botble\\Career\\Models\\Career', 'careers', '2021-01-03 17:26:32', '2021-01-03 17:26:32'),
(180, 'apartment', 1, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(181, 'villa', 2, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(182, 'condo', 3, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(183, 'house', 4, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(184, 'land', 5, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(185, 'commercial-property', 6, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(186, 'home', 1, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(187, 'news', 2, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(188, 'about-us', 3, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(189, 'contact', 4, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(190, 'terms-conditions', 5, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(191, 'cookie-policy', 6, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(192, 'trang-chu', 7, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(193, 'tin-tuc', 8, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(194, 've-chung-toi', 9, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(195, 'lien-he', 10, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(196, 'dieu-khoan-va-quy-dinh', 11, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(197, 'cookie-policy', 12, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(198, 'the-top-2020-handbag-trends-to-know', 9, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(199, 'top-search-engine-optimization-strategies', 10, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(200, 'which-company-would-you-choose', 11, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(201, 'used-car-dealer-sales-tricks-exposed', 12, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(202, '20-ways-to-sell-your-product-faster', 13, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(203, 'the-secrets-of-rich-and-famous-writers', 14, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(204, 'imagine-losing-20-pounds-in-14-days', 15, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(205, 'are-you-still-using-that-slow-old-typewriter', 16, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(206, 'a-skin-cream-thats-proven-to-work', 17, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(207, '10-reasons-to-start-your-own-profitable-website', 18, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(208, 'simple-ways-to-reduce-your-unwanted-wrinkles', 19, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(209, 'apple-imac-with-retina-5k-display-review', 20, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(210, '10000-web-site-visitors-in-one-monthguaranteed', 21, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(211, 'unlock-the-secrets-of-selling-high-ticket-items', 22, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(212, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 23, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(213, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 24, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(214, 'xu-huong-tui-xach-hang-dau-nam-2020-can-biet', 25, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(215, 'cac-chien-luoc-toi-uu-hoa-cong-cu-tim-kiem-hang-dau', 26, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(216, 'ban-se-chon-cong-ty-nao', 27, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(217, 'lo-ra-cac-thu-doan-ban-hang-cua-dai-ly-o-to-da-qua-su-dung', 28, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(218, '20-cach-ban-san-pham-nhanh-hon', 29, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(219, 'bi-mat-cua-nhung-nha-van-giau-co-va-noi-tieng', 30, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(220, 'hay-tuong-tuong-ban-giam-20-bang-anh-trong-14-ngay', 31, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(221, 'ban-van-dang-su-dung-may-danh-chu-cu-cham-do', 32, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(222, 'mot-loai-kem-duong-da-da-duoc-chung-minh-hieu-qua', 33, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(223, '10-ly-do-de-bat-dau-trang-web-co-loi-nhuan-cua-rieng-ban', 34, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(224, 'nhung-cach-don-gian-de-giam-nep-nhan-khong-mong-muon-cua-ban', 35, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(225, 'danh-gia-apple-imac-voi-man-hinh-retina-5k', 36, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(226, '10000-khach-truy-cap-trang-web-trong-mot-thang-duoc-dam-bao', 37, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(227, 'mo-khoa-bi-mat-ban-duoc-ve-cao', 38, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(228, '4-loi-khuyen-cua-chuyen-gia-ve-cach-chon-vi-nam-phu-hop', 39, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(229, 'sexy-clutches-cach-mua-deo-tui-clutch-thiet-ke', 40, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `abbreviation`) VALUES
(1, 'California', 1, 0, 0, 'published', '2019-11-18 08:17:57', '2019-11-18 08:17:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BCG sets great store', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(2, 'Private Home Sales', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(3, 'South Korean investors', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2019-11-18 03:07:27', '2019-11-18 03:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `credits` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add',
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(2, 1, 'en', 'auth', 'password', 'The provided password is incorrect.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(3, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(4, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(5, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(6, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(7, 1, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(8, 1, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(9, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(10, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(11, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(12, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(13, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(14, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(15, 1, 'en', 'validation', 'alpha', 'The :attribute must only contain letters.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(16, 1, 'en', 'validation', 'alpha_dash', 'The :attribute must only contain letters, numbers, dashes and underscores.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(17, 1, 'en', 'validation', 'alpha_num', 'The :attribute must only contain letters and numbers.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(18, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(19, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(20, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(21, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(22, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(23, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(24, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(25, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(26, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(27, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(28, 1, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(29, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(30, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(31, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(32, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(33, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(34, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(35, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(36, 1, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(37, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(38, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(39, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(40, 1, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(41, 1, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(42, 1, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(43, 1, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(44, 1, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(45, 1, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(46, 1, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(47, 1, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(48, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(49, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(50, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(51, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(52, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(53, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(54, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(55, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(56, 1, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(57, 1, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(58, 1, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(59, 1, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(60, 1, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(61, 1, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(62, 1, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(63, 1, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(64, 1, 'en', 'validation', 'max.numeric', 'The :attribute must not be greater than :max.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(65, 1, 'en', 'validation', 'max.file', 'The :attribute must not be greater than :max kilobytes.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(66, 1, 'en', 'validation', 'max.string', 'The :attribute must not be greater than :max characters.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(67, 1, 'en', 'validation', 'max.array', 'The :attribute must not have more than :max items.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(68, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(69, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(70, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(71, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(72, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(73, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(74, 1, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(75, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(76, 1, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(77, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(78, 1, 'en', 'validation', 'password', 'The password is incorrect.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(79, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(80, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(81, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(82, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(83, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(84, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(85, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(86, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(87, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(88, 1, 'en', 'validation', 'prohibited', 'The :attribute field is prohibited.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(89, 1, 'en', 'validation', 'prohibited_if', 'The :attribute field is prohibited when :other is :value.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(90, 1, 'en', 'validation', 'prohibited_unless', 'The :attribute field is prohibited unless :other is in :values.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(91, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(92, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(93, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(94, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(95, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(96, 1, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(97, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(98, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(99, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(100, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(101, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(102, 1, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(103, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(104, 1, 'en', 'core/acl/api', 'api_clients', 'API Clients', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(105, 1, 'en', 'core/acl/api', 'create_new_client', 'Create new client', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(106, 1, 'en', 'core/acl/api', 'create_new_client_success', 'Create new client successfully!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(107, 1, 'en', 'core/acl/api', 'edit_client', 'Edit client \":name\"', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(108, 1, 'en', 'core/acl/api', 'edit_client_success', 'Updated client successfully!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(109, 1, 'en', 'core/acl/api', 'delete_success', 'Deleted client successfully!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(110, 1, 'en', 'core/acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(111, 1, 'en', 'core/acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(112, 1, 'en', 'core/acl/api', 'cancel_delete', 'No', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(113, 1, 'en', 'core/acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(114, 1, 'en', 'core/acl/api', 'name', 'Name', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(115, 1, 'en', 'core/acl/api', 'cancel', 'Cancel', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(116, 1, 'en', 'core/acl/api', 'save', 'Save', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(117, 1, 'en', 'core/acl/api', 'edit', 'Edit', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(118, 1, 'en', 'core/acl/api', 'delete', 'Delete', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(119, 1, 'en', 'core/acl/api', 'client_id', 'Client ID', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(120, 1, 'en', 'core/acl/api', 'secret', 'Secret', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(121, 1, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(122, 1, 'en', 'core/acl/auth', 'login.email', 'Email', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(123, 1, 'en', 'core/acl/auth', 'login.password', 'Password', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(124, 1, 'en', 'core/acl/auth', 'login.title', 'User Login', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(125, 1, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(126, 1, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(127, 1, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(128, 1, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(129, 1, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(130, 1, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(131, 1, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(132, 1, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(133, 1, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(134, 1, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(135, 1, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(136, 1, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(137, 1, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(138, 1, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(139, 1, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(140, 1, 'en', 'core/acl/auth', 'reset.email', 'Email', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(141, 1, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(142, 1, 'en', 'core/acl/auth', 'reset.update', 'Update', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(143, 1, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(144, 1, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(145, 1, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(146, 1, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(147, 1, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(148, 1, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(149, 1, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(150, 1, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(151, 1, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(152, 1, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(153, 1, 'en', 'core/acl/auth', 'failed', 'Failed', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(154, 1, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(155, 1, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(156, 1, 'en', 'core/acl/auth', 'register_now', 'Register now', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(157, 1, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(158, 1, 'en', 'core/acl/auth', 'login_title', 'Admin', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(159, 1, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(160, 1, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(161, 1, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(162, 1, 'en', 'core/acl/auth', 'languages', 'Languages', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(163, 1, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(164, 1, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(165, 1, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(166, 1, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(167, 1, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(168, 1, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(169, 1, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(170, 1, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(171, 1, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(172, 1, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(173, 1, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(174, 1, 'en', 'core/acl/permissions', 'name', 'Name', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(175, 1, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(176, 1, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(177, 1, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(178, 1, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(179, 1, 'en', 'core/acl/permissions', 'role_name', 'Name', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(180, 1, 'en', 'core/acl/permissions', 'role_description', 'Description', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(181, 1, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(182, 1, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(183, 1, 'en', 'core/acl/permissions', 'reset', 'Reset', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(184, 1, 'en', 'core/acl/permissions', 'save', 'Save', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(185, 1, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(186, 1, 'en', 'core/acl/permissions', 'details', 'Details', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(187, 1, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(188, 1, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(189, 1, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(190, 1, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(191, 1, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(192, 1, 'en', 'core/acl/permissions', 'actions', 'Actions', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(193, 1, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(194, 1, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(195, 1, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(196, 1, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(197, 1, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(198, 1, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(199, 1, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(200, 1, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(201, 1, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(202, 1, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(203, 1, 'en', 'core/acl/permissions', 'options', 'Options', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(204, 1, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(205, 1, 'en', 'core/acl/permissions', 'roles', 'Roles', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(206, 1, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(207, 1, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(208, 1, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(209, 1, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(210, 1, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(211, 1, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(212, 1, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(213, 1, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(214, 1, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(215, 1, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(216, 1, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(217, 1, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(218, 1, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(219, 1, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(220, 1, 'en', 'core/acl/users', 'not_found', 'User not found', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(221, 1, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(222, 1, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(223, 1, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(224, 1, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(225, 1, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(226, 1, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(227, 1, 'en', 'core/acl/users', 'email', 'Email', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(228, 1, 'en', 'core/acl/users', 'role', 'Role', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(229, 1, 'en', 'core/acl/users', 'username', 'Username', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(230, 1, 'en', 'core/acl/users', 'last_name', 'Last Name', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(231, 1, 'en', 'core/acl/users', 'first_name', 'First Name', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(232, 1, 'en', 'core/acl/users', 'message', 'Message', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(233, 1, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(234, 1, 'en', 'core/acl/users', 'change_password', 'Change password', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(235, 1, 'en', 'core/acl/users', 'current_password', 'Current password', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(236, 1, 'en', 'core/acl/users', 'new_password', 'New Password', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(237, 1, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(238, 1, 'en', 'core/acl/users', 'password', 'Password', '2021-06-11 08:03:20', '2021-06-11 08:03:20'),
(239, 1, 'en', 'core/acl/users', 'save', 'Save', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(240, 1, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(241, 1, 'en', 'core/acl/users', 'deleted', 'User deleted', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(242, 1, 'en', 'core/acl/users', 'last_login', 'Last Login', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(243, 1, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(244, 1, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(245, 1, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(246, 1, 'en', 'core/acl/users', 'new_image', 'New Image', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(247, 1, 'en', 'core/acl/users', 'loading', 'Loading', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(248, 1, 'en', 'core/acl/users', 'close', 'Close', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(249, 1, 'en', 'core/acl/users', 'update', 'Update', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(250, 1, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(251, 1, 'en', 'core/acl/users', 'users', 'Users', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(252, 1, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(253, 1, 'en', 'core/acl/users', 'info.title', 'User profile', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(254, 1, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(255, 1, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(256, 1, 'en', 'core/acl/users', 'info.email', 'Email', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(257, 1, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(258, 1, 'en', 'core/acl/users', 'info.address', 'Address', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(259, 1, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(260, 1, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(261, 1, 'en', 'core/acl/users', 'info.job', 'Job Position', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(262, 1, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(263, 1, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(264, 1, 'en', 'core/acl/users', 'info.interes', 'Interests', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(265, 1, 'en', 'core/acl/users', 'info.about', 'About', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(266, 1, 'en', 'core/acl/users', 'gender.title', 'Gender', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(267, 1, 'en', 'core/acl/users', 'gender.male', 'Male', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(268, 1, 'en', 'core/acl/users', 'gender.female', 'Female', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(269, 1, 'en', 'core/acl/users', 'total_users', 'Total users', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(270, 1, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(271, 1, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(272, 1, 'en', 'core/acl/users', 'make_super', 'Make super', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(273, 1, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(274, 1, 'en', 'core/acl/users', 'is_super', 'Is super?', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(275, 1, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(276, 1, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(277, 1, 'en', 'core/acl/users', 'select_role', 'Select role', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(278, 1, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(279, 1, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(280, 1, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(281, 1, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(282, 1, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(283, 1, 'vi', 'core/acl/auth', 'login.username', 'Email/T??n truy c????p', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(284, 1, 'vi', 'core/acl/auth', 'login.password', 'M????t kh????u', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(285, 1, 'vi', 'core/acl/auth', 'login.title', '????ng nh???p v??o qu???n tr???', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(286, 1, 'vi', 'core/acl/auth', 'login.remember', 'Nh???? m????t kh????u?', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(287, 1, 'vi', 'core/acl/auth', 'login.login', '????ng nh????p', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(288, 1, 'vi', 'core/acl/auth', 'login.placeholder.username', 'Vui lo??ng nh????p t??n truy c????p', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(289, 1, 'vi', 'core/acl/auth', 'login.placeholder.email', 'Vui l??ng nh???p email', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(290, 1, 'vi', 'core/acl/auth', 'login.success', '????ng nh????p tha??nh c??ng!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(291, 1, 'vi', 'core/acl/auth', 'login.fail', 'Sai t??n truy c????p ho????c m????t kh????u.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(292, 1, 'vi', 'core/acl/auth', 'login.not_active', 'Ta??i khoa??n cu??a ba??n ch??a ????????c ki??ch hoa??t!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(293, 1, 'vi', 'core/acl/auth', 'login.banned', 'Ta??i khoa??n na??y ??a?? bi?? kho??a.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(294, 1, 'vi', 'core/acl/auth', 'login.logout_success', '????ng xu????t tha??nh c??ng!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(295, 1, 'vi', 'core/acl/auth', 'login.dont_have_account', 'B???n kh??ng c?? t??i kho???n trong h??? th???ng, vui l??ng li??n h??? qu???n tr??? vi??n!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(296, 1, 'vi', 'core/acl/auth', 'login.email', 'Email', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(297, 1, 'vi', 'core/acl/auth', 'forgot_password.title', 'Qu??n m????t kh????u', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(298, 1, 'vi', 'core/acl/auth', 'forgot_password.message', '<p>Qu??n m????t kh????u?</p><p>Vui l??ng nh???p email ????ng nh???p t??i kho???n c???a b???n ????? h??? th???ng g???i li??n k???t kh??i ph???c m???t kh???u.</p>', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(299, 1, 'vi', 'core/acl/auth', 'forgot_password.submit', 'Hoa??n t????t', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(300, 1, 'vi', 'core/acl/auth', 'reset.new_password', 'M????t kh????u m????i', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(301, 1, 'vi', 'core/acl/auth', 'reset.repassword', 'Xa??c nh????n m????t kh????u m????i', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(302, 1, 'vi', 'core/acl/auth', 'reset.title', 'Kh??i phu??c m????t kh????u', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(303, 1, 'vi', 'core/acl/auth', 'reset.update', 'C????p nh????t', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(304, 1, 'vi', 'core/acl/auth', 'reset.wrong_token', 'Li??n k????t na??y kh??ng chi??nh xa??c ho????c ??a?? h????t hi????u l????c, vui lo??ng y??u c????u kh??i phu??c m????t kh????u la??i!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(305, 1, 'vi', 'core/acl/auth', 'reset.user_not_found', 'T??n ????ng nh????p kh??ng t????n ta??i.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(306, 1, 'vi', 'core/acl/auth', 'reset.success', 'Kh??i phu??c m????t kh????u tha??nh c??ng!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(307, 1, 'vi', 'core/acl/auth', 'reset.fail', 'Token kh??ng h????p l???? ho????c li??n k????t kh??i phu??c m????t kh????u ??a?? h????t th????i gian hi????u l????c!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(308, 1, 'vi', 'core/acl/auth', 'reset.reset.title', 'Email kh??i phu??c m????t kh????u', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(309, 1, 'vi', 'core/acl/auth', 'reset.send.success', 'M????t email kh??i phu??c m????t kh????u ??a?? ????????c g????i t????i email cu??a ba??n, vui lo??ng ki????m tra va?? hoa??n t????t y??u c????u.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(310, 1, 'vi', 'core/acl/auth', 'reset.send.fail', 'Kh??ng th???? g????i email trong lu??c na??y. Vui lo??ng th????c hi????n la??i sau.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(311, 1, 'vi', 'core/acl/auth', 'reset.new-password', 'M????t kh????u m????i', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(312, 1, 'vi', 'core/acl/auth', 'reset.email', 'Email', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(313, 1, 'vi', 'core/acl/auth', 'email.reminder.title', 'Email kh??i phu??c m????t kh????u', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(314, 1, 'vi', 'core/acl/auth', 'failed', 'Kh??ng tha??nh c??ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(315, 1, 'vi', 'core/acl/auth', 'repassword', 'Xa??c nh????n m????t kh????u', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(316, 1, 'vi', 'core/acl/auth', 'throttle', 'Throttle', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(317, 1, 'vi', 'core/acl/auth', 'back_to_login', 'Quay l???i trang ????ng nh???p', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(318, 1, 'vi', 'core/acl/auth', 'login_title', '????ng nh???p v??o qu???n tr???', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(319, 1, 'vi', 'core/acl/auth', 'login_via_social', '????ng nh???p th??ng qua m???ng x?? h???i', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(320, 1, 'vi', 'core/acl/auth', 'lost_your_password', 'Qu??n m???t kh???u?', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(321, 1, 'vi', 'core/acl/auth', 'not_member', 'Ch??a l?? th??nh vi??n?', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(322, 1, 'vi', 'core/acl/auth', 'register_now', '????ng k?? ngay', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(323, 1, 'vi', 'core/acl/permissions', 'notices.role_in_use', 'Kh??ng th???? xo??a quy????n ng??????i du??ng na??y vi?? no?? ??ang ????????c s???? du??ng!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(324, 1, 'vi', 'core/acl/permissions', 'notices.role_delete_belong_user', 'Kh??ng th???? xo??a quy????n ha??n na??y vi?? no?? thu????c v???? ng??????i kha??c!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(325, 1, 'vi', 'core/acl/permissions', 'notices.role_edit_belong_user', 'Ba??n kh??ng ????????c phe??p s????a quy????n na??y vi?? no?? thu????c v???? ng??????i kha??c', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(326, 1, 'vi', 'core/acl/permissions', 'notices.delete_global_role', 'Ba??n kh??ng th???? xo??a quy????n ng??????i du??ng h???? th????ng!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(327, 1, 'vi', 'core/acl/permissions', 'notices.delete_success', 'Quy????n ng??????i du??ng ??a?? ????????c xo??a!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(328, 1, 'vi', 'core/acl/permissions', 'notices.modified_success', 'Quy????n ng??????i du??ng ??a?? ????????c c????p nh????t tha??nh c??ng!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(329, 1, 'vi', 'core/acl/permissions', 'notices.create_success', 'Quy????n ng??????i du??ng m????i ??a?? ????????c ta??o tha??nh c??ng!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(330, 1, 'vi', 'core/acl/permissions', 'notices.duplicated_success', 'Quy????n ng??????i du??ng ??a?? ????????c sao che??p tha??nh c??ng!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(331, 1, 'vi', 'core/acl/permissions', 'notices.no_select', 'Ha??y cho??n i??t nh????t m????t quy????n ng??????i du??ng ?????? th????c hi????n ha??nh ??????ng na??y!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(332, 1, 'vi', 'core/acl/permissions', 'notices.not_found', 'Kh??ng ti??m th????y quy????n ng??????i du??ng na??y', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(333, 1, 'vi', 'core/acl/permissions', 'list', 'Danh sa??ch ph??n quy????n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(334, 1, 'vi', 'core/acl/permissions', 'name', 'T??n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(335, 1, 'vi', 'core/acl/permissions', 'current_role', 'Quy????n hi????n ta??i', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(336, 1, 'vi', 'core/acl/permissions', 'no_role_assigned', 'Kh??ng co?? quy????n ha??n na??o', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(337, 1, 'vi', 'core/acl/permissions', 'role_assigned', 'Quy????n ??a?? ????????c ga??n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(338, 1, 'vi', 'core/acl/permissions', 'create_role', 'Ta??o quy????n m????i', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(339, 1, 'vi', 'core/acl/permissions', 'role_name', 'T??n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(340, 1, 'vi', 'core/acl/permissions', 'role_description', 'M?? ta??', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(341, 1, 'vi', 'core/acl/permissions', 'permission_flags', 'C???? ??a??nh d????u quy????n ha??n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(342, 1, 'vi', 'core/acl/permissions', 'cancel', 'Hu??y bo??', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(343, 1, 'vi', 'core/acl/permissions', 'reset', 'La??m la??i', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(344, 1, 'vi', 'core/acl/permissions', 'save', 'L??u', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(345, 1, 'vi', 'core/acl/permissions', 'global_role_msg', '????y la?? m????t ph??n quy????n toa??n cu??c va?? kh??ng th???? thay ??????i.  Ba??n co?? th???? s???? du??ng nu??t \"Nh??n ba??n\" ?????? ta??o m????t ba??n sao che??p cho ph??n quy????n na??y va?? chi??nh s????a.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(346, 1, 'vi', 'core/acl/permissions', 'details', 'Chi ti????t', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(347, 1, 'vi', 'core/acl/permissions', 'duplicate', 'Nh??n ba??n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(348, 1, 'vi', 'core/acl/permissions', 'all', 'T????t ca?? ph??n quy????n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(349, 1, 'vi', 'core/acl/permissions', 'list_role', 'Danh sa??ch quy????n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(350, 1, 'vi', 'core/acl/permissions', 'created_on', 'Nga??y ta??o', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(351, 1, 'vi', 'core/acl/permissions', 'created_by', '????????c ta??o b????i', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(352, 1, 'vi', 'core/acl/permissions', 'actions', 'Ta??c vu??', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(353, 1, 'vi', 'core/acl/permissions', 'create_success', 'Ta??o tha??nh c??ng!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(354, 1, 'vi', 'core/acl/permissions', 'delete_global_role', 'Kh??ng th???? xo??a quy????n h???? th????ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(355, 1, 'vi', 'core/acl/permissions', 'delete_success', 'Xo??a quy????n tha??nh c??ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(356, 1, 'vi', 'core/acl/permissions', 'duplicated_success', 'Nh??n ba??n tha??nh c??ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(357, 1, 'vi', 'core/acl/permissions', 'modified_success', 'S????a tha??nh c??ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(358, 1, 'vi', 'core/acl/permissions', 'no_select', 'Ha??y cho??n i??t nh????t m????t quy????n ?????? th????c hi????n ha??nh ??????ng na??y!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(359, 1, 'vi', 'core/acl/permissions', 'not_found', 'Kh??ng ti??m th????y quy????n tha??nh vi??n na??o!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(360, 1, 'vi', 'core/acl/permissions', 'options', 'Tu??y cho??n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(361, 1, 'vi', 'core/acl/permissions', 'role_delete_belong_user', 'Kh??ng th???? xo??a quy????n ha??n na??y vi?? no?? thu????c v???? ng??????i kha??c!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(362, 1, 'vi', 'core/acl/permissions', 'role_edit_belong_user', 'Ba??n kh??ng ????????c phe??p s????a quy????n na??y vi?? no?? thu????c v???? ng??????i kha??c', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(363, 1, 'vi', 'core/acl/permissions', 'role_in_use', 'Kh??ng th???? xo??a quy????n ng??????i du??ng na??y vi?? no?? ??ang ????????c s???? du??ng!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(364, 1, 'vi', 'core/acl/permissions', 'access_denied_message', 'Ba??n kh??ng co?? quy????n s???? du??ng ch????c n??ng na??y!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(365, 1, 'vi', 'core/acl/permissions', 'roles', 'Quy???n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(366, 1, 'vi', 'core/acl/permissions', 'role_permission', 'Nh??m v?? ph??n quy???n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(367, 1, 'vi', 'core/acl/permissions', 'user_management', 'Qu???n l?? ng?????i d??ng h??? th???ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(368, 1, 'vi', 'core/acl/permissions', 'super_user_management', 'Qu???n l?? ng?????i d??ng c???p cao', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(369, 1, 'vi', 'core/acl/reminders', 'password', 'M???t kh???u ph???i ??t nh???t 6 k?? t??? v?? tr??ng kh???p v???i m???t kh???u x??c nh???n.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(370, 1, 'vi', 'core/acl/reminders', 'user', 'H??? th???ng kh??ng th??? t??m th???y t??i kho???n v???i email n??y.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(371, 1, 'vi', 'core/acl/reminders', 'token', 'M?? kh??i ph???c m???t kh???u n??y kh??ng h???p l???.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(372, 1, 'vi', 'core/acl/reminders', 'sent', 'Li??n k???t kh??i ph???c m???t kh???u ???? ???????c g???i!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(373, 1, 'vi', 'core/acl/reminders', 'reset', 'M???t kh???u ???? ???????c thay ?????i!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(374, 1, 'vi', 'core/acl/users', 'delete_user_logged_in', 'Kh??ng th???? xo??a ng??????i du??ng ??ang ????ng nh????p h???? th????ng!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(375, 1, 'vi', 'core/acl/users', 'no_select', 'Ha??y cho??n i??t nh????t m????t tr??????ng ?????? th????c hi????n ha??nh ??????ng na??y!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(376, 1, 'vi', 'core/acl/users', 'lock_user_logged_in', 'Kh??ng th???? kho??a ng??????i du??ng ??ang ????ng nh????p h???? th????ng!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(377, 1, 'vi', 'core/acl/users', 'update_success', 'C????p nh????t tra??ng tha??i tha??nh c??ng!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(378, 1, 'vi', 'core/acl/users', 'save_setting_failed', 'Co?? l????i xa??y ra trong qua?? tri??nh l??u ca??i ??????t cu??a ng??????i du??ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(379, 1, 'vi', 'core/acl/users', 'not_found', 'Kh??ng ti??m th????y ng??????i du??ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(380, 1, 'vi', 'core/acl/users', 'email_exist', 'Email na??y ??a?? ????????c s???? du??ng b????i ng??????i du??ng kha??c trong h???? th????ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(381, 1, 'vi', 'core/acl/users', 'username_exist', 'T??n ????ng nh????p na??y ??a?? ????????c s???? du??ng b????i ng??????i du??ng kha??c trong h???? th????ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(382, 1, 'vi', 'core/acl/users', 'update_profile_success', 'Th??ng tin ta??i khoa??n cu??a ba??n ??a?? ????????c c????p nh????t tha??nh c??ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(383, 1, 'vi', 'core/acl/users', 'password_update_success', 'C????p nh????t m????t kh????u tha??nh c??ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(384, 1, 'vi', 'core/acl/users', 'current_password_not_valid', 'M????t kh????u hi????n ta??i kh??ng chi??nh xa??c', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(385, 1, 'vi', 'core/acl/users', 'user_exist_in', 'Ng??????i du??ng ??a?? la?? tha??nh vi??n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(386, 1, 'vi', 'core/acl/users', 'email', 'Email', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(387, 1, 'vi', 'core/acl/users', 'username', 'T??n ????ng nh????p', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(388, 1, 'vi', 'core/acl/users', 'role', 'Ph??n quy????n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(389, 1, 'vi', 'core/acl/users', 'first_name', 'Ho??', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(390, 1, 'vi', 'core/acl/users', 'last_name', 'T??n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(391, 1, 'vi', 'core/acl/users', 'message', 'Th??ng ??i????p', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(392, 1, 'vi', 'core/acl/users', 'cancel_btn', 'Hu??y bo??', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(393, 1, 'vi', 'core/acl/users', 'password', 'M????t kh????u', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(394, 1, 'vi', 'core/acl/users', 'new_password', 'M????t kh????u m????i', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(395, 1, 'vi', 'core/acl/users', 'save', 'L??u', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(396, 1, 'vi', 'core/acl/users', 'confirm_new_password', 'Xa??c nh????n m????t kh????u m????i', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(397, 1, 'vi', 'core/acl/users', 'deleted', 'Xo??a tha??nh vi??n tha??nh c??ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(398, 1, 'vi', 'core/acl/users', 'cannot_delete', 'Kh??ng th???? xo??a tha??nh vi??n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(399, 1, 'vi', 'core/acl/users', 'list', 'Danh sa??ch tha??nh vi??n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(400, 1, 'vi', 'core/acl/users', 'last_login', 'L???n cu???i ????ng nh???p', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(401, 1, 'vi', 'core/acl/users', 'error_update_profile_image', 'C?? l???i trong qu?? tr??nh ?????i ???nh ?????i di???n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(402, 1, 'vi', 'core/acl/users', 'email_reminder_template', '<h3>Xin cha??o :name</h3><p>H??? th???ng v???a nh???n ???????c y??u c???u kh??i ph???c m???t kh???u cho t??i kho???n c???a b???n, ????? ho??n t???t t??c v??? n??y vui l??ng click v??o ???????ng link b??n d?????i.</p><p><a href=\":link\">Kh??i phu??c m????t kh????u</a></p><p>N???u kh??ng ph???i b???n y??u c???u kh??i ph???c m???t kh???u, vui l??ng b??? qua email n??y.</p><p>Email n??y c?? gi?? tr??? trong v??ng 60 ph??t k??? t??? l??c nh???n ???????c email.</p>', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(403, 1, 'vi', 'core/acl/users', 'change_profile_image', 'Thay ?????i ???nh ?????i di???n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(404, 1, 'vi', 'core/acl/users', 'new_image', '???nh m???i', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(405, 1, 'vi', 'core/acl/users', 'loading', '??ang t???i', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(406, 1, 'vi', 'core/acl/users', 'close', '????ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(407, 1, 'vi', 'core/acl/users', 'update', 'C???p nh???t', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(408, 1, 'vi', 'core/acl/users', 'read_image_failed', 'Kh??ng ?????c ???????c n???i dung c???a h??nh ???nh', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(409, 1, 'vi', 'core/acl/users', 'update_avatar_success', 'C???p nh???t ???nh ?????i di???n th??nh c??ng!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(410, 1, 'vi', 'core/acl/users', 'users', 'Qu???n tr??? vi??n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(411, 1, 'vi', 'core/acl/users', 'info.title', 'Th??ng tin ng?????i d??ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(412, 1, 'vi', 'core/acl/users', 'info.first_name', 'H???', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(413, 1, 'vi', 'core/acl/users', 'info.last_name', 'T??n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(414, 1, 'vi', 'core/acl/users', 'info.email', 'Email', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(415, 1, 'vi', 'core/acl/users', 'info.second_email', 'Email d??? ph??ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(416, 1, 'vi', 'core/acl/users', 'info.address', '?????a ch???', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(417, 1, 'vi', 'core/acl/users', 'info.second_address', '?????a ch??? d??? ph??ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(418, 1, 'vi', 'core/acl/users', 'info.birth_day', 'Ng??y sinh', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(419, 1, 'vi', 'core/acl/users', 'info.job', 'Ngh??? nghi???p', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(420, 1, 'vi', 'core/acl/users', 'info.mobile_number', 'S??? ??i???n tho???i di ?????ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(421, 1, 'vi', 'core/acl/users', 'info.second_mobile_number', 'S??? ??i???n tho???i d??? ph??ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(422, 1, 'vi', 'core/acl/users', 'info.interes', 'S??? th??ch', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(423, 1, 'vi', 'core/acl/users', 'info.about', 'Gi???i thi???u', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(424, 1, 'vi', 'core/acl/users', 'gender.title', 'Gi???i t??nh', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(425, 1, 'vi', 'core/acl/users', 'gender.male', 'nam', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(426, 1, 'vi', 'core/acl/users', 'gender.female', 'n???', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(427, 1, 'vi', 'core/acl/users', 'change_password', 'Thay ?????i m???t kh???u', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(428, 1, 'vi', 'core/acl/users', 'current_password', 'M???t kh???u hi???n t???i', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(429, 1, 'en', 'core/base/base', 'yes', 'Yes', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(430, 1, 'en', 'core/base/base', 'no', 'No', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(431, 1, 'en', 'core/base/base', 'is_default', 'Is default?', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(432, 1, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(433, 1, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(434, 1, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(435, 1, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(436, 1, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(437, 1, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(438, 1, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(439, 1, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(440, 1, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(441, 1, 'en', 'core/base/base', 'change_image', 'Change image', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(442, 1, 'en', 'core/base/base', 'delete_image', 'Delete image', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(443, 1, 'en', 'core/base/base', 'preview_image', 'Preview image', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(444, 1, 'en', 'core/base/base', 'image', 'Image', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(445, 1, 'en', 'core/base/base', 'using_button', 'Using button', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(446, 1, 'en', 'core/base/base', 'select_image', 'Select image', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(447, 1, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(448, 1, 'en', 'core/base/base', 'add_image', 'Add image', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(449, 1, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(450, 1, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(451, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(452, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(453, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(454, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(455, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(456, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(457, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(458, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(459, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(460, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(461, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(462, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(463, 1, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(464, 1, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(465, 1, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(466, 1, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(467, 1, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(468, 1, 'en', 'core/base/enums', 'statuses.published', 'Published', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(469, 1, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(470, 1, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(471, 1, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(472, 1, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(473, 1, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(474, 1, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(475, 1, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(476, 1, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://flex-home.local/admin\">clicking here</a>.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(477, 1, 'en', 'core/base/errors', 'not_found', 'Not Found', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(478, 1, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(479, 1, 'en', 'core/base/forms', 'actions', 'Actions', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(480, 1, 'en', 'core/base/forms', 'save', 'Save', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(481, 1, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(482, 1, 'en', 'core/base/forms', 'image', 'Image', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(483, 1, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(484, 1, 'en', 'core/base/forms', 'create', 'Create', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(485, 1, 'en', 'core/base/forms', 'edit', 'Edit', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(486, 1, 'en', 'core/base/forms', 'permalink', 'Permalink', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(487, 1, 'en', 'core/base/forms', 'ok', 'OK', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(488, 1, 'en', 'core/base/forms', 'cancel', 'Cancel', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(489, 1, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(490, 1, 'en', 'core/base/forms', 'template', 'Template', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(491, 1, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(492, 1, 'en', 'core/base/forms', 'file', 'File', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(493, 1, 'en', 'core/base/forms', 'content', 'Content', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(494, 1, 'en', 'core/base/forms', 'description', 'Description', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(495, 1, 'en', 'core/base/forms', 'name', 'Name', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(496, 1, 'en', 'core/base/forms', 'slug', 'Slug', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(497, 1, 'en', 'core/base/forms', 'title', 'Title', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(498, 1, 'en', 'core/base/forms', 'value', 'Value', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(499, 1, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(500, 1, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(501, 1, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(502, 1, 'en', 'core/base/forms', 'parent', 'Parent', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(503, 1, 'en', 'core/base/forms', 'icon', 'Icon', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(504, 1, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(505, 1, 'en', 'core/base/forms', 'order_by', 'Order by', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(506, 1, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(507, 1, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(508, 1, 'en', 'core/base/forms', 'is_default', 'Is default?', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(509, 1, 'en', 'core/base/forms', 'update', 'Update', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(510, 1, 'en', 'core/base/forms', 'publish', 'Publish', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(511, 1, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(512, 1, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(513, 1, 'en', 'core/base/forms', 'order', 'Order', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(514, 1, 'en', 'core/base/forms', 'alias', 'Alias', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(515, 1, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(516, 1, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(517, 1, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(518, 1, 'en', 'core/base/forms', 'add', 'Add', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(519, 1, 'en', 'core/base/forms', 'link', 'Link', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(520, 1, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(521, 1, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(522, 1, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(523, 1, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(524, 1, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(525, 1, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(526, 1, 'en', 'core/base/layouts', 'settings', 'Settings', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(527, 1, 'en', 'core/base/layouts', 'setting_general', 'General', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(528, 1, 'en', 'core/base/layouts', 'setting_email', 'Email', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(529, 1, 'en', 'core/base/layouts', 'system_information', 'System information', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(530, 1, 'en', 'core/base/layouts', 'theme', 'Theme', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(531, 1, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(532, 1, 'en', 'core/base/layouts', 'profile', 'Profile', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(533, 1, 'en', 'core/base/layouts', 'logout', 'Logout', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(534, 1, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(535, 1, 'en', 'core/base/layouts', 'home', 'Home', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(536, 1, 'en', 'core/base/layouts', 'search', 'Search', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(537, 1, 'en', 'core/base/layouts', 'add_new', 'Add new', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(538, 1, 'en', 'core/base/layouts', 'n_a', 'N/A', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(539, 1, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(540, 1, 'en', 'core/base/layouts', 'view_website', 'View website', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(541, 1, 'en', 'core/base/mail', 'send-fail', 'Send email failed', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(542, 1, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(543, 1, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(544, 1, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(545, 1, 'en', 'core/base/notices', 'success_header', 'Success!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(546, 1, 'en', 'core/base/notices', 'error_header', 'Error!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(547, 1, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(548, 1, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(549, 1, 'en', 'core/base/notices', 'error', 'Error!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(550, 1, 'en', 'core/base/notices', 'success', 'Success!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(551, 1, 'en', 'core/base/notices', 'info', 'Info!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(552, 1, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(553, 1, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(554, 1, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(555, 1, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(556, 1, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(557, 1, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(558, 1, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(559, 1, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(560, 1, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(561, 1, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(562, 1, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(563, 1, 'en', 'core/base/system', 'user_management', 'User Management', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(564, 1, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(565, 1, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(566, 1, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(567, 1, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(568, 1, 'en', 'core/base/system', 'user.email', 'Email', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(569, 1, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(570, 1, 'en', 'core/base/system', 'user.username', 'Username', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(571, 1, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(572, 1, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(573, 1, 'en', 'core/base/system', 'user.create', 'Create', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(574, 1, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(575, 1, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(576, 1, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(577, 1, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(578, 1, 'en', 'core/base/system', 'options.info', 'System information', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(579, 1, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(580, 1, 'en', 'core/base/system', 'info.title', 'System information', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(581, 1, 'en', 'core/base/system', 'info.cache', 'Cache', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(582, 1, 'en', 'core/base/system', 'info.locale', 'Active locale', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(583, 1, 'en', 'core/base/system', 'info.environment', 'Environment', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(584, 1, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(585, 1, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(586, 1, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(587, 1, 'en', 'core/base/system', 'system_environment', 'System Environment', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(588, 1, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(589, 1, 'en', 'core/base/system', 'timezone', 'Timezone', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(590, 1, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(591, 1, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(592, 1, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(593, 1, 'en', 'core/base/system', 'app_size', 'App Size', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(594, 1, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(595, 1, 'en', 'core/base/system', 'php_version', 'PHP Version', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(596, 1, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(597, 1, 'en', 'core/base/system', 'server_software', 'Server Software', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(598, 1, 'en', 'core/base/system', 'server_os', 'Server OS', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(599, 1, 'en', 'core/base/system', 'database', 'Database', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(600, 1, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(601, 1, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(602, 1, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(603, 1, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(604, 1, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(605, 1, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(606, 1, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(607, 1, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(608, 1, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(609, 1, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(610, 1, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(611, 1, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(612, 1, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(613, 1, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(614, 1, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(615, 1, 'en', 'core/base/system', 'package_name', 'Package Name', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(616, 1, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(617, 1, 'en', 'core/base/system', 'version', 'Version', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(618, 1, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(619, 1, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(620, 1, 'en', 'core/base/tables', 'id', 'ID', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(621, 1, 'en', 'core/base/tables', 'name', 'Name', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(622, 1, 'en', 'core/base/tables', 'slug', 'Slug', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(623, 1, 'en', 'core/base/tables', 'title', 'Title', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(624, 1, 'en', 'core/base/tables', 'order_by', 'Order By', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(625, 1, 'en', 'core/base/tables', 'order', 'Order', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(626, 1, 'en', 'core/base/tables', 'status', 'Status', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(627, 1, 'en', 'core/base/tables', 'created_at', 'Created At', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(628, 1, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(629, 1, 'en', 'core/base/tables', 'description', 'Description', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(630, 1, 'en', 'core/base/tables', 'operations', 'Operations', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(631, 1, 'en', 'core/base/tables', 'url', 'URL', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(632, 1, 'en', 'core/base/tables', 'author', 'Author', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(633, 1, 'en', 'core/base/tables', 'notes', 'Notes', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(634, 1, 'en', 'core/base/tables', 'column', 'Column', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(635, 1, 'en', 'core/base/tables', 'origin', 'Origin', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(636, 1, 'en', 'core/base/tables', 'after_change', 'After changes', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(637, 1, 'en', 'core/base/tables', 'views', 'Views', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(638, 1, 'en', 'core/base/tables', 'browser', 'Browser', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(639, 1, 'en', 'core/base/tables', 'session', 'Session', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(640, 1, 'en', 'core/base/tables', 'activated', 'activated', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(641, 1, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(642, 1, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(643, 1, 'en', 'core/base/tables', 'edit', 'Edit', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(644, 1, 'en', 'core/base/tables', 'delete', 'Delete', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(645, 1, 'en', 'core/base/tables', 'restore', 'Restore', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(646, 1, 'en', 'core/base/tables', 'activate', 'Activate', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(647, 1, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(648, 1, 'en', 'core/base/tables', 'excel', 'Excel', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(649, 1, 'en', 'core/base/tables', 'export', 'Export', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(650, 1, 'en', 'core/base/tables', 'csv', 'CSV', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(651, 1, 'en', 'core/base/tables', 'pdf', 'PDF', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(652, 1, 'en', 'core/base/tables', 'print', 'Print', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(653, 1, 'en', 'core/base/tables', 'reset', 'Reset', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(654, 1, 'en', 'core/base/tables', 'reload', 'Reload', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(655, 1, 'en', 'core/base/tables', 'display', 'Display', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(656, 1, 'en', 'core/base/tables', 'all', 'All', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(657, 1, 'en', 'core/base/tables', 'add_new', 'Add New', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(658, 1, 'en', 'core/base/tables', 'action', 'Actions', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(659, 1, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(660, 1, 'en', 'core/base/tables', 'view', 'View Detail', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(661, 1, 'en', 'core/base/tables', 'save', 'Save', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(662, 1, 'en', 'core/base/tables', 'show_from', 'Show from', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(663, 1, 'en', 'core/base/tables', 'to', 'to', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(664, 1, 'en', 'core/base/tables', 'in', 'in', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(665, 1, 'en', 'core/base/tables', 'records', 'records', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(666, 1, 'en', 'core/base/tables', 'no_data', 'No data to display', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(667, 1, 'en', 'core/base/tables', 'no_record', 'No record', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(668, 1, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(669, 1, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(670, 1, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(671, 1, 'en', 'core/base/tables', 'cancel', 'Cancel', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(672, 1, 'en', 'core/base/tables', 'template', 'Template', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(673, 1, 'en', 'core/base/tables', 'email', 'Email', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(674, 1, 'en', 'core/base/tables', 'last_login', 'Last login', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(675, 1, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(676, 1, 'en', 'core/base/tables', 'image', 'Image', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(677, 1, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(678, 1, 'en', 'core/base/tables', 'submit', 'Submit', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(679, 1, 'en', 'core/base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(680, 1, 'en', 'core/base/tabs', 'detail', 'Detail', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(681, 1, 'en', 'core/base/tabs', 'file', 'Files', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(682, 1, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(683, 1, 'en', 'core/base/tabs', 'revision', 'Revision History', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(684, 1, 'vi', 'core/base/cache', 'cache_management', 'Qu???n l?? b??? nh??? ?????m', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(685, 1, 'vi', 'core/base/cache', 'cache_commands', 'C??c l???nh xo?? b??? nh??? ?????m c?? b???n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(686, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.title', 'X??a t???t c??? b??? ?????m hi???n c?? c???a ???ng d???ng', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(687, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.description', 'X??a c??c b??? nh??? ?????m c???a ???ng d???ng: c?? s??? d??? li???u, n???i dung t??nh... Ch???y l???nh n??y khi b???n th??? c???p nh???t d??? li???u nh??ng giao di???n kh??ng thay ?????i', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(688, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'B??? ?????m ???? ???????c x??a', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(689, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.title', 'L??m m???i b??? ?????m giao di???n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(690, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.description', 'L??m m???i b??? ?????m giao di???n gi??p ph???n giao di???n lu??n m???i nh???t', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(691, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'B??? ?????m giao di???n ???? ???????c l??m m???i', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(692, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.title', 'X??a b??? nh??? ?????m c???a ph???n c???u h??nh', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(693, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.description', 'B???n c???n l??m m???i b??? ?????m c???u h??nh khi b???n t???o ra s??? thay ?????i n??o ???? ??? m??i tr?????ng th??nh ph???m.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(694, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'B??? ?????m c???u h??nh ???? ???????c x??a', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(695, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.title', 'Xo?? cache ???????ng d???n', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(696, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.description', 'C???n th???c hi???n thao t??c n??y khi th???y kh??ng xu???t hi???n ???????ng d???n m???i.', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(697, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'B??? ?????m ??i???u h?????ng ???? b??? x??a', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(698, 1, 'vi', 'core/base/cache', 'commands.clear_log.description', 'Xo?? l???ch s??? l???i', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(699, 1, 'vi', 'core/base/cache', 'commands.clear_log.success_msg', 'L???ch s??? l???i ???? ???????c l??m s???ch', '2021-06-11 08:03:21', '2021-06-11 08:03:21'),
(700, 1, 'vi', 'core/base/cache', 'commands.clear_log.title', 'Xo?? l???ch s??? l???i', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(701, 1, 'vi', 'core/base/enums', 'statuses.draft', 'B???n nh??p', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(702, 1, 'vi', 'core/base/enums', 'statuses.pending', '??ang ch??? x??? l??', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(703, 1, 'vi', 'core/base/enums', 'statuses.publish', '???? xu???t b???n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(704, 1, 'vi', 'core/base/errors', '401_title', 'Ba??n kh??ng co?? quy????n truy c????p trang na??y', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(705, 1, 'vi', 'core/base/errors', '401_msg', '<li>Ba??n kh??ng ????????c c????p quy????n truy c????p b????i qua??n tri?? vi??n.</li>\n	                <li>Ba??n s???? du??ng sai loa??i ta??i khoa??n.</li>\n	                <li>Ba??n kh??ng ????????c c????p quy????n ?????? co?? th???? truy c????p trang na??y</li>', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(706, 1, 'vi', 'core/base/errors', '404_title', 'Kh??ng ti??m th????y trang y??u c????u', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(707, 1, 'vi', 'core/base/errors', '404_msg', '<li>Trang ba??n y??u c????u kh??ng t????n ta??i.</li>\n	                <li>Li??n k????t ba??n v????a nh????n kh??ng co??n ????????c s???? du??ng.</li>\n	                <li>Trang na??y co?? th???? ??a?? ????????c chuy????n sang vi?? tri?? kha??c.</li>\n	                <li>Co?? th???? co?? l????i xa??y ra.</li>\n	                <li>Ba??n kh??ng ????????c c????p quy????n ?????? co?? th???? truy c????p trang na??y</li>', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(708, 1, 'vi', 'core/base/errors', '500_title', 'Kh??ng th???? ta??i trang', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(709, 1, 'vi', 'core/base/errors', '500_msg', '<li>Trang ba??n y??u c????u kh??ng t????n ta??i.</li>\n	                <li>Li??n k????t ba??n v????a nh????n kh??ng co??n ????????c s???? du??ng.</li>\n	                <li>Trang na??y co?? th???? ??a?? ????????c chuy????n sang vi?? tri?? kha??c.</li>\n	                <li>Co?? th???? co?? l????i xa??y ra.</li>\n	                <li>Ba??n kh??ng ????????c c????p quy????n ?????? co?? th???? truy c????p trang na??y</li>', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(710, 1, 'vi', 'core/base/errors', 'reasons', '??i???u n??y c?? th??? x???y ra v?? nhi???u l?? do.', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(711, 1, 'vi', 'core/base/errors', 'try_again', 'Vui l??ng th??? l???i trong v??i ph??t, ho???c quay tr??? l???i trang chu?? b???ng ca??ch <a href=\"http://cms.local/admin\"> nh???n v??o ????y </a>.', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(712, 1, 'vi', 'core/base/forms', 'choose_image', 'Ch???n ???nh', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(713, 1, 'vi', 'core/base/forms', 'actions', 'T??c v???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(714, 1, 'vi', 'core/base/forms', 'save', 'L??u', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(715, 1, 'vi', 'core/base/forms', 'save_and_continue', 'L??u & ch???nh s???a', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(716, 1, 'vi', 'core/base/forms', 'image', 'H??nh ???nh', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(717, 1, 'vi', 'core/base/forms', 'image_placeholder', 'Ch??n ???????ng d???n h??nh ???nh ho???c nh???n n??t ????? ch???n h??nh', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(718, 1, 'vi', 'core/base/forms', 'create', 'T???o m???i', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(719, 1, 'vi', 'core/base/forms', 'edit', 'S???a', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(720, 1, 'vi', 'core/base/forms', 'permalink', '????????ng d????n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(721, 1, 'vi', 'core/base/forms', 'ok', 'OK', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(722, 1, 'vi', 'core/base/forms', 'cancel', 'Hu??y bo??', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(723, 1, 'vi', 'core/base/forms', 'character_remain', 'k?? t??? c??n l???i', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(724, 1, 'vi', 'core/base/forms', 'template', 'Template', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(725, 1, 'vi', 'core/base/forms', 'choose_file', 'Ch???n t???p tin', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(726, 1, 'vi', 'core/base/forms', 'file', 'T???p tin', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(727, 1, 'vi', 'core/base/forms', 'content', 'N???i dung', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(728, 1, 'vi', 'core/base/forms', 'description', 'M?? t???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(729, 1, 'vi', 'core/base/forms', 'name', 'T??n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(730, 1, 'vi', 'core/base/forms', 'name_placeholder', 'Nh???p t??n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(731, 1, 'vi', 'core/base/forms', 'description_placeholder', 'M?? t??? ng???n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(732, 1, 'vi', 'core/base/forms', 'parent', 'Cha', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(733, 1, 'vi', 'core/base/forms', 'icon', 'Bi???u t?????ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(734, 1, 'vi', 'core/base/forms', 'order_by', 'S???p x???p', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(735, 1, 'vi', 'core/base/forms', 'order_by_placeholder', 'S???p x???p', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(736, 1, 'vi', 'core/base/forms', 'slug', 'Slug', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(737, 1, 'vi', 'core/base/forms', 'is_featured', 'N???i b???t?', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(738, 1, 'vi', 'core/base/forms', 'is_default', 'M???c ?????nh?', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(739, 1, 'vi', 'core/base/forms', 'icon_placeholder', 'V?? d???: fa fa-home', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(740, 1, 'vi', 'core/base/forms', 'update', 'C???p nh???t', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(741, 1, 'vi', 'core/base/forms', 'publish', 'Xu???t b???n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(742, 1, 'vi', 'core/base/forms', 'remove_image', 'Xo?? ???nh', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(743, 1, 'vi', 'core/base/forms', 'add', 'Th??m', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(744, 1, 'vi', 'core/base/forms', 'add_short_code', 'Th??m shortcode', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(745, 1, 'vi', 'core/base/forms', 'alias', 'M?? thay th???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(746, 1, 'vi', 'core/base/forms', 'alias_placeholder', 'M?? thay th???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(747, 1, 'vi', 'core/base/forms', 'basic_information', 'Th??ng tin c?? b???n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(748, 1, 'vi', 'core/base/forms', 'link', 'Li??n k???t', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(749, 1, 'vi', 'core/base/forms', 'order', 'Th??? t???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(750, 1, 'vi', 'core/base/forms', 'short_code', 'Shortcode', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(751, 1, 'vi', 'core/base/forms', 'title', 'Ti??u ?????', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(752, 1, 'vi', 'core/base/forms', 'value', 'Gi?? tr???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(753, 1, 'vi', 'core/base/forms', 'show_hide_editor', '???n/Hi???n tr??nh so???n th???o', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(754, 1, 'vi', 'core/base/forms', 'basic_info_title', 'Th??ng tin c?? b???n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(755, 1, 'vi', 'core/base/layouts', 'platform_admin', 'Qu???n tr??? h??? th???ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(756, 1, 'vi', 'core/base/layouts', 'dashboard', 'B???ng ??i???u khi???n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(757, 1, 'vi', 'core/base/layouts', 'appearance', 'Hi???n th???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(758, 1, 'vi', 'core/base/layouts', 'menu', 'Tr??nh ????n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(759, 1, 'vi', 'core/base/layouts', 'widgets', 'Ti???n ??ch', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(760, 1, 'vi', 'core/base/layouts', 'theme_options', 'Tu??? ch???n giao di???n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(761, 1, 'vi', 'core/base/layouts', 'plugins', 'Ti???n ??ch m??? r???ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(762, 1, 'vi', 'core/base/layouts', 'settings', 'C??i ?????t', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(763, 1, 'vi', 'core/base/layouts', 'setting_general', 'C?? b???n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(764, 1, 'vi', 'core/base/layouts', 'system_information', 'Th??ng tin h??? th???ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(765, 1, 'vi', 'core/base/layouts', 'theme', 'Giao di???n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(766, 1, 'vi', 'core/base/layouts', 'copyright', 'B???n quy???n :year &copy; :company. Phi??n b???n: <span>:version</span>', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(767, 1, 'vi', 'core/base/layouts', 'profile', 'Th??ng tin c?? nh??n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(768, 1, 'vi', 'core/base/layouts', 'logout', '????ng xu???t', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(769, 1, 'vi', 'core/base/layouts', 'no_search_result', 'Kh??ng c?? k???t qu??? t??m ki???m, h??y th??? l???i v???i t??? kh??a kh??c.', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(770, 1, 'vi', 'core/base/layouts', 'home', 'Trang ch???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(771, 1, 'vi', 'core/base/layouts', 'search', 'T??m ki???m', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(772, 1, 'vi', 'core/base/layouts', 'add_new', 'Th??m m???i', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(773, 1, 'vi', 'core/base/layouts', 'n_a', 'N/A', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(774, 1, 'vi', 'core/base/layouts', 'page_loaded_time', 'Trang t???i xong trong', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(775, 1, 'vi', 'core/base/layouts', 'view_website', 'Xem trang ngo??i', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(776, 1, 'vi', 'core/base/layouts', 'setting_email', 'Email', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(777, 1, 'vi', 'core/base/mail', 'send-fail', 'G????i email kh??ng tha??nh c??ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(778, 1, 'vi', 'core/base/mail', 'happy_birthday', 'Ch??c m???ng sinh nh???t!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(779, 1, 'vi', 'core/base/notices', 'create_success_message', 'T???o th??nh c??ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(780, 1, 'vi', 'core/base/notices', 'update_success_message', 'C???p nh???t th??nh c??ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(781, 1, 'vi', 'core/base/notices', 'delete_success_message', 'X??a th??nh c??ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(782, 1, 'vi', 'core/base/notices', 'success_header', 'Th??nh c??ng!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(783, 1, 'vi', 'core/base/notices', 'error_header', 'L???i!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(784, 1, 'vi', 'core/base/notices', 'no_select', 'Cho??n i??t nh????t 1 tr?????ng ?????? th????c hi????n ha??nh ??????ng na??y!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(785, 1, 'vi', 'core/base/notices', 'cannot_delete', 'Kh??ng th??? x??a b???n ghi n??y', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(786, 1, 'vi', 'core/base/notices', 'processing_request', 'H??? th???ng ??ang x??? l?? y??u c???u.', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(787, 1, 'vi', 'core/base/notices', 'error', 'L???i!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(788, 1, 'vi', 'core/base/notices', 'success', 'Th??nh c??ng!', '2021-06-11 08:03:22', '2021-06-11 08:03:22');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(789, 1, 'vi', 'core/base/notices', 'info', 'Th??ng tin!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(790, 1, 'vi', 'core/base/system', 'no_select', 'Ha??y cho??n i??t nh????t 1 tr??????ng ?????? th????c hi????n ha??nh ??????ng na??y!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(791, 1, 'vi', 'core/base/system', 'cannot_find_user', 'Kh??ng th???? ta??i ????????c th??ng tin ng??????i du??ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(792, 1, 'vi', 'core/base/system', 'supper_revoked', 'Quy????n qua??n tri?? vi??n cao nh????t ??a?? ????????c g???? bo??', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(793, 1, 'vi', 'core/base/system', 'cannot_revoke_yourself', 'Kh??ng th??? g??? b??? quy???n qu???n tr??? c???p cao c???a ch??nh b???n!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(794, 1, 'vi', 'core/base/system', 'cant_remove_supper', 'Ba??n kh??ng co?? quy????n xo??a qua??n tri?? vi??n c????p cao', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(795, 1, 'vi', 'core/base/system', 'cant_find_user_with_email', 'Kh??ng th???? ti??m th????y ng??????i du??ng v????i email na??y', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(796, 1, 'vi', 'core/base/system', 'supper_granted', 'Quy????n qua??n tri?? cao nh????t ??a?? ????????c ga??n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(797, 1, 'vi', 'core/base/system', 'delete_log_success', 'Xo??a t????p tin log tha??nh c??ng!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(798, 1, 'vi', 'core/base/system', 'get_member_success', 'Hi????n thi?? danh sa??ch tha??nh vi??n tha??nh c??ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(799, 1, 'vi', 'core/base/system', 'error_occur', 'C?? l???i d?????i ????y', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(800, 1, 'vi', 'core/base/system', 'role_and_permission', 'Ph??n quy????n h???? th????ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(801, 1, 'vi', 'core/base/system', 'role_and_permission_description', 'Qua??n ly?? nh????ng ph??n quy????n trong h???? th????ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(802, 1, 'vi', 'core/base/system', 'user.list_super', 'Danh sa??ch qua??n tri?? vi??n c????p cao', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(803, 1, 'vi', 'core/base/system', 'user.username', 'T??n ????ng nh????p', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(804, 1, 'vi', 'core/base/system', 'user.email', 'Email', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(805, 1, 'vi', 'core/base/system', 'user.last_login', '????ng nh????p l????n cu????i	', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(806, 1, 'vi', 'core/base/system', 'user.add_user', 'Th??m qua??n tri?? vi??n c????p cao', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(807, 1, 'vi', 'core/base/system', 'user.cancel', 'Hu??y bo??', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(808, 1, 'vi', 'core/base/system', 'user.create', 'Th??m', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(809, 1, 'vi', 'core/base/system', 'options.features', 'Ki????m soa??t truy c????p ca??c ti??nh n??ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(810, 1, 'vi', 'core/base/system', 'options.feature_description', 'B????t/t????t ca??c ti??nh n??ng.', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(811, 1, 'vi', 'core/base/system', 'options.manage_super', 'Qua??n ly?? qua??n tri?? vi??n c????p cao', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(812, 1, 'vi', 'core/base/system', 'options.manage_super_description', 'Th??m/xo??a qua??n tri?? vi??n c????p cao', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(813, 1, 'vi', 'core/base/system', 'options.info', 'Th??ng tin h???? th????ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(814, 1, 'vi', 'core/base/system', 'options.info_description', 'Nh????ng th??ng tin v???? c????u hi??nh hi????n ta??i cu??a h???? th????ng.', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(815, 1, 'vi', 'core/base/system', 'info.title', 'Th??ng tin h???? th????ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(816, 1, 'vi', 'core/base/system', 'info.cache', 'B??? nh??? ?????m', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(817, 1, 'vi', 'core/base/system', 'info.environment', 'M??i tr?????ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(818, 1, 'vi', 'core/base/system', 'info.locale', 'Ng??n ng??? h??? th???ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(819, 1, 'vi', 'core/base/system', 'user_management', 'Qu???n l?? th??nh vi??n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(820, 1, 'vi', 'core/base/system', 'user_management_description', 'Qu???n l?? ng?????i d??ng trong h??? th???ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(821, 1, 'vi', 'core/base/system', 'app_size', 'K??ch th?????c ???ng d???ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(822, 1, 'vi', 'core/base/system', 'cache_dir_writable', 'C?? th??? ghi b??? nh??? ?????m', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(823, 1, 'vi', 'core/base/system', 'cache_driver', 'Lo???i l??u tr??? b??? nh??? ?????m', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(824, 1, 'vi', 'core/base/system', 'copy_report', 'Sao ch??p b??o c??o', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(825, 1, 'vi', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(826, 1, 'vi', 'core/base/system', 'database', 'H??? th???ng d??? li???u', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(827, 1, 'vi', 'core/base/system', 'debug_mode', 'Ch??? ????? s???a l???i', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(828, 1, 'vi', 'core/base/system', 'dependency_name', 'T??n g??i', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(829, 1, 'vi', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(830, 1, 'vi', 'core/base/system', 'extra_information', 'Th??ng tin m??? r???ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(831, 1, 'vi', 'core/base/system', 'extra_stats', 'Th???ng k?? th??m', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(832, 1, 'vi', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(833, 1, 'vi', 'core/base/system', 'framework_version', 'Phi??n b???n framework', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(834, 1, 'vi', 'core/base/system', 'get_system_report', 'L???y th??ng tin h??? th???ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(835, 1, 'vi', 'core/base/system', 'installed_packages', 'C??c g??i ???? c??i ?????t v?? phi??n b???n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(836, 1, 'vi', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(837, 1, 'vi', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(838, 1, 'vi', 'core/base/system', 'package_name', 'T??n g??i', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(839, 1, 'vi', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(840, 1, 'vi', 'core/base/system', 'php_version', 'Phi??n b???n PHP', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(841, 1, 'vi', 'core/base/system', 'report_description', 'Vui l??ng chia s??? th??ng tin n??y nh???m m???c ????ch ??i???u tra nguy??n nh??n g??y l???i', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(842, 1, 'vi', 'core/base/system', 'server_environment', 'M??i tr?????ng m??y ch???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(843, 1, 'vi', 'core/base/system', 'server_os', 'H??? ??i???u h??nh c???a m??y ch???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(844, 1, 'vi', 'core/base/system', 'server_software', 'Ph???n m???m', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(845, 1, 'vi', 'core/base/system', 'session_driver', 'Lo???i l??u tr??? phi??n l??m vi???c', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(846, 1, 'vi', 'core/base/system', 'ssl_installed', '???? c??i ?????t ch???ng ch??? SSL', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(847, 1, 'vi', 'core/base/system', 'storage_dir_writable', 'C?? th??? l??u tr??? d??? li???u t???m', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(848, 1, 'vi', 'core/base/system', 'system_environment', 'M??i tr?????ng h??? th???ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(849, 1, 'vi', 'core/base/system', 'timezone', 'M??i gi???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(850, 1, 'vi', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(851, 1, 'vi', 'core/base/system', 'version', 'Phi??n b???n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(852, 1, 'vi', 'core/base/system', 'cms_version', 'Phi??n b???n CMS', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(853, 1, 'vi', 'core/base/tables', 'filter_enabled', 'T??m ki???m n??ng cao ???? ???????c k??ch ho???t', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(854, 1, 'vi', 'core/base/tables', 'id', 'ID', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(855, 1, 'vi', 'core/base/tables', 'name', 'T??n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(856, 1, 'vi', 'core/base/tables', 'order_by', 'Th??? t???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(857, 1, 'vi', 'core/base/tables', 'status', 'Tr???ng th??i', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(858, 1, 'vi', 'core/base/tables', 'created_at', 'Ng??y t???o', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(859, 1, 'vi', 'core/base/tables', 'updated_at', 'Ng??y c???p nh???t', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(860, 1, 'vi', 'core/base/tables', 'operations', 'T??c v???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(861, 1, 'vi', 'core/base/tables', 'loading_data', '??ang t???i d??? li???u t??? server', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(862, 1, 'vi', 'core/base/tables', 'url', 'URL', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(863, 1, 'vi', 'core/base/tables', 'author', 'Ng??????i ta??o', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(864, 1, 'vi', 'core/base/tables', 'column', 'C????t', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(865, 1, 'vi', 'core/base/tables', 'origin', 'Ba??n cu??', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(866, 1, 'vi', 'core/base/tables', 'after_change', 'Sau khi thay ??????i', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(867, 1, 'vi', 'core/base/tables', 'notes', 'Ghi chu??', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(868, 1, 'vi', 'core/base/tables', 'activated', 'k??ch ho???t', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(869, 1, 'vi', 'core/base/tables', 'browser', 'Tr??nh duy???t', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(870, 1, 'vi', 'core/base/tables', 'deactivated', 'h???y k??ch ho???t', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(871, 1, 'vi', 'core/base/tables', 'description', 'M?? t???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(872, 1, 'vi', 'core/base/tables', 'session', 'Phi??n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(873, 1, 'vi', 'core/base/tables', 'views', 'L?????t xem', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(874, 1, 'vi', 'core/base/tables', 'restore', 'Kh??i ph???c', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(875, 1, 'vi', 'core/base/tables', 'edit', 'S???a', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(876, 1, 'vi', 'core/base/tables', 'delete', 'X??a', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(877, 1, 'vi', 'core/base/tables', 'action', 'H??nh ?????ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(878, 1, 'vi', 'core/base/tables', 'activate', 'K??ch ho???t', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(879, 1, 'vi', 'core/base/tables', 'add_new', 'Th??m m???i', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(880, 1, 'vi', 'core/base/tables', 'all', 'T???t c???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(881, 1, 'vi', 'core/base/tables', 'cancel', 'H???y b???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(882, 1, 'vi', 'core/base/tables', 'confirm_delete', 'X??c nh???n x??a', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(883, 1, 'vi', 'core/base/tables', 'confirm_delete_msg', 'B???n c?? ch???c ch???n mu???n x??a b???n ghi n??y?', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(884, 1, 'vi', 'core/base/tables', 'csv', 'CSV', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(885, 1, 'vi', 'core/base/tables', 'deactivate', 'H???y k??ch ho???t', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(886, 1, 'vi', 'core/base/tables', 'delete_entry', 'X??a b???n ghi', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(887, 1, 'vi', 'core/base/tables', 'display', 'Hi???n th???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(888, 1, 'vi', 'core/base/tables', 'excel', 'Excel', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(889, 1, 'vi', 'core/base/tables', 'export', 'Xu???t b???n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(890, 1, 'vi', 'core/base/tables', 'filter', 'Nh???p t??? kh??a...', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(891, 1, 'vi', 'core/base/tables', 'filtered_from', '???????c l???c t???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(892, 1, 'vi', 'core/base/tables', 'in', 'trong t???ng s???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(893, 1, 'vi', 'core/base/tables', 'loading', '??ang t???i d??? li???u t??? h??? th???ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(894, 1, 'vi', 'core/base/tables', 'no_data', 'Kh??ng c?? d??? li???u ????? hi???n th???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(895, 1, 'vi', 'core/base/tables', 'no_record', 'Kh??ng c?? d??? li???u', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(896, 1, 'vi', 'core/base/tables', 'pdf', 'PDF', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(897, 1, 'vi', 'core/base/tables', 'print', 'In', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(898, 1, 'vi', 'core/base/tables', 'records', 'b???n ghi', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(899, 1, 'vi', 'core/base/tables', 'reload', 'T???i l???i', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(900, 1, 'vi', 'core/base/tables', 'reset', 'L??m m???i', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(901, 1, 'vi', 'core/base/tables', 'save', 'L??u', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(902, 1, 'vi', 'core/base/tables', 'show_from', 'Hi???n th??? t???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(903, 1, 'vi', 'core/base/tables', 'template', 'Giao di???n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(904, 1, 'vi', 'core/base/tables', 'to', '?????n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(905, 1, 'vi', 'core/base/tables', 'view', 'Xem chi ti???t', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(906, 1, 'vi', 'core/base/tables', 'email', 'Email', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(907, 1, 'vi', 'core/base/tables', 'image', 'H??nh ???nh', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(908, 1, 'vi', 'core/base/tables', 'is_featured', 'N???i b???t', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(909, 1, 'vi', 'core/base/tables', 'last_login', 'L???n cu???i ????ng nh???p', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(910, 1, 'vi', 'core/base/tables', 'order', 'Th??? t???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(911, 1, 'vi', 'core/base/tables', 'shortcode', 'Shortcode', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(912, 1, 'vi', 'core/base/tables', 'slug', 'Slug', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(913, 1, 'vi', 'core/base/tables', 'title', 'Ti??u ?????', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(914, 1, 'vi', 'core/base/tabs', 'detail', 'Chi ti???t', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(915, 1, 'vi', 'core/base/tabs', 'file', 'T???p tin', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(916, 1, 'vi', 'core/base/tabs', 'record_note', 'Ghi ch??', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(917, 1, 'vi', 'core/base/tabs', 'revision', 'L???ch s??? thay ?????i', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(918, 1, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(919, 1, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(920, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(921, 1, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(922, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(923, 1, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(924, 1, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(925, 1, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(926, 1, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(927, 1, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(928, 1, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(929, 1, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(930, 1, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(931, 1, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(932, 1, 'vi', 'core/dashboard/dashboard', 'cancel_hide_btn', 'H???y b???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(933, 1, 'vi', 'core/dashboard/dashboard', 'collapse_expand', 'M??? r???ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(934, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide', 'B???n c?? ch???c?', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(935, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide_btn', 'V??ng, ???n ti???n ??ch n??y', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(936, 1, 'vi', 'core/dashboard/dashboard', 'hide', '???n', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(937, 1, 'vi', 'core/dashboard/dashboard', 'hide_message', 'B???n c?? ch???c ch???n mu???n ???n ti???n ??ch n??y? N?? s??? kh??ng ???????c hi???n th??? tr??n trang ch??? n???a!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(938, 1, 'vi', 'core/dashboard/dashboard', 'hide_success', '???n ti???n ??ch th??nh c??ng!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(939, 1, 'vi', 'core/dashboard/dashboard', 'manage_widgets', 'Qu???n l?? ti???n ??ch', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(940, 1, 'vi', 'core/dashboard/dashboard', 'reload', 'L??m m???i', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(941, 1, 'vi', 'core/dashboard/dashboard', 'save_setting_success', 'L??u ti???n ??ch th??nh c??ng', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(942, 1, 'vi', 'core/dashboard/dashboard', 'update_position_success', 'C???p nh???t v??? tr?? ti???n ??ch th??nh c??ng!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(943, 1, 'vi', 'core/dashboard/dashboard', 'widget_not_exists', 'Ti???n ??ch n??y kh??ng t???n t???i!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(944, 1, 'vi', 'core/dashboard/dashboard', 'fullscreen', 'To??n m??n h??nh', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(945, 1, 'vi', 'core/dashboard/dashboard', 'title', 'Trang qu???n tr???', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(946, 1, 'en', 'core/media/media', 'filter', 'Filter', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(947, 1, 'en', 'core/media/media', 'everything', 'Everything', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(948, 1, 'en', 'core/media/media', 'image', 'Image', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(949, 1, 'en', 'core/media/media', 'video', 'Video', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(950, 1, 'en', 'core/media/media', 'document', 'Document', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(951, 1, 'en', 'core/media/media', 'view_in', 'View in', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(952, 1, 'en', 'core/media/media', 'all_media', 'All media', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(953, 1, 'en', 'core/media/media', 'trash', 'Trash', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(954, 1, 'en', 'core/media/media', 'recent', 'Recent', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(955, 1, 'en', 'core/media/media', 'favorites', 'Favorites', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(956, 1, 'en', 'core/media/media', 'upload', 'Upload', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(957, 1, 'en', 'core/media/media', 'create_folder', 'Create folder', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(958, 1, 'en', 'core/media/media', 'refresh', 'Refresh', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(959, 1, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(960, 1, 'en', 'core/media/media', 'search_file_and_folder', 'Search file and folder', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(961, 1, 'en', 'core/media/media', 'sort', 'Sort', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(962, 1, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(963, 1, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(964, 1, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(965, 1, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(966, 1, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(967, 1, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(968, 1, 'en', 'core/media/media', 'actions', 'Actions', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(969, 1, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(970, 1, 'en', 'core/media/media', 'insert', 'Insert', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(971, 1, 'en', 'core/media/media', 'folder_name', 'Folder name', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(972, 1, 'en', 'core/media/media', 'create', 'Create', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(973, 1, 'en', 'core/media/media', 'rename', 'Rename', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(974, 1, 'en', 'core/media/media', 'close', 'Close', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(975, 1, 'en', 'core/media/media', 'save_changes', 'Save changes', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(976, 1, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(977, 1, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(978, 1, 'en', 'core/media/media', 'confirm', 'Confirm', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(979, 1, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(980, 1, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(981, 1, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(982, 1, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(983, 1, 'en', 'core/media/media', 'up_level', 'Up one level', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(984, 1, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(985, 1, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(986, 1, 'en', 'core/media/media', 'gallery', 'Media gallery', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(987, 1, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(988, 1, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(989, 1, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(990, 1, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(991, 1, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(992, 1, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(993, 1, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(994, 1, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(995, 1, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(996, 1, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(997, 1, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(998, 1, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(999, 1, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(1000, 1, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(1001, 1, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(1002, 1, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(1003, 1, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(1004, 1, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(1005, 1, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(1006, 1, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(1007, 1, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(1008, 1, 'en', 'core/media/media', 'menu_name', 'Media', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(1009, 1, 'en', 'core/media/media', 'add', 'Add media', '2021-06-11 08:03:22', '2021-06-11 08:03:22'),
(1010, 1, 'en', 'core/media/media', 'javascript.name', 'Name', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1011, 1, 'en', 'core/media/media', 'javascript.url', 'URL', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1012, 1, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1013, 1, 'en', 'core/media/media', 'javascript.size', 'Size', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1014, 1, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1015, 1, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1016, 1, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1017, 1, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1018, 1, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1019, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1020, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1021, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1022, 1, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1023, 1, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1024, 1, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1025, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1026, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1027, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1028, 1, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1029, 1, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1030, 1, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1031, 1, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1032, 1, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1033, 1, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1034, 1, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1035, 1, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1036, 1, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1037, 1, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1038, 1, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1039, 1, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1040, 1, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1041, 1, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1042, 1, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1043, 1, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1044, 1, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1045, 1, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1046, 1, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1047, 1, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1048, 1, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1049, 1, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1050, 1, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1051, 1, 'vi', 'core/media/media', 'filter', 'L???c', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1052, 1, 'vi', 'core/media/media', 'everything', 'T???t c???', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1053, 1, 'vi', 'core/media/media', 'image', 'H??nh ???nh', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1054, 1, 'vi', 'core/media/media', 'video', 'Phim', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1055, 1, 'vi', 'core/media/media', 'document', 'T??i li???u', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1056, 1, 'vi', 'core/media/media', 'view_in', 'Ch??? ????? xem', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1057, 1, 'vi', 'core/media/media', 'all_media', 'T???t c??? t???p tin', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1058, 1, 'vi', 'core/media/media', 'trash', 'Th??ng r??c', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1059, 1, 'vi', 'core/media/media', 'recent', 'G???n ????y', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1060, 1, 'vi', 'core/media/media', 'favorites', '???????c g???n d???u sao', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1061, 1, 'vi', 'core/media/media', 'upload', 'T???i l??n', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1062, 1, 'vi', 'core/media/media', 'add_from', 'Th??m t???', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1063, 1, 'vi', 'core/media/media', 'youtube', 'Youtube', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1064, 1, 'vi', 'core/media/media', 'vimeo', 'Vimeo', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1065, 1, 'vi', 'core/media/media', 'vine', 'Vine', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1066, 1, 'vi', 'core/media/media', 'daily_motion', 'Dailymotion', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1067, 1, 'vi', 'core/media/media', 'create_folder', 'T???o th?? m???c', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1068, 1, 'vi', 'core/media/media', 'refresh', 'L??m m???i', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1069, 1, 'vi', 'core/media/media', 'empty_trash', 'D???n th??ng r??c', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1070, 1, 'vi', 'core/media/media', 'search_file_and_folder', 'T??m ki???m t???p tin v?? th?? m???c', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1071, 1, 'vi', 'core/media/media', 'sort', 'S???p x???p', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1072, 1, 'vi', 'core/media/media', 'file_name_asc', 'T??n t???p tin - ASC', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1073, 1, 'vi', 'core/media/media', 'file_name_desc', 'T??n t???p tin - DESC', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1074, 1, 'vi', 'core/media/media', 'created_date_asc', 'Ng??y t???o - ASC', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1075, 1, 'vi', 'core/media/media', 'created_date_desc', 'Ng??y t???o - DESC', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1076, 1, 'vi', 'core/media/media', 'uploaded_date_asc', 'Ng??y t???i l??n - ASC', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1077, 1, 'vi', 'core/media/media', 'uploaded_date_desc', 'Ng??y t???i l??n - DESC', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1078, 1, 'vi', 'core/media/media', 'size_asc', 'K??ch th?????c - ASC', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1079, 1, 'vi', 'core/media/media', 'size_desc', 'K??ch th?????c - DESC', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1080, 1, 'vi', 'core/media/media', 'actions', 'H??nh ?????ng', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1081, 1, 'vi', 'core/media/media', 'nothing_is_selected', 'Kh??ng c?? t???p tin n??o ???????c ch???n', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1082, 1, 'vi', 'core/media/media', 'insert', 'Ch??n', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1083, 1, 'vi', 'core/media/media', 'coming_soon', '??ang ph??t tri???n', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1084, 1, 'vi', 'core/media/media', 'add_from_youtube', 'Th??m t??? youtube', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1085, 1, 'vi', 'core/media/media', 'playlist', 'Playlist', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1086, 1, 'vi', 'core/media/media', 'add_url', 'Th??m ???????ng d???n', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1087, 1, 'vi', 'core/media/media', 'folder_name', 'T??n th?? m???c', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1088, 1, 'vi', 'core/media/media', 'create', 'T???o', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1089, 1, 'vi', 'core/media/media', 'rename', '?????i t??n', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1090, 1, 'vi', 'core/media/media', 'close', '????ng', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1091, 1, 'vi', 'core/media/media', 'save_changes', 'L??u thay ?????i', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1092, 1, 'vi', 'core/media/media', 'move_to_trash', '????a v??o th??ng r??c', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1093, 1, 'vi', 'core/media/media', 'confirm_trash', 'B???n c?? ch???c ch???n mu???n b??? nh???ng t???p tin n??y v??o th??ng r??c?', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1094, 1, 'vi', 'core/media/media', 'confirm', 'X??c nh???n', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1095, 1, 'vi', 'core/media/media', 'confirm_delete', 'X??a t???p tin', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1096, 1, 'vi', 'core/media/media', 'confirm_delete_description', 'H??nh ?????ng n??y kh??ng th??? kh??i ph???c. B???n c?? ch???c ch???n mu???n x??a c??c t???p tin n??y?', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1097, 1, 'vi', 'core/media/media', 'empty_trash_title', 'D???n s???ch th??ng r??c', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1098, 1, 'vi', 'core/media/media', 'empty_trash_description', 'H??nh ?????ng n??y kh??ng th??? kh??i ph???c. B???n c?? ch???c ch???n mu???n d???n s???ch th??ng r??c?', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1099, 1, 'vi', 'core/media/media', 'up_level', 'Quay l???i m???t c???p', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1100, 1, 'vi', 'core/media/media', 'upload_progress', 'Ti???n tr??nh t???i l??n', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1101, 1, 'vi', 'core/media/media', 'name_reserved', 'T??n n??y kh??ng ???????c ph??p ?????t', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1102, 1, 'vi', 'core/media/media', 'folder_created', 'T???o th?? m???c th??nh c??ng!', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1103, 1, 'vi', 'core/media/media', 'gallery', 'Th?? vi???n t???p tin', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1104, 1, 'vi', 'core/media/media', 'trash_error', 'C?? l???i khi x??a t???p tin/th?? m???c', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1105, 1, 'vi', 'core/media/media', 'trash_success', 'X??a t???p tin/th?? m???c th??nh c??ng!', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1106, 1, 'vi', 'core/media/media', 'restore_error', 'C?? l???i trong qu?? tr??nh kh??i ph???c', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1107, 1, 'vi', 'core/media/media', 'restore_success', 'Kh??i ph???c th??nh c??ng!', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1108, 1, 'vi', 'core/media/media', 'copy_success', 'Sao ch??p th??nh c??ng!', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1109, 1, 'vi', 'core/media/media', 'delete_success', 'X??a th??nh c??ng!', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1110, 1, 'vi', 'core/media/media', 'favorite_success', 'Th??m d???u sao th??nh c??ng!', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1111, 1, 'vi', 'core/media/media', 'remove_favorite_success', 'B??? d???u sao th??nh c??ng!', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1112, 1, 'vi', 'core/media/media', 'rename_error', 'C?? l???i trong qu?? tr??nh ?????i t??n', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1113, 1, 'vi', 'core/media/media', 'rename_success', '?????i t??n th??nh c??ng!', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1114, 1, 'vi', 'core/media/media', 'invalid_action', 'H??nh ?????ng kh??ng h???p l???!', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1115, 1, 'vi', 'core/media/media', 'file_not_exists', 'T???p tin kh??ng t???n t???i!', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1116, 1, 'vi', 'core/media/media', 'download_file_error', 'C?? l???i trong qu?? tr??nh t???i xu???ng t???p tin!', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1117, 1, 'vi', 'core/media/media', 'missing_zip_archive_extension', 'H??y b???t ZipArchive extension ????? t???i t???p tin!', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1118, 1, 'vi', 'core/media/media', 'can_not_download_file', 'Kh??ng th??? t???i t???p tin!', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1119, 1, 'vi', 'core/media/media', 'invalid_request', 'Y??u c???u kh??ng h???p l???!', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1120, 1, 'vi', 'core/media/media', 'add_success', 'Th??m th??nh c??ng!', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1121, 1, 'vi', 'core/media/media', 'file_too_big', 'T???p tin qu?? l???n. Gi???i h???n t???i l??n l?? :size bytes', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1122, 1, 'vi', 'core/media/media', 'can_not_detect_file_type', 'Lo???i t???p tin kh??ng h???p l??? ho???c kh??ng th??? x??c ?????nh lo???i t???p tin!', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1123, 1, 'vi', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1124, 1, 'vi', 'core/media/media', 'menu_name', 'Qu???n l?? t???p tin', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1125, 1, 'vi', 'core/media/media', 'add', 'Th??m t???p tin', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1126, 1, 'vi', 'core/media/media', 'javascript.name', 'T??n', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1127, 1, 'vi', 'core/media/media', 'javascript.url', '???????ng d???n', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1128, 1, 'vi', 'core/media/media', 'javascript.full_url', '???????ng d???n tuy???t ?????i', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1129, 1, 'vi', 'core/media/media', 'javascript.size', 'K??ch th?????c', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1130, 1, 'vi', 'core/media/media', 'javascript.mime_type', 'Lo???i', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1131, 1, 'vi', 'core/media/media', 'javascript.created_at', '???????c t???i l??n l??c', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1132, 1, 'vi', 'core/media/media', 'javascript.updated_at', '???????c ch???nh s???a l??c', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1133, 1, 'vi', 'core/media/media', 'javascript.nothing_selected', 'B???n ch??a ch???n t???p tin n??o', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1134, 1, 'vi', 'core/media/media', 'javascript.visit_link', 'M??? li??n k???t', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1135, 1, 'vi', 'core/media/media', 'javascript.add_from.youtube.original_msg', 'Vui l??ng nh???p ch??nh x??c ???????ng d???n Youtube', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1136, 1, 'vi', 'core/media/media', 'javascript.add_from.youtube.no_api_key_msg', 'Vui l??ng khai b??o API key c???a Youtube', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1137, 1, 'vi', 'core/media/media', 'javascript.add_from.youtube.invalid_url_msg', 'Li??n k???t n??y kh??ng d???n ?????n Youtube', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1138, 1, 'vi', 'core/media/media', 'javascript.add_from.youtube.error_msg', 'C?? l???i x???y ra trong ti???n tr??nh th???c hi???n...', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1139, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1140, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.title', 'B???n c?? th??? k??o th??? t???p tin v??o ????y ????? t???i l??n', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1141, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.message', 'Ho???c c?? th??? b???m n??t T???i l??n ??? ph??a tr??n', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1142, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1143, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.title', 'Hi???n t???i kh??ng c?? t???p tin n??o trong th??ng r??c', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1144, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.message', 'X??a t???p tin s??? ??em t???p tin l??u v??o th??ng r??c. X??a t???p tin trong th??ng r??c s??? x??a v??nh vi???n.', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1145, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1146, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.title', 'B???n ch??a ?????t t???p tin n??o v??o m???c y??u th??ch', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1147, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.message', 'Th??m t???p tin v??o m???c y??u th??ch ????? t??m ki???m ch??ng d??? d??ng sau n??y.', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1148, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1149, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.title', 'B???n ch??a m??? t???p tin n??o.', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1150, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.message', 'M???c n??y hi???n th??? c??c t???p tin b???n ???? xem g???n ????y.', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1151, 1, 'vi', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1152, 1, 'vi', 'core/media/media', 'javascript.no_item.default.title', 'Th?? m???c tr???ng', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1153, 1, 'vi', 'core/media/media', 'javascript.no_item.default.message', 'Th?? m???c n??y ch??a c?? t???p tin n??o', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1154, 1, 'vi', 'core/media/media', 'javascript.clipboard.success', '???????ng d???n c???a c??c t???p tin ???? ???????c sao ch??p v??o clipboard', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1155, 1, 'vi', 'core/media/media', 'javascript.message.error_header', 'L???i', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1156, 1, 'vi', 'core/media/media', 'javascript.message.success_header', 'Th??nh c??ng', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1157, 1, 'vi', 'core/media/media', 'javascript.download.error', 'B???n ch??a ch???n t???p tin n??o ho???c t???p tin n??y kh??ng cho ph??p t???i v???', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1158, 1, 'vi', 'core/media/media', 'javascript.actions_list.basic.preview', 'Xem tr?????c', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1159, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Sao ch??p ???????ng d???n', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1160, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.rename', '?????i t??n', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1161, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Nh??n b???n', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1162, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.favorite', 'Y??u th??ch', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1163, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'X??a kh???i m???c y??u th??ch', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1164, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.download', 'T???i xu???ng', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1165, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.trash', 'Chuy???n v??o th??ng r??c', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1166, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.delete', 'X??a ho??n to??n', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1167, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.restore', 'Kh??i ph???c', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1168, 1, 'vi', 'core/media/media', 'empty_trash_success', 'D???n s???ch th??ng r??c th??nh c??ng', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1169, 1, 'vi', 'core/media/media', 'name_invalid', 'T??n th?? m???c ch???a k?? t??? kh??ng h???p l???', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1170, 1, 'en', 'core/setting/setting', 'title', 'Settings', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1171, 1, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1172, 1, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1173, 1, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1174, 1, 'en', 'core/setting/setting', 'general.title', 'General', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1175, 1, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1176, 1, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1177, 1, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1178, 1, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1179, 1, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1180, 1, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1181, 1, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1182, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1183, 1, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1184, 1, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1185, 1, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1186, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2021-06-11 08:03:23', '2021-06-11 08:03:23');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1187, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1188, 1, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1189, 1, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1190, 1, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1191, 1, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1192, 1, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1193, 1, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1194, 1, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1195, 1, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1196, 1, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1197, 1, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1198, 1, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1199, 1, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1200, 1, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1201, 1, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1202, 1, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1203, 1, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1204, 1, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1205, 1, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1206, 1, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1207, 1, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1208, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1209, 1, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1210, 1, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1211, 1, 'en', 'core/setting/setting', 'general.no', 'No', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1212, 1, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1213, 1, 'en', 'core/setting/setting', 'general.select', '??? Select ???', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1214, 1, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1215, 1, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1216, 1, 'en', 'core/setting/setting', 'general.locale_direction', 'Language direction', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1217, 1, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1218, 1, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1219, 1, 'en', 'core/setting/setting', 'email.content', 'Content', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1220, 1, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1221, 1, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1222, 1, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1223, 1, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1224, 1, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1225, 1, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1226, 1, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1227, 1, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1228, 1, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1229, 1, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1230, 1, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1231, 1, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1232, 1, 'en', 'core/setting/setting', 'email.port', 'Port', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1233, 1, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1234, 1, 'en', 'core/setting/setting', 'email.host', 'Host', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1235, 1, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1236, 1, 'en', 'core/setting/setting', 'email.username', 'Username', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1237, 1, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1238, 1, 'en', 'core/setting/setting', 'email.password', 'Password', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1239, 1, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1240, 1, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1241, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1242, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1243, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1244, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1245, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1246, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1247, 1, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1248, 1, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1249, 1, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1250, 1, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1251, 1, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1252, 1, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1253, 1, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1254, 1, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1255, 1, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1256, 1, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1257, 1, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1258, 1, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1259, 1, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1260, 1, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1261, 1, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1262, 1, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1263, 1, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1264, 1, 'en', 'core/setting/setting', 'email.default', 'Default', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1265, 1, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1266, 1, 'en', 'core/setting/setting', 'media.title', 'Media', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1267, 1, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1268, 1, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1269, 1, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1270, 1, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1271, 1, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1272, 1, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1273, 1, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1274, 1, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1275, 1, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1276, 1, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1277, 1, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1278, 1, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1279, 1, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1280, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1281, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1282, 1, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1283, 1, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1284, 1, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1285, 1, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1286, 1, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1287, 1, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1288, 1, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1289, 1, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1290, 1, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2021-06-11 08:03:23', '2021-06-11 08:03:23'),
(1291, 1, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1292, 1, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1293, 1, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1294, 1, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1295, 1, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1296, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1297, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1298, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1299, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1300, 1, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1301, 1, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1302, 1, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1303, 1, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1304, 1, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1305, 1, 'en', 'core/setting/setting', 'template', 'Template', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1306, 1, 'en', 'core/setting/setting', 'description', 'Description', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1307, 1, 'en', 'core/setting/setting', 'enable', 'Enable', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1308, 1, 'en', 'core/setting/setting', 'send', 'Send', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1309, 1, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1310, 1, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1311, 1, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1312, 1, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1313, 1, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1314, 1, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1315, 1, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1316, 1, 'vi', 'core/setting/setting', 'title', 'Ca??i ??????t', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1317, 1, 'vi', 'core/setting/setting', 'general.theme', 'Giao di???n', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1318, 1, 'vi', 'core/setting/setting', 'general.description', 'C????u hi??nh nh????ng th??ng tin ca??i ??????t website.', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1319, 1, 'vi', 'core/setting/setting', 'general.title', 'Th??ng tin chung', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1320, 1, 'vi', 'core/setting/setting', 'general.general_block', 'Th??ng tin chung', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1321, 1, 'vi', 'core/setting/setting', 'general.site_title', 'T??n trang', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1322, 1, 'vi', 'core/setting/setting', 'general.admin_email', 'Email qua??n tri?? vi??n', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1323, 1, 'vi', 'core/setting/setting', 'general.seo_block', 'C???u hi??nh SEO', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1324, 1, 'vi', 'core/setting/setting', 'general.seo_title', 'Ti??u ????? SEO', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1325, 1, 'vi', 'core/setting/setting', 'general.seo_description', 'M?? t??? SEO', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1326, 1, 'vi', 'core/setting/setting', 'general.seo_keywords', 'T??? kho?? SEO', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1327, 1, 'vi', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1328, 1, 'vi', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1329, 1, 'vi', 'core/setting/setting', 'general.enable_captcha', 'S???? du??ng Captcha?', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1330, 1, 'vi', 'core/setting/setting', 'general.contact_block', 'Th??ng tin li??n h????', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1331, 1, 'vi', 'core/setting/setting', 'general.placeholder.site_title', 'T??n trang (t????i ??a 120 ki?? t????)', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1332, 1, 'vi', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1333, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_analytics', 'V?? d???: UA-42767940-2', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1334, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_site_verification', 'M?? x??c nh???n trang web d??ng cho Google Webmaster Tool', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1335, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_title', 'Ti??u ????? SEO (t????i ??a 120 ki?? t????)', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1336, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_description', 'M?? t??? SEO (t????i ??a 120 ki?? t????)', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1337, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_keywords', 'T??? kho?? SEO (t????i ??a 60 ki?? t????, ph??n ca??ch t???? kho??a b????ng d????u ph????y)', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1338, 1, 'vi', 'core/setting/setting', 'general.enable_change_admin_theme', 'Cho ph??p thay ?????i giao di???n qu???n tr????', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1339, 1, 'vi', 'core/setting/setting', 'general.enable_multi_language_in_admin', 'Cho ph??p thay ?????i ng??n ng??? trang qu???n tr????', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1340, 1, 'vi', 'core/setting/setting', 'general.enable', 'B???t', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1341, 1, 'vi', 'core/setting/setting', 'general.disable', 'T???t', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1342, 1, 'vi', 'core/setting/setting', 'general.enable_cache', 'B???t b??? nh??? ?????m?', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1343, 1, 'vi', 'core/setting/setting', 'general.cache_time', 'Th???i gian l??u b??? nh??? ?????m', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1344, 1, 'vi', 'core/setting/setting', 'general.cache_time_site_map', 'Th???i gian l??u s?? ????? trang trong b??? nh??? ?????m', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1345, 1, 'vi', 'core/setting/setting', 'general.admin_logo', 'Logo trang qu???n tr???', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1346, 1, 'vi', 'core/setting/setting', 'general.admin_title', 'Ti??u ????? trang qu???n tr???', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1347, 1, 'vi', 'core/setting/setting', 'general.admin_title_placeholder', 'Ti??u ????? hi???n th??? tr??n th??? tr??nh duy???t', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1348, 1, 'vi', 'core/setting/setting', 'general.rich_editor', 'B??? so???n th???o v??n b???n', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1349, 1, 'vi', 'core/setting/setting', 'general.cache_block', 'B??? nh??? ?????m', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1350, 1, 'vi', 'core/setting/setting', 'general.yes', 'B???t', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1351, 1, 'vi', 'core/setting/setting', 'general.no', 'T???t', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1352, 1, 'vi', 'core/setting/setting', 'email.subject', 'Ti??u ?????', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1353, 1, 'vi', 'core/setting/setting', 'email.content', 'N???i dung', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1354, 1, 'vi', 'core/setting/setting', 'email.title', 'C???u h??nh email template', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1355, 1, 'vi', 'core/setting/setting', 'email.description', 'C???u tr??c file template s??? d???ng HTML v?? c??c bi???n trong h??? th???ng.', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1356, 1, 'vi', 'core/setting/setting', 'email.reset_to_default', 'Kh??i ph???c v??? m???c ?????nh', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1357, 1, 'vi', 'core/setting/setting', 'email.back', 'Tr??? l???i trang c??i ?????t', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1358, 1, 'vi', 'core/setting/setting', 'email.reset_success', 'Kh??i ph???c m???c ?????nh th??nh c??ng', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1359, 1, 'vi', 'core/setting/setting', 'email.confirm_reset', 'X??c nh???n kh??i ph???c m???c ?????nh?', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1360, 1, 'vi', 'core/setting/setting', 'email.confirm_message', 'B???n c?? ch???c ch???n mu???n kh??i ph???c v??? b???n m???c ?????nh?', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1361, 1, 'vi', 'core/setting/setting', 'email.continue', 'Ti???p t???c', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1362, 1, 'vi', 'core/setting/setting', 'email.sender_name', 'T??n ng?????i g???i', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1363, 1, 'vi', 'core/setting/setting', 'email.sender_name_placeholder', 'T??n', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1364, 1, 'vi', 'core/setting/setting', 'email.sender_email', 'Email c???a ng?????i g???i', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1365, 1, 'vi', 'core/setting/setting', 'email.driver', 'Lo???i', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1366, 1, 'vi', 'core/setting/setting', 'email.port', 'C???ng', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1367, 1, 'vi', 'core/setting/setting', 'email.port_placeholder', 'V?? d???: 587', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1368, 1, 'vi', 'core/setting/setting', 'email.host', 'M??y ch???', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1369, 1, 'vi', 'core/setting/setting', 'email.host_placeholder', 'V?? d???: smtp.gmail.com', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1370, 1, 'vi', 'core/setting/setting', 'email.username', 'T??n ????ng nh???p', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1371, 1, 'vi', 'core/setting/setting', 'email.username_placeholder', 'T??n ????ng nh???p v??o m??y ch??? mail', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1372, 1, 'vi', 'core/setting/setting', 'email.password', 'M???t kh???u', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1373, 1, 'vi', 'core/setting/setting', 'email.password_placeholder', 'M???t kh???u ????ng nh???p v??o m??y ch??? mail', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1374, 1, 'vi', 'core/setting/setting', 'email.encryption', 'M?? ho??', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1375, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain', 'T??n mi???n', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1376, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'T??n mi???n', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1377, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret', 'Chu???i b?? m???t', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1378, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Chu???i b?? m???t', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1379, 1, 'vi', 'core/setting/setting', 'email.template_title', 'M???u giao di???n email', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1380, 1, 'vi', 'core/setting/setting', 'email.template_description', 'Giao di???n m???c ?????nh cho t???t c??? email', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1381, 1, 'vi', 'core/setting/setting', 'email.template_header', 'M???u cho ph???n tr??n c???a email', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1382, 1, 'vi', 'core/setting/setting', 'email.template_header_description', 'Ph???n tr??n c???a t???t c??? email', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1383, 1, 'vi', 'core/setting/setting', 'email.template_footer', 'M???u cho ph???n d?????i c???a email', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1384, 1, 'vi', 'core/setting/setting', 'email.template_footer_description', 'Ph???n d?????i c???a t???t c??? email', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1385, 1, 'vi', 'core/setting/setting', 'save_settings', 'L??u c??i ?????t', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1386, 1, 'vi', 'core/setting/setting', 'template', 'M???u', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1387, 1, 'vi', 'core/setting/setting', 'description', 'M?? t???', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1388, 1, 'vi', 'core/setting/setting', 'enable', 'B???t', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1389, 1, 'vi', 'core/setting/setting', 'test_send_mail', 'G???i th??? nghi???m', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1390, 1, 'en', 'core/table/general', 'operations', 'Operations', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1391, 1, 'en', 'core/table/general', 'loading_data', 'Loading data from server', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1392, 1, 'en', 'core/table/general', 'display', 'Display', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1393, 1, 'en', 'core/table/general', 'all', 'All', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1394, 1, 'en', 'core/table/general', 'edit_entry', 'Edit', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1395, 1, 'en', 'core/table/general', 'delete_entry', 'Delete', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1396, 1, 'en', 'core/table/general', 'show_from', 'Showing from', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1397, 1, 'en', 'core/table/general', 'to', 'to', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1398, 1, 'en', 'core/table/general', 'in', 'in', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1399, 1, 'en', 'core/table/general', 'records', 'records', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1400, 1, 'en', 'core/table/general', 'no_data', 'No data to display', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1401, 1, 'en', 'core/table/general', 'no_record', 'No record', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1402, 1, 'en', 'core/table/general', 'loading', 'Loading data from server', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1403, 1, 'en', 'core/table/general', 'confirm_delete', 'Confirm delete', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1404, 1, 'en', 'core/table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1405, 1, 'en', 'core/table/general', 'cancel', 'Cancel', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1406, 1, 'en', 'core/table/general', 'delete', 'Delete', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1407, 1, 'en', 'core/table/general', 'close', 'Close', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1408, 1, 'en', 'core/table/general', 'contains', 'Contains', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1409, 1, 'en', 'core/table/general', 'is_equal_to', 'Is equal to', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1410, 1, 'en', 'core/table/general', 'greater_than', 'Greater than', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1411, 1, 'en', 'core/table/general', 'less_than', 'Less than', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1412, 1, 'en', 'core/table/general', 'value', 'Value', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1413, 1, 'en', 'core/table/general', 'select_field', 'Select field', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1414, 1, 'en', 'core/table/general', 'reset', 'Reset', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1415, 1, 'en', 'core/table/general', 'add_additional_filter', 'Add additional filter', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1416, 1, 'en', 'core/table/general', 'apply', 'Apply', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1417, 1, 'en', 'core/table/general', 'filters', 'Filters', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1418, 1, 'en', 'core/table/general', 'bulk_change', 'Bulk changes', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1419, 1, 'en', 'core/table/general', 'select_option', 'Select option', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1420, 1, 'en', 'core/table/general', 'bulk_actions', 'Bulk Actions', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1421, 1, 'en', 'core/table/general', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1422, 1, 'en', 'core/table/general', 'please_select_record', 'Please select at least one record to perform this action!', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1423, 1, 'en', 'core/table/general', 'filtered', '(filtered from _MAX_ total records)', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1424, 1, 'en', 'core/table/general', 'search', 'Search...', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1425, 1, 'en', 'core/table/table', 'operations', 'Operations', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1426, 1, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1427, 1, 'en', 'core/table/table', 'display', 'Display', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1428, 1, 'en', 'core/table/table', 'all', 'All', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1429, 1, 'en', 'core/table/table', 'edit_entry', 'Edit', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1430, 1, 'en', 'core/table/table', 'delete_entry', 'Delete', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1431, 1, 'en', 'core/table/table', 'show_from', 'Showing from', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1432, 1, 'en', 'core/table/table', 'to', 'to', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1433, 1, 'en', 'core/table/table', 'in', 'in', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1434, 1, 'en', 'core/table/table', 'records', 'records', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1435, 1, 'en', 'core/table/table', 'no_data', 'No data to display', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1436, 1, 'en', 'core/table/table', 'no_record', 'No record', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1437, 1, 'en', 'core/table/table', 'loading', 'Loading data from server', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1438, 1, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1439, 1, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1440, 1, 'en', 'core/table/table', 'cancel', 'Cancel', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1441, 1, 'en', 'core/table/table', 'delete', 'Delete', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1442, 1, 'en', 'core/table/table', 'close', 'Close', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1443, 1, 'en', 'core/table/table', 'contains', 'Contains', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1444, 1, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1445, 1, 'en', 'core/table/table', 'greater_than', 'Greater than', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1446, 1, 'en', 'core/table/table', 'less_than', 'Less than', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1447, 1, 'en', 'core/table/table', 'value', 'Value', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1448, 1, 'en', 'core/table/table', 'select_field', 'Select field', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1449, 1, 'en', 'core/table/table', 'reset', 'Reset', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1450, 1, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1451, 1, 'en', 'core/table/table', 'apply', 'Apply', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1452, 1, 'en', 'core/table/table', 'filters', 'Filters', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1453, 1, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1454, 1, 'en', 'core/table/table', 'select_option', 'Select option', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1455, 1, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1456, 1, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1457, 1, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1458, 1, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1459, 1, 'en', 'core/table/table', 'search', 'Search...', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1460, 1, 'vi', 'core/table/general', 'operations', 'H??nh ?????ng', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1461, 1, 'vi', 'core/table/general', 'loading_data', '??ang t???i d??? li???u t??? h??? th???ng', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1462, 1, 'vi', 'core/table/general', 'display', 'Hi???n th???', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1463, 1, 'vi', 'core/table/general', 'all', 'T???t c???', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1464, 1, 'vi', 'core/table/general', 'edit_entry', 'S???a', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1465, 1, 'vi', 'core/table/general', 'delete_entry', 'Xo??', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1466, 1, 'vi', 'core/table/general', 'show_from', 'Hi???n th??? t???', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1467, 1, 'vi', 'core/table/general', 'to', '?????n', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1468, 1, 'vi', 'core/table/general', 'in', 'trong t???ng s???', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1469, 1, 'vi', 'core/table/general', 'records', 'b???n ghi', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1470, 1, 'vi', 'core/table/general', 'no_data', 'Kh??ng c?? d??? li???u ????? hi???n th???', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1471, 1, 'vi', 'core/table/general', 'no_record', 'kh??ng c?? b???n ghi n??o', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1472, 1, 'vi', 'core/table/general', 'loading', '??ang t???i d??? li???u t??? h??? th???ng', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1473, 1, 'vi', 'core/table/general', 'confirm_delete', 'X??c nh???n xo??', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1474, 1, 'vi', 'core/table/general', 'confirm_delete_msg', 'B???n c?? ch???c ch???n mu???n xo?? b???n ghi n??y?', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1475, 1, 'vi', 'core/table/general', 'cancel', 'Hu??? b???', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1476, 1, 'vi', 'core/table/general', 'delete', 'Xo??', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1477, 1, 'vi', 'core/table/general', 'close', '????ng', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1478, 1, 'vi', 'core/table/general', 'is_equal_to', 'B???ng v???i', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1479, 1, 'vi', 'core/table/general', 'greater_than', 'L???n h??n', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1480, 1, 'vi', 'core/table/general', 'less_than', 'Nh??? h??n', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1481, 1, 'vi', 'core/table/general', 'value', 'Gi?? tr???', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1482, 1, 'vi', 'core/table/general', 'select_field', 'Ch???n tr?????ng', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1483, 1, 'vi', 'core/table/general', 'reset', 'L??m m???i', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1484, 1, 'vi', 'core/table/general', 'add_additional_filter', 'Th??m b??? l???c', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1485, 1, 'vi', 'core/table/general', 'apply', '??p d???ng', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1486, 1, 'vi', 'core/table/general', 'select_option', 'L???a ch???n', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1487, 1, 'vi', 'core/table/general', 'filters', 'L???c d??? li???u', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1488, 1, 'vi', 'core/table/general', 'bulk_change', 'Thay ?????i h??ng lo???t', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1489, 1, 'vi', 'core/table/general', 'bulk_actions', 'H??nh ?????ng', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1490, 1, 'vi', 'core/table/general', 'contains', 'Bao g???m', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1491, 1, 'vi', 'core/table/general', 'filtered', '(???? ???????c l???c t??? _MAX_ b???n ghi)', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1492, 1, 'en', 'packages/menu/menu', 'name', 'Menus', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1493, 1, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1494, 1, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1495, 1, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1496, 1, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1497, 1, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1498, 1, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2021-06-11 08:03:24', '2021-06-11 08:03:24'),
(1499, 1, 'en', 'packages/menu/menu', 'remove', 'Remove', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1500, 1, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1501, 1, 'en', 'packages/menu/menu', 'title', 'Title', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1502, 1, 'en', 'packages/menu/menu', 'icon', 'Icon', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1503, 1, 'en', 'packages/menu/menu', 'url', 'URL', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1504, 1, 'en', 'packages/menu/menu', 'target', 'Target', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1505, 1, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1506, 1, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1507, 1, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1508, 1, 'en', 'packages/menu/menu', 'create', 'Create menu', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1509, 1, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1510, 1, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1511, 1, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1512, 1, 'vi', 'packages/menu/menu', 'name', 'Menu', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1513, 1, 'vi', 'packages/menu/menu', 'cancel', 'Hu??y bo??', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1514, 1, 'vi', 'packages/menu/menu', 'add_link', 'Th??m li??n k???t', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1515, 1, 'vi', 'packages/menu/menu', 'add_to_menu', 'Th??m v??o tr??nh ????n', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1516, 1, 'vi', 'packages/menu/menu', 'basic_info', 'Th??ng tin c?? b???n', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1517, 1, 'vi', 'packages/menu/menu', 'blank_open_link', 'M??? li??n k???t trong tab m???i', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1518, 1, 'vi', 'packages/menu/menu', 'css_class', 'CSS class', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1519, 1, 'vi', 'packages/menu/menu', 'custom_link', 'Li??n k???t t??y ch???n', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1520, 1, 'vi', 'packages/menu/menu', 'icon', 'Bi???u t?????ng', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1521, 1, 'vi', 'packages/menu/menu', 'key_name', 'T??n menu (key::key)', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1522, 1, 'vi', 'packages/menu/menu', 'remove', 'X??a', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1523, 1, 'vi', 'packages/menu/menu', 'self_open_link', 'M??? li??n k???t trong tab hi???n t???i', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1524, 1, 'vi', 'packages/menu/menu', 'structure', 'C???u tr??c tr??nh ????n', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1525, 1, 'vi', 'packages/menu/menu', 'target', 'Target', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1526, 1, 'vi', 'packages/menu/menu', 'title', 'Ti??u ?????', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1527, 1, 'vi', 'packages/menu/menu', 'url', 'URL', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1528, 1, 'vi', 'packages/menu/menu', 'create', 'T???o tr??nh ????n', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1529, 1, 'vi', 'packages/menu/menu', 'edit', 'S???a tr??nh ????n', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1530, 1, 'en', 'packages/optimize/optimize', 'settings.title', 'Optimize page speed', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1531, 1, 'en', 'packages/optimize/optimize', 'settings.description', 'Minify HTML output, inline CSS, remove comments...', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1532, 1, 'en', 'packages/optimize/optimize', 'settings.enable', 'Enable optimize page speed?', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1533, 1, 'en', 'packages/page/pages', 'create', 'Create new page', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1534, 1, 'en', 'packages/page/pages', 'edit', 'Edit page', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1535, 1, 'en', 'packages/page/pages', 'form.name', 'Name', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1536, 1, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1537, 1, 'en', 'packages/page/pages', 'form.content', 'Content', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1538, 1, 'en', 'packages/page/pages', 'form.note', 'Note content', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1539, 1, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1540, 1, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1541, 1, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1542, 1, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1543, 1, 'en', 'packages/page/pages', 'pages', 'Pages', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1544, 1, 'en', 'packages/page/pages', 'menu', 'Pages', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1545, 1, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1546, 1, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1547, 1, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1548, 1, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1549, 1, 'en', 'packages/page/pages', 'settings.select', '??? Select ???', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1550, 1, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1551, 1, 'vi', 'packages/page/pages', 'model', 'Trang', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1552, 1, 'vi', 'packages/page/pages', 'models', 'Trang', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1553, 1, 'vi', 'packages/page/pages', 'list', 'Danh sa??ch trang', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1554, 1, 'vi', 'packages/page/pages', 'create', 'Th??m trang', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1555, 1, 'vi', 'packages/page/pages', 'edit', 'S????a trang', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1556, 1, 'vi', 'packages/page/pages', 'form.name', 'Ti??u ????? trang', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1557, 1, 'vi', 'packages/page/pages', 'form.note', 'N????i dung ghi chu??', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1558, 1, 'vi', 'packages/page/pages', 'form.name_placeholder', 'T??n trang (t???i ??a 120 k?? t???)', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1559, 1, 'vi', 'packages/page/pages', 'form.content', 'N???i dung', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1560, 1, 'vi', 'packages/page/pages', 'notices.no_select', 'Cho??n i??t nh????t 1 trang ?????? th????c hi????n ha??nh ??????ng na??y!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1561, 1, 'vi', 'packages/page/pages', 'notices.update_success_message', 'C????p nh????t tha??nh c??ng', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1562, 1, 'vi', 'packages/page/pages', 'deleted', 'Xo??a trang tha??nh c??ng', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1563, 1, 'vi', 'packages/page/pages', 'cannot_delete', 'Kh??ng th???? xo??a trang', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1564, 1, 'vi', 'packages/page/pages', 'menu', 'Trang', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1565, 1, 'vi', 'packages/page/pages', 'menu_name', 'Trang', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1566, 1, 'vi', 'packages/page/pages', 'edit_this_page', 'S???a trang n??y', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1567, 1, 'vi', 'packages/page/pages', 'pages', 'Trang', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1568, 1, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1569, 1, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1570, 1, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1571, 1, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1572, 1, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1573, 1, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1574, 1, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1575, 1, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1576, 1, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1577, 1, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1578, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1579, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1580, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1581, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1582, 1, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1583, 1, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2021-06-11 08:03:25', '2021-06-11 08:03:25');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1584, 1, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1585, 1, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1586, 1, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1587, 1, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1588, 1, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1589, 1, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1590, 1, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1591, 1, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1592, 1, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin has been removed!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1593, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1594, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1595, 1, 'en', 'packages/plugin-management/plugin', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1596, 1, 'en', 'packages/plugin-management/plugin', 'plugin_is_not_ready', 'Plugin :name is not ready to use', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1597, 1, 'vi', 'packages/plugin-management/plugin', 'activate', 'K??ch ho???t', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1598, 1, 'vi', 'packages/plugin-management/plugin', 'author', 'T??c gi???', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1599, 1, 'vi', 'packages/plugin-management/plugin', 'version', 'Phi??n b???n', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1600, 1, 'vi', 'packages/plugin-management/plugin', 'activated', '???? k??ch ho???t', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1601, 1, 'vi', 'packages/plugin-management/plugin', 'deactivate', 'H???y k??ch ho???t', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1602, 1, 'vi', 'packages/plugin-management/plugin', 'deactivated', '???? v?? hi???u', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1603, 1, 'vi', 'packages/plugin-management/plugin', 'disabled_in_demo_mode', 'B???n kh??ng th??? th???c hi???n h??nh ?????ng n??y ??? ch??? ????? demo', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1604, 1, 'vi', 'packages/plugin-management/plugin', 'enabled', 'K??ch ho???t', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1605, 1, 'vi', 'packages/plugin-management/plugin', 'invalid_plugin', 'G??i m??? r???ng kh??ng h???p l???', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1606, 1, 'vi', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'C???p nh???t tr???ng th??i g??i m??? r???ng th??nh c??ng', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1607, 1, 'vi', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Vui l??ng k??ch ho???t c??c ti???n ??ch m??? r???ng :plugins tr?????c khi k??ch ho???t ti???n ??ch n??y', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1608, 1, 'vi', 'packages/plugin-management/plugin', 'plugins', 'Ti???n ??ch m??? r???ng', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1609, 1, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1610, 1, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1611, 1, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1612, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1613, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1614, 1, 'vi', 'packages/seo-helper/seo-helper', 'meta_box_header', 'T???i ??u ho?? b??? m??y t??m ki???m (SEO)', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1615, 1, 'vi', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Ch???nh s???a SEO', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1616, 1, 'vi', 'packages/seo-helper/seo-helper', 'default_description', 'Thi???t l???p c??c th??? m?? t??? gi??p ng?????i d??ng d??? d??ng t??m th???y tr??n c??ng c??? t??m ki???m nh?? Google.', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1617, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_title', 'Ti??u ????? trang', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1618, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_description', 'M?? t??? trang', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1619, 1, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1620, 1, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1621, 1, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1622, 1, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1623, 1, 'en', 'packages/slug/slug', 'settings.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1624, 1, 'en', 'packages/slug/slug', 'preview', 'Preview', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1625, 1, 'en', 'packages/theme/theme', 'name', 'Themes', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1626, 1, 'en', 'packages/theme/theme', 'theme', 'Theme', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1627, 1, 'en', 'packages/theme/theme', 'author', 'Author', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1628, 1, 'en', 'packages/theme/theme', 'version', 'Version', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1629, 1, 'en', 'packages/theme/theme', 'description', 'Description', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1630, 1, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1631, 1, 'en', 'packages/theme/theme', 'active', 'Active', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1632, 1, 'en', 'packages/theme/theme', 'activated', 'Activated', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1633, 1, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1634, 1, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1635, 1, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1636, 1, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1637, 1, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1638, 1, 'en', 'packages/theme/theme', 'custom_js', 'Custom JS', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1639, 1, 'en', 'packages/theme/theme', 'custom_header_js', 'Header JS', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1640, 1, 'en', 'packages/theme/theme', 'custom_header_js_placeholder', 'JS in header of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1641, 1, 'en', 'packages/theme/theme', 'custom_body_js', 'Body JS', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1642, 1, 'en', 'packages/theme/theme', 'custom_body_js_placeholder', 'JS in body of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1643, 1, 'en', 'packages/theme/theme', 'custom_footer_js', 'Footer JS', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1644, 1, 'en', 'packages/theme/theme', 'custom_footer_js_placeholder', 'JS in footer of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1645, 1, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1646, 1, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1647, 1, 'en', 'packages/theme/theme', 'remove', 'Remove', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1648, 1, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1649, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1650, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1651, 1, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1652, 1, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1653, 1, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1654, 1, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1655, 1, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1656, 1, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1657, 1, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1658, 1, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1659, 1, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1660, 1, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1661, 1, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1662, 1, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1663, 1, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1664, 1, 'en', 'packages/theme/theme', 'update_custom_js_success', 'Update custom JS successfully!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1665, 1, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1666, 1, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1667, 1, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1668, 1, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1669, 1, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1670, 1, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1671, 1, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1672, 1, 'en', 'packages/theme/theme', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1673, 1, 'vi', 'packages/theme/theme', 'activated', '???? k??ch ho???t', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1674, 1, 'vi', 'packages/theme/theme', 'active', 'K??ch ho???t', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1675, 1, 'vi', 'packages/theme/theme', 'active_success', 'K??ch ho???t giao di???n th??nh c??ng!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1676, 1, 'vi', 'packages/theme/theme', 'author', 'T??c gi???', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1677, 1, 'vi', 'packages/theme/theme', 'description', 'M?? t???', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1678, 1, 'vi', 'packages/theme/theme', 'theme', 'Giao di???n', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1679, 1, 'vi', 'packages/theme/theme', 'theme_options', 'Tu??? ch???n giao di???n', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1680, 1, 'vi', 'packages/theme/theme', 'version', 'Phi??n b???n', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1681, 1, 'vi', 'packages/theme/theme', 'save_changes', 'L??u thay ?????i', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1682, 1, 'vi', 'packages/theme/theme', 'developer_mode', '??ang k??ch ho???t ch??? ????? th??? nghi???m', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1683, 1, 'vi', 'packages/theme/theme', 'custom_css', 'Tu??? ch???nh CSS', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1684, 1, 'en', 'packages/widget/global', 'name', 'Widgets', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1685, 1, 'en', 'packages/widget/global', 'create', 'New widget', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1686, 1, 'en', 'packages/widget/global', 'edit', 'Edit widget', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1687, 1, 'en', 'packages/widget/global', 'delete', 'Delete', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1688, 1, 'en', 'packages/widget/global', 'available', 'Available Widgets', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1689, 1, 'en', 'packages/widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1690, 1, 'en', 'packages/widget/global', 'number_tag_display', 'Number tags will be display', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1691, 1, 'en', 'packages/widget/global', 'number_post_display', 'Number posts will be display', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1692, 1, 'en', 'packages/widget/global', 'select_menu', 'Select Menu', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1693, 1, 'en', 'packages/widget/global', 'widget_text', 'Text', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1694, 1, 'en', 'packages/widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1695, 1, 'en', 'packages/widget/global', 'widget_recent_post', 'Recent Posts', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1696, 1, 'en', 'packages/widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1697, 1, 'en', 'packages/widget/global', 'widget_custom_menu', 'Custom Menu', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1698, 1, 'en', 'packages/widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1699, 1, 'en', 'packages/widget/global', 'widget_tag', 'Tags', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1700, 1, 'en', 'packages/widget/global', 'widget_tag_description', 'Popular tags', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1701, 1, 'en', 'packages/widget/global', 'save_success', 'Save widget successfully!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1702, 1, 'en', 'packages/widget/global', 'delete_success', 'Delete widget successfully!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1703, 1, 'en', 'packages/widget/widget', 'name', 'Widgets', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1704, 1, 'en', 'packages/widget/widget', 'create', 'New widget', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1705, 1, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1706, 1, 'en', 'packages/widget/widget', 'delete', 'Delete', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1707, 1, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1708, 1, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1709, 1, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1710, 1, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1711, 1, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1712, 1, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1713, 1, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1714, 1, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1715, 1, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1716, 1, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1717, 1, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1718, 1, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1719, 1, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1720, 1, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1721, 1, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1722, 1, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1723, 1, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1724, 1, 'vi', 'packages/widget/global', 'name', 'Widgets', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1725, 1, 'vi', 'packages/widget/global', 'create', 'New widget', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1726, 1, 'vi', 'packages/widget/global', 'edit', 'Edit widget', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1727, 1, 'vi', 'packages/widget/global', 'available', 'Ti???n ??ch c?? s???n', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1728, 1, 'vi', 'packages/widget/global', 'delete', 'X??a', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1729, 1, 'vi', 'packages/widget/global', 'instruction', '????? k??ch ho???t ti???n ??ch, h??y k??o n?? v??o sidebar ho???c nh???n v??o n??. ????? h???y k??ch ho???t ti???n ??ch v?? x??a c??c thi???t l???p c???a ti???n ??ch, k??o n?? quay tr??? l???i.', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1730, 1, 'vi', 'packages/widget/global', 'number_post_display', 'S??? b??i vi???t s??? hi???n th???', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1731, 1, 'vi', 'packages/widget/global', 'number_tag_display', 'S??? th??? s??? hi???n th???', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1732, 1, 'vi', 'packages/widget/global', 'select_menu', 'L???a ch???n tr??nh ????n', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1733, 1, 'vi', 'packages/widget/global', 'widget_custom_menu', 'Menu t??y ch???nh', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1734, 1, 'vi', 'packages/widget/global', 'widget_custom_menu_description', 'Th??m menu t??y ch???nh v??o khu v???c ti???n ??ch c???a b???n', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1735, 1, 'vi', 'packages/widget/global', 'widget_recent_post', 'B??i vi???t g???n ????y', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1736, 1, 'vi', 'packages/widget/global', 'widget_recent_post_description', 'Ti???n ??ch b??i vi???t g???n ????y', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1737, 1, 'vi', 'packages/widget/global', 'widget_tag', 'Th???', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1738, 1, 'vi', 'packages/widget/global', 'widget_tag_description', 'Th??? ph??? bi???n, s??? d???ng nhi???u', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1739, 1, 'vi', 'packages/widget/global', 'widget_text', 'V??n b???n', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1740, 1, 'vi', 'packages/widget/global', 'widget_text_description', 'V??n b???n t??y ?? ho???c HTML.', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1741, 1, 'vi', 'packages/widget/global', 'delete_success', 'Xo?? ti???n ??ch th??nh c??ng', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1742, 1, 'vi', 'packages/widget/global', 'save_success', 'L??u ti???n ??ch th??nh c??ng!', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1743, 1, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1744, 1, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1745, 1, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1746, 1, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1747, 1, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1748, 1, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1749, 1, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1750, 1, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1751, 1, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1752, 1, 'en', 'plugins/analytics/analytics', 'views', 'views', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1753, 1, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1754, 1, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1755, 1, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1756, 1, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1757, 1, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1758, 1, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1759, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1760, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1761, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1762, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1763, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1764, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1765, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1766, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1767, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1768, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1769, 1, 'vi', 'plugins/analytics/analytics', 'avg_duration', 'Trung b??nh', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1770, 1, 'vi', 'plugins/analytics/analytics', 'bounce_rate', 'T??? l??? tho??t', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1771, 1, 'vi', 'plugins/analytics/analytics', 'page_session', 'Trang/Phi??n', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1772, 1, 'vi', 'plugins/analytics/analytics', 'pageviews', 'L?????t xem', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1773, 1, 'vi', 'plugins/analytics/analytics', 'sessions', 'Phi??n', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1774, 1, 'vi', 'plugins/analytics/analytics', 'views', 'l?????t xem', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1775, 1, 'vi', 'plugins/analytics/analytics', 'visitors', 'Ng?????i truy c???p', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1776, 1, 'vi', 'plugins/analytics/analytics', 'visits', 'l?????t gh?? th??m', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1777, 1, 'vi', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Th??ng tin c??i ?????t kh??ng h???p l???. T??i li???u h?????ng d???n t???i ????y: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1778, 1, 'vi', 'plugins/analytics/analytics', 'new_users', 'L?????t kh??ch m???i', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1779, 1, 'vi', 'plugins/analytics/analytics', 'percent_new_session', 'T??? l??? kh??ch m???i', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1780, 1, 'vi', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Ng??y b???t ?????u :start_date kh??ng th??? sau ng??y k???t th??c :end_date', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1781, 1, 'vi', 'plugins/analytics/analytics', 'view_id_not_specified', 'B???n ph???i cung c???p View ID h???p l??. T??i li???u h?????ng d???n t???i ????y: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1782, 1, 'vi', 'plugins/analytics/analytics', 'wrong_configuration', '????? xem d??? li???u th???ng k?? Google Analytics, b???n c???n l???y th??ng tin Client ID v?? th??m n?? v??o trong ph???n c??i ?????t. B???n c??ng c???n th??ng tin x??c th???c d???ng JSON. T??i li???u h?????ng d???n t???i ????y: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1783, 1, 'vi', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1784, 1, 'vi', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1785, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1786, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1787, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1788, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1789, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1790, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1791, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Tr??nh duy???t truy c???p nhi???u', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1792, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_general', 'Th???ng k?? truy c???p', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1793, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_page', 'Trang ???????c xem nhi???u nh???t', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1794, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Trang gi???i thi???u nhi???u', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1795, 1, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1796, 1, 'en', 'plugins/audit-log/history', 'created', 'created', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1797, 1, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1798, 1, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1799, 1, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2021-06-11 08:03:25', '2021-06-11 08:03:25'),
(1800, 1, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1801, 1, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1802, 1, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1803, 1, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1804, 1, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1805, 1, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1806, 1, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1807, 1, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1808, 1, 'en', 'plugins/audit-log/history', 'post', 'post', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1809, 1, 'en', 'plugins/audit-log/history', 'page', 'page', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1810, 1, 'en', 'plugins/audit-log/history', 'category', 'category', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1811, 1, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1812, 1, 'en', 'plugins/audit-log/history', 'user', 'user', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1813, 1, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1814, 1, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1815, 1, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1816, 1, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1817, 1, 'en', 'plugins/audit-log/history', 'action', 'Action', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1818, 1, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1819, 1, 'en', 'plugins/audit-log/history', 'system', 'System', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1820, 1, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1821, 1, 'vi', 'plugins/audit-log/history', 'name', 'L???ch s??? ho???t ?????ng', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1822, 1, 'vi', 'plugins/audit-log/history', 'created', ' ???? t???o', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1823, 1, 'vi', 'plugins/audit-log/history', 'updated', ' ???? c???p nh???t', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1824, 1, 'vi', 'plugins/audit-log/history', 'deleted', ' ???? x??a', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1825, 1, 'vi', 'plugins/audit-log/history', 'attached', '????nh k??m', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1826, 1, 'vi', 'plugins/audit-log/history', 'backup', 'sao l??u', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1827, 1, 'vi', 'plugins/audit-log/history', 'category', 'danh m???c', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1828, 1, 'vi', 'plugins/audit-log/history', 'changed password', 'thay ?????i m???t kh???u', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1829, 1, 'vi', 'plugins/audit-log/history', 'contact', 'li??n h???', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1830, 1, 'vi', 'plugins/audit-log/history', 'custom-field', 'khung m??? r???ng', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1831, 1, 'vi', 'plugins/audit-log/history', 'logged in', '????ng nh???p', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1832, 1, 'vi', 'plugins/audit-log/history', 'logged out', '????ng xu???t', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1833, 1, 'vi', 'plugins/audit-log/history', 'menu', 'tr??nh ????n', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1834, 1, 'vi', 'plugins/audit-log/history', 'of the system', 'kh???i h??? th???ng', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1835, 1, 'vi', 'plugins/audit-log/history', 'page', 'trang', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1836, 1, 'vi', 'plugins/audit-log/history', 'post', 'b??i vi???t', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1837, 1, 'vi', 'plugins/audit-log/history', 'shared', '???? chia s???', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1838, 1, 'vi', 'plugins/audit-log/history', 'tag', 'th???', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1839, 1, 'vi', 'plugins/audit-log/history', 'to the system', 'v??o h??? th???ng', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1840, 1, 'vi', 'plugins/audit-log/history', 'updated profile', 'c???p nh???t t??i kho???n', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1841, 1, 'vi', 'plugins/audit-log/history', 'user', 'th??nh vi??n', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1842, 1, 'vi', 'plugins/audit-log/history', 'widget_audit_logs', 'L???ch s??? ho???t ?????ng', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1843, 1, 'en', 'plugins/backup/backup', 'name', 'Backup', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1844, 1, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1845, 1, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1846, 1, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1847, 1, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1848, 1, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1849, 1, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1850, 1, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1851, 1, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1852, 1, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1853, 1, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1854, 1, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1855, 1, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1856, 1, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1857, 1, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1858, 1, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1859, 1, 'en', 'plugins/backup/backup', 'size', 'Size', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1860, 1, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1861, 1, 'vi', 'plugins/backup/backup', 'backup_description', 'Sao l??u c?? s??? d??? li???u v?? th?? m???c /uploads', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1862, 1, 'vi', 'plugins/backup/backup', 'create', 'T???o b???n sao l??u', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1863, 1, 'vi', 'plugins/backup/backup', 'create_backup_success', 'T???o b???n sao l??u th??nh c??ng!', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1864, 1, 'vi', 'plugins/backup/backup', 'create_btn', 'T???o', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1865, 1, 'vi', 'plugins/backup/backup', 'delete_backup_success', 'X??a b???n sao l??u th??nh c??ng!', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1866, 1, 'vi', 'plugins/backup/backup', 'generate_btn', 'T???o sao l??u', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1867, 1, 'vi', 'plugins/backup/backup', 'name', 'Sao l??u', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1868, 1, 'vi', 'plugins/backup/backup', 'restore', 'Kh??i ph???c b???n sao l??u', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1869, 1, 'vi', 'plugins/backup/backup', 'restore_backup_success', 'Kh??i ph???c b???n sao l??u th??nh c??ng', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1870, 1, 'vi', 'plugins/backup/backup', 'restore_btn', 'Kh??i ph???c', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1871, 1, 'vi', 'plugins/backup/backup', 'restore_confirm_msg', 'B???n c?? ch???c ch???n mu???n kh??i ph???c h??? th???ng v??? th???i ??i???m t???o b???n sao l??u n??y?', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1872, 1, 'vi', 'plugins/backup/backup', 'restore_tooltip', 'Kh??i ph???c b???n sao l??u n??y', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1873, 1, 'vi', 'plugins/backup/backup', 'download_database', 'T???i v??? b???n sao l??u CSDL', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1874, 1, 'vi', 'plugins/backup/backup', 'download_uploads_folder', 'T???i v??? b???n sao l??u th?? m???c uploads', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1875, 1, 'vi', 'plugins/backup/backup', 'menu_name', 'Sao l??u', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1876, 1, 'vi', 'plugins/backup/backup', 'demo_alert', 'Ch??o kh??ch, n???u b???n th???y trang demo b??? ph?? ho???i, h??y t???i <a href=\":link\">trang sao l??u</a> v?? kh??i ph???c b???n sao l??u cu???i c??ng. C???m ??n b???n nhi???u!', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1877, 1, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1878, 1, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1879, 1, 'en', 'plugins/blog/base', 'select', '-- Select --', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1880, 1, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1881, 1, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1882, 1, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1883, 1, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1884, 1, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1885, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1886, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1887, 1, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1888, 1, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1889, 1, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1890, 1, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1891, 1, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1892, 1, 'en', 'plugins/blog/categories', 'none', 'None', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1893, 1, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1894, 1, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1895, 1, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1896, 1, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1897, 1, 'en', 'plugins/blog/member', 'posts', 'Posts', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1898, 1, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1899, 1, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1900, 1, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1901, 1, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1902, 1, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1903, 1, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1904, 1, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1905, 1, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1906, 1, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1907, 1, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1908, 1, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1909, 1, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1910, 1, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1911, 1, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1912, 1, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1913, 1, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1914, 1, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1915, 1, 'en', 'plugins/blog/posts', 'post', 'Post', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1916, 1, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1917, 1, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1918, 1, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1919, 1, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1920, 1, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1921, 1, 'en', 'plugins/blog/posts', 'category', 'Category', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1922, 1, 'en', 'plugins/blog/posts', 'author', 'Author', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1923, 1, 'en', 'plugins/blog/settings', 'select', '-- Select --', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1924, 1, 'en', 'plugins/blog/settings', 'blog_page_id', 'Blog page', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1925, 1, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1926, 1, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1927, 1, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1928, 1, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1929, 1, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1930, 1, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1931, 1, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1932, 1, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1933, 1, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1934, 1, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1935, 1, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1936, 1, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1937, 1, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1938, 1, 'vi', 'plugins/blog/base', 'menu_name', 'Blog', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1939, 1, 'vi', 'plugins/blog/categories', 'model', 'Danh m???c', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1940, 1, 'vi', 'plugins/blog/categories', 'models', 'Danh m???c', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1941, 1, 'vi', 'plugins/blog/categories', 'list', 'Danh sa??ch danh mu??c', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1942, 1, 'vi', 'plugins/blog/categories', 'create', 'Th??m danh mu??c m????i', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1943, 1, 'vi', 'plugins/blog/categories', 'edit', 'S????a danh mu??c', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1944, 1, 'vi', 'plugins/blog/categories', 'menu_name', 'Danh m???c', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1945, 1, 'vi', 'plugins/blog/categories', 'edit_this_category', 'S???a danh m???c n??y', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1946, 1, 'vi', 'plugins/blog/categories', 'menu', 'Danh m???c', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1947, 1, 'vi', 'plugins/blog/posts', 'model', 'B??i vi???t', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1948, 1, 'vi', 'plugins/blog/posts', 'models', 'B??i vi???t', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1949, 1, 'vi', 'plugins/blog/posts', 'list', 'Danh sa??ch ba??i vi???t', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1950, 1, 'vi', 'plugins/blog/posts', 'create', 'Th??m ba??i vi???t', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1951, 1, 'vi', 'plugins/blog/posts', 'edit', 'S????a ba??i vi???t', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1952, 1, 'vi', 'plugins/blog/posts', 'form.name', 'T??n', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1953, 1, 'vi', 'plugins/blog/posts', 'form.name_placeholder', 'T??n b??i vi???t (T???i ??a 120 k?? t???)', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1954, 1, 'vi', 'plugins/blog/posts', 'form.description', 'M?? t???', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1955, 1, 'vi', 'plugins/blog/posts', 'form.description_placeholder', 'M?? t??? ng???n cho b??i vi???t (T???i ??a 400 k?? t???)', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1956, 1, 'vi', 'plugins/blog/posts', 'form.categories', 'Chuy??n m???c', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1957, 1, 'vi', 'plugins/blog/posts', 'form.tags', 'T??? kh??a', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1958, 1, 'vi', 'plugins/blog/posts', 'form.tags_placeholder', 'Th??m t??? kh??a', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1959, 1, 'vi', 'plugins/blog/posts', 'form.content', 'N???i dung', '2021-06-11 08:03:26', '2021-06-11 08:03:26');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1960, 1, 'vi', 'plugins/blog/posts', 'form.featured', 'B??i vi???t n???i b???t?', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1961, 1, 'vi', 'plugins/blog/posts', 'form.note', 'N????i dung ghi chu??', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1962, 1, 'vi', 'plugins/blog/posts', 'form.format_type', '?????nh d???ng', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1963, 1, 'vi', 'plugins/blog/posts', 'post_deleted', 'Xo??a ba??i vi????t tha??nh c??ng', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1964, 1, 'vi', 'plugins/blog/posts', 'cannot_delete', 'Kh??ng th???? xo??a ba??i vi????t', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1965, 1, 'vi', 'plugins/blog/posts', 'menu_name', 'B??i vi???t', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1966, 1, 'vi', 'plugins/blog/posts', 'edit_this_post', 'S???a b??i vi???t n??y', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1967, 1, 'vi', 'plugins/blog/posts', 'no_new_post_now', 'Hi???n t???i kh??ng c?? b??i vi???t m???i!', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1968, 1, 'vi', 'plugins/blog/posts', 'posts', 'B??i vi???t', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1969, 1, 'vi', 'plugins/blog/posts', 'widget_posts_recent', 'B??i vi???t g???n ????y', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1970, 1, 'vi', 'plugins/blog/posts', 'author', 'T??c gi???', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1971, 1, 'vi', 'plugins/blog/tags', 'model', 'Th???', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1972, 1, 'vi', 'plugins/blog/tags', 'models', 'Th???', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1973, 1, 'vi', 'plugins/blog/tags', 'list', 'Danh sa??ch th???', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1974, 1, 'vi', 'plugins/blog/tags', 'create', 'Th??m th??? m????i', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1975, 1, 'vi', 'plugins/blog/tags', 'edit', 'S????a th???', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1976, 1, 'vi', 'plugins/blog/tags', 'form.name', 'T??n', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1977, 1, 'vi', 'plugins/blog/tags', 'form.name_placeholder', 'T??n th??? (T???i ??a 120 k?? t???)', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1978, 1, 'vi', 'plugins/blog/tags', 'form.description', 'M?? t???', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1979, 1, 'vi', 'plugins/blog/tags', 'form.description_placeholder', 'M?? t??? ng???n cho tag (T???i ??a 400 k?? t???)', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1980, 1, 'vi', 'plugins/blog/tags', 'form.categories', 'Chuy??n m???c', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1981, 1, 'vi', 'plugins/blog/tags', 'notices.no_select', 'Cho??n i??t nh????t 1 ba??i vi????t ?????? th????c hi????n ha??nh ??????ng na??y!', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1982, 1, 'vi', 'plugins/blog/tags', 'cannot_delete', 'Kh??ng th???? xo??a th???', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1983, 1, 'vi', 'plugins/blog/tags', 'deleted', 'Xo??a th??? tha??nh c??ng', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1984, 1, 'vi', 'plugins/blog/tags', 'menu_name', 'Th???', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1985, 1, 'vi', 'plugins/blog/tags', 'edit_this_tag', 'S???a th??? n??y', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1986, 1, 'vi', 'plugins/blog/tags', 'menu', 'Th???', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1987, 1, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1988, 1, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1989, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1990, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1991, 1, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1992, 1, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1993, 1, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1994, 1, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1995, 1, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1996, 1, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1997, 1, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1998, 1, 'en', 'plugins/career/career', 'name', 'Careers', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(1999, 1, 'en', 'plugins/career/career', 'create', 'New career', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2000, 1, 'en', 'plugins/career/career', 'edit', 'Edit career', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2001, 1, 'en', 'plugins/career/career', 'location', 'Location', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2002, 1, 'en', 'plugins/career/career', 'salary', 'Salary', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2003, 1, 'vi', 'plugins/career/career', 'name', 'Tuy???n d???ng', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2004, 1, 'vi', 'plugins/career/career', 'create', 'Th??m tin tuy???n d???ng', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2005, 1, 'vi', 'plugins/career/career', 'edit', 'S???a tin tuy???n d???ng', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2006, 1, 'vi', 'plugins/career/career', 'location', '?????a ??i???m', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2007, 1, 'vi', 'plugins/career/career', 'salary', 'M???c l????ng', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2008, 1, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2009, 1, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2010, 1, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2011, 1, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2012, 1, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2013, 1, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2014, 1, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2015, 1, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2016, 1, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2017, 1, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2018, 1, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2019, 1, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2020, 1, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2021, 1, 'en', 'plugins/contact/contact', 'email.success', 'Send message successfully!', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2022, 1, 'en', 'plugins/contact/contact', 'email.failed', 'Can\'t send message on this time, please try again later!', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2023, 1, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2024, 1, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2025, 1, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2026, 1, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2027, 1, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2028, 1, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2029, 1, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2030, 1, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2031, 1, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2032, 1, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2033, 1, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2034, 1, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2035, 1, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2036, 1, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2037, 1, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2038, 1, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2039, 1, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2040, 1, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2041, 1, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2042, 1, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2043, 1, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2044, 1, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2045, 1, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2046, 1, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2047, 1, 'en', 'plugins/contact/contact', 'address', 'Address', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2048, 1, 'en', 'plugins/contact/contact', 'message', 'Message', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2049, 1, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2050, 1, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2051, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2052, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2053, 1, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2054, 1, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2055, 1, 'en', 'plugins/contact/contact', 'send', 'Send', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2056, 1, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2057, 1, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2058, 1, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2059, 1, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2060, 1, 'vi', 'plugins/contact/contact', 'menu', 'Li??n h????', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2061, 1, 'vi', 'plugins/contact/contact', 'model', 'Li??n h????', '2021-06-11 08:03:26', '2021-06-11 08:03:26'),
(2062, 1, 'vi', 'plugins/contact/contact', 'models', 'Li??n h????', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2063, 1, 'vi', 'plugins/contact/contact', 'list', 'Danh sa??ch li??n h????', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2064, 1, 'vi', 'plugins/contact/contact', 'edit', 'Xem li??n h????', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2065, 1, 'vi', 'plugins/contact/contact', 'tables.phone', '??i????n thoa??i', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2066, 1, 'vi', 'plugins/contact/contact', 'tables.email', 'Email', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2067, 1, 'vi', 'plugins/contact/contact', 'tables.full_name', 'Ho?? t??n', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2068, 1, 'vi', 'plugins/contact/contact', 'tables.time', 'Th???i gian', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2069, 1, 'vi', 'plugins/contact/contact', 'tables.address', '??i??a ?????a ch???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2070, 1, 'vi', 'plugins/contact/contact', 'tables.subject', 'Ti??u ?????', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2071, 1, 'vi', 'plugins/contact/contact', 'tables.content', 'N????i dung', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2072, 1, 'vi', 'plugins/contact/contact', 'notices.no_select', 'Cho??n i??t nh????t 1 li??n h???? ????? th????c hi????n ha??nh ??????ng na??y!', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2073, 1, 'vi', 'plugins/contact/contact', 'notices.update_success_message', 'C????p nh????t tha??nh c??ng', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2074, 1, 'vi', 'plugins/contact/contact', 'cannot_delete', 'Kh??ng th??? xo??a li??n h???? na??y', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2075, 1, 'vi', 'plugins/contact/contact', 'deleted', 'Li??n h???? ??a?? ????????c xo??a', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2076, 1, 'vi', 'plugins/contact/contact', 'contact_information', 'Th??ng tin li??n h????', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2077, 1, 'vi', 'plugins/contact/contact', 'email.title', 'Th??ng tin li??n h???? m????i', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2078, 1, 'vi', 'plugins/contact/contact', 'email.success', 'G????i tin nh????n tha??nh c??ng!', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2079, 1, 'vi', 'plugins/contact/contact', 'email.failed', 'Co?? l????i trong qua?? tri??nh g????i tin nh????n!', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2080, 1, 'vi', 'plugins/contact/contact', 'email.header', 'Email', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2081, 1, 'vi', 'plugins/contact/contact', 'form.name.required', 'T??n l?? b???t bu???c', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2082, 1, 'vi', 'plugins/contact/contact', 'form.email.required', 'Email l?? b???t bu???c', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2083, 1, 'vi', 'plugins/contact/contact', 'form.email.email', '?????a ch??? email kh??ng h???p l???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2084, 1, 'vi', 'plugins/contact/contact', 'form.content.required', 'N???i dung l?? b???t bu???c', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2085, 1, 'vi', 'plugins/contact/contact', 'form.g-recaptcha-response.required', 'Ha??y xa??c minh kh??ng pha??i la?? robot tr??????c khi g???i tin nh???n.', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2086, 1, 'vi', 'plugins/contact/contact', 'form.g-recaptcha-response.captcha', 'Ba??n ch??a xa??c minh kh??ng ph???i la?? robot tha??nh c??ng.', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2087, 1, 'vi', 'plugins/contact/contact', 'confirm_not_robot', 'X??c nh???n kh??ng ph???i ng?????i m??y', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2088, 1, 'vi', 'plugins/contact/contact', 'contact_sent_from', 'Li??n h??? n??y ???????c g???i t???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2089, 1, 'vi', 'plugins/contact/contact', 'form_address', '?????a ch???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2090, 1, 'vi', 'plugins/contact/contact', 'form_email', 'Th?? ??i???n t???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2091, 1, 'vi', 'plugins/contact/contact', 'form_message', 'Th??ng ??i???p', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2092, 1, 'vi', 'plugins/contact/contact', 'form_name', 'H??? t??n', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2093, 1, 'vi', 'plugins/contact/contact', 'form_phone', 'S??? ??i???n tho???i', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2094, 1, 'vi', 'plugins/contact/contact', 'message_content', 'N???i dung th??ng ??i???p', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2095, 1, 'vi', 'plugins/contact/contact', 'required_field', 'Nh???ng tr?????ng c?? d???u (<span style=\"color: red\">*</span>) l?? b???t bu???c.', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2096, 1, 'vi', 'plugins/contact/contact', 'send_btn', 'G???i tin nh???n', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2097, 1, 'vi', 'plugins/contact/contact', 'sender', 'Ng?????i g???i', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2098, 1, 'vi', 'plugins/contact/contact', 'sender_address', '?????a ch???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2099, 1, 'vi', 'plugins/contact/contact', 'sender_email', 'Th?? ??i???n t???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2100, 1, 'vi', 'plugins/contact/contact', 'sender_phone', 'S??? ??i???n tho???i', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2101, 1, 'vi', 'plugins/contact/contact', 'sent_from', 'Th?? ???????c g???i t???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2102, 1, 'vi', 'plugins/contact/contact', 'mark_as_read', '????nh d???u ???? ?????c', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2103, 1, 'vi', 'plugins/contact/contact', 'mark_as_unread', '????nh d???u ch??a ?????c', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2104, 1, 'vi', 'plugins/contact/contact', 'address', '?????a ch???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2105, 1, 'vi', 'plugins/contact/contact', 'message', 'Li??n h???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2106, 1, 'vi', 'plugins/contact/contact', 'new_msg_notice', 'B???n c?? <span class=\"bold\">:count</span> tin nh???n m???i', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2107, 1, 'vi', 'plugins/contact/contact', 'phone', '??i???n tho???i', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2108, 1, 'vi', 'plugins/contact/contact', 'statuses.read', '???? ?????c', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2109, 1, 'vi', 'plugins/contact/contact', 'statuses.unread', 'Ch??a ?????c', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2110, 1, 'vi', 'plugins/contact/contact', 'view_all', 'Xem t???t c???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2111, 1, 'vi', 'plugins/contact/contact', 'settings.email.title', 'Li??n h???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2112, 1, 'vi', 'plugins/contact/contact', 'settings.email.description', 'C???u h??nh th??ng tin cho m???c li??n h???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2113, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Th??ng b??o t???i admin', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2114, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'M???u n???i dung email g???i t???i admin khi c?? li??n h??? m???i', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2115, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2116, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2117, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2118, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2119, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2120, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2121, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2122, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2123, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2124, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2125, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2126, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2127, 1, 'en', 'plugins/language/language', 'name', 'Languages', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2128, 1, 'en', 'plugins/language/language', 'choose_language', 'Choose a language', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2129, 1, 'en', 'plugins/language/language', 'select_language', 'Select language', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2130, 1, 'en', 'plugins/language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2131, 1, 'en', 'plugins/language/language', 'language_name', 'Language name', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2132, 1, 'en', 'plugins/language/language', 'language_name_helper', 'The name is how it is displayed on your site (for example: English).', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2133, 1, 'en', 'plugins/language/language', 'locale', 'Locale', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2134, 1, 'en', 'plugins/language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>).', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2135, 1, 'en', 'plugins/language/language', 'language_code', 'Language code', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2136, 1, 'en', 'plugins/language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2137, 1, 'en', 'plugins/language/language', 'text_direction', 'Text direction', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2138, 1, 'en', 'plugins/language/language', 'text_direction_helper', 'Choose the text direction for the language', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2139, 1, 'en', 'plugins/language/language', 'left_to_right', 'Left to right', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2140, 1, 'en', 'plugins/language/language', 'right_to_left', 'Right to left', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2141, 1, 'en', 'plugins/language/language', 'flag', 'Flag', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2142, 1, 'en', 'plugins/language/language', 'flag_helper', 'Choose a flag for the language.', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2143, 1, 'en', 'plugins/language/language', 'order', 'Order', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2144, 1, 'en', 'plugins/language/language', 'order_helper', 'Position of the language in the language switcher', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2145, 1, 'en', 'plugins/language/language', 'add_new_language', 'Add new language', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2146, 1, 'en', 'plugins/language/language', 'code', 'Code', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2147, 1, 'en', 'plugins/language/language', 'default_language', 'Is default?', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2148, 1, 'en', 'plugins/language/language', 'actions', 'Actions', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2149, 1, 'en', 'plugins/language/language', 'translations', 'Translations', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2150, 1, 'en', 'plugins/language/language', 'edit', 'Edit', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2151, 1, 'en', 'plugins/language/language', 'edit_tooltip', 'Edit this language', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2152, 1, 'en', 'plugins/language/language', 'delete', 'Delete', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2153, 1, 'en', 'plugins/language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2154, 1, 'en', 'plugins/language/language', 'choose_default_language', 'Choose :language as default language', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2155, 1, 'en', 'plugins/language/language', 'current_language', 'Current record\'s language', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2156, 1, 'en', 'plugins/language/language', 'edit_related', 'Edit related language for this record', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2157, 1, 'en', 'plugins/language/language', 'add_language_for_item', 'Add other language version for this record', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2158, 1, 'en', 'plugins/language/language', 'settings', 'Settings', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2159, 1, 'en', 'plugins/language/language', 'language_hide_default', 'Hide default language from URL?', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2160, 1, 'en', 'plugins/language/language', 'language_display_flag_only', 'Flag only', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2161, 1, 'en', 'plugins/language/language', 'language_display_name_only', 'Name only', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2162, 1, 'en', 'plugins/language/language', 'language_display_all', 'Display all flag and name', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2163, 1, 'en', 'plugins/language/language', 'language_display', 'Language display', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2164, 1, 'en', 'plugins/language/language', 'switcher_display', 'Switcher language display', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2165, 1, 'en', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2166, 1, 'en', 'plugins/language/language', 'language_switcher_display_list', 'List', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2167, 1, 'en', 'plugins/language/language', 'current_language_edit_notification', 'You are editing \"<strong class=\"current_language_text\">:language</strong>\" version', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2168, 1, 'en', 'plugins/language/language', 'confirm-change-language', 'Confirm change language', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2169, 1, 'en', 'plugins/language/language', 'confirm-change-language-message', 'Do you really want to change language to \"<strong class=\"change_to_language_text\"></strong>\" ? This action will be override \"<strong class=\"change_to_language_text\"></strong>\" version if it\'s existed!', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2170, 1, 'en', 'plugins/language/language', 'confirm-change-language-btn', 'Confirm change', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2171, 1, 'en', 'plugins/language/language', 'hide_languages', 'Hide languages', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2172, 1, 'en', 'plugins/language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2173, 1, 'en', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2174, 1, 'en', 'plugins/language/language', 'show_all', 'Show all', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2175, 1, 'en', 'plugins/language/language', 'change_language', 'Language', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2176, 1, 'en', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Show item in default language if it is not existed in current language', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2177, 1, 'en', 'plugins/language/language', 'select_flag', 'Select a flag...', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2178, 1, 'en', 'plugins/language/language', 'delete_confirmation_message', 'Do you really want to delete this language? It also deletes all items in this language and cannot rollback!', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2179, 1, 'en', 'plugins/language/language', 'added_already', 'This language was added already!', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2180, 1, 'vi', 'plugins/language/language', 'name', 'Ng??n ng???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2181, 1, 'vi', 'plugins/language/language', 'choose_language', 'Ch???n m???t ng??n ng???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2182, 1, 'vi', 'plugins/language/language', 'select_language', 'Ch???n ng??n ng???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2183, 1, 'vi', 'plugins/language/language', 'choose_language_helper', 'B???n c?? th??? ch???n 1 ng??n ng??? trong danh s??ch ho???c nh???p tr???c ti???p n???i dung xu???ng c??c m???c d?????i', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2184, 1, 'vi', 'plugins/language/language', 'full_name', 'T??n ?????y ?????', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2185, 1, 'vi', 'plugins/language/language', 'full_name_helper', 'T??n ng??n ng??? s??? ???????c hi???n th??? tr??n website (v?? d???: Ti???ng Anh).', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2186, 1, 'vi', 'plugins/language/language', 'locale', 'Locale', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2187, 1, 'vi', 'plugins/language/language', 'locale_helper', 'Laravel Locale cho ng??n ng??? n??y (v?? d???: <code>en</code>). B???n s??? c???n t???o trong <code>/resources/lang/en</code> n???u n?? kh??ng c?? s???n cho ng??n ng??? n??y.', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2188, 1, 'vi', 'plugins/language/language', 'language_code', 'M?? ng??n ng???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2189, 1, 'vi', 'plugins/language/language', 'language_code_helper', 'M?? ng??n ng??? - ??u ti??n d???ng 2-k?? t??? theo chu???n ISO 639-1 (v?? d???: en)', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2190, 1, 'vi', 'plugins/language/language', 'text_direction', 'H?????ng vi???t ch???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2191, 1, 'vi', 'plugins/language/language', 'text_direction_helper', 'Ch???n h?????ng vi???t ch??? cho ng??n ng??? n??y', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2192, 1, 'vi', 'plugins/language/language', 'left_to_right', 'Tr??i qua ph???i', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2193, 1, 'vi', 'plugins/language/language', 'right_to_left', 'Ph???i qua tr??i', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2194, 1, 'vi', 'plugins/language/language', 'flag', 'C???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2195, 1, 'vi', 'plugins/language/language', 'flag_helper', 'Ch???n 1 c??? cho ng??n ng??? n??y', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2196, 1, 'vi', 'plugins/language/language', 'order', 'S???p x???p', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2197, 1, 'vi', 'plugins/language/language', 'order_helper', 'V??? tr?? c???a ng??n ng??? hi???n th??? trong m???c chuy???n ?????i ng??n ng???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2198, 1, 'vi', 'plugins/language/language', 'add_new_language', 'Th??m ng??n ng??? m???i', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2199, 1, 'vi', 'plugins/language/language', 'code', 'M??', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2200, 1, 'vi', 'plugins/language/language', 'default_language', 'Ng??n ng??? m???c ?????nh', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2201, 1, 'vi', 'plugins/language/language', 'actions', 'H??nh ?????ng', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2202, 1, 'vi', 'plugins/language/language', 'translations', 'D???ch', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2203, 1, 'vi', 'plugins/language/language', 'edit', 'S???a', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2204, 1, 'vi', 'plugins/language/language', 'edit_tooltip', 'S???a ng??n ng??? n??y', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2205, 1, 'vi', 'plugins/language/language', 'delete', 'X??a', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2206, 1, 'vi', 'plugins/language/language', 'delete_tooltip', 'X??a ng??n ng??? n??y v?? c??c d??? li???u li??n quan', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2207, 1, 'vi', 'plugins/language/language', 'choose_default_language', 'Ch???n :language l??m ng??n ng??? m???c ?????nh', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2208, 1, 'vi', 'plugins/language/language', 'add_language_for_item', 'Th??m ng??n ng??? kh??c cho b???n ghi n??y', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2209, 1, 'vi', 'plugins/language/language', 'current_language', 'Ng??n ng??? hi???n t???i c???a b???n ghi', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2210, 1, 'vi', 'plugins/language/language', 'edit_related', 'S???a b???n ng??n ng??? kh??c c???a b???n ghi n??y', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2211, 1, 'vi', 'plugins/language/language', 'confirm-change-language', 'X??c nh???n thay ?????i ng??n ng???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2212, 1, 'vi', 'plugins/language/language', 'confirm-change-language-btn', 'X??c nh???n thay ?????i', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2213, 1, 'vi', 'plugins/language/language', 'confirm-change-language-message', 'B???n c?? ch???c ch???n mu???n thay ?????i ng??n ng??? sang ti???ng \"<strong class=\"change_to_language_text\"></strong>\" ? ??i???u n??y s??? ghi ???? b???n ghi ti???ng \"<strong class=\"change_to_language_text\"></strong>\" n???u n?? ???? t???n t???i!', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2214, 1, 'vi', 'plugins/language/language', 'current_language_edit_notification', 'B???n ??ang ch???nh s???a phi??n b???n ti???ng \"<strong class=\"current_language_text\">:language</strong>\"', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2215, 1, 'vi', 'plugins/language/language', 'hide_languages', '???n ng??n ng???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2216, 1, 'vi', 'plugins/language/language', 'hide_languages_description', 'B???n c?? th??? ho??n to??n ???n ng??n ng??? c??? th??? ?????i v???i ng?????i truy c???p v?? c??ng c??? t??m ki???m, nh??ng s??? v???n hi???n th??? trong trang qu???n tr???. ??i???u n??y cho ph??p b???n bi???t nh???ng ng??n ng??? n??o ??ang ???????c x??? l??.', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2217, 1, 'vi', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} T???t c??? ng??n ng??? ??ang ???????c hi???n th???.|{1} :language ??ang b??? ???n ?????i v???i ng?????i truy c???p.|[2, Inf]  :language ??ang b??? ???n ?????i v???i ng?????i truy c???p.', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2218, 1, 'vi', 'plugins/language/language', 'language_display', 'Hi???n th??? ng??n ng???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2219, 1, 'vi', 'plugins/language/language', 'language_display_all', 'Hi???n th??? c??? c??? v?? t??n ng??n ng???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2220, 1, 'vi', 'plugins/language/language', 'language_display_flag_only', 'Ch??? hi???n th??? c???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2221, 1, 'vi', 'plugins/language/language', 'language_display_name_only', 'Ch??? hi???n th??? t??n', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2222, 1, 'vi', 'plugins/language/language', 'language_hide_default', '???n ng??n ng??? m???c ?????nh tr??n URL', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2223, 1, 'vi', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2224, 1, 'vi', 'plugins/language/language', 'language_switcher_display_list', 'Danh s??ch', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2225, 1, 'vi', 'plugins/language/language', 'settings', 'C??i ?????t', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2226, 1, 'vi', 'plugins/language/language', 'switcher_display', 'Hi???n th??? b??? chuy???n ?????i ng??n ng???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2227, 1, 'vi', 'plugins/language/language', 'menu', 'Ng??n ng???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2228, 1, 'vi', 'plugins/language/language', 'change_language', 'Ng??n ng???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2229, 1, 'vi', 'plugins/language/language', 'show_all', 'Hi???n th??? t???t c???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2230, 1, 'en', 'plugins/location/city', 'name', 'Cities', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2231, 1, 'en', 'plugins/location/city', 'create', 'New city', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2232, 1, 'en', 'plugins/location/city', 'edit', 'Edit city', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2233, 1, 'en', 'plugins/location/city', 'state', 'State', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2234, 1, 'en', 'plugins/location/city', 'select_state', 'Select a state...', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2235, 1, 'en', 'plugins/location/city', 'select_city', 'Select a city...', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2236, 1, 'en', 'plugins/location/city', 'country', 'Country', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2237, 1, 'en', 'plugins/location/city', 'select_country', 'Select a country...', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2238, 1, 'en', 'plugins/location/city', 'city', 'City', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2239, 1, 'en', 'plugins/location/country', 'name', 'Countries', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2240, 1, 'en', 'plugins/location/country', 'create', 'New country', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2241, 1, 'en', 'plugins/location/country', 'edit', 'Edit country', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2242, 1, 'en', 'plugins/location/country', 'nationality', 'Nationality', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2243, 1, 'en', 'plugins/location/location', 'name', 'Locations', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2244, 1, 'en', 'plugins/location/location', 'create', 'New location', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2245, 1, 'en', 'plugins/location/location', 'edit', 'Edit location', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2246, 1, 'en', 'plugins/location/location', 'all_states', 'All states', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2247, 1, 'en', 'plugins/location/location', 'abbreviation', 'Abbreviation', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2248, 1, 'en', 'plugins/location/location', 'abbreviation_placeholder', 'E.g: CA', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2249, 1, 'en', 'plugins/location/state', 'name', 'States', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2250, 1, 'en', 'plugins/location/state', 'create', 'New state', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2251, 1, 'en', 'plugins/location/state', 'edit', 'Edit state', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2252, 1, 'en', 'plugins/location/state', 'country', 'Country', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2253, 1, 'en', 'plugins/location/state', 'select_country', 'Select a country...', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2254, 1, 'en', 'plugins/location/state', 'state', 'State', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2255, 1, 'vi', 'plugins/location/city', 'name', 'Qu???n/huy???n', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2256, 1, 'vi', 'plugins/location/city', 'create', 'Th??m qu???n/huy???n', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2257, 1, 'vi', 'plugins/location/city', 'edit', 'S???a qu???n/huy???n', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2258, 1, 'vi', 'plugins/location/city', 'state', 'T???nh', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2259, 1, 'vi', 'plugins/location/city', 'select_state', 'L???a ch???n t???nh/th??nh ph???...', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2260, 1, 'vi', 'plugins/location/city', 'select_city', 'L???a ch???n qu???n/huy???n...', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2261, 1, 'vi', 'plugins/location/city', 'country', 'Qu???c gia', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2262, 1, 'vi', 'plugins/location/city', 'select_country', 'L???a ch???n qu???c gia...', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2263, 1, 'vi', 'plugins/location/city', 'city', 'Qu???n/huy???n', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2264, 1, 'vi', 'plugins/location/country', 'name', 'Qu???c gia', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2265, 1, 'vi', 'plugins/location/country', 'create', 'Th??m qu???c gia', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2266, 1, 'vi', 'plugins/location/country', 'edit', 'S???a qu???c gia', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2267, 1, 'vi', 'plugins/location/country', 'nationality', 'Qu???c t???ch', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2268, 1, 'vi', 'plugins/location/location', 'name', '?????a ??i???m', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2269, 1, 'vi', 'plugins/location/location', 'create', 'Th??m ?????a ??i???m', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2270, 1, 'vi', 'plugins/location/location', 'edit', 'S???a ?????a ??i???m', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2271, 1, 'vi', 'plugins/location/location', 'all_states', 'T???t c??? t???nh th??nh', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2272, 1, 'vi', 'plugins/location/state', 'name', 'T???nh/th??nh ph???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2273, 1, 'vi', 'plugins/location/state', 'create', 'Th??m t???nh/th??nh ph???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2274, 1, 'vi', 'plugins/location/state', 'edit', 'S???a t???nh/th??nh ph???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2275, 1, 'vi', 'plugins/location/state', 'country', 'Qu???c gia', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2276, 1, 'vi', 'plugins/location/state', 'select_country', 'L???a ch???n qu???c gia...', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2277, 1, 'vi', 'plugins/location/state', 'state', 'T???nh/th??nh ph???', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2278, 1, 'en', 'plugins/payment/payment', 'payments', 'Payments', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2279, 1, 'en', 'plugins/payment/payment', 'checkout_success', 'Checkout successfully!', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2280, 1, 'en', 'plugins/payment/payment', 'view_payment', 'View payment #', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2281, 1, 'en', 'plugins/payment/payment', 'charge_id', 'Charge ID', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2282, 1, 'en', 'plugins/payment/payment', 'amount', 'Amount', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2283, 1, 'en', 'plugins/payment/payment', 'currency', 'Currency', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2284, 1, 'en', 'plugins/payment/payment', 'user', 'User', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2285, 1, 'en', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2286, 1, 'en', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2287, 1, 'en', 'plugins/payment/payment', 'action', 'Action', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2288, 1, 'en', 'plugins/payment/payment', 'payment_via_card', 'Payment via card', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2289, 1, 'en', 'plugins/payment/payment', 'card_number', 'Card number', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2290, 1, 'en', 'plugins/payment/payment', 'full_name', 'Full name', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2291, 1, 'en', 'plugins/payment/payment', 'payment_via_paypal', 'Payment via PayPal', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2292, 1, 'en', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2293, 1, 'en', 'plugins/payment/payment', 'cvc', 'CVC', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2294, 1, 'en', 'plugins/payment/payment', 'details', 'Details', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2295, 1, 'en', 'plugins/payment/payment', 'payer_name', 'Payer Name', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2296, 1, 'en', 'plugins/payment/payment', 'email', 'Email', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2297, 1, 'en', 'plugins/payment/payment', 'phone', 'Phone', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2298, 1, 'en', 'plugins/payment/payment', 'country', 'Country', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2299, 1, 'en', 'plugins/payment/payment', 'shipping_address', 'Shipping Address', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2300, 1, 'en', 'plugins/payment/payment', 'payment_details', 'Payment Details', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2301, 1, 'en', 'plugins/payment/payment', 'card', 'Card', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2302, 1, 'en', 'plugins/payment/payment', 'address', 'Address', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2303, 1, 'en', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2304, 1, 'en', 'plugins/payment/payment', 'payment_id', 'Payment ID', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2305, 1, 'en', 'plugins/payment/payment', 'payment_methods', 'Payment methods', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2306, 1, 'en', 'plugins/payment/payment', 'transactions', 'Transactions', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2307, 1, 'en', 'plugins/payment/payment', 'payment_methods_description', 'Setup payment methods for website', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2308, 1, 'en', 'plugins/payment/payment', 'paypal_description', 'Customer can buy product and pay directly via PayPal', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2309, 1, 'en', 'plugins/payment/payment', 'use', 'Use', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2310, 1, 'en', 'plugins/payment/payment', 'stripe_description', 'Customer can buy product and pay directly using Visa, Credit card via Stripe', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2311, 1, 'en', 'plugins/payment/payment', 'edit', 'Edit', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2312, 1, 'en', 'plugins/payment/payment', 'settings', 'Settings', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2313, 1, 'en', 'plugins/payment/payment', 'activate', 'Activate', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2314, 1, 'en', 'plugins/payment/payment', 'deactivate', 'Deactivate', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2315, 1, 'en', 'plugins/payment/payment', 'update', 'Update', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2316, 1, 'en', 'plugins/payment/payment', 'configuration_instruction', 'Configuration instruction for :name', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2317, 1, 'en', 'plugins/payment/payment', 'configuration_requirement', 'To use :name, you need', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2318, 1, 'en', 'plugins/payment/payment', 'service_registration', 'Register with :name', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2319, 1, 'en', 'plugins/payment/payment', 'after_service_registration_msg', 'After registration at :name, you will have Client ID, Client Secret', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2320, 1, 'en', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Enter Client ID, Secret into the box in right hand', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2321, 1, 'en', 'plugins/payment/payment', 'method_name', 'Method name', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2322, 1, 'en', 'plugins/payment/payment', 'please_provide_information', 'Please provide information', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2323, 1, 'en', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2324, 1, 'en', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2325, 1, 'en', 'plugins/payment/payment', 'secret', 'Secret', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2326, 1, 'en', 'plugins/payment/payment', 'stripe_key', 'Stripe Public Key', '2021-06-11 08:03:27', '2021-06-11 08:03:27'),
(2327, 1, 'en', 'plugins/payment/payment', 'stripe_secret', 'Stripe Private Key', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2328, 1, 'en', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2329, 1, 'en', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2330, 1, 'en', 'plugins/payment/payment', 'pay_online_via', 'Pay online via :name', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2331, 1, 'en', 'plugins/payment/payment', 'sandbox_mode', 'Sandbox mode', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2332, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method', 'Deactivate payment method', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2333, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Do you really want to deactivate this payment method?', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2334, 1, 'en', 'plugins/payment/payment', 'agree', 'Agree', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2335, 1, 'en', 'plugins/payment/payment', 'name', 'Payments', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2336, 1, 'en', 'plugins/payment/payment', 'create', 'New payment', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2337, 1, 'en', 'plugins/payment/payment', 'go_back', 'Go back', '2021-06-11 08:03:28', '2021-06-11 08:03:28');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2338, 1, 'en', 'plugins/payment/payment', 'information', 'Information', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2339, 1, 'en', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2340, 1, 'en', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2341, 1, 'en', 'plugins/payment/payment', 'methods.cod', 'Cash on delivery (COD)', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2342, 1, 'en', 'plugins/payment/payment', 'methods.bank_transfer', 'Bank transfer', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2343, 1, 'en', 'plugins/payment/payment', 'statuses.pending', 'Pending', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2344, 1, 'en', 'plugins/payment/payment', 'statuses.completed', 'Completed', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2345, 1, 'en', 'plugins/payment/payment', 'statuses.refunding', 'Refunding', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2346, 1, 'en', 'plugins/payment/payment', 'statuses.refunded', 'Refunded', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2347, 1, 'en', 'plugins/payment/payment', 'statuses.fraud', 'Fraud', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2348, 1, 'en', 'plugins/payment/payment', 'statuses.failed', 'Failed', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2349, 1, 'en', 'plugins/payment/payment', 'payment_methods_instruction', 'Guide customers to pay directly. You can choose to pay by delivery or bank transfer', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2350, 1, 'en', 'plugins/payment/payment', 'payment_method_description', 'Payment guide - (Displayed on the notice of successful purchase and payment page)', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2351, 1, 'en', 'plugins/payment/payment', 'payment_via_cod', 'Cash on delivery (COD)', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2352, 1, 'en', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Bank transfer', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2353, 1, 'en', 'plugins/payment/payment', 'payment_pending', 'Checkout successfully. Your payment is pending and will be checked by our staff.', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2354, 1, 'en', 'plugins/payment/payment', 'created_at', 'Created At', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2355, 1, 'en', 'plugins/payment/payment', 'payment_channel', 'Payment Channel', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2356, 1, 'en', 'plugins/payment/payment', 'total', 'Total', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2357, 1, 'en', 'plugins/payment/payment', 'status', 'Status', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2358, 1, 'en', 'plugins/payment/payment', 'default_payment_method', 'Default payment method', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2359, 1, 'en', 'plugins/payment/payment', 'turn_off_success', 'Turn off payment method successfully!', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2360, 1, 'en', 'plugins/payment/payment', 'saved_payment_method_success', 'Saved payment method successfully!', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2361, 1, 'en', 'plugins/payment/payment', 'saved_payment_settings_success', 'Saved payment settings successfully!', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2362, 1, 'en', 'plugins/payment/payment', 'payment_name', 'Name', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2363, 1, 'en', 'plugins/payment/payment', 'callback_url', 'Callback URL', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2364, 1, 'en', 'plugins/payment/payment', 'return_url', 'Return URL', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2365, 1, 'en', 'plugins/payment/payment', 'payment_not_found', 'Payment not found!', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2366, 1, 'vi', 'plugins/payment/payment', 'payments', 'Thanh to??n', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2367, 1, 'vi', 'plugins/payment/payment', 'checkout_success', 'Thanh to??n th??nh c??ng!', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2368, 1, 'vi', 'plugins/payment/payment', 'view_payment', 'Xem thanh to??n #', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2369, 1, 'vi', 'plugins/payment/payment', 'charge_id', 'M?? thanh to??n', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2370, 1, 'vi', 'plugins/payment/payment', 'amount', 'S??? ti???n', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2371, 1, 'vi', 'plugins/payment/payment', 'currency', 'Lo???i ti???n t???', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2372, 1, 'vi', 'plugins/payment/payment', 'user', 'Ng?????i d??ng', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2373, 1, 'vi', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2374, 1, 'vi', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2375, 1, 'vi', 'plugins/payment/payment', 'action', 'H??nh ?????ng', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2376, 1, 'vi', 'plugins/payment/payment', 'payment_via_card', 'Thanh to??n qua th???', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2377, 1, 'vi', 'plugins/payment/payment', 'card_number', 'S??? th???', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2378, 1, 'vi', 'plugins/payment/payment', 'full_name', 'H??? t??n', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2379, 1, 'vi', 'plugins/payment/payment', 'payment_via_paypal', 'Thanh to??n qua PayPal', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2380, 1, 'vi', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2381, 1, 'vi', 'plugins/payment/payment', 'cvc', 'CVC', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2382, 1, 'vi', 'plugins/payment/payment', 'details', 'Chi ti???t', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2383, 1, 'vi', 'plugins/payment/payment', 'payer_name', 'T??n ng?????i mua', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2384, 1, 'vi', 'plugins/payment/payment', 'email', 'Email', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2385, 1, 'vi', 'plugins/payment/payment', 'phone', '??i???n tho???i', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2386, 1, 'vi', 'plugins/payment/payment', 'country', 'Qu???c gia', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2387, 1, 'vi', 'plugins/payment/payment', 'shipping_address', '?????a ch??? giao h??ng', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2388, 1, 'vi', 'plugins/payment/payment', 'payment_details', 'Chi ti???t thanh to??n', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2389, 1, 'vi', 'plugins/payment/payment', 'card', 'Th???', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2390, 1, 'vi', 'plugins/payment/payment', 'address', '?????a ch???', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2391, 1, 'vi', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Kh??ng th??? l???y m?? Stripe ????? thanh to??n.', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2392, 1, 'vi', 'plugins/payment/payment', 'payment_id', 'M?? thanh to??n', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2393, 1, 'vi', 'plugins/payment/payment', 'payment_methods', 'Ph????ng th???c thanh to??n', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2394, 1, 'vi', 'plugins/payment/payment', 'transactions', 'L???ch s??? giao d???ch', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2395, 1, 'vi', 'plugins/payment/payment', 'payment_methods_description', 'C??i ?????t c??c ph????ng th???c thanh to??n cho website', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2396, 1, 'vi', 'plugins/payment/payment', 'paypal_description', 'Kh??ch h??ng c?? th??? mua h??ng v?? thanh to??n tr???c ti???p th??ng qua c???ng thanh to??n PayPal', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2397, 1, 'vi', 'plugins/payment/payment', 'use', 'D??ng', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2398, 1, 'vi', 'plugins/payment/payment', 'stripe_description', 'Kh??ch h??ng c?? th??? mua h??ng v?? thanh to??n b???ng Visa, Credit card th??ng qua c???ng thanh to??n Stripe', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2399, 1, 'vi', 'plugins/payment/payment', 'edit', 'Ch???nh s???a', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2400, 1, 'vi', 'plugins/payment/payment', 'settings', 'C??i ?????t', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2401, 1, 'vi', 'plugins/payment/payment', 'activate', 'K??ch ho???t', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2402, 1, 'vi', 'plugins/payment/payment', 'deactivate', 'Hu??? k??ch ho???t', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2403, 1, 'vi', 'plugins/payment/payment', 'update', 'C???p nh???t', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2404, 1, 'vi', 'plugins/payment/payment', 'configuration_instruction', 'H?????ng d???n c???u h??nh :name', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2405, 1, 'vi', 'plugins/payment/payment', 'configuration_requirement', '????? s??? d???ng :name b???n c???n', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2406, 1, 'vi', 'plugins/payment/payment', 'service_registration', '????ng k?? d???ch v??? v???i :name', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2407, 1, 'vi', 'plugins/payment/payment', 'after_service_registration_msg', 'Sau khi ho??n t???t c??c b?????c ????ng k?? t???i :name, b???n s??? c?? c??c th??ng s??? Client ID, Client Secret', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2408, 1, 'vi', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Nh???p c??c th??ng s??? Client ID, Secret v??o ?? b??n ph???i', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2409, 1, 'vi', 'plugins/payment/payment', 'method_name', 'T??n ph????ng th???c', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2410, 1, 'vi', 'plugins/payment/payment', 'please_provide_information', 'Xin vui l??ng cung c???p th??ng tin', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2411, 1, 'vi', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2412, 1, 'vi', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2413, 1, 'vi', 'plugins/payment/payment', 'stripe_key', 'Stripe Key', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2414, 1, 'vi', 'plugins/payment/payment', 'stripe_secret', 'Stripe Secret', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2415, 1, 'vi', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2416, 1, 'vi', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2417, 1, 'vi', 'plugins/payment/payment', 'secret', 'Secret', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2418, 1, 'vi', 'plugins/payment/payment', 'pay_online_via', 'Thanh to??n online qua :name', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2419, 1, 'vi', 'plugins/payment/payment', 'sandbox_mode', 'Ch??? ????? th??? nghi???m', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2420, 1, 'vi', 'plugins/payment/payment', 'deactivate_payment_method', 'Hu??? k??ch ho???t ph????ng th???c', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2421, 1, 'vi', 'plugins/payment/payment', 'deactivate_payment_method_description', 'B???n c?? ch???c ch???n mu???n hu??? ph????ng th???c th??nh to??n n??y?', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2422, 1, 'vi', 'plugins/payment/payment', 'agree', '?????ng ??', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2423, 1, 'vi', 'plugins/payment/payment', 'name', 'Thanh to??n', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2424, 1, 'vi', 'plugins/payment/payment', 'create', 'Th??m thanh to??n m???i', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2425, 1, 'vi', 'plugins/payment/payment', 'go_back', 'Tr??? l???i', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2426, 1, 'vi', 'plugins/payment/payment', 'information', 'Th??ng tin', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2427, 1, 'vi', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2428, 1, 'vi', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2429, 1, 'vi', 'plugins/payment/payment', 'methods.cod', 'Thanh to??n khi giao h??ng (COD)', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2430, 1, 'vi', 'plugins/payment/payment', 'methods.bank_transfer', 'Chuy???n kho???n qua ng??n h??ng', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2431, 1, 'vi', 'plugins/payment/payment', 'statuses.pending', 'Ch??a ho??n t???t', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2432, 1, 'vi', 'plugins/payment/payment', 'statuses.completed', '???? ho??n th??nh', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2433, 1, 'vi', 'plugins/payment/payment', 'statuses.refunding', '??ang ho??n ti???n', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2434, 1, 'vi', 'plugins/payment/payment', 'statuses.refunded', '???? ho??n ti???n', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2435, 1, 'vi', 'plugins/payment/payment', 'statuses.fraud', 'Gian l???n', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2436, 1, 'vi', 'plugins/payment/payment', 'statuses.failed', 'Th???t b???i', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2437, 1, 'vi', 'plugins/payment/payment', 'payment_methods_instruction', 'H?????ng d???n kh??ch h??ng thanh to??n tr???c ti???p. C?? th??? ch???n thanh to??n khi giao h??ng ho???c chuy???n kho???n', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2438, 1, 'vi', 'plugins/payment/payment', 'payment_method_description', 'H?????ng d???n thanh to??n ??? (Hi???n th??? ??? trang th??ng b??o mua h??ng th??nh c??ng v?? trang thanh to??n)', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2439, 1, 'vi', 'plugins/payment/payment', 'payment_via_cod', 'Thanh to??n khi nh???n h??ng (COD)', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2440, 1, 'vi', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Chuy???n kho???n qua ng??n h??ng', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2441, 1, 'vi', 'plugins/payment/payment', 'payment_pending', 'Th???c hi???n th??nh c??ng. Thanh to??n c???a b???n ??ang ???????c x??? l?? v?? s??? ???????c x??c nh???n b???i nh??n vi??n.', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2442, 1, 'vi', 'plugins/payment/payment', 'created_at', 'Ng??y t???o', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2443, 1, 'vi', 'plugins/payment/payment', 'payment_channel', 'Ph????ng th???c thanh to??n', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2444, 1, 'vi', 'plugins/payment/payment', 'total', 'T???ng c???ng', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2445, 1, 'vi', 'plugins/payment/payment', 'status', 'Tr???ng th??i', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2446, 1, 'vi', 'plugins/payment/payment', 'default_payment_method', 'Ph????ng th???c thanh to??n m???c ?????nh', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2447, 1, 'en', 'plugins/real-estate/account-property', 'draft_properties', 'Draft Properties', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2448, 1, 'en', 'plugins/real-estate/account-property', 'pending_properties', 'Pending Properties', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2449, 1, 'en', 'plugins/real-estate/account-property', 'published_properties', 'Published Properties', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2450, 1, 'en', 'plugins/real-estate/account-property', 'properties', 'Properties', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2451, 1, 'en', 'plugins/real-estate/account-property', 'write_property', 'Write a property', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2452, 1, 'en', 'plugins/real-estate/account', 'create', 'New account', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2453, 1, 'en', 'plugins/real-estate/account', 'edit', 'Edit account \":name\"', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2454, 1, 'en', 'plugins/real-estate/account', 'name', 'Accounts', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2455, 1, 'en', 'plugins/real-estate/account', 'form.email', 'Email', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2456, 1, 'en', 'plugins/real-estate/account', 'form.password', 'Password', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2457, 1, 'en', 'plugins/real-estate/account', 'form.password_confirmation', 'Password confirmation', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2458, 1, 'en', 'plugins/real-estate/account', 'form.change_password', 'Change password?', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2459, 1, 'en', 'plugins/real-estate/account', 'forgot_password', 'Forgot password', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2460, 1, 'en', 'plugins/real-estate/account', 'login', 'Login', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2461, 1, 'en', 'plugins/real-estate/account', 'buy_credits', 'Buy credits', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2462, 1, 'en', 'plugins/real-estate/account', 'credits', 'credits', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2463, 1, 'en', 'plugins/real-estate/account', 'account_settings', 'Account settings', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2464, 1, 'en', 'plugins/real-estate/account', 'update_profile_success', 'Update profile successfully!', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2465, 1, 'en', 'plugins/real-estate/account', 'security', 'Security', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2466, 1, 'en', 'plugins/real-estate/account', 'packages', 'Packages', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2467, 1, 'en', 'plugins/real-estate/account', 'transactions', 'Transactions', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2468, 1, 'en', 'plugins/real-estate/account', 'subscribe_package', 'Subscribe package \":name\"', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2469, 1, 'en', 'plugins/real-estate/account', 'first_name', 'First Name', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2470, 1, 'en', 'plugins/real-estate/account', 'last_name', 'Last Name', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2471, 1, 'en', 'plugins/real-estate/account', 'username', 'Username', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2472, 1, 'en', 'plugins/real-estate/account', 'username_placeholder', 'Ex: john_smith', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2473, 1, 'en', 'plugins/real-estate/account', 'phone', 'Phone', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2474, 1, 'en', 'plugins/real-estate/account', 'phone_placeholder', 'Phone', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2475, 1, 'en', 'plugins/real-estate/account', 'email_placeholder', 'Ex: example@gmail.com', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2476, 1, 'en', 'plugins/real-estate/category', 'name', 'Categories', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2477, 1, 'en', 'plugins/real-estate/category', 'create', 'New category', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2478, 1, 'en', 'plugins/real-estate/category', 'edit', 'Edit category', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2479, 1, 'en', 'plugins/real-estate/category', 'menu', 'Property categories', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2480, 1, 'en', 'plugins/real-estate/consult', 'name', 'Consults', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2481, 1, 'en', 'plugins/real-estate/consult', 'edit', 'View consult', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2482, 1, 'en', 'plugins/real-estate/consult', 'statuses.read', 'Read', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2483, 1, 'en', 'plugins/real-estate/consult', 'statuses.unread', 'Unread', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2484, 1, 'en', 'plugins/real-estate/consult', 'phone', 'Phone', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2485, 1, 'en', 'plugins/real-estate/consult', 'content', 'Details', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2486, 1, 'en', 'plugins/real-estate/consult', 'consult_information', 'Consult information', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2487, 1, 'en', 'plugins/real-estate/consult', 'email.header', 'Email', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2488, 1, 'en', 'plugins/real-estate/consult', 'email.title', 'New consult from your site', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2489, 1, 'en', 'plugins/real-estate/consult', 'email.success', 'Send consult successfully!', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2490, 1, 'en', 'plugins/real-estate/consult', 'email.failed', 'Can\'t send request on this time, please try again later!', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2491, 1, 'en', 'plugins/real-estate/consult', 'form.name.required', 'Name is required', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2492, 1, 'en', 'plugins/real-estate/consult', 'form.email.required', 'Email is required', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2493, 1, 'en', 'plugins/real-estate/consult', 'form.email.email', 'The email address is not valid', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2494, 1, 'en', 'plugins/real-estate/consult', 'form.content.required', 'Content is required', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2495, 1, 'en', 'plugins/real-estate/consult', 'form.g-recaptcha-response.required', 'Please confirm you are not a robot before sending the message.', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2496, 1, 'en', 'plugins/real-estate/consult', 'form.g-recaptcha-response.captcha', 'You are not confirm robot yet.', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2497, 1, 'en', 'plugins/real-estate/consult', 'consult_sent_from', 'This consult information sent from', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2498, 1, 'en', 'plugins/real-estate/consult', 'time', 'Time', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2499, 1, 'en', 'plugins/real-estate/consult', 'consult_id', 'Consult ID', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2500, 1, 'en', 'plugins/real-estate/consult', 'form_name', 'Name', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2501, 1, 'en', 'plugins/real-estate/consult', 'form_email', 'Email', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2502, 1, 'en', 'plugins/real-estate/consult', 'form_phone', 'Phone', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2503, 1, 'en', 'plugins/real-estate/consult', 'mark_as_read', 'Mark as read', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2504, 1, 'en', 'plugins/real-estate/consult', 'mark_as_unread', 'Mark as unread', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2505, 1, 'en', 'plugins/real-estate/consult', 'new_consult_notice', 'You have <span class=\"bold\">:count</span> New Consults', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2506, 1, 'en', 'plugins/real-estate/consult', 'view_all', 'View all', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2507, 1, 'en', 'plugins/real-estate/consult', 'project', 'Project', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2508, 1, 'en', 'plugins/real-estate/consult', 'property', 'Property', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2509, 1, 'en', 'plugins/real-estate/currency', 'currencies', 'Currencies', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2510, 1, 'en', 'plugins/real-estate/currency', 'setting_description', 'List of currencies using on website', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2511, 1, 'en', 'plugins/real-estate/currency', 'name', 'Name', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2512, 1, 'en', 'plugins/real-estate/currency', 'symbol', 'Symbol', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2513, 1, 'en', 'plugins/real-estate/currency', 'number_of_decimals', 'Number of decimals', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2514, 1, 'en', 'plugins/real-estate/currency', 'exchange_rate', 'Exchange rate', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2515, 1, 'en', 'plugins/real-estate/currency', 'is_prefix_symbol', 'Position of symbol', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2516, 1, 'en', 'plugins/real-estate/currency', 'is_default', 'Is default?', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2517, 1, 'en', 'plugins/real-estate/currency', 'remove', 'Remove', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2518, 1, 'en', 'plugins/real-estate/currency', 'new_currency', 'Add a new currency', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2519, 1, 'en', 'plugins/real-estate/currency', 'save_settings', 'Save settings', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2520, 1, 'en', 'plugins/real-estate/currency', 'before_number', 'Before number', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2521, 1, 'en', 'plugins/real-estate/currency', 'after_number', 'After number', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2522, 1, 'en', 'plugins/real-estate/dashboard', 'joined_on', 'Joined :date', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2523, 1, 'en', 'plugins/real-estate/dashboard', 'dob', 'Born :date', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2524, 1, 'en', 'plugins/real-estate/dashboard', 'email', 'Email', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2525, 1, 'en', 'plugins/real-estate/dashboard', 'username', 'Username', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2526, 1, 'en', 'plugins/real-estate/dashboard', 'email_or_username', 'Email/Username', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2527, 1, 'en', 'plugins/real-estate/dashboard', 'password', 'Password', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2528, 1, 'en', 'plugins/real-estate/dashboard', 'password-confirmation', 'Confirm Password', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2529, 1, 'en', 'plugins/real-estate/dashboard', 'remember-me', 'Remember Me', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2530, 1, 'en', 'plugins/real-estate/dashboard', 'login-title', 'Login', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2531, 1, 'en', 'plugins/real-estate/dashboard', 'login-cta', 'Login', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2532, 1, 'en', 'plugins/real-estate/dashboard', 'register-title', 'Register', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2533, 1, 'en', 'plugins/real-estate/dashboard', 'register-cta', 'Register', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2534, 1, 'en', 'plugins/real-estate/dashboard', 'forgot-password-cta', 'Forgot Your Password?', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2535, 1, 'en', 'plugins/real-estate/dashboard', 'name', 'Name', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2536, 1, 'en', 'plugins/real-estate/dashboard', 'reset-password-title', 'Reset Password', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2537, 1, 'en', 'plugins/real-estate/dashboard', 'reset-password-cta', 'Reset Password', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2538, 1, 'en', 'plugins/real-estate/dashboard', 'cancel-link', 'Cancel', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2539, 1, 'en', 'plugins/real-estate/dashboard', 'logout-cta', 'Logout', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2540, 1, 'en', 'plugins/real-estate/dashboard', 'header_profile_link', 'Profile', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2541, 1, 'en', 'plugins/real-estate/dashboard', 'header_settings_link', 'Settings', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2542, 1, 'en', 'plugins/real-estate/dashboard', 'header_logout_link', 'Logout', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2543, 1, 'en', 'plugins/real-estate/dashboard', 'unknown_state', 'Unknown', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2544, 1, 'en', 'plugins/real-estate/dashboard', 'close', 'Close', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2545, 1, 'en', 'plugins/real-estate/dashboard', 'save', 'Save', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2546, 1, 'en', 'plugins/real-estate/dashboard', 'loading', 'Loading...', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2547, 1, 'en', 'plugins/real-estate/dashboard', 'new_image', 'New image', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2548, 1, 'en', 'plugins/real-estate/dashboard', 'change_profile_image', 'Change avatar', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2549, 1, 'en', 'plugins/real-estate/dashboard', 'save_cropped_image_failed', 'Save cropped image failed!', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2550, 1, 'en', 'plugins/real-estate/dashboard', 'failed_to_crop_image', 'Failed to crop image', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2551, 1, 'en', 'plugins/real-estate/dashboard', 'failed_to_load_data', 'Failed to load data', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2552, 1, 'en', 'plugins/real-estate/dashboard', 'read_image_failed', 'Read image failed', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2553, 1, 'en', 'plugins/real-estate/dashboard', 'update_avatar_success', 'Update avatar successfully!', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2554, 1, 'en', 'plugins/real-estate/dashboard', 'change_avatar_description', 'Click on image to change avatar', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2555, 1, 'en', 'plugins/real-estate/dashboard', 'notices.error', 'Error!', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2556, 1, 'en', 'plugins/real-estate/dashboard', 'notices.success', 'Success!', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2557, 1, 'en', 'plugins/real-estate/dashboard', 'sidebar_title', 'Personal settings', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2558, 1, 'en', 'plugins/real-estate/dashboard', 'sidebar_information', 'Account Information', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2559, 1, 'en', 'plugins/real-estate/dashboard', 'sidebar_security', 'Security', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2560, 1, 'en', 'plugins/real-estate/dashboard', 'sidebar_packages', 'Packages', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2561, 1, 'en', 'plugins/real-estate/dashboard', 'sidebar_transactions', 'Transactions', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2562, 1, 'en', 'plugins/real-estate/dashboard', 'account_field_title', 'Account Information', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2563, 1, 'en', 'plugins/real-estate/dashboard', 'profile-picture', 'Profile picture', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2564, 1, 'en', 'plugins/real-estate/dashboard', 'uploading', 'Uploading...', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2565, 1, 'en', 'plugins/real-estate/dashboard', 'phone', 'Phone', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2566, 1, 'en', 'plugins/real-estate/dashboard', 'first_name', 'First name', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2567, 1, 'en', 'plugins/real-estate/dashboard', 'last_name', 'Last name', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2568, 1, 'en', 'plugins/real-estate/dashboard', 'description', 'Short description', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2569, 1, 'en', 'plugins/real-estate/dashboard', 'description_placeholder', 'Tell something about yourself...', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2570, 1, 'en', 'plugins/real-estate/dashboard', 'verified', 'Verified', '2021-06-11 08:03:28', '2021-06-11 08:03:28'),
(2571, 1, 'en', 'plugins/real-estate/dashboard', 'verify_require_desc', 'Please verify email by link we sent to you.', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2572, 1, 'en', 'plugins/real-estate/dashboard', 'birthday', 'Birthday', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2573, 1, 'en', 'plugins/real-estate/dashboard', 'year_lc', 'year', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2574, 1, 'en', 'plugins/real-estate/dashboard', 'month_lc', 'month', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2575, 1, 'en', 'plugins/real-estate/dashboard', 'day_lc', 'day', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2576, 1, 'en', 'plugins/real-estate/dashboard', 'gender', 'Gender', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2577, 1, 'en', 'plugins/real-estate/dashboard', 'gender_male', 'Male', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2578, 1, 'en', 'plugins/real-estate/dashboard', 'gender_female', 'Female', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2579, 1, 'en', 'plugins/real-estate/dashboard', 'gender_other', 'Other', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2580, 1, 'en', 'plugins/real-estate/dashboard', 'security_title', 'Security', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2581, 1, 'en', 'plugins/real-estate/dashboard', 'packages_title', 'Packages', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2582, 1, 'en', 'plugins/real-estate/dashboard', 'transactions_title', 'Transactions', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2583, 1, 'en', 'plugins/real-estate/dashboard', 'current_password', 'Current password', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2584, 1, 'en', 'plugins/real-estate/dashboard', 'password_new', 'New password', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2585, 1, 'en', 'plugins/real-estate/dashboard', 'password_new_confirmation', 'Confirmation password', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2586, 1, 'en', 'plugins/real-estate/dashboard', 'password_update_btn', 'Update password', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2587, 1, 'en', 'plugins/real-estate/dashboard', 'activity_logs', 'Activity Logs', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2588, 1, 'en', 'plugins/real-estate/dashboard', 'oops', 'Oops!', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2589, 1, 'en', 'plugins/real-estate/dashboard', 'no_activity_logs', 'You have no activity logs yet', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2590, 1, 'en', 'plugins/real-estate/dashboard', 'actions.create_property', 'You have created property \":name\"', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2591, 1, 'en', 'plugins/real-estate/dashboard', 'actions.update_property', 'You have updated property \":name\"', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2592, 1, 'en', 'plugins/real-estate/dashboard', 'actions.delete_property', 'You have deleted property \":name\"', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2593, 1, 'en', 'plugins/real-estate/dashboard', 'actions.update_setting', 'You have updated your settings', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2594, 1, 'en', 'plugins/real-estate/dashboard', 'actions.update_security', 'You have updated your security settings', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2595, 1, 'en', 'plugins/real-estate/dashboard', 'actions.your_property_updated_by_admin', 'Your property \":name\" is updated by administrator', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2596, 1, 'en', 'plugins/real-estate/dashboard', 'actions.changed_avatar', 'You have changed your avatar', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2597, 1, 'en', 'plugins/real-estate/dashboard', 'load_more', 'Load more', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2598, 1, 'en', 'plugins/real-estate/dashboard', 'loading_more', 'Loading...', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2599, 1, 'en', 'plugins/real-estate/dashboard', 'back-to-login', 'Back to login page', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2600, 1, 'en', 'plugins/real-estate/dashboard', 'no_transactions', 'No transactions', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2601, 1, 'en', 'plugins/real-estate/dashboard', 'approved_properties', 'Approved properties', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2602, 1, 'en', 'plugins/real-estate/dashboard', 'pending_approve_properties', 'Pending approve properties', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2603, 1, 'en', 'plugins/real-estate/dashboard', 'rejected_properties', 'Rejected properties', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2604, 1, 'en', 'plugins/real-estate/dashboard', 'your_credits', 'Your Credits', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2605, 1, 'en', 'plugins/real-estate/dashboard', 'credits', 'credits', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2606, 1, 'en', 'plugins/real-estate/dashboard', 'per_post', 'per post', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2607, 1, 'en', 'plugins/real-estate/dashboard', 'free', 'Free', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2608, 1, 'en', 'plugins/real-estate/dashboard', 'posts', 'post(s)', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2609, 1, 'en', 'plugins/real-estate/dashboard', 'total', 'Total', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2610, 1, 'en', 'plugins/real-estate/dashboard', 'purchase', 'Purchase', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2611, 1, 'en', 'plugins/real-estate/dashboard', 'select_facility', 'Select facility', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2612, 1, 'en', 'plugins/real-estate/dashboard', 'distance', 'Distance (Km)', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2613, 1, 'en', 'plugins/real-estate/dashboard', 'add_new', 'Add new', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2614, 1, 'en', 'plugins/real-estate/facility', 'name', 'Facilities', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2615, 1, 'en', 'plugins/real-estate/facility', 'create', 'New facility', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2616, 1, 'en', 'plugins/real-estate/facility', 'edit', 'Edit facility', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2617, 1, 'en', 'plugins/real-estate/feature', 'name', 'Features', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2618, 1, 'en', 'plugins/real-estate/feature', 'create', 'New feature', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2619, 1, 'en', 'plugins/real-estate/feature', 'edit', 'Edit feature', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2620, 1, 'en', 'plugins/real-estate/feature', 'messages.request.name_required', 'Name is required', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2621, 1, 'en', 'plugins/real-estate/feature', 'form.help_block', 'Property feature information', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2622, 1, 'en', 'plugins/real-estate/feature', 'form.name', 'Title', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2623, 1, 'en', 'plugins/real-estate/feature', 'form.icon', 'Icon', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2624, 1, 'en', 'plugins/real-estate/investor', 'name', 'Investors', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2625, 1, 'en', 'plugins/real-estate/investor', 'create', 'New investor', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2626, 1, 'en', 'plugins/real-estate/investor', 'edit', 'Edit investor', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2627, 1, 'en', 'plugins/real-estate/package', 'name', 'Packages', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2628, 1, 'en', 'plugins/real-estate/package', 'create', 'New package', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2629, 1, 'en', 'plugins/real-estate/package', 'edit', 'Edit package', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2630, 1, 'en', 'plugins/real-estate/package', 'price', 'Price', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2631, 1, 'en', 'plugins/real-estate/package', 'currency', 'Currency', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2632, 1, 'en', 'plugins/real-estate/package', 'percent_save', 'Percent save', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2633, 1, 'en', 'plugins/real-estate/package', 'number_of_listings', 'Number of listings', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2634, 1, 'en', 'plugins/real-estate/package', 'add_credit_success', 'Add credit successfully!', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2635, 1, 'en', 'plugins/real-estate/package', 'setup_payment_methods', 'Please setup payment methods (PayPal, Stripe, COD, Bank transfer)', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2636, 1, 'en', 'plugins/real-estate/package', 'add_credit_warning', 'Please add your credit to create your own posts here:', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2637, 1, 'en', 'plugins/real-estate/package', 'add_credit', 'Add credit', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2638, 1, 'en', 'plugins/real-estate/package', 'account_limit', 'Limit purchase by account', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2639, 1, 'en', 'plugins/real-estate/package', 'account_limit_placeholder', 'An account can purchase x times', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2640, 1, 'en', 'plugins/real-estate/package', 'subscribe_package', 'Subscribe package', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2641, 1, 'en', 'plugins/real-estate/project', 'name', 'Projects', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2642, 1, 'en', 'plugins/real-estate/project', 'create', 'New project', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2643, 1, 'en', 'plugins/real-estate/project', 'edit', 'Edit project', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2644, 1, 'en', 'plugins/real-estate/project', 'form.general_info', 'General information', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2645, 1, 'en', 'plugins/real-estate/project', 'form.name', 'Name', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2646, 1, 'en', 'plugins/real-estate/project', 'form.description', 'Description', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2647, 1, 'en', 'plugins/real-estate/project', 'form.basic_info', 'Basic information', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2648, 1, 'en', 'plugins/real-estate/project', 'form.location', 'Location', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2649, 1, 'en', 'plugins/real-estate/project', 'form.investor', 'Investor', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2650, 1, 'en', 'plugins/real-estate/project', 'form.number_block', 'Number blocks', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2651, 1, 'en', 'plugins/real-estate/project', 'form.number_floor', 'Number floors', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2652, 1, 'en', 'plugins/real-estate/project', 'form.number_flat', 'Number flats', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2653, 1, 'en', 'plugins/real-estate/project', 'form.date_finish', 'Finish date', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2654, 1, 'en', 'plugins/real-estate/project', 'form.date_sell', 'Open sell date', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2655, 1, 'en', 'plugins/real-estate/project', 'form.images', 'Images', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2656, 1, 'en', 'plugins/real-estate/project', 'form.price_from', 'Lowest price', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2657, 1, 'en', 'plugins/real-estate/project', 'form.price_to', 'Max price', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2658, 1, 'en', 'plugins/real-estate/project', 'form.currency', 'Currency', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2659, 1, 'en', 'plugins/real-estate/project', 'form.city', 'City', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2660, 1, 'en', 'plugins/real-estate/project', 'form.category', 'Category', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2661, 1, 'en', 'plugins/real-estate/project', 'form.latitude', 'Latitude', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2662, 1, 'en', 'plugins/real-estate/project', 'form.latitude_helper', 'Go here to get Latitude from address.', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2663, 1, 'en', 'plugins/real-estate/project', 'form.longitude', 'Longitude', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2664, 1, 'en', 'plugins/real-estate/project', 'form.longitude_helper', 'Go here to get Longitude from address.', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2665, 1, 'en', 'plugins/real-estate/project', 'statuses.not_available', 'Not available', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2666, 1, 'en', 'plugins/real-estate/project', 'statuses.pre_sale', 'Preparing selling', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2667, 1, 'en', 'plugins/real-estate/project', 'statuses.selling', 'Selling', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2668, 1, 'en', 'plugins/real-estate/project', 'statuses.sold', 'Sold', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2669, 1, 'en', 'plugins/real-estate/project', 'statuses.building', 'Building', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2670, 1, 'en', 'plugins/real-estate/project', 'distance_key', 'Distance key between facilities', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2671, 1, 'en', 'plugins/real-estate/project', 'select_investor', 'Select an investor...', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2672, 1, 'en', 'plugins/real-estate/property', 'name', 'Properties', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2673, 1, 'en', 'plugins/real-estate/property', 'create', 'New property', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2674, 1, 'en', 'plugins/real-estate/property', 'edit', 'Edit property', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2675, 1, 'en', 'plugins/real-estate/property', 'form.main_info', 'General information', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2676, 1, 'en', 'plugins/real-estate/property', 'form.basic_info', 'Basic information', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2677, 1, 'en', 'plugins/real-estate/property', 'form.name', 'Title', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2678, 1, 'en', 'plugins/real-estate/property', 'form.type', 'Type', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2679, 1, 'en', 'plugins/real-estate/property', 'form.images', 'Images', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2680, 1, 'en', 'plugins/real-estate/property', 'form.location', 'Property location', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2681, 1, 'en', 'plugins/real-estate/property', 'form.number_bedroom', 'Number bedrooms', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2682, 1, 'en', 'plugins/real-estate/property', 'form.number_bathroom', 'Number bathrooms', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2683, 1, 'en', 'plugins/real-estate/property', 'form.number_floor', 'Number floors', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2684, 1, 'en', 'plugins/real-estate/property', 'form.square', 'Square :unit', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2685, 1, 'en', 'plugins/real-estate/property', 'form.price', 'Price', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2686, 1, 'en', 'plugins/real-estate/property', 'form.features', 'Features', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2687, 1, 'en', 'plugins/real-estate/property', 'form.project', 'Project', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2688, 1, 'en', 'plugins/real-estate/property', 'form.date', 'Date information', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2689, 1, 'en', 'plugins/real-estate/property', 'form.currency', 'Currency', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2690, 1, 'en', 'plugins/real-estate/property', 'form.city', 'City', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2691, 1, 'en', 'plugins/real-estate/property', 'form.period', 'Period', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2692, 1, 'en', 'plugins/real-estate/property', 'form.category', 'Category', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2693, 1, 'en', 'plugins/real-estate/property', 'form.latitude', 'Latitude', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2694, 1, 'en', 'plugins/real-estate/property', 'form.latitude_helper', 'Go here to get Latitude from address.', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2695, 1, 'en', 'plugins/real-estate/property', 'form.longitude', 'Longitude', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2696, 1, 'en', 'plugins/real-estate/property', 'form.longitude_helper', 'Go here to get Longitude from address.', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2697, 1, 'en', 'plugins/real-estate/property', 'statuses.not_available', 'Not available', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2698, 1, 'en', 'plugins/real-estate/property', 'statuses.pre_sale', 'Preparing selling', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2699, 1, 'en', 'plugins/real-estate/property', 'statuses.selling', 'Selling', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2700, 1, 'en', 'plugins/real-estate/property', 'statuses.sold', 'Sold', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2701, 1, 'en', 'plugins/real-estate/property', 'statuses.renting', 'Renting', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2702, 1, 'en', 'plugins/real-estate/property', 'statuses.rented', 'Rented', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2703, 1, 'en', 'plugins/real-estate/property', 'statuses.building', 'Building', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2704, 1, 'en', 'plugins/real-estate/property', 'types.sale', 'Sale', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2705, 1, 'en', 'plugins/real-estate/property', 'types.rent', 'Rent', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2706, 1, 'en', 'plugins/real-estate/property', 'periods.day', 'Day', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2707, 1, 'en', 'plugins/real-estate/property', 'periods.month', 'Month', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2708, 1, 'en', 'plugins/real-estate/property', 'periods.year', 'Year', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2709, 1, 'en', 'plugins/real-estate/property', 'moderation_status', 'Moderation status', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2710, 1, 'en', 'plugins/real-estate/property', 'moderation-statuses.pending', 'Pending', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2711, 1, 'en', 'plugins/real-estate/property', 'moderation-statuses.approved', 'Approved', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2712, 1, 'en', 'plugins/real-estate/property', 'moderation-statuses.rejected', 'Rejected', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2713, 1, 'en', 'plugins/real-estate/property', 'renew_notice', 'Renew automatically (you will be charged again in :days days)?', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2714, 1, 'en', 'plugins/real-estate/property', 'distance_key', 'Distance key between facilities', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2715, 1, 'en', 'plugins/real-estate/property', 'never_expired', 'Never expired?', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2716, 1, 'en', 'plugins/real-estate/property', 'select_project', 'Select a project...', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2717, 1, 'en', 'plugins/real-estate/property', 'account', 'Account', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2718, 1, 'en', 'plugins/real-estate/property', 'select_account', 'Select an account..', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2719, 1, 'en', 'plugins/real-estate/property', 'expire_date', 'Expire date', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2720, 1, 'en', 'plugins/real-estate/property', 'never_expired_label', 'Never expired', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2721, 1, 'en', 'plugins/real-estate/real-estate', 'name', 'Real Estate', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2722, 1, 'en', 'plugins/real-estate/real-estate', 'settings', 'Settings', '2021-06-11 08:03:29', '2021-06-11 08:03:29');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2723, 1, 'en', 'plugins/real-estate/real-estate', 'google_map', 'Google Map', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2724, 1, 'en', 'plugins/real-estate/real-estate', 'google_map_description', 'Settings for Google Map to search location', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2725, 1, 'en', 'plugins/real-estate/real-estate', 'api_key', 'API key (optional)', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2726, 1, 'en', 'plugins/real-estate/real-estate', 'api_key_helper', 'Insert google maps key', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2727, 1, 'en', 'plugins/real-estate/settings', 'title', 'Accounts', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2728, 1, 'en', 'plugins/real-estate/settings', 'description', 'Settings for members', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2729, 1, 'en', 'plugins/real-estate/settings', 'verify_account_email', 'Verify account\'s email?', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2730, 1, 'en', 'plugins/real-estate/settings', 'square_unit', 'Unit of square', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2731, 1, 'en', 'plugins/real-estate/settings', 'square_unit_none', 'None', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2732, 1, 'en', 'plugins/real-estate/settings', 'square_unit_meter', 'Square Meter(m??)', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2733, 1, 'en', 'plugins/real-estate/settings', 'square_unit_feet', 'Square Feet(ft2)', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2734, 1, 'en', 'plugins/real-estate/settings', 'general', 'General settings', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2735, 1, 'en', 'plugins/real-estate/settings', 'general_description', 'Basic settings for Real Estate', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2736, 1, 'en', 'plugins/real-estate/settings', 'real_estate_convert_money_to_text_enabled', 'Convert money to text if it is too big?', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2737, 1, 'en', 'plugins/real-estate/settings', 'thousands_separator', 'Thousands separator', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2738, 1, 'en', 'plugins/real-estate/settings', 'decimal_separator', 'Decimal separator', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2739, 1, 'en', 'plugins/real-estate/settings', 'separator_period', 'Period (.)', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2740, 1, 'en', 'plugins/real-estate/settings', 'separator_comma', 'Comma (,)', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2741, 1, 'en', 'plugins/real-estate/settings', 'separator_space', 'Space ( )', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2742, 1, 'en', 'plugins/real-estate/settings', 'real_estate_enabled_register', 'Allow visitors to register account and post their properties?', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2743, 1, 'en', 'plugins/real-estate/settings', 'email.title', 'Real Estate', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2744, 1, 'en', 'plugins/real-estate/settings', 'email.description', 'Real estate email configuration', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2745, 1, 'vi', 'plugins/real-estate/account-property', 'draft_properties', 'Draft Properties', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2746, 1, 'vi', 'plugins/real-estate/account-property', 'pending_properties', 'Pending Properties', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2747, 1, 'vi', 'plugins/real-estate/account-property', 'published_properties', 'Published Properties', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2748, 1, 'vi', 'plugins/real-estate/account-property', 'properties', 'Properties', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2749, 1, 'vi', 'plugins/real-estate/account-property', 'write_property', 'Write a property', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2750, 1, 'vi', 'plugins/real-estate/account', 'create', 'Th??m t??i kho???n', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2751, 1, 'vi', 'plugins/real-estate/account', 'edit', 'S???a t??i kho???n', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2752, 1, 'vi', 'plugins/real-estate/account', 'name', 'T??i kho???n', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2753, 1, 'vi', 'plugins/real-estate/account', 'confirmation_subject', 'X??c nh???n email', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2754, 1, 'vi', 'plugins/real-estate/account', 'confirmation_subject_title', 'X??c nh???n email c???a b???n', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2755, 1, 'vi', 'plugins/real-estate/account', 'not_confirmed', 'Email c???a b???n ch??a ???????c x??c th???c. <a href=\":resend_link\">G???i l???i li??n k???t x??c th???c.</a>', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2756, 1, 'vi', 'plugins/real-estate/account', 'confirmation_successful', 'X??c nh???n ?????a ch??? email th??nh c??ng', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2757, 1, 'vi', 'plugins/real-estate/account', 'confirmation_info', 'Vui l??ng x??c nh???n email c???a b???n', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2758, 1, 'vi', 'plugins/real-estate/account', 'confirmation_resent', 'Ch??ng t??i ???? g???i m???t email x??c nh???n kh??c. B???n s??? nh???n ???????c ch??ng trong gi??y l??t.', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2759, 1, 'vi', 'plugins/real-estate/account', 'form.email', 'Email', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2760, 1, 'vi', 'plugins/real-estate/account', 'form.password', 'M???t kh???u', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2761, 1, 'vi', 'plugins/real-estate/account', 'form.password_confirmation', 'X??c nh???n m???t kh???u', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2762, 1, 'vi', 'plugins/real-estate/account', 'form.change_password', '?????i m???t kh???u', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2763, 1, 'vi', 'plugins/real-estate/account', 'forgot_password', 'Qu??n m???t kh???u', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2764, 1, 'vi', 'plugins/real-estate/account', 'login', '????ng nh???p', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2765, 1, 'vi', 'plugins/real-estate/account', 'buy_credits', 'Mua t??n d???ng', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2766, 1, 'vi', 'plugins/real-estate/account', 'credits', 't??n d???ng', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2767, 1, 'vi', 'plugins/real-estate/account', 'account_settings', 'C??i ?????t t??i kho???n', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2768, 1, 'vi', 'plugins/real-estate/account', 'update_profile_success', 'C???p nh???t th??ng tin t??i kho???n th??nh c??ng!', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2769, 1, 'vi', 'plugins/real-estate/account', 'security', 'B???o m???t', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2770, 1, 'vi', 'plugins/real-estate/account', 'packages', 'G??i', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2771, 1, 'vi', 'plugins/real-estate/account', 'transactions', 'Giao d???ch', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2772, 1, 'vi', 'plugins/real-estate/account', 'subscribe_package', '????ng k?? g??i \":name\"', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2773, 1, 'vi', 'plugins/real-estate/category', 'name', 'Categories', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2774, 1, 'vi', 'plugins/real-estate/category', 'create', 'New category', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2775, 1, 'vi', 'plugins/real-estate/category', 'edit', 'Edit category', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2776, 1, 'vi', 'plugins/real-estate/consult', 'name', 'T?? v???n', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2777, 1, 'vi', 'plugins/real-estate/consult', 'edit', 'Xem t?? v???n', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2778, 1, 'vi', 'plugins/real-estate/consult', 'statuses.read', '???? ?????c', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2779, 1, 'vi', 'plugins/real-estate/consult', 'statuses.unread', 'Ch??a ?????c', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2780, 1, 'vi', 'plugins/real-estate/consult', 'phone', '??i???n tho???i', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2781, 1, 'vi', 'plugins/real-estate/consult', 'settings.email.title', 'T?? v???n', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2782, 1, 'vi', 'plugins/real-estate/consult', 'settings.email.description', 'C???u h??nh email cho t?? v???n', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2783, 1, 'vi', 'plugins/real-estate/consult', 'settings.email.templates.notice_title', 'G???i th??ng b??o t???i qu???n tr??? vi??n', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2784, 1, 'vi', 'plugins/real-estate/consult', 'settings.email.templates.notice_description', 'M???u email g???i t???i qu???n tr??? vi??n khi c?? y??u c???u t?? v???n m???i', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2785, 1, 'vi', 'plugins/real-estate/consult', 'content', 'Chi ti???t', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2786, 1, 'vi', 'plugins/real-estate/consult', 'consult_information', 'N???i dung y??u c???u t?? v???n', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2787, 1, 'vi', 'plugins/real-estate/consult', 'email.header', 'Email', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2788, 1, 'vi', 'plugins/real-estate/consult', 'email.title', 'Y??u c???u t?? v???n m???i', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2789, 1, 'vi', 'plugins/real-estate/consult', 'email.success', 'G???i y??u c???u t?? v???n th??nh c??ng!', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2790, 1, 'vi', 'plugins/real-estate/consult', 'email.failed', 'G???i y??u c???u t?? v???n th???t b???i, vui l??ng th??? l???i sau!', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2791, 1, 'vi', 'plugins/real-estate/consult', 'form.name.required', 'T??n l?? b???t bu???c', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2792, 1, 'vi', 'plugins/real-estate/consult', 'form.email.required', 'Email l?? b???t bu???c', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2793, 1, 'vi', 'plugins/real-estate/consult', 'form.email.email', '?????a ch??? email kh??ng h???p l???', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2794, 1, 'vi', 'plugins/real-estate/consult', 'form.content.required', 'N???i dung l?? b???t bu???c', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2795, 1, 'vi', 'plugins/real-estate/consult', 'form.g-recaptcha-response.required', 'Ha??y xa??c minh kh??ng pha??i la?? robot tr??????c khi g???i tin nh???n.', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2796, 1, 'vi', 'plugins/real-estate/consult', 'form.g-recaptcha-response.captcha', 'Ba??n ch??a xa??c minh kh??ng ph???i la?? robot tha??nh c??ng.', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2797, 1, 'vi', 'plugins/real-estate/consult', 'confirm_not_robot', 'X??c nh???n kh??ng ph???i ng?????i m??y', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2798, 1, 'vi', 'plugins/real-estate/consult', 'consult_sent_from', 'Y??u c???u t?? v???n n??y ???????c g???i t???', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2799, 1, 'vi', 'plugins/real-estate/consult', 'time', 'Th???i gian', '2021-06-11 08:03:29', '2021-06-11 08:03:29'),
(2800, 1, 'vi', 'plugins/real-estate/consult', 'consult_id', 'M?? y??u c???u t?? v???n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2801, 1, 'vi', 'plugins/real-estate/consult', 'form_name', 'T??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2802, 1, 'vi', 'plugins/real-estate/consult', 'form_email', 'Email', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2803, 1, 'vi', 'plugins/real-estate/consult', 'form_phone', '??i???n tho???i', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2804, 1, 'vi', 'plugins/real-estate/consult', 'mark_as_read', '????nh d???u ???? ?????c', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2805, 1, 'vi', 'plugins/real-estate/consult', 'mark_as_unread', '????nh d???u ch??a ?????c', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2806, 1, 'vi', 'plugins/real-estate/consult', 'new_consult_notice', 'B???n c?? <span class=\"bold\">:count</span> y??u c???u t?? v???n m???i', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2807, 1, 'vi', 'plugins/real-estate/consult', 'view_all', 'Xem t???t c???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2808, 1, 'vi', 'plugins/real-estate/consult', 'project', 'D??? ??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2809, 1, 'vi', 'plugins/real-estate/consult', 'property', 'Nh?? ??? - C??n h???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2810, 1, 'vi', 'plugins/real-estate/currency', 'currencies', 'Ti???n t???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2811, 1, 'vi', 'plugins/real-estate/currency', 'setting_description', 'C??c lo???i ti???n t??? ???????c s??? d???ng tr??n website.', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2812, 1, 'vi', 'plugins/real-estate/currency', 'name', 'T??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2813, 1, 'vi', 'plugins/real-estate/currency', 'symbol', 'K?? hi???u', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2814, 1, 'vi', 'plugins/real-estate/currency', 'number_of_decimals', 'S??? th???p ph??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2815, 1, 'vi', 'plugins/real-estate/currency', 'exchange_rate', 'T??? gi??', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2816, 1, 'vi', 'plugins/real-estate/currency', 'is_prefix_symbol', 'V??? tr?? k?? hi???u', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2817, 1, 'vi', 'plugins/real-estate/currency', 'is_default', 'M???c ?????nh?', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2818, 1, 'vi', 'plugins/real-estate/currency', 'remove', 'Xo??', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2819, 1, 'vi', 'plugins/real-estate/currency', 'new_currency', 'Th??m ti???n t??? m???i', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2820, 1, 'vi', 'plugins/real-estate/currency', 'save_settings', 'L??u c??i ?????t', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2821, 1, 'vi', 'plugins/real-estate/currency', 'before_number', 'Tr?????c s???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2822, 1, 'vi', 'plugins/real-estate/currency', 'after_number', 'Sau s???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2823, 1, 'vi', 'plugins/real-estate/dashboard', 'joined_on', 'Tham gia t??? :date', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2824, 1, 'vi', 'plugins/real-estate/dashboard', 'dob', 'Ng??y sinh :date', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2825, 1, 'vi', 'plugins/real-estate/dashboard', 'email', 'Email', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2826, 1, 'vi', 'plugins/real-estate/dashboard', 'email_or_username', 'Email/T??n ????ng nh???p', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2827, 1, 'vi', 'plugins/real-estate/dashboard', 'password', 'M???t kh???u', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2828, 1, 'vi', 'plugins/real-estate/dashboard', 'password-confirmation', 'X??c nh???n m???t kh???u', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2829, 1, 'vi', 'plugins/real-estate/dashboard', 'remember-me', 'Ghi nh??? t??i kho???n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2830, 1, 'vi', 'plugins/real-estate/dashboard', 'login-title', '????ng nh???p', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2831, 1, 'vi', 'plugins/real-estate/dashboard', 'login-cta', '????ng nh???p', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2832, 1, 'vi', 'plugins/real-estate/dashboard', 'register-title', '????ng k??', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2833, 1, 'vi', 'plugins/real-estate/dashboard', 'register-cta', '????ng k??', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2834, 1, 'vi', 'plugins/real-estate/dashboard', 'forgot-password-cta', 'Qu??n m???t kh???u?', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2835, 1, 'vi', 'plugins/real-estate/dashboard', 'name', 'T??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2836, 1, 'vi', 'plugins/real-estate/dashboard', 'reset-password-title', 'Kh??i ph???c m???t kh???u', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2837, 1, 'vi', 'plugins/real-estate/dashboard', 'reset-password-cta', 'Kh??i ph???c m???t kh???u', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2838, 1, 'vi', 'plugins/real-estate/dashboard', 'cancel-link', 'H???y b???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2839, 1, 'vi', 'plugins/real-estate/dashboard', 'logout-cta', '????ng xu???t', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2840, 1, 'vi', 'plugins/real-estate/dashboard', 'header_profile_link', 'T??i kho???n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2841, 1, 'vi', 'plugins/real-estate/dashboard', 'header_settings_link', 'C??i ?????t', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2842, 1, 'vi', 'plugins/real-estate/dashboard', 'header_logout_link', '????ng xu???t', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2843, 1, 'vi', 'plugins/real-estate/dashboard', 'unknown_state', 'Kh??ng x??c nh???n ???????c', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2844, 1, 'vi', 'plugins/real-estate/dashboard', 'close', '????ng', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2845, 1, 'vi', 'plugins/real-estate/dashboard', 'save', 'L??u', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2846, 1, 'vi', 'plugins/real-estate/dashboard', 'loading', '??ang t???i...', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2847, 1, 'vi', 'plugins/real-estate/dashboard', 'new_image', '???nh m???i', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2848, 1, 'vi', 'plugins/real-estate/dashboard', 'change_profile_image', '?????i ???nh ?????i di???n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2849, 1, 'vi', 'plugins/real-estate/dashboard', 'save_cropped_image_failed', 'L??u h??nh ???nh kh??ng th??nh c??ng!', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2850, 1, 'vi', 'plugins/real-estate/dashboard', 'failed_to_crop_image', 'C?? l???i trong qu?? tr??nh x??? l?? ???nh', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2851, 1, 'vi', 'plugins/real-estate/dashboard', 'failed_to_load_data', 'L???i t???i d??? li???u', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2852, 1, 'vi', 'plugins/real-estate/dashboard', 'read_image_failed', '?????c h??nh ???nh th???t b???i', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2853, 1, 'vi', 'plugins/real-estate/dashboard', 'update_avatar_success', 'C???p nh???t ???nh ?????i di???n th??nh c??ng!', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2854, 1, 'vi', 'plugins/real-estate/dashboard', 'change_avatar_description', 'Click l??n ???nh ????? ch???nh s???a ???nh ?????i di???n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2855, 1, 'vi', 'plugins/real-estate/dashboard', 'notices.error', 'L???i!', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2856, 1, 'vi', 'plugins/real-estate/dashboard', 'notices.success', 'Th??nh c??ng!', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2857, 1, 'vi', 'plugins/real-estate/dashboard', 'sidebar_title', 'C??i ?????t c?? nh??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2858, 1, 'vi', 'plugins/real-estate/dashboard', 'sidebar_information', 'Th??ng tin t??i kho???n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2859, 1, 'vi', 'plugins/real-estate/dashboard', 'sidebar_security', 'B???o m???t', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2860, 1, 'vi', 'plugins/real-estate/dashboard', 'sidebar_packages', 'G??i', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2861, 1, 'vi', 'plugins/real-estate/dashboard', 'sidebar_transactions', 'Giao d???ch', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2862, 1, 'vi', 'plugins/real-estate/dashboard', 'account_field_title', 'Th??ng tin t??i kho???n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2863, 1, 'vi', 'plugins/real-estate/dashboard', 'profile-picture', '???nh ?????i di???n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2864, 1, 'vi', 'plugins/real-estate/dashboard', 'uploading', '??ang t???i l??n...', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2865, 1, 'vi', 'plugins/real-estate/dashboard', 'phone', '??i???n tho???i', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2866, 1, 'vi', 'plugins/real-estate/dashboard', 'first_name', 'H???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2867, 1, 'vi', 'plugins/real-estate/dashboard', 'last_name', 'T??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2868, 1, 'vi', 'plugins/real-estate/dashboard', 'description', 'M?? t??? ng???n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2869, 1, 'vi', 'plugins/real-estate/dashboard', 'description_placeholder', 'M?? t??? ????i ch??t v??? b???n...', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2870, 1, 'vi', 'plugins/real-estate/dashboard', 'verified', '???? x??c th???c', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2871, 1, 'vi', 'plugins/real-estate/dashboard', 'verify_require_desc', 'Vui l??ng x??c nh???n email theo li??n k???t ch??ng t??i ???? g???i cho b???n.', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2872, 1, 'vi', 'plugins/real-estate/dashboard', 'birthday', 'Ng??y sinh', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2873, 1, 'vi', 'plugins/real-estate/dashboard', 'year_lc', 'n??m', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2874, 1, 'vi', 'plugins/real-estate/dashboard', 'month_lc', 'th??ng', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2875, 1, 'vi', 'plugins/real-estate/dashboard', 'day_lc', 'ng??y', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2876, 1, 'vi', 'plugins/real-estate/dashboard', 'gender', 'Gi???i t??nh', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2877, 1, 'vi', 'plugins/real-estate/dashboard', 'gender_male', 'Nam', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2878, 1, 'vi', 'plugins/real-estate/dashboard', 'gender_female', 'N???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2879, 1, 'vi', 'plugins/real-estate/dashboard', 'gender_other', 'Kh??c', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2880, 1, 'vi', 'plugins/real-estate/dashboard', 'security_title', 'B???o m???t', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2881, 1, 'vi', 'plugins/real-estate/dashboard', 'packages_title', 'G??i', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2882, 1, 'vi', 'plugins/real-estate/dashboard', 'transactions_title', 'Giao d???ch', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2883, 1, 'vi', 'plugins/real-estate/dashboard', 'current_password', 'M???t kh???u hi???n t???i', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2884, 1, 'vi', 'plugins/real-estate/dashboard', 'password_new', 'M???t kh???u m???i', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2885, 1, 'vi', 'plugins/real-estate/dashboard', 'password_new_confirmation', 'X??c nh???n m???t kh???u', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2886, 1, 'vi', 'plugins/real-estate/dashboard', 'password_update_btn', 'C???p nh???t m???t kh???u', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2887, 1, 'vi', 'plugins/real-estate/dashboard', 'activity_logs', 'L???ch s??? ho???t ?????ng', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2888, 1, 'vi', 'plugins/real-estate/dashboard', 'oops', 'Oops!', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2889, 1, 'vi', 'plugins/real-estate/dashboard', 'no_activity_logs', 'Ch??a c?? ho???t ?????ng n??o c???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2890, 1, 'vi', 'plugins/real-estate/dashboard', 'actions.create_property', 'T???o th??nh c??ng \":name\"', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2891, 1, 'vi', 'plugins/real-estate/dashboard', 'actions.update_property', 'C???p nh???t th??nh c??ng \":name\"', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2892, 1, 'vi', 'plugins/real-estate/dashboard', 'actions.delete_property', 'X??a th??nh c??ng \":name\"', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2893, 1, 'vi', 'plugins/real-estate/dashboard', 'actions.update_setting', 'C???p nh???t c??i ?????t th??nh c??ng', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2894, 1, 'vi', 'plugins/real-estate/dashboard', 'actions.update_security', 'C???p nh???t c??i ?????t th??nh c??ng', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2895, 1, 'vi', 'plugins/real-estate/dashboard', 'actions.your_property_updated_by_admin', 'Tin \":name\" ???? ???????c c???p nh???t b???i qu???n tr??? vi??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2896, 1, 'vi', 'plugins/real-estate/dashboard', 'actions.changed_avatar', '?????i ???nh ?????i di???n th??nh c??ng', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2897, 1, 'vi', 'plugins/real-estate/dashboard', 'load_more', 'T???i th??m', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2898, 1, 'vi', 'plugins/real-estate/dashboard', 'loading_more', '??ang t???i...', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2899, 1, 'vi', 'plugins/real-estate/dashboard', 'back-to-login', 'Tr??? l???i trang ????ng nh???p', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2900, 1, 'vi', 'plugins/real-estate/dashboard', 'no_transactions', 'Ch??a c?? giao d???ch', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2901, 1, 'vi', 'plugins/real-estate/dashboard', 'approved_properties', 'Tin ???? ???????c duy???t', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2902, 1, 'vi', 'plugins/real-estate/dashboard', 'pending_approve_properties', 'C??c tin ??ang ch??? x??t duy???t', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2903, 1, 'vi', 'plugins/real-estate/dashboard', 'rejected_properties', 'C??c tin ???? b??? t??? ch???i', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2904, 1, 'vi', 'plugins/real-estate/dashboard', 'your_credits', 'T??n d???ng c???a b???n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2905, 1, 'vi', 'plugins/real-estate/dashboard', 'add_new', 'Th??m m???i', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2906, 1, 'vi', 'plugins/real-estate/dashboard', 'credits', 't??n d???ng', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2907, 1, 'vi', 'plugins/real-estate/dashboard', 'distance', 'Kho???ng c??ch(km)', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2908, 1, 'vi', 'plugins/real-estate/dashboard', 'free', 'Mi???n ph??', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2909, 1, 'vi', 'plugins/real-estate/dashboard', 'per_post', 'tr??n m???i tin', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2910, 1, 'vi', 'plugins/real-estate/dashboard', 'posts', 'tin', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2911, 1, 'vi', 'plugins/real-estate/dashboard', 'purchase', 'Mua', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2912, 1, 'vi', 'plugins/real-estate/dashboard', 'select_facility', 'L???a ch???n ti???n ??ch', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2913, 1, 'vi', 'plugins/real-estate/dashboard', 'total', 'T???ng c???ng', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2914, 1, 'vi', 'plugins/real-estate/facility', 'name', 'Facilities', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2915, 1, 'vi', 'plugins/real-estate/facility', 'create', 'New facility', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2916, 1, 'vi', 'plugins/real-estate/facility', 'edit', 'Edit facility', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2917, 1, 'vi', 'plugins/real-estate/feature', 'name', 'Ti???n ??ch', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2918, 1, 'vi', 'plugins/real-estate/feature', 'create', 'Th??m ti???n ??ch', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2919, 1, 'vi', 'plugins/real-estate/feature', 'edit', 'S???a ti???n ??ch', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2920, 1, 'vi', 'plugins/real-estate/feature', 'messages.request.name_required', 'T??n l?? th??ng tin b???t bu???c', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2921, 1, 'vi', 'plugins/real-estate/feature', 'form.help_block', 'Th??ng tin v??? c??c ti???n ??ch', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2922, 1, 'vi', 'plugins/real-estate/feature', 'form.name', 'Ti??u ?????', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2923, 1, 'vi', 'plugins/real-estate/investor', 'name', 'Nh?? ?????u t??', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2924, 1, 'vi', 'plugins/real-estate/investor', 'create', 'Th??m nh?? ?????u t??', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2925, 1, 'vi', 'plugins/real-estate/investor', 'edit', 'S???a nh?? ?????u t??', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2926, 1, 'vi', 'plugins/real-estate/package', 'name', 'G??i', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2927, 1, 'vi', 'plugins/real-estate/package', 'create', 'Th??m g??i', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2928, 1, 'vi', 'plugins/real-estate/package', 'edit', 'S???a g??i', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2929, 1, 'vi', 'plugins/real-estate/package', 'price', 'Gi??', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2930, 1, 'vi', 'plugins/real-estate/package', 'currency', 'Ti???n t???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2931, 1, 'vi', 'plugins/real-estate/package', 'percent_save', 'Ph???n tr??m ti???t ki???m', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2932, 1, 'vi', 'plugins/real-estate/package', 'number_of_listings', 'S??? tin ????ng', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2933, 1, 'vi', 'plugins/real-estate/package', 'add_credit_success', 'Th??m t??n d???ng th??nh c??ng!', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2934, 1, 'vi', 'plugins/real-estate/package', 'setup_payment_methods', 'Vui l??ng thi???t l???p ph????ng th???c thanh to??n (PayPal, Stripe, COD, Bank transfer)', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2935, 1, 'vi', 'plugins/real-estate/package', 'add_credit_warning', 'Vui l??ng th??m t??n d???ng ????? ????ng tin c???a b???n t???i ????y', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2936, 1, 'vi', 'plugins/real-estate/package', 'add_credit', 'Th??m t??n d???ng', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2937, 1, 'vi', 'plugins/real-estate/package', 'account_limit', 'Gi???i h???n s??? g??i c?? th??? mua theo t??i kho???n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2938, 1, 'vi', 'plugins/real-estate/package', 'account_limit_placeholder', 'M???i t??i kho???n c?? th??? mua x l???n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2939, 1, 'vi', 'plugins/real-estate/package', 'subscribe_package', '????ng k?? tin', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2940, 1, 'vi', 'plugins/real-estate/project', 'name', 'D??? ??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2941, 1, 'vi', 'plugins/real-estate/project', 'create', 'Th??m d??? ??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2942, 1, 'vi', 'plugins/real-estate/project', 'edit', 'S???a', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2943, 1, 'vi', 'plugins/real-estate/project', 'form.general_info', 'Th??ng tin chung', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2944, 1, 'vi', 'plugins/real-estate/project', 'form.name', 'T??n d??? ??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2945, 1, 'vi', 'plugins/real-estate/project', 'form.description', 'M?? t???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2946, 1, 'vi', 'plugins/real-estate/project', 'form.basic_info', 'Th??ng tin c?? b???n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2947, 1, 'vi', 'plugins/real-estate/project', 'form.location', '?????a ch???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2948, 1, 'vi', 'plugins/real-estate/project', 'form.investor', 'Ch??? ?????u t??', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2949, 1, 'vi', 'plugins/real-estate/project', 'form.number_block', 'S??? block', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2950, 1, 'vi', 'plugins/real-estate/project', 'form.number_floor', 'S??? t???ng', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2951, 1, 'vi', 'plugins/real-estate/project', 'form.number_flat', 'S??? c??n h???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2952, 1, 'vi', 'plugins/real-estate/project', 'form.date_finish', 'Ng??y ho??n th??nh', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2953, 1, 'vi', 'plugins/real-estate/project', 'form.date_sell', 'Ng??y m??? b??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2954, 1, 'vi', 'plugins/real-estate/project', 'form.images', 'H??nh ???nh', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2955, 1, 'vi', 'plugins/real-estate/project', 'form.price_from', 'Gi?? th???p nh???t', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2956, 1, 'vi', 'plugins/real-estate/project', 'form.price_to', 'Gi?? cao nh???t', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2957, 1, 'vi', 'plugins/real-estate/project', 'form.currency', 'Lo???i ti???n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2958, 1, 'vi', 'plugins/real-estate/project', 'form.city', 'Th??nh ph???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2959, 1, 'vi', 'plugins/real-estate/project', 'form.category', 'Lo???i d??? ??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2960, 1, 'vi', 'plugins/real-estate/project', 'statuses.not_available', 'Kh??ng kh??? d???ng', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2961, 1, 'vi', 'plugins/real-estate/project', 'statuses.pre_sale', 'Chu???n b??? m??? b??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2962, 1, 'vi', 'plugins/real-estate/project', 'statuses.selling', '??ang b??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2963, 1, 'vi', 'plugins/real-estate/project', 'statuses.sold', '???? b??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2964, 1, 'vi', 'plugins/real-estate/project', 'statuses.building', '??ang x??y d???ng', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2965, 1, 'vi', 'plugins/real-estate/property', 'name', 'Nh?? - C??n h???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2966, 1, 'vi', 'plugins/real-estate/property', 'create', 'Th??m m???i', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2967, 1, 'vi', 'plugins/real-estate/property', 'edit', 'S???a', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2968, 1, 'vi', 'plugins/real-estate/property', 'form.main_info', 'Th??ng tin', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2969, 1, 'vi', 'plugins/real-estate/property', 'form.basic_info', 'Th??ng tin c?? b???n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2970, 1, 'vi', 'plugins/real-estate/property', 'form.description', 'M?? t???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2971, 1, 'vi', 'plugins/real-estate/property', 'form.name', 'Ti??u ?????', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2972, 1, 'vi', 'plugins/real-estate/property', 'form.type', 'Lo???i', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2973, 1, 'vi', 'plugins/real-estate/property', 'form.images', 'H??nh ???nh', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2974, 1, 'vi', 'plugins/real-estate/property', 'form.button_add_image', 'Th??m ???nh', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2975, 1, 'vi', 'plugins/real-estate/property', 'form.location', '?????a ch???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2976, 1, 'vi', 'plugins/real-estate/property', 'form.number_bedroom', 'S??? ph??ng ng???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2977, 1, 'vi', 'plugins/real-estate/property', 'form.number_bathroom', 'S??? ph??ng t???m', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2978, 1, 'vi', 'plugins/real-estate/property', 'form.number_floor', 'S??? t???ng', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2979, 1, 'vi', 'plugins/real-estate/property', 'form.square', 'Di???n t??ch (m2)', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2980, 1, 'vi', 'plugins/real-estate/property', 'form.price', 'Gi??', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2981, 1, 'vi', 'plugins/real-estate/property', 'form.features', 'Ti???n ??ch', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2982, 1, 'vi', 'plugins/real-estate/property', 'form.project', 'D??? ??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2983, 1, 'vi', 'plugins/real-estate/property', 'form.date', 'Th??ng tin th???i gian', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2984, 1, 'vi', 'plugins/real-estate/property', 'form.currency', 'Lo???i ti???n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2985, 1, 'vi', 'plugins/real-estate/property', 'form.city', 'Th??nh ph???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2986, 1, 'vi', 'plugins/real-estate/property', 'form.period', 'Chu k???', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2987, 1, 'vi', 'plugins/real-estate/property', 'form.category', 'Lo???i nh??', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2988, 1, 'vi', 'plugins/real-estate/property', 'statuses.not_available', 'Kh??ng kh??? d???ng', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2989, 1, 'vi', 'plugins/real-estate/property', 'statuses.pre_sale', 'Chu???n b??? m??? b??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2990, 1, 'vi', 'plugins/real-estate/property', 'statuses.selling', '??ang b??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2991, 1, 'vi', 'plugins/real-estate/property', 'statuses.sold', '???? b??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2992, 1, 'vi', 'plugins/real-estate/property', 'statuses.renting', '??ang m??? thu??', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2993, 1, 'vi', 'plugins/real-estate/property', 'statuses.rented', '???? cho thu??', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2994, 1, 'vi', 'plugins/real-estate/property', 'statuses.building', '??ang x??y d???ng', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2995, 1, 'vi', 'plugins/real-estate/property', 'types.sale', 'Nh?? b??n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2996, 1, 'vi', 'plugins/real-estate/property', 'types.rent', 'Nh?? cho thu??', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2997, 1, 'vi', 'plugins/real-estate/property', 'periods.day', 'Ng??y', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2998, 1, 'vi', 'plugins/real-estate/property', 'periods.month', 'Th??ng', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(2999, 1, 'vi', 'plugins/real-estate/property', 'periods.year', 'N??m', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3000, 1, 'vi', 'plugins/real-estate/real-estate', 'name', 'B???t ?????ng s???n', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3001, 1, 'vi', 'plugins/real-estate/real-estate', 'settings', 'C??i ?????t', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3002, 1, 'vi', 'plugins/real-estate/settings', 'title', 'Accounts', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3003, 1, 'vi', 'plugins/real-estate/settings', 'description', 'Settings for members', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3004, 1, 'vi', 'plugins/real-estate/settings', 'verify_account_email', 'Verify account\'s email?', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3005, 1, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3006, 1, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3007, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3008, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3009, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3010, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3011, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3012, 1, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3013, 1, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3014, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3015, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3016, 1, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3017, 1, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3018, 1, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3019, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3020, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3021, 1, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3022, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3023, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3024, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3025, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3026, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2021-06-11 08:03:30', '2021-06-11 08:03:30'),
(3027, 1, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3028, 1, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3029, 1, 'en', 'plugins/testimonials/forms', 'name', 'Customer name', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3030, 1, 'en', 'plugins/testimonials/forms', 'company', 'Company/Working place', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3031, 1, 'en', 'plugins/testimonials/forms', 'avatar', 'Avatar', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3032, 1, 'en', 'plugins/testimonials/forms', 'title', 'Title', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3033, 1, 'en', 'plugins/testimonials/forms', 'content', 'Content', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3034, 1, 'en', 'plugins/testimonials/forms', 'publish', 'Publish', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3035, 1, 'en', 'plugins/testimonials/forms', 'unpublish', 'Unpublish', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3036, 1, 'en', 'plugins/testimonials/testimonials', 'name', 'Testimonials', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3037, 1, 'en', 'plugins/testimonials/testimonials', 'create', 'New testimonials', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3038, 1, 'en', 'plugins/testimonials/testimonials', 'edit', 'Edit testimonials', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3039, 1, 'vi', 'plugins/testimonials/forms', 'name', 'T??n kh??ch h??ng', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3040, 1, 'vi', 'plugins/testimonials/forms', 'company', 'C??ng ty/N??i l??m vi???c', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3041, 1, 'vi', 'plugins/testimonials/forms', 'avatar', 'Avatar', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3042, 1, 'vi', 'plugins/testimonials/forms', 'title', 'Ti??u ?????', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3043, 1, 'vi', 'plugins/testimonials/forms', 'content', 'N???i dung', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3044, 1, 'vi', 'plugins/testimonials/forms', 'publish', 'Xu???t b???n', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3045, 1, 'vi', 'plugins/testimonials/forms', 'unpublish', 'Kh??ng xu???t b???n', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3046, 1, 'vi', 'plugins/testimonials/testimonials', 'name', 'Nh???n x??t kh??ch h??ng', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3047, 1, 'vi', 'plugins/testimonials/testimonials', 'create', 'T???o m???i', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3048, 1, 'vi', 'plugins/testimonials/testimonials', 'edit', 'S???a nh???n x??t', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3049, 1, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3050, 1, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3051, 1, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3052, 1, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3053, 1, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3054, 1, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3055, 1, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3056, 1, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3057, 1, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3058, 1, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3059, 1, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3060, 1, 'en', 'plugins/translation/translation', 'back', 'Back', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3061, 1, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3062, 1, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3063, 1, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3064, 1, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3065, 1, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3066, 1, 'en', 'plugins/translation/translation', 'admin-translations', 'Admin translations', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3067, 1, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3068, 1, 'en', 'plugins/translation/translation', 'to', 'to', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3069, 1, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3070, 1, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3071, 1, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3072, 1, 'en', 'plugins/translation/translation', 'locale_placeholder', 'Ex: en', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3073, 1, 'en', 'plugins/translation/translation', 'name', 'Name', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3074, 1, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3075, 1, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3076, 1, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3077, 1, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3078, 1, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3079, 1, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3080, 1, 'en', 'plugins/translation/translation', 'folder_is_not_writeable', 'Cannot write files! Folder /resources/lang is not writable. Please chmod to make it writable!', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3081, 1, 'vi', 'auth', 'failed', 'Kh??ng t??m th???y th??ng tin ????ng nh???p h???p l???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3082, 1, 'vi', 'auth', 'throttle', '????ng nh???p kh??ng ????ng qu?? nhi???u l???n. Vui l??ng th??? l???i sau :seconds gi??y.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3083, 1, 'vi', 'auth', 'password', 'M???t kh???u kh??ng ch??nh x??c', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3084, 1, 'vi', 'pagination', 'previous', '&laquo; Tr?????c', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3085, 1, 'vi', 'pagination', 'next', 'Sau &raquo;', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3086, 1, 'vi', 'passwords', 'reset', 'M???t kh???u ???? ???????c c???p nh???t!', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3087, 1, 'vi', 'passwords', 'sent', 'Ch??ng t??i ???? g???i cho b???n ???????ng d???n thay ?????i m???t kh???u!', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3088, 1, 'vi', 'passwords', 'token', 'M?? x??c nh???n m???t kh???u kh??ng h???p l???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3089, 1, 'vi', 'passwords', 'user', 'Kh??ng t??m th???y th??nh vi??n v???i ?????a ch??? email n??y.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3090, 1, 'vi', 'validation', 'accepted', 'Tr?????ng :attribute ph???i ???????c ch???p nh???n.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3091, 1, 'vi', 'validation', 'active_url', 'Tr?????ng :attribute kh??ng ph???i l?? m???t URL h???p l???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3092, 1, 'vi', 'validation', 'after', 'Tr?????ng :attribute ph???i l?? m???t ng??y sau ng??y :date.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3093, 1, 'vi', 'validation', 'after_or_equal', 'Tr?????ng :attribute ph???i l?? th???i gian b???t ?????u sau ho???c ????ng b???ng :date.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3094, 1, 'vi', 'validation', 'alpha', 'Tr?????ng :attribute ch??? c?? th??? ch???a c??c ch??? c??i.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3095, 1, 'vi', 'validation', 'alpha_dash', 'Tr?????ng :attribute ch??? c?? th??? ch???a ch??? c??i, s??? v?? d???u g???ch ngang.', '2021-06-11 08:03:31', '2021-06-11 08:03:31');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3096, 1, 'vi', 'validation', 'alpha_num', 'Tr?????ng :attribute ch??? c?? th??? ch???a ch??? c??i v?? s???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3097, 1, 'vi', 'validation', 'array', 'Tr?????ng :attribute ph???i l?? d???ng m???ng.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3098, 1, 'vi', 'validation', 'attached', 'Tr?????ng :attribute ???? ???????c ????nh k??m.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3099, 1, 'vi', 'validation', 'before', 'Tr?????ng :attribute ph???i l?? m???t ng??y tr?????c ng??y :date.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3100, 1, 'vi', 'validation', 'before_or_equal', 'Tr?????ng :attribute ph???i l?? th???i gian b???t ?????u tr?????c ho???c ????ng b???ng :date.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3101, 1, 'vi', 'validation', 'between.array', 'Tr?????ng :attribute ph???i c?? t??? :min - :max ph???n t???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3102, 1, 'vi', 'validation', 'between.file', 'Dung l?????ng t???p tin trong tr?????ng :attribute ph???i t??? :min - :max kB.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3103, 1, 'vi', 'validation', 'between.numeric', 'Tr?????ng :attribute ph???i n???m trong kho???ng :min - :max.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3104, 1, 'vi', 'validation', 'between.string', 'Tr?????ng :attribute ph???i t??? :min - :max k?? t???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3105, 1, 'vi', 'validation', 'boolean', 'Tr?????ng :attribute ph???i l?? true ho???c false.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3106, 1, 'vi', 'validation', 'confirmed', 'Gi?? tr??? x??c nh???n trong tr?????ng :attribute kh??ng kh???p.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3107, 1, 'vi', 'validation', 'date', 'Tr?????ng :attribute kh??ng ph???i l?? ?????nh d???ng c???a ng??y-th??ng.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3108, 1, 'vi', 'validation', 'date_equals', 'Tr?????ng :attribute ph???i l?? m???t ng??y b???ng v???i :date.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3109, 1, 'vi', 'validation', 'date_format', 'Tr?????ng :attribute kh??ng gi???ng v???i ?????nh d???ng :format.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3110, 1, 'vi', 'validation', 'different', 'Tr?????ng :attribute v?? :other ph???i kh??c nhau.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3111, 1, 'vi', 'validation', 'digits', '????? d??i c???a tr?????ng :attribute ph???i g???m :digits ch??? s???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3112, 1, 'vi', 'validation', 'digits_between', '????? d??i c???a tr?????ng :attribute ph???i n???m trong kho???ng :min and :max ch??? s???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3113, 1, 'vi', 'validation', 'dimensions', 'Tr?????ng :attribute c?? k??ch th?????c kh??ng h???p l???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3114, 1, 'vi', 'validation', 'distinct', 'Tr?????ng :attribute c?? gi?? tr??? tr??ng l???p.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3115, 1, 'vi', 'validation', 'email', 'Tr?????ng :attribute ph???i l?? m???t ?????a ch??? email h???p l???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3116, 1, 'vi', 'validation', 'ends_with', 'Tr?????ng :attribute ph???i k???t th??c b???ng m???t trong nh???ng gi?? tr??? sau: :values', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3117, 1, 'vi', 'validation', 'exists', 'Gi?? tr??? ???? ch???n trong tr?????ng :attribute kh??ng h???p l???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3118, 1, 'vi', 'validation', 'file', 'Tr?????ng :attribute ph???i l?? m???t t???p tin.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3119, 1, 'vi', 'validation', 'filled', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3120, 1, 'vi', 'validation', 'gt.array', 'M???ng :attribute ph???i c?? nhi???u h??n :value ph???n t???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3121, 1, 'vi', 'validation', 'gt.file', 'Dung l?????ng tr?????ng :attribute ph???i l???n h??n :value kilobytes.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3122, 1, 'vi', 'validation', 'gt.numeric', 'Gi?? tr??? tr?????ng :attribute ph???i l???n h??n :value.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3123, 1, 'vi', 'validation', 'gt.string', '????? d??i tr?????ng :attribute ph???i nhi???u h??n :value k?? t???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3124, 1, 'vi', 'validation', 'gte.array', 'M???ng :attribute ph???i c?? ??t nh???t :value ph???n t???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3125, 1, 'vi', 'validation', 'gte.file', 'Dung l?????ng tr?????ng :attribute ph???i l???n h??n ho???c b???ng :value kilobytes.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3126, 1, 'vi', 'validation', 'gte.numeric', 'Gi?? tr??? tr?????ng :attribute ph???i l???n h??n ho???c b???ng :value.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3127, 1, 'vi', 'validation', 'gte.string', '????? d??i tr?????ng :attribute ph???i l???n h??n ho???c b???ng :value k?? t???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3128, 1, 'vi', 'validation', 'image', 'Tr?????ng :attribute ph???i l?? ?????nh d???ng h??nh ???nh.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3129, 1, 'vi', 'validation', 'in', 'Gi?? tr??? ???? ch???n trong tr?????ng :attribute kh??ng h???p l???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3130, 1, 'vi', 'validation', 'in_array', 'Tr?????ng :attribute ph???i thu???c t???p cho ph??p: :other.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3131, 1, 'vi', 'validation', 'integer', 'Tr?????ng :attribute ph???i l?? m???t s??? nguy??n.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3132, 1, 'vi', 'validation', 'ip', 'Tr?????ng :attribute ph???i l?? m???t ?????a ch??? IP.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3133, 1, 'vi', 'validation', 'ipv4', 'Tr?????ng :attribute ph???i l?? m???t ?????a ch??? IPv4.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3134, 1, 'vi', 'validation', 'ipv6', 'Tr?????ng :attribute ph???i l?? m???t ?????a ch??? IPv6.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3135, 1, 'vi', 'validation', 'json', 'Tr?????ng :attribute ph???i l?? m???t chu???i JSON.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3136, 1, 'vi', 'validation', 'lt.array', 'M???ng :attribute ph???i c?? ??t h??n :value ph???n t???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3137, 1, 'vi', 'validation', 'lt.file', 'Dung l?????ng tr?????ng :attribute ph???i nh??? h??n :value kilobytes.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3138, 1, 'vi', 'validation', 'lt.numeric', 'Gi?? tr??? tr?????ng :attribute ph???i nh??? h??n :value.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3139, 1, 'vi', 'validation', 'lt.string', '????? d??i tr?????ng :attribute ph???i nh??? h??n :value k?? t???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3140, 1, 'vi', 'validation', 'lte.array', 'M???ng :attribute kh??ng ???????c c?? nhi???u h??n :value ph???n t???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3141, 1, 'vi', 'validation', 'lte.file', 'Dung l?????ng tr?????ng :attribute ph???i nh??? h??n ho???c b???ng :value kilobytes.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3142, 1, 'vi', 'validation', 'lte.numeric', 'Gi?? tr??? tr?????ng :attribute ph???i nh??? h??n ho???c b???ng :value.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3143, 1, 'vi', 'validation', 'lte.string', '????? d??i tr?????ng :attribute ph???i nh??? h??n ho???c b???ng :value k?? t???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3144, 1, 'vi', 'validation', 'max.array', 'Tr?????ng :attribute kh??ng ???????c l???n h??n :max ph???n t???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3145, 1, 'vi', 'validation', 'max.file', 'Dung l?????ng t???p tin trong tr?????ng :attribute kh??ng ???????c l???n h??n :max kB.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3146, 1, 'vi', 'validation', 'max.numeric', 'Tr?????ng :attribute kh??ng ???????c l???n h??n :max.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3147, 1, 'vi', 'validation', 'max.string', 'Tr?????ng :attribute kh??ng ???????c l???n h??n :max k?? t???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3148, 1, 'vi', 'validation', 'mimes', 'Tr?????ng :attribute ph???i l?? m???t t???p tin c?? ?????nh d???ng: :values.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3149, 1, 'vi', 'validation', 'mimetypes', 'Tr?????ng :attribute ph???i l?? m???t t???p tin c?? ?????nh d???ng: :values.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3150, 1, 'vi', 'validation', 'min.array', 'Tr?????ng :attribute ph???i c?? t???i thi???u :min ph???n t???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3151, 1, 'vi', 'validation', 'min.file', 'Dung l?????ng t???p tin trong tr?????ng :attribute ph???i t???i thi???u :min kB.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3152, 1, 'vi', 'validation', 'min.numeric', 'Tr?????ng :attribute ph???i t???i thi???u l?? :min.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3153, 1, 'vi', 'validation', 'min.string', 'Tr?????ng :attribute ph???i c?? t???i thi???u :min k?? t???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3154, 1, 'vi', 'validation', 'multiple_of', 'Tr?????ng :attribute ph???i l?? b???i s??? c???a :value', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3155, 1, 'vi', 'validation', 'not_in', 'Gi?? tr??? ???? ch???n trong tr?????ng :attribute kh??ng h???p l???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3156, 1, 'vi', 'validation', 'not_regex', 'Tr?????ng :attribute c?? ?????nh d???ng kh??ng h???p l???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3157, 1, 'vi', 'validation', 'numeric', 'Tr?????ng :attribute ph???i l?? m???t s???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3158, 1, 'vi', 'validation', 'password', 'M???t kh???u kh??ng ????ng.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3159, 1, 'vi', 'validation', 'present', 'Tr?????ng :attribute ph???i ???????c cung c???p.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3160, 1, 'vi', 'validation', 'prohibited', 'Tr?????ng :attribute b??? c???m.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3161, 1, 'vi', 'validation', 'prohibited_if', 'Tr?????ng :attribute b??? c???m khi :other l?? :value.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3162, 1, 'vi', 'validation', 'prohibited_unless', 'Tr?????ng :attribute b??? c???m tr??? khi :other l?? m???t trong :values.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3163, 1, 'vi', 'validation', 'regex', 'Tr?????ng :attribute c?? ?????nh d???ng kh??ng h???p l???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3164, 1, 'vi', 'validation', 'relatable', 'Tr?????ng :attribute kh??ng th??? li??n k???t v???i t??i nguy??n n??y.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3165, 1, 'vi', 'validation', 'required', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3166, 1, 'vi', 'validation', 'required_if', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng khi tr?????ng :other l?? :value.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3167, 1, 'vi', 'validation', 'required_unless', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng tr??? khi :other l?? :values.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3168, 1, 'vi', 'validation', 'required_with', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng khi m???t trong :values c?? gi?? tr???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3169, 1, 'vi', 'validation', 'required_with_all', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng khi t???t c??? :values c?? gi?? tr???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3170, 1, 'vi', 'validation', 'required_without', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng khi m???t trong :values kh??ng c?? gi?? tr???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3171, 1, 'vi', 'validation', 'required_without_all', 'Tr?????ng :attribute kh??ng ???????c b??? tr???ng khi t???t c??? :values kh??ng c?? gi?? tr???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3172, 1, 'vi', 'validation', 'same', 'Tr?????ng :attribute v?? :other ph???i gi???ng nhau.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3173, 1, 'vi', 'validation', 'size.array', 'Tr?????ng :attribute ph???i ch???a :size ph???n t???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3174, 1, 'vi', 'validation', 'size.file', 'Dung l?????ng t???p tin trong tr?????ng :attribute ph???i b???ng :size kB.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3175, 1, 'vi', 'validation', 'size.numeric', 'Tr?????ng :attribute ph???i b???ng :size.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3176, 1, 'vi', 'validation', 'size.string', 'Tr?????ng :attribute ph???i ch???a :size k?? t???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3177, 1, 'vi', 'validation', 'starts_with', 'Tr?????ng :attribute ph???i ???????c b???t ?????u b???ng m???t trong nh???ng gi?? tr??? sau: :values', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3178, 1, 'vi', 'validation', 'string', 'Tr?????ng :attribute ph???i l?? m???t chu???i k?? t???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3179, 1, 'vi', 'validation', 'timezone', 'Tr?????ng :attribute ph???i l?? m???t m??i gi??? h???p l???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3180, 1, 'vi', 'validation', 'unique', 'Tr?????ng :attribute ???? c?? trong c?? s??? d??? li???u.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3181, 1, 'vi', 'validation', 'uploaded', 'Tr?????ng :attribute t???i l??n th???t b???i.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3182, 1, 'vi', 'validation', 'url', 'Tr?????ng :attribute kh??ng gi???ng v???i ?????nh d???ng m???t URL.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3183, 1, 'vi', 'validation', 'uuid', 'Tr?????ng :attribute ph???i l?? m???t chu???i UUID h???p l???.', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3184, 1, 'vi', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3185, 1, 'vi', 'validation', 'attributes.address', '?????a ch???', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3186, 1, 'vi', 'validation', 'attributes.age', 'tu???i', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3187, 1, 'vi', 'validation', 'attributes.available', 'c?? s???n', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3188, 1, 'vi', 'validation', 'attributes.body', 'n???i dung', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3189, 1, 'vi', 'validation', 'attributes.city', 'th??nh ph???', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3190, 1, 'vi', 'validation', 'attributes.content', 'n???i dung', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3191, 1, 'vi', 'validation', 'attributes.country', 'qu???c gia', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3192, 1, 'vi', 'validation', 'attributes.date', 'ng??y', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3193, 1, 'vi', 'validation', 'attributes.day', 'ng??y', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3194, 1, 'vi', 'validation', 'attributes.description', 'm?? t???', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3195, 1, 'vi', 'validation', 'attributes.email', 'email', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3196, 1, 'vi', 'validation', 'attributes.excerpt', 'tr??ch d???n', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3197, 1, 'vi', 'validation', 'attributes.first_name', 't??n', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3198, 1, 'vi', 'validation', 'attributes.gender', 'gi???i t??nh', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3199, 1, 'vi', 'validation', 'attributes.hour', 'gi???', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3200, 1, 'vi', 'validation', 'attributes.last_name', 'h???', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3201, 1, 'vi', 'validation', 'attributes.message', 'l???i nh???n', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3202, 1, 'vi', 'validation', 'attributes.minute', 'ph??t', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3203, 1, 'vi', 'validation', 'attributes.mobile', 'di ?????ng', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3204, 1, 'vi', 'validation', 'attributes.month', 'th??ng', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3205, 1, 'vi', 'validation', 'attributes.name', 't??n', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3206, 1, 'vi', 'validation', 'attributes.password', 'm???t kh???u', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3207, 1, 'vi', 'validation', 'attributes.password_confirmation', 'x??c nh???n m???t kh???u', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3208, 1, 'vi', 'validation', 'attributes.phone', 's??? ??i???n tho???i', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3209, 1, 'vi', 'validation', 'attributes.second', 'gi??y', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3210, 1, 'vi', 'validation', 'attributes.sex', 'gi???i t??nh', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3211, 1, 'vi', 'validation', 'attributes.size', 'k??ch th?????c', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3212, 1, 'vi', 'validation', 'attributes.subject', 'ti??u ?????', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3213, 1, 'vi', 'validation', 'attributes.time', 'th???i gian', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3214, 1, 'vi', 'validation', 'attributes.title', 'ti??u ?????', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3215, 1, 'vi', 'validation', 'attributes.username', 't??n ????ng nh???p', '2021-06-11 08:03:31', '2021-06-11 08:03:31'),
(3216, 1, 'vi', 'validation', 'attributes.year', 'n??m', '2021-06-11 08:03:31', '2021-06-11 08:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `permissions`, `last_login`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`) VALUES
(1, 'admin@botble.com', NULL, '$2y$10$KgoSOMzybWZRhFlWztjor.eorottkCvC2iqXdBhnnt9qCWiLNtQii', NULL, '2021-06-11 20:56:49', '2021-06-11 20:56:49', NULL, NULL, 'System', 'Admin', 'botble', 909, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'admin-locale', 'en', 1, '2019-11-17 20:19:14', '2019-11-30 19:25:04');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(20, 'CustomMenuWidget', 'footer_sidebar', 'flex-home', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"About\",\"menu_id\":\"about\"}', '2019-11-17 22:09:57', '2019-11-17 22:09:57'),
(21, 'CustomMenuWidget', 'footer_sidebar', 'flex-home', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"More information\",\"menu_id\":\"more-information\"}', '2019-11-17 22:09:57', '2019-11-17 22:09:57'),
(22, 'CustomMenuWidget', 'footer_sidebar', 'flex-home', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"News\",\"menu_id\":\"news\"}', '2019-11-17 22:09:57', '2019-11-17 22:09:57'),
(24, 'CategoriesWidget', 'primary_sidebar', 'flex-home', 0, '{\"id\":\"CategoriesWidget\",\"name\":\"Categories\"}', '2019-11-18 03:50:44', '2019-11-18 03:50:44'),
(25, 'RecentPostsWidget', 'primary_sidebar', 'flex-home', 1, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent posts\",\"number_display\":\"5\"}', '2019-11-18 03:50:45', '2019-11-18 03:50:45'),
(30, 'CategoriesWidget', 'primary_sidebar', 'flex-home-vi', 0, '{\"id\":\"CategoriesWidget\",\"name\":\"Chuy\\u00ean m\\u1ee5c\"}', '2019-11-21 07:53:12', '2019-11-21 07:53:12'),
(31, 'RecentPostsWidget', 'primary_sidebar', 'flex-home-vi', 1, '{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft m\\u1edbi nh\\u1ea5t\",\"number_display\":\"5\"}', '2019-11-21 07:53:12', '2019-11-21 07:53:12'),
(41, 'CustomMenuWidget', 'footer_sidebar', 'flex-home-vi', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"Gi\\u1edbi thi\\u1ec7u\",\"menu_id\":\"ve-chung-toi\"}', '2019-11-21 07:53:51', '2019-11-21 07:53:51'),
(42, 'CustomMenuWidget', 'footer_sidebar', 'flex-home-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\" Th\\u00f4ng tin th\\u00eam\",\"menu_id\":\"thong-tin-them\"}', '2019-11-21 07:53:51', '2019-11-21 07:53:51'),
(43, 'CustomMenuWidget', 'footer_sidebar', 'flex-home-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Tin t\\u1ee9c\",\"menu_id\":\"tin-tuc\"}', '2019-11-21 07:53:51', '2019-11-21 07:53:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_lang_meta_content_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `menu_nodes_related_id_index` (`reference_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_content_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_user_id_index` (`user_id`),
  ADD KEY `notes_reference_id_index` (`reference_id`),
  ADD KEY `notes_created_by_index` (`created_by`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `re_accounts`
--
ALTER TABLE `re_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`),
  ADD UNIQUE KEY `re_accounts_username_unique` (`username`);

--
-- Indexes for table `re_account_activity_logs`
--
ALTER TABLE `re_account_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_account_packages`
--
ALTER TABLE `re_account_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_account_password_resets`
--
ALTER TABLE `re_account_password_resets`
  ADD KEY `vendor_password_resets_email_index` (`email`),
  ADD KEY `vendor_password_resets_token_index` (`token`);

--
-- Indexes for table `re_categories`
--
ALTER TABLE `re_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_consults`
--
ALTER TABLE `re_consults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_currencies`
--
ALTER TABLE `re_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_facilities`
--
ALTER TABLE `re_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_facilities_distances`
--
ALTER TABLE `re_facilities_distances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_features`
--
ALTER TABLE `re_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_investors`
--
ALTER TABLE `re_investors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_packages`
--
ALTER TABLE `re_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_projects`
--
ALTER TABLE `re_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_properties`
--
ALTER TABLE `re_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_tags`
--
ALTER TABLE `re_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1069;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `re_accounts`
--
ALTER TABLE `re_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `re_account_activity_logs`
--
ALTER TABLE `re_account_activity_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `re_account_packages`
--
ALTER TABLE `re_account_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_categories`
--
ALTER TABLE `re_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `re_consults`
--
ALTER TABLE `re_consults`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_currencies`
--
ALTER TABLE `re_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `re_facilities`
--
ALTER TABLE `re_facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `re_facilities_distances`
--
ALTER TABLE `re_facilities_distances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4887;

--
-- AUTO_INCREMENT for table `re_features`
--
ALTER TABLE `re_features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `re_investors`
--
ALTER TABLE `re_investors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `re_packages`
--
ALTER TABLE `re_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `re_projects`
--
ALTER TABLE `re_projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `re_properties`
--
ALTER TABLE `re_properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `re_tags`
--
ALTER TABLE `re_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3217;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
