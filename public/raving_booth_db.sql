-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 03. Feb 2023 um 15:30
-- Server-Version: 10.1.28-MariaDB
-- PHP-Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Tabellenstruktur für Tabelle `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment_id` varchar(60) NOT NULL,
  `content` text NOT NULL,
  `created_by` varchar(60) NOT NULL,
  `event_id` varchar(60) NOT NULL,
  `posted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `comments`
--

INSERT INTO `comments` (`id`, `comment_id`, `content`, `created_by`, `event_id`, `posted_at`) VALUES
(-1, 'd030b7e0-a176-11ed-85bf-43b58f2e4262', 'was geht', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2023-01-31 14:51:58'),
(1, '9RAJsnVI8isXtigTN3T9RZRGV21W9t6PYbgiMyYzDyw6qumtTD8JhtaYvP0r', 'dffsd', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:37:26'),
(2, 'Aof5q2TC5ls0jnlhfMWAV2j43ii3ABhXTUC1A01TI2ZSbmOeZaMKVuQhjzeH', 'sfsfs', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:37:29'),
(3, '498UevlD8NC6k5tj2FVUUSDTTbOWbc4sR1gMPZ4RASFF172WKpxybbkW5vZ2', 'sfsfs', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:42:50'),
(4, 'AdiB9W2aG1YcVcuxWraxBr1eu9BNfKv47smzMBdu5y6zb9oDQZbFXVaGvxrB', 'j', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:42:54'),
(5, 'rQTDPavCALj6BS3NhZwajs57noaJqmsjwevPKTsoRyQMVCGLEgcwq1MRWmQB', 'j', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:42:55'),
(6, 'R0UE30bbxaLvd90fRsVKzjLfZWVVAhHgZy7BZIS0c4UfGzdTRR2dtXHzcSn0', 'j', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:42:55'),
(7, 'h9AHZZkTvtSMAWmhuciwDvwJ1X9pUrRdAButnZAYijdtDClbAOB63Eu6i928', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:05'),
(8, 'E3quWSdK8JUNsJzLWMoEVY3o0bD2cchzVClDkbu4f0RWXx7BxyCQfuRv9aym', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:05'),
(9, 'ALAmyAG6oUZMvXFW3YH3YyUU1pDTAXx329GMZ2aSHGxFrGuP8BhVuzAmBWBQ', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:06'),
(10, '8q5AJW7ibEPokyKQ7mI8JNcbX4utw0OXJvQp6Yd1rdV8hpbz2MsnA6yhNSkD', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:06'),
(11, 'oRCVGngfHGoAht97gIQeMRbI8JN4iZbSWT71boMZB5lqTtoOoOGYWsu2MV6P', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:06'),
(12, 'obnrHUtc8bACPjWeE1SNo6mTW2T3bo1ie5wRjPfBY44iOIxvGUUbGZTjVVBV', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:07'),
(13, 'Yfi2WeBVqBKFXsMzEMqhsWhTL38KyiGxnNwstwhElyV7WDCoAkOEjyDmafVN', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:07'),
(14, 'FgjKoYys6zv6OwR1PBPnsyesCpUo65pA4MBcWmL8FrnHKjRkf7RdDKakzojW', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:08'),
(15, 'q5oJNuVASsoOYX2JlcjkQEgwZvJivEf3CIUc5iDQQGyxjdbZVUeY520lKRDM', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:08'),
(16, 'MHCekwk2UlD4gSPI5wxHYBRvuPppoGCVgwkHMVu7OPfJ2JopdAIVyBOoOa6m', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:08'),
(17, 'ISjUMq0dJRc1Cm74GMY4ztCJMBcKQnGHwLxQZRS9YF7Zi9zlsFkxvGjYKrnK', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:09'),
(18, '9fdxrgAUGh7YMMILMdtG4xtSYC01WHDTVF2jvYQHDa9BwiKAY9d0CxDaAJd4', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:09'),
(19, 'gY4NP7Fspp5IU9FIjfb3T0N9GhFuOeQka4fAInY9vxhmYkf59srt7WWBp0nH', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:10'),
(20, 'YinpsG62IYsXRXs3VkHaYDrHlI1QPGvK39Yk1KS0aAUKl7FEN0dpzMXMRZ4V', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:10'),
(21, 'xJdRkVCgUOLtWtVEXvoCUf3UcYItJFL6e6asvfOpnxMm5LAUqek1V187kmGR', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:11'),
(22, 'TRYQIVuT9FORO8AinBc57G79IOVnd01tHvsxRQWwCwCFTRKwpNpNmQe3ajpk', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:11'),
(23, 'VClAtOo9ZeDXBvAJFCxRUavyov4WUK1HNLPaQG66r11BQQHieSIDTGhWyeHQ', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:11'),
(24, 'jsnRXuBWSMLAZ1fCESFrmAdlQAaRaEhZfFNjWKiMlV5rxXJyEvq98g8OJxw0', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:12'),
(25, 'ckdjz2kEAFtlkWguymXoFzVfN7gXGu2wvYH6ZrbiuWaBhI2kmUDWalL2spiW', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:12'),
(26, 'IwBhBpLR4NO6EwX1UrQnBLotTEVTq4nz85xd05T9zMlL6qMv5wvY4QccxNGt', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:12'),
(27, 'oXXfp5zmcOK5RJwpeSyArzX4HdHogXR7dkzoT8GuWIeoJSix6pfz5sgSsjpf', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:13'),
(28, 'FAjQrh8ACddeArG8TYPJmkkow1gTmQKDYEfRXbqWx0OpVcfeC8TZOZHzZMdB', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:14'),
(29, '8Wrzl2qY7c5yLNa86xzEo3krFdFQMFLzZ52KnIsLAVD4dWaaLv7WUOBGH2Qn', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:14'),
(30, 'R8YQtlrTt9WToPzMwZy89WNNuPSvfqoOjZmXaX4QGv0rLGMwR2segcr2jfhb', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:15'),
(31, 'oy4eEpuf4Rvfza6Y0YzbqfVh8akKrFtuai8azMcFDyctiQB7THl1GB4KyZcs', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:16'),
(32, 'zC5mpHMcKUZciIvzEj7ZC5OETVrDyZIv4sF7OxJEB6AFp4JwNZ08ffYlMOOz', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:16'),
(33, 'hXbybb3RUz1c5yGk99rXjxPSJJVEYYAuxj2UxiqpA7tKcRCMRn64PpV24aDF', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:17'),
(34, '11RUMmQO2fwXrIJglHXHpSuBNd7NHA49J7pyztzMPJUwt3jWaMp6YYsqZuT6', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:18'),
(35, 'mxMa2hCF4kEvFbApI76KYObmcn3yszaF5J1FwTrl6oEF1hi8hIMuOIsNJFLA', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:19'),
(36, '5UrBzDTaknlApnB9kyhQSs98Wsdup6fVMy2RT6XI9TiXiiNVVx9SRMivbyrJ', 'lololol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:43:19'),
(37, 'AqSC0fEWoFQWvJwOjmoHMquZrrM4Eslw9hgaterasRHW9mdFyOyxH7E4uxkG', 'f', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 01:44:06'),
(38, 'ZBRQTHgwapIxdltRwQNXxp3O0CpIC83hpAicG5k5SxAvcsFEazn8CrbMWrZC', 'f', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 03:58:50'),
(39, 'fZIIq9Q2PnFY7RfN8uTIICApkwxwZj52P1Dm69mGaqxp07cKKeZYtl2wVQuB', 'f', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 03:58:51'),
(40, 'kHnyF5Am0KGQYoReQVUaUM9SGHtkzkm53Dd4EKEhPmyyuJDhOO7qEHw376Oi', 'f', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 03:59:28'),
(41, 'EltpFWz2AmMa4s3CwBEKjjbZ0OFBmu7tZC706iBY0vJQmaOZ85TwvKgnmKc1', 'f', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 03:59:44'),
(42, 'CNA6hrXJCxMEzAlEVbweS1dHLrOnOSJLxFMqyVsfZNGT6E1bf5kpsIAoCXhc', '   ', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:00:05'),
(43, 'vfArT9E5sy9BG862UGERalDnikAbfZ8xsSlWEMGXRYrykxFLggJaOQtYCA64', 'lol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:00:13'),
(44, 'vG4ASoTB8CbDjmgVNhBHjvJm2TOQGXuDiThkAnFHfSM4PjzqY8OUqkpVVewA', 'ffffdfddf', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:00:21'),
(45, 'BUMW6tOkWoFDVr83puIMDk7QyuFjIt05CfldH3fddkzmEEatDaM89ciMCKJX', 'ffffdfddf', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:00:21'),
(46, 'xlsJpkLOshN070zDAXcd26ypGzxam1GeA63Aa144v5Ji0wGZd20l1duS4xm9', 'ffffdfddf', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:00:22'),
(47, 'MWcODUf1kM6oCxvoa3r0BIfpRF0S1VryePnrDHe1kDkKA1pN7R3bGhvuIIzB', 'ffffdfddf', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:00:23'),
(48, 'rQQTJHHPW3JCCinaWsJv7ZCoRRN3acV4Z3bjX5qbHs47nuv2Gt6UzZJDV9VQ', 'ffffdfddf', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:00:23'),
(49, '182GUMGlTHmQAVPrX8Rjy3obN5E5Nmj25GISQweexpZaQkOaWv0tkkoGLwLt', 'ffffdfddf', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:00:24'),
(50, 'UsDYpqLWiUhdf7DNpDJPIQ4kxESOArp3t2L7h6Ui28K5BNVXzVnNjZesCF2L', 'ffffdfddf', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:00:25'),
(51, 'NQwRKHtVsuMjBVUlmuhNLGKRyH6mQNXfLDLHqkfigxBTa168bzFBQqLQRgxE', 'ffffdfddf', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:00:26'),
(52, 'k6BZGXxdJ6KcUEYZol9Dm1ncCoXpMvrk3U93qoQWqN4fSGIVlKjTxOjH2vww', 'ffffdfddf', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:00:27'),
(53, 'r1OzyzWJoxcevsZNcwQJxS74Q8JiJa9GLVg15wmtgNs8lkpT8PVwRXLlv0aW', 'ffffdfddf', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:00:28'),
(54, 'nkoR3pm9ZCDTt64bzQoLF5E8M3uWpTK1yR5BboHrpXcOW1pgx19lrEY3TALX', 'ffffdfddf', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:00:29'),
(55, 'BIOQZFTUzUHiCS3q1v8RD9oes0CSIKo6aVtLxUI1sro8bBsLY2TTGamfTJtJ', 'ffffdfddf', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:00:30'),
(56, 'pV8TBs3ydvxyxacvN0KjBNBMdHwUiA4gwMEqLeMVDUAndzmE4PLAD3FNHz5Z', 'ff', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:08:55'),
(57, 'A1p0tMn02EKJQFNAcpHeIt4SmPb0epb9uEY7upLg3APTZtIAqqugkqcnpLHn', 'asf', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:09:40'),
(58, 'NNgdDGKVwaCbgTgHGzVqEHTpWPoRDSzkNNcdJ4kqmlZOTFbaJJiBkzsa4OTQ', 'fsaafs', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:09:43'),
(59, 'OCkU1YTOmY67ORoK9Zt06iULiLpGndMXfvPpQuLDCdjOUtPQCp1XGMHW1kwk', 'asffsasfafswwa', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:09:55'),
(60, 'b52hcnIUaC3lSTFus2pEdc2YE64ih4XWkAL02qB5bk2HuEQwR1Qi8h9TC7DZ', 'asffsasfafswwa', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:09:55'),
(61, 'vrAOUmEgdgTI8P2X8sVqernlQlJyoy0gPKsGEblElZmKrlr2ziu4VGewlWrz', 'asffsasfafswwa', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:09:55'),
(62, 'lR8JMhhVmOcAoYwtThmQ6pyELd4hhnshASDKhjcUker8EyQMPuh0njTzpjp8', 'asffsasfafswwa', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:09:56'),
(63, 'nhAIZziaTuj3wkLVrHeymGhsghbAmuloTFkzCvxWCJLRNK9xYnkXIPAaVngz', 'asffsasfafswwa', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:09:56'),
(64, '2Z7NdOfWniJnKuIAON0gnxBt02ipm4cJvk8d4aVXFkwvilXyW7npFTrNURPD', 'asffsasfafswwa', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:09:57'),
(65, 'MUv3uG2QexdNhed2BXHCgBInR2EPLtC3es7toQakotRKY0kwJKHVRBrfWykF', 'asffsasfafswwa', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:09:58'),
(66, 'ZYiARxqiW7etQODHv5YSAtTUpXE30FeZkK5yi7CchvRMkb40b9jt9BLyay0q', 'asffsasfafswwa', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:09:59'),
(67, 'AuYFiBvz9rclnKf1NmJ96ZV6UyRv0n3SYGl6zkdWkWN428loewFMsvUCPVjK', 'asffsasfafswwa', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:09:59'),
(68, 'Ibaqvpy7yx4SRbN3DH839nBLgfAOmH8WCB02LDxS9zOcsHO7Sqa6Y8bzLOug', 'asffsasfafswwa', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:10:00'),
(69, '37lH54U9z91X8jQPf8jgEQ9IEHW97QwwUVjT7PFJL8dg5ZfTB0pX15q4m57t', 'asffsasfafswwa', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:11:27'),
(70, 'lDSpgjjlSAXq8IHUbDBOzrJfBJ4TQ5hy7hoHqXyDmRoh2BlvwVZ9ToGo2N2t', 'sf', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:12:12'),
(71, 'fbgM1orWwBXzLq3cRfqwaXpW7HX2DLbovwUqcMbcWpxveFF1zhQUFpXXH7xG', 'lol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:12:41'),
(72, 'yk8xQx3LMGzSoqDOsbxvG2O5QlEZZUHI0VQmubeo7x6scQCf7ASui1z3mE4x', 'lol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:12:45'),
(73, 'niGSQkx1KTUPBvwi54VYKakozbffdphn0Rm57R5VLquGqa2hnVXH4rTxCrLm', 'lol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:13:17'),
(74, 'dt588ZbB0CEYAw9SPgRlAnCy8hfZ9aXhlDuBqp3cVPvJIZfptuTQjkiVhTTq', 'awd', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:13:21'),
(75, 'NCUJ3lzVJcD4j76pgInUvpu4CF4AajOMzhxncIJpFIz6C9Wb3LIkpLaJS7jM', 'awd', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:13:24'),
(76, 'Ev8UtwZ2PAi7N50Sxd3b4N0XRAmVc59z15gCCI1jFsGfZ8PUnp4OaaAJzJwi', 'dsas', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:13:33'),
(77, '1m5lVm8HPEjL6eoFHMINVw4fOsZV9Trg09hazYDlaaWBac9Hrk7Z9xlZc6Mi', 'dsas', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:13:36'),
(78, 'zgSIct0mPJyeO06elHXOoyDkkbIHDuqP1JFnaDv1uWhHVNUfMKQjPrVO7uu0', 'fsfd', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31 04:18:40'),
(79, 'mtkT8uhSL72LJgeZpgKOHVYrjR0CO72OaAeUr37rqEwOqfu1rzAvfFYnxMNZ', 'fsfd', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2023-01-01 05:59:39'),
(80, '2d5p9UnrFzY2BtgDHnnqk39MoCUXbgrLJbkPs1VVn40IinRxBvab8lZYrBaj', 'fsfd', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2023-01-01 06:18:44'),
(81, '0S17sSDGfSYfNvHMe0aFixmC2vlmRXm2PtNRh0iQ1JXQn6W7TJOO4FCXTe0c', 'hello', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2023-01-01 06:21:24'),
(82, 'lC9IUywTv9rb9znAxTVgpAmW7jFxgRLa41yPvGbQIOCRHAV7qrzkCRE1LcTu', 'hello', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2023-01-01 06:23:26'),
(83, 'NirhPdIqL3qopvbsNRj4SiiBVbCgbyrxoo9rkoP9kgQn6G2qVCO7KifEyzyC', 'lol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2023-01-01 06:23:34'),
(84, '80F6y7KbcFJKfVlje3BSpllY2lokkmLCMNDNNhWg31z4DZ3utDDt1dW0IL3h', 'yes', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2023-01-01 06:32:50'),
(85, 'VyaxoCliDScbwq3cjdowjMXv1QVNvdKMTyLxhIlq2pFf2QLvJav0Y0nJUjw0', 'its cool yeah', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2023-01-01 06:32:58'),
(86, 'NZeR2sIh5XwwuPyAxK1KUegJKshRNWVatXlierkcZvc1ZVBANEUJF2i30hgI', 'Moin', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2023-01-01 06:44:54'),
(87, 'FrrULJkq54MEPVlOYjPvumeG3V8mZcq0orDPlxryx0nc2szB87fka5U9E0wk', 'Was geht', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2023-01-01 06:44:58'),
(88, 'rvz8yLFejm0M17EHNLZxkNIdglec9fHkS6cjSABnKuK0AJ70o9AZVoxnDCvg', 'Bei euch', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2023-01-01 06:45:02'),
(89, 'AoQnkC5Z84JbssJ3KgxzFmWVWoHHf2npiqDEpygUhsYaPS4izPwo4BGol5c8', 'lol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2023-01-01 06:45:06'),
(90, 'Phc2f9pS9GvQ8flXjrCNzIO2KCNbPGGlGUjetJHGIvkCv5b4yLNfUGiUe2Sl', 'Hello', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2023-01-01 06:45:11'),
(91, 'uCPrMnJ4ZZfAtfDsoWe5CpGksOzJdmDwpXVI3ZdiqX1BYqqe5XsTqCEV6T8S', 'lol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2023-01-04 02:35:24'),
(92, 'JFONbkQdtKG9HM1P1eLE6USUuUTuVlEuJAvYyUzth0tAxasmjBW3Q3JFBQxK', 'Moin', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'FYGDnoLSWQB4d33ZeiypaDducvG4nDixtPZv1GXs2luCwrLeLg1NDphG3tBA', '2023-01-04 02:37:24'),
(93, 'Fw9FHQzKVrRo3ZU1o40zdCPnx2gf7NItXkUt5gDYoWwQPmszSdtrbCX4VaZK', 'Peace', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', '2ecNvXqmKgUfRRjajPEJawY21PX9Y1Wp5WW2tFZOwUZGWmWbFnYw7ypo13SC', '2023-01-04 03:43:01'),
(94, 'lkuAivlMhQVM94nlXR64achtsC6OI9Uc2n2sBmdGTndTooRIZOg5gz4KRrPr', 'lol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'z8WZ2o1kC5LWHBQKdaXKRk1hhRzWtWOdEmolHAgI0RIdYLd124N1SQBUOhS8', '2023-01-04 03:59:21'),
(95, 'PW62jZas7K03yMW2YrAThfOVtXIorNbv69TaMp0pwDEn0YmcsZdSqwogfu0I', 'lol', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'vtlgDn7QH3h0pbRQ97gLunOG0KywEOO6sMxMyfcu8FnNPrBC0ia1WQEscMTN', '2023-01-04 04:13:40'),
(96, 'd3RdgZ6QuCriX5CvMhNL96C5CEPyOlgy46ZdXvxqKP0v9ScxD6qfFeuOJBzq', 'Moin', 'qCDQmBuobdIzkGJFvxtTSc7FvCFgR9wa', '2ecNvXqmKgUfRRjajPEJawY21PX9Y1Wp5WW2tFZOwUZGWmWbFnYw7ypo13SC', '2023-01-05 02:59:06'),
(97, '4G5LUjLSdOKGV5lePhGkzja11uQKi3TVkCL6WmZCa5CCuroLdjqeGlopgsbi', 'Was geht', 'qCDQmBuobdIzkGJFvxtTSc7FvCFgR9wa', '2ecNvXqmKgUfRRjajPEJawY21PX9Y1Wp5WW2tFZOwUZGWmWbFnYw7ypo13SC', '2023-01-05 02:59:09'),
(99, 'xTVPNOuZy32a2LGI3zPJqAT8daEtgwKCsB2uNfmBrD6FZnIFgyDuIjpoBe7P', 'lol', 'Unknown', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2023-01-19 06:02:26'),
(100, 'tbZrAHtYsj357vx4DTt0MHMawf0k3sWrY5eHVvZydkFKjMlnAgzYUuuvhyHa', 'lol', 'Unknown', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2023-01-19 06:02:34'),
(101, 'NbNsYGrh9QsIBOytZPynjfQJqiLBO0HDmVgDtxINMS4HwHN2Aakp1OEiaQZr', 'Cool', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'phaIeqGxluJYNoYAY704K1DNDfrXAw5iBxbNsydsQs1L0DtY2gfwS9cRYfig', '2023-01-19 06:55:08'),
(102, '83xEtnoCEnzXqbij6qJXJ61FHTaxxVcbsedD1jgjLm1VxVEaFPrVoMXqLHg7', 'l+', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2023-01-29 06:23:06'),
(103, '45bc9380-a177-11ed-9634-e1277e4cd9dd', 'test', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2023-01-31 14:55:16'),
(104, '8e8def00-a177-11ed-8afa-3f39fa91caec', 'Moin!', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2023-01-31 14:57:18'),
(105, '1fab4c90-a17c-11ed-93ec-2bce3c0e198d', 'moin', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', '0mqEbCin0UGJHOHFAA15pTrxIC2RE38FtQucTg7E69O42o9YPivoJ4FMYFOw', '2023-01-31 15:29:59'),
(106, 'e51e7350-a17f-11ed-80c0-d11bf24d503a', 'Moin', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'CTcVVldeQL2DVfwRPqYQtP0jpD51IhcCZtNNgJgc02xQZtlDsB3hCpj5zzBZ', '2023-01-31 15:56:59'),
(107, 'eaca7a10-a17f-11ed-892c-dbcbc8855354', 'Was geht ', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'CTcVVldeQL2DVfwRPqYQtP0jpD51IhcCZtNNgJgc02xQZtlDsB3hCpj5zzBZ', '2023-01-31 15:57:09'),
(108, '11eaab10-a19e-11ed-be9c-eb870dfadc84', 'Hallo', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', '2ecNvXqmKgUfRRjajPEJawY21PX9Y1Wp5WW2tFZOwUZGWmWbFnYw7ypo13SC', '2023-01-31 19:32:59'),
(109, '7d7a86c0-a19e-11ed-a077-6160ce0250ff', 'Good Job', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', '2ecNvXqmKgUfRRjajPEJawY21PX9Y1Wp5WW2tFZOwUZGWmWbFnYw7ypo13SC', '2023-01-31 19:36:00'),
(110, 'tqiHDbvTUYXjN5tfKrMwMbPHrSBocgZ6nDV3CmOVmJe2fTmC46fudPTMTdE3', 'S Gehtn', 'UO8LUlbe8gNCIFpahKwOLFNxPn6flJ2a', 'fVfoyHB80H1vfip2bamZNQQ89ibgL8jkjOvyNqxufw0FdtDgX9R9CUuOZ86T', '2023-02-01 06:25:22'),
(111, '2b63fa50-a271-11ed-a6fb-3bb289c8f4ee', 'Moin brudi', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'fVfoyHB80H1vfip2bamZNQQ89ibgL8jkjOvyNqxufw0FdtDgX9R9CUuOZ86T', '2023-02-01 20:44:06');

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
(24, 'SdOWMLpuonR2wTlobR2V1UEUqnLVmqFJQVeqIk1H0nmTj0qWajuJIwU7JU1b', 'Fototestung', '2022-12-30 03:05:34', '2022-12-31 00:00:00', '2022-12-30 03:05:34', 'Hannover', 'PGpdLHNr0Wpf8hia7MjsgJ19uCbTb9xx5WKA3w0bWqpeLYbPE7fhyoRSeppw', '', '', 'Casual', 0, 'Ich teste Fotos', 'iFSVhPAKGKHcHpwC7obctMYjG29GGGsb'),
(25, 'FYGDnoLSWQB4d33ZeiypaDducvG4nDixtPZv1GXs2luCwrLeLg1NDphG3tBA', 'tester', '2022-12-30 04:00:57', '2023-01-01 00:00:00', '2022-12-30 04:00:57', 'Hannover', 'Dm91oA9okwxtGhe0F0MqFpIz3UK6bTLFGES3zcMCWnQJu9WiK5ooWv9ckubQ', '', '', 'Casual', 0, 'Teste', 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q'),
(26, '2ecNvXqmKgUfRRjajPEJawY21PX9Y1Wp5WW2tFZOwUZGWmWbFnYw7ypo13SC', 'testung', '2023-01-04 03:04:34', '2023-01-27 00:00:00', '2023-01-04 03:04:34', 'Hannover', '0MtlldhZ54FeJhRJaOlwiZlWqJicI4BIp0trDSIUCIK8vxYsJ5kDrdZpHCrB', '', '', 'Casual', 0, 'Eventdatum', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf'),
(27, 'WefLRCBuNEeUZtiNHiB7HSE28skTkK0nS6CIvSfy008iCx0DGDlnMLjM0WGM', 'Roles testung', '2023-01-04 03:55:41', '2023-01-29 00:00:00', '2023-01-04 03:55:41', 'Hannover', '3L23OwGZvpTlW7YRsRxwA3QBJ3pnOwf6BTAdKKAxUS1vAMM06phuISjiD5Oa', '', '', 'Casual', 0, 'Testing roles', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf'),
(28, 'z8WZ2o1kC5LWHBQKdaXKRk1hhRzWtWOdEmolHAgI0RIdYLd124N1SQBUOhS8', 'testung', '2023-01-04 03:57:20', '2023-01-27 00:00:00', '2023-01-04 03:57:20', 'Hannover', 'FYBb9hfGm69oihjWC6lZUjbzC3YwapTNcrLyPKlhqd4ANtPEm7XV7myaizOD', '', '', 'Casual', 0, 'Testing something', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf'),
(29, 'kZtKpnqDpG9RzrTqMFfiWB86Cdy4Lk5mzPvLsZduFtYIyXFf0QEnrGd0CWnZ', '2', '2023-01-04 04:12:03', '2023-01-29 00:00:00', '2023-01-04 04:12:03', 'Hannover', 'mtDRb6TfuEIauTk2BH24JhfjanqlNyXxTmw3H7NVLoXv2kyu5TkGDLQ445TC', '', '', 'Casual', 0, 'Testung Roles 2', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf'),
(30, 'vtlgDn7QH3h0pbRQ97gLunOG0KywEOO6sMxMyfcu8FnNPrBC0ia1WQEscMTN', '3', '2023-01-04 04:13:29', '2023-01-29 00:00:00', '2023-01-04 04:13:29', 'Hannover', 'I260akOsAAGPg9N9jmDgueJXIlj18YXv4ewI4kksfWYBzRhJWwNELvFDZPuM', '', '', 'Casual', 0, 'Testung Roles 3', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf'),
(31, 'OKMmjfWneRbPVzUGfWujlRBRpBtzML6bwXZCYXxoeOUf0NYuFHRNCFY7tPeK', 'nuts', '2023-01-04 07:55:50', '2023-01-01 00:00:00', '2023-01-04 10:48:12', 'Hannover', 'kWeVGMymXK4PW1DjB4CilDtXlIiutqyMBQWBGwzflVBriSrOITS5jOoZTXbE', '', '', 'Casual', 0, 'Moin', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf'),
(32, '6cTmh33G6Q1JLwknN1wbCNSrDUcgInMSK2gvfIdctHtchRjXfWaPDPByZTpz', 'funcs testung', '2023-01-05 04:31:42', '2023-01-27 00:00:00', '2023-01-05 04:31:42', 'Hannover', 'U6whOwPoXpevdEFXU17LVwllyTl3wLfYadJv3OeTRf95TtoyzyPRl05Vsnjp', '', '', 'Casual', 0, 'Admin Funcs', 'qCDQmBuobdIzkGJFvxtTSc7FvCFgR9wa'),
(33, 'phaIeqGxluJYNoYAY704K1DNDfrXAw5iBxbNsydsQs1L0DtY2gfwS9cRYfig', 'ok', '2023-01-19 05:52:07', '2023-01-27 00:00:00', '2023-01-19 06:54:23', 'Frankfurt', 'wJxMJzpz9Uxxv3NguyEKPBs47Ph2HN2PUb0gIVpIb8X9KbV54kZ50N5oMkPL', '', '', 'Casual', 0, 'Bestes Event', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx'),
(34, 'CTcVVldeQL2DVfwRPqYQtP0jpD51IhcCZtNNgJgc02xQZtlDsB3hCpj5zzBZ', 'V', '2023-01-19 06:56:20', '2023-01-20 00:00:00', '2023-01-19 06:56:20', 'Erfurt', 'AjJRKqX8Xuzk2S3WMatmOHXu23xoa7zYJSz5FKp4SbJYmpod81zH5Pqvny5O', '', '', 'Casual', 0, 'Erfurt lebt', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event_items`
--

CREATE TABLE `event_items` (
  `id` int(11) NOT NULL,
  `event_item_id` varchar(60) NOT NULL,
  `item_id` varchar(60) NOT NULL,
  `event_id` varchar(60) NOT NULL,
  `item_name` varchar(128) NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  `comment` text NOT NULL,
  `amount_type` varchar(12) NOT NULL,
  `added_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `event_items`
--

INSERT INTO `event_items` (`id`, `event_item_id`, `item_id`, `event_id`, `item_name`, `added_by`, `amount`, `comment`, `amount_type`, `added_date`) VALUES
(1, 'mp5MgwSnd24459Y4b5HGppNw2EMGuK2SdA7FtFg8sgD3o5dRJIBEVtHIYIGt', 'ZWuQwrIX4G1c30lmtkpF0hD86Rkxn8S6TydQEvpeEbO6uUEYc4aK2Zn1jz6m', 'FYGDnoLSWQB4d33ZeiypaDducvG4nDixtPZv1GXs2luCwrLeLg1NDphG3tBA', 'Cola', 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 3, '', 'l', '2022-12-30 06:56:35'),
(2, 'ebYcd1nMqemQlHVNjYdZwNu6CJJKzcUmqUI8i8XBtl84xIeYEvpvn411cBtl', 'ZWuQwrIX4G1c30lmtkpF0hD86Rkxn8S6TydQEvpeEbO6uUEYc4aK2Zn1jz6m', 'FYGDnoLSWQB4d33ZeiypaDducvG4nDixtPZv1GXs2luCwrLeLg1NDphG3tBA', 'Cola', 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 2, '', 'l', '2022-12-30 09:46:19'),
(3, 'cVhYFxOwdabi7Zvb7hjxmqwk0YhCaEmcNWHk11CHNYGwyr6DSHFWStj0aQRr', 'ZWuQwrIX4G1c30lmtkpF0hD86Rkxn8S6TydQEvpeEbO6uUEYc4aK2Zn1jz6m', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', 'Cola', 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 3, '', 'l', '2022-12-30 09:50:23'),
(4, 'vD0FOtTGXkRaPhH62nn54ZiiXEst9fqqs9gFrHF0wIBeVW0M6n0wGH3VHPE9', 'aneR1zsq0j1v60X2LyTCmGJNPTvyBIzMM47ZGjWN88GBKVlc9ZTvp19NUzHw', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', 'Pommes', 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 5087, '', 'l', '2022-12-30 10:22:53'),
(5, 'b1323H6asCwkMw5VexrKTUAhYah1oGxSHQtkICIpewpjjv6BflXo6ArFnOZc', 'ou2dwRYFXOtDuMdqS4vZbYHXHGCOFZK5DhWNJSGTvtTQd0FiW4Fnac9IaKaC', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', 'Popcorn', 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 2147483647, 'Habe viel auf lager LG', 'g', '2022-12-30 10:23:54'),
(6, 'RXijkFHljr0iKTjBsvfL5P0MDiJCG2G4CC0tldczFVDq8nMoamlORqsGfJPZ', 'pVRaHhPqq6PhLKrJhqATIQqUsYNHpg5wrWpKVqBZ22RmwckrSGo4Tgq2P3EI', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', 'Vodka', 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 10, '', 'l', '2022-12-30 10:29:18'),
(7, 'cBTcfEjd1PCGwoQ5HyQYheZ8d7dTiufEYw42cPGSCOjKaSZ36k4CDB8rs0P9', 'YoO9j0ESnvnPTQzkFqfVDWlMwsE16DG2TQ94sonF3t3wPF7VMAicd3vlPTyH', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', 'You know', 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 3, '', 'g', '2022-12-30 11:52:12'),
(8, 'odLRsKb7rIZYncci6Ukps9AzIECaf6B0wkpFGp8KKZqH6CmBkNKxJfzNmDz4', 'YoO9j0ESnvnPTQzkFqfVDWlMwsE16DG2TQ94sonF3t3wPF7VMAicd3vlPTyH', 'fVfoyHB80H1vfip2bamZNQQ89ibgL8jkjOvyNqxufw0FdtDgX9R9CUuOZ86T', 'You know', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 100, '', 'g', '2022-12-31 01:20:48'),
(9, 'aqnQeLc95vMa1nV6vDTGrRfabvifnq7YsiO3bgcMTFeLnCLkpbku69DLEGtl', 'ou2dwRYFXOtDuMdqS4vZbYHXHGCOFZK5DhWNJSGTvtTQd0FiW4Fnac9IaKaC', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', 'Popcorn', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 2, 'lol', 'g', '2023-01-04 02:36:07'),
(10, 'gkDyNg3dedosPSLBEE3VSE9t0664OUZQNRWH3sE1VyzFuWTwuqYT4yKMltVq', 'aneR1zsq0j1v60X2LyTCmGJNPTvyBIzMM47ZGjWN88GBKVlc9ZTvp19NUzHw', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', 'Pommes', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 3, 'f', 'g', '2023-01-04 02:36:24'),
(11, 'Sy0YM1ARtsZOkWPavjVLrlkoTMaOGvEVc5pxOHiuDZPDI2iD5nAHyc6duB7T', 'cbBqKVKLd3iirHclJ7HTWndxvNgmC2Ioqj85OeJOLfka7avIyOiaPgPHLeBG', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', 'Fanta', 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 10, 'lol', 'l', '2023-01-05 02:32:19'),
(12, '4ZofiikH4Kiu0MUiO3rikF2omgBTLwanYjpliK7OfnLVUXyeH5XJko59yFd3', 'YoO9j0ESnvnPTQzkFqfVDWlMwsE16DG2TQ94sonF3t3wPF7VMAicd3vlPTyH', 'phaIeqGxluJYNoYAY704K1DNDfrXAw5iBxbNsydsQs1L0DtY2gfwS9cRYfig', 'You know', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 20, '', 'g', '2023-01-19 05:52:30'),
(13, '4Xy9nfXSKCmUM9oDowRxJPuxIV8m28AhvLpRPPIYkY4GZ835bY59VH2bzpPf', 'ZWuQwrIX4G1c30lmtkpF0hD86Rkxn8S6TydQEvpeEbO6uUEYc4aK2Zn1jz6m', '6cTmh33G6Q1JLwknN1wbCNSrDUcgInMSK2gvfIdctHtchRjXfWaPDPByZTpz', 'Cola', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 900, '', '', '2023-01-19 05:53:58'),
(14, 'Ng10oQaKzRRY7QPvw3GbXaiBiE08QoQquqpa7EsgWIba8XZez97vQ47bxkKU', 'cbBqKVKLd3iirHclJ7HTWndxvNgmC2Ioqj85OeJOLfka7avIyOiaPgPHLeBG', 'phaIeqGxluJYNoYAY704K1DNDfrXAw5iBxbNsydsQs1L0DtY2gfwS9cRYfig', 'Fanta', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 43, '', 'l', '2023-01-19 06:07:33'),
(15, 'DIyhSXcZAX8q2JkO6HFefFGt5z7rz8I6GJfwW7FVBiikP00kFkl6rqrSXSn1', '16mmOrnHq4R23yWSHxCPyBPwVgTzpuC7yz3tXe5cOf8j9B4w6J97bUVh74dS', 'phaIeqGxluJYNoYAY704K1DNDfrXAw5iBxbNsydsQs1L0DtY2gfwS9cRYfig', 'Sprite', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 4, '', 'l', '2023-01-19 06:43:43'),
(16, 'EhtTf6mvAdmQXauMfLyAatT9feXeJBes2VfJRfZvHZy7RiTe9yTm7KxirFNE', 'YoO9j0ESnvnPTQzkFqfVDWlMwsE16DG2TQ94sonF3t3wPF7VMAicd3vlPTyH', 'phaIeqGxluJYNoYAY704K1DNDfrXAw5iBxbNsydsQs1L0DtY2gfwS9cRYfig', 'You know', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 54, '', 'g', '2023-01-19 06:54:58'),
(17, 'cN9xHeTtZNbrNNne7L7QURzSxdSsovgSqfTxYJzipK9qLwZQZkVoJRNQ3qCl', 'aneR1zsq0j1v60X2LyTCmGJNPTvyBIzMM47ZGjWN88GBKVlc9ZTvp19NUzHw', 'CTcVVldeQL2DVfwRPqYQtP0jpD51IhcCZtNNgJgc02xQZtlDsB3hCpj5zzBZ', 'Pommes', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 2, '', 'g', '2023-01-19 06:56:29'),
(18, '79e90b20-a168-11ed-adde-5f6f42e3f077', 'ZWuQwrIX4G1c30lmtkpF0hD86Rkxn8S6TydQEvpeEbO6uUEYc4aK2Zn1jz6m', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', 'Cola', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 5, 'gut', '', '2023-01-31 13:09:21'),
(19, 'a1bf1a40-a168-11ed-9d83-7115dbc3b5b4', 'ZWuQwrIX4G1c30lmtkpF0hD86Rkxn8S6TydQEvpeEbO6uUEYc4aK2Zn1jz6m', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', 'Cola', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 5, 'gut', '', '2023-01-31 13:10:28'),
(20, 'fc07e540-a168-11ed-a941-854e38097d72', 'ou2dwRYFXOtDuMdqS4vZbYHXHGCOFZK5DhWNJSGTvtTQd0FiW4Fnac9IaKaC', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', 'Popcorn', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 56, 'fdjdj', 'g', '2023-01-31 13:12:59'),
(21, '53edc6c0-a179-11ed-909f-e5698f9f731b', 'YoO9j0ESnvnPTQzkFqfVDWlMwsE16DG2TQ94sonF3t3wPF7VMAicd3vlPTyH', '6cTmh33G6Q1JLwknN1wbCNSrDUcgInMSK2gvfIdctHtchRjXfWaPDPByZTpz', 'You know', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 20, '', 'g', '2023-01-31 15:09:58'),
(22, '0e907f30-a180-11ed-96d6-31d615e726cd', 'cbBqKVKLd3iirHclJ7HTWndxvNgmC2Ioqj85OeJOLfka7avIyOiaPgPHLeBG', 'CTcVVldeQL2DVfwRPqYQtP0jpD51IhcCZtNNgJgc02xQZtlDsB3hCpj5zzBZ', 'Fanta', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 20, 'falls noch mehr gebraucht wird sagt bescheid', 'l', '2023-01-31 15:58:09'),
(23, '3315ba00-a19e-11ed-aa54-2b19ab3c5e9a', 'aneR1zsq0j1v60X2LyTCmGJNPTvyBIzMM47ZGjWN88GBKVlc9ZTvp19NUzHw', '2ecNvXqmKgUfRRjajPEJawY21PX9Y1Wp5WW2tFZOwUZGWmWbFnYw7ypo13SC', 'Pommes', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 3, 'mit kepchup und majon', 'g', '2023-01-31 19:33:55');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `uid_a` varchar(64) NOT NULL,
  `uid_b` varchar(64) NOT NULL,
  `friends_since` datetime NOT NULL,
  `pending` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `friends`
--

INSERT INTO `friends` (`id`, `uid_a`, `uid_b`, `friends_since`, `pending`) VALUES
(9, 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'UO8LUlbe8gNCIFpahKwOLFNxPn6flJ2a', '2023-02-01 21:48:54', 1),
(15, 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'MeQFVOn7HmsefnPY0hsxqbxNm84DUuve', '2023-02-03 02:37:46', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_id` varchar(60) NOT NULL,
  `created_by` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `groups`
--

INSERT INTO `groups` (`id`, `group_id`, `created_by`, `created_at`, `updated_at`, `title`, `description`, `thumbnail`) VALUES
(1, 'LQa8KWZ3Zn13lbfC9Lnk2R8B1bmySdj9d7jt7kC6q49FVsolN17qL0Xmw0c6', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', '2023-02-03 03:14:46', '2023-02-03 03:14:46', 'Beste Gruppe', 'thats nicec', 'bUcJSwHn3eZE5qkPBlT7ZFKPYEaDH3dMELWr0ecWuNmPKNjQ766l9dqJsDeu');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `group_members`
--

CREATE TABLE `group_members` (
  `id` int(11) NOT NULL,
  `group_id` varchar(60) NOT NULL,
  `uid` varchar(60) NOT NULL,
  `joined_at` datetime NOT NULL,
  `role` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'PGpdLHNr0Wpf8hia7MjsgJ19uCbTb9xx5WKA3w0bWqpeLYbPE7fhyoRSeppw', 'sbcf-default-avatar.png', 'png', 1, NULL, '', '2022-12-30 03:05:34'),
(2, 'Dm91oA9okwxtGhe0F0MqFpIz3UK6bTLFGES3zcMCWnQJu9WiK5ooWv9ckubQ', 'Unbenannt-51.png', 'png', 1, NULL, '', '2022-12-30 04:00:57'),
(3, 'WYVw9t1H3R80ogTOBArYwMtX6cULxDmwoRgt6Gy32VU7pVRwXu7cCrTwO7l5', '1149810.png', 'png', 1, NULL, 'itemPicture', '2022-12-30 04:43:23'),
(4, 'Gmt8PkiIg2CDHKjA3Gi3PlcszAAJJzmGhxgzgcAV1Cd1yQZOY0dJxoX1Eu38', 'popcorn.png', 'png', 1, NULL, 'itemPicture', '2022-12-30 10:15:51'),
(5, 'Ae2SnBl1NzNWmZE2KhUollJ7QYRzVKnvxuK1F9eHsK4k4l26VxjOhmpolm8p', 'popcorn.png', 'png', 1, NULL, 'itemPicture', '2022-12-30 10:17:21'),
(6, 'aZls6rwCYPydnXXHUURcIq2HNEB6sBsv2iaJwmnvVeJpOq2HYM5XYoicHF0W', 'pommes.png', 'png', 1, NULL, 'itemPicture', '2022-12-30 10:18:10'),
(7, 'd0hjbUoqWvrwOmUE1kc25VF28PCtxrcphlLf7QOKMpEjntUbbNoyzSKFExfm', 'fanta.png', 'png', 1, NULL, 'itemPicture', '2022-12-30 10:18:42'),
(8, 'DRORbySQs0rTZ11o1UrU7h8xc0j59Qk9R6IiSQvLmXwR5ZKm0uNbtfNUgqGw', 'soundbox.png', 'png', 1, NULL, 'itemPicture', '2022-12-30 10:19:28'),
(9, '3EAUVW87e5GXsRJGhVlMENjSn2AZEt9Dnm3gC1dMt6UZ40UDhxg1ULuoqWTs', 'sprite.png', 'png', 1, NULL, 'itemPicture', '2022-12-30 10:20:09'),
(10, 'iCQiC30R20UK1C7BPwMSlB4TIrfhSuQ5AbQrcXOFbAaHoHMsxJgZn7Cq9Hmz', 'vodka.png', 'png', 1, NULL, 'itemPicture', '2022-12-30 10:20:36'),
(11, '5I167cKloHCQN0ri6ZtyUOLlB0ZUCCLVqFuGYwYZ9eb2xKP415dpnpKtCQOH', '1010041.png', 'png', 1, NULL, 'itemPicture', '2022-12-30 10:21:09'),
(12, 'Ig8jgocFudKSlyfzP0KIn47AcVd7avjrkl5fSJmJCKl532R0y9m63fgJ7Zwi', 'cannabis.png', 'png', 1, NULL, 'itemPicture', '2022-12-30 11:50:09'),
(13, '5uPTEF1Kbb83SDh5OZziv6qdbtjg7VE3AyHX6CHAVaNvqozO05QJAW3qhpCz', 'popcorn.png', 'png', 1, NULL, 'profilePic', '2022-12-31 12:29:00'),
(14, '0MtlldhZ54FeJhRJaOlwiZlWqJicI4BIp0trDSIUCIK8vxYsJ5kDrdZpHCrB', 'cannabis.png', 'png', 1, NULL, 'thumbnail', '2023-01-04 03:04:34'),
(15, '3L23OwGZvpTlW7YRsRxwA3QBJ3pnOwf6BTAdKKAxUS1vAMM06phuISjiD5Oa', 'pommes.png', 'png', 1, NULL, 'thumbnail', '2023-01-04 03:55:41'),
(16, 'FYBb9hfGm69oihjWC6lZUjbzC3YwapTNcrLyPKlhqd4ANtPEm7XV7myaizOD', '1149810.png', 'png', 1, NULL, 'thumbnail', '2023-01-04 03:57:20'),
(17, 'mtDRb6TfuEIauTk2BH24JhfjanqlNyXxTmw3H7NVLoXv2kyu5TkGDLQ445TC', 'soundbox.png', 'png', 1, NULL, 'thumbnail', '2023-01-04 04:12:03'),
(18, 'I260akOsAAGPg9N9jmDgueJXIlj18YXv4ewI4kksfWYBzRhJWwNELvFDZPuM', '1010041.png', 'png', 1, NULL, 'thumbnail', '2023-01-04 04:13:29'),
(19, 'kWeVGMymXK4PW1DjB4CilDtXlIiutqyMBQWBGwzflVBriSrOITS5jOoZTXbE', 'sprite.png', 'png', 1, NULL, 'thumbnail', '2023-01-04 07:55:50'),
(20, 'yZmcf4r3YJw9B6Xu7vE8DoV4EPsOZDVZUQNDaVi9e9HRg269lMpTETBGXCqr', 'P1010622.JPG', 'JPG', 1, NULL, 'profilePic', '2023-01-05 02:51:42'),
(21, 'zTFje8J1TjHP2DiDsHlxnNhNHKNKyOPwiIJR7ieqzY4uAoPlfNFGTLxrBf1k', 'P1010622.JPG', 'JPG', 1, NULL, 'profilePic', '2023-01-05 02:52:17'),
(22, 'U6whOwPoXpevdEFXU17LVwllyTl3wLfYadJv3OeTRf95TtoyzyPRl05Vsnjp', 'P1010610.JPG', 'JPG', 1, NULL, 'thumbnail', '2023-01-05 04:31:42'),
(23, 'Du1KzIgU9U5d7tHHdEPDRo1eCzx3jH32CNMstUxsMMuvBsMPOyr1zZPWCfsF', 'P1010627.JPG', 'JPG', 1, NULL, 'profilePic', '2023-01-19 05:49:54'),
(24, 'wJxMJzpz9Uxxv3NguyEKPBs47Ph2HN2PUb0gIVpIb8X9KbV54kZ50N5oMkPL', 'P1010616.JPG', 'JPG', 1, NULL, 'thumbnail', '2023-01-19 05:52:07'),
(25, 'AjJRKqX8Xuzk2S3WMatmOHXu23xoa7zYJSz5FKp4SbJYmpod81zH5Pqvny5O', 'P1010624.JPG', 'JPG', 1, NULL, 'thumbnail', '2023-01-19 06:56:20'),
(26, 'lUOzuo8EsEgORkcBkwZ41LdkracYEBkoPbh6t7YYLGCrk8AUd2ItD0HjAJhR', 'IMG_20181026_212129.jpg', 'jpg', 1, NULL, 'profilePic', '2023-02-03 09:57:18'),
(27, 'xpjsKGEGM9sFit1f32DqEX3NsdcW3z4urcPmeMbwJcAEHD7Zxwgfua87QKXq', '20181213_083938.jpg', 'jpg', 1, NULL, 'profilePic', '2023-02-03 10:15:41'),
(28, '3Yiq4ucQoQOySyLeM0uDBV5ZSJpGA7fed1nVzSYHr0M6defrIEjtMAMUrDZ4', '20181213_083938.jpg', 'jpg', 1, NULL, 'profilePic', '2023-02-03 10:22:07'),
(29, '112EMO41f7N88eO0kQZjzhdM8lpsJTvaYMezYNfxKY3mjMIq5Vwhug9p5wkI', '20181213_083938.jpg', 'jpg', 1, NULL, 'profilePic', '2023-02-03 10:25:45'),
(30, 'bUcJSwHn3eZE5qkPBlT7ZFKPYEaDH3dMELWr0ecWuNmPKNjQ766l9dqJsDeu', '20181213_083938.jpg', 'jpg', 1, NULL, 'itemPicture', '2023-02-03 03:14:46');

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
  `item_id` varchar(60) NOT NULL,
  `amount_type` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `items`
--

INSERT INTO `items` (`id`, `name`, `type`, `createdAt`, `updatedAt`, `description`, `photoUrl`, `createdBy`, `accepted`, `item_id`, `amount_type`) VALUES
(1, 'Cola', 'drink', '2022-12-30 04:43:23', '2022-12-30 04:43:23', 'Erfrischendes Getränk', 'WYVw9t1H3R80ogTOBArYwMtX6cULxDmwoRgt6Gy32VU7pVRwXu7cCrTwO7l5', 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 1, 'ZWuQwrIX4G1c30lmtkpF0hD86Rkxn8S6TydQEvpeEbO6uUEYc4aK2Zn1jz6m', ''),
(2, 'Popcorn', 'food', '2022-12-30 10:17:21', '2022-12-30 10:17:21', 'Cockporn', 'Ae2SnBl1NzNWmZE2KhUollJ7QYRzVKnvxuK1F9eHsK4k4l26VxjOhmpolm8p', 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 1, 'ou2dwRYFXOtDuMdqS4vZbYHXHGCOFZK5DhWNJSGTvtTQd0FiW4Fnac9IaKaC', 'g'),
(3, 'Pommes', 'food', '2022-12-30 10:18:10', '2022-12-30 10:18:10', '', 'aZls6rwCYPydnXXHUURcIq2HNEB6sBsv2iaJwmnvVeJpOq2HYM5XYoicHF0W', 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 1, 'aneR1zsq0j1v60X2LyTCmGJNPTvyBIzMM47ZGjWN88GBKVlc9ZTvp19NUzHw', 'g'),
(4, 'Fanta', 'drink', '2022-12-30 10:18:42', '2022-12-30 10:18:42', '', 'd0hjbUoqWvrwOmUE1kc25VF28PCtxrcphlLf7QOKMpEjntUbbNoyzSKFExfm', 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 1, 'cbBqKVKLd3iirHclJ7HTWndxvNgmC2Ioqj85OeJOLfka7avIyOiaPgPHLeBG', 'l'),
(5, 'Soundbox', 'musicBox', '2022-12-30 10:19:28', '2022-12-30 10:19:28', '', 'DRORbySQs0rTZ11o1UrU7h8xc0j59Qk9R6IiSQvLmXwR5ZKm0uNbtfNUgqGw', 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 1, '7DcLTQdqotGCLe7QjBwNVSKL5x41YrZYaCLbJtLdSvb32ie86mDSmzpqamXc', 'pc'),
(6, 'Sprite', 'drink', '2022-12-30 10:20:09', '2022-12-30 10:20:09', 'Spirits', '3EAUVW87e5GXsRJGhVlMENjSn2AZEt9Dnm3gC1dMt6UZ40UDhxg1ULuoqWTs', 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 1, '16mmOrnHq4R23yWSHxCPyBPwVgTzpuC7yz3tXe5cOf8j9B4w6J97bUVh74dS', 'l'),
(7, 'Vodka', 'drink', '2022-12-30 10:20:36', '2022-12-30 10:20:36', '', 'iCQiC30R20UK1C7BPwMSlB4TIrfhSuQ5AbQrcXOFbAaHoHMsxJgZn7Cq9Hmz', 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 1, 'pVRaHhPqq6PhLKrJhqATIQqUsYNHpg5wrWpKVqBZ22RmwckrSGo4Tgq2P3EI', 'l'),
(8, 'Rum', 'drink', '2022-12-30 10:21:09', '2022-12-30 10:21:09', '', '5I167cKloHCQN0ri6ZtyUOLlB0ZUCCLVqFuGYwYZ9eb2xKP415dpnpKtCQOH', 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 1, 'p6ubBDQ7aM6pgVFDia6gjyFYe7YgS88CO03ykLMORMp29Fie57DUkFpKlpPT', 'l'),
(9, 'You know', 'gadget', '2022-12-30 11:50:09', '2022-12-30 11:50:09', 'you know if you know', 'Ig8jgocFudKSlyfzP0KIn47AcVd7avjrkl5fSJmJCKl532R0y9m63fgJ7Zwi', 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 1, 'YoO9j0ESnvnPTQzkFqfVDWlMwsE16DG2TQ94sonF3t3wPF7VMAicd3vlPTyH', 'g');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joinedevents`
--

CREATE TABLE `joinedevents` (
  `id` int(11) NOT NULL,
  `uid` varchar(60) NOT NULL,
  `event_id` varchar(60) NOT NULL,
  `joined_date` date NOT NULL,
  `role` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `joinedevents`
--

INSERT INTO `joinedevents` (`id`, `uid`, `event_id`, `joined_date`, `role`) VALUES
(2, 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'vtlgDn7QH3h0pbRQ97gLunOG0KywEOO6sMxMyfcu8FnNPrBC0ia1WQEscMTN', '2023-01-04', 'raver'),
(3, 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'OKMmjfWneRbPVzUGfWujlRBRpBtzML6bwXZCYXxoeOUf0NYuFHRNCFY7tPeK', '2023-01-04', 'admin'),
(4, 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'SdOWMLpuonR2wTlobR2V1UEUqnLVmqFJQVeqIk1H0nmTj0qWajuJIwU7JU1b', '2023-01-04', 'admin'),
(6, 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2023-01-04', 'raver'),
(7, 'qCDQmBuobdIzkGJFvxtTSc7FvCFgR9wa', '2ecNvXqmKgUfRRjajPEJawY21PX9Y1Wp5WW2tFZOwUZGWmWbFnYw7ypo13SC', '2023-01-05', 'raver'),
(8, 'qCDQmBuobdIzkGJFvxtTSc7FvCFgR9wa', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2023-01-05', 'raver'),
(9, 'qCDQmBuobdIzkGJFvxtTSc7FvCFgR9wa', 'SdOWMLpuonR2wTlobR2V1UEUqnLVmqFJQVeqIk1H0nmTj0qWajuJIwU7JU1b', '2023-01-05', 'admin'),
(10, 'qCDQmBuobdIzkGJFvxtTSc7FvCFgR9wa', '6cTmh33G6Q1JLwknN1wbCNSrDUcgInMSK2gvfIdctHtchRjXfWaPDPByZTpz', '2023-01-05', 'admin'),
(11, 'qCDQmBuobdIzkGJFvxtTSc7FvCFgR9wa', 'z8WZ2o1kC5LWHBQKdaXKRk1hhRzWtWOdEmolHAgI0RIdYLd124N1SQBUOhS8', '2023-01-05', 'raver'),
(23, 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'CTcVVldeQL2DVfwRPqYQtP0jpD51IhcCZtNNgJgc02xQZtlDsB3hCpj5zzBZ', '2023-01-31', 'User'),
(24, 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', '6cTmh33G6Q1JLwknN1wbCNSrDUcgInMSK2gvfIdctHtchRjXfWaPDPByZTpz', '2023-01-31', 'User'),
(25, 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2023-01-31', 'User'),
(26, 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', '2ecNvXqmKgUfRRjajPEJawY21PX9Y1Wp5WW2tFZOwUZGWmWbFnYw7ypo13SC', '2023-01-31', 'User'),
(27, 'UO8LUlbe8gNCIFpahKwOLFNxPn6flJ2a', 'fVfoyHB80H1vfip2bamZNQQ89ibgL8jkjOvyNqxufw0FdtDgX9R9CUuOZ86T', '2023-02-01', 'raver'),
(28, 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'fVfoyHB80H1vfip2bamZNQQ89ibgL8jkjOvyNqxufw0FdtDgX9R9CUuOZ86T', '2023-02-01', 'User'),
(29, 'MeQFVOn7HmsefnPY0hsxqbxNm84DUuve', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2023-02-03', 'raver'),
(30, 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'phaIeqGxluJYNoYAY704K1DNDfrXAw5iBxbNsydsQs1L0DtY2gfwS9cRYfig', '2023-02-03', 'raver');

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
(34, 'iFSVhPAKGKHcHpwC7obctMYjG29GGGsb', 'SdOWMLpuonR2wTlobR2V1UEUqnLVmqFJQVeqIk1H0nmTj0qWajuJIwU7JU1b', '2022-12-30'),
(35, 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 'SdOWMLpuonR2wTlobR2V1UEUqnLVmqFJQVeqIk1H0nmTj0qWajuJIwU7JU1b', '2022-12-30'),
(36, 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 'FYGDnoLSWQB4d33ZeiypaDducvG4nDixtPZv1GXs2luCwrLeLg1NDphG3tBA', '2022-12-30'),
(37, 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-30'),
(38, 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2022-12-31'),
(39, 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'SdOWMLpuonR2wTlobR2V1UEUqnLVmqFJQVeqIk1H0nmTj0qWajuJIwU7JU1b', '2022-12-31'),
(40, 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', '8b1O5CEhMq1AkizxqaI5zVVuID4jdO6XPmX7EpgWIkGBxN811gUNPBdaBH2M', '2022-12-31'),
(43, 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'fVfoyHB80H1vfip2bamZNQQ89ibgL8jkjOvyNqxufw0FdtDgX9R9CUuOZ86T', '2022-12-31'),
(44, 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', '0ZLxs3Lupaz8gKtlsyE3ByksPAxafaX6ARBgV6ODUROWR3lXsBU7yuSMotVp', '2023-01-01'),
(48, 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', '2ecNvXqmKgUfRRjajPEJawY21PX9Y1Wp5WW2tFZOwUZGWmWbFnYw7ypo13SC', '2023-01-04'),
(49, 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'z8WZ2o1kC5LWHBQKdaXKRk1hhRzWtWOdEmolHAgI0RIdYLd124N1SQBUOhS8', '2023-01-04'),
(50, 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'vtlgDn7QH3h0pbRQ97gLunOG0KywEOO6sMxMyfcu8FnNPrBC0ia1WQEscMTN', '2023-01-04'),
(51, 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'OKMmjfWneRbPVzUGfWujlRBRpBtzML6bwXZCYXxoeOUf0NYuFHRNCFY7tPeK', '2023-01-04'),
(55, 'qCDQmBuobdIzkGJFvxtTSc7FvCFgR9wa', '2ecNvXqmKgUfRRjajPEJawY21PX9Y1Wp5WW2tFZOwUZGWmWbFnYw7ypo13SC', '2023-01-05'),
(56, 'qCDQmBuobdIzkGJFvxtTSc7FvCFgR9wa', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2023-01-05'),
(57, 'qCDQmBuobdIzkGJFvxtTSc7FvCFgR9wa', 'z8WZ2o1kC5LWHBQKdaXKRk1hhRzWtWOdEmolHAgI0RIdYLd124N1SQBUOhS8', '2023-01-05'),
(76, 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'CTcVVldeQL2DVfwRPqYQtP0jpD51IhcCZtNNgJgc02xQZtlDsB3hCpj5zzBZ', '2023-01-31'),
(77, 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2023-01-31'),
(78, 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', '2ecNvXqmKgUfRRjajPEJawY21PX9Y1Wp5WW2tFZOwUZGWmWbFnYw7ypo13SC', '2023-01-31'),
(79, 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'fVfoyHB80H1vfip2bamZNQQ89ibgL8jkjOvyNqxufw0FdtDgX9R9CUuOZ86T', '2023-02-01'),
(80, 'MeQFVOn7HmsefnPY0hsxqbxNm84DUuve', 'ydvaUZFfFefw28xgd8wHTozM1uM3M34gtBIsEP9hlmFYWPQClb6WOsX3DjcV', '2023-02-03');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `notification_id` varchar(60) NOT NULL,
  `uid` varchar(60) NOT NULL,
  `type` varchar(24) NOT NULL,
  `content` text NOT NULL,
  `added_date` datetime NOT NULL,
  `destination_id` varchar(64) NOT NULL,
  `destination_type` varchar(16) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `notifications`
--

INSERT INTO `notifications` (`id`, `notification_id`, `uid`, `type`, `content`, `added_date`, `destination_id`, `destination_type`, `status`) VALUES
(3, 'f315ea50-a270-11ed-8867-fba8128b9cc9', 'UO8LUlbe8gNCIFpahKwOLFNxPn6flJ2a', 'info', 'Unfortunately peterlustig declined your friend request, go ahead and search some new friends!', '2023-02-01 20:42:31', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'profile', 0),
(5, '5ed93210-a271-11ed-875c-ff18fb4b331a', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'info', 'GrosserPimmel69 just accepted your friend request, you can begin a new friendship now!', '2023-02-01 20:45:32', 'UO8LUlbe8gNCIFpahKwOLFNxPn6flJ2a', 'profile', 0),
(6, '6b5db1a0-a271-11ed-b530-950e04704c47', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'info', 'Unfortunately GrosserPimmel69 declined your friend request, go ahead and search some new friends!', '2023-02-01 20:45:53', 'UO8LUlbe8gNCIFpahKwOLFNxPn6flJ2a', 'profile', 0),
(7, 'ef046440-a271-11ed-bd3c-397e1400e3d4', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'info', 'Unfortunately GrosserPimmel69 declined your friend request, go ahead and search some new friends!', '2023-02-01 20:49:34', 'UO8LUlbe8gNCIFpahKwOLFNxPn6flJ2a', 'profile', 0),
(9, '05607660-a273-11ed-95ff-1b60656f4b20', 'UO8LUlbe8gNCIFpahKwOLFNxPn6flJ2a', 'info', 'peterlustig just accepted your friend request, you can begin a new friendship now!', '2023-02-01 20:57:21', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'profile', 0),
(10, '232f3af0-a273-11ed-9b26-3f22d2859f56', 'UO8LUlbe8gNCIFpahKwOLFNxPn6flJ2a', 'info', 'Unfortunately peterlustig declined your friend request, go ahead and search some new friends!', '2023-02-01 20:58:11', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'profile', 0),
(12, '7b6a3490-a273-11ed-a64a-6979dffbbd44', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'info', 'GrosserPimmel69 just accepted your friend request, you can begin a new friendship now!', '2023-02-01 21:00:39', 'UO8LUlbe8gNCIFpahKwOLFNxPn6flJ2a', 'profile', 0),
(13, '88f3c810-a273-11ed-bb85-1180e0dcfe7e', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'info', 'Unfortunately GrosserPimmel69 declined your friend request, go ahead and search some new friends!', '2023-02-01 21:01:02', 'UO8LUlbe8gNCIFpahKwOLFNxPn6flJ2a', 'profile', 0),
(15, '26cd2cc0-a274-11ed-9893-97dff7ff06da', 'UO8LUlbe8gNCIFpahKwOLFNxPn6flJ2a', 'info', 'peterlustig just accepted your friend request, you can begin a new friendship now!', '2023-02-01 21:05:26', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'profile', 0),
(16, '2f99d470-a274-11ed-9d3e-d15800e734c1', 'UO8LUlbe8gNCIFpahKwOLFNxPn6flJ2a', 'info', 'Unfortunately peterlustig declined your friend request, go ahead and search some new friends!', '2023-02-01 21:05:41', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'profile', 0),
(18, 'ffc46670-a278-11ed-8f11-b5aecac8052b', 'qCDQmBuobdIzkGJFvxtTSc7FvCFgR9wa', 'info', 'peterlustig just accepted your friend request, you can begin a new friendship now!', '2023-02-01 21:40:08', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'profile', 0),
(19, '1a6a73c0-a279-11ed-b77a-611ddd087b66', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'info', 'Unfortunately HannaHavanna declined your friend request, go ahead and search some new friends!', '2023-02-01 21:40:53', 'qCDQmBuobdIzkGJFvxtTSc7FvCFgR9wa', 'profile', 0),
(21, '38cc3410-a27a-11ed-9213-c7bef911991f', 'UO8LUlbe8gNCIFpahKwOLFNxPn6flJ2a', 'friend_request', 'peterlustig sended you an friend request, would you like to accept that and begin a new great event friendship?', '2023-02-01 21:48:54', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'profile', 0),
(25, 'Gzag88CfRFEKc3YzHUFTDsgdTzQR8XU9iFqTWYUYl2dOfw0VeR2fnfbvZOIz', 'qCDQmBuobdIzkGJFvxtTSc7FvCFgR9wa', 'info', 'peterlustig just accepted your friend request, you can begin a new friendship now!', '2023-02-03 02:36:44', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'profile', 1),
(26, 'i9YE85RZxmFEfnez03fkMNpXOqXMdlgHDhFjKNxLDUV3q0H8QVqB7poBsJZO', 'MeQFVOn7HmsefnPY0hsxqbxNm84DUuve', 'info', 'peterlustig just accepted your friend request, you can begin a new friendship now!', '2023-02-03 02:37:30', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'profile', 1),
(27, '9A1N4SLT2p6BHGNTDqFNg7N19IkdHkii8ea9kXvo9dDiDA2tAmIT7i8XKBLB', 'MeQFVOn7HmsefnPY0hsxqbxNm84DUuve', 'friend_request', 'peterlustig sended you an friend request, would you like to accept that and begin a new great event friendship?', '2023-02-03 02:37:46', 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'profile', 1);

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
(16, 'iFSVhPAKGKHcHpwC7obctMYjG29GGGsb', 'Hannover', '2022-12-31', 'business_informatics', 1, '4vvRPaKnerbB0ZfAor9hKCSd8Q7V9llRSKJ2pMAfm9bj8xQ4Do0T08OHP79B', '2022-12-30 12:48:18', '2022-12-30 12:48:18', '$2y$10$NVowKCwuRBGro6zTBhpJnu0rfqVMHCYDmoI/5GOclGJ9UuWi/IZei', 1, 'fff@ff.de', '', 'bruderjones'),
(17, 'v9PcW4rKvewVPNNIf8F9SP6iHzUecw9Q', 'Hannover', '2023-01-01', 'computer_science', 1, 'Unbenannt-51.png', '2022-12-30 03:53:19', '2022-12-30 03:53:19', '$2y$10$d/oamMSCR8Fygpj16vIonuBHuaP1LQGXHLV8OwDN3yMtdLtOaRoxC', 1, 'ranger@ranger.de', '', 'RANgerr'),
(18, 'vNjjjKtMC38h0luVZVl3lThuNKNcHLhf', 'Hannover', '2023-01-01', 'computer_science', 1, '5uPTEF1Kbb83SDh5OZziv6qdbtjg7VE3AyHX6CHAVaNvqozO05QJAW3qhpCz', '2022-12-31 12:29:00', '2022-12-31 12:29:00', '$2y$10$ufdCG2nnDurXFHYhdjyTV.E3YDdlZVXQlJwjNg69xkUdJJfj.VFEG', 1, 'popcorn@corn.de', '', 'Popcorn'),
(19, 'NPLVt3YoXAXsGYffEXwgecvx0ZHvTFhi', 'Hannover', '2023-01-01', 'computer_science', 1, 'yZmcf4r3YJw9B6Xu7vE8DoV4EPsOZDVZUQNDaVi9e9HRg269lMpTETBGXCqr', '2023-01-05 02:51:42', '2023-01-05 02:51:42', '$2y$10$sYzDwlAkwqJCZT6mGMqCd.HoIoE8zRzGV/O8y2fjCQrvN9urbgYeS', 1, 'hanni@hanni.de', '', 'Hanni'),
(20, 'qCDQmBuobdIzkGJFvxtTSc7FvCFgR9wa', 'Hannover', '2022-12-28', 'computer_science', 1, 'zTFje8J1TjHP2DiDsHlxnNhNHKNKyOPwiIJR7ieqzY4uAoPlfNFGTLxrBf1k', '2023-01-05 02:52:17', '2023-01-05 02:52:17', '$2y$10$2KKu2m6z/nRY6jBDlxEzx.Car147qcAlRi5O/plTMECgPTjeRETWO', 1, 'havanna@hannah.de', '', 'HannaHavanna'),
(21, 'NCHDRhLkEpu9clS1hRKWPRygSEjFdfmx', 'Hannover', '2002-10-02', 'computer_science', 1, 'Du1KzIgU9U5d7tHHdEPDRo1eCzx3jH32CNMstUxsMMuvBsMPOyr1zZPWCfsF', '2023-01-19 05:49:55', '2023-01-19 05:49:55', '$2y$10$lLniJCP05HX3CQ7epKqPee4LMRPogf4jMjygVrew5/oY01TMEkRhK', 1, 'peter@peterpeter.de', '', 'peterlustig'),
(22, 'Wgqx8wdtNhGQuVK4iGJPXOg1D9Vm6vgL', 'Hannover', '2004-12-02', 'business_informatics', 1, 'lUOzuo8EsEgORkcBkwZ41LdkracYEBkoPbh6t7YYLGCrk8AUd2ItD0HjAJhR', '2023-02-03 09:57:18', '2023-02-03 09:57:18', '$2y$10$X5zFdqQg8oRraOmPg2D1JuenlphmnqOCvwpF/ytCGeFu8KpPkLUCa', 1, 'muser@peter.de', '', 'PeterMuser'),
(23, 'PrQqbnVGZquL71bvMWVwJykyLCEByifF', 'Hannover', '2002-02-12', 'business_informatics', 1, 'xpjsKGEGM9sFit1f32DqEX3NsdcW3z4urcPmeMbwJcAEHD7Zxwgfua87QKXq', '2023-02-03 10:15:41', '2023-02-03 10:15:41', '$2y$10$lsj7oNrwDL1IkpyWcSCJVuXMwtNOCy7uzCYmlQa.PRthyQoF0QK0C', 1, 'fdsnjiksdfjsdfjs@fdsnjiksdfjsdfjs.de', '', 'fdsnjiksdfjsdfjs'),
(24, 'H0HABHZ51NvFi1Am1cyq213lyapSrRse', 'Hannover', '2002-02-02', 'computer_science', 1, '3Yiq4ucQoQOySyLeM0uDBV5ZSJpGA7fed1nVzSYHr0M6defrIEjtMAMUrDZ4', '2023-02-03 10:22:07', '2023-02-03 10:22:07', '$2y$10$YFf5E8D7ok3Cw9UItJXqb.LSAa4S7q2uhTCewAvylPjAlkdvNDB6C', 1, 'testneu.de@test.de', '', 'TestDerNeue'),
(25, 'MeQFVOn7HmsefnPY0hsxqbxNm84DUuve', 'Hannover', '2002-02-02', 'computer_science', 1, '112EMO41f7N88eO0kQZjzhdM8lpsJTvaYMezYNfxKY3mjMIq5Vwhug9p5wkI', '2023-02-03 10:25:45', '2023-02-03 10:25:45', '$2y$10$DUZFiwlcp2rqk2sm.loEo.Rh0..yTMba9fvxH6EfBigOjGW2FS1oq', 1, 'coolertester@testewr.de', '', 'coolermenschlichertestr');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

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
-- Indizes für die Tabelle `event_items`
--
ALTER TABLE `event_items`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`id`);

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
-- Indizes für die Tabelle `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT für Tabelle `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT für Tabelle `event_items`
--
ALTER TABLE `event_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT für Tabelle `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT für Tabelle `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `group_members`
--
ALTER TABLE `group_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT für Tabelle `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `joinedevents`
--
ALTER TABLE `joinedevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT für Tabelle `likedevents`
--
ALTER TABLE `likedevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT für Tabelle `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
