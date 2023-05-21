-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 16, 2022 at 03:22 AM
-- Server version: 8.0.27
-- PHP Version: 7.3.29-to-be-removed-in-future-macOS

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fifa`
--

-- --------------------------------------------------------

--
-- Table structure for table `Equipos`
--

CREATE TABLE `Equipos` (
  `id` text NOT NULL,
  `Nombre` varchar(64) NOT NULL,
  `Grupo` char(1) NOT NULL,
  `Gfavor` int NOT NULL DEFAULT '0',
  `Gcontra` int NOT NULL DEFAULT '0',
  `Ganados` int NOT NULL DEFAULT '0',
  `Perdidos` int NOT NULL DEFAULT '0',
  `Empatados` int NOT NULL DEFAULT '0',
  `Puntos` int NOT NULL DEFAULT '0'
) ;

--
-- Dumping data for table `Equipos`
--

INSERT INTO `Equipos` (`id`, `Nombre`, `Grupo`, `Gfavor`, `Gcontra`, `Ganados`, `Perdidos`, `Empatados`, `Puntos`) VALUES
('1A', '1 Grupo A', 'S', 0, 0, 0, 0, 0, 0),
('1B', '1 Grupo B', 'S', 0, 0, 0, 0, 0, 0),
('1C', '1 Grupo C', 'S', 0, 0, 0, 0, 0, 0),
('1D', '1 Grupo D', 'S', 0, 0, 0, 0, 0, 0),
('1E', '1 Grupo E', 'S', 0, 0, 0, 0, 0, 0),
('1F', '1 Grupo F', 'S', 0, 0, 0, 0, 0, 0),
('1G', '1 Grupo G', 'S', 0, 0, 0, 0, 0, 0),
('1H', '1 Grupo H', 'S', 0, 0, 0, 0, 0, 0),
('2A', '2 Grupo A', 'S', 0, 0, 0, 0, 0, 0),
('2B', '2 Grupo B', 'S', 0, 0, 0, 0, 0, 0),
('2C', '2 Grupo C', 'S', 0, 0, 0, 0, 0, 0),
('2D', '2 Grupo D', 'S', 0, 0, 0, 0, 0, 0),
('2E', '2 Grupo E', 'S', 0, 0, 0, 0, 0, 0),
('2F', '2 Grupo F', 'S', 0, 0, 0, 0, 0, 0),
('2G', '2 Grupo G', 'S', 0, 0, 0, 0, 0, 0),
('2H', '2 Grupo H', 'S', 0, 0, 0, 0, 0, 0),
('50', 'Ganador del 50', 'T', 0, 0, 0, 0, 0, 0),
('51', 'Ganador del 51', 'T', 0, 0, 0, 0, 0, 0),
('52', 'Ganador del 52', 'T', 0, 0, 0, 0, 0, 0),
('53', 'Ganador del 53', 'T', 0, 0, 0, 0, 0, 0),
('54', 'Ganador del 54', 'T', 0, 0, 0, 0, 0, 0),
('55', 'Ganador del 55', 'T', 0, 0, 0, 0, 0, 0),
('56', 'Ganador del 56', 'T', 0, 0, 0, 0, 0, 0),
('57', 'Ganador del 57', 'T', 0, 0, 0, 0, 0, 0),
('58', 'Ganador del 58', 'U', 0, 0, 0, 0, 0, 0),
('59', 'Ganador del 59', 'U', 0, 0, 0, 0, 0, 0),
('60', 'Ganador del 60', 'U', 0, 0, 0, 0, 0, 0),
('61', 'Ganador del 61', 'U', 0, 0, 0, 0, 0, 0),
('alemania', 'Alemania', 'E', 0, 0, 0, 0, 0, 0),
('arabiasaudita', 'Arabia Saudita', 'C', 0, 0, 0, 0, 0, 0),
('argentina', 'Argentina', 'C', 0, 0, 0, 0, 0, 0),
('australia', 'Australia', 'D', 0, 0, 0, 0, 0, 0),
('belgica', 'Belgica', 'F', 0, 0, 0, 0, 0, 0),
('brasil', 'Brasil', 'G', 0, 0, 0, 0, 0, 0),
('camerun', 'Camerun', 'G', 0, 0, 0, 0, 0, 0),
('canada', 'Canada', 'F', 0, 0, 0, 0, 0, 0),
('catar', 'Catar', 'A', 0, 0, 0, 0, 0, 0),
('coreadelsur', 'Corea del Sur', 'H', 0, 0, 0, 0, 0, 0),
('costarica', 'Costa Rica', 'E', 0, 0, 0, 0, 0, 0),
('croasia', 'Croasia', 'F', 0, 0, 0, 0, 0, 0),
('dinamarca', 'Dinamarca', 'D', 0, 0, 0, 0, 0, 0),
('ecuador', 'Ecuador', 'A', 0, 0, 0, 0, 0, 0),
('espana', 'España', 'E', 0, 0, 0, 0, 0, 0),
('estadosunidos', 'Estados Unidos', 'B', 0, 0, 0, 0, 0, 0),
('francia', 'Francia', 'D', 0, 0, 0, 0, 0, 0),
('G62', 'Ganador partido 62', 'W', 0, 0, 0, 0, 0, 0),
('G63', 'Ganador Partido 63', 'W', 0, 0, 0, 0, 0, 0),
('gales', 'Gales', 'B', 0, 0, 0, 0, 0, 0),
('ghana', 'Ghana', 'H', 0, 0, 0, 0, 0, 0),
('inglaterra', 'Inglaterra', 'B', 0, 0, 0, 0, 0, 0),
('iran', 'Iran', 'B', 0, 0, 0, 0, 0, 0),
('japon', 'Japon', 'E', 0, 0, 0, 0, 0, 0),
('marruecos', 'Marruecos', 'F', 0, 0, 0, 0, 0, 0),
('mexico', 'Mexico', 'C', 0, 0, 0, 0, 0, 0),
('P62', 'Perdedor partido 62', 'V', 0, 0, 0, 0, 0, 0),
('P63', 'Perdedor partido 63', 'V', 0, 0, 0, 0, 0, 0),
('paisesbajos', 'Países Bajos', 'A', 0, 0, 0, 0, 0, 0),
('polonia', 'Polonia', 'C', 0, 0, 0, 0, 0, 0),
('portugal', 'Portugal', 'H', 0, 0, 0, 0, 0, 0),
('senegal', 'Senegal', 'A', 0, 0, 0, 0, 0, 0),
('serbia', 'Serbia', 'G', 0, 0, 0, 0, 0, 0),
('suiza', 'Suiza', 'G', 0, 0, 0, 0, 0, 0),
('tunez', 'Tunez', 'D', 0, 0, 0, 0, 0, 0),
('uruguay', 'Uruguay', 'H', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Partidos`
--

CREATE TABLE `Partidos` (
  `id` int NOT NULL,
  `Grupo` char(1) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `EquipoA` text NOT NULL,
  `EquipoB` text NOT NULL,
  `Geqa` int DEFAULT NULL,
  `Geqb` int DEFAULT NULL,
  `ok` tinyint(1) NOT NULL DEFAULT '0',
  `penalti` tinyint(1) NOT NULL DEFAULT '0'
) ;

--
-- Dumping data for table `Partidos`
--

INSERT INTO `Partidos` (`id`, `Grupo`, `Fecha`, `Hora`, `EquipoA`, `EquipoB`, `Geqa`, `Geqb`, `ok`, `penalti`) VALUES
(1, 'A', '2022-11-21', '06:00:00', 'senegal', 'paisesbajos', NULL, NULL, 0, 0),
(2, 'A', '2022-11-21', '10:00:00', 'catar', 'ecuador', NULL, NULL, 0, 0),
(4, 'A', '2022-11-25', '09:00:00', 'catar', 'senegal', NULL, NULL, 0, 0),
(5, 'A', '2022-11-25', '12:00:00', 'paisesbajos', 'ecuador', NULL, NULL, 0, 0),
(6, 'A', '2022-11-29', '11:00:00', 'ecuador', 'senegal', NULL, NULL, 0, 0),
(7, 'A', '2022-11-29', '11:00:00', 'paisesbajos', 'catar', NULL, NULL, 0, 0),
(8, 'B', '2022-11-21', '09:00:00', 'inglaterra', 'iran', NULL, NULL, 0, 0),
(9, 'B', '2022-11-21', '13:00:00', 'estadosunidos', 'gales', NULL, NULL, 0, 0),
(10, 'B', '2022-11-25', '06:00:00', 'gales', 'iran', NULL, NULL, 0, 0),
(11, 'B', '2022-11-25', '15:00:00', 'inglaterra', 'estadosunidos', NULL, NULL, 0, 0),
(12, 'B', '2022-11-29', '15:00:00', 'iran', 'estadosunidos', NULL, NULL, 0, 0),
(13, 'B', '2022-11-29', '15:00:00', 'gales', 'inglaterra', NULL, NULL, 0, 0),
(14, 'C', '2022-11-22', '06:00:00', 'argentina', 'arabiasaudita', NULL, NULL, 0, 0),
(15, 'C', '2022-11-22', '12:00:00', 'mexico', 'polonia', NULL, NULL, 0, 0),
(16, 'C', '2022-11-26', '09:00:00', 'polonia', 'arabiasaudita', NULL, NULL, 0, 0),
(17, 'C', '2022-11-26', '15:00:00', 'argentina', 'mexico', NULL, NULL, 0, 0),
(18, 'C', '2022-11-30', '15:00:00', 'polonia', 'argentina', NULL, NULL, 0, 0),
(19, 'C', '2022-11-30', '15:00:00', 'arabiasaudita', 'mexico', NULL, NULL, 0, 0),
(20, 'D', '2022-11-22', '09:00:00', 'dinamarca', 'tunez', NULL, NULL, 0, 0),
(21, 'D', '2022-11-22', '15:00:00', 'francia', 'australia', NULL, NULL, 0, 0),
(22, 'D', '2022-11-26', '06:00:00', 'tunez', 'australia', NULL, NULL, 0, 0),
(23, 'D', '2022-11-26', '12:00:00', 'francia', 'dinamarca', NULL, NULL, 0, 0),
(24, 'D', '2022-11-30', '11:00:00', 'tunez', 'francia', NULL, NULL, 0, 0),
(25, 'D', '2022-11-30', '11:00:00', 'australia', 'dinamarca', NULL, NULL, 0, 0),
(26, 'E', '2022-11-23', '09:00:00', 'alemania', 'japon', NULL, NULL, 0, 0),
(27, 'E', '2022-11-23', '12:00:00', 'espana', 'costarica', NULL, NULL, 0, 0),
(28, 'E', '2022-11-27', '06:00:00', 'japon', 'costarica', NULL, NULL, 0, 0),
(29, 'E', '2022-11-27', '15:00:00', 'espana', 'alemania', NULL, NULL, 0, 0),
(30, 'E', '2022-12-01', '15:00:00', 'japon', 'espana', NULL, NULL, 0, 0),
(31, 'E', '2022-12-01', '15:00:00', 'costarica', 'alemania', NULL, NULL, 0, 0),
(32, 'F', '2022-11-23', '06:00:00', 'marruecos', 'croacia', NULL, NULL, 0, 0),
(33, 'F', '2022-11-23', '15:00:00', 'belgica', 'canada', NULL, NULL, 0, 0),
(34, 'F', '2022-11-27', '09:00:00', 'belgica', 'marruecos', NULL, NULL, 0, 0),
(35, 'F', '2022-11-27', '12:00:00', 'croacia', 'canada', NULL, NULL, 0, 0),
(36, 'F', '2022-12-01', '11:00:00', 'croacia', 'belgica', NULL, NULL, 0, 0),
(37, 'F', '2022-12-01', '11:00:00', 'canada', 'marruecos', NULL, NULL, 0, 0),
(38, 'G', '2022-11-24', '06:00:00', 'suisa', 'camerun', NULL, NULL, 0, 0),
(39, 'G', '2022-11-24', '15:00:00', 'brasil', 'serbia', NULL, NULL, 0, 0),
(40, 'G', '2022-11-28', '06:00:00', 'camerun', 'serbia', NULL, NULL, 0, 0),
(41, 'G', '2022-11-28', '12:00:00', 'brasil', 'suiza', NULL, NULL, 0, 0),
(42, 'G', '2022-12-02', '15:00:00', 'serbia', 'suiza', NULL, NULL, 0, 0),
(43, 'G', '2022-12-02', '15:00:00', 'camerun', 'brasil', NULL, NULL, 0, 0),
(44, 'H', '2022-11-24', '09:00:00', 'uruguay', 'coreadelsur', NULL, NULL, 0, 0),
(45, 'H', '2022-11-24', '12:00:00', 'portugal', 'chana', NULL, NULL, 0, 0),
(46, 'H', '2022-11-28', '09:00:00', 'coreadelsur', 'ghana', NULL, NULL, 0, 0),
(47, 'H', '2022-11-28', '15:00:00', 'portugal', 'uruguay', NULL, NULL, 0, 0),
(48, 'H', '2022-12-02', '11:00:00', 'coreadelsur', 'portugal', NULL, NULL, 0, 0),
(49, 'H', '2022-12-02', '11:00:00', 'ghana', 'uruguay', NULL, NULL, 0, 0),
(50, 'S', '2022-12-03', '11:00:00', '1A', '2B', NULL, NULL, 0, 0),
(51, 'S', '2022-12-03', '15:00:00', '1C', '2D', NULL, NULL, 0, 0),
(52, 'S', '2022-12-04', '11:00:00', '1B', '2A', NULL, NULL, 0, 0),
(53, 'S', '2022-12-04', '15:00:00', '1D', '2C', NULL, NULL, 0, 0),
(54, 'S', '2022-12-05', '11:00:00', '1E', '2F', NULL, NULL, 0, 0),
(55, 'S', '2022-12-05', '15:00:00', '1G', '2H', NULL, NULL, 0, 0),
(56, 'S', '2022-12-06', '11:00:00', '1F', '2E', NULL, NULL, 0, 0),
(57, 'S', '2022-12-06', '15:00:00', '1H', '2G', NULL, NULL, 0, 0),
(58, 'T', '2022-12-09', '11:00:00', '54', '55', NULL, NULL, 0, 0),
(59, 'T', '2022-12-09', '15:00:00', '50', '51', NULL, NULL, 0, 0),
(60, 'T', '2022-12-10', '11:00:00', '56', '57', NULL, NULL, 0, 0),
(61, 'T', '2022-12-10', '15:00:00', '52', '53', NULL, NULL, 0, 0),
(62, 'U', '2022-12-13', '15:00:00', '58', '59', NULL, NULL, 0, 0),
(63, 'U', '2022-12-14', '15:00:00', '60', '61', NULL, NULL, 0, 0),
(64, 'V', '2022-12-17', '11:00:00', 'P62', 'P63', NULL, NULL, 0, 0),
(65, 'W', '2022-12-18', '11:00:00', 'G62', 'G63', NULL, NULL, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Equipos`
--
ALTER TABLE `Equipos`
  ADD PRIMARY KEY (`id`(20));

--
-- Indexes for table `Partidos`
--
ALTER TABLE `Partidos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Partidos`
--
ALTER TABLE `Partidos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
