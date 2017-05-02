-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 02-05-2017 a las 13:17:46
-- Versión del servidor: 5.7.18-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carga_ajax`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` int(4) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `nombre`) VALUES
(1, 'España');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `id` int(4) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `id_pais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`id`, `nombre`, `id_pais`) VALUES
(1, 'Araba/Álava', 1),
(2, 'Albacete', 1),
(3, 'Alicante/Alacant', 1),
(4, 'Almería', 1),
(5, 'Ávila', 1),
(6, 'Badajoz', 1),
(7, 'Balears, Illes', 1),
(8, 'Barcelona', 1),
(9, 'Burgos', 1),
(10, 'Cáceres', 1),
(11, 'Cádiz', 1),
(12, 'Castellón/Castelló', 1),
(13, 'Ciudad Real', 1),
(14, 'Córdoba', 1),
(15, 'Coruña, A', 1),
(16, 'Cuenca', 1),
(17, 'Girona', 1),
(18, 'Granada', 1),
(19, 'Guadalajara', 1),
(20, 'Gipuzkoa', 1),
(21, 'Huelva', 1),
(22, 'Huesca', 1),
(23, 'Jaén', 1),
(24, 'León', 1),
(25, 'Lleida', 1),
(26, 'Rioja, La', 1),
(27, 'Lugo', 1),
(28, 'Madrid', 1),
(29, 'Málaga', 1),
(30, 'Murcia', 1),
(31, 'Navarra', 1),
(32, 'Ourense', 1),
(33, 'Asturias', 1),
(34, 'Palencia', 1),
(35, 'Palmas, Las', 1),
(36, 'Pontevedra', 1),
(37, 'Salamanca', 1),
(38, 'Sta.Cruz de Tenerife', 1),
(39, 'Cantabria', 1),
(40, 'Segovia', 1),
(41, 'Sevilla', 1),
(42, 'Soria', 1),
(43, 'Tarragona', 1),
(44, 'Teruel', 1),
(45, 'Toledo', 1),
(46, 'Valencia/València', 1),
(47, 'Valladolid', 1),
(48, 'Bizkaia', 1),
(49, 'Zamora', 1),
(50, 'Zaragoza', 1),
(51, 'Ceuta', 1),
(52, 'Melilla', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
