-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 12, 2022 at 08:41 AM
-- Server version: 8.0.30-0ubuntu0.22.04.1
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `becode`
--

-- --------------------------------------------------------

--
-- Table structure for table `hiking`
--

CREATE TABLE `hiking` (
  `id` int NOT NULL,
  `name` varchar(400) NOT NULL,
  `difficulty` char(30) NOT NULL,
  `distance` int NOT NULL,
  `duration` time NOT NULL,
  `height_difference` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `hiking`
--

INSERT INTO `hiking` (`id`, `name`, `difficulty`, `distance`, `duration`, `height_difference`) VALUES
(1, 'La montée au Piton des Neiges depuis le Bloc à Cilaos ', 'moyen', 26, '08:30:00', 500),
(2, 'La montée au Piton des Neiges depuis le Bloc à Cilaos ', 'très facile', 25, '08:30:00', 1730),
(3, 'La montée au Piton des Neiges depuis le Bloc à Cilaos ', 'très facile', 25, '08:30:00', 1730),
(4, 'La montée au Piton des Neiges depuis le Bloc à Cilaos ', 'très facile', 25, '08:30:00', 1730),
(5, 'La montée au Piton des Neiges depuis le Bloc à Cilaos ', 'très facile', 25, '08:30:00', 1730),
(6, 'La montée au Piton des flammes', 'très difficile', 100, '12:00:00', 730);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `idschool` int NOT NULL,
  `school` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`idschool`, `school`) VALUES
(1, 'Bruxelles'),
(2, 'Charleroi'),
(3, 'Genk'),
(4, 'Anvers');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `idStudent` tinyint UNSIGNED NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `datenaissance` date NOT NULL,
  `genre` varchar(10) NOT NULL,
  `school` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`idStudent`, `nom`, `prenom`, `datenaissance`, `genre`, `school`) VALUES
(1, 'Ere', 'Molly', '1990-11-17', 'F', 2),
(2, 'Gavel', 'Aude', '1991-08-28', 'F', 2),
(3, 'Cover', 'Harris', '1977-09-05', 'M', 2),
(4, 'Nett', 'Marion', '1984-05-29', 'F', 2),
(5, 'Ochon', 'Paul', '1994-10-09', 'M', 2),
(6, 'Laybrise', 'Sam', '1985-07-30', 'M', 2),
(7, 'Sion', 'Eddy', '1993-10-18', 'M', 2),
(8, 'Beau', 'Harry', '1992-03-01', 'M', 2),
(9, 'Touille', 'Sasha', '1978-05-16', 'M', 2),
(10, 'Terrieur', 'Alain', '1988-11-22', 'M', 2),
(11, 'Tarr', 'Guy', '1972-01-27', 'M', 2),
(12, 'Door', 'Théo', '1984-06-24', 'M', 2),
(13, 'Selayr', 'Jacques', '2017-04-24', 'M', 2),
(14, 'Karena', 'Emma', '1982-03-30', 'F', 2),
(15, 'Egée', 'Yves', '1989-05-31', 'M', 2),
(16, 'Tramp', 'Pauline', '1980-01-03', 'F', 1),
(17, 'Ciné', 'Emma', '1981-08-25', 'F', 1),
(18, 'Daydui', 'Jean', '1996-05-09', 'M', 1),
(19, 'Jean', 'Serge', '1989-07-21', 'M', 1),
(20, 'Addy', 'Jack', '1993-04-07', 'M', 1),
(21, 'Age', 'karl', '1991-01-25', 'M', 1),
(22, 'Fini', 'Alain', '1993-10-03', 'M', 1),
(23, 'Lophone', 'Alexis', '1960-11-29', 'M', 1),
(24, 'Hochet', 'Rick', '1978-12-28', 'M', 1),
(25, 'Liguili', 'Guy', '1996-03-18', 'M', 1),
(26, 'Nouissement', 'Eva', '1980-08-23', 'F', 1),
(27, 'Qui', 'Noah', '1978-06-20', 'M', 2),
(28, 'Bombeur', 'Jean', '1989-03-10', 'M', 2),
(29, 'Indefil', 'Bob', '1990-11-09', 'M', 2),
(30, 'Time', 'Vincent', '1995-01-26', 'M', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hiking`
--
ALTER TABLE `hiking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`idschool`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`idStudent`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hiking`
--
ALTER TABLE `hiking`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `idschool` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `idStudent` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
