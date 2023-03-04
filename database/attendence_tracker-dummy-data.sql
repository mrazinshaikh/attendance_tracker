-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 04, 2023 at 11:54 AM
-- Server version: 8.0.32-0ubuntu0.22.04.2
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendence_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `stopIn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `description`, `stopIn`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Dormouse said--\'.', 'When the sands are all pardoned.\' \'Come, THAT\'S a good deal worse off than before, as the large birds complained that they couldn\'t get them out again. The Mock Turtle sighed deeply, and began, in a.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(2, 'I to do anything.', 'The Hatter looked at Two. Two began in a great hurry; \'this paper has just been picked up.\' \'What\'s in it?\' said the Queen. \'Well, I should be like then?\' And she went out, but it was all ridges and.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(3, 'Alice. \'Why, you.', 'I\'ll just see what was coming. It was all very well without--Maybe it\'s always pepper that makes the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(4, 'I must be off, and.', 'HER about it.\' (The jury all looked so grave that she was beginning to see the Hatter began, in a low voice, \'Why the fact is, you see, as well go back, and barking hoarsely all the first verse,\'.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(5, 'Alice could hardly.', 'So Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at the time at the Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a heap of sticks and dry leaves, and the.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(6, 'It was all ridges.', 'The Dormouse shook its head down, and was just possible it had lost something; and she dropped it hastily, just in time to go, for the accident of the singers in the pool was getting so used to read.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(7, 'Dormouse again, so.', 'Dinah my dear! I shall never get to the door, she ran out of the evening, beautiful Soup! Soup of the soldiers shouted in reply. \'That\'s right!\' shouted the Queen. \'Their heads are gone, if it.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(8, 'Hatter. \'It isn\'t.', 'Do you think, at your age, it is right?\' \'In my youth,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, \'I\'ve often seen them so often, of course was, how to get hold of its right.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(9, 'I\'ll go round and.', 'Dormouse was sitting on the glass table as before, \'It\'s all his fancy, that: he hasn\'t got no business of MINE.\' The Queen smiled and passed on. \'Who ARE you doing out here? Run home this moment.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(10, 'Mouse was swimming.', 'Alice looked round, eager to see if she meant to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Of course it is,\' said the Caterpillar. \'Well, I should like to show you! A little.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(11, 'Queen?\' said the.', 'Alice caught the flamingo and brought it back, the fight was over, and she went back to the Mock Turtle, and to hear his history. I must have been changed in the beautiful garden, among the distant.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(12, 'He says it kills.', 'Duchess, who seemed to be found: all she could not even room for this, and she felt that she was in confusion, getting the Dormouse went on, \'--likely to win, that it\'s hardly worth while finishing.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(13, 'CHORUS. (In which.', 'Alice began, in a very grave voice, \'until all the creatures wouldn\'t be in a melancholy way, being quite unable to move. She soon got it out to sea!\" But the insolence of his teacup instead of the.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(14, 'In another moment.', 'Caterpillar. Alice folded her hands, and began:-- \'You are old,\' said the King say in a twinkling! Half-past one, time for dinner!\' (\'I only wish people knew that: then they wouldn\'t be so easily.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(15, 'Then it got down.', 'Alice, \'or perhaps they won\'t walk the way down one side and then sat upon it.) \'I\'m glad I\'ve seen that done,\' thought Alice. \'I\'ve tried the roots of trees, and I\'ve tried banks, and I\'ve tried.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(16, 'Mock Turtle, and.', 'Tell us all about for some way, and nothing seems to suit them!\' \'I haven\'t the slightest idea,\' said the Queen ordering off her unfortunate guests to execution--once more the pig-baby was sneezing.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(17, 'No, I\'ve made up.', 'Gryphon. \'Turn a somersault in the last words out loud, and the pair of white kid gloves: she took courage, and went to the Queen. \'It proves nothing of tumbling down stairs! How brave they\'ll all.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(18, 'Rabbit came up to.', 'Alice. \'I wonder how many hours a day did you ever see such a thing as a last resource, she put one arm out of his pocket, and pulled out a history of the house if it had finished this short speech.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(19, 'Alice, as she had.', 'CHAPTER V. Advice from a Caterpillar The Caterpillar and Alice was very nearly carried it off. * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(20, 'ARE you doing out.', 'So they began running about in all my life!\' Just as she spoke; \'either you or your head must be kind to them,\' thought Alice, as she went on. \'I do,\' Alice said nothing; she had found her head.', NULL, 1, '2022-12-24 05:39:56', '2022-12-24 05:39:56'),
(21, 'Mia Lawson', 'Molestiae doloremque', '13', 1, '2022-12-31 07:03:09', '2022-12-31 07:03:09'),
(22, 'Eliana Barker', 'Consequuntur elit b', '90', 1, '2022-12-31 07:19:46', '2022-12-31 07:19:46'),
(23, 'Rebekah Reid', 'Et culpa ab facere e', '37', 1, '2022-12-31 07:21:39', '2022-12-31 07:21:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` bigint UNSIGNED NOT NULL,
  `class_id` bigint UNSIGNED NOT NULL,
  `start_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_time` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `class_id`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-12-20 20:34:36', '2022-12-20 22:40:00', '2022-12-20 15:04:36', '2022-12-24 08:28:24'),
(2, 1, '2022-12-20 20:34:39', '2022-12-20 20:34:40', '2022-12-20 15:04:39', '2022-12-20 15:04:40'),
(3, 1, '2022-12-22 19:18:03', '2022-12-22 19:53:29', '2022-12-22 13:48:03', '2022-12-22 14:23:29'),
(4, 1, '2022-12-22 19:53:30', '2022-12-22 19:53:31', '2022-12-22 14:23:30', '2022-12-22 14:23:31'),
(5, 1, '2022-12-22 19:53:32', '2022-12-22 19:53:33', '2022-12-22 14:23:32', '2022-12-22 14:23:33'),
(6, 1, '2022-12-22 19:53:34', '2022-12-22 19:53:34', '2022-12-22 14:23:34', '2022-12-22 14:23:34'),
(7, 1, '2022-12-22 19:53:38', '2022-12-22 19:53:39', '2022-12-22 14:23:38', '2022-12-22 14:23:39'),
(8, 1, '2022-12-22 19:53:40', '2022-12-22 19:53:41', '2022-12-22 14:23:40', '2022-12-22 14:23:41'),
(9, 1, '2022-12-22 19:53:42', '2022-12-22 19:53:42', '2022-12-22 14:23:42', '2022-12-22 14:23:42'),
(10, 1, '2022-12-22 19:53:43', '2022-12-22 19:53:44', '2022-12-22 14:23:43', '2022-12-22 14:23:44'),
(11, 1, '2022-12-22 19:53:49', '2022-12-24 11:30:35', '2022-12-22 14:23:49', '2022-12-24 06:00:35'),
(12, 1, '2022-12-24 11:30:36', '2022-12-24 11:30:36', '2022-12-24 06:00:36', '2022-12-24 06:00:36'),
(13, 1, '2022-12-24 11:30:37', '2022-12-24 11:30:37', '2022-12-24 06:00:37', '2022-12-24 06:00:37'),
(14, 1, '2022-12-24 11:30:37', '2022-12-24 11:30:38', '2022-12-24 06:00:37', '2022-12-24 06:00:38'),
(15, 1, '2022-12-24 11:30:42', '2023-02-18 12:27:03', '2022-12-24 06:00:42', '2023-02-18 06:57:03'),
(16, 2, '2022-12-25 12:50:27', '2022-12-25 12:50:29', '2022-12-25 07:20:27', '2022-12-25 07:20:29'),
(17, 1, '2023-03-04 11:49:00', NULL, '2023-03-04 06:19:00', '2023-03-04 06:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_12_17_091041_create_sessions_table', 1),
(8, '2022_12_17_125619_create_logs_table', 1),
(9, '2022_12_17_125231_create_classes_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Test1', '70b8f1a55dcd9097e7a05e92e57f40f57887846473514b0c3de4cbe32b816c8f', '[\"read\",\"update\",\"create\",\"delete\"]', '2022-12-18 13:37:18', NULL, '2022-12-18 13:35:10', '2022-12-18 13:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('bsw412bw3iyUbpOhiZQoI1O0Ok9b2V1c6XBOyrNf', 1, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-G955U Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Mobile Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoicXNWbklYMzdNNENvVkpwbEdzY3FSaFBJYk94RGVONmlkVlBaVzg0ayI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI5OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvP3BhZ2U9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkLzhxV0lKTzV5MGNWVU0xZ3dZMlZsTzF1d3pFelRMY0RRdEtHb2lXaTNaM1BkYmhtN1Z5RVMiO30=', 1676706221),
('Ns9p0PkAT02hYohrkDjvzEU5NFjD7N7vFzN5sx55', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo4OntzOjM6InVybCI7YTowOnt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJfdG9rZW4iO3M6NDA6IktZZlRoMWV5SXFlT29vTUFYdUR4bEdENmtDYU9YbERnU1hTYTNXd2YiO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkLzhxV0lKTzV5MGNWVU0xZ3dZMlZsTzF1d3pFelRMY0RRdEtHb2lXaTNaM1BkYmhtN1Z5RVMiO3M6MTk6InR3b19mYWN0b3JfZW1wdHlfYXQiO2k6MTY3MTk1MjUxNjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL3RyYWNrZXIuc2l0ZSI7fXM6NToiZmxhc2giO2E6MDp7fX0=', 1677910165),
('sASEfW75R8YXTaSp4D89GBYzd9ZAregMXsnWOcDm', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiRmR3elVkSG9jUWowVjBnZkJDdklLdmhabVVLU2V0czZuRXlrSGJqOCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJC84cVdJSk81eTBjVlVNMWd3WTJWbE8xdXd6RXpUTGNEUXRLR29pV2kzWjNQZGJobTdWeUVTIjtzOjE5OiJ0d29fZmFjdG9yX2VtcHR5X2F0IjtpOjE2Nzc5MTA4MjA7czo1OiJmbGFzaCI7YTowOnt9fQ==', 1677910826),
('TOe26jZRO35xEzG1aNSAwcw5HjtyQdTQngTO8a60', 1, '192.168.1.98', 'Mozilla/5.0 (Linux; Android 13; RMX3371) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiS1oyVWdlN1RpVjhFOHFEd2xrY1dGaUJlQVh3VHVnM0x4V2UwdWlXeSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMyOiJodHRwOi8vMTkyLjE2OC4xLjE3OjgwMDAvP3BhZ2U9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkLzhxV0lKTzV5MGNWVU0xZ3dZMlZsTzF1d3pFelRMY0RRdEtHb2lXaTNaM1BkYmhtN1Z5RVMiO30=', 1676703958);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Razin Shaikh', 'razinshaikh8732@gmail.com', NULL, '$2y$10$/8qWIJO5y0cVUM1gwY2VlO1uwzEzTLcDQtKGoiWi3Z3Pdbhm7VyES', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-18 07:48:40', '2022-12-25 07:15:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classes_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logs_class_id_foreign` (`class_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
