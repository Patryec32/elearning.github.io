-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2022 a las 08:12:35
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_elearning`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id_alumno` int(100) NOT NULL,
  `id_curso` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id_curso` int(2) NOT NULL,
  `nombre_curso` varchar(20) COLLATE utf32_spanish_ci NOT NULL,
  `stack` varchar(10) COLLATE utf32_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id_curso`, `nombre_curso`, `stack`) VALUES
(1, 'React', 'Frontend'),
(2, 'Node', 'Backend'),
(3, 'React, Node, BBDD', 'Fullstack');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `mail` varchar(30) COLLATE utf32_spanish_ci NOT NULL,
  `password` varchar(20) COLLATE utf32_spanish_ci NOT NULL,
  `usetype` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`mail`, `password`, `usetype`) VALUES
('admin@emae.edu.ar', '1234', 2),
('anaperez20221@gmail.com', '1234', 1),
('juandiaz1231@gmail.com', 'pass1', 1),
('n_12_rial@gmail.com', '1u1r222', 1),
('uriel_111@gmail.com', '111', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(1) NOT NULL,
  `rol` varchar(10) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `rol`) VALUES
(1, 'usuario'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `nombre` varchar(30) COLLATE utf32_spanish_ci NOT NULL,
  `apellido` varchar(30) COLLATE utf32_spanish_ci NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `pais` varchar(20) COLLATE utf32_spanish_ci DEFAULT NULL,
  `id_usuario` int(100) AUTO_INCREMENT NOT NULL,
  `mail` varchar(30) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`nombre`, `apellido`, `fecha_nacimiento`, `pais`, `id_usuario`, `mail`) VALUES
('Anabela', 'Perez', '2010-10-10', 'Argentina', 1, 'anaperez20221@gmail.com'),
('Juan', 'Diaz', '1980-01-10', 'Argentina', 2, 'juandiaz1231@gmail.com'),
('natalia', 'Rial', '1985-11-11', 'peru', 3, 'n_12_rial@gmail.com'),
('Uriel', 'Perez', '1990-05-01', 'uruguay', 4, 'uriel_111@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id_alumno`,`id_curso`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`mail`),
  ADD KEY `usetype` (`usetype`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `mail` (`mail`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id_curso` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`),
  ADD CONSTRAINT `alumno_ibfk_2` FOREIGN KEY (`id_alumno`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`usetype`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`mail`) REFERENCES `login` (`mail`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
