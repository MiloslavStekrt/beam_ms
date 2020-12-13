-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Počítač: localhost
-- Vytvořeno: Sob 12. pro 2020, 22:51
-- Verze serveru: 8.0.22
-- Verze PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `beam-ms`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `classes`
--

CREATE TABLE `classes` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `teacher` int NOT NULL,
  `time` text COLLATE utf8_czech_ci NOT NULL,
  `avg` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `classes`
--

INSERT INTO `classes` (`id`, `name`, `teacher`, `time`, `avg`) VALUES
(6, 'Test - class', 16, 'PO-1,2 . UT-3,4', NULL),
(7, 'Test - class', 16, 'PO-1,2 . UT-3,4', NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `class_student`
--

CREATE TABLE `class_student` (
  `id_class` int NOT NULL,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `class_student`
--

INSERT INTO `class_student` (`id_class`, `id_user`) VALUES
(6, 72),
(6, 73),
(6, 74);

-- --------------------------------------------------------

--
-- Struktura tabulky `Elearning`
--

CREATE TABLE `Elearning` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `title` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `content` text COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `homeworks`
--

CREATE TABLE `homeworks` (
  `id` int NOT NULL,
  `time` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `question` text COLLATE utf8_czech_ci NOT NULL,
  `correct_answer` text COLLATE utf8_czech_ci NOT NULL,
  `id_class` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `homeworks`
--

INSERT INTO `homeworks` (`id`, `time`, `name`, `question`, `correct_answer`, `id_class`) VALUES
(1, '2021-02-25 12:05:00', 'Domacnie zadanie ucebnik 117', 'fsajl', 'sakdlkj', 6),
(2, '2021-02-11 12:05:00', 'ska', 'fsajl', 'sakdlkj', 6);

-- --------------------------------------------------------

--
-- Struktura tabulky `homeworks_user`
--

CREATE TABLE `homeworks_user` (
  `id_home` int NOT NULL,
  `id_user` int NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `in_time` tinyint(1) NOT NULL DEFAULT '0',
  `answer` text CHARACTER SET utf8 COLLATE utf8_czech_ci,
  `mark` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `homeworks_user`
--

INSERT INTO `homeworks_user` (`id_home`, `id_user`, `completed`, `in_time`, `answer`, `mark`) VALUES
(1, 72, 0, 0, NULL, 0),
(1, 73, 0, 0, NULL, 0),
(1, 74, 0, 0, NULL, 5);

-- --------------------------------------------------------

--
-- Struktura tabulky `msg`
--

CREATE TABLE `msg` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `content` text COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `tests`
--

CREATE TABLE `tests` (
  `id` int NOT NULL,
  `time` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `question` text COLLATE utf8_czech_ci NOT NULL,
  `correct_answer` text COLLATE utf8_czech_ci NOT NULL,
  `answer` text COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `test_usr`
--

CREATE TABLE `test_usr` (
  `id_user` int NOT NULL,
  `id_test` int NOT NULL,
  `completed` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `answers` text COLLATE utf8_czech_ci NOT NULL,
  `mark` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `pwd` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `role` int NOT NULL DEFAULT '1',
  `auth` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`id`, `name`, `pwd`, `email`, `role`, `auth`) VALUES
(16, 'admin', '$2y$10$IN9t8EAEjfhbFFZlfjVk3OYE3tzY0nFrWUlG1vjY.4EZ0WAS4DlZ.', 'stekrt18@gmail.com', 3, 0),
(72, 'David Kral', '$2y$10$4.C65LY03cOR9rtBbhYMmeDdEHigKEB97dQxt8Hm.SLd4QJ7H0gXi', 'none', 1, 0),
(73, 'Jirka janek', '$2y$10$emleUcCdYcL8gR6FmAFz3ON6dwr32RvZyqvKJtWG63epw/nd9w1PC', 'none', 1, 0),
(74, 'Pavel Noroto', '$2y$10$eZjSOwm7xHcayxG/zfPwbujwWqPovakXClyW2iQTLGB3fhNd4vngm', 'none', 1, 0);

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher` (`teacher`);

--
-- Klíče pro tabulku `class_student`
--
ALTER TABLE `class_student`
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_class` (`id_class`);

--
-- Klíče pro tabulku `Elearning`
--
ALTER TABLE `Elearning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Klíče pro tabulku `homeworks`
--
ALTER TABLE `homeworks`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `homeworks_user`
--
ALTER TABLE `homeworks_user`
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_home` (`id_home`);

--
-- Klíče pro tabulku `msg`
--
ALTER TABLE `msg`
  ADD KEY `msg_user` (`id_user`);

--
-- Klíče pro tabulku `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `test_usr`
--
ALTER TABLE `test_usr`
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_test` (`id_test`);

--
-- Klíče pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pro tabulku `Elearning`
--
ALTER TABLE `Elearning`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `homeworks`
--
ALTER TABLE `homeworks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `teacher` FOREIGN KEY (`teacher`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Omezení pro tabulku `class_student`
--
ALTER TABLE `class_student`
  ADD CONSTRAINT `id_class` FOREIGN KEY (`id_class`) REFERENCES `classes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Omezení pro tabulku `Elearning`
--
ALTER TABLE `Elearning`
  ADD CONSTRAINT `id_user2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Omezení pro tabulku `homeworks_user`
--
ALTER TABLE `homeworks_user`
  ADD CONSTRAINT `id_home` FOREIGN KEY (`id_home`) REFERENCES `homeworks` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `id_user3` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Omezení pro tabulku `msg`
--
ALTER TABLE `msg`
  ADD CONSTRAINT `msg_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Omezení pro tabulku `test_usr`
--
ALTER TABLE `test_usr`
  ADD CONSTRAINT `id_test` FOREIGN KEY (`id_test`) REFERENCES `tests` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `id_usr` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
