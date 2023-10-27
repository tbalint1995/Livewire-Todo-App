-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2023 at 01:28 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `code4flow`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Hegedüs Cecília', 'hegeduscecilia@gmail.com', '$2y$10$ZFFeYHBty9Fq5yh6OdqA0.phazXGSaEK3O2BukqtM7uE3YemMjQUy');

-- --------------------------------------------------------

--
-- Table structure for table `cikkek`
--

CREATE TABLE `cikkek` (
  `id` int NOT NULL,
  `cim` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `rovidismerteto` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `szerzo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `tartalom` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cikkek`
--

INSERT INTO `cikkek` (`id`, `cim`, `rovidismerteto`, `szerzo`, `tartalom`) VALUES
(1, 'Túl nagy a szakadék az óvoda és az iskola között?', 'Ez egy teszt', 'Pusztai Krisztina', 'Unokaöcsém nagyon várta, hogy első osztályba mehessen, aztán hamar elmúlt a lelkesedése. Ő egyébként már majdnem 7 éves, tehát nem épphogy 6 évesen ült be a padba, mint sok másik gyerek. Pár héttel a sulikezdés után, amikor tőlem is megkapta a „hogy tetszik a suli?” kérdést, rávágta, hogy ő nem ilyennek képzelte az iskolát, vissza szeretne menni az óvodába.\r\n\r\nEzt elmeséltem Tóth Tímea gyógypedagógus, mozgásterapeuta ismerősömnek, aki korábban a nevelési tanácsadóban is dolgozott. Elkezdtünk beszélgetni, interjú lett belőle.\r\n\r\n Vajon miért múlik el sok elsősnél ilyen hamar a lelkesedés, lehet ennek köze ahhoz, hogy valaki hat vagy hét évesen kezdi az iskolát?\r\n\r\nÉn ezt nem a gyermek kora felől közelíteném meg, mert lehet egy 6 éves is érett arra, hogy tudjon figyelni, koncentrálni, és egy 7,5 évesnek is okozhat ez nehézséget, illetve a képességek alapján is lehetnek eltérések. Szerintem a gond az, hogy Magyarországon túl nagy a szakadék az óvoda és az iskola között.\r\n\r\n Ezt kifejtenéd?\r\n\r\nAmíg az óvodában játszik és szabadon mozog egy gyerek, és teszi ezt akár még augusztusban is, rá pár hétre már az iskolában kell ülnie. Nemcsak arról van szó, hogy a képességei alapján meg tud-e küzdeni a tanulással, hanem a bioritmusa is teljesen máshogy kell, hogy működjön.\r\n\r\nAz óvodában még délutáni alvás van, vagy legalábbis pihenő. Nagyon sokszor fél 12-kor ebédelnek, délben, negyed egykor már veszik elő a kiságyakat. Pár hét múlva pedig ugyanabban az időben még tart a negyedik vagy az ötödik órájuk.\r\n\r\nEz nagyon éles váltásnak tűnik.\r\n\r\nMert szerintem az is, persze vannak iskolák, ahol figyelnek arra, hogy legyen átmenet, de sok helyen nem. Tudok olyan intézményről, ahol már szeptember közepén össze kellett olvasniuk a gyerekeknek két betűt. A frontális oktatás-ami a legtöbb magyar iskolákban zajlik-nem segíti a kicsiket, hanem inkább hátráltatja.\r\n\r\n Ezt a tempót egy nagyon jó képességű gyereknek is nehéz tartani. Mi van a többiekkel?\r\n\r\nIgen. Az óvodapedagógusokon a nyomás, hogy készítsék fel a gyerekeket az iskolára, miközben egyre több az olyan gyermek, aki különleges figyelmet igényel. Nemcsak azok, akiknek van valamilyen diagnózisuk: SNI (speciális nevelési igényű) vagy mondjuk BTMN (beilleszkedési, tanulási, magatartási nehézséggel küzdő) hanem vannak olyanok is, akik nagyon sok energiát igényelnek.\r\n\r\nNincsen olyan óvodai csoport, és éppen ezért nem lesz olyan iskolai osztály sem, ahol nincsenek valamilyen nehézséggel küzdő gyerekek, és erre nagyon sok energia megy el. Közben pedig az a feladat, hogy a gyerekek ugyanolyan szintre fejlődjenek fel.\r\n\r\n Mondanál példát hogyan ütközhet ki, ha valakinek van valamilyen nehézsége?\r\n\r\nPéldául, ha azt mondja a tanár, hogy \"vegyétek elő a munkafüzetet, és nyissátok ki az ötödik oldalon, és a bal felső ábrával fogunk most foglalkozni\", akkor ez egy nagyon egyszerűnek tűnő mondat, gyorsan elhadarja, de ebben a mondatban számtalan buktató lehet.\r\n\r\nGondoljunk bele! Ha nem tudja végrehajtani az elsős miért nem tudta? A bal és a jobb közötti különbség okozott gondot? Nem tudja, hol van a felül, vagyis a tériránnyal van probléma? Vagy a hallási emlékezete nem megfelelő? Túl sok volt az információ egy feladatban? Tehát, olyan sok mindenen elbukhat egy ilyen utasítás alatt is, és ez csak egy példa volt.\r\n\r\n Mi lenne a megoldás?\r\n\r\nSzerintem az, ha megváltoztatnák az oktatási módszereket. Nem lehet 35 gyereket ugyanarra a tananyagra ugyanannyi idő alatt, ugyanolyan szinten megtanítani. Csak a változtatással tudnák a különbségeket elsimítani.\r\n\r\nMinden gyerek más egyéniség, más képességekkel, tehát nem is kellene, hogy ők teljesen ugyanazt tudják, nem szabad letörni a személyiségüket, de nyilván van egy alap elvárás, tanuljon meg olvasni, írni, számolni. Csoportmunkával,kooperatív tanulással, projekt munkával, differenciálassal nagyon jól lehetne ezt kezelni.\r\n\r\nEz nem azt jelenti, hogy 35 felé teljesen más feladatot adna ki a tanár, ezt lehetetlen lenne megoldani. Azonban az, hogy mondjuk három-négy felé dolgozzanak a gyerekek, már működőképes lenne. Kétségkívül nem könnyű a pedagógusoknak, hiszen nagy a feszültség jelenleg a szakmában, közben pedig a tanároknak kezelniük kell a gyerekek közötti eltéréseket. Mindenkinek különböző a képességprofilja.\r\n\r\n És az óvoda és az iskola közötti különbséget hogyan lehetne csökkenteni?\r\n\r\nKözelíteni kell, kellene egymáshoz az óvodát és az iskolát. Akár egy előkészítő évfolyamot is lehetne indítani. Ezt viszont csak olyan esetben lehet megvalósítani, ha ott az iskolában, az iskola épületében, olyan osztálytermekben történne ez a nulladik évfolyam, ami még hasonlít az óvodára. Ebből az előkészítő osztályból pedig egy olyan iskolai első osztályba kerülnének be a gyerekek, ahol nem a szokásos frontális módszerekkel történik az oktatás, hanem már az említett szisztéma szerint.\r\n\r\nLenne helye és ideje a játéknak, akkor ebédelnének, amikor az óvodában szoktak, járna a pihenőidő, lenne mesesarok, a tanórákat nem úgy szerveznék, mint egy iskolában, hanem inkább ovis módon. Persze közben fokozatosan hozzászoktatnák őket ahhoz, hogy mindenkinek ott kell lenni, figyelni kell, de lehetne ott egy trambulin, gyakrabban mehetnének ki a levegőre. Tehát vegyíteni kellene az óvodát az iskolával.\r\n\r\n Az, hogy ez a legtöbb magyar iskolában így legyen mennyire tűnik elérhetetlennek?\r\n\r\nEz nyilván nagyon nagy előkészítést igényelne, és a mai magyar iskolarendszerben megvalósíthatatlannak látom, de mint ötlet, nem tartom rossznak.\r\n\r\n Hogyan segíthetik a szülők a gyerekeket, abban, hogy könnyebb legyen nekik az óvoda és az iskola közötti váltás?\r\n\r\nA legfontosabb, hogy a pihenést, a játékot és a mozgást tegyék lehetővé nekik az iskola után, megértéssel forduljanak feléjük, folyamatosan kommunikáljanak velük és a pedagógussal is.');

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
(49, '2014_10_12_000000_create_users_table', 1),
(50, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(51, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(52, '2019_08_19_000000_create_failed_jobs_table', 1),
(53, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(54, '2023_10_14_150540_create_sessions_table', 1),
(55, '2023_10_14_153906_create_todos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
('gnTbPzPuDAyHQD7kNueLJ3u1jjswYbaqI5CW94k5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.69', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFg3cmtneDZkd3VlQXg2VzhyNVVXUzgxa3VJRHE1OWVtQmEwRUFYNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1698413234);

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `priority` int NOT NULL DEFAULT '0',
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `user_id`, `title`, `category`, `status`, `priority`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(2, 2, 'Adventure', 'Travel', 0, 0, '2023-10-11 07:24:00', '2023-10-26 07:24:00', '2023-10-26 07:24:45', '2023-10-26 07:24:45'),
(3, 1, 'Cuisine', 'Food', 0, 0, '2023-10-26 07:21:00', '2023-10-27 07:21:00', '2023-10-26 07:21:24', '2023-10-27 13:22:14'),
(4, 1, 'Tech', 'Technology', 0, 0, '2023-10-27 07:21:00', '2023-10-28 04:27:37', '2023-10-26 07:21:24', '2023-10-27 13:21:48'),
(6, 2, 'Wellness', 'Health', 0, 0, '2023-10-11 07:24:00', '2023-10-26 07:24:00', '2023-10-26 07:24:45', '2023-10-26 07:24:45');

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
(1, 'John Doe', 'random1@example.com', '2023-10-25 21:16:49', '$2y$10$26BZbkRfrgoTJ/w9uqoHruv4TWZz13uimrFzv1DnMpysg6AMz4K2e', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-25 21:15:42', '2023-10-25 21:16:49'),
(2, 'Jane Smith', 'exampleuser2@gmail.com', '2023-10-26 07:24:07', '$2y$10$kKlashLuxOqkUi4SQAyVRuW1X5cCDYuEmDRaspkRtT38tVkvBaw8i', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-26 07:23:35', '2023-10-26 07:24:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `cikkek`
--
ALTER TABLE `cikkek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todos_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cikkek`
--
ALTER TABLE `cikkek`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `todos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
