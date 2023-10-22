-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2023 at 05:31 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mysteriax`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` char(36) NOT NULL,
  `filename` text NOT NULL,
  `driver` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_request_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `country_code` varchar(191) DEFAULT NULL,
  `phone_code` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `country_code`, `phone_code`, `created_at`, `updated_at`) VALUES
(1, 'All', NULL, NULL, '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(2, 'Afghanistan', 'AF', '93', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(3, 'Albania', 'AL', '355', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(4, 'Algeria', 'DZ', '213', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(5, 'American Samoa', 'AS', '1684', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(6, 'Andorra', 'AD', '376', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(7, 'Angola', 'AO', '244', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(8, 'Anguilla', 'AI', '1264', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(9, 'Antarctica', 'AQ', '672', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(10, 'Antigua and Barbuda', 'AG', '1268', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(11, 'Argentina', 'AR', '54', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(12, 'Armenia', 'AM', '374', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(13, 'Aruba', 'AW', '297', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(14, 'Australia', 'AU', '61', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(15, 'Austria', 'AT', '43', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(16, 'Azerbaijan', 'AZ', '994', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(17, 'Bahamas (the)', 'BS', '1242', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(18, 'Bahrain', 'BH', '973', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(19, 'Bangladesh', 'BD', '880', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(20, 'Barbados', 'BB', '1246', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(21, 'Belarus', 'BY', '375', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(22, 'Belgium', 'BE', '32', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(23, 'Belize', 'BZ', '501', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(24, 'Benin', 'BJ', '229', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(25, 'Bermuda', 'BM', '1441', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(26, 'Bhutan', 'BT', '975', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(27, 'Bolivia (Plurinational State of)', 'BO', '591', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', '599', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(29, 'Bosnia and Herzegovina', 'BA', '387', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(30, 'Botswana', 'BW', '267', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(31, 'Bouvet Island', 'BV', '55', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(32, 'Brazil', 'BR', '55', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(33, 'British Indian Ocean Territory (the)', 'IO', '246', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(34, 'Brunei Darussalam', 'BN', '673', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(35, 'Bulgaria', 'BG', '359', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(36, 'Burkina Faso', 'BF', '226', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(37, 'Burundi', 'BI', '257', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(38, 'Cabo Verde', 'CV', '238', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(39, 'Cambodia', 'KH', '855', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(40, 'Cameroon', 'CM', '237', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(41, 'Canada', 'CA', '1', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(42, 'Cayman Islands (the)', 'KY', '1345', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(43, 'Central African Republic (the)', 'CF', '236', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(44, 'Chad', 'TD', '235', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(45, 'Chile', 'CL', '56', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(46, 'China', 'CN', '86', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(47, 'Christmas Island', 'CX', '61', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(48, 'Cocos (Keeling) Islands (the)', 'CC', '672', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(49, 'Colombia', 'CO', '57', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(50, 'Comoros (the)', 'KM', '269', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(51, 'Congo (the Democratic Republic of the)', 'CG', '242', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(52, 'Congo (the)', 'CG', '242', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(53, 'Cook Islands (the)', 'CK', '682', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(54, 'Costa Rica', 'CR', '506', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(55, 'Croatia', 'HR', '385', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(56, 'Cuba', 'CU', '53', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(57, 'Curaçao', 'CW', '599', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(58, 'Cyprus', 'CY', '357', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(59, 'Czechia', 'CZ', '420', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(60, 'Côte d\'Ivoire', 'CI', '225', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(61, 'Denmark', 'DK', '45', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(62, 'Djibouti', 'DJ', '253', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(63, 'Dominica', 'DM', '1767', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(64, 'Dominican Republic (the)', 'DO', '1809', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(65, 'Ecuador', 'EC', '593', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(66, 'Egypt', 'EG', '20', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(67, 'El Salvador', 'SV', '503', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(68, 'Equatorial Guinea', 'GQ', '240', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(69, 'Eritrea', 'ER', '291', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(70, 'Estonia', 'EE', '372', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(71, 'Eswatini', 'SWZ', '268', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(72, 'Ethiopia', 'ET', '251', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(73, 'Falkland Islands (the) [Malvinas]', 'FK', '500', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(74, 'Faroe Islands (the)', 'FO', '298', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(75, 'Fiji', 'FJ', '679', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(76, 'Finland', 'FI', '358', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(77, 'France', 'FR', '33', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(78, 'French Guiana', 'GF', '594', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(79, 'French Polynesia', 'PF', '689', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(80, 'French Southern Territories (the)', 'GF', '594', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(81, 'Gabon', 'GA', '241', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(82, 'Gambia (the)', 'GM', '220', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(83, 'Georgia', 'GE', '995', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(84, 'Germany', 'DE', '49', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(85, 'Ghana', 'GH', '233', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(86, 'Gibraltar', 'GI', '350', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(87, 'Greece', 'GR', '30', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(88, 'Greenland', 'GL', '299', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(89, 'Grenada', 'GD', '1473', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(90, 'Guadeloupe', 'GP', '590', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(91, 'Guam', 'GU', '1671', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(92, 'Guatemala', 'GT', '502', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(93, 'Guernsey', 'GG', '44', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(94, 'Guinea', 'GN', '224', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(95, 'Guinea-Bissau', 'GW', '245', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(96, 'Guyana', 'GY', '592', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(97, 'Haiti', 'HT', '509', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(98, 'Heard Island and McDonald Islands', 'HM', '0', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(99, 'Holy See (the)', 'VA', '39', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(100, 'Honduras', 'HN', '504', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(101, 'Hong Kong', 'HK', '852', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(102, 'Hungary', 'HU', '36', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(103, 'Iceland', 'IS', '354', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(104, 'India', 'IN', '91', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(105, 'Indonesia', 'ID', '62', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(106, 'Iran (Islamic Republic of)', 'IR', '98', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(107, 'Iraq', 'IQ', '964', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(108, 'Ireland', 'IE', '353', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(109, 'Isle of Man', 'IM', '44', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(110, 'Israel', 'IL', '972', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(111, 'Italy', 'IT', '39', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(112, 'Jamaica', 'JM', '1876', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(113, 'Japan', 'JP', '81', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(114, 'Jersey', 'JE', '44', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(115, 'Jordan', 'JO', '962', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(116, 'Kazakhstan', 'KZ', '7', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(117, 'Kenya', 'KE', '254', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(118, 'Kiribati', 'KI', '686', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(119, 'Korea (the Democratic People\'s Republic of)', 'KP', '850', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(120, 'Korea (the Republic of)', 'KP', '850', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(121, 'Kuwait', 'KW', '965', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(122, 'Kyrgyzstan', 'KG', '996', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(123, 'Lao People\'s Democratic Republic (the)', 'LA', '856', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(124, 'Latvia', 'LV', '371', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(125, 'Lebanon', 'LB', '961', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(126, 'Lesotho', 'LS', '266', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(127, 'Liberia', 'LR', '231', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(128, 'Libya', 'LY', '218', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(129, 'Liechtenstein', 'LI', '423', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(130, 'Lithuania', 'LT', '370', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(131, 'Luxembourg', 'LU', '352', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(132, 'Macao', 'MO', '853', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(133, 'Madagascar', 'MG', '261', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(134, 'Malawi', 'MW', '265', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(135, 'Malaysia', 'MY', '60', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(136, 'Maldives', 'MV', '960', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(137, 'Mali', 'ML', '223', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(138, 'Malta', 'MT', '356', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(139, 'Marshall Islands (the)', 'MH', '692', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(140, 'Martinique', 'MQ', '596', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(141, 'Mauritania', 'MR', '222', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(142, 'Mauritius', 'MU', '230', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(143, 'Mayotte', 'YT', '269', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(144, 'Mexico', 'MX', '52', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(145, 'Micronesia (Federated States of)', 'FM', '691', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(146, 'Moldova (the Republic of)', 'MD', '373', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(147, 'Monaco', 'MC', '377', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(148, 'Mongolia', 'MN', '976', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(149, 'Montenegro', 'ME', '382', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(150, 'Montserrat', 'MS', '1664', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(151, 'Morocco', 'MA', '212', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(152, 'Mozambique', 'MZ', '258', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(153, 'Myanmar', 'MM', '95', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(154, 'Namibia', 'NA', '264', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(155, 'Nauru', 'NR', '674', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(156, 'Nepal', 'NP', '977', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(157, 'Netherlands (the)', 'NL', '31', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(158, 'New Caledonia', 'NC', '687', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(159, 'New Zealand', 'NZ', '64', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(160, 'Nicaragua', 'NI', '505', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(161, 'Niger (the)', 'NE', '227', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(162, 'Nigeria', 'NG', '234', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(163, 'Niue', 'NU', '683', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(164, 'Norfolk Island', 'NF', '672', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(165, 'Northern Mariana Islands (the)', 'MP', '1670', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(166, 'Norway', 'NO', '47', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(167, 'Oman', 'OM', '968', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(168, 'Pakistan', 'PK', '92', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(169, 'Palau', 'PW', '680', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(170, 'Palestine, State of', 'PH', '63', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(171, 'Panama', 'PA', '507', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(172, 'Papua New Guinea', 'PG', '675', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(173, 'Paraguay', 'PY', '595', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(174, 'Peru', 'PE', '51', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(175, 'Philippines (the)', 'PH', '63', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(176, 'Pitcairn', 'PN', '64', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(177, 'Poland', 'PL', '48', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(178, 'Portugal', 'PT', '351', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(179, 'Puerto Rico', 'PR', '1787', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(180, 'Qatar', 'QA', '974', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(181, 'Republic of North Macedonia', 'MK', '389', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(182, 'Romania', 'RO', '40', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(183, 'Russian Federation (the)', 'RU', '70', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(184, 'Rwanda', 'RW', '250', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(185, 'Réunion', 'RE', '262', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(186, 'Saint Barthélemy', 'BL', '590', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(187, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', '290', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(188, 'Saint Kitts and Nevis', 'KN', '1869', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(189, 'Saint Lucia', 'LC', '1758', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(190, 'Saint Martin (French part)', 'MF', '590', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(191, 'Saint Pierre and Miquelon', 'PM', '508', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(192, 'Saint Vincent and the Grenadines', 'VC', '1784', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(193, 'Samoa', 'WS', '684', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(194, 'San Marino', 'SM', '378', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(195, 'Sao Tome and Principe', 'ST', '239', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(196, 'Saudi Arabia', 'SA', '966', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(197, 'Senegal', 'SN', '221', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(198, 'Serbia', 'RS', '381', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(199, 'Seychelles', 'SC', '248', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(200, 'Sierra Leone', 'SL', '232', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(201, 'Singapore', 'SG', '65', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(202, 'Sint Maarten (Dutch part)', 'SX', '1', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(203, 'Slovakia', 'SK', '421', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(204, 'Slovenia', 'SI', '386', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(205, 'Solomon Islands', 'SB', '677', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(206, 'Somalia', 'SO', '252', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(207, 'South Africa', 'ZA', '27', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(208, 'South Georgia and the South Sandwich Islands', 'GS', '500', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(209, 'South Sudan', 'SS', '211', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(210, 'Spain', 'ES', '34', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(211, 'Sri Lanka', 'LK', '94', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(212, 'Sudan (the)', 'SS', '211', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(213, 'Suriname', 'SR', '597', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(214, 'Svalbard and Jan Mayen', 'SJ', '47', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(215, 'Sweden', 'SE', '46', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(216, 'Switzerland', 'CH', '41', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(217, 'Syrian Arab Republic', 'SY', '963', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(218, 'Taiwan', 'TW', '886', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(219, 'Tajikistan', 'TJ', '992', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(220, 'Tanzania, United Republic of', 'TZ', '255', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(221, 'Thailand', 'TH', '66', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(222, 'Timor-Leste', 'TL', '670', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(223, 'Togo', 'TG', '228', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(224, 'Tokelau', 'TK', '690', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(225, 'Tonga', 'TO', '676', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(226, 'Trinidad and Tobago', 'TT', '1868', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(227, 'Tunisia', 'TN', '216', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(228, 'Turkey', 'TR', '90', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(229, 'Turkmenistan', 'TM', '7370', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(230, 'Turks and Caicos Islands (the)', 'TC', '1649', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(231, 'Tuvalu', 'TV', '688', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(232, 'Uganda', 'UG', '256', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(233, 'Ukraine', 'UA', '380', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(234, 'United Arab Emirates (the)', 'AE', '971', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(235, 'United Kingdom of Great Britain and Northern Ireland (the)', 'GB', '44', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(236, 'United States Minor Outlying Islands (the)', 'UM', '1', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(237, 'United States of America (the)', 'US', '1', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(238, 'Uruguay', 'UY', '598', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(239, 'Uzbekistan', 'UZ', '998', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(240, 'Vanuatu', 'VU', '678', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(241, 'Venezuela (Bolivarian Republic of)', 'VE', '58', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(242, 'Viet Nam', 'VN', '84', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(243, 'Virgin Islands (British)', 'VG', '1284', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(244, 'Virgin Islands (U.S.)', 'VI', '1340', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(245, 'Wallis and Futuna', 'WF', '681', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(246, 'Western Sahara', 'EH', '212', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(247, 'Yemen', 'YE', '967', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(248, 'Zambia', 'ZM', '260', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(249, 'Zimbabwe', 'ZW', '263', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(250, 'Åland Islands', 'AX', '358', '2022-04-14 15:35:51', '2022-04-14 15:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `country_taxes`
--

CREATE TABLE `country_taxes` (
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `creator_offers`
--

CREATE TABLE `creator_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `old_profile_access_price` double DEFAULT 5,
  `old_profile_access_price_3_months` double(8,2) DEFAULT 5.00,
  `old_profile_access_price_6_months` double DEFAULT 5,
  `old_profile_access_price_12_months` double DEFAULT 5,
  `expires_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 1, 1, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 6),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 8),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 37),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 33),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 2),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 0, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 0, 0, 0, 0, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 16),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 17),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '{}', 5),
(21, 1, 'role_id', 'text', 'Role', 0, 0, 1, 1, 1, 1, '{}', 14),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 1, 1, 1, '{\"description\":\"Unique Wallet Identifier\"}', 1),
(23, 4, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(24, 4, 'total', 'text', 'Total', 0, 1, 1, 1, 1, 1, '{}', 4),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(29, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 6, 'filename', 'text', 'Filename', 1, 1, 1, 1, 1, 1, '{}', 5),
(31, 6, 'driver', 'text', 'Driver', 1, 1, 1, 1, 1, 1, '{}', 7),
(32, 6, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, '{}', 8),
(33, 6, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(34, 6, 'post_id', 'text', 'Post Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(35, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(36, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(37, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(38, 9, 'from_user_id', 'text', 'From User Id', 0, 0, 1, 1, 1, 1, '{}', 2),
(39, 9, 'to_user_id', 'text', 'To User Id', 0, 0, 1, 1, 1, 1, '{}', 4),
(40, 9, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"tip\",\"options\":{\"tip\":\"Tip\",\"reaction\":\"Reaction\",\"new-comment\":\"Comment\",\"new-subscription\":\"Subscription\",\"withdrawal-action\":\"Withdrawal\",\"new-message\":\"Message\"}}', 11),
(41, 9, 'post_id', 'text', 'Post Id', 0, 0, 1, 1, 1, 1, '{}', 6),
(42, 9, 'post_comment_id', 'text', 'Post Comment Id', 0, 0, 1, 1, 1, 1, '{}', 7),
(43, 9, 'subscription_id', 'text', 'Subscription Id', 0, 0, 1, 1, 1, 1, '{}', 8),
(44, 9, 'transaction_id', 'text', 'Transaction Id', 0, 0, 1, 1, 1, 1, '{}', 9),
(45, 9, 'reaction_id', 'text', 'Reaction Id', 0, 0, 1, 1, 1, 1, '{}', 10),
(46, 9, 'message', 'text', 'Message', 1, 1, 1, 1, 1, 1, '{}', 13),
(47, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 15),
(48, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 16),
(49, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(50, 10, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(51, 10, 'post_id', 'text', 'Post Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(52, 10, 'message', 'text', 'Message', 1, 1, 1, 1, 1, 1, '{}', 5),
(53, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(54, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(55, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(56, 11, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(57, 11, 'text', 'text', 'Text', 0, 1, 1, 1, 1, 1, '{}', 4),
(58, 11, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"requested\",\"options\":{\"0\":\"Pending\",\"1\":\"Approved\",\"2\":\"Disapproved\"}}', 5),
(59, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(60, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(61, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(62, 12, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(63, 12, 'post_id', 'text', 'Post Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(64, 12, 'post_comment_id', 'text', 'Post Comment Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(65, 12, 'reaction_type', 'text', 'Reaction Type', 0, 1, 1, 1, 1, 1, '{}', 6),
(66, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(67, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(68, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(69, 13, 'sender_user_id', 'text', 'SubscriberID', 1, 1, 1, 1, 1, 1, '{}', 4),
(70, 13, 'recipient_user_id', 'text', 'CreatorID', 1, 1, 1, 1, 1, 1, '{}', 5),
(71, 13, 'paypal_agreement_id', 'text', 'Paypal ID', 0, 1, 1, 1, 1, 1, '{}', 10),
(72, 13, 'stripe_subscription_id', 'text', 'Stripe ID', 0, 1, 1, 1, 1, 1, '{}', 13),
(73, 13, 'paypal_plan_id', 'text', 'Paypal Plan ID', 0, 0, 1, 1, 1, 1, '{}', 11),
(74, 13, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"one-month-subscription\",\"options\":{\"one-month-subscription\":\"One month sub\",\"three-months-subscription\":\"Three months sub\",\"six-months-subscription\":\"Six months sub\",\"yearly-subscription\":\"Yearly sub\"}}', 7),
(75, 13, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"pending\",\"options\":{\"pending\":\"Pending\",\"completed\":\"Completed\",\"suspended\":\"Suspended\",\"update-needed\":\"Update needed\",\"canceled\":\"Canceled\",\"expired\":\"Expired\"}}', 6),
(76, 13, 'expires_at', 'timestamp', 'Expires At', 0, 1, 1, 1, 1, 1, '{}', 14),
(77, 13, 'canceled_at', 'timestamp', 'Canceled At', 0, 0, 1, 1, 1, 1, '{}', 15),
(78, 13, 'amount', 'text', 'Amount', 0, 1, 1, 1, 1, 1, '{}', 9),
(79, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 16),
(80, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 17),
(81, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(82, 14, 'sender_user_id', 'text', 'SenderID', 1, 1, 1, 1, 1, 1, '{}', 2),
(83, 14, 'recipient_user_id', 'text', 'RecipientID', 0, 1, 1, 1, 1, 1, '{}', 3),
(84, 14, 'subscription_id', 'text', 'SubscriptionID', 0, 1, 1, 1, 1, 1, '{}', 8),
(85, 14, 'post_id', 'text', 'PostID', 0, 1, 1, 1, 1, 1, '{}', 9),
(86, 14, 'stripe_transaction_id', 'text', 'StripeTransactionID', 0, 0, 1, 1, 1, 1, '{}', 10),
(87, 14, 'stripe_session_id', 'text', 'StripeSessionID', 0, 0, 1, 1, 1, 1, '{}', 13),
(88, 14, 'paypal_transaction_id', 'text', 'PaypalTransactionID', 0, 0, 1, 1, 1, 1, '{}', 14),
(89, 14, 'paypal_transaction_token', 'text', 'PaypalTransactionToken', 0, 0, 1, 1, 1, 1, '{}', 16),
(90, 14, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"pending\",\"options\":{\"pending\":\"Pending\",\"canceled\":\"Canceled\",\"approved\":\"Approved\",\"declined\":\"Declined\",\"refunded\":\"Refunded\",\"initiated\":\"Initiated\",\"partially-paid\":\"Partially paid\"}}', 4),
(91, 14, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"tip\",\"options\":{\"tip\":\"Post Tip\",\"chat-tip\":\"Chat tip\",\"post-unlock\":\"Post unlock\",\"message-unlock\":\"Message unlock\",\"deposit\":\"Deposit\",\"withdrawal\":\"Withdrawal\",\"one-month-subscription\":\"One month sub\",\"three-months-subscription\":\"Three months sub\",\"six-months-subscription\":\"Six months sub\",\"yearly-subscription\":\"Yearly sub\",\"subscription-renewal\":\"Subscription renewal\",\"stream-access\":\"Stream unlock\"}}', 5),
(92, 14, 'payment_provider', 'select_dropdown', 'Payment Provider', 1, 1, 1, 1, 1, 1, '{\"default\":\"credit\",\"options\":{\"stripe\":\"Stripe\",\"paypal\":\"Paypal\",\"ccbill\":\"CCBill\",\"coinbase\":\"Coinbase\",\"nowpayments\":\"Nowpayments\",\"paystack\":\"Paystack\",\"oxxo\":\"Oxxo\",\"credit\":\"Credit\"}}', 6),
(93, 14, 'currency', 'text', 'Currency', 1, 0, 1, 1, 1, 1, '{}', 19),
(94, 14, 'paypal_payer_id', 'text', 'PaypalPayerId', 0, 0, 1, 1, 1, 1, '{}', 17),
(95, 14, 'amount', 'text', 'Amount', 1, 1, 1, 1, 1, 1, '{}', 7),
(96, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 24),
(97, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 26),
(98, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(99, 15, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(100, 15, 'post_id', 'text', 'Post Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(101, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(102, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(103, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(104, 16, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(105, 16, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(106, 16, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"followers\",\"options\":{\"followers\":\"Followers\",\"blocked\":\"Blocked\",\"custom\":\"Custom\"}}', 5),
(107, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(108, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(109, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(110, 17, 'list_id', 'text', 'List Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(111, 17, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(112, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(113, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(114, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(115, 18, 'sender_id', 'text', 'Sender Id', 1, 0, 1, 1, 1, 1, '{}', 3),
(116, 18, 'receiver_id', 'text', 'Receiver Id', 1, 0, 1, 1, 1, 1, '{}', 5),
(117, 18, 'replyTo', 'text', 'ReplyTo', 1, 0, 1, 1, 1, 1, '{}', 6),
(118, 18, 'message', 'text', 'Message', 1, 1, 1, 1, 1, 1, '{}', 7),
(119, 18, 'isSeen', 'text', 'IsSeen', 1, 1, 1, 1, 1, 1, '{}', 8),
(120, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(121, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(122, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(123, 19, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(124, 19, 'amount', 'text', 'Amount', 1, 1, 1, 1, 1, 1, '{}', 4),
(125, 19, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"requested\",\"options\":{\"requested\":\"Requested\",\"rejected\":\"Rejected\",\"approved\":\"Approved\"}}', 5),
(126, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(127, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(128, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(129, 20, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(130, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(131, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(132, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(133, 21, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(134, 21, 'percentage', 'text', 'Percentage', 1, 1, 1, 1, 1, 1, '{}', 3),
(135, 21, 'type', 'radio_btn', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"inclusive\",\"options\":{\"inclusive\":\"Inclusive\",\"exclusive\":\"Exclusive\"}}', 4),
(136, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 5),
(137, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(138, 21, 'tax_belongstomany_country_relationship', 'relationship', 'Countries', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Model\\\\Country\",\"table\":\"countries\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"country_taxes\",\"pivot\":\"1\",\"taggable\":\"0\"}', 7),
(140, 13, 'subscription_hasone_user_relationship', 'relationship', 'Subscriber', 0, 1, 0, 0, 0, 0, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"sender_user_id\",\"label\":\"email\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(141, 13, 'subscription_hasone_user_relationship_1', 'relationship', 'Creator', 0, 1, 0, 0, 0, 0, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"recipient_user_id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(142, 14, 'taxes', 'text', 'Taxes', 0, 0, 0, 0, 0, 0, '{}', 22),
(143, 1, 'username', 'text', 'Username', 1, 1, 1, 1, 1, 1, '{}', 10),
(145, 1, 'bio', 'text', 'Bio', 0, 0, 1, 1, 1, 1, '{}', 11),
(146, 1, 'location', 'text', 'Location', 0, 0, 1, 1, 1, 1, '{}', 12),
(147, 1, 'website', 'text', 'Website', 0, 0, 1, 1, 1, 1, '{}', 13),
(148, 1, 'cover', 'image', 'Cover', 0, 0, 1, 1, 1, 1, '{}', 7),
(149, 1, 'email_verified_at', 'timestamp', 'Email verified', 0, 1, 1, 1, 1, 1, '{}', 34),
(150, 1, 'public_profile', 'text', 'Public Profile', 1, 1, 1, 1, 1, 1, '{}', 19),
(151, 1, 'profile_access_price', 'text', 'Profile Price', 1, 1, 1, 1, 1, 1, '{}', 22),
(152, 1, 'billing_address', 'text', 'Billing Address', 0, 0, 1, 1, 1, 1, '{}', 23),
(153, 1, 'first_name', 'text', 'First Name', 0, 0, 1, 1, 1, 1, '{}', 24),
(154, 1, 'last_name', 'text', 'Last Name', 0, 0, 1, 1, 1, 1, '{}', 26),
(155, 1, 'city', 'text', 'City', 0, 0, 1, 1, 1, 1, '{}', 28),
(156, 1, 'country', 'text', 'Country', 0, 0, 1, 1, 1, 1, '{}', 30),
(157, 1, 'state', 'text', 'State', 0, 0, 1, 1, 1, 1, '{}', 31),
(158, 1, 'postcode', 'text', 'Postcode', 0, 0, 1, 1, 1, 1, '{}', 32),
(159, 27, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 1, '{}', 1),
(160, 27, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 2),
(161, 27, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(162, 27, 'content', 'rich_text_box', 'Content', 1, 1, 1, 1, 1, 1, '{}', 4),
(163, 27, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 8),
(164, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(165, 14, 'invoice_id', 'text', 'InvoiceID', 0, 1, 1, 1, 1, 1, '{}', 11),
(166, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(167, 28, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(168, 28, 'files', 'text', 'Files', 0, 0, 0, 1, 0, 0, '{}', 4),
(169, 28, 'rejectionReason', 'text', 'Rejection Reason', 0, 1, 1, 1, 1, 1, '{}', 5),
(170, 28, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(171, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(172, 19, 'message', 'text', 'Message', 0, 1, 1, 1, 1, 1, '{}', 7),
(173, 28, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"pending\",\"options\":{\"pending\":\"Pending\",\"rejected\":\"Rejected\",\"verified\":\"Verified\"}}', 6),
(174, 19, 'withdrawal_hasone_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"user_id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(175, 28, 'user_verify_hasone_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"user_id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(176, 4, 'wallet_hasone_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"user_id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(177, 9, 'notification_hasone_user_relationship', 'relationship', 'From', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"from_user_id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(178, 9, 'notification_hasone_user_relationship_1', 'relationship', 'To', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"to_user_id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(179, 9, 'withdrawal_id', 'text', 'Withdrawal Id', 0, 0, 1, 1, 1, 1, '{}', 12),
(180, 9, 'user_message_id', 'text', 'User Message Id', 0, 0, 1, 1, 1, 1, '{}', 14),
(181, 18, 'user_message_hasone_user_relationship', 'relationship', 'Sender', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"sender_id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(182, 18, 'user_message_hasone_user_relationship_1', 'relationship', 'Receiver', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"receiver_id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(183, 12, 'reaction_hasone_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"user_id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(184, 16, 'user_list_hasone_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"user_id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(185, 17, 'user_list_member_hasone_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"user_id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(186, 17, 'user_list_member_hasone_user_list_relationship', 'relationship', 'List name', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Model\\\\UserList\",\"table\":\"user_lists\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"list_id\",\"label\":\"name\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(187, 11, 'post_hasone_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"user_id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(188, 6, 'attachment_hasone_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"user_id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(189, 6, 'message_id', 'text', 'Message Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(190, 10, 'post_comment_hasone_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"user_id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(191, 15, 'user_bookmark_hasone_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"user_id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(192, 1, 'birthdate', 'date', 'Birthdate', 0, 0, 1, 1, 1, 1, '{}', 35),
(193, 1, 'identity_verified_at', 'timestamp', 'ID verifed', 0, 1, 1, 1, 1, 1, '{}', 36),
(194, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(195, 29, 'from_user_id', 'text', 'From User Id', 1, 0, 1, 1, 1, 1, '{}', 5),
(196, 29, 'user_id', 'text', 'User Id', 1, 0, 1, 1, 1, 1, '{}', 6),
(197, 29, 'post_id', 'text', 'To post (ID)', 0, 1, 1, 1, 1, 1, '{}', 4),
(198, 29, 'details', 'text', 'Details', 0, 1, 1, 1, 1, 1, '{}', 7),
(199, 29, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"I don\'t like this post\",\"options\":{\"I don\'t like this post\":\"I don\'t like this post\",\"Content is offensive or violates Terms of Service.\":\"Content is offensive or violates Terms of Service.\",\"Content contains stolen material (DMCA)\":\"Content contains stolen material (DMCA)\",\"Content is spam\":\"Content is spam\",\"Report abuse\":\"Report abuse\"}}', 8),
(200, 29, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"received\",\"options\":{\"received\":\"received\",\"seen\":\"seen\",\"solved\":\"solved\"}}', 9),
(201, 29, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(202, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(203, 29, 'user_report_hasone_user_relationship', 'relationship', 'From user', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"from_user_id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(204, 29, 'user_report_hasone_user_relationship_1', 'relationship', 'To user', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"user_id\",\"label\":\"name\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(205, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(206, 30, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 2),
(207, 30, 'subject', 'text', 'Subject', 1, 1, 1, 1, 1, 1, '{}', 3),
(208, 30, 'message', 'text', 'Message', 1, 1, 1, 1, 1, 1, '{}', 4),
(209, 30, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(210, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(223, 32, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(224, 32, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(225, 32, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 4),
(226, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 5),
(227, 32, 'featured_user_hasone_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(228, 33, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(229, 33, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(230, 33, 'transaction_id', 'text', 'Transaction Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(231, 33, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"pending\",\"options\":{\"pending\":\"Pending\",\"rejected\":\"Rejected\",\"approved\":\"Approved\"}}', 5),
(232, 33, 'type', 'select_dropdown', 'Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"deposit\",\"options\":{\"deposit\":\"Deposit\"}}', 6),
(233, 33, 'reason', 'text', 'Reason', 0, 1, 1, 1, 1, 1, '{}', 7),
(234, 33, 'message', 'text', 'Message', 0, 1, 1, 1, 1, 1, '{}', 8),
(235, 33, 'amount', 'text', 'Amount', 0, 1, 1, 1, 1, 1, '{}', 9),
(236, 33, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(237, 33, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(238, 33, 'payment_request_hasmany_attachment_relationship', 'relationship', 'Files', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Model\\\\Attachment\",\"table\":\"attachments\",\"type\":\"hasMany\",\"column\":\"payment_request_id\",\"key\":\"id\",\"label\":\"filename\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(239, 11, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(240, 19, 'payment_method', 'text', 'Payment Method', 0, 1, 1, 1, 1, 1, '{}', 9),
(241, 19, 'payment_identifier', 'text', 'Payment Identifier', 0, 1, 1, 1, 1, 1, '{}', 10),
(242, 34, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(243, 34, 'invoice_id', 'text', 'Invoice Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(244, 34, 'data', 'text', 'Data', 1, 0, 0, 0, 0, 0, '{}', 3),
(245, 34, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(246, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(247, 13, 'ccbill_subscription_id', 'text', 'Ccbill Id', 0, 1, 1, 1, 1, 1, '{}', 12),
(248, 13, 'provider', 'select_dropdown', 'Provider', 1, 0, 1, 1, 1, 1, '{\"default\":\"credit\",\"options\":{\"stripe\":\"Stripe\",\"paypal\":\"Paypal\",\"ccbill\":\"CCBill\",\"credit\":\"Credit\"}}', 8),
(249, 1, 'gender_id', 'text', 'Gender Id', 0, 0, 1, 1, 1, 1, '{}', 5),
(250, 1, 'gender_pronoun', 'text', 'Gender Pronoun', 0, 0, 1, 1, 1, 1, '{}', 18),
(251, 1, 'paid_profile', 'text', 'Paid Profile', 1, 1, 1, 1, 1, 1, '{}', 21),
(252, 1, 'profile_access_price_6_months', 'text', 'Profile Access Price 6 Months', 0, 0, 1, 1, 1, 1, '{}', 25),
(253, 1, 'profile_access_price_3_months', 'text', 'Profile Access Price 3 Months', 0, 0, 1, 1, 1, 1, '{}', 27),
(254, 1, 'profile_access_price_12_months', 'text', 'Profile Access Price 12 Months', 0, 0, 1, 1, 1, 1, '{}', 29),
(255, 1, 'auth_provider', 'text', 'Auth Provider', 0, 0, 1, 1, 1, 1, '{}', 38),
(256, 1, 'auth_provider_id', 'text', 'Auth Provider Id', 0, 0, 1, 1, 1, 1, '{}', 39),
(257, 1, 'enable_2fa', 'text', 'Enable 2fa', 0, 0, 1, 1, 1, 1, '{}', 40),
(258, 1, 'enable_geoblocking', 'text', 'Enable Geoblocking', 0, 0, 1, 1, 1, 1, '{}', 41),
(259, 1, 'open_profile', 'text', 'Open Profile', 0, 1, 1, 1, 1, 1, '{}', 20),
(263, 27, 'page_order', 'text', 'Page Order', 1, 1, 1, 1, 1, 1, '{}', 6),
(264, 27, 'shown_in_footer', 'checkbox', 'Shown In Footer', 0, 1, 1, 1, 1, 1, '{}', 5),
(265, 19, 'fee', 'text', 'Fee', 0, 1, 1, 1, 1, 1, '{}', 6),
(266, 19, 'processed', 'text', 'Processed', 1, 1, 1, 1, 1, 1, '{}', 9),
(267, 14, 'stream_id', 'text', 'StreamID', 0, 1, 1, 1, 1, 1, '{}', 12),
(268, 14, 'user_message_id', 'text', 'MessageID', 0, 1, 1, 1, 1, 1, '{}', 15),
(269, 14, 'coinbase_charge_id', 'text', 'Coinbase Charge Id', 0, 0, 1, 1, 1, 1, '{}', 18),
(270, 14, 'coinbase_transaction_token', 'text', 'Coinbase Transaction Token', 0, 0, 1, 1, 1, 1, '{}', 20),
(271, 14, 'nowpayments_payment_id', 'text', 'Nowpayments Payment Id', 0, 0, 1, 1, 1, 1, '{}', 21),
(272, 14, 'nowpayments_order_id', 'text', 'Nowpayments Order Id', 0, 0, 1, 1, 1, 1, '{}', 23),
(273, 14, 'ccbill_payment_token', 'text', 'Ccbill Payment Token', 0, 0, 1, 1, 1, 1, '{}', 25),
(274, 14, 'ccbill_transaction_id', 'text', 'Ccbill Transaction Id', 0, 0, 1, 1, 1, 1, '{}', 27),
(275, 14, 'ccbill_subscription_id', 'text', 'Ccbill Subscription Id', 0, 0, 1, 1, 1, 1, '{}', 28),
(276, 14, 'paystack_payment_token', 'text', 'Paystack Payment Token', 0, 0, 1, 1, 1, 1, '{}', 29),
(277, 33, 'payment_request_hasone_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"user_id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(278, 1, 'referral_code', 'text', 'Referral Code', 0, 0, 1, 1, 1, 1, '{}', 9),
(298, 37, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(299, 37, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(300, 37, 'stream_id', 'text', 'Stream Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(301, 37, 'message', 'text', 'Message', 1, 1, 1, 1, 1, 1, '{}', 4),
(302, 37, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(303, 37, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(304, 38, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(305, 38, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(306, 38, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"requested\",\"options\":{\"in-progress\":\"In progress\",\"ended\":\"Ended\",\"deleted\":\"Deleted\"}}', 3),
(307, 38, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(308, 38, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{}', 5),
(309, 38, 'poster', 'text', 'Poster', 0, 0, 1, 1, 1, 1, '{}', 10),
(310, 38, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 6),
(311, 38, 'requires_subscription', 'text', 'Requires Subscription', 0, 1, 1, 1, 1, 1, '{}', 7),
(312, 38, 'sent_expiring_reminder', 'text', 'Sent Expiring Reminder', 0, 1, 1, 1, 1, 1, '{}', 8),
(313, 38, 'is_public', 'text', 'Is Public', 0, 1, 1, 1, 1, 1, '{}', 9),
(314, 38, 'pushr_id', 'text', 'Pushr Id', 1, 0, 1, 1, 1, 1, '{}', 11),
(315, 38, 'rtmp_key', 'text', 'Rtmp Key', 0, 0, 1, 1, 1, 1, '{}', 12),
(316, 38, 'rtmp_server', 'text', 'Rtmp Server', 0, 0, 1, 1, 1, 1, '{}', 13),
(317, 38, 'hls_link', 'text', 'Hls Link', 0, 0, 1, 1, 1, 1, '{}', 14),
(318, 38, 'vod_link', 'text', 'Vod Link', 0, 0, 1, 1, 1, 1, '{}', 15),
(319, 38, 'settings', 'text', 'Settings', 0, 0, 0, 0, 0, 1, '{}', 16),
(320, 38, 'ended_at', 'text', 'Ended At', 0, 1, 1, 1, 1, 1, '{}', 17),
(321, 38, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 18),
(322, 38, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 19),
(323, 39, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(324, 39, 'used_by', 'text', 'Used By (UserID)', 1, 1, 1, 1, 1, 1, '{}', 3),
(325, 39, 'referral_code', 'text', 'Referral Code', 1, 1, 1, 1, 1, 1, '{}', 2),
(326, 39, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(327, 39, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(328, 40, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(329, 40, 'from_user_id', 'text', 'From User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(330, 40, 'to_user_id', 'text', 'To User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(331, 40, 'transaction_id', 'text', 'Transaction Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(332, 40, 'referral_code_usage_id', 'text', 'Referral Code Usage Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(333, 40, 'amount', 'text', 'Amount', 0, 1, 1, 1, 1, 1, '{}', 6),
(334, 40, 'reward_type', 'text', 'Reward Type', 1, 1, 1, 1, 1, 1, '{}', 7),
(335, 40, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(336, 40, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `display_name_singular` varchar(191) NOT NULL,
  `display_name_plural` varchar(191) NOT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `model_name` varchar(191) DEFAULT NULL,
  `policy_name` varchar(191) DEFAULT NULL,
  `controller` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'App\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 13:52:09', '2023-06-22 14:28:30'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 13:52:09', '2021-10-23 15:48:27'),
(4, 'wallets', 'wallets', 'Wallet', 'Wallets', 'voyager-wallet', 'App\\Model\\Wallet', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 14:37:16', '2023-08-08 18:18:04'),
(6, 'attachments', 'attachments', 'Attachment', 'Attachments', 'voyager-paperclip', 'App\\Model\\Attachment', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:16:55', '2021-10-23 15:41:33'),
(9, 'notifications', 'notifications', 'Notification', 'Notifications', 'voyager-bell', 'App\\Model\\Notification', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:19:11', '2021-10-23 14:43:57'),
(10, 'post_comments', 'post-comments', 'Post Comment', 'Post Comments', 'voyager-bubble', 'App\\Model\\PostComment', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:20:55', '2021-10-23 15:44:14'),
(11, 'posts', 'user-posts', 'Post', 'Posts', 'voyager-images', 'App\\Model\\Post', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:22:37', '2023-01-10 20:34:15'),
(12, 'reactions', 'reactions', 'Reaction', 'Reactions', 'voyager-bubble-hear', 'App\\Model\\Reaction', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:24:58', '2021-10-23 15:44:52'),
(13, 'subscriptions', 'subscriptions', 'Subscription', 'Subscriptions', 'voyager-credit-cards', 'App\\Model\\Subscription', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:25:32', '2023-03-20 15:40:39'),
(14, 'transactions', 'transactions', 'Transaction', 'Transactions', 'voyager-dollar', 'App\\Model\\Transaction', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:26:33', '2023-03-28 03:53:12'),
(15, 'user_bookmarks', 'user-bookmarks', 'User Bookmark', 'User Bookmarks', 'voyager-bookmark', 'App\\Model\\UserBookmark', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:27:47', '2021-10-23 15:46:15'),
(16, 'user_lists', 'user-lists', 'User List', 'User Lists', 'voyager-list', 'App\\Model\\UserList', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:28:45', '2021-10-23 15:47:00'),
(17, 'user_list_members', 'user-list-members', 'User List Member', 'User List Members', 'voyager-people', 'App\\Model\\UserListMember', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:29:07', '2021-10-23 15:46:30'),
(18, 'user_messages', 'user-messages', 'User Message', 'User Messages', 'voyager-chat', 'App\\Model\\UserMessage', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:42:32', '2021-10-23 15:47:06'),
(19, 'withdrawals', 'withdrawals', 'Withdrawal', 'Withdrawals', 'voyager-calendar', 'App\\Model\\Withdrawal', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:51:14', '2023-03-02 09:36:59'),
(20, 'countries', 'countries', 'Country', 'Countries', 'voyager-location', 'App\\Model\\Country', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"name\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-21 13:10:16', '2021-10-23 15:43:47'),
(21, 'taxes', 'taxes', 'Tax', 'Taxes', 'voyager-credit-card', 'App\\Model\\Tax', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-21 13:11:55', '2022-01-31 19:03:22'),
(27, 'public_pages', 'custom-pages', 'Public Page', 'Public Pages', 'voyager-news', 'App\\Model\\PublicPage', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-29 14:43:27', '2022-11-24 13:38:36'),
(28, 'user_verifies', 'user-verifies', 'User Verify', 'User Verifies', 'voyager-check', 'App\\Model\\UserVerify', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-20 11:11:44', '2021-10-23 15:47:29'),
(29, 'user_reports', 'user-reports', 'User Report', 'User Reports', 'voyager-eye', 'App\\Model\\UserReport', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-05 06:32:40', '2022-06-26 11:10:28'),
(30, 'contact_messages', 'contact-messages', 'Contact Message', 'Contact Messages', 'voyager-book', 'App\\Model\\ContactMessage', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-19 13:11:33', '2022-06-24 09:53:36'),
(32, 'featured_users', 'featured-users', 'Featured User', 'Featured Users', 'voyager-star', 'App\\Model\\FeaturedUser', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-02-01 10:00:10', '2022-06-26 11:08:35'),
(33, 'payment_requests', 'payment-requests', 'Payment Request', 'Payment Requests', 'voyager-window-list', 'App\\Model\\PaymentRequest', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-02-06 11:23:24', '2023-03-27 18:29:29'),
(34, 'invoices', 'invoices', 'Invoice', 'Invoices', 'voyager-receipt', 'App\\Model\\Invoice', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-08-04 14:06:47', '2023-03-17 11:29:29'),
(37, 'stream_messages', 'stream-messages', 'Stream Message', 'Stream Messages', 'voyager-chat', 'App\\Model\\StreamMessage', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-06-21 09:48:56', '2023-06-21 09:48:56'),
(38, 'streams', 'streams', 'Stream', 'Streams', 'voyager-video', 'App\\Model\\Stream', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-21 10:01:44', '2023-06-21 10:40:53'),
(39, 'referral_code_usages', 'referral-code-usages', 'Referrals', 'Referrals', 'voyager-group', 'App\\Model\\ReferralCodeUsage', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-21 11:26:01', '2023-06-21 11:27:13'),
(40, 'rewards', 'rewards', 'Referral', 'Referrals', 'voyager-group', 'App\\Model\\Reward', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-21 11:26:04', '2023-06-21 11:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured_users`
--

CREATE TABLE `featured_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(191) NOT NULL,
  `data` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-08-07 13:52:09', '2021-08-07 13:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `target` varchar(191) NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-home', '#000000', NULL, 1, '2021-08-07 13:52:09', '2022-06-24 08:14:52', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 2, '2021-08-07 13:52:09', '2021-08-08 17:32:02', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 29, 1, '2021-08-07 13:52:09', '2021-08-07 15:59:55', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 29, 3, '2021-08-07 13:52:09', '2021-10-20 11:20:11', 'voyager.roles.index', NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-08-07 13:52:09', '2021-08-07 15:12:22', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-08-07 13:52:09', '2021-08-07 15:12:22', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-08-07 13:52:09', '2021-08-07 15:12:22', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-08-07 13:52:09', '2021-08-07 15:12:22', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 11, '2021-08-07 13:52:09', '2023-06-21 10:02:27', 'voyager.settings.index', NULL),
(12, 1, 'Wallets', '', '_self', 'voyager-wallet', '#000000', 29, 4, '2021-08-07 14:37:16', '2021-10-20 11:20:11', 'voyager.wallets.index', 'null'),
(14, 1, 'Attachments', '', '_self', 'voyager-paperclip', '#000000', 28, 2, '2021-08-07 15:16:55', '2022-02-01 10:41:20', 'voyager.attachments.index', 'null'),
(15, 1, 'Notifications', '', '_self', 'voyager-bell', NULL, 29, 5, '2021-08-07 15:19:11', '2021-10-20 11:20:11', 'voyager.notifications.index', NULL),
(16, 1, 'Post Comments', '', '_self', 'voyager-bubble', NULL, 28, 3, '2021-08-07 15:20:55', '2022-02-01 10:41:20', 'voyager.post-comments.index', NULL),
(17, 1, 'Posts', '', '_self', 'voyager-images', NULL, 28, 1, '2021-08-07 15:22:37', '2021-08-07 15:58:22', 'voyager.user-posts.index', NULL),
(18, 1, 'Reactions', '', '_self', 'voyager-bubble-hear', NULL, 29, 7, '2021-08-07 15:24:58', '2021-10-20 11:20:11', 'voyager.reactions.index', NULL),
(19, 1, 'Subscriptions', '', '_self', 'voyager-credit-cards', NULL, 27, 1, '2021-08-07 15:25:32', '2021-08-07 15:55:55', 'voyager.subscriptions.index', NULL),
(20, 1, 'Transactions', '', '_self', 'voyager-dollar', NULL, 27, 2, '2021-08-07 15:26:33', '2021-08-07 15:55:55', 'voyager.transactions.index', NULL),
(21, 1, 'User Bookmarks', '', '_self', 'voyager-bookmark', NULL, 28, 4, '2021-08-07 15:27:47', '2022-02-01 10:41:20', 'voyager.user-bookmarks.index', NULL),
(22, 1, 'Lists', '', '_self', 'voyager-list', '#000000', 29, 8, '2021-08-07 15:28:45', '2021-10-20 11:20:11', 'voyager.user-lists.index', 'null'),
(23, 1, 'List Members', '', '_self', 'voyager-people', '#000000', 29, 9, '2021-08-07 15:29:07', '2021-10-20 11:19:58', 'voyager.user-list-members.index', 'null'),
(24, 1, 'Messages', '', '_self', 'voyager-chat', '#000000', 29, 6, '2021-08-07 15:42:32', '2021-10-20 11:20:11', 'voyager.user-messages.index', 'null'),
(25, 1, 'Withdrawals', '', '_self', 'voyager-calendar', NULL, 27, 3, '2021-08-07 15:51:14', '2021-08-07 15:55:53', 'voyager.withdrawals.index', NULL),
(26, 1, 'User lists', '', '_self', 'voyager-list', '#000000', NULL, 4, '2021-08-07 15:54:21', '2021-09-30 06:21:46', NULL, ''),
(27, 1, 'Money', '', '_self', 'voyager-dollar', '#000000', NULL, 7, '2021-08-07 15:55:37', '2023-06-21 10:02:27', NULL, ''),
(28, 1, 'Posts', '', '_self', 'voyager-images', '#000000', NULL, 5, '2021-08-07 15:57:03', '2021-09-30 06:21:46', NULL, ''),
(29, 1, 'Users', '', '_self', 'voyager-person', '#000000', NULL, 3, '2021-08-07 15:58:37', '2021-08-08 17:32:02', NULL, ''),
(30, 1, 'Countries', '', '_self', 'voyager-location', '#000000', 33, 2, '2021-09-21 13:10:16', '2021-09-30 06:26:53', 'voyager.countries.index', 'null'),
(31, 1, 'Taxes', '', '_self', 'voyager-credit-card', '#000000', 33, 1, '2021-09-21 13:11:55', '2021-09-30 06:26:53', 'voyager.taxes.index', 'null'),
(32, 1, 'Pages', '', '_self', 'voyager-news', '#000000', NULL, 9, '2021-09-29 14:43:27', '2023-06-21 10:02:27', 'voyager.custom-pages.index', 'null'),
(33, 1, 'Taxes', '', '_self', 'voyager-credit-card', '#000000', NULL, 8, '2021-09-30 06:25:21', '2023-06-21 10:02:27', NULL, ''),
(34, 1, 'Identity Checks', '', '_self', 'voyager-check', '#000000', 29, 2, '2021-10-20 11:11:44', '2021-10-20 11:21:40', 'voyager.user-verifies.index', 'null'),
(35, 1, 'User Reports', '', '_self', 'voyager-eye', '#000000', 29, 10, '2021-11-05 06:32:40', '2022-02-01 10:41:22', 'voyager.user-reports.index', 'null'),
(36, 1, 'Contact Messages', '', '_self', 'voyager-book', '#000000', NULL, 10, '2021-11-19 13:11:34', '2023-06-21 10:02:27', 'voyager.contact-messages.index', 'null'),
(37, 1, 'Featured Users', '', '_self', 'voyager-star', '#000000', 29, 11, '2022-02-01 10:00:11', '2022-02-01 10:41:54', 'voyager.featured-users.index', 'null'),
(38, 1, 'Payment Requests', '', '_self', 'voyager-window-list', '#000000', 27, 4, '2022-02-06 11:23:24', '2022-02-06 11:25:11', 'voyager.payment-requests.index', 'null'),
(39, 1, 'Invoices', '', '_self', 'voyager-receipt', NULL, 27, 5, '2022-08-04 14:06:47', '2022-08-04 14:07:16', 'voyager.invoices.index', NULL),
(41, 1, 'Stream Messages', '', '_self', 'voyager-chat', NULL, 42, 2, '2023-06-21 09:48:56', '2023-06-21 10:02:27', 'voyager.stream-messages.index', NULL),
(42, 1, 'Streams', '', '_self', 'voyager-video', '#000000', NULL, 6, '2023-06-21 09:56:54', '2023-06-21 10:02:27', NULL, ''),
(43, 1, 'Streams', '', '_self', 'voyager-video', '#000000', 42, 1, '2023-06-21 10:01:44', '2023-06-21 10:03:03', 'voyager.streams.index', 'null'),
(46, 1, 'Referrals', '', '_self', 'voyager-group', '#000000', 27, 6, '2023-06-21 11:26:04', '2023-06-21 11:31:29', 'voyager.rewards.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2021_04_27_182503_create_posts_table', 1),
(25, '2021_04_27_183624_create_post_comments_table', 1),
(26, '2021_04_27_184708_create_reactions_table', 1),
(27, '2021_04_27_185338_create_subscriptions_table', 1),
(28, '2021_04_27_192318_create_withdrawals_table', 1),
(29, '2021_05_09_125019_user_messages', 1),
(30, '2021_05_09_125020_create_attachments_table', 1),
(31, '2021_05_20_181455_create_invoices_table', 1),
(32, '2021_05_23_190500_create_transactions_table', 1),
(33, '2021_07_26_182432_user_bookmarks', 1),
(34, '2021_07_26_182613_user_lists', 1),
(35, '2021_07_26_182632_user_list_members', 1),
(36, '2021_07_30_164554_create_notifications_table', 1),
(37, '2021_08_01_192155_create_jobs_table', 1),
(38, '2021_08_02_171126_create_wallets_table', 1),
(39, '2021_09_09_182917_create_user_reports', 1),
(40, '2021_09_10_155813_create_taxes_table', 1),
(41, '2021_09_10_160221_create_countries_table', 1),
(42, '2021_09_10_164638_create_country_taxes_table', 1),
(43, '2021_09_29_165028_add_public_pages_table', 1),
(44, '2021_10_20_143619_create_user_verifies_table', 1),
(45, '2021_10_25_184224_create_creator_offers', 1),
(46, '2021_11_19_174900_create_contact_messages_table', 1),
(47, '2021_11_21_171513_insert_default_admin_settings', 1),
(48, '2021_12_19_170152_v1_0_4', 1),
(49, '2021_12_19_170152_v1_0_5', 1),
(50, '2021_12_19_170152_v1_0_6', 1),
(51, '2021_12_28_170152_v1_1_0', 1),
(52, '2021_12_28_170152_v1_1_1', 1),
(53, '2021_12_31_170152_v1_1_2', 1),
(54, '2022_1_6_170152_v1_1_4', 1),
(55, '2022_1_8_170152_v1_1_5', 1),
(56, '2100_1_12_170153_v1_2_0', 1),
(57, '2101_1_20_170153_v1_3_1', 1),
(58, '2102_1_22_170153_v1_4_0', 1),
(59, '2103_1_25_170153_v1_5_0', 1),
(60, '2104_1_29_170153_v1_5_2', 1),
(61, '2105_1_31_170153_v1_6_0', 1),
(62, '2106_2_5_170153_v1_6_2', 1),
(63, '2107_02_01_205525_v1_7_0', 1),
(64, '2108_2_10_205525_v1_7_1', 1),
(65, '2109_2_11_205525_v1_8_1', 1),
(66, '2110_2_23_205525_v1_9_0', 1),
(67, '2111_2_23_205525_v2_0_0', 1),
(68, '2112_3_5_205525_v2_1_0', 1),
(69, '2113_3_10_205525_v2_2_0', 1),
(70, '2114_3_14_205525_v2_3_0', 1),
(71, '2116_03_10_185313_v2_4_0', 1),
(72, '2117_03_22_185313_v2_5_0', 1),
(73, '2118_03_28_202948_v2_6_0', 1),
(74, '2119_04_9_202948_v2_7_0', 1),
(75, '2119_04_9_202948_v2_8_0', 1),
(76, '2120_02_16_190107_v3_0_0', 1),
(77, '2121_04_30_190107_v3_2_0', 1),
(78, '2122_05_2_190107_v3_3_0', 1),
(79, '2123_05_9_190107_v3_4_0', 1),
(80, '2125_05_16_190107_v3_5_0', 1),
(81, '2126_05_20_190107_v3_5_1', 1),
(82, '2127_03_29_184610_v3_6_0', 1),
(83, '2128_05_31_184610_v3_7_0', 1),
(84, '2129_05_31_184610_v3_8_0', 1),
(85, '2130_05_31_184610_v3_9_0', 1),
(86, '2131_06_24_184610_v4_0_0', 1),
(87, '2132_07_8_184610_v4_2_0', 1),
(88, '2133_07_8_184610_v4_3_0', 1),
(89, '2134_07_8_184610_v4_3_1', 1),
(90, '2135_07_19_181329_v4_4_0', 1),
(91, '2136_08_13_141149_v4_5_0', 1),
(92, '2137_09_10_165955_v4_7_0', 1),
(93, '2138_09_10_165955_v4_8_0', 1),
(94, '2138_09_26_172825_v_4_9_0', 1),
(95, '2140_10_17_165955_v5_0_0', 1),
(96, '2142_10_20_165955_v5_1_0', 1),
(97, '2145_11_7_165955_v5_2_0', 1),
(98, '2145_11_7_165955_v5_3_0', 1),
(99, '2146_11_21_192853_v5_3_1', 1),
(100, '2147_11_22_192853_v5_4_0', 1),
(101, '2148_12_11_192854_v5_5_0', 1),
(102, '2149_12_29_192854_v5_6_0', 1),
(103, '2150_12_01_200043_v5_7_0', 1),
(104, '2151_3_07_200043_v5_8_0', 1),
(105, '2152_3_07_200043_v5_9_0', 1),
(106, '2153_3_07_200044_v6_1_0', 1),
(107, '2154_3_07_200045_v6_2_0', 1),
(108, '2155_3_07_200045_v6_3_0', 1),
(109, '2156_3_07_200046_v6_4_0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `from_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `to_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subscription_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `withdrawal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_message_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stream_id` bigint(20) UNSIGNED DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_requests`
--

CREATE TABLE `payment_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'pending',
  `type` varchar(191) DEFAULT NULL,
  `reason` varchar(191) DEFAULT NULL,
  `message` varchar(191) DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `table_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(2, 'browse_bread', NULL, '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(3, 'browse_database', NULL, '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(4, 'browse_media', NULL, '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(5, 'browse_compass', NULL, '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(6, 'browse_menus', 'menus', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(7, 'read_menus', 'menus', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(8, 'edit_menus', 'menus', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(9, 'add_menus', 'menus', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(10, 'delete_menus', 'menus', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(11, 'browse_roles', 'roles', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(12, 'read_roles', 'roles', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(13, 'edit_roles', 'roles', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(14, 'add_roles', 'roles', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(15, 'delete_roles', 'roles', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(16, 'browse_users', 'users', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(17, 'read_users', 'users', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(18, 'edit_users', 'users', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(19, 'add_users', 'users', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(20, 'delete_users', 'users', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(21, 'browse_settings', 'settings', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(22, 'read_settings', 'settings', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(23, 'edit_settings', 'settings', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(24, 'add_settings', 'settings', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(25, 'delete_settings', 'settings', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(26, 'browse_hooks', NULL, '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(27, 'browse_wallets', 'wallets', '2021-08-07 14:37:16', '2021-08-07 14:37:16'),
(28, 'read_wallets', 'wallets', '2021-08-07 14:37:16', '2021-08-07 14:37:16'),
(29, 'edit_wallets', 'wallets', '2021-08-07 14:37:16', '2021-08-07 14:37:16'),
(30, 'add_wallets', 'wallets', '2021-08-07 14:37:16', '2021-08-07 14:37:16'),
(31, 'delete_wallets', 'wallets', '2021-08-07 14:37:16', '2021-08-07 14:37:16'),
(32, 'browse_attachments', 'attachments', '2021-08-07 15:16:55', '2021-08-07 15:16:55'),
(33, 'read_attachments', 'attachments', '2021-08-07 15:16:55', '2021-08-07 15:16:55'),
(34, 'edit_attachments', 'attachments', '2021-08-07 15:16:55', '2021-08-07 15:16:55'),
(35, 'add_attachments', 'attachments', '2021-08-07 15:16:55', '2021-08-07 15:16:55'),
(36, 'delete_attachments', 'attachments', '2021-08-07 15:16:55', '2021-08-07 15:16:55'),
(37, 'browse_notifications', 'notifications', '2021-08-07 15:19:11', '2021-08-07 15:19:11'),
(38, 'read_notifications', 'notifications', '2021-08-07 15:19:11', '2021-08-07 15:19:11'),
(39, 'edit_notifications', 'notifications', '2021-08-07 15:19:11', '2021-08-07 15:19:11'),
(40, 'add_notifications', 'notifications', '2021-08-07 15:19:11', '2021-08-07 15:19:11'),
(41, 'delete_notifications', 'notifications', '2021-08-07 15:19:11', '2021-08-07 15:19:11'),
(42, 'browse_post_comments', 'post_comments', '2021-08-07 15:20:55', '2021-08-07 15:20:55'),
(43, 'read_post_comments', 'post_comments', '2021-08-07 15:20:55', '2021-08-07 15:20:55'),
(44, 'edit_post_comments', 'post_comments', '2021-08-07 15:20:55', '2021-08-07 15:20:55'),
(45, 'add_post_comments', 'post_comments', '2021-08-07 15:20:55', '2021-08-07 15:20:55'),
(46, 'delete_post_comments', 'post_comments', '2021-08-07 15:20:55', '2021-08-07 15:20:55'),
(47, 'browse_posts', 'posts', '2021-08-07 15:22:37', '2021-08-07 15:22:37'),
(48, 'read_posts', 'posts', '2021-08-07 15:22:37', '2021-08-07 15:22:37'),
(49, 'edit_posts', 'posts', '2021-08-07 15:22:37', '2021-08-07 15:22:37'),
(50, 'add_posts', 'posts', '2021-08-07 15:22:37', '2021-08-07 15:22:37'),
(51, 'delete_posts', 'posts', '2021-08-07 15:22:37', '2021-08-07 15:22:37'),
(52, 'browse_reactions', 'reactions', '2021-08-07 15:24:58', '2021-08-07 15:24:58'),
(53, 'read_reactions', 'reactions', '2021-08-07 15:24:58', '2021-08-07 15:24:58'),
(54, 'edit_reactions', 'reactions', '2021-08-07 15:24:58', '2021-08-07 15:24:58'),
(55, 'add_reactions', 'reactions', '2021-08-07 15:24:58', '2021-08-07 15:24:58'),
(56, 'delete_reactions', 'reactions', '2021-08-07 15:24:58', '2021-08-07 15:24:58'),
(57, 'browse_subscriptions', 'subscriptions', '2021-08-07 15:25:32', '2021-08-07 15:25:32'),
(58, 'read_subscriptions', 'subscriptions', '2021-08-07 15:25:32', '2021-08-07 15:25:32'),
(59, 'edit_subscriptions', 'subscriptions', '2021-08-07 15:25:32', '2021-08-07 15:25:32'),
(60, 'add_subscriptions', 'subscriptions', '2021-08-07 15:25:32', '2021-08-07 15:25:32'),
(61, 'delete_subscriptions', 'subscriptions', '2021-08-07 15:25:32', '2021-08-07 15:25:32'),
(62, 'browse_transactions', 'transactions', '2021-08-07 15:26:33', '2021-08-07 15:26:33'),
(63, 'read_transactions', 'transactions', '2021-08-07 15:26:33', '2021-08-07 15:26:33'),
(64, 'edit_transactions', 'transactions', '2021-08-07 15:26:33', '2021-08-07 15:26:33'),
(65, 'add_transactions', 'transactions', '2021-08-07 15:26:33', '2021-08-07 15:26:33'),
(66, 'delete_transactions', 'transactions', '2021-08-07 15:26:33', '2021-08-07 15:26:33'),
(67, 'browse_user_bookmarks', 'user_bookmarks', '2021-08-07 15:27:47', '2021-08-07 15:27:47'),
(68, 'read_user_bookmarks', 'user_bookmarks', '2021-08-07 15:27:47', '2021-08-07 15:27:47'),
(69, 'edit_user_bookmarks', 'user_bookmarks', '2021-08-07 15:27:47', '2021-08-07 15:27:47'),
(70, 'add_user_bookmarks', 'user_bookmarks', '2021-08-07 15:27:47', '2021-08-07 15:27:47'),
(71, 'delete_user_bookmarks', 'user_bookmarks', '2021-08-07 15:27:47', '2021-08-07 15:27:47'),
(72, 'browse_user_lists', 'user_lists', '2021-08-07 15:28:45', '2021-08-07 15:28:45'),
(73, 'read_user_lists', 'user_lists', '2021-08-07 15:28:45', '2021-08-07 15:28:45'),
(74, 'edit_user_lists', 'user_lists', '2021-08-07 15:28:45', '2021-08-07 15:28:45'),
(75, 'add_user_lists', 'user_lists', '2021-08-07 15:28:45', '2021-08-07 15:28:45'),
(76, 'delete_user_lists', 'user_lists', '2021-08-07 15:28:45', '2021-08-07 15:28:45'),
(77, 'browse_user_list_members', 'user_list_members', '2021-08-07 15:29:07', '2021-08-07 15:29:07'),
(78, 'read_user_list_members', 'user_list_members', '2021-08-07 15:29:07', '2021-08-07 15:29:07'),
(79, 'edit_user_list_members', 'user_list_members', '2021-08-07 15:29:07', '2021-08-07 15:29:07'),
(80, 'add_user_list_members', 'user_list_members', '2021-08-07 15:29:07', '2021-08-07 15:29:07'),
(81, 'delete_user_list_members', 'user_list_members', '2021-08-07 15:29:07', '2021-08-07 15:29:07'),
(82, 'browse_user_messages', 'user_messages', '2021-08-07 15:42:32', '2021-08-07 15:42:32'),
(83, 'read_user_messages', 'user_messages', '2021-08-07 15:42:32', '2021-08-07 15:42:32'),
(84, 'edit_user_messages', 'user_messages', '2021-08-07 15:42:32', '2021-08-07 15:42:32'),
(85, 'add_user_messages', 'user_messages', '2021-08-07 15:42:32', '2021-08-07 15:42:32'),
(86, 'delete_user_messages', 'user_messages', '2021-08-07 15:42:32', '2021-08-07 15:42:32'),
(87, 'browse_withdrawals', 'withdrawals', '2021-08-07 15:51:14', '2021-08-07 15:51:14'),
(88, 'read_withdrawals', 'withdrawals', '2021-08-07 15:51:14', '2021-08-07 15:51:14'),
(89, 'edit_withdrawals', 'withdrawals', '2021-08-07 15:51:14', '2021-08-07 15:51:14'),
(90, 'add_withdrawals', 'withdrawals', '2021-08-07 15:51:14', '2021-08-07 15:51:14'),
(91, 'delete_withdrawals', 'withdrawals', '2021-08-07 15:51:14', '2021-08-07 15:51:14'),
(92, 'browse_countries', 'countries', '2021-09-21 13:10:16', '2021-09-21 13:10:16'),
(93, 'read_countries', 'countries', '2021-09-21 13:10:16', '2021-09-21 13:10:16'),
(94, 'edit_countries', 'countries', '2021-09-21 13:10:16', '2021-09-21 13:10:16'),
(95, 'add_countries', 'countries', '2021-09-21 13:10:16', '2021-09-21 13:10:16'),
(96, 'delete_countries', 'countries', '2021-09-21 13:10:16', '2021-09-21 13:10:16'),
(97, 'browse_taxes', 'taxes', '2021-09-21 13:11:55', '2021-09-21 13:11:55'),
(98, 'read_taxes', 'taxes', '2021-09-21 13:11:55', '2021-09-21 13:11:55'),
(99, 'edit_taxes', 'taxes', '2021-09-21 13:11:55', '2021-09-21 13:11:55'),
(100, 'add_taxes', 'taxes', '2021-09-21 13:11:55', '2021-09-21 13:11:55'),
(101, 'delete_taxes', 'taxes', '2021-09-21 13:11:55', '2021-09-21 13:11:55'),
(102, 'browse_public_pages', 'public_pages', '2021-09-29 14:43:27', '2021-09-29 14:43:27'),
(103, 'read_public_pages', 'public_pages', '2021-09-29 14:43:27', '2021-09-29 14:43:27'),
(104, 'edit_public_pages', 'public_pages', '2021-09-29 14:43:27', '2021-09-29 14:43:27'),
(105, 'add_public_pages', 'public_pages', '2021-09-29 14:43:27', '2021-09-29 14:43:27'),
(106, 'delete_public_pages', 'public_pages', '2021-09-29 14:43:27', '2021-09-29 14:43:27'),
(107, 'browse_user_verifies', 'user_verifies', '2021-10-20 11:11:44', '2021-10-20 11:11:44'),
(108, 'read_user_verifies', 'user_verifies', '2021-10-20 11:11:44', '2021-10-20 11:11:44'),
(109, 'edit_user_verifies', 'user_verifies', '2021-10-20 11:11:44', '2021-10-20 11:11:44'),
(110, 'add_user_verifies', 'user_verifies', '2021-10-20 11:11:44', '2021-10-20 11:11:44'),
(111, 'delete_user_verifies', 'user_verifies', '2021-10-20 11:11:44', '2021-10-20 11:11:44'),
(112, 'browse_user_reports', 'user_reports', '2021-11-05 06:32:40', '2021-11-05 06:32:40'),
(113, 'read_user_reports', 'user_reports', '2021-11-05 06:32:40', '2021-11-05 06:32:40'),
(114, 'edit_user_reports', 'user_reports', '2021-11-05 06:32:40', '2021-11-05 06:32:40'),
(115, 'add_user_reports', 'user_reports', '2021-11-05 06:32:40', '2021-11-05 06:32:40'),
(116, 'delete_user_reports', 'user_reports', '2021-11-05 06:32:40', '2021-11-05 06:32:40'),
(117, 'browse_contact_messages', 'contact_messages', '2021-11-19 13:11:33', '2021-11-19 13:11:33'),
(118, 'read_contact_messages', 'contact_messages', '2021-11-19 13:11:33', '2021-11-19 13:11:33'),
(119, 'edit_contact_messages', 'contact_messages', '2021-11-19 13:11:33', '2021-11-19 13:11:33'),
(120, 'add_contact_messages', 'contact_messages', '2021-11-19 13:11:33', '2021-11-19 13:11:33'),
(121, 'delete_contact_messages', 'contact_messages', '2021-11-19 13:11:33', '2021-11-19 13:11:33'),
(122, 'browse_featured_users', 'featured_users', '2022-02-01 10:00:11', '2022-02-01 10:00:11'),
(123, 'read_featured_users', 'featured_users', '2022-02-01 10:00:11', '2022-02-01 10:00:11'),
(124, 'edit_featured_users', 'featured_users', '2022-02-01 10:00:11', '2022-02-01 10:00:11'),
(125, 'add_featured_users', 'featured_users', '2022-02-01 10:00:11', '2022-02-01 10:00:11'),
(126, 'delete_featured_users', 'featured_users', '2022-02-01 10:00:11', '2022-02-01 10:00:11'),
(127, 'browse_payment_requests', 'payment_requests', '2022-02-06 11:23:24', '2022-02-06 11:23:24'),
(128, 'read_payment_requests', 'payment_requests', '2022-02-06 11:23:24', '2022-02-06 11:23:24'),
(129, 'edit_payment_requests', 'payment_requests', '2022-02-06 11:23:24', '2022-02-06 11:23:24'),
(130, 'add_payment_requests', 'payment_requests', '2022-02-06 11:23:24', '2022-02-06 11:23:24'),
(131, 'delete_payment_requests', 'payment_requests', '2022-02-06 11:23:24', '2022-02-06 11:23:24'),
(132, 'browse_invoices', 'invoices', '2022-08-04 14:06:47', '2022-08-04 14:06:47'),
(133, 'read_invoices', 'invoices', '2022-08-04 14:06:47', '2022-08-04 14:06:47'),
(134, 'edit_invoices', 'invoices', '2022-08-04 14:06:47', '2022-08-04 14:06:47'),
(135, 'add_invoices', 'invoices', '2022-08-04 14:06:47', '2022-08-04 14:06:47'),
(136, 'delete_invoices', 'invoices', '2022-08-04 14:06:47', '2022-08-04 14:06:47'),
(142, 'browse_stream_messages', 'stream_messages', '2023-06-21 09:48:56', '2023-06-21 09:48:56'),
(143, 'read_stream_messages', 'stream_messages', '2023-06-21 09:48:56', '2023-06-21 09:48:56'),
(144, 'edit_stream_messages', 'stream_messages', '2023-06-21 09:48:56', '2023-06-21 09:48:56'),
(145, 'add_stream_messages', 'stream_messages', '2023-06-21 09:48:56', '2023-06-21 09:48:56'),
(146, 'delete_stream_messages', 'stream_messages', '2023-06-21 09:48:56', '2023-06-21 09:48:56'),
(147, 'browse_streams', 'streams', '2023-06-21 10:01:44', '2023-06-21 10:01:44'),
(148, 'read_streams', 'streams', '2023-06-21 10:01:44', '2023-06-21 10:01:44'),
(149, 'edit_streams', 'streams', '2023-06-21 10:01:44', '2023-06-21 10:01:44'),
(150, 'add_streams', 'streams', '2023-06-21 10:01:44', '2023-06-21 10:01:44'),
(151, 'delete_streams', 'streams', '2023-06-21 10:01:44', '2023-06-21 10:01:44'),
(152, 'browse_referral_code_usages', 'referral_code_usages', '2023-06-21 11:26:01', '2023-06-21 11:26:01'),
(153, 'read_referral_code_usages', 'referral_code_usages', '2023-06-21 11:26:01', '2023-06-21 11:26:01'),
(154, 'edit_referral_code_usages', 'referral_code_usages', '2023-06-21 11:26:01', '2023-06-21 11:26:01'),
(155, 'add_referral_code_usages', 'referral_code_usages', '2023-06-21 11:26:01', '2023-06-21 11:26:01'),
(156, 'delete_referral_code_usages', 'referral_code_usages', '2023-06-21 11:26:01', '2023-06-21 11:26:01'),
(157, 'browse_rewards', 'rewards', '2023-06-21 11:26:04', '2023-06-21 11:26:04'),
(158, 'read_rewards', 'rewards', '2023-06-21 11:26:04', '2023-06-21 11:26:04'),
(159, 'edit_rewards', 'rewards', '2023-06-21 11:26:04', '2023-06-21 11:26:04'),
(160, 'add_rewards', 'rewards', '2023-06-21 11:26:04', '2023-06-21 11:26:04'),
(161, 'delete_rewards', 'rewards', '2023-06-21 11:26:04', '2023-06-21 11:26:04');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(33, 3),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(82, 3),
(83, 1),
(83, 3),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(87, 3),
(88, 1),
(88, 3),
(89, 1),
(89, 3),
(90, 1),
(91, 1),
(92, 1),
(92, 3),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(97, 3),
(98, 1),
(98, 3),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(102, 3),
(103, 1),
(103, 3),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(107, 3),
(108, 1),
(108, 3),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(112, 3),
(113, 1),
(113, 3),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(117, 3),
(118, 1),
(118, 3),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(122, 3),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(127, 3),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `text` longtext DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 1,
  `release_date` timestamp NULL DEFAULT NULL,
  `expire_date` timestamp NULL DEFAULT NULL,
  `is_pinned` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `public_pages`
--

CREATE TABLE `public_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `shown_in_footer` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `public_pages`
--

INSERT INTO `public_pages` (`id`, `slug`, `title`, `content`, `created_at`, `updated_at`, `page_order`, `shown_in_footer`) VALUES
(3, 'terms-and-conditions', 'Terms and conditions', '<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Overview</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">This website is operated by Qdev Techs. Throughout the site, the terms &ldquo;we&rdquo;, &ldquo;us&rdquo; and &ldquo;our&rdquo; refer to Qdev Techs. Qdev Techs offers this website, including all information, tools and services available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">By visiting our site and/ or purchasing something from us, you engage in our &ldquo;Service&rdquo; and agree to be bound by the following terms and conditions (&ldquo;Terms of Service&rdquo;, &ldquo;Terms&rdquo;), including those additional terms and conditions and policies referenced herein and/or available by hyperlink. These Terms of Service apply&nbsp; to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Please read these Terms of Service carefully before accessing or using our website. By accessing or using any part of the site, you agree to be bound by these Terms of Service. If you do not agree to all the terms and conditions of this agreement, then you may not access the website or use any services. If these Terms of Service are considered an offer, acceptance is expressly limited to these Terms of Service.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Any new features or tools which are added to the current store shall also be subject to the Terms of Service. You can review the most current version of the Terms of Service at any time on this page. We reserve the right to update, change or replace any part of these Terms of Service by posting updates and/or changes to our website. It is your responsibility to check this page periodically for changes. Your continued use of or access to the website following the posting of any changes constitutes acceptance of those changes.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Platform Terms</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">By agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You may not use our products for any illegal or unauthorized purpose nor may you, in the use of the Service, violate any laws in your jurisdiction (including but not limited to copyright laws).</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You must not transmit any worms or viruses or any code of a destructive nature.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">A breach or violation of any of the Terms will result in an immediate termination of your Services.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">General Conditions</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We reserve the right to refuse service to anyone for any reason at any time.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You understand that your content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You agree not to reproduce, duplicate, copy, sell, resell or exploit any portion of the Service, use of the Service, or access to the Service or any contact on the website through which the service is provided, without express written permission by us.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">The headings used in this agreement are included for convenience only and will not limit or otherwise affect these Terms.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Accuracy, Completeness And Timeliness Of Information</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We are not responsible if information made available on this site is not accurate, complete or current. The material on this site is provided for general information only and should not be relied upon or used as the sole basis for making decisions without consulting primary, more accurate, more complete or more timely sources of information. Any reliance on the material on this site is at your own risk.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">This site may contain certain historical information. Historical information, necessarily, is not current and is provided for your reference only. We reserve the right to modify the contents of this site at any time, but we have no obligation to update any information on our site. You agree that it is your responsibility to monitor changes to our site.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Modifications To The Service And Prices</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Prices for our products are subject to change without notice.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We reserve the right at any time to modify or discontinue the Service (or any part or content thereof) without notice at any time.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We shall not be liable to you or to any third-party for any modification, price change, suspension or discontinuance of the Service.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\"><span style=\" font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"font-size: 24px; font-weight: 500;\">Products And Services</span></span></h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Certain products or services may be available exclusively online through the website. These products or services may have limited quantities and are subject to return or exchange only according to our Return Policy.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We have made every effort to display as accurately as possible the colors and images of our products that appear at the store. We cannot guarantee that your computer monitor\'s display of any color will be accurate.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We reserve the right, but are not obligated, to limit the sales of our products or Services to any person, geographic region or jurisdiction. We may exercise this right on a case-by-case basis. We reserve the right to limit the quantities of any products or services that we offer. All descriptions of products or product pricing are subject to change at anytime without notice, at the sole discretion of our users. Users reserve the right to discontinue any product at any time. Any offer for any product or service made on this site is void where prohibited.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We do not warrant that the quality of any products, services, information, or other material purchased or obtained by you will meet your expectations, or that any errors in the Service will be corrected.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\"><span style=\" font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"font-size: 24px; font-weight: 500;\">Accuracy Of Billing And Account Information</span></span></h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We reserve the right to refuse any order you place with us. We may, in our sole discretion, limit or cancel quantities purchased per person, per household or per order. These restrictions may include orders placed by or under the same customer account, the same credit card, and/or orders that use the same billing and/or shipping address. In the event that we make a change to or cancel an order, we may attempt to notify you by contacting the e-mail and/or billing address/phone number provided at the time the order was made. We reserve the right to limit or prohibit orders that, in our sole judgment, appear to be placed by dealers, resellers or distributors.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You agree to provide current, complete and accurate purchase and account information for all purchases made at our store.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">For more detail, please review our Returns Policy.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Optional Tools</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We may provide you with access to third-party tools over which we neither monitor nor have any control nor input.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You acknowledge and agree that we provide access to such tools &rdquo;as is&rdquo; and &ldquo;as available&rdquo; without any warranties, representations or conditions of any kind and without any endorsement. We shall have no liability whatsoever arising from or relating to your use of optional third-party tools.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Any use by you of optional tools offered through the site is entirely at your own risk and discretion and you should ensure that you are familiar with and approve of the terms on which tools are provided by the relevant third-party provider(s).</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We may also, in the future, offer new services and/or features through the website (including, the release of new tools and resources). Such new features and/or services shall also be subject to these Terms of Service.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Third-party Links</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Certain content, products and services available via our Service may include materials from third-parties.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Third-party links on this site may direct you to third-party websites that are not affiliated with us. We are not responsible for examining or evaluating the content or accuracy and we do not warrant and will not have any liability or responsibility for any third-party materials or websites, or for any other materials, products, or services of third-parties.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We are not liable for any harm or damages related to the purchase or use of goods, services, resources, content, or any other transactions made in connection with any third-party websites. Please review carefully the third-party\'s policies and practices and make sure you understand them before you engage in any transaction. Complaints, claims, concerns, or questions regarding third-party products should be directed to the third-party.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">User Comments, Feedback And Other Submissions</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">If, at our request, you send certain specific submissions (for example contest entries) or without a request from us you send creative ideas, suggestions, proposals, plans, or other materials, whether online, by email, by postal mail, or otherwise (collectively, \'comments\'), you agree that we may, at any time, without restriction, edit, copy, publish, distribute, translate and otherwise use in any medium any comments that you forward to us. We are and shall be under no obligation (1) to maintain any comments in confidence; (2) to pay compensation for any comments; or (3) to respond to any comments.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We may, but have no obligation to, monitor, edit or remove content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, pornographic, obscene or otherwise objectionable or violates any party&rsquo;s intellectual property or these Terms of Service.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You agree that your comments will not violate any right of any third-party, including copyright, trademark, privacy, personality or other personal or proprietary right. You further agree that your comments will not contain libelous or otherwise unlawful, abusive or obscene material, or contain any computer virus or other malware that could in any way affect the operation of the Service or any related website. You may not use a false e-mail address, pretend to be someone other than yourself, or otherwise mislead us or third-parties as to the origin of any comments. You are solely responsible for any comments you make and their accuracy. We take no responsibility and assume no liability for any comments posted by you or any third-party.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Your submission of personal information through the store is governed by our Privacy Policy. To view our Privacy Policy.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Errors, Inaccuracies And Omissions</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Occasionally there may be information on our site or in the Service that contains typographical errors, inaccuracies or omissions that may relate to product descriptions, pricing, promotions, offers, product shipping charges, transit times and availability. We reserve the right to correct any errors, inaccuracies or omissions, and to change or update information or cancel orders if any information in the Service or on any related website is inaccurate at any time without prior notice (including after you have submitted your order).</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We undertake no obligation to update, amend or clarify information in the Service or on any related website, including without limitation, pricing information, except as required by law. No specified update or refresh date applied in the Service or on any related website, should be taken to indicate that all information in the Service or on any related website has been modified or updated.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Prohibited Uses</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">In addition to other prohibitions as set forth in the Terms of Service, you are prohibited from using the site or its content: (a) for any unlawful purpose; (b) to solicit others to perform or participate in any unlawful acts; (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; (d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; (e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) to submit false or misleading information; (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Service or of any related website, other websites, or the Internet; (h) to collect or track the personal information of others; (i) to spam, phish, pharm, pretext, spider, crawl, or scrape; (j) for any obscene or immoral purpose; or (k) to interfere with or circumvent the security features of the Service or any related website, other websites, or the Internet. We reserve the right to terminate your use of the Service or any related website for violating any of the prohibited uses.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Disclaimer Of Warranties; Limitation Of Liability</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We do not guarantee, represent or warrant that your use of our service will be uninterrupted, timely, secure or error-free.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We do not warrant that the results that may be obtained from the use of the service will be accurate or reliable.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You agree that from time to time we may remove the service for indefinite periods of time or cancel the service at any time, without notice to you.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You expressly agree that your use of, or inability to use, the service is at your sole risk. The service and all products and services delivered to you through the service are (except as expressly stated by us) provided \'as is\' and \'as available\' for your use, without any representation, warranties or conditions of any kind, either express or implied, including all implied warranties or conditions of merchantability, merchantable quality, fitness for a particular purpose, durability, title, and non-infringement.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">In no case shall Qdev Techs, our directors, officers, employees, affiliates, agents, contractors, interns, suppliers, service providers or licensors be liable for any injury, loss, claim, or any direct, indirect, incidental, punitive, special, or consequential damages of any kind, including, without limitation lost profits, lost revenue, lost savings, loss of data, replacement costs, or any similar damages, whether based in contract, tort (including negligence), strict liability or otherwise, arising from your use of any of the service or any products procured using the service, or for any other claim related in any way to your use of the service or any product, including, but not limited to, any errors or omissions in any content, or any loss or damage of any kind incurred as a result of the use of the service or any content (or product) posted, transmitted, or otherwise made available via the service, even if advised of their possibility. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, our liability shall be limited to the maximum extent permitted by law.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Indemnification</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You agree to indemnify, defend and hold harmless Qdev Techs and our parent, subsidiaries, affiliates, partners, officers, directors, agents, contractors, licensors, service providers, subcontractors, suppliers, interns and employees, harmless from any claim or demand, including reasonable attorneys&rsquo; fees, made by any third-party due to or arising out of your breach of these Terms of Service or the documents they incorporate by reference, or your violation of any law or the rights of a third-party.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Severability</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">In the event that any provision of these Terms of Service is determined to be unlawful, void or unenforceable, such provision shall nonetheless be enforceable to the fullest extent permitted by applicable law, and the unenforceable portion shall be deemed to be severed from these Terms of Service, such determination shall not affect the validity and enforceability of any other remaining provisions.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Termination</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">The obligations and liabilities of the parties incurred prior to the termination date shall survive the termination of this agreement for all purposes.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">These Terms of Service are effective unless and until terminated by either you or us. You may terminate these Terms of Service at any time by notifying us that you no longer wish to use our Services, or when you cease using our site.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">If in our sole judgment you fail, or we suspect that you have failed, to comply with any term or provision of these Terms of Service, we also may terminate this agreement at any time without notice and you will remain liable for all amounts due up to and including the date of termination; and/or accordingly may deny you access to our Services (or any part thereof).</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Entire Agreement</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">The failure of us to exercise or enforce any right or provision of these Terms of Service shall not constitute a waiver of such right or provision.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">These Terms of Service and any policies or operating rules posted by us on this site or in respect to The Service constitutes the entire agreement and understanding between you and us and govern your use of the Service, superseding any prior or contemporaneous agreements, communications and proposals, whether oral or written, between you and us (including, but not limited to, any prior versions of the Terms of Service).</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Any ambiguities in the interpretation of these Terms of Service shall not be construed against the drafting party.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Governing Law</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">These Terms of Service and any separate agreements whereby we provide you Services shall be governed by and construed in accordance with the laws Prahova &ndash; Romania.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Changes To Terms Of Service</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You can review the most current version of the Terms of Service at any time at this page.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We reserve the right, at our sole discretion, to update, change or replace any part of these Terms of Service by posting updates and changes to our website. It is your responsibility to check our website periodically for changes. Your continued use of or access to our website or the Service following the posting of any changes to these Terms of Service constitutes acceptance of those changes.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Contact Information</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Questions about the Terms of Service should be sent to us over the <a href=\"../contact\">contact page</a>.</p>', '2021-09-30 07:07:35', '2021-09-30 07:07:35', 3, 1);
INSERT INTO `public_pages` (`id`, `slug`, `title`, `content`, `created_at`, `updated_at`, `page_order`, `shown_in_footer`) VALUES
(4, 'privacy', 'Privacy Policy', '<p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">This Privacy Policy describes how your personal information is collected, used, and shared when you visit or make a purchase from https://your-domain.com (the &ldquo;Site&rdquo;). Continuing using this site means you agree to all of the mentions below.</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Personal information we collect</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">When you visit the Site, we automatically collect certain information about your device, including information about your web browser, IP address, time zone, and some of the cookies that are installed on your device. Additionally, as you browse the Site, we collect information about the individual web pages or products that you view, what websites or search terms referred you to the Site, and information about how you interact with the Site. We refer to this automatically-collected information as &ldquo;Device Information.&rdquo;</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We collect Device Information using the following technologies:</p>\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">\n<li style=\"box-sizing: border-box;\">&ldquo;Cookies&rdquo; are data files that are placed on your device or computer and often include an anonymous unique identifier. For more information about cookies, and how to disable cookies, visit <a href=\"https://www.cookiesandyou.com/\" target=\"_blank\" rel=\"noopener\">cookiesandyou.com</a>.</li>\n<li style=\"box-sizing: border-box;\">&ldquo;Log files&rdquo; track actions occurring on the Site, and collect data including your IP address, browser type, Internet service provider, referring/exit pages, and date/time stamps.</li>\n</ul>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">The payments on our marketplace are made via Paypal, so we do not store any transactions related information, like credit card number, billing information etc. We do however store the Paypal transaction ID for easier reference in case of any disputes. We refer to this information as &ldquo;Order Information.&rdquo;</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">When we talk about &ldquo;Personal Information&rdquo; in this Privacy Policy, we are talking both about Device Information and Order Information.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">How do we use your personal information?</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We use the Order Information that we collect generally to fulfill any orders placed through the Site). Additionally, we use this Order Information to:</p>\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">\n<li style=\"box-sizing: border-box;\">Communicate with you;</li>\n<li style=\"box-sizing: border-box;\">Screen our orders for potential risk or fraud; and</li>\n<li style=\"box-sizing: border-box;\">When in line with the preferences you have shared with us, provide you with information or advertising relating to our products or services.</li>\n<li style=\"box-sizing: border-box;\">We use the Device Information that we collect to help us screen for potential risk and fraud (in particular, your IP address), and more generally to improve and optimize our Site (for example, by generating analytics about how our customers browse and interact with the Site, and to assess the success of our marketing and advertising campaigns).</li>\n</ul>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Sharing your personal information</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We do not share your Personal Information with third parties.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We use Google Analytics to help us understand how our customers use the Site. You can read more about how Google uses your Personal Information&nbsp;<a style=\"box-sizing: border-box; text-decoration-line: none; background-color: transparent;\" href=\"https://www.google.com/intl/en/policies/privacy/\" target=\"_blank\" rel=\"noopener\">Here</a>. You can also opt-out of Google Analytics&nbsp;<a style=\"box-sizing: border-box; text-decoration-line: none; background-color: transparent;\" href=\"https://tools.google.com/dlpage/gaoptout\" target=\"_blank\" rel=\"noopener\">Here</a>&nbsp;.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Finally, we may also share&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">limited</span>&nbsp;Personal Information to comply with applicable laws and regulations, to respond to a subpoena, search warrant or other lawful request for information we receive, or to otherwise protect our rights.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Do not track</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Please note that we do not alter our Site&rsquo;s data collection and use practices when we see a Do Not Track signal from your browser.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Your rights</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">If you are a European resident, you have the right to access personal information we hold about you and to ask that your personal information be corrected, updated, or deleted. If you would like to exercise this right, please contact us through the contact information below.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Additionally, if you are a European resident we note that we are processing your information in order to fulfill contracts we might have with you (for example if you make an order through the Site), or otherwise to pursue our legitimate business interests listed above.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Data retention</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">When you place an order through the Site, we will maintain your Order Information for our records unless and until you ask us to delete this information.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Minors</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">The Site is not intended for individuals under the age of 18.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Changes</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We may update this privacy policy from time to time in order to reflect, for example, changes to our practices or for other operational, legal or regulatory reasons.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Contact us</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">For more information about our privacy practices, if you have questions, or if you would like to make a complaint, please contact us by e-mail at contact@illustation.io or by sending us a&nbsp;<a style=\"box-sizing: border-box; text-decoration-line: none; background-color: transparent;\" href=\"../contact\">contact message</a>.</p>', '2021-09-30 07:09:39', '2021-09-30 07:09:39', 2, 1),
(5, 'help', 'Help & FAQ', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">&nbsp;</p>\n<h2 style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">dasdasdsadsa</h2>\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">&nbsp;</p>\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\"><strong style=\"box-sizing: border-box; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: start;\">JustFans &ndash; Premium Content Creators SaaS</strong><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: start;\"> is a fully-featured PHP platform that allows you to start your own premium content-based social media platform in no time. It allows your users to post premium content, which can only be unlocked by other viewers when purchasing a monthly subscription. On top of that, creators can earn more money from tips and paid posts, on top of of the regular subscription content.<br /></span><br style=\"box-sizing: border-box; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: start;\" /><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: start;\">The experience is powered by a mobile-first, clean and easy-to-use design, with De themes, RTL, and localization capabilities. It allows your creators to sell their premium content via monthly subscriptions, offers, bundles, tips, and pay to unlock posts.</span></p>\n<p style=\"text-align: start;\"><span style=\"font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"font-size: 24px; letter-spacing: -0.8px;\">Posting content</span></span></p>\n<p style=\"text-align: start;\"><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">In order to be able to start posting content and earn money, you will need to create an account, deppending on the platform settings you might have to verify it, then you will be able to create posts by accessing the <a href=\"../posts/create\">Create post</a> page, where you can upload any kind of media you want, by either drag and dropping your files onto the text area, or by clicking on the file icon bellow the text area.</span></p>\n<p style=\"text-align: start;\">&nbsp;</p>\n<p style=\"text-align: start;\"><span style=\"font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 24px; letter-spacing: -0.8px;\">Subscriptions</span></p>\n<p style=\"text-align: start;\"><span style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\"><span style=\"font-size: 16px;\">Once you get an account rolling, you will be able to purchase user subscriptions, send tips and unlock posts with your PayPal account or a credit/debit card, via Stripe. Once you have valid subscription to a user, you will then also be able to chat with him via the live messenger. Subscriptions can be cancelled at any given time.<br /></span></span></p>\n<p style=\"text-align: start;\">&nbsp;</p>\n<p><span style=\"font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 24px; letter-spacing: -0.8px;\">Taxes &amp; Rates</span></p>\n<p><span style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\"><span style=\"font-size: 16px;\">Taxes can be set over the admin side by the site administrator. Generally, platform taxes can be set as an exclusive tax or custom set &amp; applied at withdrawal.&nbsp;</span></span></p>\n<p>&nbsp;</p>\n<p><span style=\"font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 24px; letter-spacing: -0.8px;\">Withdrawals&nbsp;</span></p>\n<p><span style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\"><span style=\"font-size: 16px;\">Withdrawals can be requested by authors at any given time. We allow Paypal &amp; Bank Transfer and the transfer are manuall made by the administrator, as a two factor check.</span></span></p>\n<p>&nbsp;</p>\n<p><span style=\"font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 24px; letter-spacing: -0.8px;\">Reporting a user or a post</span></p>\n<p><span style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\"><span style=\"font-size: 16px;\">In order to report a user or it\'s content, you can go to that user\'s profile or post, click on the three dots icon and select report. Our admins will analyze and take action&nbsp;accordingly. You can also block a certain user from seeing your profile or messaging you again.<br /><br /></span></span></p>\n<p><span style=\"font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 24px; letter-spacing: -0.8px;\">Got questions?</span></p>\n<p><span style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\"><span style=\"font-size: 16px;\">If you have any questions whatsoever, do not heistate to send us a message via the <a href=\"../contact\">Contact Page</a>.</span></span></p>\n<p><span style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\"><span style=\"font-size: 16px;\">&nbsp;</span></span></p>', '2021-09-30 07:10:09', '2023-03-09 10:07:20', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reactions`
--

CREATE TABLE `reactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reaction_type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_code_usages`
--

CREATE TABLE `referral_code_usages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `used_by` bigint(20) UNSIGNED NOT NULL,
  `referral_code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `to_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `referral_code_usage_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `reward_type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(2, 'user', 'Normal User', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(3, 'demo', 'Demo', '2021-11-22 10:55:03', '2021-11-22 10:55:03');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.name', 'Site name', 'Mysteriax', '', 'text', 10, 'Site'),
(2, 'site.description', 'Site description', 'Site Description', '', 'text', 20, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'JustFans  Admin', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to JustFans Admin Panel. Log in to manage and customize your site!', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(12, 'feed.feed_posts_per_page', 'Posts per page', '3', NULL, 'text', 1, 'Feed'),
(15, 'feed.feed_suggestions_card_per_page', 'Suggestion box cards per page', '3', NULL, 'text', 90, 'Feed'),
(16, 'feed.feed_suggestions_total_cards', 'Suggestion box total cards', '3', NULL, 'text', 80, 'Feed'),
(30, 'media.ffprobe_path', 'FFProbe Path', NULL, '', 'text', 13, 'Media'),
(31, 'media.ffmpeg_path', 'FFMpeg Path', NULL, '', 'text', 12, 'Media'),
(32, 'media.allowed_file_extensions', 'Allowed file extensions', 'png,jpg,jpeg,wav,mp3,ogg,mp4,avi,mov,moov,m4v,mpeg,wmv,avi,asf', '{\n\"description\": \"If ffmpeg is not available, video formats will fallback to mp4 only.\"\n}', 'text', 14, 'Media'),
(33, 'media.max_file_upload_size', 'Max file uploads size', '9', '{\n\"description\":  \"File size in MB. Do not exceed PHP maximum upload size & post size as video uploads might silently fail.\"\n}', 'text', 15, 'Media'),
(34, 'websockets.pusher_app_key', 'Pusher App Key', NULL, NULL, 'text', 20, 'Websockets'),
(36, 'websockets.pusher_app_secret', 'Pusher App Secret', NULL, NULL, 'text', 30, 'Websockets'),
(37, 'websockets.pusher_app_cluster', 'Pusher Cluster Zone', NULL, NULL, 'text', 40, 'Websockets'),
(38, 'websockets.pusher_app_id', 'Pusher App ID', NULL, NULL, 'text', 10, 'Websockets'),
(39, 'payments.invoices_sender_name', 'Invoices Sender Name', 'Web Development for Digital Marketing Agency', NULL, 'text', 21, 'Payments'),
(40, 'payments.invoices_sender_country_name', 'Invoices Sender Country Name', 'Australia', NULL, 'text', 22, 'Payments'),
(41, 'payments.invoices_sender_street_address', 'Invoices Sender Street Address', '121 Kopkes Road', NULL, 'text', 23, 'Payments'),
(42, 'payments.invoices_sender_state_name', 'Invoices Sender State Name', 'Victoria', NULL, 'text', 24, 'Payments'),
(43, 'payments.invoices_sender_city_name', 'Invoices Sender City Name', '3351', NULL, 'text', 25, 'Payments'),
(44, 'payments.invoices_sender_postcode', 'Invoices Sender Postcode', 'PITFIELD', NULL, 'text', 26, 'Payments'),
(45, 'payments.invoices_sender_company_number', 'Invoices Sender Company Number', '(03) 5391 1216', NULL, 'text', 27, 'Payments'),
(46, 'payments.invoices_prefix', 'Invoices Prefix', 'OF', NULL, 'text', 28, 'Payments'),
(52, 'media.apply_watermark', 'Apply watermark', '0', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true\n}', 'checkbox', 32, 'Media'),
(53, 'media.watermark_image', 'Watermark image', '', NULL, 'file', 33, 'Media'),
(54, 'site.light_logo', 'Light site logo', '', NULL, 'file', 40, 'Site'),
(55, 'site.dark_logo', 'Dark site logo', '', NULL, 'file', 50, 'Site'),
(56, 'site.favicon', 'Site favicon', '', NULL, 'file', 60, 'Site'),
(57, 'payments.stripe_public_key', 'Stripe Public Key', NULL, NULL, 'text', 37, 'Payments'),
(58, 'payments.stripe_secret_key', 'Stripe Secret Key', NULL, NULL, 'text', 38, 'Payments'),
(59, 'payments.stripe_webhooks_secret', 'Stripe Webhooks Secret', NULL, NULL, 'text', 39, 'Payments'),
(60, 'payments.paypal_client_id', 'Paypal Client Id', NULL, NULL, 'text', 40, 'Payments'),
(61, 'payments.paypal_secret', 'Paypal Secret', NULL, NULL, 'text', 41, 'Payments'),
(74, 'payments.paypal_live_mode', 'Paypal Live Mode', '1', '{\n\"true\" : \"On\",\n\"false\" : \"Off\",\n\"checked\" : true\n}', 'checkbox', 42, 'Payments'),
(78, 'emails.driver', 'Email driver', 'log', '{\n\"default\" : \"log\",\n\"options\" : {\n\"log\": \"Log\",\n\"sendmail\": \"Sendmail\",\n\"smtp\": \"SMTP\",\n\"mailgun\": \"Mailgun\"\n}\n}', 'select_dropdown', 43, 'Emails'),
(79, 'emails.from_name', 'Mail from name', NULL, NULL, 'text', 44, 'Emails'),
(80, 'emails.from_address', 'Mail from address', NULL, NULL, 'text', 45, 'Emails'),
(81, 'emails.mailgun_domain', 'Mailgun domain', NULL, NULL, 'text', 46, 'Emails'),
(82, 'emails.mailgun_secret', 'Mailgun secret', NULL, NULL, 'text', 47, 'Emails'),
(83, 'emails.smtp_host', 'SMTP Host', NULL, NULL, 'text', 49, 'Emails'),
(84, 'emails.smtp_port', 'SMTP Port', NULL, NULL, 'text', 50, 'Emails'),
(85, 'emails.smtp_encryption', 'SMTP Encryption', 'tsl', '{\n\"default\" : \"tls\",\n\"options\" : {\n\"tls\": \"TLS\",\n\"ssl\": \"SSL\"\n}\n}', 'radio_btn', 51, 'Emails'),
(86, 'emails.smtp_username', 'SMTP Username', NULL, NULL, 'text', 52, 'Emails'),
(87, 'emails.smtp_password', 'SMTP Password', NULL, NULL, 'text', 53, 'Emails'),
(88, 'emails.mailgun_endpoint', 'Mailgun endpoint', NULL, NULL, 'text', 48, 'Emails'),
(95, 'storage.driver', 'Driver', 'public', '{\n\"default\" : \"public\",\n\"options\" : {\n\"public\": \"Local\",\n\"s3\": \"S3\",\n\"wasabi\": \"Wasabi\",\n\"do_spaces\": \"DigitalOcean Spaces\",\n\"minio\": \"Minio\",\n\"pushr\": \"Pushr\"\n}\n}', 'select_dropdown', 54, 'Storage'),
(96, 'storage.aws_access_key', 'Aws Access Key', NULL, NULL, 'text', 55, 'Storage'),
(97, 'storage.aws_secret_key', 'Aws Secret Key', NULL, NULL, 'text', 56, 'Storage'),
(98, 'storage.aws_region', 'Aws Region', NULL, NULL, 'text', 57, 'Storage'),
(99, 'storage.aws_bucket_name', 'Aws Bucket Name', NULL, NULL, 'text', 58, 'Storage'),
(100, 'storage.aws_cdn_enabled', 'Aws CloudFront Enabled', '0', '{\n\"true\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : false\n}', 'checkbox', 59, 'Storage'),
(101, 'storage.aws_cdn_presigned_urls_enabled', 'Aws CloudFront PreSigned Url\'s Enabled', '0', '{\n\"true\" : \"On\",\n\"false\" : \"Off\",\n\"checked\" : false\n}', 'checkbox', 61, 'Storage'),
(102, 'storage.aws_cdn_key_pair_id', 'Aws CloudFront Key Pair Id', NULL, NULL, 'text', 62, 'Storage'),
(103, 'storage.aws_cdn_private_key_path', 'Aws CloudFront Private Key Path', NULL, NULL, 'text', 63, 'Storage'),
(104, 'storage.cdn_domain_name', 'Aws CloudFront Domain Name', NULL, NULL, 'text', 60, 'Storage'),
(106, 'compliance.enable_cookies_box', 'Enable cookies box', '1', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true\n}', 'checkbox', 1130, 'Compliance'),
(108, 'site.allow_theme_switch', 'Allow theme switch', '1', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true,\n\"description\" : \"Allow users to switch between light and dark modes.\"\n}', 'checkbox', 70, 'Site'),
(109, 'site.default_user_theme', 'Default theme', 'light', '{\n\"default\" : \"light\",\n\"options\" : {\n\"light\": \"Light theme\",\n\"dark\": \"Dark theme\"\n}\n}', 'radio_btn', 80, 'Site'),
(110, 'site.allow_direction_switch', 'Allow direction switch', '1', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true,\n\"description\": \"Allow users to switch site direction from ltr to rtl.\"\n}', 'checkbox', 90, 'Site'),
(111, 'site.default_site_direction', 'Default site direction', 'ltr', '{\n\"default\" : \"ltr\",\n\"options\" : {\n\"ltr\": \"Left to right\",\n\"rtl\": \"Right to left\"\n}\n}', 'radio_btn', 100, 'Site'),
(112, 'site.allow_language_switch', 'Allow language switch', '1', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true,\n\"description\": \"Allow users to change site\'s language.\"\n}', 'checkbox', 110, 'Site'),
(113, 'site.default_site_language', 'Default site language', 'en', '{\n\"description\" : \"Language code. Must have a present language file in the resources/lang directory.\"\n}', 'text', 120, 'Site'),
(114, 'feed.disable_right_click', 'Disable right click on posts', '0', '{\n                    \"description\": \"If enabled, right click on posts media elements will be disabled, alongside view source shortcut.\"\n                }', 'checkbox', 6, 'Feed'),
(116, 'site.homepage_type', 'Homepage type', 'landing', '{\n\"default\" : \"landing\",\n\"options\" : {\n\"landing\": \"Landing page\",\n\"login\": \"Login page\"\n}\n}', 'radio_btn', 130, 'Site'),
(119, 'site.enforce_user_identity_checks', 'Enforce User Identity Check', '0', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true,\n\"description\" : \"If enabled, users will only be able to post content & start streams if ID is verified.\"\n}', 'checkbox', 170, 'Site'),
(120, 'payments.currency_code', 'Site Currency Code', 'USD', NULL, 'text', 66, 'Payments'),
(121, 'payments.currency_symbol', 'Site Currency Symbol', '$', NULL, 'text', 67, 'Payments'),
(123, 'site.app_url', 'Site url', 'http://127.0.0.1:8000', NULL, 'text', 0, 'Site'),
(124, 'site.allow_pwa_installs', 'Allow PWA Installs', '0', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : false,\n\"description\" : \"Turns the site into an installable PWA on all devices. Website must be server from a root domain.\"\n}', 'checkbox', 299, 'Site'),
(126, 'social-media.facebook_url', 'Facebook', '#', NULL, 'text', 80, 'Social media'),
(127, 'social-media.instagram_url', 'Instagram', '#', NULL, 'text', 81, 'Social media'),
(128, 'social-media.twitter_url', 'Twitter', '#', NULL, 'text', 82, 'Social media'),
(129, 'social-media.whatsapp_url', 'Whatsapp', NULL, NULL, 'text', 83, 'Social media'),
(130, 'social-media.tiktok_url', 'Tik Tok', '#', NULL, 'text', 84, 'Social media'),
(131, 'social-media.youtube_url', 'Youtube', NULL, NULL, 'text', 85, 'Social media'),
(138, 'payments.withdrawal_min_amount', 'Withdrawal request minimum amount', '20', '{\n\"description\": \"Default: 20\"\n}', 'text', 91, 'Payments'),
(139, 'payments.withdrawal_max_amount', 'Withdrawal request maximum amount', '500', '{\n\"description\": \"Default: 500\"\n}', 'text', 92, 'Payments'),
(140, 'payments.deposit_min_amount', 'Deposit minimum amount', '5', '{}', 'text', 93, 'Payments'),
(141, 'payments.deposit_max_amount', 'Deposit maximum amount', '500', '{}', 'text', 94, 'Payments'),
(142, 'media.enforce_mp4_conversion', 'Enforce mp4 videos re-conversion', '1', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true,\n\"description\": \"Allows you skip mp4 re-conversion to platform standards, saving upload time and CPU usage. Recommended value: On.\"\n}', 'checkbox', 13, 'Media'),
(143, 'media.max_videos_length', 'Max videos length', '0', '{\n\"description\": \"Maximum videos length, specified in seconds. (0 = unlimited)\"\n}', 'text', 15, 'Media'),
(144, 'custom-code-ads.custom_css', 'Custom CSS Code', '', NULL, 'code_editor', 155, 'Custom Code / Ads'),
(145, 'custom-code-ads.custom_js', 'Custom JS Code', '', NULL, 'code_editor', 154, 'Custom Code / Ads'),
(146, 'feed.feed_suggestions_autoplay', 'Autoplay suggestions box slides', '0', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true,\n}', 'checkbox', 70, 'Feed'),
(147, 'storage.was_access_key', 'Wasabi Access Key', '', NULL, 'text', 111, 'Storage'),
(148, 'storage.was_secret_key', 'Wasabi Secret Key', '', NULL, 'text', 112, 'Storage'),
(149, 'storage.was_region', 'Wasabi Region', '', NULL, 'text', 113, 'Storage'),
(150, 'storage.was_bucket_name', 'Wasabi Bucket', '', NULL, 'text', 114, 'Storage'),
(151, 'feed.allow_gallery_zoom', 'Allow post galleries Zoom in', '0', '{\n                    \"description\": \"If enabled, high-res photos will feature a zoom in/out option when previewing posts media.\"\n                }', 'checkbox', 7, 'Feed'),
(152, 'media.use_url_watermark', 'Use profile url watermark', '0', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : false,\n\"description\": \"If enabled, the media will include a watermark containing the user profile URL.\"\n}', 'checkbox', 116, 'Media'),
(153, 'custom-code-ads.sidebar_ad_spot', 'Sidebar Ad', '', '{\n    \"description\" : \"Will be shown on user feed & profiles, over the right sidebar.\"\n}', 'code_editor', 117, 'Custom Code / Ads'),
(154, 'site.hide_identity_checks', 'Hide identity checks menu', '0', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : false,\n\"description\" : \"If enabled, the users ID check module link will be hidden from the menus.\"\n}', 'checkbox', 180, 'Site'),
(155, 'feed.suggestions_skip_empty_profiles', 'Skip empty profiles out of the suggestions box', '0', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : false,\n\"description\" : \"If enabled, users will only get suggestions of profiles that have both avatar and cover filled in.\"\n}', 'checkbox', 40, 'Feed'),
(156, 'payments.coinbase_api_key', 'CoinBase Api Key', NULL, NULL, 'text', 35, 'Payments'),
(157, 'payments.coinbase_webhook_key', 'CoinBase Webhooks Secret', NULL, NULL, 'text', 36, 'Payments'),
(158, 'social-login.facebook_client_id', 'Facebook client ID', '', NULL, 'text', 70, 'Social login'),
(159, 'social-login.facebook_secret', 'Facebook client secret', '', NULL, 'text', 118, 'Social login'),
(160, 'social-login.twitter_client_id', 'Twitter client ID', '', NULL, 'text', 119, 'Social login'),
(161, 'social-login.twitter_secret', 'Twitter client secret', '', NULL, 'text', 120, 'Social login'),
(162, 'social-login.google_client_id', 'Google client ID', '', NULL, 'text', 121, 'Social login'),
(163, 'social-login.google_secret', 'Google client secret', '', NULL, 'text', 122, 'Social login'),
(164, 'site.slogan', 'Site slogan', '', NULL, 'text', 30, 'Site'),
(165, 'profiles.allow_profile_qr_code', 'Allow QR code generate on profiles', NULL, '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : false,\n\"description\" : \"If enabled, a button that allows generating and saving QR codes is shown.\"\n}', 'checkbox', 90, 'Profiles'),
(166, 'profiles.allow_gender_pronouns', 'Allow gender pronouns', '1', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"If enabled, users will be able to enter custom pronouns which will be shown on profiles.\"\n                    }', 'checkbox', 80, 'Profiles'),
(167, 'site.redirect_page_after_register', 'Redirect page after register', 'feed', '\n                    {\n\"default\" : \"feed\",\n\"options\" : {\n\"feed\": \"Feed page\",\n\"settings\": \"User profile settings page\"\n}\n}', 'radio_btn', 150, 'Site'),
(168, 'payments.allow_manual_payments', 'Allow manual payments', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true\n                    }', 'checkbox', 30, 'Payments'),
(169, 'media.use_chunked_uploads', 'Use chunked uploads', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"If enabled, file uploads will be split across multiple requests, allowing to bypass Cloudflare or max file limits.\"\n                    }', 'checkbox', 15, 'Media'),
(170, 'media.upload_chunk_size', 'Chunks size', '2', '{\n                        \"description\": \"File upload chunks size in MB. Can not exceed maximum server upload size.\"\n                    }', 'text', 15, 'Media'),
(171, 'site.enforce_email_validation', 'Enforce email validations', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"If enabled, all users will be disabled site access until they verified the email. If turned of, users will still receive a confirmation pop up in user settings.\"\n                    }', 'checkbox', 160, 'Site'),
(172, 'site.homepage_redirect', 'Homepage redirect', '', '{\n                        \"description\": \"If this setting is used, the `Homepage type` setting will not be used anymore.\"\n                    }', 'text', 140, 'Site'),
(173, 'media.users_covers_size', 'User cover images (re)size', '599x180', '{\n                        \"description\": \"Size to which the covers will be resized to. Increasing the resolution will give higher quality cover images, but bigger files. Make sure to use the same aspect ratio.\"\n                    }', 'text', 1120, 'Media'),
(174, 'security.enable_2fa', 'Enable email 2FA on logins', '1', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"If enabled, users which have 2FA enabled for their account, will be prompted with a security check when logging from new devices.\"\n                        }', 'checkbox', 85, 'Security'),
(175, 'security.default_2fa_on_register', 'Default 2FA setting on user register', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"If enabled, users will have 2FA enabled by default, when creating new accounts.\"\n                        }', 'checkbox', 90, 'Security'),
(176, 'security.allow_users_2fa_switch', 'Allow users to turn off 2FA', '1', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"If disabled, users won\'t be able to change their 2FA settings.\"\n                        }', 'checkbox', 95, 'Security'),
(177, 'profiles.default_profile_type_on_register', 'Default profile type on user register', 'paid', '{\n                            \"default\" : \"paid\",\n                            \"options\" : {\n                                \"paid\": \"Paid profile\",\n                                \"free\": \"Free profile\",\n                                \"open\": \"Open profile\"\n                            },\n                            \"description\": \"Paid = Subscription locked content, Free = Follow locked, Open = Content is available to un-registered users. PPV content is locked for all scenarios.\"\n                            }', 'radio_btn', 20, 'Profiles'),
(178, 'profiles.default_users_to_follow', 'Default users to follow on user register', '', '{\n                        \"description\": \"List of user-IDs to be followed by all users when registering, separated by a comma. If users are free, their content will be shown on the feed of new users.\"\n                        }', 'text', 36, 'Profiles'),
(179, 'storage.do_access_key', 'DO Access Key', '', NULL, 'text', 120, 'Storage'),
(180, 'storage.do_secret_key', 'DO Secret Key', '', NULL, 'text', 121, 'Storage'),
(181, 'storage.do_region', 'DO Region', '', NULL, 'text', 123, 'Storage'),
(183, 'storage.do_bucket_name', 'DO Bucket', '', NULL, 'text', 122, 'Storage'),
(184, 'payments.nowpayments_api_key', 'NowPayments Api Key', NULL, NULL, 'text', 33, 'Payments'),
(185, 'payments.nowpayments_ipn_secret_key', 'NowPayments IPN Secret Key', NULL, NULL, 'text', 34, 'Payments'),
(186, 'profiles.default_user_privacy_setting_on_register', 'Default user privacy setting on user register', 'public', '{\n                    \"default\" : \"public\",\n                    \"options\" : {\n                    \"public\": \"Public profile\",\n                    \"private\": \"Private profile\"\n                    },\n                    \"description\": \"If private, the profiles will be hidden from search results.\"\n                }', 'radio_btn', 30, 'Profiles'),
(187, 'payments.withdrawal_payment_methods', 'Withdrawal allowed payment methods', 'Bank transfer, Other', '{\n                            \"description\": \"Comma separated values (Bank transfer, Stripe, PayPal, Crypto, Other)\"\n                        }', 'text', 90, 'Payments'),
(188, 'security.enforce_app_ssl', 'Enforce platform SSL usage', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Usually not required, rarely, some hosting providers needs it.\"\n                        }', 'checkbox', 130, 'Security'),
(189, 'media.users_avatars_size', 'User avatar images (re)size', '96x96', '{\n                        \"description\": \"Size to which the avatars will be resized to. Increasing the resolution will give higher quality cover images, but bigger files. Make sure to use the same aspect ratio.\"\n                    }', 'text', 1130, 'Media'),
(190, 'streams.allow_streams', 'Allow streams', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        }', 'checkbox', 163, 'Streams'),
(191, 'streams.max_live_duration', 'Max Live Stream Duration', '2', '{\n                            \"description\": \"Maximum time duration for a live stream set in hours\"\n                        }', 'text', 165, 'Streams'),
(192, 'streams.pushr_key', 'Pushr Key', '', NULL, 'text', 175, 'Streams'),
(193, 'streams.pushr_zone_id', 'Pushr Zone Id', '', NULL, 'text', 185, 'Streams'),
(194, 'streams.allow_dvr', 'Allow VOD', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Enabling VODs allow creators to watch their previous live streams (no extra fees when using Pushr provider)\"\n                        }', 'checkbox', 205, 'Streams'),
(195, 'streams.pushr_encoder', 'Pushr Encoder', '', '{\n                            \"description\": \"Pushr stream encoder. EG: `eu`\"\n                        }', 'text', 195, 'Streams'),
(196, 'streams.allow_mux', 'Allow MUX', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false\n                        }', 'checkbox', 215, 'Streams'),
(197, 'streams.allow_480p', 'Allow 480p', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false\n                        }', 'checkbox', 235, 'Streams'),
(198, 'streams.allow_360p', 'Allow 360p', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false\n                        }', 'checkbox', 225, 'Streams'),
(199, 'streams.allow_576p', 'Allow 576p', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false\n                        }', 'checkbox', 245, 'Streams'),
(200, 'streams.allow_720p', 'Allow 720p', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false\n                        }', 'checkbox', 255, 'Streams'),
(201, 'streams.allow_1080p', 'Allow 1080p', '1', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false\n                        }', 'checkbox', 265, 'Streams'),
(202, 'colors.theme_color_code', 'Theme color code', '', NULL, 'text', 210, 'Colors'),
(203, 'colors.theme_gradient_from', 'Theme gradient from', '', NULL, 'text', 220, 'Colors'),
(204, 'colors.theme_gradient_to', 'Theme gradient to', '', NULL, 'text', 230, 'Colors'),
(205, 'payments.default_subscription_price', 'Default subscription price', '5', NULL, 'text', 75, 'Payments'),
(206, 'payments.min_tip_value', 'Min tips value', '1', NULL, 'text', 85, 'Payments'),
(207, 'payments.max_tip_value', 'Max tips value', '500', NULL, 'text', 86, 'Payments'),
(208, 'media.ffmpeg_video_conversion_quality_preset', 'FFMpeg video conversion quality preset', 'balanced', '{\n\"description\" : \"Going for better quality will reduce the processing time but increase the file size, next to it\'s original size.\",\n\"default\" : \"size\",\n\"options\" : {\n\"size\": \"Size optimized\",\n\"balanced\": \"Balanced profile\",\n\"quality\": \"Quality optimized\"\n}\n}', 'radio_btn', 13, 'Media'),
(209, 'payments.offline_payments_owner', 'Account owner', '', NULL, 'text', 60, 'Payments'),
(210, 'payments.offline_payments_account_number', 'Account number', '', NULL, 'text', 80, 'Payments'),
(211, 'payments.offline_payments_bank_name', 'Bank name', '', NULL, 'text', 70, 'Payments'),
(212, 'payments.offline_payments_routing_number', 'Routing number', '', NULL, 'text', 90, 'Payments'),
(213, 'payments.offline_payments_iban', 'IBAN', '', '{\"description\" : \"If left empty, the bank transfer dialog, will be hidden, so custom providers can be used via \'Offline payments details box\'.\"}', 'text', 40, 'Payments'),
(214, 'payments.offline_payments_swift', 'BIC / SWIFT', '', NULL, 'text', 50, 'Payments'),
(215, 'payments.ccbill_account_number', 'CCBill Account Number', NULL, NULL, 'text', 28, 'Payments'),
(216, 'payments.ccbill_subaccount_number_recurring', 'CCBill SubAccount Number Recurring Payments', NULL, NULL, 'text', 29, 'Payments'),
(217, 'payments.ccbill_subaccount_number_one_time', 'CCBill SubAccount Number One Time Payments', NULL, NULL, 'text', 30, 'Payments'),
(218, 'payments.ccbill_flex_form_id', 'CCBill FlexForm Id', NULL, NULL, 'text', 31, 'Payments'),
(219, 'payments.ccbill_salt_key', 'CCBill Salt Key', NULL, NULL, 'text', 32, 'Payments'),
(220, 'compliance.enable_age_verification_dialog', 'Enable age verification dialog', NULL, '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true,\n\"description\" \"Can be generally used for denying user access for minors, adult content info, etc.\"\n}', 'checkbox', 1140, 'Compliance'),
(221, 'compliance.age_verification_cancel_url', 'Age verification box cancel url', 'https://google.com', NULL, 'text', 1150, 'Compliance'),
(222, 'payments.maximum_subscription_price', 'Maximum subscription price', '500', NULL, 'text', 77, 'Payments'),
(223, 'payments.minimum_subscription_price', 'Minimum subscription price', '1', NULL, 'text', 76, 'Payments'),
(224, 'media.ffmpeg_audio_encoder', 'FFMPEG Audio encoder', 'aac', '{\n\"default\" : \"aac\",\n\"options\" : {\n\"aac\": \"AAC Encoder\",\n\"libfdk_aac\": \"libfdk_aac Encoder\",\n\"libmp3lame\": \"LAME MP3 Encoder\"\n},\n\"description\": \"AAC is recommended\"\n}', 'select_dropdown', 13, 'Media'),
(225, 'security.recaptcha_enabled', 'Enable Google reCAPTCHA', NULL, '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : false,\n\"description\": \"If enabled, it will be used on all public form pages.\"\n}', 'checkbox', 1200, 'Security'),
(226, 'security.recaptcha_site_key', 'reCAPTCHA Site Key', '', NULL, 'text', 1210, 'Security'),
(227, 'security.recaptcha_site_secret_key', 'reCAPTCHA Secret Key', '', NULL, 'text', 1220, 'Security'),
(229, 'feed.min_post_description', 'Minimum post description length', '10', '{\n\"description\": \"If set to 0/empty, at least one post attachment is required. Otherwise, attachments are optional.\"\n}', 'text', 3, 'Feed'),
(230, 'media.max_avatar_cover_file_size', 'Max avatar & cover file size', '4', '{\n\"description\": \"File size in MB. Used for both avatar & cover\"\n}', 'text', 1140, 'Media'),
(231, 'security.allow_geo_blocking', 'Allow users to be able to geoblock their profiles', NULL, '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : false,\n\"description\": \"If enabled, users will be able to disallow certain countries to access their content.\"\n}', 'checkbox', 80, 'Security'),
(232, 'security.abstract_api_key', 'IP geolocation API key (Abstract API)', '', NULL, 'text', 81, 'Security'),
(233, 'social-media.telegram_link', 'Telegram', NULL, NULL, 'text', 86, 'Social media'),
(234, 'payments.ccbill_datalink_username', 'CCBill DataLink Username', NULL, '{\n                            \"description\": \"Used for cancelling CCBill subscriptions programmatically. Enables users cancelling their CCBill subscriptions from their profile\"\n                        }', 'text', 33, 'Payments'),
(235, 'payments.ccbill_datalink_password', 'CCBill DataLink Password', NULL, NULL, 'text', 34, 'Payments'),
(236, 'payments.ccbill_checkout_disabled', 'Disable for checkout', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Won`t be shown on checkout, but it`s still available for deposits.\"\n                        }', 'checkbox', 36, 'Payments'),
(237, 'payments.ccbill_recurring_disabled', 'Disable for recurring payments', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Won`t be available for subscription payments, but it`s still available for deposits and one time payments.\"\n                        }', 'checkbox', 36, 'Payments'),
(238, 'payments.stripe_checkout_disabled', 'Disable for checkout', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Won`t be shown on checkout, but it`s still available for deposits.\"\n                        }', 'checkbox', 40, 'Payments'),
(239, 'payments.stripe_recurring_disabled', 'Disable for recurring payments', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Won`t be available for subscription payments, but it`s still available for deposits and one time payments.\"\n                        }', 'checkbox', 42, 'Payments'),
(240, 'payments.paypal_checkout_disabled', 'Disable for checkout', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Won`t be shown on checkout, but it`s still available for deposits.\"\n                        }', 'checkbox', 44, 'Payments'),
(241, 'payments.paypal_recurring_disabled', 'Disable for recurring payments', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Won`t be available for subscription payments, but it`s still available for deposits and one time payments.\"\n                        }', 'checkbox', 46, 'Payments'),
(242, 'payments.nowpayments_checkout_disabled', 'Disable for checkout', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Won`t be shown on checkout, but it`s still available for deposits.\"\n                        }', 'checkbox', 36, 'Payments'),
(243, 'payments.coinbase_checkout_disabled', 'Disable for checkout', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Won`t be shown on checkout, but it`s still available for deposits.\"\n                        }', 'checkbox', 38, 'Payments'),
(244, 'profiles.allow_users_enabling_open_profiles', 'Allow users making their profiles open', '0', '{\n                        \"true\" : \"Off\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"If enabled, users will be able to make their profiles open so anyone can their (non PPV) content.\"\n                    }', 'checkbox', 10, 'Profiles'),
(245, 'payments.paystack_secret_key', 'Paystack Secret Key', NULL, NULL, 'text', 28, 'Payments'),
(246, 'payments.paystack_checkout_disabled', 'Disable for checkout', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Won`t be shown on checkout, but it`s still available for deposits.\"\n                        }', 'checkbox', 44, 'Payments'),
(247, 'license.product_license_key', 'Product license key', 'b1d81042-b40d-4230-b740-1387cb7a91a8', '{\n                        \"description\": \"Your product license key. Can be taken out of your Codecanyon downloads page.\"\n                        }', 'text', 0, 'License'),
(248, 'payments.withdrawal_default_fee_percentage', 'Withdrawal fee percentage', '0', NULL, 'text', 96, 'Payments'),
(249, 'payments.withdrawal_allow_fees', 'Enable withdrawal fee', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Will enable admins to add a default fee percentage which will automatically apply to each withdrawal request.\"\n                        }', 'checkbox', 94, 'Payments'),
(250, 'payments.withdrawal_allow_only_for_verified', 'Enable only for verified creators', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Will enable withdrawal section into creators wallet only if they verified their identity.\"\n                        }', 'checkbox', 98, 'Payments'),
(251, 'storage.minio_access_key', 'Minio Access Key', '', NULL, 'text', 130, 'Storage'),
(252, 'storage.minio_secret_key', 'Minio Secret Key', '', NULL, 'text', 140, 'Storage'),
(253, 'storage.minio_region', 'Minio Region', '', NULL, 'text', 150, 'Storage'),
(254, 'storage.minio_bucket_name', 'Minio Bucket', '', NULL, 'text', 160, 'Storage'),
(255, 'storage.minio_endpoint', 'Minio Endpoint', '', NULL, 'text', 170, 'Storage'),
(256, 'referrals.enabled', 'Enable referral system', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        }', 'checkbox', 1245, 'Referrals'),
(257, 'referrals.fee_percentage', 'Referrals earning fee percentage', '5', '{\n                        \"description\": \"Payout percentage given to users from their referred people total earnings. If set to 0, referred users will generate no income.\"\n                    }', 'text', 1260, 'Referrals'),
(258, 'referrals.apply_for_months', 'Referrals months limit', '12', '{\n                        \"description\": \"Represents the number of months since users created their accounts so people who referred them earn a fee from their total earnings.\"\n                    }', 'text', 1265, 'Referrals'),
(259, 'referrals.fee_limit', 'Referrals fee limit', '1000', '{\n                        \"description\": \"Allows users to earn up to the specified limit per referred user.\"\n                    }', 'text', 1270, 'Referrals'),
(260, 'profiles.default_wallet_balance_on_register', 'Default wallet balance on user register', '0', '{\n                        \"description\" : \"Default wallet balance to be credited to new users.\"\n                    }\n                    ', 'text', 33, 'Profiles'),
(261, 'feed.suggestions_skip_unverified_profiles', 'Skip unverified profiles out of the suggestions box', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        }', 'checkbox', 50, 'Feed'),
(262, 'feed.suggestions_use_featured_users_list', 'Use featured users for the suggestions box', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        }', 'checkbox', 60, 'Feed'),
(263, 'referrals.referrals_default_link_page', 'Default referrals link page', 'profile', '{\n\"default\" : \"profile\",\n\"options\" : {\n\"profile\": \"User profile page\",\n\"register\": \"Register page\",\n\"home\": \"Homepage\"\n},\n\"description\": \"The default page for which the referral link will be created for.\"\n}', 'radio_btn', 1275, 'Referrals'),
(264, 'profiles.allow_profile_bio_markdown', 'Allow users to use markdown in profile description', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"If enabled, users will be able to use markdown in their profile bios.\"\n                    }', 'checkbox', 40, 'Profiles'),
(265, 'profiles.allow_profile_bio_markdown_links', 'Allow hyperlinks in the markdown formatting', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"If enabled, users will be able to post links within their descriptions.\"\n                    }', 'checkbox', 50, 'Profiles'),
(266, 'profiles.disable_profile_bio_excerpt', 'Disable profile\'s bio field excerpt', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"If set to On, the bio will be auto-expanded and show more/less labels will be hidden.\"\n                    }', 'checkbox', 60, 'Profiles'),
(267, 'profiles.max_profile_bio_length', 'Maximum profile bio characters length', '1500', '{\n                        \"description\": \"Max profile bio length. If set to 0, no limit will be set.\"\n                    }', 'text', 70, 'Profiles'),
(268, 'websockets.driver', 'Websockets driver', 'pusher', '{\n\"default\" : \"pusher\",\n\"options\" : {\n\"pusher\": \"Pusher\",\n\"soketi\": \"Soketi\"\n}\n}', 'select_dropdown', 1, 'Websockets'),
(269, 'websockets.soketi_host_address', 'Soketi Host Address', '', NULL, 'text', 10, 'Websockets'),
(270, 'websockets.soketi_host_port', 'Soketi Host Port', '', NULL, 'text', 20, 'Websockets'),
(271, 'websockets.soketi_app_id', 'Soketi App ID', '', NULL, 'text', 30, 'Websockets'),
(272, 'websockets.soketi_app_key', 'Soketi App Key', '', NULL, 'text', 40, 'Websockets'),
(273, 'websockets.soketi_app_secret', 'Soketi App Secret', '', NULL, 'text', 50, 'Websockets'),
(274, 'websockets.soketi_use_TSL', 'Use TSL for Soketi', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false\n                    }', 'checkbox', 60, 'Websockets'),
(275, 'compliance.admin_approved_posts_limit', 'Admin pre-approved posts limit', '0', '\n                        {\n\"description\" : \"The number of posts that needs admin approval. After this number of posts has been reached, the creator can post freely (value = 0 means no limit).\"\n}', 'text', 1180, 'Compliance'),
(276, 'compliance.minimum_posts_until_creator', 'Required number of posts to be able to receive payments', '0', '{\n                        \"description\": \"Set a minimum number of posts for users to be able to earn money. Users won`t be able to receive money until they reach this limit (value = 0 means no limit).\"\n                        }', 'text', 1170, 'Compliance'),
(277, 'compliance.minimum_posts_deletion_limit', 'Deletion minimum posts limit', '0', '{\n                        \"description\": \"Set a minimum posts deletion limit for creators. Enforce them to have a minimum number of posts on their accounts (value = 0 means no limit).\"\n                        }', 'text', 1190, 'Compliance'),
(278, 'compliance.monthly_posts_before_inactive', 'Monthly posts required to keep account active', '0', '\n                        {\n\"description\" : \"The minimum monthly posts number a creator must publish before having his account marked as inactive. If value = 0, no inactivity rule will be applied.\"\n}', 'text', 1170, 'Compliance'),
(279, 'compliance.disable_creators_ppv_delete', 'Disable creators ability to delete purchased PPV content', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"If enabled, creators won\'t be able to delete paid PPV content (paid posts/messages) if already paid by a customer.\"\n                    }', 'checkbox', 1190, 'Compliance'),
(280, 'payments.stripe_oxxo_provider_enabled', 'Allow OXXO', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Allow OXXO payment provider through Stripe. This will be shown as different option in checkout\"\n                        }', 'checkbox', 100, 'Payments'),
(281, 'payments.min_ppv_content_price', 'Min PPV content price', '1', '{\n                        \"description\": \"Applies to paid posts, messages and streams.\"\n                        }', 'text', 100, 'Payments'),
(282, 'payments.max_ppv_content_price', 'Max PPV content price', '500', '{\n                        \"description\": \"Applies to paid posts, messages and streams.\"\n                        }', 'text', 110, 'Payments'),
(283, 'social-media.reddit_url', 'Reddit', '', NULL, 'text', 90, 'Social media'),
(284, 'media.enable_ffmpeg', 'Enable FFmpeg', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"If disabled, FFmpeg won\'t convert any videos, only mp4 videos will be allowed for upload.\"\n                        }', 'checkbox', 5, 'Media'),
(285, 'admin.send_notifications_on_contact', 'Admin notifications for contact messages', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"If enabled, the admin users will receive an email with the contents of the contact message.\"\n                        }', 'checkbox', 6, 'Admin'),
(286, 'site.hide_create_post_menu', 'Hide create post menu', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"If enabled, the create post module link will be hidden from the menus. Useful if running the site on one-creator mode.\"\n                        }', 'checkbox', 185, 'Site'),
(287, 'feed.hide_suggestions_slider', 'Hide the users suggestion box', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"If enabled, the users suggestion slider will be hidden from the feed page.\"\n                        }', 'checkbox', 35, 'Feed'),
(288, 'site.default_og_image', 'Default site og:image', '', '{\"description\" : \"The image to be used when sharing the site over social media sites.\"}', 'file', 65, 'Site'),
(289, 'profiles.enable_new_post_notification_setting', 'Enable new post notification setting', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"If enabled, subscribers will be allowed to manage their (new) posts email notifications, while creators can choose to notify them or not, when creating new posts.\"\n                    }', 'checkbox', 100, 'Profiles'),
(290, 'profiles.default_new_post_notification_setting', 'Default new post notification setting on user register', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"The default value for whether the user should receive emails when new content has been posted.\"\n                    }', 'checkbox', 110, 'Profiles'),
(291, 'security.enforce_email_valid_check', 'Enforce email deliverability check on register', NULL, '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : false,\n\"description\": \"If enabled, the emails used for signing up, are checked to see if they\'re valid ones.\"\n}', 'checkbox', 83, 'Security'),
(292, 'security.email_abstract_api_key', 'Email Validation API key (Abstract API)', '', NULL, 'text', 84, 'Security'),
(293, 'ai.open_ai_enabled', 'OpenAI Enabled', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Allow creators to use OpenAI to suggest a post or a profile description\"\n                        }', 'checkbox', 10, 'AI'),
(294, 'ai.open_ai_api_key', 'OpenAI Api Key', '', NULL, 'text', 20, 'AI'),
(295, 'ai.open_ai_completion_max_tokens', 'OpenAI Max Tokens', '100', '{\n                        \"description\": \"Dictates how long the suggestion should be. E.g. 1000 tokens is about 750 words. (shouldn`t exceed 2048 tokens)\"\n                    }', 'text', 30, 'AI'),
(296, 'ai.open_ai_completion_temperature', 'OpenAI Temperature', '1', '{\n                        \"description\": \"What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic.\"\n                    }', 'text', 40, 'AI'),
(297, 'feed.post_box_max_height', 'Post box max media height', '', '{\"description\" : \"Pixel value of maximum posts media height. EG: 450. If value is present, images and videos within post boxes will be cropped/adjusted to that max value when not in full screen.\"}', 'text', 4, 'Feed'),
(298, 'feed.allow_post_scheduling', 'Allow post scheduling', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Having this set to ON, will allow users to create posts with release & expiry dates.\"\n                        }', 'checkbox', 5, 'Feed'),
(299, 'payments.ccbill_skip_subaccount_from_cancellations', 'CCBill skip subaccount from cancellations', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Only use this if CCBill instructed you to do so. This is only required for rare CCBill accounts, users were required to skip providing their sub account during cancellation requests.\"\n                        }', 'checkbox', 35, 'Payments'),
(300, 'referrals.disable_for_non_verified', 'Disable referral system for non ID-checked users', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\" : \"If this option is enabled, the referral system will only be available to ID-verified users.\"\n                        }', 'checkbox', 1250, 'Referrals'),
(301, 'profiles.hide_non_verified_users_from_search', 'Hide non ID-verified users from the search page', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\" : \"If this option is enabled, non ID-verified users will not be shown on the search page.\"\n                        }', 'checkbox', 120, 'Profiles'),
(302, 'profiles.disable_website_link_on_profile', 'Disable website link from profile pages', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\" : \"If this option is enabled, website links won\'t be shown in the profile section.\"\n                        }', 'checkbox', 130, 'Profiles'),
(303, 'feed.enable_post_description_excerpts', 'Enable post description excerpts', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\" : \"If this option is enabled, a \'Show more\' label is shown for posts with descriptions larger than a line.\"\n                        }', 'checkbox', 5, 'Feed'),
(304, 'referrals.auto_follow_the_user', 'Auto-follow the user that have referred the newly register account', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\" : \"If this option is enabled, the newly created accounts will auto-follow the user that have referred them.\"\n                        }', 'checkbox', 1255, 'Referrals'),
(305, 'site.use_browser_language_if_available', 'Use preferred browser locale, if available', '1', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\" : \"If this option is enabled, if the user browser locale is available as a language, that will be used by default.\"\n                    }', 'checkbox', 125, 'Site'),
(306, 'storage.pushr_access_key', 'Pushr Access Key', '', NULL, 'text', 130, 'Storage'),
(307, 'storage.pushr_secret_key', 'Pushr Secret Key', '', NULL, 'text', 140, 'Storage'),
(308, 'storage.pushr_cdn_hostname', 'Pushr CDN Hostname', '', '{\n                        \"description\" : \"This field must contain the https:// prefix.\"\n                        }', 'text', 180, 'Storage'),
(309, 'storage.pushr_bucket_name', 'Pushr Bucket', '', NULL, 'text', 160, 'Storage'),
(310, 'storage.pushr_endpoint', 'Pushr S3 Endpoint', '', NULL, 'text', 170, 'Storage');
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(311, 'payments.offline_payments_custom_message_box', 'Offline payments details box', '', '{\"description\":\"This field can be used to add a custom info box, where users can be informed on any alternative offline payments you may accept.\"}', 'code_editor', 100, 'Payments'),
(312, 'payments.offline_payments_make_notes_field_mandatory', 'Make the notes field mandatory', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false\n                        }', 'checkbox', 110, 'Payments'),
(313, 'payments.offline_payments_minimum_attachments_required', 'Minimum file attachments required', '1', NULL, 'text', 120, 'Payments');

-- --------------------------------------------------------

--
-- Table structure for table `streams`
--

CREATE TABLE `streams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `poster` varchar(191) DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `requires_subscription` tinyint(1) DEFAULT 0,
  `sent_expiring_reminder` tinyint(1) DEFAULT 0,
  `is_public` tinyint(1) DEFAULT 1,
  `pushr_id` bigint(20) UNSIGNED NOT NULL,
  `rtmp_key` varchar(191) DEFAULT NULL,
  `rtmp_server` varchar(191) DEFAULT NULL,
  `hls_link` varchar(191) DEFAULT NULL,
  `vod_link` varchar(191) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stream_messages`
--

CREATE TABLE `stream_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `stream_id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_user_id` bigint(20) UNSIGNED NOT NULL,
  `recipient_user_id` bigint(20) UNSIGNED NOT NULL,
  `paypal_agreement_id` varchar(191) DEFAULT NULL,
  `stripe_subscription_id` varchar(191) DEFAULT NULL,
  `paypal_plan_id` varchar(191) DEFAULT NULL,
  `ccbill_subscription_id` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `provider` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `canceled_at` datetime DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `percentage` double(8,2) NOT NULL,
  `type` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_user_id` bigint(20) UNSIGNED NOT NULL,
  `recipient_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subscription_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stream_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_message_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stripe_transaction_id` varchar(191) DEFAULT NULL,
  `stripe_session_id` varchar(191) DEFAULT NULL,
  `paypal_transaction_id` varchar(191) DEFAULT NULL,
  `paypal_transaction_token` varchar(191) DEFAULT NULL,
  `coinbase_charge_id` varchar(191) DEFAULT NULL,
  `coinbase_transaction_token` varchar(191) DEFAULT NULL,
  `nowpayments_payment_id` varchar(191) DEFAULT NULL,
  `nowpayments_order_id` varchar(191) DEFAULT NULL,
  `ccbill_payment_token` varchar(191) DEFAULT NULL,
  `ccbill_transaction_id` varchar(191) DEFAULT NULL,
  `ccbill_subscription_id` varchar(191) DEFAULT NULL,
  `paystack_payment_token` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `payment_provider` varchar(191) NOT NULL,
  `currency` varchar(191) NOT NULL,
  `paypal_payer_id` varchar(191) DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `taxes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) NOT NULL,
  `column_name` varchar(191) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `username` varchar(191) NOT NULL,
  `referral_code` varchar(191) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `cover` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `identity_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `gender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gender_pronoun` varchar(191) DEFAULT NULL,
  `public_profile` tinyint(1) NOT NULL DEFAULT 1,
  `paid_profile` tinyint(1) NOT NULL DEFAULT 1,
  `profile_access_price` double(8,2) NOT NULL DEFAULT 5.00,
  `profile_access_price_6_months` double DEFAULT 5,
  `profile_access_price_3_months` double(8,2) DEFAULT 5.00,
  `profile_access_price_12_months` double DEFAULT 5,
  `billing_address` varchar(191) DEFAULT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `postcode` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `auth_provider` varchar(191) DEFAULT NULL,
  `auth_provider_id` varchar(191) DEFAULT NULL,
  `enable_2fa` tinyint(1) DEFAULT NULL,
  `enable_geoblocking` tinyint(1) DEFAULT NULL,
  `open_profile` tinyint(1) DEFAULT 0,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `username`, `referral_code`, `bio`, `birthdate`, `location`, `website`, `avatar`, `cover`, `email_verified_at`, `identity_verified_at`, `password`, `gender_id`, `gender_pronoun`, `public_profile`, `paid_profile`, `profile_access_price`, `profile_access_price_6_months`, `profile_access_price_3_months`, `profile_access_price_12_months`, `billing_address`, `first_name`, `last_name`, `city`, `country`, `state`, `postcode`, `remember_token`, `auth_provider`, `auth_provider_id`, `enable_2fa`, `enable_geoblocking`, `open_profile`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'shakeel2717@gmail.com', 'u1697988185', 'DDW0KWN1', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-22 10:23:05', NULL, '$2y$10$kkMxX7f7vL9pf.Ermmm/nep25mgvx8sJQTttE9oyiW.1Tm5HvnkM2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2023-10-22 10:23:05', '2023-10-22 10:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_bookmarks`
--

CREATE TABLE `user_bookmarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_codes`
--

CREATE TABLE `user_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_devices`
--

CREATE TABLE `user_devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(191) NOT NULL,
  `agent` text DEFAULT NULL,
  `signature` varchar(191) NOT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_genders`
--

CREATE TABLE `user_genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gender_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_genders`
--

INSERT INTO `user_genders` (`id`, `gender_name`, `created_at`, `updated_at`) VALUES
(1, 'Male', NULL, NULL),
(2, 'Female', NULL, NULL),
(3, 'Couple', NULL, NULL),
(4, 'Other', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_lists`
--

CREATE TABLE `user_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'custom',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_lists`
--

INSERT INTO `user_lists` (`id`, `name`, `user_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Following', 1, 'following', '2023-10-22 10:23:06', '2023-10-22 10:23:06'),
(2, 'Blocked', 1, 'blocked', '2023-10-22 10:23:06', '2023-10-22 10:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_list_members`
--

CREATE TABLE `user_list_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `list_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `replyTo` int(11) NOT NULL DEFAULT 0,
  `message` longtext DEFAULT NULL,
  `isSeen` tinyint(1) NOT NULL DEFAULT 0,
  `price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_reports`
--

CREATE TABLE `user_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_verifies`
--

CREATE TABLE `user_verifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `files` text DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'pending',
  `rejectionReason` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `total`, `created_at`, `updated_at`) VALUES
('acba21c913824f6eb0c0605fb7089fce', 1, 0.00, '2023-10-22 10:23:06', '2023-10-22 10:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `status` varchar(191) NOT NULL,
  `message` text DEFAULT NULL,
  `fee` double(8,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT 0,
  `payment_method` varchar(191) DEFAULT NULL,
  `payment_identifier` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachments_user_id_foreign` (`user_id`),
  ADD KEY `attachments_post_id_foreign` (`post_id`),
  ADD KEY `attachments_message_id_foreign` (`message_id`),
  ADD KEY `attachments_type_index` (`type`),
  ADD KEY `attachments_payment_request_id_foreign` (`payment_request_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_messages_email_index` (`email`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_name_unique` (`name`),
  ADD KEY `countries_country_code_index` (`country_code`),
  ADD KEY `countries_phone_code_index` (`phone_code`);

--
-- Indexes for table `country_taxes`
--
ALTER TABLE `country_taxes`
  ADD KEY `country_taxes_tax_id_foreign` (`tax_id`),
  ADD KEY `country_taxes_country_id_foreign` (`country_id`);

--
-- Indexes for table `creator_offers`
--
ALTER TABLE `creator_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creator_offers_user_id_foreign` (`user_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_users`
--
ALTER TABLE `featured_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `featured_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoices_invoice_id_unique` (`invoice_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_from_user_id_foreign` (`from_user_id`),
  ADD KEY `notifications_to_user_id_foreign` (`to_user_id`),
  ADD KEY `notifications_post_id_foreign` (`post_id`),
  ADD KEY `notifications_post_comment_id_foreign` (`post_comment_id`),
  ADD KEY `notifications_subscription_id_foreign` (`subscription_id`),
  ADD KEY `notifications_transaction_id_foreign` (`transaction_id`),
  ADD KEY `notifications_reaction_id_foreign` (`reaction_id`),
  ADD KEY `notifications_withdrawal_id_foreign` (`withdrawal_id`),
  ADD KEY `notifications_type_index` (`type`),
  ADD KEY `notifications_user_message_id_index` (`user_message_id`),
  ADD KEY `notifications_stream_id_foreign` (`stream_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_requests`
--
ALTER TABLE `payment_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_requests_user_id_foreign` (`user_id`),
  ADD KEY `payment_requests_transaction_id_foreign` (`transaction_id`),
  ADD KEY `payment_requests_status_index` (`status`),
  ADD KEY `payment_requests_type_index` (`type`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_status_index` (`status`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `public_pages`
--
ALTER TABLE `public_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `public_pages_slug_index` (`slug`);

--
-- Indexes for table `reactions`
--
ALTER TABLE `reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reactions_user_id_post_id_unique` (`user_id`,`post_id`),
  ADD UNIQUE KEY `reactions_user_id_post_comment_id_unique` (`user_id`,`post_comment_id`),
  ADD KEY `reactions_post_id_foreign` (`post_id`),
  ADD KEY `reactions_post_comment_id_foreign` (`post_comment_id`),
  ADD KEY `reactions_reaction_type_index` (`reaction_type`);

--
-- Indexes for table `referral_code_usages`
--
ALTER TABLE `referral_code_usages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referral_code_usages_used_by_index` (`used_by`),
  ADD KEY `referral_code_usages_referral_code_index` (`referral_code`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rewards_from_user_id_index` (`from_user_id`),
  ADD KEY `rewards_to_user_id_index` (`to_user_id`),
  ADD KEY `rewards_reward_type_index` (`reward_type`),
  ADD KEY `rewards_transaction_id_index` (`transaction_id`),
  ADD KEY `rewards_referral_code_usage_id_index` (`referral_code_usage_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `streams`
--
ALTER TABLE `streams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `streams_pushr_id_unique` (`pushr_id`),
  ADD KEY `streams_user_id_foreign` (`user_id`),
  ADD KEY `streams_status_index` (`status`),
  ADD KEY `streams_slug_index` (`slug`),
  ADD KEY `streams_is_public_index` (`is_public`),
  ADD KEY `streams_requires_subscription_index` (`requires_subscription`);

--
-- Indexes for table `stream_messages`
--
ALTER TABLE `stream_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stream_messages_user_id_foreign` (`user_id`),
  ADD KEY `stream_messages_stream_id_foreign` (`stream_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_paypal_agreement_id_index` (`paypal_agreement_id`),
  ADD KEY `subscriptions_stripe_subscription_id_index` (`stripe_subscription_id`),
  ADD KEY `subscriptions_type_index` (`type`),
  ADD KEY `subscriptions_provider_index` (`provider`),
  ADD KEY `subscriptions_status_index` (`status`),
  ADD KEY `subscriptions_sender_user_id_foreign` (`sender_user_id`),
  ADD KEY `subscriptions_recipient_user_id_foreign` (`recipient_user_id`),
  ADD KEY `subscriptions_paypal_plan_id_index` (`paypal_plan_id`),
  ADD KEY `subscriptions_ccbill_subscription_id_index` (`ccbill_subscription_id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_sender_user_id_foreign` (`sender_user_id`),
  ADD KEY `transactions_recipient_user_id_foreign` (`recipient_user_id`),
  ADD KEY `transactions_subscription_id_foreign` (`subscription_id`),
  ADD KEY `transactions_post_id_foreign` (`post_id`),
  ADD KEY `transactions_stream_id_foreign` (`stream_id`),
  ADD KEY `transactions_stripe_transaction_id_index` (`stripe_transaction_id`),
  ADD KEY `transactions_stripe_session_id_index` (`stripe_session_id`),
  ADD KEY `transactions_paypal_payer_id_index` (`paypal_payer_id`),
  ADD KEY `transactions_paypal_transaction_id_index` (`paypal_transaction_id`),
  ADD KEY `transactions_paypal_transaction_token_index` (`paypal_transaction_token`),
  ADD KEY `transactions_coinbase_charge_id_index` (`coinbase_charge_id`),
  ADD KEY `transactions_coinbase_transaction_token_index` (`coinbase_transaction_token`),
  ADD KEY `transactions_nowpayments_payment_id_index` (`nowpayments_payment_id`),
  ADD KEY `transactions_nowpayments_order_id_index` (`nowpayments_order_id`),
  ADD KEY `transactions_ccbill_payment_token_index` (`ccbill_payment_token`),
  ADD KEY `transactions_ccbill_transaction_id_index` (`ccbill_transaction_id`),
  ADD KEY `transactions_ccbill_subscription_id_index` (`ccbill_subscription_id`),
  ADD KEY `transactions_status_index` (`status`),
  ADD KEY `transactions_type_index` (`type`),
  ADD KEY `transactions_invoice_id_foreign` (`invoice_id`),
  ADD KEY `transactions_paystack_payment_token_index` (`paystack_payment_token`),
  ADD KEY `transactions_user_message_id_foreign` (`user_message_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_referral_code_unique` (`referral_code`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_auth_provider_index` (`auth_provider`),
  ADD KEY `users_auth_provider_id_index` (`auth_provider_id`),
  ADD KEY `users_gender_id_foreign` (`gender_id`),
  ADD KEY `users_birthdate_index` (`birthdate`),
  ADD KEY `users_location_index` (`location`),
  ADD KEY `users_enable_2fa_index` (`enable_2fa`),
  ADD KEY `users_enable_geoblocking_index` (`enable_geoblocking`),
  ADD KEY `users_open_profile_index` (`open_profile`);

--
-- Indexes for table `user_bookmarks`
--
ALTER TABLE `user_bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_bookmarks_user_id_foreign` (`user_id`),
  ADD KEY `user_bookmarks_post_id_foreign` (`post_id`);

--
-- Indexes for table `user_codes`
--
ALTER TABLE `user_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_codes_user_id_foreign` (`user_id`),
  ADD KEY `user_codes_code_index` (`code`);

--
-- Indexes for table `user_devices`
--
ALTER TABLE `user_devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_devices_user_id_foreign` (`user_id`),
  ADD KEY `user_devices_signature_index` (`signature`);

--
-- Indexes for table `user_genders`
--
ALTER TABLE `user_genders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_genders_gender_name_index` (`gender_name`);

--
-- Indexes for table `user_lists`
--
ALTER TABLE `user_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_lists_user_id_foreign` (`user_id`),
  ADD KEY `user_lists_type_index` (`type`);

--
-- Indexes for table `user_list_members`
--
ALTER TABLE `user_list_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `list_id_user_id` (`list_id`,`user_id`),
  ADD KEY `user_list_members_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_messages_sender_id_foreign` (`sender_id`),
  ADD KEY `user_messages_receiver_id_foreign` (`receiver_id`),
  ADD KEY `user_messages_isseen_index` (`isSeen`);

--
-- Indexes for table `user_reports`
--
ALTER TABLE `user_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_reports_from_user_id_foreign` (`from_user_id`),
  ADD KEY `user_reports_post_id_index` (`post_id`),
  ADD KEY `user_reports_type_index` (`type`),
  ADD KEY `user_reports_status_index` (`status`),
  ADD KEY `user_reports_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `user_verifies`
--
ALTER TABLE `user_verifies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_verifies_user_id_foreign` (`user_id`),
  ADD KEY `user_verifies_status_index` (`status`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdrawals_user_id_foreign` (`user_id`),
  ADD KEY `withdrawals_status_index` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `creator_offers`
--
ALTER TABLE `creator_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featured_users`
--
ALTER TABLE `featured_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `payment_requests`
--
ALTER TABLE `payment_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `public_pages`
--
ALTER TABLE `public_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reactions`
--
ALTER TABLE `reactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_code_usages`
--
ALTER TABLE `referral_code_usages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `streams`
--
ALTER TABLE `streams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stream_messages`
--
ALTER TABLE `stream_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_bookmarks`
--
ALTER TABLE `user_bookmarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_codes`
--
ALTER TABLE `user_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_devices`
--
ALTER TABLE `user_devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_genders`
--
ALTER TABLE `user_genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_lists`
--
ALTER TABLE `user_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_list_members`
--
ALTER TABLE `user_list_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_reports`
--
ALTER TABLE `user_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_verifies`
--
ALTER TABLE `user_verifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_message_id_foreign` FOREIGN KEY (`message_id`) REFERENCES `user_messages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attachments_payment_request_id_foreign` FOREIGN KEY (`payment_request_id`) REFERENCES `payment_requests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attachments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attachments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `country_taxes`
--
ALTER TABLE `country_taxes`
  ADD CONSTRAINT `country_taxes_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `country_taxes_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `creator_offers`
--
ALTER TABLE `creator_offers`
  ADD CONSTRAINT `creator_offers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `featured_users`
--
ALTER TABLE `featured_users`
  ADD CONSTRAINT `featured_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `1` FOREIGN KEY (`user_message_id`) REFERENCES `user_messages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_post_comment_id_foreign` FOREIGN KEY (`post_comment_id`) REFERENCES `post_comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_reaction_id_foreign` FOREIGN KEY (`reaction_id`) REFERENCES `reactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_stream_id_foreign` FOREIGN KEY (`stream_id`) REFERENCES `streams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_to_user_id_foreign` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_withdrawal_id_foreign` FOREIGN KEY (`withdrawal_id`) REFERENCES `withdrawals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_requests`
--
ALTER TABLE `payment_requests`
  ADD CONSTRAINT `payment_requests_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reactions`
--
ALTER TABLE `reactions`
  ADD CONSTRAINT `reactions_post_comment_id_foreign` FOREIGN KEY (`post_comment_id`) REFERENCES `post_comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reactions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `referral_code_usages`
--
ALTER TABLE `referral_code_usages`
  ADD CONSTRAINT `referral_code_usages_used_by_foreign` FOREIGN KEY (`used_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rewards`
--
ALTER TABLE `rewards`
  ADD CONSTRAINT `rewards_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rewards_referral_code_usage_id_foreign` FOREIGN KEY (`referral_code_usage_id`) REFERENCES `referral_code_usages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rewards_to_user_id_foreign` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rewards_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `streams`
--
ALTER TABLE `streams`
  ADD CONSTRAINT `streams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stream_messages`
--
ALTER TABLE `stream_messages`
  ADD CONSTRAINT `stream_messages_stream_id_foreign` FOREIGN KEY (`stream_id`) REFERENCES `streams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stream_messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_recipient_user_id_foreign` FOREIGN KEY (`recipient_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriptions_sender_user_id_foreign` FOREIGN KEY (`sender_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `transactions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_recipient_user_id_foreign` FOREIGN KEY (`recipient_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_sender_user_id_foreign` FOREIGN KEY (`sender_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_stream_id_foreign` FOREIGN KEY (`stream_id`) REFERENCES `streams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_message_id_foreign` FOREIGN KEY (`user_message_id`) REFERENCES `user_messages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `user_genders` (`id`),
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_bookmarks`
--
ALTER TABLE `user_bookmarks`
  ADD CONSTRAINT `user_bookmarks_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_bookmarks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_codes`
--
ALTER TABLE `user_codes`
  ADD CONSTRAINT `user_codes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_devices`
--
ALTER TABLE `user_devices`
  ADD CONSTRAINT `user_devices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_lists`
--
ALTER TABLE `user_lists`
  ADD CONSTRAINT `user_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_list_members`
--
ALTER TABLE `user_list_members`
  ADD CONSTRAINT `user_list_members_list_id_foreign` FOREIGN KEY (`list_id`) REFERENCES `user_lists` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_list_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD CONSTRAINT `user_messages_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_reports`
--
ALTER TABLE `user_reports`
  ADD CONSTRAINT `user_reports_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_verifies`
--
ALTER TABLE `user_verifies`
  ADD CONSTRAINT `user_verifies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD CONSTRAINT `withdrawals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
