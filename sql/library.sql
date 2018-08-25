-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Авг 25 2018 г., 15:00
-- Версия сервера: 10.1.34-MariaDB
-- Версия PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `library`
--

-- --------------------------------------------------------

--
-- Структура таблицы `author`
--

CREATE TABLE `author` (
  `author_id` int(5) NOT NULL,
  `author_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `author`
--

INSERT INTO `author` (`author_id`, `author_name`) VALUES
(1, 'author1'),
(2, 'author2'),
(3, 'author3'),
(4, 'author4'),
(5, 'author5'),
(6, 'author6');

-- --------------------------------------------------------

--
-- Структура таблицы `bind`
--

CREATE TABLE `bind` (
  `bind_id` int(5) NOT NULL,
  `author_id` int(5) NOT NULL,
  `book_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `bind`
--

INSERT INTO `bind` (`bind_id`, `author_id`, `book_id`) VALUES
(1, 1, 1),
(7, 2, 1),
(2, 2, 2),
(8, 3, 1),
(10, 3, 2),
(3, 3, 3),
(9, 4, 1),
(4, 4, 4),
(11, 5, 4),
(5, 5, 5),
(6, 6, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `book_id` int(5) NOT NULL,
  `name_book` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`book_id`, `name_book`) VALUES
(1, 'book1'),
(2, 'book2'),
(3, 'book3'),
(4, 'book4'),
(5, 'book5'),
(6, 'book6');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`),
  ADD KEY `author_name` (`author_name`);

--
-- Индексы таблицы `bind`
--
ALTER TABLE `bind`
  ADD PRIMARY KEY (`bind_id`),
  ADD KEY `author_id` (`author_id`,`book_id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `name_book` (`name_book`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `bind`
--
ALTER TABLE `bind`
  MODIFY `bind_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
