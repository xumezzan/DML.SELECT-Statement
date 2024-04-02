-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 02 2024 г., 20:03
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
-- База данных: `films`
--

-- --------------------------------------------------------

--
-- Структура таблицы `films`
--

CREATE TABLE `films` (
  `film_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `rental_count` int DEFAULT NULL,
  `expected_age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `films`
--

INSERT INTO `films` (`film_id`, `title`, `rental_count`, `expected_age`) VALUES
(1, 'The Dark Knight', 100, 18),
(2, 'Inception', 90, 16),
(3, 'Pulp Fiction', 80, 17),
(4, 'Fight Club', 75, 18),
(5, 'The Shawshank Redemption', 70, 16),
(6, 'The Matrix', 65, 15);

-- --------------------------------------------------------

--
-- Структура таблицы `rentals`
--

CREATE TABLE `rentals` (
  `rental_id` int NOT NULL,
  `film_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `rental_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `rentals`
--

INSERT INTO `rentals` (`rental_id`, `film_id`, `customer_id`, `rental_date`, `return_date`) VALUES
(1, 1, 101, '2024-03-01', '2024-03-03'),
(2, 1, 102, '2024-03-02', '2024-03-05'),
(3, 2, 103, '2024-03-03', '2024-03-06'),
(4, 2, 104, '2024-03-04', '2024-03-07'),
(5, 3, 105, '2024-03-05', '2024-03-08'),
(6, 3, 106, '2024-03-06', '2024-03-09'),
(7, 4, 107, '2024-03-07', '2024-03-10'),
(8, 4, 108, '2024-03-08', '2024-03-11'),
(9, 5, 109, '2024-03-09', '2024-03-12'),
(10, 5, 110, '2024-03-10', '2024-03-13'),
(11, 6, 111, '2024-03-11', '2024-03-14'),
(12, 6, 112, '2024-03-12', '2024-03-15');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`film_id`);

--
-- Индексы таблицы `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`rental_id`),
  ADD KEY `film_id` (`film_id`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `films` (`film_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
