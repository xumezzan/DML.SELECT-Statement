-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 02 2024 г., 20:33
-- Версия сервера: 8.0.35
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `actors`
--

-- --------------------------------------------------------

--
-- Структура таблицы `actors`
--

CREATE TABLE `actors` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `actors`
--

INSERT INTO `actors` (`id`, `name`) VALUES
(1, 'Натали Портман'),
(2, 'Том Хэнкс'),
(3, 'Мерил Стрип'),
(4, 'Леонардо ДиКаприо'),
(5, 'Кейт Бланшетт'),
(6, 'Брэд Питт'),
(7, 'Эмма Стоун'),
(8, 'Райан Гослинг');

-- --------------------------------------------------------

--
-- Структура таблицы `performances`
--

CREATE TABLE `performances` (
  `id` int NOT NULL,
  `actor_id` int DEFAULT NULL,
  `performance_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `performances`
--

INSERT INTO `performances` (`id`, `actor_id`, `performance_date`) VALUES
(1, 1, '2022-01-01'),
(2, 1, '2022-02-01'),
(3, 2, '2022-01-01'),
(4, 3, '2022-03-01'),
(5, 3, '2022-04-01'),
(6, 4, '2022-02-15'),
(7, 4, '2022-05-10'),
(8, 5, '2022-03-20'),
(9, 6, '2022-04-05'),
(10, 7, '2022-06-30');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `performances`
--
ALTER TABLE `performances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actor_id` (`actor_id`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `performances`
--
ALTER TABLE `performances`
  ADD CONSTRAINT `performances_ibfk_1` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
