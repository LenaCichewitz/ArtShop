-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 21. Mrz 2022 um 23:21
-- Server-Version: 10.4.22-MariaDB
-- PHP-Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `shop`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `adress`
--

CREATE TABLE `adress` (
  `id` int(11) NOT NULL,
  `zip` int(11) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` text NOT NULL,
  `house_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `adress`
--

INSERT INTO `adress` (`id`, `zip`, `street`, `city`, `house_no`) VALUES
(14, 52345, '2345', '2345', 4325),
(15, 52345, '2345', '2345', 4325),
(16, 52345, '2345', '2345', 4325),
(17, 52345, '2345', '2345', 4325);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `comissions`
--

CREATE TABLE `comissions` (
  `user_id` int(11) DEFAULT NULL,
  `description` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `closed` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `comissions`
--

INSERT INTO `comissions` (`user_id`, `description`, `email`, `closed`) VALUES
(NULL, 0, 'asdfasdfasdf', 0),
(NULL, 0, 'fghgfhrf', 0),
(NULL, 0, 'fghgfhrf', 0),
(NULL, 0, 'fghgfhrf', 0),
(NULL, 0, 'fghgfhrf', 0),
(NULL, 0, 'fghgfhrf', 0),
(NULL, 0, 'fghgfhrf', 0),
(NULL, 0, 'fghgfhrf', 0),
(NULL, 0, 'fghgfhrf', 0),
(NULL, 0, 'fghgfhrf', 0),
(NULL, 0, 'dfghdfghfdgh', 0),
(NULL, 0, 'dfghdfghdfgh', 0),
(NULL, 0, 'fdsgdsfg', 0),
(NULL, 0, 'sdfgsdfgsdfg', 0),
(NULL, 0, 'sdafasdfasdf', 0),
(NULL, 0, 'aaaaaa', 0),
(NULL, 0, 'xcvxcvxcv', 0),
(NULL, 0, 'sadfasdfasdf@gmail.com', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `orders`
--

CREATE TABLE `orders` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `recived` tinyint(4) NOT NULL,
  `closed` int(11) NOT NULL,
  `adress_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `description` varchar(400) NOT NULL,
  `img` varchar(255) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `img`, `count`) VALUES
(1, 'undefined', 'dftjdrtkjdrtkmdrtkdrtkdrktdkdkdkdrtkdrk', 'https://ais.badische-zeitung.de/piece/0b/8b/5b/ff/193682431-h-720.jpg', 0),
(2, 'undefined', '', '', 0),
(3, 'undefined', '', '', 0),
(4, 'undefined', '', '', 0),
(5, 'undefined', '', '', 0),
(6, 'undefined', '', '', 0),
(7, 'undefined', '', '', 0),
(8, 'undefined', '', '', 0),
(9, 'undefined', '', '', 0),
(10, 'undefined', '', '', 0),
(11, 'undefined', '', '', 0),
(12, 'undefined', '', '', 0),
(13, 'undefined', '', '', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `frontname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `adress`
--
ALTER TABLE `adress`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indizes für die Tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `adress`
--
ALTER TABLE `adress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT für Tabelle `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
