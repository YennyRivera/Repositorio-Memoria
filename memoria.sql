-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-09-2022 a las 00:48:50
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `memoria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `año` varchar(30) NOT NULL,
  `formato` varchar(300) NOT NULL,
  `historia` varchar(300) NOT NULL,
  `autor` varchar(300) NOT NULL,
  `libro` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `titulo`, `año`, `formato`, `historia`, `autor`, `libro`) VALUES
(5, 'A B C de la Tecnologìa 1', '1989', 'PDF', 'SI', '-Textos: Joe Broderick y Felix Moreno                                                                           -Ilust y Diseño: Joe Broderick', 'ABC de la tecnología 1.pdf'),
(6, 'A B C de la Tecnologìa 3', '1989', 'PDF', 'SI', '-Textos: Joe Broderick y Felix Moreno                                                                           -Ilust y Diseño: Joe Broderick', 'ABC de la tecnología 3.pdf'),
(7, 'A B C de la Tecnologìa 5', '1989', 'PDF', 'SI', '-Textos: Joe Broderick y Felix Moreno                                                                           -Ilust y Diseño: Joe Broderick', 'ABC de la tecnologia 5.pdf'),
(8, 'TC Normas del Lenguaje', 'SF', 'PDF', 'NO', 'Centro Nacional de Artes Graficas', 'Tecnicas de la comunicación normas del lenguaje SENA.pdf'),
(9, 'Elogio de los Oficios', '1972', 'PDF', 'NO', 'Carlos Castro Saavedra', 'Elogio de los oficios SENA.pdf'),
(10, 'SENA 50 AÑOS Formación Profesional', '2007', 'PDF', 'SI', 'Leòn Darìo Restrepo Agudelo ', 'SENA 50 AÑOS.pdf'),
(11, 'PRISMA VI n.36', '1990', 'PDF', 'SI', 'Jacqueline Villanueva Solo', 'Revista PRISMA SENA.pdf'),
(12, 'Area de Preimpresion', '2001', 'PDF', 'SI', 'Mesa Sectorial de la Industria Gràfica', 'area de preimpresion.pdf'),
(13, 'Ley 909 de 2004', '2004', 'PDF', 'SI', 'Departamento Administrativo de la Funciòn Pùblica', 'ley 909 2004.pdf'),
(14, 'Cartilla de Orientaciòn: Manejo de elementos devolutivos en servicio', '1986', 'PDF', 'NO', 'Subgerencia Administriva Regional de BOGOTÀ', 'CARTILLA DE ORIENTACION.pdf'),
(15, 'Apuntes sobre OFFSET', '1983', 'PDF', 'NO', 'Centro Nacional de Artes Graficas', 'apuntes sobre offset SENA.pdf'),
(16, 'El desarrollo INDUSTRIAL frente a la REESTRUCTURACION', '1989', 'PDF', 'NO', 'Secciòn de Publicacioes SENA', 'El desarrollo industrial frente a a la reestructuración.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_details`
--

CREATE TABLE `product_details` (
  `id` int(20) NOT NULL,
  `name` varchar(120) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `price` int(8) NOT NULL,
  `ram` varchar(100) NOT NULL,
  `storage` varchar(50) NOT NULL,
  `imagen` varchar(355) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-active,1-inactive'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `product_details`
--

INSERT INTO `product_details` (`id`, `name`, `brand`, `price`, `ram`, `storage`, `imagen`, `status`) VALUES
(35, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(4).JPG', '1'),
(34, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(3).JPG', '1'),
(33, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(2).JPG', '1'),
(32, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(1).JPG', '1'),
(36, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(5).JPG', '1'),
(37, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(6).JPG', '1'),
(38, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(7).JPG', '1'),
(39, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(8).JPG', '1'),
(40, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(9).JPG', '1'),
(41, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(10).JPG', '1'),
(42, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(11).JPG', '1'),
(43, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(12).JPG', '1'),
(44, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(13).JPG', '1'),
(45, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(14).JPG', '1'),
(46, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(15).JPG', '1'),
(47, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(16).JPG', '1'),
(48, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(17).JPG', '1'),
(49, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(18).JPG', '1'),
(50, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(19).JPG', '1'),
(51, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(20).JPG', '1'),
(52, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(21).JPG', '1'),
(53, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(22).JPG', '1'),
(54, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(23).JPG', '1'),
(55, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(24).JPG', '1'),
(56, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(25).JPG', '1'),
(57, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(26).JPG', '1'),
(58, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(27).JPG', '1'),
(59, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(28).JPG', '1'),
(60, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(29).JPG', '1'),
(61, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(30).JPG', '1'),
(62, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(31).JPG', '1'),
(63, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(32).JPG', '1'),
(64, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(33).JPG', '1'),
(65, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(34).JPG', '1'),
(66, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(35).JPG', '1'),
(67, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(36).JPG', '1'),
(68, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(37).jpg', '1'),
(69, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(38).JPG', '1'),
(70, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(39).JPG', '1'),
(71, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(40).jpg', '1'),
(72, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(41).JPG', '1'),
(73, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(42).JPG', '1'),
(74, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(45).JPG', '1'),
(75, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(46).JPG', '1'),
(76, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(47).JPG', '1'),
(77, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(48).JPG', '1'),
(78, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(49).JPG', '1'),
(79, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(50).JPG', '1'),
(80, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(51).JPG', '1'),
(81, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(52).JPG', '1'),
(82, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(54).JPG', '1'),
(83, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(55).JPG', '1'),
(84, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(56).JPG', '1'),
(85, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(57).JPG', '1'),
(86, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(58).JPG', '1'),
(87, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(59).JPG', '1'),
(88, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(60).JPG', '1'),
(89, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(63).JPG', '1'),
(90, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(64).JPG', '1'),
(91, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(65).JPG', '1'),
(92, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(66).JPG', '1'),
(93, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(67).JPG', '1'),
(94, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(68).JPG', '1'),
(95, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(69).JPG', '1'),
(96, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(70).JPG', '1'),
(97, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(71).JPG', '1'),
(98, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(72).JPG', '1'),
(99, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(73).JPG', '1'),
(100, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(74).JPG', '1'),
(101, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(76).JPG', '1'),
(102, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(79).jpg', '1'),
(103, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(82).JPG', '1'),
(104, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(83).JPG', '1'),
(105, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(84).JPG', '1'),
(106, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(85).JPG', '1'),
(107, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(86).JPG', '1'),
(108, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(88).JPG', '1'),
(109, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(90).JPG', '1'),
(110, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(91).JPG', '1'),
(111, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(92).JPG', '1'),
(112, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(93).JPG', '1'),
(113, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(96).JPG', '1'),
(114, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(97).JPG', '1'),
(115, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(98).JPG', '1'),
(116, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(99).JPG', '1'),
(117, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(100).JPG', '1'),
(118, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(101).JPG', '1'),
(119, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(103).JPG', '1'),
(120, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(105).JPG', '1'),
(121, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(106).JPG', '1'),
(122, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(107).JPG', '1'),
(123, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(108).JPG', '1'),
(124, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(110).JPG', '1'),
(125, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(111).JPG', '1'),
(126, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(113).JPG', '1'),
(127, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(114).JPG', '1'),
(128, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(115).JPG', '1'),
(129, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(117).JPG', '1'),
(130, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(119).JPG', '1'),
(131, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(123).JPG', '1'),
(132, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(126).JPG', '1'),
(133, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(127).JPG', '1'),
(134, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(130).JPG', '1'),
(135, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(136).JPG', '1'),
(136, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(138).JPG', '1'),
(137, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(140).JPG', '1'),
(138, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(143).JPG', '1'),
(139, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(144).JPG', '1'),
(140, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(146).JPG', '1'),
(141, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(147).JPG', '1'),
(142, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(148).JPG', '1'),
(143, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(150).JPG', '1'),
(144, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(153).JPG', '1'),
(145, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(163).JPG', '1'),
(146, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(170).JPG', '1'),
(147, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(171).JPG', '1'),
(148, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(173).JPG', '1'),
(149, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(175).JPG', '1'),
(150, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(178).JPG', '1'),
(151, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(180).JPG', '1'),
(152, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(181).JPG', '1'),
(153, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(183).JPG', '1'),
(154, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(189).JPG', '1'),
(155, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(194).JPG', '1'),
(156, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(200).JPG', '1'),
(157, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(201).JPG', '1'),
(158, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(203).JPG', '1'),
(159, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(204).JPG', '1'),
(160, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(209).JPG', '1'),
(161, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(210).JPG', '1'),
(162, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(214).JPG', '1'),
(163, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(215).JPG', '1'),
(164, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(222).JPG', '1'),
(165, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(224).JPG', '1'),
(166, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(227).JPG', '1'),
(167, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(229).JPG', '1'),
(168, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(231).JPG', '1'),
(169, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(232).JPG', '1'),
(170, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(235).JPG', '1'),
(171, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(236).JPG', '1'),
(172, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(245).JPG', '1'),
(173, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(248).JPG', '1'),
(174, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(257).JPG', '1'),
(175, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(258).JPG', '1'),
(176, '54 años', 'Evento 54 años', 2021, 'SENA', 'JPG', '54AÑOScenigraf(259).JPG', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
