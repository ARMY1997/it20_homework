-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3308
-- Время создания: Янв 21 2021 г., 22:16
-- Версия сервера: 8.0.18
-- Версия PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `chain_stores`
--
CREATE DATABASE IF NOT EXISTS `chain_stores` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `chain_stores`;

-- --------------------------------------------------------

--
-- Структура таблицы `regions`
--

DROP TABLE IF EXISTS `regions`;
CREATE TABLE IF NOT EXISTS `regions` (
  `id_region` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(50) NOT NULL,
  PRIMARY KEY (`id_region`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `regions`
--

INSERT INTO `regions` (`id_region`, `region`) VALUES
(1, 'Луганская область'),
(2, 'Донецкая область'),
(3, 'Волынская область'),
(4, 'Днепропетровская область'),
(5, 'Житомирская область '),
(6, 'Одесская область');

-- --------------------------------------------------------

--
-- Структура таблицы `shops`
--

DROP TABLE IF EXISTS `shops`;
CREATE TABLE IF NOT EXISTS `shops` (
  `id_shop` int(11) NOT NULL AUTO_INCREMENT,
  `adress` varchar(100) NOT NULL,
  `leader` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(30) NOT NULL,
  `date_of_creation` date NOT NULL,
  `type` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `region_ID` int(11) NOT NULL,
  PRIMARY KEY (`id_shop`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `shops`
--

INSERT INTO `shops` (`id_shop`, `adress`, `leader`, `phone`, `date_of_creation`, `type`, `region_ID`) VALUES
(1, 'м.Беридичів вул.вул. Європейська, 26', 'Іванов Іван Іванович', '+380-800-500-415', '2021-01-10', 'сп', 5),
(2, 'м.Коростищів вул. Шевченка, 38/61', 'Іванов Іван Іванович', '+380-800-600-415', '2021-01-05', 'сп', 5),
(3, 'м.Лисичанськ кв-л 40 років Перемоги, 4', 'Коній Іван Іванович', '+380-996-082-415', '2020-09-07', 'гп', 1),
(4, 'м.Попасна вул. Спортивна, 3-б', 'Красний Миколай Андрійович', '+380-800-600-415', '2021-01-06', 'гп', 1),
(5, 'м.Авдіївка пр. Центральний, 3', 'Коній Іван Іванович', '+380-800-600-415', '2020-08-10', 'сп', 2),
(6, 'м.Білозерське вул. Ватутіна, 3', 'Іванов Іван Іванович', '+380-800-500-415', '2020-06-16', 'гп', 2),
(7, 'м.Луцьк вул. Конякіна 37-в', 'Іванов Іван Іванович', '+380-996-082-415', '2020-06-03', 'гп', 3),
(8, 'м.Любомль вул. Незалежності, 25', 'Коній Іван Іванович', '+380-996-082-415', '2020-04-06', 'гп', 3),
(9, 'м.Дніпро  пр. Богдана Хмельницкого, 111', 'Коваль Сергій Олександрович', '+380-996-082-415', '2019-03-12', 'сп', 4),
(10, 'м.Дніпро вул. Казакевича, 5', 'Красний Миколай Андрійович', '+380-800-500-415', '2021-01-26', 'гп', 4),
(11, 'м.Ізмаіл вул. Пушкіна, 55', 'Коваль Сергій Олександрович', '+380-996-082-415', '2020-04-20', 'гп', 6),
(12, 'м.Балта вул. Любомирського, 246', 'Іванов Іван Іванович', '+380-800-500-415', '2021-01-10', 'сп', 6);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
