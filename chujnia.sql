-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 28, 2024 at 10:59 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lekarze`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `dateTime` datetime NOT NULL,
  `description` text DEFAULT NULL,
  `recommendations` text DEFAULT NULL,
  `status` enum('upcoming','history') NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `doctor_id`, `doctor_name`, `date`, `time`, `dateTime`, `description`, `recommendations`, `status`, `user_id`) VALUES
(1, 234567, 'Anna Nowak', '2024-06-28', '20:45:00', '2024-06-28 20:45:00', '', '', 'upcoming', 0),
(2, 234567, 'Anna Nowak', '2024-06-30', '19:45:00', '2024-06-30 19:45:00', '', '', 'upcoming', 1),
(3, 345678, 'Piotr Wiśniewski', '2024-06-04', '15:45:00', '2024-06-04 15:45:00', '', '', 'history', 1),
(4, 123456, 'Jan Kowalski', '2024-06-28', '18:00:00', '2024-06-28 18:00:00', '', '', 'upcoming', 1),
(5, 345678, 'Piotr Wiśniewski', '2024-03-14', '17:15:00', '2024-03-14 17:15:00', '', '', 'history', 7),
(6, 456789, 'Katarzyna Kamińska', '2024-06-30', '17:15:00', '2024-06-30 17:15:00', '', '', 'upcoming', 1),
(7, 456789, 'Katarzyna Kamińska', '2024-06-13', '17:15:00', '2024-06-13 17:15:00', '', '', 'history', 1),
(8, 890127, 'Izabela Kozłowska', '2024-06-04', '17:15:00', '2024-06-04 17:15:00', '', '', 'history', 1),
(9, 345672, 'Paweł Krawczyk', '2024-07-25', '20:15:00', '2024-07-25 20:15:00', '', '', 'upcoming', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Kardiologia'),
(2, 'Chirurgia'),
(3, 'Neurologia'),
(4, 'Pediatria'),
(5, 'Dermatologia'),
(6, 'Kardiologia'),
(7, 'Chirurgia'),
(8, 'Neurologia'),
(9, 'Pediatria'),
(10, 'Dermatologia'),
(11, 'Kardiologia'),
(12, 'Chirurgia'),
(13, 'Neurologia'),
(14, 'Pediatria'),
(15, 'Dermatologia'),
(16, 'Kardiologia'),
(17, 'Chirurgia'),
(18, 'Neurologia'),
(19, 'Pediatria'),
(20, 'Dermatologia'),
(21, 'Kardiologia'),
(22, 'Chirurgia'),
(23, 'Neurologia'),
(24, 'Pediatria'),
(25, 'Dermatologia'),
(26, 'Kardiologia'),
(27, 'Chirurgia'),
(28, 'Neurologia'),
(29, 'Pediatria'),
(30, 'Dermatologia'),
(31, 'Kardiologia'),
(32, 'Chirurgia'),
(33, 'Neurologia'),
(34, 'Pediatria'),
(35, 'Dermatologia'),
(36, 'Kardiologia'),
(37, 'Chirurgia'),
(38, 'Neurologia'),
(39, 'Pediatria'),
(40, 'Dermatologia'),
(41, 'Kardiologia'),
(42, 'Chirurgia'),
(43, 'Neurologia'),
(44, 'Pediatria'),
(45, 'Dermatologia'),
(46, 'Kardiologia'),
(47, 'Chirurgia'),
(48, 'Neurologia'),
(49, 'Pediatria'),
(50, 'Dermatologia');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `doctors_id` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `doctors_id`, `password`) VALUES
(2, '234567', '$2y$10$iaVZACvVD9vLqdvRBb0APOBcuJamQzf6ovsgAlny2M0LyPrZkmBce'),
(3, '345678', '$2y$10$CvL6r/vjAEpgFVXRPNY3ZumODK2GWEDkjFkFL0mQh.s81dz5.UTui'),
(4, '456789', '$2y$10$Z9mHUSRO1z2zSviHKeDDWOZYS9S9xs.wuz6Tex.N29Rj5LOD0SU2u'),
(5, '567890', '$2y$10$SCF3QTkkIXdX6yuD3dHLgurkomV/45uFtSUN6SiW0uqNAbz7moygi'),
(6, '678901', '$2y$10$JYnoR5ked0ihW1jujwphcOLLTRTqy0VhFwnHF1PG1jQGl4JJDN5xi'),
(7, '789012', '$2y$10$eG0YAfztoR86JSSQBzuHx.pkECpo00OwWuidUEnBdMiOzzYub992e'),
(8, '890123', '$2y$10$lMoV8U35qzKH8ckUr5.49eBrVi/aKn3WWjxT.2RORnTpkLPxqPJT.'),
(9, '901234', '$2y$10$TblJ4gt1etngJIrAo56v8euSJBkrWl816/ERWt6jT/SbK74mwq4fa'),
(10, '012345', '$2y$10$9ztQMs7/NqbJVJ9Sm6AjQu6Y0eqBZWWcs/oR1OlazS1nb14K5m..u'),
(11, '123450', '$2y$10$nTutNX6nmX.O554OfdCbRO801PzYoHVLT8jPx/bKla6CB/vFCT0ye'),
(13, '234561', '$2y$10$GnbF2H4nn0mX5xG4r85cKeuwlMSeXByRtzSI7TX6LPe41IgZQQHoe'),
(15, '345672', '$2y$10$uao8Pm4MbkhlFIHihQKVrOJ.irqneTL.A3wXVnWXk9qXwunAclfzm'),
(17, '456783', '$2y$10$KsvyE7LVOSmAwXA8m872o.RzP8qPuGnmBfZBvcvGlnFRIvoi3yyJS'),
(19, '567894', '$2y$10$kWNxC0p4BxSxaQup6kr.tOmK3uWVsSIrVx48yIeYoij6FXouneFgS'),
(21, '678905', '$2y$10$HdmbRhqyQpCVULzrCRXI3OgTsUCAwSD3mft98S8aAb2KYPxE.CPby'),
(23, '789016', '$2y$10$vHxyj1ehbm6UruzSfplgkunnIIcJiMKJz4Qatm.2huWWVBJAkTJTS'),
(25, '890127', '$2y$10$ugU4ZLMCir.ZXcfMS4tzuOa4IQrXji4/OkZMLArpyF1/.A9T8ueY6'),
(27, '901238', '$2y$10$Mxr8Hr4xrNOogyu.6gyDCOQEWcUsNORhTtE8/I5XN3Auto3i6WWee'),
(29, '012349', '$2y$10$qkkEzyGvJ/FQzydvgFaeDuwJOCTy5539qh1YljY4ZBGHuXU.wOpcS'),
(10235, '123456', '$2y$10$mouUwX5kBARWPezdw0y4m.BV9li3XW3j/JdFDHrTk8bwmBCIAl/1O');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `visit_id` varchar(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `visit_id`, `rating`, `comment`, `created_at`, `date`) VALUES
(1, '234567', 1, 'masno', '2024-06-23 22:39:06', '2024-06-23 22:39:06'),
(2, '234567', 1, 'xddd', '2024-06-23 22:39:52', '2024-06-23 22:39:52'),
(3, '234567', 1, 'jebac kurwa', '2024-06-23 22:40:45', '2024-06-23 22:40:45'),
(4, '234567', 1, 'jebac kurwa', '2024-06-23 22:41:15', '2024-06-23 22:41:15'),
(5, '234567', 1, '634', '2024-06-23 22:41:54', '2024-06-23 22:41:54'),
(6, '234567', 1, '33663', '2024-06-23 22:54:12', '2024-06-23 22:54:12'),
(7, '234567', 1, 'masno', '2024-06-23 22:56:15', '2024-06-23 22:56:15'),
(8, '234567', 1, 'yeh', '2024-06-23 22:58:01', '2024-06-23 22:58:01'),
(9, '123456', 5, 'masny lekarz', '2024-06-27 07:22:20', '2024-06-27 07:22:20'),
(10, '123456', 3, 'tralala', '2024-06-27 07:27:40', '2024-06-27 07:27:40'),
(11, '0', 3, 'ok', '2024-06-27 11:29:55', '2024-06-27 11:29:55'),
(12, '0', 3, 'ok', '2024-06-27 11:30:23', '2024-06-27 11:30:23'),
(13, '0', 3, 'ok', '2024-06-27 11:30:27', '2024-06-27 11:30:27'),
(14, '0', 2, '47474', '2024-06-27 11:37:02', '2024-06-27 11:37:02'),
(15, '3', 4, 'masny lekarz', '2024-06-27 14:12:10', '2024-06-27 14:12:10'),
(16, '3', 5, 'Dobry lekarz', '2024-06-27 14:36:33', '2024-06-27 14:36:33'),
(17, '345678', 4, 'Ok', '2024-06-27 14:43:15', '2024-06-27 14:43:15'),
(18, '345678', 5, 'Bardzo dobra', '2024-06-27 14:45:20', '2024-06-27 14:45:20'),
(19, '345678', 3, 'Spoko', '2024-06-27 14:46:12', '2024-06-27 14:46:12'),
(20, '234567', 1, 'MOGE', '2024-06-27 20:05:51', '2024-06-27 20:05:51');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `services`
--

CREATE TABLE `services` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `price`, `category_id`) VALUES
(1, 'Badanie EKG', 'Badanie elektrokardiograficzne serca', 150.00, 1),
(2, 'Operacja wyrostka robaczkowego', 'Usunięcie wyrostka robaczkowego', 3500.00, 2),
(3, 'Badanie EEG', 'Badanie elektroencefalograficzne mózgu', 200.00, 3),
(4, 'Badanie noworodka', 'Kompleksowe badanie noworodka', 300.00, 4),
(5, 'Leczenie trądziku', 'Leczenie trądziku różnego stopnia', 150.00, 5),
(6, 'Badanie EKG', 'Badanie elektrokardiograficzne serca', 150.00, 1),
(7, 'Operacja wyrostka robaczkowego', 'Usunięcie wyrostka robaczkowego', 3500.00, 2),
(8, 'Badanie EEG', 'Badanie elektroencefalograficzne mózgu', 200.00, 3),
(9, 'Badanie noworodka', 'Kompleksowe badanie noworodka', 300.00, 4),
(10, 'Leczenie trądziku', 'Leczenie trądziku różnego stopnia', 150.00, 5),
(11, 'Badanie EKG', 'Badanie elektrokardiograficzne serca', 150.00, 1),
(12, 'Operacja wyrostka robaczkowego', 'Usunięcie wyrostka robaczkowego', 3500.00, 2),
(13, 'Badanie EEG', 'Badanie elektroencefalograficzne mózgu', 200.00, 3),
(14, 'Badanie noworodka', 'Kompleksowe badanie noworodka', 300.00, 4),
(15, 'Leczenie trądziku', 'Leczenie trądziku różnego stopnia', 150.00, 5),
(16, 'Badanie EKG', 'Badanie elektrokardiograficzne serca', 150.00, 1),
(17, 'Operacja wyrostka robaczkowego', 'Usunięcie wyrostka robaczkowego', 3500.00, 2),
(18, 'Badanie EEG', 'Badanie elektroencefalograficzne mózgu', 200.00, 3),
(19, 'Badanie noworodka', 'Kompleksowe badanie noworodka', 300.00, 4),
(20, 'Leczenie trądziku', 'Leczenie trądziku różnego stopnia', 150.00, 5),
(21, 'Badanie EKG', 'Badanie elektrokardiograficzne serca', 150.00, 1),
(22, 'Operacja wyrostka robaczkowego', 'Usunięcie wyrostka robaczkowego', 3500.00, 2),
(23, 'Badanie EEG', 'Badanie elektroencefalograficzne mózgu', 200.00, 3),
(24, 'Badanie noworodka', 'Kompleksowe badanie noworodka', 300.00, 4),
(25, 'Leczenie trądziku', 'Leczenie trądziku różnego stopnia', 150.00, 5),
(26, 'Badanie EKG', 'Badanie elektrokardiograficzne serca', 150.00, 1),
(27, 'Operacja wyrostka robaczkowego', 'Usunięcie wyrostka robaczkowego', 3500.00, 2),
(28, 'Badanie EEG', 'Badanie elektroencefalograficzne mózgu', 200.00, 3),
(29, 'Badanie noworodka', 'Kompleksowe badanie noworodka', 300.00, 4),
(30, 'Leczenie trądziku', 'Leczenie trądziku różnego stopnia', 150.00, 5),
(31, 'Badanie EKG', 'Badanie elektrokardiograficzne serca', 150.00, 1),
(32, 'Operacja wyrostka robaczkowego', 'Usunięcie wyrostka robaczkowego', 3500.00, 2),
(33, 'Badanie EEG', 'Badanie elektroencefalograficzne mózgu', 200.00, 3),
(34, 'Badanie noworodka', 'Kompleksowe badanie noworodka', 300.00, 4),
(35, 'Leczenie trądziku', 'Leczenie trądziku różnego stopnia', 150.00, 5),
(36, 'Badanie EKG', 'Badanie elektrokardiograficzne serca', 150.00, 1),
(37, 'Operacja wyrostka robaczkowego', 'Usunięcie wyrostka robaczkowego', 3500.00, 2),
(38, 'Badanie EEG', 'Badanie elektroencefalograficzne mózgu', 200.00, 3),
(39, 'Badanie noworodka', 'Kompleksowe badanie noworodka', 300.00, 4),
(40, 'Leczenie trądziku', 'Leczenie trądziku różnego stopnia', 150.00, 5),
(41, 'Badanie EKG', 'Badanie elektrokardiograficzne serca', 150.00, 1),
(42, 'Operacja wyrostka robaczkowego', 'Usunięcie wyrostka robaczkowego', 3500.00, 2),
(43, 'Badanie EEG', 'Badanie elektroencefalograficzne mózgu', 200.00, 3),
(44, 'Badanie noworodka', 'Kompleksowe badanie noworodka', 300.00, 4),
(45, 'Leczenie trądziku', 'Leczenie trądziku różnego stopnia', 150.00, 5),
(46, 'Badanie EKG', 'Badanie elektrokardiograficzne serca', 150.00, 1),
(47, 'Operacja wyrostka robaczkowego', 'Usunięcie wyrostka robaczkowego', 3500.00, 2),
(48, 'Badanie EEG', 'Badanie elektroencefalograficzne mózgu', 200.00, 3),
(49, 'Badanie noworodka', 'Kompleksowe badanie noworodka', 300.00, 4),
(50, 'Leczenie trądziku', 'Leczenie trądziku różnego stopnia', 150.00, 5),
(51, 'Chip w serce', 'Poczuj sie jak Tony Stark', 4121412.00, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `password`) VALUES
(1, 'Oskar', 'Stanioch', 'oskar.stanioch03@gmail.com', '$2y$10$rUJeZbK5sE456fz/Mh4PxOP8gi944gJUDVpP5WZsj9KnFWjO93Ohq'),
(2, 'Oskar', 'Stanioch', 'oskar.stanioch03@gmail.com', '$2y$10$9lwAnxp7a5pJ7q9lu2UcHueFQec1YE5NHArsfAo8N6NF8X/ATIzdK'),
(3, 'Oskar', 'Stanioch', 'adkosadkoa@wp.pl', '$2y$10$aYl0BSMVDUXl6f3StFRULeqN7i2wJn2xoYvHxj61gtyf8dE4zppka'),
(4, 'Maksymilian', 'Frankowski', 'maksSpermix@of.pl', '$2y$10$UnjLkWAsV4Vs9zlAELzFaughSAYXZyItd.ynQyV4vgZk4S1MesWHG'),
(5, 'Maks', 'Starsowski', 'oskar.staniszek@op.pl', '$2y$10$QokTKZVsJw6G1pgNo6EGfOteIzcwbddID8Vr6jvJ3opOjquaYL6sK'),
(6, 'Nikodem', 'EGO', 'nikego@gmail.com', '$2y$10$.DLRJNx9uFV9UN7bC8lTluREWvTZFGkwiQaSey1vpV17BjBwn2kAO'),
(7, 'Robert', 'Miyazaki', 'majastasko@gmail.com', '$2y$10$tPAsVmYtQ0ZiYTshTJtNjekd1qOrjFeChqXNlpDY9WuEngjT08p42'),
(8, 'Robert', 'Konieczny', 'konieczny@op.pl', '$2y$10$F.t4edZAQCQIssQbKGheqOytcJfRfvW8Qahgg6EZ6/u9ExajEB6M6'),
(9, 'Maksymilian', 'Podwalski', 'podwalak@gmail.com', '$2y$10$I63lCRffEAigrBdzslCFGeFfN1u3xdkNA6wOfQRWK5TpYUrmx.CMu'),
(10, 'Oskar', 'Mammon', 'jezdzciecmammon@gmail.com', '$2y$10$RVGDEZcAPPi2W97Pk9L5E.McOOmEfzb49LIusiMsbWdb1jY6fVjrK'),
(11, 'Mammon', 'Strim', 'wheeler@gmail.com', '$2y$10$VGTHs6cu/7MArNEhw/j1juAV2bwIb8tdkADqv/YjSWMO.LmGBdbPS'),
(12, 'Demonz', 'Strim', 'gluptasek@gmail.com', '$2y$10$u7DKA83Jh.Krcdh1e1cBw.X7AZnkBSchpn1NauEyPnygmrAdsAT4W');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`,`doctors_id`),
  ADD UNIQUE KEY `doctors_id` (`doctors_id`);

--
-- Indeksy dla tabeli `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31512;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
