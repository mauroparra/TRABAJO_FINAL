-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2017 a las 04:52:20
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int(11) NOT NULL,
  `cedula` varchar(30) NOT NULL,
  `producto` varchar(30) NOT NULL,
  `cantidad` varchar(30) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `cedula`, `producto`, `cantidad`, `estado`, `fecha`) VALUES
(1, '234567', '23', '23', 'pendiente', '2017-05-21 02:45:55'),
(2, '1234', '1234', '1234', 'pendiente', '2017-05-21 02:45:55'),
(3, '9879', '97', '789', 'pendiente', '2017-05-21 02:46:11'),
(4, '4414765', '2', '5', 'pendiente', '2017-05-22 23:42:15'),
(5, '4414765', 'perro', '5', 'pendiente', '2017-05-22 23:44:55'),
(6, '5678', 'perro', '5', 'pendiente', '2017-05-22 23:45:45'),
(7, '5426', 'arepas', '3', 'Registrado', '2017-05-23 00:00:06'),
(8, '5426', 'Perro Super', '3', 'Registrado', '2017-05-23 00:10:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `id` int(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `ingredientes` varchar(50) NOT NULL,
  `precio` varchar(30) NOT NULL,
  `tipo` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `ingredientes`, `precio`, `tipo`) VALUES
(1, 'Hamburguesa especial', 'carne, queso, pan, lechuga', '5000', 'hamburguesa'),
(2, 'Hamburguesa super', 'doble carne, doble queso, pan, lechuga', '10000', 'hamburguesa'),
(3, 'Hamburguesa combo', 'doble carne, doble queso, pan, papas, gaseosa', '20000', 'hamburguesa'),
(4, 'perro especial', 'salchicha , pan, salsa', '5000', 'perro'),
(5, 'perro super', 'salchicha, doble queso, pan, papas', '10000', 'perro'),
(6, 'perro combo', 'doble queso, pan, papas, gaseosa, salsas', '20000', 'perro'),
(7, 'pizza especial', 'queso, salchicha, champiñones', '5000', 'pizza'),
(8, 'pizza super', 'doble carne, doble queso, piña, champiñones', '10000', 'pizza'),
(9, 'pizza combo', 'doble carne, doble queso, papas, gaseosa', '20000', 'pizza'),
(10, 'arepa especial', 'carne, queso', '5000', 'arepa'),
(11, 'arepa super', 'doble carne, doble queso,chicharron', '10000', 'arepa'),
(12, 'arepa combo', 'doble carne, doble queso, papas, gaseosa', '20000', 'arepa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `cedula` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `barrio` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `cedula`, `direccion`, `barrio`, `telefono`, `email`) VALUES
(1, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined'),
(2, 'mauro', 'undefined', 'cra 9 # 58-46', 'nada', '23456', 'undefined'),
(3, 'Yeison', '1122334', 'calle 53', 'Villa', '3214567898', 'yeison@hotmi.vom');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
