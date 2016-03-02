-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Мар 02 2016 г., 20:55
-- Версия сервера: 10.1.9-MariaDB
-- Версия PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `rm`
--

-- --------------------------------------------------------

--
-- Структура таблицы `vacancies`
--

CREATE TABLE `vacancies` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_field` date NOT NULL,
  `salary` int(11) NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vacancyAllUkraine` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `vacancies`
--

INSERT INTO `vacancies` (`id`, `position`, `company_id`, `branch`, `date_field`, `salary`, `telephone`, `description`, `user_email`, `remember_token`, `created_at`, `updated_at`, `vacancyAllUkraine`) VALUES
(1, 'Менеджер', 3, '27', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(2, 'Програміст', 3, '27', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(3, 'Бухгалтер', 1, '27', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(4, 'Програміст', 3, '27', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(5, 'Програміст', 3, '27', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(6, 'Касир', 2, '27', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(7, 'Касир', 2, '27', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(8, 'Програміст', 3, '27', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(9, 'Бухгалтер', 1, '27', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(10, 'Фермер', 3, '27', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(11, 'Менеджер', 3, '27', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(12, 'Менеджер', 3, '27', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(13, 'Програміст', 3, '27', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(14, 'Менеджер', 3, '27', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(15, 'Бухгалтер', 1, '27', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(16, 'Програміст', 3, '27', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(17, 'Фермер', 3, '27', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(18, 'Бухгалтер', 1, '27', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(19, 'Менеджер', 3, '27', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(20, 'Фермер', 3, '27', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(21, 'Фермер', 3, '27', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:25', '2016-03-02 08:11:25', 0),
(22, 'Менеджер', 3, '27', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(23, 'Менеджер', 3, '27', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(24, 'Бухгалтер', 1, '27', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(25, 'Фермер', 3, '27', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(26, 'Бухгалтер', 1, '27', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(27, 'Фермер', 3, '27', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(28, 'Касир', 2, '27', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(29, 'Програміст', 3, '27', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(30, 'Менеджер', 3, '27', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(31, 'Програміст', 3, '27', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(32, 'Програміст', 3, '27', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(33, 'Програміст', 3, '27', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(34, 'Касир', 2, '27', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(35, 'Програміст', 3, '27', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(36, 'Бухгалтер', 1, '27', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(37, 'Касир', 2, '27', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(38, 'Бухгалтер', 1, '27', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(39, 'Касир', 2, '27', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(40, 'Касир', 2, '27', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(41, 'Касир', 2, '27', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(42, 'Касир', 2, '27', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(43, 'Фермер', 3, '27', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(44, 'Фермер', 3, '27', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(45, 'Менеджер', 3, '27', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(46, 'Програміст', 3, '27', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(47, 'Касир', 2, '27', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(48, 'Програміст', 3, '27', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(49, 'Менеджер', 3, '27', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(50, 'Бухгалтер', 1, '27', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(51, 'Бухгалтер', 1, '27', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:26', '2016-03-02 08:11:26', 0),
(52, 'Бухгалтер', 1, '27', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(53, 'Менеджер', 3, '27', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(54, 'Програміст', 3, '27', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(55, 'Менеджер', 3, '16', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(56, 'Касир', 2, '13', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(57, 'Фермер', 3, '19', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(58, 'Програміст', 3, '20', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(59, 'Програміст', 3, '1', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(60, 'Касир', 2, '26', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(61, 'Менеджер', 3, '16', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(62, 'Менеджер', 3, '4', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(63, 'Бухгалтер', 1, '26', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(64, 'Касир', 2, '13', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(65, 'Фермер', 3, '10', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(66, 'Бухгалтер', 1, '23', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(67, 'Бухгалтер', 1, '7', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(68, 'Касир', 2, '17', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(69, 'Фермер', 3, '20', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(70, 'Касир', 2, '18', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(71, 'Касир', 2, '14', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(72, 'Фермер', 3, '8', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(73, 'Фермер', 3, '15', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(74, 'Програміст', 3, '9', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(75, 'Фермер', 3, '15', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(76, 'Менеджер', 3, '4', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(77, 'Програміст', 3, '14', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(78, 'Фермер', 3, '15', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(79, 'Бухгалтер', 1, '3', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(80, 'Касир', 2, '25', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(81, 'Фермер', 3, '10', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(82, 'Касир', 2, '4', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(83, 'Програміст', 3, '25', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(84, 'Програміст', 3, '12', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(85, 'Бухгалтер', 1, '23', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(86, 'Програміст', 3, '21', '2016-03-02', 25000, '0324535522', 'Програміст  bla-bla-bla Зарплата:25000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(87, 'Бухгалтер', 1, '21', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(88, 'Бухгалтер', 1, '12', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(89, 'Менеджер', 3, '21', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(90, 'Фермер', 3, '8', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(91, 'Менеджер', 3, '12', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(92, 'Менеджер', 3, '17', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(93, 'Бухгалтер', 1, '22', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(94, 'Фермер', 3, '10', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(95, 'Фермер', 3, '16', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:27', '2016-03-02 08:11:27', 0),
(96, 'Бухгалтер', 1, '21', '2016-03-02', 10000, '0637576222', 'Бухгалтер  bla-bla-bla Зарплата:10000', '', NULL, '2016-03-02 08:11:28', '2016-03-02 08:11:28', 0),
(97, 'Менеджер', 3, '21', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:28', '2016-03-02 08:11:28', 0),
(98, 'Фермер', 3, '20', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:28', '2016-03-02 08:11:28', 0),
(99, 'Менеджер', 3, '1', '2016-03-02', 8000, '0507545332', 'Менеджер  bla-bla-bla Зарплата:8000', '', NULL, '2016-03-02 08:11:28', '2016-03-02 08:11:28', 0),
(100, 'Касир', 2, '17', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:28', '2016-03-02 08:11:28', 0),
(101, 'Касир', 2, '10', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:28', '2016-03-02 08:11:28', 0),
(102, 'Касир', 2, '7', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:28', '2016-03-02 08:11:28', 0),
(103, 'Фермер', 3, '13', '2016-03-02', 12000, '0637774433', 'Фермер  bla-bla-bla Зарплата:12000', '', NULL, '2016-03-02 08:11:28', '2016-03-02 08:11:28', 0),
(104, 'Касир', 2, '26', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:28', '2016-03-02 08:11:28', 0),
(105, 'Касир', 2, '10', '2016-03-02', 5000, '0937555522', 'Касир  bla-bla-bla Зарплата:5000', '', NULL, '2016-03-02 08:11:28', '2016-03-02 08:11:28', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `vacancies`
--
ALTER TABLE `vacancies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vacancies_company_id_foreign` (`company_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `vacancies`
--
ALTER TABLE `vacancies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `vacancies`
--
ALTER TABLE `vacancies`
  ADD CONSTRAINT `vacancies_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
