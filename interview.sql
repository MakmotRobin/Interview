-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2024 at 12:28 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interview`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `CodFilm` int(11) NOT NULL,
  `title` varchar(35) NOT NULL,
  `YEAR` int(11) NOT NULL,
  `DIRECTOR` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`CodFilm`, `title`, `YEAR`, `DIRECTOR`) VALUES
(11234, 'Blade Runner', 1982, 'Scott'),
(21234, 'Pulp Fiction', 1994, 'Tarantino'),
(31234, 'Dango', 2012, 'Tarantino'),
(41234, 'Rush', 2013, 'Howard');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User code` int(11) NOT NULL,
  `alias` varchar(35) NOT NULL,
  `OLD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User code`, `alias`, `OLD`) VALUES
(892, 'MarioRossi', 20),
(19023, 'AleRossi', 15),
(19291, 'AntonioBianchi', 36);

-- --------------------------------------------------------

--
-- Table structure for table `voting`
--

CREATE TABLE `voting` (
  `CodFilm` int(11) NOT NULL,
  `Coduser` int(11) NOT NULL,
  `Assessment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voting`
--

INSERT INTO `voting` (`CodFilm`, `Coduser`, `Assessment`) VALUES
(11234, 19023, 7),
(21234, 892, 9),
(31234, 892, 8),
(41234, 19291, 6);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
