-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2023 a las 04:57:12
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `actividad_4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `flag` varchar(500) NOT NULL,
  `capital` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `name`, `flag`, `capital`) VALUES
(1, 'COLOMBIA', 'https://w7.pngwing.com/pngs/465/223/png-transparent-flag-of-colombia-flag-of-the-united-states-national-flag-flag-of-colombia-angle-flag-text.png', 'Bogotá'),
(2, 'MEXICO', 'https://w7.pngwing.com/pngs/56/96/png-transparent-flag-of-mexico-flag-of-mexico-united-states-mexican-war-of-independence-mexican-flag-s-free-flag-text-logo.png', 'Ciudad de México');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departaments`
--

CREATE TABLE `departaments` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `countries_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `departaments`
--

INSERT INTO `departaments` (`id`, `name`, `countries_id`) VALUES
(1, 'Amazonas', 1),
(2, 'Antioquia', 1),
(3, 'Arauca', 1),
(4, 'Atlántico', 1),
(5, 'Bolívar', 1),
(6, 'Boyacá', 1),
(7, 'Caldas', 1),
(8, 'Caquetá', 1),
(9, 'Casanare', 1),
(10, 'Cauca', 1),
(11, 'Cesar', 1),
(12, 'Chocó', 1),
(13, 'Córdoba', 1),
(14, 'Cundinamarca', 1),
(15, 'Guainía', 1),
(16, 'Guaviare', 1),
(17, 'Huila', 1),
(18, 'La Guajira', 1),
(19, 'Magdalena', 1),
(20, 'Meta', 1),
(21, 'Ciudad de México', 2),
(22, 'Aguascalientes', 2),
(23, 'Campeche', 2),
(24, 'Chiapas', 2),
(25, 'Chihuahua', 2),
(26, 'Durango', 2),
(27, 'Guanajuato', 2),
(28, 'Guerrero', 2),
(29, 'Hidalgo', 2),
(30, ' Jalisco', 2),
(31, 'Michoacán', 2),
(32, 'Morelos', 2),
(33, 'Nuevo León', 2),
(34, 'Oaxaca', 2),
(35, 'Puebla', 2),
(36, 'San Luis Potosí', 2),
(37, 'Querétaro', 2),
(38, 'Sinaloa', 2),
(39, 'Sonora', 2),
(40, 'Yucatán', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `countries_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `school`
--

INSERT INTO `school` (`id`, `name`, `address`, `phone`, `countries_id`) VALUES
(1, 'Colegio Anglo Canadiense', 'Calle 8 No. 100-01', '+57 3173636145 ', 1),
(2, 'Colegio Anglo Americano', 'Cl. 170 #8-80/70, Bogotá', '16694181', 1),
(3, 'Fernando Mazuera Villegas', 'Cra 81 B 71 F 15 sur', '22005255', 1),
(4, 'Institución educativa el Bosque', 'Cra. 19 Este #3169, Soacha, Cundinamarca', '17188598', 1),
(5, 'colegio municipal John f Kennedy-Arbeláez', 'AVENIDA 7ª Nº. 9 - 101, CUNDINAMARCA, ARBELÁE', '3115069832', 1),
(6, 'Gimnasio Contemporáneo', ' Cra. 6 #29, Bogotá', '414248684', 1),
(7, 'Liceo Campo David ', 'Cl. 46 Sur #21-27, Bogotá', ' 17676146', 1),
(8, 'Cambridge School ', 'Calle 127A No 7 - 19 Oficina 506', '350 4171060', 1),
(15, 'Colegio San Mateo Apóstol', 'Calle 215  50-24 Bogota Cundinamara', '(601) 6760885', 1),
(16, 'Gimnasio San Diego', 'Floridablanca, Km 2, Vía RuitoqueBajo', '+57 (7)6386808 ', 1),
(17, 'UDLA - Universidad de las Américas', 'ciudad de México calle 22', '01 55 5209 9855', 2),
(18, 'UNAM - Universidad Nacional Autónoma de Méxic', 'Avenida Universidad # 3000, Ciudad Universita', '+52 (55) 5622-5568', 2),
(19, 'ITESM - Tec de Monterrey', 'Ciudad Universitaria,', '+52 (81) 8358-2000', 2),
(20, 'IPN - Instituto Politécnico Nacional', 'Av. Instituto Politécnico Nacional # 1936', '+52 (55) 5279-6000', 2),
(21, 'UDG - Universidad de Guadalajara', 'Av. Juárez No. 976, Colonia Centro', ' (0133) 3134 2222', 2),
(22, 'UANL - Universidad Autónoma de Nuevo León', 'Pedro de Alba s/n, San Nicolás de Los Garza', '(0181) 8329-4000', 2),
(23, 'UV - Universidad Veracruzana', 'Calle Dr. Luis Castelazo S/N, Colonia Industr', '+52 (228) 841-8900.', 2),
(24, 'BUAP - Benemérita Universidad', 'Calle 4 Sur 104, Centro Histórico', '(01) 222 229 5500', 2),
(25, 'UAM - Universidad Autónoma Metropolitana', 'Prolongación Canal de Miramontes #3855', '(0155) 5804 4600.', 2),
(26, 'IBERO - UIA - Universidad Iberoamericana', 'Prol. Paseo de la Reforma primer nivel 880-Ed', '+52 01 800 627-7615', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `names` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `date_birth` date NOT NULL,
  `departaments_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `names`, `lastname`, `email`, `password`, `date_birth`, `departaments_id`, `school_id`) VALUES
(1, 'Camila', ' Ortega', ' cami123@gmail.com', 'empan1456', '1999-03-12', 1, 1),
(2, 'Julia', 'Montenegro', ' montenegroJ@gmail.com', '12568324F', '2000-06-12', 1, 2),
(3, ' Sofía', ' Ulloa', ' sofiaUA@gmail.com', ' 27251002', '2002-10-16', 2, 3),
(4, 'Carolina ', 'Aponte ', ' carolina2@gmail.com', '29341059S', '2002-01-03', 4, 4),
(5, 'Ana', 'Bermudez', ' BA1255@gmail.com', '30312459 ', '2004-12-24', 5, 5),
(6, ' Karina ', 'Cárdenas', ' karinaC@gmail.com', '14569314 ', '2012-02-18', 6, 6),
(7, 'Cielo', 'Lopez', ' LopezCielo@gmail.com', '27324209', '2008-04-14', 7, 8),
(8, 'Jose', 'Malambo', ' malambo100@gmail.com', '37583002', '1993-06-29', 8, 15),
(9, 'Santiago', 'Malaver', ' SantiMala94@gmail.com', '145720031 ', '1994-10-01', 14, 7),
(10, 'Luis ', 'Ortegon', ' Ortegon57@gmail.com', '30021572L', '2001-09-08', 14, 7),
(11, 'Alex', 'Cagua ', ' Alex38@gmail.com', ' 13526879', '1995-12-30', 9, 16),
(12, 'Alejandro ', ' Burbano ', ' Burbano25@gmail.com', 'burbano5972', '2003-02-06', 9, 16),
(13, 'Juan ', 'Gonzalez', ' JG126757@gmail.com', '1072549252', '2014-05-16', 2, 3),
(14, 'Esteban', ' Rocha', 'EstebanR@gmail.com', '45423156454', '2009-12-09', 7, 4),
(15, 'Pablo ', 'Mendez', 'Mendez05pablo@gmail.com', '101459782', '1992-04-15', 5, 5),
(16, 'Antonella', 'Murcia', 'MurciaAnto@gmail.com', '105233AM', '1989-07-12', 21, 17),
(17, 'Miguel', 'Mora', ' Mora2708@gmail.com', '2708MoraM', '2005-08-27', 21, 17),
(18, 'Lorena', 'Paez', 'Lo772934@gmail.com', 'Paezlore341', '2000-01-04', 22, 18),
(19, 'Angel ', ' Moreno', 'Angel@gmail.com', '91002786744', '2003-07-30', 27, 20),
(20, 'Lucia', ' Perez', 'Luciperez14@gmail.com', '722486Lucia', '2009-01-18', 27, 20),
(21, ' Camilo', 'Duque ', 'CamiloDuque@gmail.com', '25052020Cd ', '2010-06-21', 22, 19),
(22, 'Martina', 'Cagua', 'Martina@gmail.com', '35072983m', '2008-11-05', 22, 19),
(23, 'Salomon', 'Ortega', 'OSalomon@gmail.com', '27423167S', '1994-02-22', 23, 22),
(24, 'Salome', 'Casilimas', 'Salo2801C@gmail.com', '1012460334', '2017-01-18', 23, 22),
(25, 'Matias', 'Betancourth', 'Matias8@gmail.com', 'matias080915', '2007-03-09', 23, 26),
(26, 'Laura ', 'Borbon ', 'Lau7859Borbon@gmail.com', '275944338 ', '1999-12-01', 23, 26),
(27, 'Vicente', 'Palomino ', 'PalominoV1234@gmail.com', ' 013031485P', '1992-08-28', 40, 24),
(28, 'Blanca', 'Hernandez', 'BlancaH@gmail.com', 'Blanca150596', '1996-05-15', 40, 24),
(29, 'Carlos', 'Forero ', 'Forero374102C@gmail.com', '1025303546', '2003-06-13', 26, 23),
(30, 'Mary ', 'Timote ', 'MaryTimote@gmail.com', 'Star542807', '1997-08-07', 30, 21);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departaments`
--
ALTER TABLE `departaments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id` (`countries_id`);

--
-- Indices de la tabla `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id` (`countries_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departaments_id` (`departaments_id`),
  ADD KEY `school_id` (`school_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `departaments`
--
ALTER TABLE `departaments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departaments`
--
ALTER TABLE `departaments`
  ADD CONSTRAINT `departaments_ibfk_1` FOREIGN KEY (`countries_id`) REFERENCES `countries` (`id`);

--
-- Filtros para la tabla `school`
--
ALTER TABLE `school`
  ADD CONSTRAINT `school_ibfk_1` FOREIGN KEY (`countries_id`) REFERENCES `countries` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`departaments_id`) REFERENCES `departaments` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
