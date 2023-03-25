-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-03-2023 a las 13:42:08
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cerveceria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(1, 'San Patricio Playa Fest: Mar del Plata celebra la fiesta de la cerveza artesanal', 'El epicentro será Playa Varese y participarán más de 20 cervecerías marplatenses.', 'Todo listo para la primera edición de \"San Patricio Playa Fest\", el primer festival de la cerveza artesanal que tendrá lugar en Mar del Plata este viernes 17 y mañana, sábado 18 de marzo.\r\nCon entrada libre y gratuita en el sector de playa Varese, habrá shows musicales y más de 20 cervecerías locales, un patio gastronómico y diversos entretenimientos. Habrá degustaciones, catas, clases de cerveza, complementándose con el patio gastronómico, entretenimientos, espectáculos y recitales de bandas locales y nacionales.'),
(2, 'Galería: cerveza, color y la fiesta de Los Auténticos Decadentes', 'Primera jornada de la fiesta de la cerveza.', 'Una multitud disfrutó del primer día de la fiesta de la cerveza que se realizó en Varese con Los Auténticos Decadentes como show principal. Música en vivo, distintos food trucks y mucha cerveza artesanal se conjugaron en la playa para la primera fiesta “San Patricio Playa Fest”. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `password`) VALUES
(1, 'Matias', '83b4ef5ae4bb360c96628aecda974200'),
(2, 'Justi', '4b82ba17481acc7ad9fec620bd960b80');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
