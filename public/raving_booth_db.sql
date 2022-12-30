-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 30. Dez 2022 um 15:37
-- Server-Version: 10.1.28-MariaDB
-- PHP-Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `raving_booth_db`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_id` varchar(60) NOT NULL,
  `description` text,
  `createdAt` datetime NOT NULL,
  `startAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `location` varchar(128) DEFAULT NULL,
  `thumbnail` varchar(512) DEFAULT NULL,
  `tags` varchar(1028) DEFAULT NULL,
  `password` varchar(256) NOT NULL,
  `type` varchar(128) NOT NULL,
  `public` tinyint(1) NOT NULL,
  `title` varchar(128) NOT NULL,
  `createdBy` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `events`
--

INSERT INTO `events` (`id`, `event_id`, `description`, `createdAt`, `startAt`, `updatedAt`, `location`, `thumbnail`, `tags`, `password`, `type`, `public`, `title`, `createdBy`) VALUES
(1, '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', 'beste bruda', '2022-12-26 05:01:10', '2022-12-14 00:00:00', '2022-12-26 05:01:10', 'sick', 'P1050060.JPG', '', '', 'Casual', 0, 'Bestes Event', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(2, 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', 'Du Schnitte du', '2022-12-29 10:23:28', '2023-01-01 00:00:00', '2022-12-29 10:23:28', 'Hannover', 'P1010609.JPG', '', '', 'Casual', 0, 'Test', 'NZQ94TztVlokmrAbX2v45YF7T0lpx5BP'),
(3, 'fVfoyHB80H1vfip2bamZNQQ89ibgL8jkjOvyNqxufw0FdtDgX9R9CUuOZ86T', 'In Frankfurt Bahnhof, Ã¼80 only!!!!!!!', '2022-12-29 05:12:53', '2022-12-31 00:00:00', '2022-12-29 05:12:53', 'Frankfurt', 'P1010612.JPG', '', '', 'Casual', 0, 'Orgie', 'UO8LUlbe8gNCIFpahKwOLFNxPn6flJ2a'),
(4, 'D2JgCMT6UWgiLhg6FspVeNTq3AQiCvKnxP11hB854qG5VwzMK7xtAP5hOtS2', 'testiung', '2022-12-29 07:00:53', '2022-12-13 00:00:00', '2022-12-29 07:00:53', 'Hannover', 'P1010616.JPG', '', '', 'Casual', 0, 'Testing', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(5, 'YMLALLLaWkE0Uux7zffC7TA7sdFcKrMIeVoyfrINz5JLjdoc6wCgK25OZ7dK', 'testiung', '2022-12-29 07:02:32', '2022-12-13 00:00:00', '2022-12-29 07:02:32', 'Hannover', 'P1010616.JPG', '', '', 'Casual', 0, 'Testinge', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(6, 'XxrzuSOUCzYwxktONZsAP3xn5GW41zeyAitzCwIroVSIverVkhfM1Q4J7IbK', 'testiung', '2022-12-29 07:04:51', '2022-12-13 00:00:00', '2022-12-29 07:04:51', 'Hannover', 'P1010616.JPG', '', '', 'Casual', 0, 'Testingee', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(7, 'UqZjdqXWX9PMMZlQ3CzRLnGOHsmiAGFomgobqdLNlNfVeyaycjQyuvJaOru9', 'testiung', '2022-12-29 07:06:25', '2022-12-13 00:00:00', '2022-12-29 07:06:25', 'Hannover', 'P1010616.JPG', '', '', 'Casual', 0, 'Testingeeee', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(8, '8DeEREVRb6b4Q3yB0vclT0fSkhNYLHddAtH3AFODsESLA06yRXUGjMyZ2MFE', 'testiung', '2022-12-29 07:07:16', '2022-12-13 00:00:00', '2022-12-29 07:07:16', 'Hannover', 'P1010616.JPG', '', '', 'Casual', 0, 'Testingeeeee', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(9, '9JK6Qr9Nkesf5Ynu4NvCYJCYDMLy0zJBtlvSSgI7vm9otRdV07vq2EBpyX42', 'testiung', '2022-12-29 07:07:51', '2022-12-13 00:00:00', '2022-12-29 07:07:51', 'Hannover', 'P1010616.JPG', '', '', 'Casual', 0, 'Testingeeeeee', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(10, 'SqjRfeHg2PEq7s6y7uxmoDN8HNi2duwKPQcuFEgkVTj3XhYDjV1NaMkBDd0j', 'testiung', '2022-12-29 07:11:06', '2022-12-13 00:00:00', '2022-12-29 07:11:06', 'Hannover', 'P1010616.JPG', '', '', 'Casual', 0, 'Testingeeeeeee', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(11, 'DpKKLs0SihdmfyyEYgGoInCulCGiRRnWVSo8ODY6OzzlsVUmrddWjC0Ja31h', 'testiung', '2022-12-29 07:13:52', '2022-12-13 00:00:00', '2022-12-29 07:13:52', 'Hannover', 'P1010616.JPG', '', '', 'Casual', 0, 'Testingeeeeeeee', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(12, '0mqEbCin0UGJHOHFAA15pTrxIC2RE38FtQucTg7E69O42o9YPivoJ4FMYFOw', 'testiung', '2022-12-29 07:14:12', '2022-12-13 00:00:00', '2022-12-29 07:14:12', 'Hannover', 'P1010616.JPG', '', '', 'Casual', 0, 'Testingeeeeeeeee', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(13, 'I2Nk4Vcu1yG638IZDVJp1yzOcCSLXhBO68ZH8vqXqH29n4AEcznaQQlDfQNJ', 'testiung', '2022-12-29 07:14:56', '2022-12-13 00:00:00', '2022-12-29 07:14:56', 'Hannover', 'P1010616.JPG', '', '', 'Casual', 0, 'Testingeeeeeeeeee', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(14, 'zvQV8KGhh3zFKyi8Gw6nNNZI5ylTNn9PgAmfahZGUjtF8zfqLSjyhMK9QQc4', 'testiung', '2022-12-29 07:15:50', '2022-12-13 00:00:00', '2022-12-29 07:15:50', 'Hannover', 'P1010616.JPG', '', '', 'Casual', 0, 'Testingeeeeeeeeeee', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(15, 'gZZM60XTZsVNb8SSlHke3vtsUHpMixC7drnuNnLxbOjQV1iwKzMMUjn6IER7', 'testiung', '2022-12-29 07:16:40', '2022-12-13 00:00:00', '2022-12-29 07:16:40', 'Hannover', 'P1010616.JPG', '', '', 'Casual', 0, 'Testingeeeeeeeeeeee', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(16, 'tomRqpz3ULqhpJdYpEsBiEFhYbU1frbaTHdcN7eABKnYnYB1SUkIpLcdMAfR', 'testiung', '2022-12-29 07:17:38', '2022-12-13 00:00:00', '2022-12-29 07:17:38', 'Hannover', 'P1010616.JPG', '', '', 'Casual', 0, 'Testingeeeeeeeeeeee', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(17, 'x56me9w4GqEDA0PV2Rw6uFz0uFXVKh66c083KwPvKMvXuBIikziE8t0xrJ9P', 'testiung', '2022-12-29 07:17:48', '2022-12-13 00:00:00', '2022-12-29 07:17:48', 'Hannover', 'P1010616.JPG', '', '', 'Casual', 0, 'Testingeeeeeeeeeeeee', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(18, 'UjTIhpzwpLe8cQiG1NNPIreB9FWBOrh62V9NKL65KikaG9USu8duvTwO3st6', 'testiung', '2022-12-29 07:18:30', '2022-12-13 00:00:00', '2022-12-29 07:18:30', 'Hannover', 'P1010616.JPG', '', '', 'Casual', 0, 'Testingeeeeeeeeeeeeee', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(19, 'nhO0mk2Kl7Ovy7K0JM48j40JvJD2rkzNlIpEzdEhYvuLBkyLilZ70wrO05FJ', 'testiung', '2022-12-29 07:18:50', '2022-12-13 00:00:00', '2022-12-29 07:18:50', 'Hannover', 'hDwoU2BJt000dx7JUSNJ5Z1S8v9tjhKRCg3otiQsmFMxuSzmCfRejRGPqMPw', '', '', 'Casual', 0, 'Testingeeeeeeeeeeeeeee', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(20, 'kV1SKnFTQzaNYrNK4oHKB3vreiLGhSecgTloHzNnDD0AfWJN7bHwo3YmbDKK', 'testiung', '2022-12-29 07:21:08', '2022-12-13 00:00:00', '2022-12-29 07:21:08', 'Hannover', 'D6Ozc2b1er10q6m2TQA6DEVJF3BpTVeTy7XP1TUSUDXDdP1en1lD1A1s1YZA', '', '', 'Casual', 0, 'Testingeeeeeeeeeeeeeeeee', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(21, 'GReGePZvqA9xk4aaCWwL83KqFYYQGUo54SGqVDWNDO6ptzXC5bvNIMimVQs9', 'testiung', '2022-12-29 07:22:40', '2022-12-13 00:00:00', '2022-12-29 07:22:40', 'Hannover', 'LZOHOuTEt2k6rD4K0RMfnZz3d3DSSU3kq6QkCD70ssxmodo61NKbeF3vq4WU', '', '', 'Casual', 0, 'Testingeeeeeeeeeeeeeeeeeeer', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(22, '8b1O5CEhMq1AkizxqaI5zVVuID4jdO6XPmX7EpgWIkGBxN811gUNPBdaBH2M', 'testiung', '2022-12-29 07:23:13', '2022-12-13 00:00:00', '2022-12-29 07:23:13', 'Hannover', '8SftWtDapHCOwKaYRsqf2V6gcegnsZvUpqvESagZ4QzKN8FqTn3IJ5JBmGYQ', '', '', 'Casual', 0, 'Testingeeeeeeeeeeeeeeeeeeeree', 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge'),
(23, 'saSbZAX8Hl5OppAVH5TwgePgiI4UR1970GvXSuummwV6bSvoOUxN5POnw9pM', 'nice', '2022-12-30 02:26:33', '2023-01-01 00:00:00', '2022-12-30 02:26:33', 'Hannover', 'WrccwqCnBTBdqXflhSyXTOKrCiFVmuvUJry1LKBy0U4wWVPphF0NdpfpmCLc', '', '', 'Casual', 0, 'Nices Event', 'iFSVhPAKGKHcHpwC7obctMYjG29GGGsb'),
(24, 'SdOWMLpuonR2wTlobR2V1UEUqnLVmqFJQVeqIk1H0nmTj0qWajuJIwU7JU1b', 'Fototestung', '2022-12-30 03:05:34', '2022-12-31 00:00:00', '2022-12-30 03:05:34', 'Hannover', 'PGpdLHNr0Wpf8hia7MjsgJ19uCbTb9xx5WKA3w0bWqpeLYbPE7fhyoRSeppw', '', '', 'Casual', 0, 'Ich teste Fotos', 'iFSVhPAKGKHcHpwC7obctMYjG29GGGsb');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image_id` varchar(60) NOT NULL,
  `original_file_name` varchar(128) NOT NULL,
  `image_type` varchar(4) NOT NULL,
  `status` int(11) NOT NULL,
  `likes` int(11) DEFAULT NULL,
  `use_case` varchar(32) NOT NULL,
  `uploaded_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `images`
--

INSERT INTO `images` (`id`, `image_id`, `original_file_name`, `image_type`, `status`, `likes`, `use_case`, `uploaded_on`) VALUES
(1, 'PGpdLHNr0Wpf8hia7MjsgJ19uCbTb9xx5WKA3w0bWqpeLYbPE7fhyoRSeppw', 'sbcf-default-avatar.png', 'png', 1, NULL, '', '2022-12-30 03:05:34');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `type` varchar(32) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `description` text NOT NULL,
  `photoUrl` varchar(256) NOT NULL,
  `createdBy` varchar(60) NOT NULL,
  `accepted` tinyint(1) NOT NULL,
  `item_id` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `item_photos`
--

CREATE TABLE `item_photos` (
  `id` int(11) NOT NULL,
  `item_photo_id` varchar(60) NOT NULL,
  `file_name` varchar(128) NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joinedevents`
--

CREATE TABLE `joinedevents` (
  `id` int(11) NOT NULL,
  `uid` varchar(60) NOT NULL,
  `event_id` varchar(60) NOT NULL,
  `joined_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `joinedevents`
--

INSERT INTO `joinedevents` (`id`, `uid`, `event_id`, `joined_date`) VALUES
(1, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2022-12-27'),
(2, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2022-12-27'),
(3, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2022-12-27'),
(4, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2022-12-27'),
(5, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2022-12-27'),
(6, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2022-12-27'),
(7, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2022-12-27'),
(8, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2022-12-27'),
(9, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2022-12-27'),
(10, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2022-12-27'),
(11, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2022-12-27'),
(12, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2022-12-27'),
(13, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2022-12-27'),
(14, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2022-12-27'),
(15, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2022-12-27'),
(16, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2022-12-27'),
(17, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2022-12-27'),
(18, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2022-12-27'),
(19, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '0000-00-00'),
(20, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '0000-00-00'),
(21, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '0000-00-00'),
(22, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '0000-00-00'),
(23, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '0000-00-00'),
(24, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '0000-00-00'),
(25, 'NZQ94TztVlokmrAbX2v45YF7T0lpx5BP', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-29'),
(26, 'UO8LUlbe8gNCIFpahKwOLFNxPn6flJ2a', 'fVfoyHB80H1vfip2bamZNQQ89ibgL8jkjOvyNqxufw0FdtDgX9R9CUuOZ86T', '2022-12-29'),
(27, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', 'fVfoyHB80H1vfip2bamZNQQ89ibgL8jkjOvyNqxufw0FdtDgX9R9CUuOZ86T', '2022-12-29'),
(28, 'iFSVhPAKGKHcHpwC7obctMYjG29GGGsb', 'saSbZAX8Hl5OppAVH5TwgePgiI4UR1970GvXSuummwV6bSvoOUxN5POnw9pM', '2022-12-30'),
(29, 'iFSVhPAKGKHcHpwC7obctMYjG29GGGsb', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-30'),
(30, 'iFSVhPAKGKHcHpwC7obctMYjG29GGGsb', 'SdOWMLpuonR2wTlobR2V1UEUqnLVmqFJQVeqIk1H0nmTj0qWajuJIwU7JU1b', '2022-12-30');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `likedevents`
--

CREATE TABLE `likedevents` (
  `id` int(11) NOT NULL,
  `uid` varchar(60) NOT NULL,
  `event_id` varchar(60) NOT NULL,
  `liked_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `likedevents`
--

INSERT INTO `likedevents` (`id`, `uid`, `event_id`, `liked_date`) VALUES
(18, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2022-12-27'),
(29, 'UO8LUlbe8gNCIFpahKwOLFNxPn6flJ2a', 'fVfoyHB80H1vfip2bamZNQQ89ibgL8jkjOvyNqxufw0FdtDgX9R9CUuOZ86T', '2022-12-29'),
(31, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', 'fVfoyHB80H1vfip2bamZNQQ89ibgL8jkjOvyNqxufw0FdtDgX9R9CUuOZ86T', '2022-12-29'),
(34, 'iFSVhPAKGKHcHpwC7obctMYjG29GGGsb', 'SdOWMLpuonR2wTlobR2V1UEUqnLVmqFJQVeqIk1H0nmTj0qWajuJIwU7JU1b', '2022-12-30');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `thumbnails`
--

CREATE TABLE `thumbnails` (
  `id` int(11) NOT NULL,
  `thumbnail_id` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `thumbnails`
--

INSERT INTO `thumbnails` (`id`, `thumbnail_id`, `file_name`, `uploaded_on`, `status`) VALUES
(1, '3ppCSqLcPCfNg2YQlcpk0cxxpA5GomaqrK9GqcbINLg6gwGRgtX7d4fNCL65', 'P1010616.JPG', '2022-12-29 07:18:50', '1'),
(2, 'D6Ozc2b1er10q6m2TQA6DEVJF3BpTVeTy7XP1TUSUDXDdP1en1lD1A1s1YZA', 'hDwoU2BJt000dx7JUSNJ5Z1S8v9tjhKRCg3otiQsmFMxuSzmCfRejRGPqMPw', '2022-12-29 07:21:08', '1'),
(3, 'LZOHOuTEt2k6rD4K0RMfnZz3d3DSSU3kq6QkCD70ssxmodo61NKbeF3vq4WU', 'D:\\Xampp\\tmp\\php1EA8.tmp', '2022-12-29 07:22:40', '1'),
(4, '8SftWtDapHCOwKaYRsqf2V6gcegnsZvUpqvESagZ4QzKN8FqTn3IJ5JBmGYQ', 'deckblatt.png', '2022-12-29 07:23:13', '1'),
(5, 'WrccwqCnBTBdqXflhSyXTOKrCiFVmuvUJry1LKBy0U4wWVPphF0NdpfpmCLc', 'Unbenannt-51 Kopie (1) 01 ZeichenflaÌˆche 1.jpg', '2022-12-30 02:26:33', '1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `location` varchar(64) NOT NULL,
  `birthday` date NOT NULL,
  `course` varchar(32) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `photoUrl` varchar(128) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `password` varchar(256) NOT NULL,
  `student` tinyint(1) NOT NULL,
  `email` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `username` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `uid`, `location`, `birthday`, `course`, `level`, `photoUrl`, `createdAt`, `updatedAt`, `password`, `student`, `email`, `description`, `username`) VALUES
(1, '', 'Hannover', '2022-12-13', 'computer_science', 1, NULL, '2022-12-21 04:09:55', '2022-12-21 04:09:55', '$2y$10$S12RWNZKQVgMl2uOxc.n2ukyNvMMJoWAnvv3KcRf8cQsWKnfzzjze', 1, 'fsasafsfa@dd.de', '', 'fasfsa'),
(2, 'k4NV3eVRp3GtLBsYdNDW7CEPPKtuWK9W', '', '2022-12-13', 'computer_science', 0, 'P1050060.JPG', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '$2y$10$jDyioNcMdaUExUO/Nu0RNOGlK.MI0pBBdxHDzTHsjM3LP0ITqbkoq', 0, 'fsasafsfa@dd.de', '', 'fasfsa'),
(3, 'vBZoEjAZ9lwQmKZHNtm6sG7YZgMJbk2v', 'Hannover', '2022-12-13', 'computer_science', 1, 'P1050060.JPG', '2022-12-21 04:22:16', '2022-12-21 04:22:16', '$2y$10$Erp5KnYckXlc5gmzJPtKK.ghJszNboot23HXF8wtzb4Kkim3CyTy2', 1, 'fsasafsfa@dd.de', '', 'fasfsa'),
(4, 'P36LjqUGSP71CQzwzp9OLITgpRqdpaDJ', 'Hannover', '2022-12-28', 'computer_science', 1, 'P1050060.JPG', '2022-12-21 04:33:44', '2022-12-21 04:33:44', '$2y$10$fkPF/MeiDyUtzbfEYRKh1OhN0lgmFUmDiwTUGOdTuT6vshvEoa7Dm', 1, 'jonas.barfknecht@gmail.com', '', 'fasfa'),
(5, 'DLYpkGjlSkABz9XPXhQg6ygdzg9Bz0IX', 'Hannover', '2022-12-08', 'business_informatics', 1, 'P1050060.JPG', '2022-12-21 04:35:17', '2022-12-21 04:35:17', '$2y$10$/KTzup/MosWkCuSQOlvXqeUm8gjjMXXcUkWjGpwx3Y2nmsvvJLHgi', 1, 'fasfsa@fff.de', '', 'fasfaa'),
(6, 'o5wJWc799TBshrUnI5U9xfZTNVsqxW1G', 'Hannover', '2022-12-08', 'business_informatics', 1, 'P1050060.JPG', '2022-12-21 04:48:09', '2022-12-21 04:48:09', '$2y$10$OhylIcerGZlpWAb21KSlR.DVaBX3OJ5howDHx/dn2X7Kb2V3tLdme', 1, 'fasfsa@ffff.de', '', 'fasfaff'),
(7, '3SjFQNNwq2rf9YFUpMI1a2t8vt9wL8dC', 'Hannover', '2022-12-21', 'computer_science', 1, '', '2022-12-21 05:38:48', '2022-12-21 05:38:48', '$2y$10$2iifhXhFg7CfXRXPpeAjuO0qLb.FcgAlhguWSuDk9EoZvxN/F6ruu', 1, '123@123.de', '', 'peter'),
(8, 'wBE3pNJQmjUW0gRhLO2CpIH72MXRl1ge', 'Hannover', '2022-12-22', 'computer_science', 1, 'P1050060.JPG', '2022-12-21 05:39:23', '2022-12-21 05:39:23', '$2y$10$DKzv9S.C63vE1crhsZPYcOLkpt6pcnZCF6tEtXSPAjGphwi0JPBgC', 1, 'heinz@hans.de', 'I\'m baby cronut jean shorts etsy, asymmetrical man bun vexillologist plaid glossier health goth small batch unicorn bruh yuccie. Wolf post-ironic mlkshk palo santo gentrify tilde offal you probably haven\'t heard of them lyft neutra coloring book keytar raw denim biodiesel. Sartorial ramps drinking vinegar letterpress, wolf deep v Brooklyn tattooed swag hexagon ascot craft beer. Mukbang seitan flannel pug drinking vinegar cold-pressed. Sriracha echo park tofu subway tile raclette disrupt venmo godard copper mug swag prism.', 'heinz'),
(9, 'rZb7apgAGEv5RZIx0mfKeQqtT64Xi7zQ', 'Hannover', '2022-12-06', NULL, 1, '', '2022-12-23 01:03:23', '2022-12-23 01:03:23', '$2y$10$pYyvK8C5sHc6p4hZvPjSmOoD9OFYY8vS.4aTnA11Z06L70pEbTruq', 1, 'fasfsa@fff.dee', '', 'ranger'),
(10, 'yWNH4LmLIHkzO80fCiCNytBEWHXf1QQe', 'Hannover', '2022-12-24', 'tourism_management', 1, 'P1050060.JPG', '2022-12-23 01:49:11', '2022-12-23 01:49:11', '$2y$10$MgktCZaij1MDFfnlTRYvZ.qP7rRUs/PIf/Arl2CGWUFM/p/lfoxJK', 1, 'jonas.barfknecht@gemail.com', '', 'asf'),
(11, 'CC5IG5myQf3EJJBD46UPYWlZgsguRQZ6', 'Hannover', '2022-12-14', 'tourism_management', 1, '', '2022-12-23 01:50:01', '2022-12-23 01:50:01', '$2y$10$H75OTwM0ek7h8j7hBdOyL.NRGRytMOxbpb.A6l6ea0ZRE9d8mVhoq', 1, 'jonas.barfknecht@gemail.come', '', 'asff'),
(12, '5viGzWvB91YlQoqhojMkIbaOJfpvfRTN', 'Hannover', '2022-12-14', 'tourism_management', 1, '', '2022-12-23 01:51:16', '2022-12-23 01:51:16', '$2y$10$wt8coc1VSHIb2hbi8qMPBeJkXg43MM9EUdArlaT3OcZme5nEDyAzO', 1, 'jonas.barfknecht@gemail.comee', '', 'asffee'),
(13, 'GnDrPIER4yuyiuG8OEA0T1YKAKjLhsC3', 'Hannover', '2022-12-14', 'tourism_management', 1, '', '2022-12-23 03:59:10', '2022-12-23 03:59:10', '$2y$10$i3ac0l0SyHqR8GCZntCeG.h1sHFUHovEBzcNTzpjAScxM4dsmGyxi', 1, 'jonas.barfknecht@gemail.comeee', '', 'asffeeee'),
(14, 'NZQ94TztVlokmrAbX2v45YF7T0lpx5BP', 'Hannover', '2002-12-06', 'computer_science', 1, '', '2022-12-29 10:22:10', '2022-12-29 10:22:10', '$2y$10$/x1qoZ7Roic/YV/xlvONNeRe62dyJ/L8M1z4vFD3Zujv5wnMmpH7S', 1, 'ranger.jones@gmail.com', '', 'RangerJones'),
(15, 'UO8LUlbe8gNCIFpahKwOLFNxPn6flJ2a', 'Hannover', '1902-01-01', 'management', 1, '', '2022-12-29 05:11:21', '2022-12-29 05:11:21', '$2y$10$MsmEiPNqjQNqoEVLWRGgOuqAhWNPLaXAAHZYTQI7oaWDWH/X6ws.a', 1, 'pimmeluser@pimmel.de', '', 'GrosserPimmel69'),
(16, 'iFSVhPAKGKHcHpwC7obctMYjG29GGGsb', 'Hannover', '2022-12-31', 'business_informatics', 1, '4vvRPaKnerbB0ZfAor9hKCSd8Q7V9llRSKJ2pMAfm9bj8xQ4Do0T08OHP79B', '2022-12-30 12:48:18', '2022-12-30 12:48:18', '$2y$10$NVowKCwuRBGro6zTBhpJnu0rfqVMHCYDmoI/5GOclGJ9UuWi/IZei', 1, 'fff@ff.de', '', 'bruderjones');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_photos`
--

CREATE TABLE `user_photos` (
  `id` int(11) NOT NULL,
  `user_photo_id` varchar(60) NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `file_name` varchar(128) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user_photos`
--

INSERT INTO `user_photos` (`id`, `user_photo_id`, `uploaded_on`, `file_name`, `status`) VALUES
(1, '4vvRPaKnerbB0ZfAor9hKCSd8Q7V9llRSKJ2pMAfm9bj8xQ4Do0T08OHP79B', '2022-12-30 12:48:18', 'laravel-logo.png', 1);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `startAt` (`startAt`),
  ADD KEY `title` (`title`),
  ADD KEY `public` (`public`),
  ADD KEY `type` (`type`),
  ADD KEY `location` (`location`),
  ADD KEY `createdBy` (`createdBy`);
ALTER TABLE `events` ADD FULLTEXT KEY `title_2` (`title`);
ALTER TABLE `events` ADD FULLTEXT KEY `description` (`description`);
ALTER TABLE `events` ADD FULLTEXT KEY `title_3` (`title`,`description`);

--
-- Indizes für die Tabelle `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `item_photos`
--
ALTER TABLE `item_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joinedevents`
--
ALTER TABLE `joinedevents`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `likedevents`
--
ALTER TABLE `likedevents`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `thumbnails`
--
ALTER TABLE `thumbnails`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `user_photos`
--
ALTER TABLE `user_photos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT für Tabelle `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `item_photos`
--
ALTER TABLE `item_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `joinedevents`
--
ALTER TABLE `joinedevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT für Tabelle `likedevents`
--
ALTER TABLE `likedevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT für Tabelle `thumbnails`
--
ALTER TABLE `thumbnails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT für Tabelle `user_photos`
--
ALTER TABLE `user_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
