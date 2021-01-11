-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 17, 2019 at 12:28 AM
-- Server version: 10.2.27-MariaDB
-- PHP Version: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u700606897_namop`
--

-- --------------------------------------------------------

--
-- Table structure for table `actividad`
--

CREATE TABLE `actividad` (
  `act_codigo` int(11) NOT NULL,
  `act_fecha` date NOT NULL,
  `edi_codigo` int(11) NOT NULL,
  `act_lugar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `act_nombre` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actividad`
--

INSERT INTO `actividad` (`act_codigo`, `act_fecha`, `edi_codigo`, `act_lugar`, `act_nombre`) VALUES
(1, '2019-10-16', 5, 'FPUNA', 'Preparativos'),
(2, '2019-10-17', 5, 'FPUNA', 'Dia D'),
(3, '2019-10-17', 5, 'FPUNA', 'Almuerzo (solo staff)'),
(4, '2019-10-16', 5, 'FPUNA', 'Pago de Remeras (solo staff)'),
(5, '2019-10-17', 5, 'FPUNA', 'Entrega de remeras (solo staff)');

-- --------------------------------------------------------

--
-- Table structure for table `asistencia`
--

CREATE TABLE `asistencia` (
  `asi_codigo` int(11) NOT NULL,
  `act_codigo` int(11) NOT NULL,
  `par_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asistencia`
--

INSERT INTO `asistencia` (`asi_codigo`, `act_codigo`, `par_codigo`) VALUES
(101, 1, 273),
(103, 1, 157),
(105, 1, 224),
(107, 1, 226),
(108, 1, 264),
(109, 1, 159),
(111, 3, 224),
(113, 1, 93),
(114, 4, 224),
(115, 3, 219),
(117, 1, 248),
(122, 1, 195),
(123, 1, 253),
(124, 1, 221),
(125, 4, 225),
(127, 1, 251),
(129, 1, 245),
(138, 1, 194),
(139, 1, 255),
(140, 4, 167),
(142, 1, 167),
(143, 4, 202),
(144, 4, 213),
(146, 4, 273),
(147, 1, 225),
(148, 1, 155),
(149, 1, 258),
(150, 1, 203),
(154, 1, 166),
(156, 1, 171),
(157, 1, 171),
(158, 1, 231),
(159, 1, 181),
(160, 1, 179),
(161, 1, 165),
(162, 1, 266),
(163, 1, 259),
(164, 1, 209),
(165, 1, 160),
(168, 1, 199),
(169, 1, 173),
(170, 4, 194),
(171, 4, 179),
(174, 4, 217),
(175, 4, 249),
(177, 4, 235),
(178, 1, 263),
(179, 4, 247),
(180, 1, 276),
(181, 4, 231),
(182, 4, 168),
(183, 4, 158),
(184, 4, 171),
(185, 4, 214),
(186, 4, 212),
(187, 4, 189),
(188, 4, 255),
(189, 1, 269),
(190, 4, 233),
(191, 4, 195),
(192, 4, 195),
(193, 4, 262),
(195, 4, 227),
(196, 4, 156),
(197, 4, 251),
(198, 4, 226),
(199, 4, 162),
(200, 4, 198),
(201, 4, 187),
(202, 4, 289),
(203, 4, 190),
(204, 4, 203),
(205, 4, 223),
(206, 4, 185),
(207, 4, 245),
(208, 4, 256),
(209, 4, 292),
(210, 4, 205),
(211, 4, 294),
(212, 4, 290),
(213, 4, 288),
(214, 4, 193),
(215, 4, 159),
(216, 4, 180),
(217, 4, 178),
(218, 4, 220),
(219, 4, 184),
(220, 4, 163),
(221, 4, 172),
(222, 4, 286),
(223, 4, 210),
(224, 4, 218),
(225, 4, 267),
(226, 4, 248),
(227, 4, 264),
(228, 4, 197),
(229, 4, 303),
(230, 4, 208),
(231, 4, 177),
(232, 4, 250),
(233, 4, 236),
(234, 4, 257),
(235, 4, 240),
(236, 4, 219),
(237, 4, 250),
(238, 4, 243),
(239, 4, 243),
(240, 4, 211),
(241, 4, 280),
(242, 4, 93),
(243, 4, 241),
(244, 4, 241),
(245, 4, 166),
(246, 4, 221),
(247, 4, 276),
(248, 4, 221),
(249, 4, 244),
(250, 4, 192),
(251, 4, 258),
(252, 4, 291),
(253, 4, 174),
(254, 4, 174),
(255, 4, 244),
(258, 4, 157),
(259, 4, 175),
(261, 4, 259),
(262, 4, 232),
(263, 4, 155),
(264, 4, 253),
(265, 4, 204),
(266, 4, 199),
(267, 4, 160),
(268, 4, 165),
(269, 4, 164),
(271, 4, 173),
(273, 4, 263),
(274, 1, 31),
(275, 4, 181),
(276, 4, 30),
(277, 4, 182),
(278, 4, 170),
(279, 4, 207),
(280, 4, 287),
(281, 1, 262),
(286, 3, 181),
(293, 4, 161),
(294, 4, 183),
(295, 4, 222),
(296, 4, 234),
(297, 4, 230);

-- --------------------------------------------------------

--
-- Table structure for table `auspiciante`
--

CREATE TABLE `auspiciante` (
  `aus_codigo` int(11) NOT NULL,
  `aus_nombre` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aus_correo` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aus_telefono` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carrera`
--

CREATE TABLE `carrera` (
  `car_codigo` int(11) NOT NULL,
  `car_detalle` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carrera`
--

INSERT INTO `carrera` (`car_codigo`, `car_detalle`) VALUES
(1, 'Lic. Ciencias Informaticas'),
(11, 'Ing. Aeronáutica'),
(12, 'Ing. Ciencias de los Materiales'),
(13, 'Ing. en Energía'),
(14, 'Ing. en Electricidad'),
(15, 'Ing. en Electrónica'),
(16, 'Ing. en Informática'),
(17, 'Ing. en Marketing'),
(18, 'Ing. Sistemas de Producción'),
(19, 'Lic. en Electricidad'),
(20, 'Lic. Ciencias de la Información'),
(31, 'Lic. Gestión de Hospitalidad'),
(32, 'Lic. Ciencias Atmosféricas '),
(33, 'Técnico en Electrónica');

-- --------------------------------------------------------

--
-- Table structure for table `colaborador`
--

CREATE TABLE `colaborador` (
  `col_codigo` int(11) NOT NULL,
  `col_aporteDetalle` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `col_aporteMonetario` int(11) DEFAULT NULL,
  `edi_codigo` int(11) NOT NULL,
  `aus_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `edicion`
--

CREATE TABLE `edicion` (
  `edi_codigo` int(3) NOT NULL,
  `edi_detalle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `edicion`
--

INSERT INTO `edicion` (`edi_codigo`, `edi_detalle`) VALUES
(1, 'Primera Edición'),
(2, 'Segunda Edición'),
(3, 'Tercera Edición'),
(4, 'Cuarta Edición'),
(5, 'Quinta Edición');

-- --------------------------------------------------------

--
-- Table structure for table `funcion`
--

CREATE TABLE `funcion` (
  `fun_codigo` int(5) NOT NULL,
  `fun_detalle` varchar(21) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fun_descripcion` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `funcion`
--

INSERT INTO `funcion` (`fun_codigo`, `fun_detalle`, `fun_descripcion`) VALUES
(1, 'Instructor', 'El trabajo del instructor es guiar al alumno a asimilar y aprender el contenido desarrollado por el instructor'),
(2, 'Fotografía ', 'En esta edición todos los archivos (fotos/videos) serán entregados a Gabo antes de las 11'),
(3, 'Cocina', 'Para esta edición se estarán cocinando hamburguesas detrás del aula magna / Hora de almuerzo: 13:30'),
(4, 'Control de Asistencia', 'Encargado de dar de alta a los voluntarios participantes de cada actividad');

-- --------------------------------------------------------

--
-- Table structure for table `participante`
--

CREATE TABLE `participante` (
  `par_codigo` int(11) NOT NULL,
  `per_codigo` int(11) NOT NULL,
  `edi_codigo` int(3) NOT NULL,
  `fun_codigo` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `participante`
--

INSERT INTO `participante` (`par_codigo`, `per_codigo`, `edi_codigo`, `fun_codigo`) VALUES
(30, 43, 5, 2),
(31, 44, 5, 2),
(32, 45, 5, NULL),
(33, 46, 5, NULL),
(34, 47, 5, NULL),
(35, 48, 5, NULL),
(36, 49, 5, NULL),
(37, 50, 5, NULL),
(41, 54, 5, NULL),
(44, 57, 5, NULL),
(46, 59, 5, NULL),
(47, 60, 5, NULL),
(49, 62, 5, NULL),
(50, 63, 5, NULL),
(52, 65, 5, NULL),
(53, 66, 5, NULL),
(55, 68, 5, NULL),
(56, 69, 5, NULL),
(57, 70, 5, NULL),
(58, 71, 5, NULL),
(59, 72, 5, NULL),
(60, 73, 5, NULL),
(62, 75, 5, 4),
(63, 76, 5, NULL),
(64, 77, 5, NULL),
(65, 78, 5, NULL),
(66, 79, 5, NULL),
(67, 80, 5, NULL),
(68, 81, 5, NULL),
(69, 82, 5, NULL),
(70, 83, 5, NULL),
(71, 84, 5, NULL),
(72, 85, 5, NULL),
(73, 86, 5, NULL),
(74, 87, 5, NULL),
(75, 88, 5, NULL),
(76, 89, 5, NULL),
(77, 90, 5, NULL),
(78, 91, 5, NULL),
(79, 92, 5, NULL),
(80, 93, 5, NULL),
(81, 94, 5, NULL),
(82, 95, 5, NULL),
(83, 96, 5, NULL),
(84, 97, 5, NULL),
(85, 98, 5, NULL),
(86, 99, 5, NULL),
(87, 100, 5, NULL),
(88, 101, 5, NULL),
(89, 102, 5, NULL),
(90, 103, 5, NULL),
(91, 104, 5, NULL),
(92, 105, 5, NULL),
(93, 106, 5, 1),
(94, 107, 5, NULL),
(95, 108, 5, NULL),
(96, 109, 5, NULL),
(97, 110, 5, NULL),
(98, 111, 5, NULL),
(99, 112, 5, NULL),
(100, 113, 5, NULL),
(101, 114, 5, NULL),
(102, 115, 5, NULL),
(103, 116, 5, NULL),
(104, 117, 5, NULL),
(105, 118, 5, NULL),
(106, 119, 5, NULL),
(107, 120, 5, NULL),
(108, 121, 5, NULL),
(109, 122, 5, NULL),
(110, 123, 5, NULL),
(111, 124, 5, NULL),
(112, 125, 5, NULL),
(113, 126, 5, NULL),
(114, 127, 5, NULL),
(115, 128, 5, NULL),
(116, 129, 5, NULL),
(117, 130, 5, NULL),
(118, 131, 5, NULL),
(119, 132, 5, NULL),
(120, 133, 5, NULL),
(121, 134, 5, NULL),
(122, 135, 5, NULL),
(123, 136, 5, NULL),
(124, 137, 5, NULL),
(125, 138, 5, NULL),
(126, 139, 5, NULL),
(127, 140, 5, NULL),
(128, 141, 5, NULL),
(129, 142, 5, NULL),
(130, 143, 5, NULL),
(131, 144, 5, NULL),
(132, 145, 5, NULL),
(133, 146, 5, NULL),
(134, 147, 5, NULL),
(135, 148, 5, NULL),
(136, 149, 5, NULL),
(137, 150, 5, NULL),
(138, 151, 5, NULL),
(139, 152, 5, NULL),
(140, 153, 5, NULL),
(141, 154, 5, NULL),
(142, 155, 5, NULL),
(143, 156, 5, NULL),
(144, 157, 5, NULL),
(145, 158, 5, NULL),
(146, 159, 5, NULL),
(147, 160, 5, NULL),
(148, 161, 5, NULL),
(149, 162, 5, NULL),
(150, 163, 5, NULL),
(151, 164, 5, NULL),
(152, 165, 5, NULL),
(153, 166, 5, NULL),
(154, 167, 5, 1),
(155, 168, 5, 1),
(156, 169, 5, 1),
(157, 170, 5, 1),
(158, 171, 5, 1),
(159, 172, 5, 1),
(160, 173, 5, 1),
(161, 174, 5, 1),
(162, 175, 5, 1),
(163, 176, 5, 1),
(164, 177, 5, 4),
(165, 178, 5, 1),
(166, 179, 5, 1),
(167, 180, 5, 4),
(168, 181, 5, 1),
(169, 182, 5, 1),
(170, 183, 5, 1),
(171, 184, 5, 1),
(172, 185, 5, 1),
(173, 186, 5, 1),
(174, 187, 5, 1),
(175, 188, 5, 1),
(176, 189, 5, 1),
(177, 190, 5, 4),
(178, 191, 5, 1),
(179, 192, 5, 1),
(180, 193, 5, 1),
(181, 194, 5, 1),
(182, 195, 5, 1),
(183, 196, 5, 1),
(184, 197, 5, 1),
(185, 198, 5, 1),
(186, 199, 5, 1),
(187, 200, 5, 1),
(188, 201, 5, 1),
(189, 202, 5, 1),
(190, 203, 5, 1),
(192, 205, 5, 1),
(193, 206, 5, 1),
(194, 207, 5, 1),
(195, 208, 5, 1),
(196, 209, 5, 1),
(197, 210, 5, 1),
(198, 211, 5, 1),
(199, 212, 5, 1),
(202, 215, 5, 1),
(203, 216, 5, 1),
(204, 217, 5, 1),
(205, 218, 5, 1),
(206, 219, 5, 1),
(207, 220, 5, 1),
(208, 221, 5, 4),
(209, 222, 5, 4),
(210, 223, 5, 1),
(211, 224, 5, 1),
(212, 225, 5, 1),
(213, 226, 5, 1),
(214, 227, 5, 1),
(215, 228, 5, 1),
(217, 230, 5, 1),
(218, 231, 5, 1),
(219, 232, 5, 4),
(220, 233, 5, 1),
(221, 234, 5, 1),
(222, 235, 5, 1),
(223, 236, 5, 1),
(224, 237, 5, 1),
(225, 238, 5, 1),
(226, 239, 5, 1),
(227, 240, 5, 1),
(228, 241, 5, 1),
(229, 242, 5, 4),
(230, 243, 5, 1),
(231, 244, 5, 1),
(232, 245, 5, 1),
(233, 246, 5, 1),
(234, 247, 5, 1),
(235, 248, 5, 1),
(236, 249, 5, 1),
(237, 250, 5, 1),
(238, 251, 5, 1),
(239, 252, 5, 1),
(240, 253, 5, 1),
(241, 254, 5, 1),
(242, 255, 5, 4),
(243, 256, 5, 1),
(244, 257, 5, 1),
(245, 258, 5, 1),
(246, 259, 5, 1),
(247, 260, 5, 1),
(248, 261, 5, 1),
(249, 262, 5, 1),
(250, 263, 5, 1),
(251, 264, 5, 1),
(252, 265, 5, 1),
(253, 266, 5, 1),
(254, 267, 5, 1),
(255, 268, 5, 1),
(256, 269, 5, 1),
(257, 270, 5, 1),
(258, 271, 5, 1),
(259, 272, 5, 1),
(260, 273, 5, 1),
(261, 274, 5, 1),
(262, 275, 5, 1),
(263, 276, 5, 1),
(264, 277, 5, 1),
(265, 278, 5, 1),
(266, 279, 5, 1),
(267, 280, 5, 1),
(268, 281, 5, 1),
(269, 282, 5, 1),
(270, 283, 5, 1),
(271, 284, 5, 1),
(272, 285, 5, 1),
(273, 286, 5, 1),
(274, 287, 5, 1),
(275, 288, 5, 1),
(276, 289, 5, 1),
(277, 290, 5, 1),
(278, 291, 5, 1),
(279, 292, 5, 1),
(280, 293, 5, 1),
(281, 294, 5, 1),
(282, 295, 5, 1),
(283, 296, 5, 1),
(284, 297, 5, 1),
(285, 298, 5, 1),
(286, 299, 5, 1),
(287, 300, 5, 1),
(288, 301, 5, 1),
(289, 302, 5, 1),
(290, 303, 5, 1),
(291, 304, 5, 1),
(292, 305, 5, 1),
(293, 306, 5, 1),
(294, 307, 5, 1),
(295, 308, 5, 1),
(303, 316, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

CREATE TABLE `persona` (
  `per_codigo` int(11) NOT NULL,
  `per_nombre` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `per_apellido` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `per_ci` int(11) DEFAULT NULL,
  `per_password` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_correo` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_telefono` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_fecha_nac` date DEFAULT NULL,
  `sex_codigo` int(11) NOT NULL,
  `tp_codigo` int(11) NOT NULL,
  `car_codigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`per_codigo`, `per_nombre`, `per_apellido`, `per_ci`, `per_password`, `per_correo`, `per_telefono`, `per_fecha_nac`, `sex_codigo`, `tp_codigo`, `car_codigo`) VALUES
(43, 'Eduardo David', 'Gomez Cardenas', 4659580, '0000', 'eduardocardenas97@gmail.com', '0982908639', '2000-03-18', 1, 3, 1),
(44, 'Giannina Arami', 'Iriarte Argaña    ', 5294121, '0000', 'gianniarami@hotmail.com', '', '0000-00-00', 2, 3, 1),
(45, 'Rita', 'Cantero', 449844, '0000', '', NULL, '1951-01-01', 2, 2, NULL),
(46, 'Emilia ', 'Torres', 428978, '0000', '', NULL, '1950-01-01', 2, 2, NULL),
(47, 'Pascuala ', 'Gomez', 284350, '0000', '', NULL, '1945-01-01', 2, 2, NULL),
(48, 'Ladislada', 'Candia', 1684277, '0000', '', NULL, '1941-01-01', 2, 2, NULL),
(49, 'Mirian', 'Colman', 432805, '0000', '', NULL, '1952-01-01', 2, 2, NULL),
(50, 'Mirtha', 'Moreno', 424043, '0000', '', NULL, '1954-01-01', 2, 2, NULL),
(54, 'Felipe ', 'Olmedo', 406240, '0000', '', NULL, '1950-01-01', 1, 2, NULL),
(57, 'Luz', 'Rales', 846807, '0000', '', NULL, '1951-01-01', 2, 2, NULL),
(59, 'Juana', 'Garay', 735385, '0000', '', NULL, '1939-01-01', 2, 2, NULL),
(60, 'María ', 'Ibañez', 263191, '0000', '', NULL, '1945-01-01', 2, 2, NULL),
(62, 'José Francisco', 'Gamarra', 245502, '0000', '', NULL, '1938-11-11', 1, 2, NULL),
(63, 'Nilda', 'Rodriguez', 293836, '0000', '', NULL, '1957-01-01', 2, 2, NULL),
(65, 'Zulma', 'Silva', 733299, '0000', '', NULL, '1954-01-01', 2, 2, NULL),
(66, 'Rosa', 'Olmedo de Gamarra', 370597, '0000', '', NULL, '1943-11-11', 2, 2, NULL),
(68, 'Efigenia', 'Yergros', 188613, '0000', '', NULL, '1939-01-01', 2, 2, NULL),
(69, 'Soltero', 'Ferreira Torres', 283795, '0000', '', NULL, '1946-11-11', 1, 2, NULL),
(70, 'Graciela', 'Acosta', 640769, '0000', '', NULL, '1951-01-01', 2, 2, NULL),
(71, 'Justina', 'Gomez', 501811, '0000', '', NULL, '1952-01-01', 2, 2, NULL),
(72, 'Petrona', 'Vázquez', 1104655, '0000', '', NULL, '1962-01-01', 2, 2, NULL),
(73, 'Nilo', 'Ruiz', 264346, '0000', '', NULL, '1943-01-01', 1, 2, NULL),
(75, 'Amanda', 'Rolon', 231805, '0000', '', NULL, '1942-01-02', 2, 2, NULL),
(76, 'Haydee', 'Cantero', 680702, '0000', '', NULL, '1950-01-20', 2, 2, NULL),
(77, 'Pablo', 'Moura', 1214602, '0000', '', NULL, '1944-02-02', 1, 2, NULL),
(78, 'Yolanda ', 'Oviedo', 1605507, '0000', '', NULL, '1956-01-10', 2, 2, NULL),
(79, 'Regina', 'Paredes', 396032, '0000', '', NULL, '1949-01-05', 2, 2, NULL),
(80, 'Cecilio', 'Benitez', 334875, '0000', '', NULL, '1944-10-06', 2, 2, NULL),
(81, 'Augusta', 'Valiente Vargas', 520807, '0000', '', NULL, '1957-11-11', 2, 2, NULL),
(82, 'Elpidia', 'Orue', 868721, '0000', '', NULL, '1960-05-05', 2, 2, NULL),
(83, 'Juan Enrique', 'Martínez Martín', 690447, '0000', '', NULL, '1949-11-11', 1, 2, NULL),
(84, 'María Cristina', 'Mena de Monzón', 423088, '0000', '', NULL, '1953-11-11', 2, 2, NULL),
(85, 'Laureana', 'Gauto', 398338, '0000', '', NULL, '1950-05-11', 2, 2, NULL),
(86, 'Juan Manuel', 'Monzón', 1384643, '0000', '', NULL, '1949-11-11', 1, 2, NULL),
(87, 'Celia Ramona', 'Ortega', 2700299, '0000', '', NULL, '1961-11-11', 2, 2, NULL),
(88, 'Teodora', 'Garay', 1049569, '0000', '', NULL, '1949-11-11', 2, 2, NULL),
(89, 'Ladislao', 'Gimenez', 631887, '0000', '', NULL, '1950-11-11', 1, 2, NULL),
(90, 'Luciana', 'Cabrera', 404246, '0000', '', NULL, '1949-05-05', 2, 2, NULL),
(91, 'Carlos', 'Ramirez', 213598, '0000', '', NULL, '1947-05-05', 1, 2, NULL),
(92, 'Maura Estela', 'Resquín', 427609, '0000', '', NULL, '1953-11-11', 2, 2, NULL),
(93, 'Justa', 'Santacruz', 371384, '0000', '', NULL, '1949-11-11', 2, 2, NULL),
(94, 'Olga Aurelia', 'Parodi Aquino', 365550, '0000', '', NULL, '1949-11-11', 2, 2, NULL),
(95, 'Arsenio', 'Soler Galeano', 1072113, '0000', '', NULL, '1949-11-11', 1, 2, NULL),
(96, 'Juana Bautista', 'Caceres Vda de Gomez', 231068, '0000', '', NULL, '1943-11-11', 2, 2, NULL),
(97, 'Petrona', 'Florentin', 738278, '0000', '', NULL, '1956-11-11', 2, 2, NULL),
(98, 'Benigna', 'Balbuena de Ramirez', 384527, '0000', '', NULL, '1950-11-11', 2, 2, NULL),
(99, 'Ceferino', 'Ramirez Escobar', 394390, '0000', '', NULL, '1946-11-11', 1, 2, NULL),
(100, 'Rosa Isabel', 'Acosta Añasco', 322568, '0000', '', NULL, '1946-05-05', 2, 2, NULL),
(101, 'Valencia de Jesus', 'Almada Barreto', 326978, '0000', '', NULL, '1946-11-11', 2, 2, NULL),
(102, 'Teodosia Elvira', 'Lopez de Medina', 299966, '0000', '', NULL, '1946-11-11', 2, 2, NULL),
(103, 'Fulgencio', 'Escobar ', 903474, '0000', '', NULL, '1941-11-11', 1, 2, NULL),
(104, 'Cesar Aurelio', 'Alvarez Caceres', 231227, '0000', '', NULL, '1942-11-11', 1, 2, NULL),
(105, 'Lidia', 'Penayo Martinez', 308812, '0000', '', NULL, '1946-11-11', 2, 2, NULL),
(106, 'Oliver Isaías', 'Medina Recalde', 4662525, '0000', 'olomedina00@gmail.com', NULL, '2000-04-12', 1, 1, 1),
(107, 'Petrona', 'Bordón', 1361811, '0000', '', NULL, '1940-11-11', 2, 2, NULL),
(108, 'Francisca', 'Aquino de Vega', 270426, '0000', '', NULL, '1941-11-11', 2, 2, NULL),
(109, 'Ilda Zeneida', 'Perdomo', 234054, '0000', '', NULL, '1944-11-11', 2, 2, NULL),
(110, 'Alida', 'Brizuela', 427096, '0000', '', NULL, '1945-11-11', 2, 2, NULL),
(111, 'Julio', 'Montorfano', 346905, '0000', '', NULL, '1952-11-11', 1, 2, NULL),
(112, 'Gill', 'Escurra', 1972322, '0000', '', NULL, '1942-11-11', 1, 2, NULL),
(113, 'Benita', 'Patiño', 191660, '0000', '', NULL, '1935-11-11', 2, 2, NULL),
(114, 'Claudia ', 'Morales', 497550, '0000', '', NULL, '1949-11-11', 2, 2, NULL),
(115, 'Hilda', 'Almada', 509189, '0000', '', NULL, '1948-11-11', 2, 2, NULL),
(116, 'Ma. Estela', 'Jara', 231250, '0000', '', NULL, '1942-11-11', 2, 2, NULL),
(117, 'Domiciana', 'Brizuela', 504755, '0000', '', NULL, '1949-11-11', 2, 2, NULL),
(118, 'Amada', 'Cabrera', 617146, '0000', '', NULL, '1941-11-11', 2, 2, NULL),
(119, 'Maria', 'Recalde', 1190140, '0000', '', NULL, '1959-11-11', 2, 2, NULL),
(120, 'Fredeslinda', 'Monges', 2512279, '0000', '', NULL, '1941-11-11', 2, 2, NULL),
(121, 'Ma. Asuncion', 'Rojas', 752918, '0000', '', NULL, '1949-11-11', 2, 2, NULL),
(122, 'Eliodora', 'Mendoza', 773528, '0000', '', NULL, '1948-11-11', 2, 2, NULL),
(123, 'Sofia', 'Ojeda', 385788, '0000', '', NULL, '1954-11-11', 2, 2, NULL),
(124, 'Juana', 'Pereira', 355559, '0000', '', NULL, '1952-11-11', 2, 2, NULL),
(125, 'Matilde', 'Morena', 494150, '0000', '', NULL, '1944-11-11', 2, 2, NULL),
(126, 'Silvia', 'Gamba', 798771, '0000', '', NULL, '1948-11-11', 2, 2, NULL),
(127, 'Edy', 'Arrua', 328139, '0000', '', NULL, '1947-11-11', 1, 2, NULL),
(128, 'Gilda', 'Nuñez', 668578, '0000', '', NULL, '1955-11-11', 2, 2, NULL),
(129, 'Calixto', 'Duré', 815557, '0000', '', NULL, '1950-11-11', 1, 2, NULL),
(130, 'Olga', 'Caceres', 810194, '0000', '', NULL, '1955-11-11', 2, 2, NULL),
(131, 'Iris', 'Nass', 974245, '0000', '', NULL, '1953-11-11', 2, 2, NULL),
(132, 'Teresa', 'Paredes', 328094, '0000', '', NULL, '1940-11-11', 2, 2, NULL),
(133, 'Celina', 'Magni', 238692, '0000', '', NULL, '1938-11-11', 2, 2, NULL),
(134, 'Ma. Selena', 'Zarate', 683390, '0000', '', NULL, '1952-11-11', 2, 2, NULL),
(135, 'Constancia', 'Valenzuela', 1522653, '0000', '', NULL, '1965-11-11', 2, 2, NULL),
(136, 'Agustina', 'Caballero', 846593, '0000', '', NULL, '1955-11-11', 2, 2, NULL),
(137, 'Felicita', 'Caballero', 732258, '0000', '', NULL, '1957-11-11', 2, 2, NULL),
(138, 'Nestor', 'Segovia', 124418, '0000', '', NULL, '1931-11-11', 1, 2, NULL),
(139, 'Miguela', 'Dante', 520389, '0000', '', NULL, '1951-11-11', 2, 2, NULL),
(140, 'Elpidio', 'Gaona', 298292, '0000', '', NULL, '1943-11-11', 1, 2, NULL),
(141, 'Carlos', 'Careaga', 444991, '0000', '', NULL, '1942-11-11', 1, 2, NULL),
(142, 'Leonarda', 'Chavez', 364528, '0000', '', NULL, '1941-11-11', 2, 2, NULL),
(143, 'Lina', 'Viñuales', 369457, '0000', '', NULL, '1949-11-11', 2, 2, NULL),
(144, 'Amelia', 'Torres', 273740, '0000', '', NULL, '1941-11-11', 2, 2, NULL),
(145, 'Mirta', 'Cañete', 425537, '0000', '', NULL, '1960-11-11', 2, 2, NULL),
(146, 'Ramona', 'Florentin', 2114165, '0000', '', NULL, '1958-11-11', 2, 2, NULL),
(147, 'Rosa', 'Alcaraz', 341253, '0000', '', NULL, '1945-11-11', 2, 2, NULL),
(148, 'Osvalda', 'Ortigoza', 300481, '0000', '', NULL, '1945-11-11', 2, 2, NULL),
(149, 'Ester', 'Alliende', 534803, '0000', '', NULL, '1952-11-11', 2, 2, NULL),
(150, 'Mirtha', 'Paredes', 381524, '0000', '', NULL, '1953-11-11', 2, 2, NULL),
(151, 'Florinda', 'Brizuela', 2105684, '0000', '', NULL, '1947-11-11', 2, 2, NULL),
(152, 'Hilda', ' Alvarenga', 316260, '0000', '', NULL, '1953-11-11', 2, 2, NULL),
(153, 'Beatriz', 'Mareco', 749434, '0000', '', NULL, '1952-11-11', 2, 2, NULL),
(154, 'Juana', 'Vazquez', 942910, '0000', '', NULL, '1953-11-11', 2, 2, NULL),
(155, 'Rosa', 'Estigarribia', 204496, '0000', '', NULL, '1940-11-11', 2, 2, NULL),
(156, 'Estela', 'Velazquez', 596713, '0000', '', NULL, '1955-11-11', 2, 2, NULL),
(157, 'Ana', 'Pereira', 955521, '0000', '', NULL, '1960-11-11', 2, 2, NULL),
(158, 'Brigida', 'Estigarribia', 336554, '0000', '', NULL, '1942-11-11', 2, 2, NULL),
(159, 'Nidia', 'Lopez', 417183, '0000', '', NULL, '1944-11-11', 2, 2, NULL),
(160, 'Lucila', 'Ortiz', 361503, '0000', '', NULL, '1949-11-11', 2, 2, NULL),
(161, 'Idalina', 'Villalba', 637774, '0000', '', NULL, '1954-11-11', 2, 2, NULL),
(162, 'Hermogenes', 'Mendoza', 452628, '0000', '', NULL, '1951-11-11', 1, 2, NULL),
(163, 'Jovina', 'Meza', 625998, '0000', '', NULL, '1952-11-11', 2, 2, NULL),
(164, 'Silvia', 'Flores', 922285, '0000', '', NULL, '1966-11-11', 2, 2, NULL),
(165, 'Francisca', 'Gonzalez', 499391, '0000', '', NULL, '1949-11-11', 2, 2, NULL),
(166, 'Irma', 'Soto', 486241, '0000', '', NULL, '1948-11-11', 2, 2, NULL),
(167, 'Kathia María', 'García Ovelar', 5431281, '0000', '', NULL, '0000-00-00', 2, 1, 16),
(168, 'Hector Ruben', 'Garcia', 4920159, '0000', 'hectorgh1s@gmail.com', '0984996242', '1998-09-08', 1, 1, 1),
(169, 'Sergio Donato', 'Giménez Brozon', 5026025, '0000', '', NULL, '0000-00-00', 1, 1, 15),
(170, 'Guillermo Ariel', 'Giménez Giménez', 4908768, '0000', '', NULL, '0000-00-00', 1, 1, 16),
(171, 'Makarena Inés', 'Giménez Lird', 5715794, '5715794_99', 'makigili.mg@gmail.com', '0982540092', '1999-10-22', 2, 1, 15),
(172, 'Melinda', 'Gimenez', 5663687, '0000', 'melisueli@gmail.com', '0984155070', '1999-02-19', 2, 1, 1),
(173, 'Giannina Micaela', 'Gómez Leiva', 5644386, '0000', '', NULL, '0000-00-00', 2, 1, 1),
(174, 'Amiri Nael', 'Gómez Martínez', 4097767, '0000', '', NULL, '0000-00-00', 1, 1, 32),
(175, 'Federico David', 'Gómez Molinas', 3815875, '1234', 'fede_gomezm@hotmail.com', '0984709121', '1995-08-24', 1, 1, 11),
(176, 'Pedro Manuel', 'Gómez Monzón', 4351139, '0000', 'pedromanu98@gmail.com', '0981349414', '1998-10-15', 1, 1, 14),
(177, 'Joel Nicolás', 'Gómez Torres', 5374905, '0000', '', NULL, '0000-00-00', 1, 1, 13),
(178, 'Aldo', 'Gónzalez Colmán', 5005898, '0000', 'stringwow@outlook.com', '', '0000-00-00', 1, 1, 1),
(179, 'Hector Osmar', 'González García', 4687964, '0000', '', NULL, '0000-00-00', 1, 1, 13),
(180, 'Ana Belen', 'Gonzalez Gimenez', 5968742, '0000', 'belen280911@gmail.com', '', '1999-03-28', 2, 1, 1),
(181, 'Mauricio', 'González Morra', 3976431, 'dtemplar', 'maurigmorra@gmail.com', '0981609436', '1992-01-06', 1, 1, 16),
(182, 'Fabian Ricardo', 'Insfran', 3648321, '0000', '', NULL, '0000-00-00', 1, 1, 16),
(183, 'Yanina Araceli', 'Jara Moreno', 5251519, '0000', '', NULL, '0000-00-00', 2, 1, 1),
(184, 'Francisco Rolando', 'Aguilera', 6181760, '0000', '', NULL, '0000-00-00', 1, 1, 15),
(185, 'Mateo Giulliano', 'Albrecht Cuevas', 4484570, '2005', 'mateogiulliano@hotmail.com', '0983342745', '1999-05-20', 1, 1, 16),
(186, 'Erika Lujan', 'Alcaraz Gutierrez', 4814234, '0000', '', '0982429353', '0000-00-00', 2, 1, 1),
(187, 'Gabriel Celso', 'Almada Madelaire', 3632889, '0000', 'gabriel.lmd@gmail.com', '0971166389', '1994-09-14', 1, 3, 1),
(188, 'José', 'Almada', 4365566, '0000', 'almadajose95@gmail.com', '0961599626', '1995-05-22', 1, 1, 16),
(189, 'Fernando Adrian', 'Alvarez Arzamendia', 5291512, '0000', '', NULL, '0000-00-00', 1, 1, 14),
(190, 'Oscar Alexander', 'Amarilla Leguizamón', 6129422, '0000', 'alex.socitamrofni@gmail.com', '0991775181', '1999-10-13', 1, 1, 1),
(191, 'Cesar David', 'Araujo Aquino', 4811633, '0000', '', '', '1998-10-22', 1, 1, 13),
(192, 'Luis Fernando', 'Armoa Franco', 5962948, 'fernando111', 'fernandogamarra50@gmail.com', '0984700040', '1997-12-07', 1, 1, 12),
(193, 'Lizz Stefany', 'Bareiro López', 5210405, '0000', 'stefanylopezba777@gmail.com', '0971305411', '1999-06-03', 2, 1, 1),
(194, 'Silvia Alejandra', 'Barrientos', 4590128, '0000', 'alejandrabarrientos099@gmail.com', '0991713795', '2000-06-06', 2, 1, 1),
(195, 'Nicolás Daniel', 'Benítez Aquino', 4989370, '0000', 'nicodaniel.benitez97@gmail.com', '0995655800', '1997-07-12', 1, 1, 14),
(196, 'Silvana Guillermina ', 'Benítez Valdez', 4759951, '0000', '', NULL, '0000-00-00', 2, 1, 1),
(197, 'Juan', 'Benítez', 6759512, '0000', '', '0982457822', '1999-06-24', 1, 1, 13),
(198, 'Pablo Ezequiel', 'Bogado Caballero', 5104776, '0000', 'pablocaba16@gmail.com', '0982180854', '1999-07-29', 1, 1, 1),
(199, 'Alix', 'Brizuela', 5306669, '0000', '', '', '0000-00-00', 1, 1, 15),
(200, 'Pablo', 'Caballero', 5170878, '0000', 'pcsosa.pcs@gmail.com', '0994823905', '2000-06-27', 1, 1, 16),
(201, 'Raul', 'Caballero', 4642856, '0000', '', NULL, '0000-00-00', 1, 1, 15),
(202, 'Oscar', 'Cabrera Cuevas', 6625674, '0000', 'oscarcabreracuevas@gmail.com', '0984359258', '1999-07-09', 1, 1, 14),
(203, 'Nara Paola', 'Cáceres Vega', 5446567, '0000', '', NULL, '0000-00-00', 2, 1, 13),
(205, 'Montserrat Maria Lujan', 'Sanabria González', 4932000, '0000', 'monsesanabria8@gmail.com', '0981558736', '1998-12-06', 2, 1, 18),
(206, 'Laura ', 'Ovelar Santander ', 4006047, '0000', 'laaausantande@gmail.com', '0981269188', '1995-01-12', 2, 1, 18),
(207, 'Silvio David', 'Palacio Meza', 5501586, '0000', '', NULL, '0000-00-00', 1, 1, 15),
(208, 'Patricia Anahi', 'Palacios Dominguez ', 5125695, '0000', 'pechupalacios@gmail.com', '0982955400', '1997-07-24', 2, 1, 1),
(209, 'Rafael', 'Pukall', 4045651, '0000', '', NULL, '0000-00-00', 1, 3, 1),
(210, 'Ramón', 'Perdomo', 4237340, '0000', '', '', '0000-00-00', 1, 1, 16),
(211, 'Federico Jesus ', 'Ramirez Sosa ', 3562560, '0000', '', NULL, '0000-00-00', 1, 1, 11),
(212, 'Alan Nicolas ', 'Ramirez Yegros ', 5987888, '0000', '', NULL, '0000-00-00', 1, 1, 1),
(215, 'Lorena Soledad', 'Riquelme Castro', 5207050, '0000', 'lriquelme595@gmail.com', '0984686807', '1999-01-30', 2, 1, 1),
(216, 'Alcides Miguel ', 'Riveros Sanabria', 6004381, '15085', 'alexriveros1996@gmail.com', '0982242145', '1996-03-14', 1, 1, 15),
(217, 'César Augusto ', 'Rodas Espinola', 4556705, '0000', '', NULL, '0000-00-00', 1, 1, 16),
(218, 'Nathaly ', 'Rodríguez Schinini ', 4704892, '0000', '', NULL, '0000-00-00', 2, 1, 15),
(219, 'Gabriel ', 'Rodriguez ', 4560347, '0000', '', NULL, '0000-00-00', 1, 1, 12),
(220, 'Fernando Jesús ', 'Rojas Saffi ', 5964406, '0000', 'rojasfernandorojas929@gmail.com', '0971922320', '1999-12-25', 1, 1, 13),
(221, 'Laura Leticia ', 'Rolón Salinas ', 4591618, '0000', 'laurarolon91@gmail.com', '0971988041', '2019-07-01', 2, 1, 1),
(222, 'Oscar Andrés ', 'Román Ramos ', 4306532, '28469', '', '', '0000-00-00', 1, 3, 1),
(223, 'José Gabriel ', 'Romero Narvaez ', 6240963, '0000', 'joserom1111@gmail.com', '0981385039', '2000-05-25', 1, 1, 12),
(224, 'Fabricio Joel ', 'Ruiz Diaz Ruiz Diaz ', 4684657, '0000', 'fabriciojoel99@gmail.com', '0981345963', '1999-12-30', 1, 1, 1),
(225, 'Matias Enrique ', 'Rivero Mendoza ', 4445677, '0972662869mM', 'matias-rivero2011@hotmail.com', '', '1998-09-09', 1, 1, 15),
(226, 'Maria José', 'Rejala Cristaldo', 6255946, '0000', 'majoo2505200@gmail.com', '0981955271', '2000-05-25', 2, 1, 1),
(227, 'María del Carmen', 'Resquín Rodríguez ', 5539132, '5539132', 'carmenresquin.cr@fpuna.edu.py', '0981515606', '2000-05-13', 2, 1, 1),
(228, 'Krause', 'Hans', 4275220, '0000', '', NULL, '0000-00-00', 1, 1, 16),
(230, 'Yamila Maria', 'Lopez Gonzalez', 4556024, '0000', '', NULL, '0000-00-00', 2, 1, 15),
(231, 'Laine Alexandra Celeste', 'Lezcano Almeida', 5064339, '0000', 'laine_lezcano@hotmail.com', '0983482803', '2019-08-12', 2, 1, 13),
(232, 'Ayelen Abigail', 'López Oddone', 4630569, 'ayictaoddone', 'abigailodd@gmail.com', '0984704705', '1999-11-02', 2, 3, 18),
(233, 'Andres Darío', 'Maciel Leguizamón', 4577992, '0000', 'andresmaciel99@gmail.com', '0985549863', '1999-02-15', 1, 1, 14),
(234, 'Willy Alexis ', 'Maciel Salinas', 4789023, 'qwertyuiop', 'willy.alexis1@gmail.com', '0982270391', '1995-10-16', 1, 1, 13),
(235, 'Cris Celia', 'Martínez Cáceres', 5494699, '0000', '', '', '0000-00-00', 2, 1, 1),
(236, 'Walter Sebastian', 'Martinez Leon', 4513073, '0000', 'wsebastianmleon@fpuna.edu.py', '4513073', '1997-05-18', 1, 1, 15),
(237, 'Alejandro Josué', 'Martínez Vazquez', 4797836, '0000', '', NULL, '0000-00-00', 1, 1, 14),
(238, 'Catalina', 'Monzon Almada', 6657120, '0000', '', NULL, '0000-00-00', 2, 1, 1),
(239, 'Celina', 'Monzon Almada', 6657832, '0000', '', NULL, '0000-00-00', 2, 3, 1),
(240, 'Juan Damian', 'Morales Adorno', 5432267, '0000', '', NULL, '0000-00-00', 1, 1, 15),
(241, 'Jose Osvaldo', 'Ocampos Florentin', 4331027, '0000', '', NULL, '0000-00-00', 1, 1, 15),
(242, 'Tania', 'Ocampos', 6139743, '0000', '', NULL, '0000-00-00', 2, 3, 16),
(243, 'Alicia Ester', 'Ortiz Melgarejo', 5004240, '0000', 'aliciaesteer@gmail.com', '0972401101', '1999-05-28', 2, 1, 1),
(244, 'Alexis Moises', 'Ortiz Olmedo', 6249002, '0000', 'ortiz.alexis2014.3.1@fpuna.edu.py', '0992851379', '2000-03-24', 1, 1, 1),
(245, 'Carmen Raquel', 'Ortiz Rotela', 4858419, 'cror', 'cror.1999@gmail.com', '0972910526', '1999-04-13', 2, 1, 15),
(246, 'Nerea', 'Ortiz', 4317946, '0000', 'nmoortiz@gmail.com', '0981127630', '1994-09-14', 2, 1, 16),
(247, 'Sandra Magaly', 'Cano Soria', 3529362, '0000', '', NULL, '0000-00-00', 2, 1, 18),
(248, 'Nestor Dorian', 'Cantero Acosta', 5693789, '', 'ndoriancantero@gmail.com', '0984747854', '1999-11-16', 1, 1, 14),
(249, 'Gabriela Johana', 'Cardozo Villalba', 5446269, '0000', 'gaby_vicar@hotmail.com', '0992338255', '1997-07-14', 2, 1, 19),
(250, 'Orlando Fabián', 'Castillo González', 4984467, '0000', '', NULL, '0000-00-00', 1, 1, 14),
(251, 'Alezander David', 'Céspedes', 6547176, '0000', '', NULL, '0000-00-00', 1, 3, 1),
(252, 'Osvaldo Ezequiel', 'Colman Nuñez', 5107414, '0000', '', NULL, '0000-00-00', 1, 1, 15),
(253, 'Gabriela Isaura', 'Coronel Gaona', 5343489, '0000', 'gabycoronel19.gc@gmail.com', '0982516200', '0000-00-00', 2, 1, 18),
(254, 'Luis Enrique', 'Cubilla Añasco', 3450452, 'fpunaCubilla92', 'luisenriquecubilla@fpuna.edu.py', '59597226545', '1992-03-19', 1, 1, 16),
(255, 'Juan José', 'Delvalle Santacruz', 4799829, '0000', '', NULL, '0000-00-00', 1, 1, 11),
(256, 'Romina Elizabeth', 'Duarte Cristaldo', 6038536, '0000', 'Selyromina@gmail.com', '0982895407', '0000-00-00', 2, 1, 12),
(257, 'César Andrés', 'Escobar Reinalk', 4945346, '0000', 'cesar2000.escobar@fpuna.edu.py', '0994217592', '2000-05-23', 1, 1, 15),
(258, 'Marcos Ariel', 'Escobar Rolón', 4730472, '0000', '', NULL, '0000-00-00', 1, 3, 1),
(259, 'Mónica Montserrat', 'Espínola Pedrozo', 5446510, '0000', '', NULL, '0000-00-00', 2, 3, 1),
(260, 'María Belén', 'Espinoza Vera', 5626427, '0000', 'mabelen270@gmail.com', '0982776670', '2000-05-05', 2, 1, 12),
(261, 'Mónica', 'Fernández Velázquez', 3812855, '0000', 'monii.fer@gmail.com', '0961242444', '0000-00-00', 2, 1, 13),
(262, 'Soledad Edith', 'Ferreira Gonzalez', 5457440, '0000', '', NULL, '0000-00-00', 2, 1, 13),
(263, 'Marcos Alejandro', 'Figueredo Gaona', 4815455, '0000', 'marcos.figueredo.737@gmail.com', '0972416286', '1998-09-25', 1, 1, 14),
(264, 'Mathias Gaspar', 'Galeano Alvarez', 5690477, '0000', 'mathiasgaleano77@gmail.com', '0971952632', '2000-07-14', 1, 1, 15),
(265, 'Nestor Gabriel', 'Galeano Arena', 5672226, '0000', '', NULL, '0000-00-00', 1, 1, 15),
(266, 'Luis', 'Galeano', 4258408, '0000', 'luisgaleano281@gmail.com', '0991419394', '1995-12-27', 1, 1, 15),
(267, 'José Maria', 'Sanchez Medina', 4735121, '0000', '', NULL, '0000-00-00', 1, 1, 15),
(268, 'Oscar David', 'Santacruz Morel', 4238658, '0000', '', NULL, '0000-00-00', 1, 1, 15),
(269, 'Maria Isabel', 'Segovia Mendoza', 4890928, '0000', 'maria.segovia6999@gmail.com', '0983918531', '1999-09-06', 2, 1, 17),
(270, 'Andrea Araceli ', 'Silva Rudas', 4372705, '0000', 'andreasilvarudas@hotmail.com', '0971620964', '1998-12-07', 2, 1, 19),
(271, 'Claudia Lorena', 'Silva Salas', 5000582, '0000', 'claudiasilvamiau@gmail.com', '0971855309', '1999-12-16', 2, 1, 15),
(272, 'Guillermo Antonio', 'Silva Sosa', 5307516, '0000', '', NULL, '0000-00-00', 1, 1, 1),
(273, 'Enzo Matias', 'Unzain Ayala', 5108344, '0000', '', NULL, '0000-00-00', 1, 1, 16),
(274, 'Jorge', 'Uriarte Brítez', 6013026, '0000', '', NULL, '0000-00-00', 1, 1, 16),
(275, 'Alberto Daniel', 'Valdez Urquhart', 5031168, '19375', 'tico.urquhart@gmail.com', '0982593217', '1999-11-09', 1, 3, 1),
(276, 'Fátima Magalí', 'Vázquez Garay', 5297665, '0000', 'fatimavazquez476@gmail.com', '0983114631', '2000-03-29', 2, 1, 1),
(277, 'Daniel Josué', 'Vera Cabrera', 5065548, 'Google98', 'daniveracab@gmail.com', '0971957091', '1998-04-08', 1, 1, 15),
(278, 'Romina Maribel', 'Vera Torres', 5639882, '0000', '', NULL, '0000-00-00', 2, 1, 11),
(279, 'Mathias Eduardo', 'Villasanti Núñez', 4859229, '0000', '', NULL, '0000-00-00', 1, 3, 1),
(280, 'Shirley Patricia ', 'Zarate Meza', 4801046, '0000', 'shirzarate13@gmail.com', '0995681567', '1998-10-14', 2, 1, 19),
(281, 'Ranulfo De Jesús', 'Benítez Benitez ', 5499924, '0000', '', NULL, '0000-00-00', 1, 1, 1),
(282, 'Iván Alejandro', 'Medina Vallejos', 4757653, 'Iván4757653', 'ivanalemedina@gmail.com', '0971218507', '1999-06-05', 1, 1, 17),
(283, 'Javier Rafael', 'López Cáceres', 4552477, '0000', '', NULL, '0000-00-00', 1, 1, 16),
(284, 'María Alejandra', 'Agüero', 3604107, '0000', '', NULL, '0000-00-00', 2, 1, 16),
(285, 'Javier Nicolás', 'Martínez Regis', 4832155, '0000', '', NULL, '0000-00-00', 1, 1, 17),
(286, 'María Alejandra', 'Pukall', 4325766, '0000', 'ale.pukall@gmail.com', '0983934246', '1997-04-16', 2, 1, 14),
(287, 'Melissa Araceli', 'Agüero Almada', 5144709, '0000', '', NULL, '0000-00-00', 2, 1, 15),
(288, 'Julia Isabel', 'Acosta Britez', 4013168, '0000', '', NULL, '0000-00-00', 2, 1, 14),
(289, 'Félix David', 'Leiva Portillo', 3618837, '0000', 'felix_killyou@hotmail.com', '0972737290', '1993-12-25', 1, 1, 15),
(290, 'Gladys', 'Caballero', 4999908, '0000', '', NULL, '0000-00-00', 2, 1, 18),
(291, 'Viviana', 'Cáceres Giménez', 4932432, '0000', '', NULL, '0000-00-00', 2, 1, 11),
(292, 'Marissa', 'Garcia', 4655505, '0000', '', NULL, '0000-00-00', 2, 1, 17),
(293, 'Gabriel', 'Villar', 5274858, '0000', '', NULL, '0000-00-00', 1, 1, 11),
(294, 'Patricia', 'Silvero', 5003248, '0000', '', NULL, '0000-00-00', 2, 1, 11),
(295, 'Nicole', 'Gimenez ', 5500692, '0000', '', NULL, '0000-00-00', 2, 1, 14),
(296, 'Valeria', 'Vàzquez', 4010672, '0000', '', NULL, '0000-00-00', 2, 1, 18),
(297, 'Leila', 'Ruìz Dìaz', 5293030, '0000', '', NULL, '0000-00-00', 2, 1, 17),
(298, 'Rubén', 'Méndez', 4791481, '0000', '', NULL, '0000-00-00', 1, 1, 14),
(299, 'Marcos', 'Florentín', 5297549, '0000', '', NULL, '0000-00-00', 1, 1, 14),
(300, 'Miguel', 'Villagra', 4580884, '0000', 'miguel.villagra@fpuna.edu.py', '', '1999-08-11', 1, 1, 1),
(301, 'Marco Aurelio', 'Acosta Posadas', 4777842, '0000', 'marcochongsu@gmail.com', '0986186281', '1999-07-15', 1, 1, 16),
(302, 'Bruno', 'Garcete', 5378939, '0000', '', NULL, '0000-00-00', 1, 1, 1),
(303, 'Emilio', 'Ginzo Benitez', 4710674, '0000', '', NULL, '0000-00-00', 1, 1, 16),
(304, 'Claudia F. Arami', 'Nuñez Scolari', 5241565, '0000', 'araselly2000@fpuna.edu.py', '0981868718', '2000-01-31', 2, 1, 16),
(305, 'Ross Mery', 'Avalos Osorio', 4804451, '0000', '', NULL, '0000-00-00', 2, 1, 15),
(306, ' Arturo Isaías', 'Keim Mora', 4821129, '0000', '', NULL, '0000-00-00', 1, 1, 14),
(307, 'Paloma', 'Fernández', 4459973, '0000', '', '0991427777', '1999-09-06', 2, 1, 15),
(308, 'David', 'Santacruz', 4238685, '0000', 'divdedroid@gmail.com', '0984926974', '1997-05-21', 1, 1, 15),
(316, 'Sofia Clabel', 'Colman Mereles', 4393798, '0000', 'sofipolmatt@gmail.com', '0983378818', '1998-06-20', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sexo`
--

CREATE TABLE `sexo` (
  `sex_codigo` int(11) NOT NULL,
  `sex_detalle` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sexo`
--

INSERT INTO `sexo` (`sex_codigo`, `sex_detalle`) VALUES
(1, 'Masculino'),
(2, 'Femenino');

-- --------------------------------------------------------

--
-- Table structure for table `tip_persona`
--

CREATE TABLE `tip_persona` (
  `tp_codigo` int(11) NOT NULL,
  `tp_detalle` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tip_persona`
--

INSERT INTO `tip_persona` (`tp_codigo`, `tp_detalle`) VALUES
(1, 'Voluntario'),
(2, 'Participante'),
(3, 'Staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`act_codigo`),
  ADD KEY `edicion_actividad_fk` (`edi_codigo`);

--
-- Indexes for table `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`asi_codigo`),
  ADD KEY `actividad_asistencia_fk` (`act_codigo`),
  ADD KEY `participante_asistencia_fk` (`par_codigo`);

--
-- Indexes for table `auspiciante`
--
ALTER TABLE `auspiciante`
  ADD PRIMARY KEY (`aus_codigo`);

--
-- Indexes for table `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`car_codigo`);

--
-- Indexes for table `colaborador`
--
ALTER TABLE `colaborador`
  ADD PRIMARY KEY (`col_codigo`),
  ADD KEY `auspiciante_colaborador_fk` (`aus_codigo`),
  ADD KEY `edicion_colaborador_fk` (`edi_codigo`);

--
-- Indexes for table `edicion`
--
ALTER TABLE `edicion`
  ADD PRIMARY KEY (`edi_codigo`);

--
-- Indexes for table `funcion`
--
ALTER TABLE `funcion`
  ADD PRIMARY KEY (`fun_codigo`);

--
-- Indexes for table `participante`
--
ALTER TABLE `participante`
  ADD PRIMARY KEY (`par_codigo`),
  ADD KEY `edicion_participante_fk` (`edi_codigo`),
  ADD KEY `persona_participante_fk` (`per_codigo`),
  ADD KEY `fun_codigo` (`fun_codigo`);

--
-- Indexes for table `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`per_codigo`),
  ADD KEY `carrera_persona_fk` (`car_codigo`),
  ADD KEY `tip_persona_persona_fk` (`tp_codigo`),
  ADD KEY `sexo_persona_fk` (`sex_codigo`);

--
-- Indexes for table `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`sex_codigo`);

--
-- Indexes for table `tip_persona`
--
ALTER TABLE `tip_persona`
  ADD PRIMARY KEY (`tp_codigo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actividad`
--
ALTER TABLE `actividad`
  MODIFY `act_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `asi_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT for table `auspiciante`
--
ALTER TABLE `auspiciante`
  MODIFY `aus_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `carrera`
--
ALTER TABLE `carrera`
  MODIFY `car_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `colaborador`
--
ALTER TABLE `colaborador`
  MODIFY `col_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `edicion`
--
ALTER TABLE `edicion`
  MODIFY `edi_codigo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `funcion`
--
ALTER TABLE `funcion`
  MODIFY `fun_codigo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `participante`
--
ALTER TABLE `participante`
  MODIFY `par_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `persona`
--
ALTER TABLE `persona`
  MODIFY `per_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT for table `sexo`
--
ALTER TABLE `sexo`
  MODIFY `sex_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tip_persona`
--
ALTER TABLE `tip_persona`
  MODIFY `tp_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `edicion_actividad_fk` FOREIGN KEY (`edi_codigo`) REFERENCES `edicion` (`edi_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `actividad_asistencia_fk` FOREIGN KEY (`act_codigo`) REFERENCES `actividad` (`act_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `participante_asistencia_fk` FOREIGN KEY (`par_codigo`) REFERENCES `participante` (`par_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `colaborador`
--
ALTER TABLE `colaborador`
  ADD CONSTRAINT `auspiciante_colaborador_fk` FOREIGN KEY (`aus_codigo`) REFERENCES `auspiciante` (`aus_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `edicion_colaborador_fk` FOREIGN KEY (`edi_codigo`) REFERENCES `edicion` (`edi_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `participante`
--
ALTER TABLE `participante`
  ADD CONSTRAINT `edicion_participante_fk` FOREIGN KEY (`edi_codigo`) REFERENCES `edicion` (`edi_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `participante_ibfk_1` FOREIGN KEY (`fun_codigo`) REFERENCES `funcion` (`fun_codigo`),
  ADD CONSTRAINT `persona_participante_fk` FOREIGN KEY (`per_codigo`) REFERENCES `persona` (`per_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `carrera_persona_fk` FOREIGN KEY (`car_codigo`) REFERENCES `carrera` (`car_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `sexo_persona_fk` FOREIGN KEY (`sex_codigo`) REFERENCES `sexo` (`sex_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tip_persona_persona_fk` FOREIGN KEY (`tp_codigo`) REFERENCES `tip_persona` (`tp_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
