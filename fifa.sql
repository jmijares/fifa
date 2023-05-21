-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 21-05-2023 a las 03:51:09
-- Versión del servidor: 10.3.36-MariaDB-0+deb10u2
-- Versión de PHP: 8.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fifa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Equipos`
--

CREATE TABLE `Equipos` (
  `id` text NOT NULL,
  `Nombre` varchar(64) NOT NULL,
  `Grupo` char(1) NOT NULL,
  `Gfavor` int(11) NOT NULL DEFAULT 0,
  `Gcontra` int(11) NOT NULL DEFAULT 0,
  `Ganados` int(11) NOT NULL DEFAULT 0,
  `Perdidos` int(11) NOT NULL DEFAULT 0,
  `Empatados` int(11) NOT NULL DEFAULT 0,
  `Puntos` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Equipos`
--

INSERT INTO `Equipos` (`id`, `Nombre`, `Grupo`, `Gfavor`, `Gcontra`, `Ganados`, `Perdidos`, `Empatados`, `Puntos`) VALUES
('1A', 'Países Bajos', 'S', 3, 1, 1, 0, 0, 3),
('1B', 'Inglaterra', 'S', 3, 0, 1, 0, 0, 3),
('1C', 'Argentina', 'S', 3, 1, 1, 0, 0, 3),
('1D', 'Francia', 'S', 3, 1, 1, 0, 0, 3),
('1E', 'Japon', 'S', 5, 10, 0, 4, 0, 2),
('1F', 'Marruecos', 'S', 3, 0, 1, 0, 0, 2),
('1G', 'Brasil', 'S', 2, 1, 1, 0, 0, 3),
('1H', 'Portugal', 'S', 6, 1, 1, 0, 0, 3),
('2A', 'Senegal', 'S', 0, 3, 0, 1, 0, 0),
('2B', 'Estados Unidos', 'S', 1, 3, 0, 1, 0, 0),
('2C', 'Polonia', 'S', 1, 3, 0, 1, 0, 0),
('2D', 'Australia', 'S', 1, 3, 0, 1, 0, 0),
('2E', 'España', 'S', 0, 3, 0, 1, 0, 1),
('2F', 'Croasia', 'S', 4, 2, 1, 0, 0, 3),
('2G', 'Suiza', 'S', 1, 6, 0, 1, 0, 0),
('2H', 'Corea del Sur', 'S', 1, 4, 0, 1, 0, 0),
('50', 'Países Bajos', 'T', 3, 4, 0, 1, 0, 3),
('51', 'Argentina', 'T', 4, 3, 1, 0, 0, 9),
('52', 'Inglaterra', 'T', 1, 2, 0, 1, 0, 0),
('53', 'Francia', 'T', 2, 1, 1, 0, 0, 3),
('54', 'Croasia', 'T', 4, 2, 1, 0, 0, 2),
('55', 'Brasil', 'T', 2, 4, 0, 1, 0, 1),
('56', 'Marruecos', 'T', 1, 0, 1, 0, 0, 3),
('57', 'Portugal', 'T', 0, 1, 0, 1, 0, 0),
('58', 'Croasia', 'U', 0, 3, 0, 1, 0, 0),
('59', 'Argentina', 'U', 3, 0, 1, 0, 0, 3),
('60', 'Marruecos', 'U', 0, 2, 0, 1, 0, 0),
('61', 'Francia', 'U', 2, 0, 1, 0, 0, 3),
('alemania', 'Alemania', 'E', 6, 5, 1, 1, 1, 4),
('arabiasaudita', 'Arabia Saudita', 'C', 3, 5, 1, 2, 0, 3),
('argentina', 'Argentina', 'C', 5, 2, 2, 1, 0, 6),
('australia', 'Australia', 'D', 3, 4, 2, 1, 0, 6),
('belgica', 'Belgica', 'F', 1, 2, 1, 1, 1, 4),
('brasil', 'Brasil', 'G', 3, 1, 2, 1, 0, 6),
('camerun', 'Camerun', 'G', 4, 4, 1, 1, 1, 4),
('canada', 'Canada', 'F', 2, 7, 0, 3, 0, 0),
('catar', 'Catar', 'A', 1, 7, 0, 3, 0, 0),
('coreadelsur', 'Corea del Sur', 'H', 4, 4, 1, 1, 1, 4),
('costarica', 'Costa Rica', 'E', 3, 11, 1, 2, 0, 3),
('croasia', 'Croasia', 'F', 4, 1, 1, 0, 2, 5),
('dinamarca', 'Dinamarca', 'D', 1, 3, 0, 2, 1, 1),
('ecuador', 'Ecuador', 'A', 4, 3, 1, 1, 1, 4),
('espana', 'España', 'E', 9, 3, 1, 1, 1, 4),
('estadosunidos', 'Estados Unidos', 'B', 2, 1, 1, 0, 2, 5),
('francia', 'Francia', 'D', 6, 3, 2, 1, 0, 6),
('G62', 'Argentina', 'W', 4, 2, 1, 0, 0, 2),
('G63', 'Francia', 'W', 2, 4, 0, 1, 0, 1),
('gales', 'Gales', 'B', 1, 6, 0, 2, 1, 1),
('ghana', 'Ghana', 'H', 5, 7, 1, 2, 0, 3),
('inglaterra', 'Inglaterra', 'B', 9, 2, 2, 0, 1, 7),
('iran', 'Iran', 'B', 4, 7, 1, 2, 0, 3),
('japon', 'Japon', 'E', 4, 3, 2, 1, 0, 6),
('marruecos', 'Marruecos', 'F', 4, 1, 2, 0, 1, 7),
('mexico', 'Mexico', 'C', 2, 3, 1, 1, 1, 4),
('P62', 'Croasia', 'V', 2, 1, 1, 0, 0, 3),
('P63', 'Marruecos', 'V', 1, 2, 0, 1, 0, 0),
('paisesbajos', 'Países Bajos', 'A', 5, 1, 2, 0, 1, 7),
('polonia', 'Polonia', 'C', 2, 2, 1, 1, 1, 4),
('portugal', 'Portugal', 'H', 6, 4, 2, 1, 0, 6),
('senegal', 'Senegal', 'A', 5, 4, 2, 1, 0, 6),
('serbia', 'Serbia', 'G', 5, 8, 0, 2, 1, 1),
('suiza', 'Suiza', 'G', 4, 3, 2, 1, 0, 6),
('tunez', 'Tunez', 'D', 1, 1, 1, 1, 1, 4),
('uruguay', 'Uruguay', 'H', 2, 2, 1, 1, 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Partidos`
--

CREATE TABLE `Partidos` (
  `id` int(11) NOT NULL,
  `Grupo` char(1) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `EquipoA` text NOT NULL,
  `EquipoB` text NOT NULL,
  `Geqa` int(11) DEFAULT NULL,
  `Geqb` int(11) DEFAULT NULL,
  `ok` tinyint(1) NOT NULL DEFAULT 0,
  `penalti` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Partidos`
--

INSERT INTO `Partidos` (`id`, `Grupo`, `Fecha`, `Hora`, `EquipoA`, `EquipoB`, `Geqa`, `Geqb`, `ok`, `penalti`) VALUES
(1, 'A', '2022-11-21', '12:00:00', 'senegal', 'paisesbajos', 0, 2, 1, 0),
(2, 'A', '2022-11-20', '12:00:00', 'catar', 'ecuador', 0, 2, 1, 0),
(4, 'A', '2022-11-25', '09:00:00', 'catar', 'senegal', 1, 3, 1, 0),
(5, 'A', '2022-11-25', '12:00:00', 'paisesbajos', 'ecuador', 1, 1, 1, 0),
(6, 'A', '2022-11-29', '11:00:00', 'ecuador', 'senegal', 1, 2, 1, 0),
(7, 'A', '2022-11-29', '11:00:00', 'paisesbajos', 'catar', 2, 0, 1, 0),
(8, 'B', '2022-11-21', '09:00:00', 'inglaterra', 'iran', 6, 2, 1, 0),
(9, 'B', '2022-11-21', '15:00:00', 'estadosunidos', 'gales', 1, 1, 1, 0),
(10, 'B', '2022-11-25', '06:00:00', 'gales', 'iran', 0, 2, 1, 0),
(11, 'B', '2022-11-25', '15:00:00', 'inglaterra', 'estadosunidos', 0, 0, 1, 0),
(12, 'B', '2022-11-29', '15:00:00', 'iran', 'estadosunidos', 0, 1, 1, 0),
(13, 'B', '2022-11-29', '15:00:00', 'gales', 'inglaterra', 0, 3, 1, 0),
(14, 'C', '2022-11-22', '06:00:00', 'argentina', 'arabiasaudita', 1, 2, 1, 0),
(15, 'C', '2022-11-22', '12:00:00', 'mexico', 'polonia', 0, 0, 1, 0),
(16, 'C', '2022-11-26', '09:00:00', 'polonia', 'arabiasaudita', 2, 0, 1, 0),
(17, 'C', '2022-11-26', '15:00:00', 'argentina', 'mexico', 2, 0, 1, 0),
(18, 'C', '2022-11-30', '15:00:00', 'polonia', 'argentina', 0, 2, 1, 0),
(19, 'C', '2022-11-30', '15:00:00', 'arabiasaudita', 'mexico', 1, 2, 1, 0),
(20, 'D', '2022-11-22', '09:00:00', 'dinamarca', 'tunez', 0, 0, 1, 0),
(21, 'D', '2022-11-22', '15:00:00', 'francia', 'australia', 4, 1, 1, 0),
(22, 'D', '2022-11-26', '06:00:00', 'tunez', 'australia', 0, 1, 1, 0),
(23, 'D', '2022-11-26', '12:00:00', 'francia', 'dinamarca', 2, 1, 1, 0),
(24, 'D', '2022-11-30', '11:00:00', 'tunez', 'francia', 1, 0, 1, 0),
(25, 'D', '2022-11-30', '11:00:00', 'australia', 'dinamarca', 1, 0, 1, 0),
(26, 'E', '2022-11-23', '09:00:00', 'alemania', 'japon', 1, 2, 1, 0),
(27, 'E', '2022-11-23', '12:00:00', 'espana', 'costarica', 7, 0, 1, 0),
(28, 'E', '2022-11-27', '06:00:00', 'japon', 'costarica', 0, 1, 1, 0),
(29, 'E', '2022-11-27', '15:00:00', 'espana', 'alemania', 1, 1, 1, 0),
(30, 'E', '2022-12-01', '15:00:00', 'japon', 'espana', 2, 1, 1, 0),
(31, 'E', '2022-12-01', '15:00:00', 'costarica', 'alemania', 2, 4, 1, 0),
(32, 'F', '2022-11-23', '06:00:00', 'marruecos', 'croasia', 0, 0, 1, 0),
(33, 'F', '2022-11-23', '15:00:00', 'belgica', 'canada', 1, 0, 1, 0),
(34, 'F', '2022-11-27', '09:00:00', 'belgica', 'marruecos', 0, 2, 1, 0),
(35, 'F', '2022-11-27', '12:00:00', 'croasia', 'canada', 4, 1, 1, 0),
(36, 'F', '2022-12-01', '11:00:00', 'croasia', 'belgica', 0, 0, 1, 0),
(37, 'F', '2022-12-01', '11:00:00', 'canada', 'marruecos', 1, 2, 1, 0),
(38, 'G', '2022-11-24', '06:00:00', 'suiza', 'camerun', 1, 0, 1, 0),
(39, 'G', '2022-11-24', '15:00:00', 'brasil', 'serbia', 2, 0, 1, 0),
(40, 'G', '2022-11-28', '06:00:00', 'camerun', 'serbia', 3, 3, 1, 0),
(41, 'G', '2022-11-28', '12:00:00', 'brasil', 'suiza', 1, 0, 1, 0),
(42, 'G', '2022-12-02', '15:00:00', 'serbia', 'suiza', 2, 3, 1, 0),
(43, 'G', '2022-12-02', '15:00:00', 'camerun', 'brasil', 1, 0, 1, 0),
(44, 'H', '2022-11-24', '09:00:00', 'uruguay', 'coreadelsur', 0, 0, 1, 0),
(45, 'H', '2022-11-24', '12:00:00', 'portugal', 'ghana', 3, 2, 1, 0),
(46, 'H', '2022-11-28', '09:00:00', 'coreadelsur', 'ghana', 2, 3, 1, 0),
(47, 'H', '2022-11-28', '15:00:00', 'portugal', 'uruguay', 2, 0, 1, 0),
(48, 'H', '2022-12-02', '11:00:00', 'coreadelsur', 'portugal', 2, 1, 1, 0),
(49, 'H', '2022-12-02', '11:00:00', 'ghana', 'uruguay', 0, 2, 1, 0),
(50, 'S', '2022-12-03', '11:00:00', '1A', '2B', 3, 1, 1, 0),
(51, 'S', '2022-12-03', '15:00:00', '1C', '2D', 3, 1, 1, 0),
(52, 'S', '2022-12-04', '11:00:00', '1B', '2A', 3, 0, 1, 0),
(53, 'S', '2022-12-04', '15:00:00', '1D', '2C', 3, 1, 1, 0),
(54, 'S', '2022-12-05', '11:00:00', '1E', '2F', 1, 2, 1, 1),
(55, 'S', '2022-12-05', '15:00:00', '1G', '2H', 4, 1, 1, 0),
(56, 'S', '2022-12-06', '11:00:00', '1F', '2E', 3, 0, 1, 1),
(57, 'S', '2022-12-06', '15:00:00', '1H', '2G', 6, 1, 1, 0),
(58, 'T', '2022-12-09', '11:00:00', '54', '55', 4, 2, 1, 1),
(59, 'T', '2022-12-09', '15:00:00', '50', '51', 3, 4, 1, 1),
(60, 'T', '2022-12-10', '11:00:00', '56', '57', 1, 0, 1, 0),
(61, 'T', '2022-12-10', '15:00:00', '52', '53', 1, 2, 1, 0),
(62, 'U', '2022-12-13', '15:00:00', '58', '59', 0, 3, 1, 0),
(63, 'U', '2022-12-14', '15:00:00', '60', '61', 0, 2, 1, 0),
(64, 'V', '2022-12-17', '11:00:00', 'P62', 'P63', 2, 1, 1, 0),
(65, 'W', '2022-12-18', '11:00:00', 'G62', 'G63', 4, 2, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Equipos`
--
ALTER TABLE `Equipos`
  ADD PRIMARY KEY (`id`(20));

--
-- Indices de la tabla `Partidos`
--
ALTER TABLE `Partidos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Partidos`
--
ALTER TABLE `Partidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
