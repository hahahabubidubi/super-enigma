-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 14 2021 г., 15:53
-- Версия сервера: 10.4.14-MariaDB
-- Версия PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `artem_dv`
--

-- --------------------------------------------------------

--
-- Структура таблицы `hab_docrtor`
--

CREATE TABLE `hab_docrtor` (
  `ID` int(11) NOT NULL,
  `SOURCE` varchar(255) NOT NULL,
  `DATE_ADD` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hab_pacient`
--

CREATE TABLE `hab_pacient` (
  `ID` int(11) NOT NULL,
  `SOURCE` varchar(255) NOT NULL,
  `DATE_ADD` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hab_room`
--

CREATE TABLE `hab_room` (
  `ID` int(11) NOT NULL,
  `SOURCE` varchar(255) NOT NULL,
  `DATE_ADD` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `hab_shedule`
--

CREATE TABLE `hab_shedule` (
  `ID` int(11) NOT NULL,
  `SOURCE` varchar(255) NOT NULL,
  `DATE_ADD` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `link_apointment`
--

CREATE TABLE `link_apointment` (
  `ID` int(11) NOT NULL,
  `SOURCE` varchar(255) NOT NULL,
  `DATE_ADD` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `link_shedule_doctor`
--

CREATE TABLE `link_shedule_doctor` (
  `ID` int(11) NOT NULL,
  `SOURCE` varchar(255) NOT NULL,
  `DATE_ADD` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sat_appointment`
--

CREATE TABLE `sat_appointment` (
  `ID` int(11) NOT NULL,
  `DATETIME` datetime NOT NULL,
  `DIAGNOSIS` varchar(255) NOT NULL,
  `DOCTOR_ID` int(11) NOT NULL,
  `ROOM_ID` int(11) NOT NULL,
  `PACIENT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sat_doctor`
--

CREATE TABLE `sat_doctor` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `SPECIALITY` varchar(64) NOT NULL,
  `EDUCATION` varchar(32) NOT NULL,
  `SEX` varchar(32) NOT NULL,
  `BIRTH_DATE` date NOT NULL,
  `WORK_START_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sat_pacient`
--

CREATE TABLE `sat_pacient` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `SEX` varchar(32) NOT NULL,
  `BIRTH_DATE` date NOT NULL,
  `PHONE` varchar(9) NOT NULL,
  `HAS_CARD` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sat_room`
--

CREATE TABLE `sat_room` (
  `ID` int(11) NOT NULL,
  `NUMBER` varchar(64) NOT NULL,
  `MODE` varchar(64) NOT NULL,
  `INNER_PHONE` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `sat_schedule`
--

CREATE TABLE `sat_schedule` (
  `ID` int(11) NOT NULL,
  `NAME` int(11) NOT NULL,
  `IS_HOLYDAY` tinyint(1) NOT NULL,
  `DATE` date NOT NULL,
  `DOCTOR_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `sat_appointment`
--
ALTER TABLE `sat_appointment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `DOCTOR_ID` (`DOCTOR_ID`),
  ADD KEY `ROOM_ID` (`ROOM_ID`),
  ADD KEY `PACIENT_ID` (`PACIENT_ID`);

--
-- Индексы таблицы `sat_doctor`
--
ALTER TABLE `sat_doctor`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `sat_pacient`
--
ALTER TABLE `sat_pacient`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `sat_room`
--
ALTER TABLE `sat_room`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `sat_schedule`
--
ALTER TABLE `sat_schedule`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `DOCTOR_ID` (`DOCTOR_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `sat_appointment`
--
ALTER TABLE `sat_appointment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sat_doctor`
--
ALTER TABLE `sat_doctor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sat_pacient`
--
ALTER TABLE `sat_pacient`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sat_room`
--
ALTER TABLE `sat_room`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sat_schedule`
--
ALTER TABLE `sat_schedule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

