-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-07-2017 a las 02:05:55
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accion`
--

CREATE TABLE `accion` (
  `Id accion` int(10) UNSIGNED NOT NULL,
  `Numero de personas afectadas` int(10) UNSIGNED DEFAULT NULL,
  `Numero de personas involucradas` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `Numero de Proyecto` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `accion`
--

INSERT INTO `accion` (`Id accion`, `Numero de personas afectadas`, `Numero de personas involucradas`, `Numero de Proyecto`) VALUES
(5001, 20, 300, 2001),
(5002, 20, 2030, 2002),
(5003, 20, 20, 2003),
(5004, 20, 200, 2004),
(5005, 23, 100, 2005),
(5006, 23, 190, 2006),
(5007, 23, 100, 2007),
(5008, 21, 200, 2008),
(5009, 200, 209, 2009),
(5010, 299, 200, 2010),
(5011, 301, 2002, 2011),
(5012, 3033, 2002, 2012),
(5013, 1000, 2002, 2013),
(5014, 4040, 2002, 2014),
(5015, 4044, 1010, 2015),
(5016, 5050, 9000, 2016),
(5017, 5021, 8008, 2017),
(5018, 50600, 606, 2018),
(5019, 2, 6000, 2019),
(5020, 4040, 5000, 2020),
(5021, 5000, 3003, 2021),
(5022, 7070, 3003, 2022),
(5023, 7003, 3003, 2023),
(5024, 8055, 200, 2024),
(5025, 9090, 200, 2025),
(5026, 10000, 200, 2026),
(5027, 30, 200, 2027),
(5028, 43, 100, 2028),
(5029, 59595, 100, 2029),
(5030, 93483, 100, 2030),
(5031, 32846, 100, 2031),
(5032, 29348, 400, 2032),
(5033, 293, 400, 2033),
(5034, 823904, 400, 2034),
(5035, 3990, 599, 2002),
(5036, 100, 500, 2002),
(5037, 3030, 400, 2001),
(5038, 292929, 100, 2003),
(5039, 400, 5005, 2001),
(5040, 100, 100, 2002),
(5041, 300, 304, 2003),
(5042, 500, 540, 2004),
(5043, 3003, 3030, 2004),
(5044, 40040, 300, 2006),
(5045, 4040, 400, 2005),
(5046, 300, 3004, 2001),
(5047, 100, 200, 2007),
(5048, 200, 30, 2001);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `afecta`
--

CREATE TABLE `afecta` (
  `Id_Accion` int(10) UNSIGNED NOT NULL,
  `Codigo_Ciudad` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `afecta`
--

INSERT INTO `afecta` (`Id_Accion`, `Codigo_Ciudad`) VALUES
(5001, 1),
(5024, 1),
(5025, 1),
(5036, 1),
(5041, 1),
(5002, 2),
(5026, 2),
(5027, 2),
(5042, 2),
(5003, 3),
(5028, 3),
(5029, 3),
(5043, 3),
(5004, 4),
(5030, 4),
(5031, 4),
(5044, 4),
(5005, 5),
(5045, 5),
(5006, 6),
(5007, 7),
(5008, 8),
(5009, 9),
(5010, 10),
(5011, 11),
(5012, 12),
(5013, 13),
(5014, 14),
(5015, 15),
(5016, 16),
(5017, 17),
(5018, 18),
(5019, 19),
(5020, 20),
(5021, 21),
(5022, 22),
(5023, 23),
(5033, 25),
(5047, 28),
(5048, 29),
(5034, 37),
(5035, 40),
(5037, 43),
(5046, 44),
(5032, 52),
(5040, 52),
(5038, 53),
(5039, 54);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `Codigo ciudad` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(45) NOT NULL DEFAULT '',
  `Cod Pais` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`Codigo ciudad`, `Nombre`, `Cod Pais`) VALUES
(1, 'Buenos Aires', 2),
(2, 'Cordoba', 2),
(3, 'Rosario', 2),
(4, 'Corrientes', 2),
(5, 'Ushuaia', 2),
(6, 'Berlin', 1),
(7, 'Munich', 1),
(8, 'Hamburgo', 1),
(9, 'Dortmund', 1),
(10, 'Erevan', 3),
(11, 'Bruselas', 4),
(12, 'Sucre', 5),
(13, 'Potosi', 5),
(14, 'Oruro', 5),
(15, 'Brasilia', 6),
(16, 'Sao Paulo', 6),
(17, 'Rio de Janeiro', 6),
(18, 'Ottawa', 7),
(19, 'Toronto', 7),
(20, 'Santiago de Chile', 8),
(21, 'Concepcion', 8),
(22, 'Valparaiso', 8),
(23, 'Pekin', 9),
(24, 'Shanghai', 9),
(25, 'Hong Kong', 9),
(26, 'Madrid', 10),
(27, 'Barcelona', 10),
(28, 'Nueva York', 11),
(29, 'Washington DC', 11),
(30, 'San Diego', 11),
(31, 'Paris', 12),
(32, 'Marsella', 13),
(33, 'Nueva Delhi', 13),
(34, 'Roma', 14),
(35, 'Tokio', 15),
(36, ' Nagasaki', 15),
(37, 'Distrito Federal', 16),
(38, 'Monterrey', 16),
(39, 'Wellington', 17),
(40, 'Lima', 18),
(41, 'Arequipa', 18),
(42, 'Lisboa', 19),
(43, 'Londres', 20),
(44, 'Manchester', 20),
(45, 'Liverpool', 20),
(46, 'Moscu', 21),
(47, 'Ciudad del Cabo', 22),
(48, 'Pretoria', 22),
(49, 'Estocolmo', 23),
(50, 'Berna', 24),
(51, 'Bangkok', 25),
(52, 'Montevideo', 26),
(53, 'Paysandu', 26),
(54, 'Salto', 26),
(55, 'Caracas', 27),
(56, 'Maracaibo', 27),
(57, 'Vaticano', 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colabora`
--

CREATE TABLE `colabora` (
  `Codigo Pais` int(10) UNSIGNED NOT NULL,
  `Id Accion` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `Tipo de ayuda` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `Importe por dia` int(10) UNSIGNED DEFAULT NULL,
  `Fecha de inicio` date NOT NULL DEFAULT '0000-00-00',
  `Fecha de finalizacion` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `colabora`
--

INSERT INTO `colabora` (`Codigo Pais`, `Id Accion`, `Tipo de ayuda`, `Importe por dia`, `Fecha de inicio`, `Fecha de finalizacion`) VALUES
(1, 5001, 1, 1000, '2000-01-10', '2018-01-02'),
(1, 5002, 1, 100, '2000-01-10', '2017-05-04'),
(1, 5031, 2, 40, '2000-01-10', '2016-04-05'),
(1, 5037, 2, 48888, '2017-01-02', '2018-01-02'),
(2, 5003, 1, 10, '2000-01-10', '2018-01-02'),
(2, 5032, 2, 4, '2000-01-10', '2001-04-05'),
(2, 5039, 1, 238483, '2018-01-02', '2019-01-02'),
(3, 5004, 1, 1000, '2000-01-10', '2018-01-02'),
(3, 5005, 1, 100, '2000-01-10', '2016-04-05'),
(3, 5033, 2, 500, '2010-01-10', '2012-04-05'),
(3, 5046, 3, 3454, '2017-01-02', '2019-01-02'),
(4, 5006, 1, 10, '2010-01-10', '2017-05-04'),
(4, 5034, 2, 5005, '2010-01-10', '2018-01-02'),
(4, 5041, 1, 498345, '2016-01-02', '2019-01-02'),
(5, 5007, 1, 1999, '2010-01-10', '2012-04-05'),
(5, 5035, 2, 500, '2010-01-10', '2012-04-05'),
(5, 5038, 2, 345345, '2015-01-02', '2016-01-02'),
(6, 5008, 1, 2000, '2010-01-10', '2017-08-04'),
(6, 5036, 2, 600, '2010-01-10', '2016-04-05'),
(7, 5009, 1, 2020, '2010-01-10', '2018-01-02'),
(8, 5010, 1, 209, '2014-01-10', '2016-04-05'),
(9, 5011, 2, 200, '2014-01-10', '2016-04-05'),
(10, 5012, 2, 1000, '2014-01-10', '2016-04-05'),
(11, 5013, 3, 200, '2014-01-10', '2015-04-05'),
(12, 5014, 3, 400, '2014-01-10', '2018-01-02'),
(13, 5015, 3, 4000, '2014-01-10', '2015-04-05'),
(14, 5016, 3, 600, '2014-01-10', '2017-05-04'),
(15, 5017, 3, 700, '2014-01-10', '2016-04-05'),
(16, 5018, 2, 100, '2015-01-10', '2017-05-04'),
(17, 5019, 3, 10000, '2015-01-10', '2017-05-04'),
(18, 5020, 2, 4040, '2015-01-10', '2016-04-05'),
(19, 5021, 1, 40, '2015-01-10', '2018-01-02'),
(20, 5022, 3, 20, '2015-01-10', '2016-04-05'),
(21, 5023, 2, 2, '2015-01-10', '2016-04-05'),
(22, 5024, 1, 100, '2016-01-10', '2017-08-04'),
(23, 5025, 3, 200, '2016-01-10', '2018-01-02'),
(24, 5026, 3, 500, '2016-01-10', '2020-04-05'),
(25, 5027, 2, 50000, '2016-01-10', '2020-04-05'),
(26, 5028, 1, 600, '2016-01-10', '2017-08-04'),
(27, 5029, 3, 1000, '2017-01-02', '2018-01-02'),
(28, 5030, 3, 40004, '2017-01-02', '2018-01-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `director`
--

CREATE TABLE `director` (
  `Numero de legajo` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(45) NOT NULL DEFAULT '',
  `Apellido` varchar(45) NOT NULL DEFAULT '',
  `Id Ofcinia Dirigida` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `director`
--

INSERT INTO `director` (`Numero de legajo`, `Nombre`, `Apellido`, `Id Ofcinia Dirigida`) VALUES
(2341, 'Roberto', 'Sanchez', 1),
(2342, 'Susana', 'Carranzo', 2),
(2343, 'Pablo', 'Rodriguez', 3),
(2344, 'Carla', 'Puentes', 4),
(2345, 'Sonia', 'Paez', 5),
(2346, 'Lautaro', 'Martinez', 6),
(2347, 'Flavio', 'Costas', 7),
(2348, 'Fernanda', 'Baez', 8),
(2349, 'Carlos', 'Fonzeca', 9),
(2350, 'Claudio', 'Rosas', 10),
(2351, 'Maria Eugenia', 'Franco', 11),
(2352, 'Guido', 'Castro', 12),
(2353, 'Florencia', 'Diaz', 13),
(2354, 'Diego', 'Fernandez', 14),
(2355, 'Tiziano', 'Gomez', 15),
(2356, 'Hugo', 'Lopez', 16),
(2357, 'Sandra', 'Garcia', 17),
(2358, 'Fernando', 'Flores', 18),
(2359, 'Ramiro', 'Suarez', 19),
(2360, 'Romina', 'Medina', 20),
(2361, 'Tomas', 'Aguirre', 21),
(2362, 'Gustavo', 'Pereyra', 22),
(2363, 'Josefina', 'Jimenez', 23),
(2364, 'Lucia', 'Molina', 24),
(2365, 'Silvia', 'Rojas', 25),
(2366, 'Matias', 'Godoy', 26),
(2367, 'Lucas', 'Morales', 27),
(2368, 'Magali', 'Dominguez', 28),
(2369, 'Leonardo', 'Peralta', 29),
(2370, 'Franco', 'Rios', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `donacion`
--

CREATE TABLE `donacion` (
  `Id Donacion` int(10) UNSIGNED NOT NULL,
  `Mail donante` varchar(45) NOT NULL DEFAULT '',
  `Monto` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `Info Tarjeta de Credito` varchar(45) NOT NULL DEFAULT '',
  `Numero Proyecto` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `Nombre` varchar(45) DEFAULT NULL,
  `Fecha` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `donacion`
--

INSERT INTO `donacion` (`Id Donacion`, `Mail donante`, `Monto`, `Info Tarjeta de Credito`, `Numero Proyecto`, `Nombre`, `Fecha`) VALUES
(4001, 'roberto@hotmail.com', 2, '30', 2001, 'Roberto', '2009-01-10'),
(4002, 'andrea@hotmail.com', 2, '30', 2002, 'Andrea', '2008-01-30'),
(4003, 'roberto@hotmail.com', 2, '30', 2003, 'Roberto', '2007-02-06'),
(4004, 'pepo@hotmail.com', 2000, '320493', 2004, 'Pepo', '2003-02-20'),
(4005, 'sandro@hot', 30000, '923084', 2001, 'Sandro', '2009-02-22'),
(4006, 'dario@hot', 400, '32984', 2001, 'Dario', '2009-02-25'),
(4007, 'clara@hot', 20000, '9239234o', 2002, 'Clara', '2008-04-01'),
(4008, 'tomas@hot', 50000, '23098423', 2002, 'Tomas', '2008-04-11'),
(4009, 'doña@hot', 400, '9238492', 2005, 'Doña', '2008-04-16'),
(4010, 'paula@hot', 6060, '9238490', 2006, 'Paula', '2007-04-23'),
(4011, 'jose@hot', 1000, '02932', 2007, 'Jose', '2005-04-27'),
(4012, 'fabio@hot', 30000, '0239402', 2008, 'Fabio', '2008-05-02'),
(4013, 'pedro@hot', 200000, '234234', 2001, 'Pedro', '2009-05-05'),
(4014, 'sonia@hot', 400000, '9234239234', 2002, 'Sonia', '2009-05-05'),
(4015, 'patricio@hot', 50000000, '23948423', 2009, 'Patricio', '2004-05-09'),
(4016, 'francisco@hot', 400, '23094023', 2010, 'Francisco', '2011-05-10'),
(4017, 'pancho@hot', 100, '23984902', 2011, 'Pancho', '2010-06-03'),
(4018, 'pepe@hot', 20000, '923842394489', 2012, 'Pepe', '2011-06-04'),
(4019, 'jose@hot', 40000, '239482340', 2013, 'Jose', '2013-06-04'),
(4020, 'rosario@hot', 30, '9329040324', 2014, 'Rosario', '2011-06-04'),
(4021, 'ricardo@hot', 4000, '03294023', 2015, 'Ricardo', '2011-06-14'),
(4022, 'ricardo@hot', 3000, '03294023', 2016, 'Ricardo', '2011-06-20'),
(4023, 'josefina@hot', 9239, '32949043', 2017, 'Josefina', '2013-06-21'),
(4024, 'josefina@hot', 3000, '32949043', 2018, 'Josefina', '2013-06-28'),
(4025, 'pancho@hot', 3000, '23984902', 2019, 'Pancho', '2013-06-30'),
(4026, 'fabricio@hot', 300000, '39048304985', 2001, 'Fabricio', '2009-07-01'),
(4027, 'facu@hot', 90000, '239482394', 2002, 'Facundo', '2008-07-03'),
(4028, 'guille@hot', 3000, '23948', 2002, 'Guillermo', '2007-07-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lleva_a_cabo`
--

CREATE TABLE `lleva_a_cabo` (
  `Numero de oficina` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `Numero de proyecto` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lleva_a_cabo`
--

INSERT INTO `lleva_a_cabo` (`Numero de oficina`, `Numero de proyecto`) VALUES
(1, 2001),
(1, 2030),
(1, 2031),
(1, 2032),
(2, 2002),
(2, 2033),
(3, 2003),
(3, 2034),
(4, 2004),
(5, 2005),
(6, 2006),
(7, 2007),
(8, 2008),
(9, 2009),
(12, 2010),
(13, 2011),
(14, 2012),
(15, 2013),
(16, 2014),
(17, 2015),
(20, 2016),
(21, 2017),
(24, 2018),
(25, 2019),
(26, 2020),
(31, 2021),
(33, 2022),
(35, 2023),
(36, 2024),
(37, 2025),
(44, 2026),
(45, 2027),
(46, 2028),
(47, 2029);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficina`
--

CREATE TABLE `oficina` (
  `Numero de Oficina` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `Nombre` varchar(45) NOT NULL DEFAULT '',
  `Direccion electronica` varchar(45) DEFAULT NULL,
  `Pagina web` varchar(45) DEFAULT NULL,
  `Telefono1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `Central` int(10) UNSIGNED DEFAULT NULL,
  `Telefono2` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `oficina`
--

INSERT INTO `oficina` (`Numero de Oficina`, `Nombre`, `Direccion electronica`, `Pagina web`, `Telefono1`, `Central`, `Telefono2`) VALUES
(1, 'Oficina Rosario', 'oficina_rosacio@oficinas.com.ar', 'www.oficinarosario.com.ar', 4592389, 2, 345345),
(2, 'Oficina Buenos Aires', 'oficina_bsas@oficinas.com.ar', 'www.oficinabuensoaires.com.ar', 4789347, NULL, 0),
(3, 'Oficina Cordoba', 'oficina_cordoba@oficinas.com.ar', 'www.oficinacordoba.com.ar', 4782379, 2, 34534),
(4, 'Oficina Corrientes', 'oficina_corrientes@oficinas.com.ar', 'www.oficinascorrientes.com.ar', 4982384, 2, 34534),
(5, 'Oficina Ushuaia', 'oficina_ushuaia@oficina.com.ar', 'www.oficinaushuaia.com.ar', 4786237, 2, 0),
(6, 'Oficina Berlin', 'oficina_berlin@oficina.com', 'www.oficinaberlin.com', 4294967295, NULL, 0),
(7, 'Oficina Munich', 'oficina_munich@oficinas.com', 'www.oficinamunich.com', 387483478, 6, 345345),
(8, 'Oficina Hamburgo', 'oficina_hamburgo@oficinas.com', 'www.oficinahamburgo.com', 4294967295, 6, 345345),
(9, 'Oficina Dortmund', 'oficina_dortmund@oficina.com', 'www.oficinadortmund.com', 4294967295, NULL, 0),
(10, 'Oficina Erevan', 'oficina_erevan@oficina.com', 'www.oficinaerevan.com', 4294967295, NULL, 0),
(11, 'Oficina Bruselas', 'oficina_bruselas@oficina.com', 'www.oficinabruselas.com', 4294967295, NULL, 0),
(12, 'Oficina Sucre', 'oficina_sucre@oficina.com', 'www.oficinasucre.com', 892374438, NULL, 34534534),
(13, 'Oficina Potosi', 'oficina_potosi@oficina.com', 'www.oficinapotosi.com', 4294967295, 12, 0),
(14, 'Oficina Oruro', 'oficina_oruro@oficina.com', 'www.oficinaoruro.com', 4294967295, 12, 0),
(15, 'Oficina Brasilia', 'oficina_brasilia@oficina.com', 'www.oficinabrasilia.com', 4294967295, NULL, 345345),
(16, 'Oficina Sao Pablo ', 'oficina_saopablo@oficina.com', 'www.oficinasaopablo.com', 3298492384, 15, 2354235),
(17, 'Oficina Rio de Janeiro', 'oficina_riodejaneiro@oficina.com', 'www.oficinario.com', 945869045, 15, 0),
(18, 'Oficina Ottawa', 'oficina_ottawa@oficina.com', 'www.oficinaottawa.com', 2390484239, NULL, 5675687),
(19, 'Oficina Toronto', 'oficina_toronto@oficin.com', 'www.oficinatoronto.com', 983459834, 18, 568568),
(20, 'Oficina Santiago de Chile', 'oficina_santiado@oficina.com', 'www.oficinasantiago.com', 903890328, NULL, 0),
(21, 'Oficina Concepcion', 'oficina_concepcion@oficina.com', 'www.oficinaconcepcion.com', 2983749872, 20, 0),
(22, 'Oficina Pekin', 'oficina_pekin@oficina.com', 'www.oficinapekin.com', 2398792387, NULL, 568568),
(23, 'Oficina Hong Kong', 'oficina_hongkong@oficina.com', 'www.oficinahongkong.com', 2839748923, 22, 568),
(24, 'Oficina Madrid', 'oficina_madrid@oficina.com', 'www.oficinamadrid.com', 29038909, NULL, 0),
(25, 'Oficina Nueva York', 'oficina_nuevayork@oficina.com', 'www.oficinanuevayork.com', 283209338, NULL, 0),
(26, 'Oficina Washington', 'oficina_washing@oficina.com', 'www.oficinawashington.com', 293829308, 25, 0),
(27, 'Oficina Paris', 'oficina_paris@oficina.com', 'www.oficinaparis.com', 4294967295, NULL, 0),
(28, 'Oficina Marsella', 'oficina_marsella@oficinas.com', 'www.oficinamarsella.com', 4294967295, 28, 56858),
(29, 'Oficina Roma', 'oficina_roma@oficina.com', 'www.oficinaroma.com', 632746387, NULL, 0),
(30, 'Oficina Tokio', 'oficina_tokio@oficina.com', 'www.oficinatokio.com', 723874823, NULL, 5685688),
(31, 'Oficina Distrito Federal', 'oficina_distrito@oficina.com', 'www.oficinadistrito.com', 39388374, NULL, 0),
(32, 'Oficina Wellington', 'oficina_wellington@oficina.com', 'www.oficinawellington.com', 5982347, 31, 0),
(33, 'Oficina Lima', 'oficina_lima@oficina.com', 'www.oficinalima,com', 48927823, NULL, 568568),
(34, 'Oficina Lisboa', 'oficina_lisboa@oficina.com', 'www.oficinalisboa.com', 3827387, 33, 0),
(35, 'Oficina Londres', 'oficina_londres@oficina.com', 'www.oficinalondres.com', 1982379023, NULL, 585656),
(36, 'Oficina Manchester', 'oficina_manchester@oficina.com', 'www.oficinamanchester.com', 68374893, 35, 79878),
(37, 'Oficina Liverpool', 'oficina_liverpool@oficina.com', 'www.oficinaliverpool.com', 763453, 35, 0),
(38, 'Oficina Moscu', 'oficina_moscu@oficina.com', 'www.oficinamoscu.com', 428734823, NULL, 78978),
(39, 'Oficina Ciudad del Cabo', 'oficina_ciudad@oficina.com', 'www.oficinaciudad.com', 387238723, NULL, 0),
(40, 'Oficina Pretoria ', 'oficina_pretoria@oficina.com', 'www.oficinapretoria.com', 3224387, 39, 0),
(41, 'Oficina Estocolmo', 'oficina_estocolmo@oficina.com', 'www.oficinaestocolmo.com', 190832904, NULL, 696987),
(42, 'Oficina Berna', 'oficina_berna@oficina.com', 'www.oficinaberna.com', 49028482, NULL, 0),
(43, 'Oficina Bangkok', 'oficina_bangkok@oficina.com', 'www.oficinabangkok.com', 29083209, NULL, 0),
(44, 'Oficina Montevideo', 'oficina_montevideo@oficina.com', 'www.oficjnamontevideo.com', 390873247, NULL, 6796796),
(45, 'Oficina Paysandu', 'oficina_paysandu@oficina.com', 'www.oficinapaysandu.com', 4923840, 44, 0),
(46, 'Oficina Salto', 'oficina_salto@oficina.com', 'www.oficinasalto.com', 59827348, 44, 6796),
(47, 'Oficina Caracas', 'oficina_caracas@oficina.com', 'www.oficinacaracas.com', 68934789, NULL, 3465345),
(48, 'Oficina Maracaibo', 'oficina_maracaibo@oficina.com', 'www.oficinamaracaibo.com', 70934823, 47, 0),
(49, 'Oficina Vaticano', 'oficina_vaticano@oficina.com', 'www.oficinavaticano.com', 4294967295, NULL, 6796796);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `Codigo pais` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`Codigo pais`, `Nombre`) VALUES
(1, 'Alemania'),
(2, 'Argentina'),
(3, 'Armenia'),
(4, 'Belgica'),
(5, 'Bolivia'),
(6, 'Brasil'),
(7, 'Canada'),
(8, 'Chile'),
(9, 'China'),
(10, 'España'),
(11, 'Estados Unidos'),
(12, 'Francia'),
(13, 'India'),
(14, 'Italia'),
(15, 'Japon'),
(16, 'Mexico'),
(17, 'Nueva Zelanda'),
(18, 'Peru'),
(19, 'Portugal'),
(20, 'Reino Unido'),
(21, 'Rusia'),
(22, 'Sudafrica'),
(23, 'Suecia'),
(24, 'Suiza'),
(25, 'Tailandia'),
(26, 'Uruguay'),
(27, 'Venezuela'),
(28, 'Vaticano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `Numero de proyecto` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(45) NOT NULL DEFAULT '',
  `Estado` varchar(45) NOT NULL DEFAULT '',
  `Inversion propuesta` varchar(45) NOT NULL DEFAULT '',
  `Inversion hasta el momento` varchar(45) DEFAULT NULL,
  `Fecha de inicio` date NOT NULL DEFAULT '0000-00-00',
  `Fecha estimada de finalizacion` date NOT NULL DEFAULT '0000-00-00',
  `Responsable1` varchar(45) NOT NULL DEFAULT '',
  `Responsable 2` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`Numero de proyecto`, `Nombre`, `Estado`, `Inversion propuesta`, `Inversion hasta el momento`, `Fecha de inicio`, `Fecha estimada de finalizacion`, `Responsable1`, `Responsable 2`) VALUES
(2001, 'Halcon', 'finalizado', '100000', '1000', '2001-03-11', '2010-03-11', 'Fernando', ''),
(2002, 'Perito', 'finalizado', '2000', '2000000', '2001-03-11', '2010-03-11', 'Fransisco ', 'Camila'),
(2003, 'Jaz', 'activo', '200', '10000', '2001-03-10', '2010-03-11', 'Ernesto', ''),
(2004, 'Bruja', 'pausado', '200', '200', '2001-03-12', '2010-03-11', 'Claudia', ''),
(2005, 'Pro', 'activo', '40000', '4044', '2001-01-11', '2010-03-11', 'Ana', 'Julian'),
(2006, 'Mate', 'finalizado', '4050', '5000', '2001-02-11', '2010-03-11', 'Guillermo', ''),
(2007, 'Silla', 'finalizado', '300', '30', '2001-04-11', '2010-03-11', 'Juliana', 'Micaela'),
(2008, 'Puente', 'activo', '50000', '50505', '2001-05-11', '2010-03-11', 'Franco', 'Gonzalo'),
(2009, 'Perros', 'activo', '43000', '400', '2001-06-11', '2010-03-11', 'Faustina', ''),
(2010, 'Tierra', 'pausado', '3000', '9000', '2010-03-11', '2012-03-11', 'Eva', ''),
(2011, 'Luna', 'activo', '100', '100000', '2006-03-11', '2012-03-11', 'Florencio', 'Andrea'),
(2012, 'Sailor', 'activo', '4004', '4000', '2010-03-11', '2012-03-11', 'Sandro', ''),
(2013, 'Pepito', 'finalizado', '4040', '600', '2010-07-11', '2012-03-11', 'Raul', 'Ricardo'),
(2014, 'Medialuna', 'finalizado', '20202', '70060', '2010-06-11', '2012-03-11', 'Dario', ''),
(2015, 'Menguante', 'activo', '400', '6060', '2010-05-11', '2012-03-11', 'Damian', ''),
(2016, 'Creciente', 'activo', '4040', '40', '2010-04-11', '2012-03-11', 'Pablo', ''),
(2017, 'Tortuga', 'activo', '1000', '10', '2012-03-11', '2014-03-11', 'Araceli', ''),
(2018, 'Liebre', 'activo', '50500', '500', '2012-03-11', '2014-03-11', 'Susana', ''),
(2019, 'Mar', 'finalizado', '4300', '4300', '2012-03-11', '2014-03-11', 'Yamila', 'Eugenia'),
(2020, 'Dragon', 'finalizado', '500', '500', '2012-03-11', '2014-03-11', 'Paula', ''),
(2021, 'Cacatua', 'activo', '3030', '3030', '2012-03-11', '2020-03-11', 'Denis', ''),
(2022, 'Iguana', 'activo', '3939', '66', '2012-03-11', '2020-03-11', 'Keyla', ''),
(2023, 'Saltamontes', 'activo', '6932', '700', '2012-03-11', '2020-03-11', 'Luciana', ''),
(2024, 'Zapato', 'pausado', '6020', '4040', '2012-03-11', '2020-03-11', 'Lucia', 'Maria'),
(2025, 'Gato', 'finalizado', '5050', '239', '2015-03-11', '2017-03-11', 'Lucas', ''),
(2026, 'Simpson', 'finalizado', '2348', '3940', '2015-03-11', '2017-03-11', 'Ramon', ''),
(2027, 'Venganza', 'finalizado', '23498', '20000000', '2015-03-11', '2017-03-11', 'Carlos', ''),
(2028, 'Estrella', 'activo', '293', '823', '2015-03-11', '2018-03-11', 'Claudio', ''),
(2029, 'Pulpo', 'activo', '92348', '23498', '2015-03-11', '2018-03-11', 'Pedro', ''),
(2030, 'Camaleon', 'activo', '238', '8234', '2016-03-11', '2020-03-11', 'Josefina', 'Tomas'),
(2031, 'Tigre', 'pausado', '38', '49', '2016-03-11', '2020-03-11', 'Gaston', ''),
(2032, 'Ola', 'finalizado', '10', '11', '2016-03-11', '2020-03-11', 'Guilliana', ''),
(2033, 'Cielo', 'finalizado', '239', '48', '2016-03-11', '2018-03-11', 'Tomas', ''),
(2034, 'Garra', 'pausado', '5000', '50', '2017-03-11', '2020-03-11', 'Tamara', 'Sonia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `Direccion Completa` varchar(45) NOT NULL DEFAULT '',
  `Referencia de geolozalizacion` varchar(45) NOT NULL DEFAULT '',
  `Codigo postal` int(10) UNSIGNED DEFAULT NULL,
  `Numero de Oficina` int(10) UNSIGNED DEFAULT NULL,
  `Cod Ciudad` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`Direccion Completa`, `Referencia de geolozalizacion`, `Codigo postal`, `Numero de Oficina`, `Cod Ciudad`) VALUES
('9 de Julio 4004', '290384', 23094, 21, 21),
('Alem 4004', '239048', 2349, 27, 27),
('Av. de Mayo 4004 ', '349853', 302940, 19, 19),
('Belgrano 4004', '349890383', 7007, 12, 12),
('Callao 3003', '923', 20394923, 25, 25),
('Caseros 3003', '2398423', 129230, 17, 17),
('Cerrito 202', '40:40:02', 3030, 5, 5),
('Cordoba 4004', '399023482309', 707, 9, 9),
('Corrientes', '50:505:600', 4004, 6, 6),
('Entre Rios 3003', '3409', 93489, 22, 22),
('Florida 202', '200202', 5005, 7, 7),
('Florida 30033', '9489438430', 5005, 10, 10),
('Garay 4040', '239847239', 60890, 16, 16),
('Independencia 349', '4049884', 606069, 18, 18),
('Juana Manso 293', '12390', 91283, 30, 30),
('Jujuy 4949', '94834', 290389, 23, 23),
('Libertador 49040', '290348', 3240349, 20, 20),
('Montes de oca 3003', '92133298', 213099, 29, 29),
('Paseo Colon', '394', 2934892, 26, 26),
('Patricios 3033', '94385', 239, 28, 28),
('Peron 49049', '045943', 90009, 14, 14),
('Pueyrredon 3929', '29038', 20394, 24, 24),
('Rivadavia 2002', '49859', 8008, 13, 13),
('Rosario 3939', '93484', 6006, 11, 11),
('San Juan 400', '40 sur', 1002, 1, 3),
('San Marin 300', '50 norte', 2002, 2, 1),
('San Maritn 3004', '41:30:22', 6006, 4, 4),
('San Martin 3003', '30 sur', 3003, 3, 2),
('Santa fe 4050', '39843', 60006, 8, 8),
('Sarmiento 598', '34098320', 1001, 15, 15);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accion`
--
ALTER TABLE `accion`
  ADD PRIMARY KEY (`Id accion`),
  ADD KEY `accion_NumProyecto` (`Numero de Proyecto`);

--
-- Indices de la tabla `afecta`
--
ALTER TABLE `afecta`
  ADD PRIMARY KEY (`Id_Accion`),
  ADD KEY `Afecta_Codigo_ciudad` (`Codigo_Ciudad`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`Codigo ciudad`),
  ADD KEY `ciudad_pais` (`Cod Pais`);

--
-- Indices de la tabla `colabora`
--
ALTER TABLE `colabora`
  ADD PRIMARY KEY (`Codigo Pais`,`Id Accion`),
  ADD KEY `colobora_Accion` (`Id Accion`);

--
-- Indices de la tabla `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`Numero de legajo`),
  ADD KEY `director_dirige_oficina` (`Id Ofcinia Dirigida`);

--
-- Indices de la tabla `donacion`
--
ALTER TABLE `donacion`
  ADD PRIMARY KEY (`Id Donacion`),
  ADD KEY `donacion_Id Proyecto` (`Numero Proyecto`);

--
-- Indices de la tabla `lleva_a_cabo`
--
ALTER TABLE `lleva_a_cabo`
  ADD PRIMARY KEY (`Numero de proyecto`),
  ADD KEY `lleva a cabo_oficina` (`Numero de oficina`);

--
-- Indices de la tabla `oficina`
--
ALTER TABLE `oficina`
  ADD PRIMARY KEY (`Numero de Oficina`),
  ADD KEY `FK_oficina_central` (`Central`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`Codigo pais`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`Numero de proyecto`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`Direccion Completa`,`Referencia de geolozalizacion`),
  ADD KEY `ubicacion_oficina` (`Numero de Oficina`),
  ADD KEY `Ubicacion_Ciudad` (`Cod Ciudad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accion`
--
ALTER TABLE `accion`
  MODIFY `Id accion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5049;
--
-- AUTO_INCREMENT de la tabla `afecta`
--
ALTER TABLE `afecta`
  MODIFY `Id_Accion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5049;
--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `Codigo ciudad` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT de la tabla `colabora`
--
ALTER TABLE `colabora`
  MODIFY `Codigo Pais` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `director`
--
ALTER TABLE `director`
  MODIFY `Numero de legajo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2371;
--
-- AUTO_INCREMENT de la tabla `donacion`
--
ALTER TABLE `donacion`
  MODIFY `Id Donacion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4029;
--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `Codigo pais` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `Numero de proyecto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2035;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accion`
--
ALTER TABLE `accion`
  ADD CONSTRAINT `accion_NumProyecto` FOREIGN KEY (`Numero de Proyecto`) REFERENCES `proyecto` (`Numero de proyecto`);

--
-- Filtros para la tabla `afecta`
--
ALTER TABLE `afecta`
  ADD CONSTRAINT `Afecta_Codigo_ciudad` FOREIGN KEY (`Codigo_Ciudad`) REFERENCES `ciudad` (`Codigo ciudad`),
  ADD CONSTRAINT `Afecta_ID_Accion` FOREIGN KEY (`Id_Accion`) REFERENCES `accion` (`Id accion`);

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_pais` FOREIGN KEY (`Cod Pais`) REFERENCES `pais` (`Codigo pais`);

--
-- Filtros para la tabla `colabora`
--
ALTER TABLE `colabora`
  ADD CONSTRAINT `colobora_Accion` FOREIGN KEY (`Id Accion`) REFERENCES `accion` (`Id accion`),
  ADD CONSTRAINT `colobora_Pais` FOREIGN KEY (`Codigo Pais`) REFERENCES `pais` (`Codigo pais`);

--
-- Filtros para la tabla `director`
--
ALTER TABLE `director`
  ADD CONSTRAINT `director_dirige_oficina` FOREIGN KEY (`Id Ofcinia Dirigida`) REFERENCES `oficina` (`Numero de Oficina`);

--
-- Filtros para la tabla `donacion`
--
ALTER TABLE `donacion`
  ADD CONSTRAINT `donacion_Id Proyecto` FOREIGN KEY (`Numero Proyecto`) REFERENCES `proyecto` (`Numero de proyecto`);

--
-- Filtros para la tabla `lleva_a_cabo`
--
ALTER TABLE `lleva_a_cabo`
  ADD CONSTRAINT `lleva a cabo_Proyecto` FOREIGN KEY (`Numero de proyecto`) REFERENCES `proyecto` (`Numero de proyecto`),
  ADD CONSTRAINT `lleva a cabo_oficina` FOREIGN KEY (`Numero de oficina`) REFERENCES `oficina` (`Numero de Oficina`);

--
-- Filtros para la tabla `oficina`
--
ALTER TABLE `oficina`
  ADD CONSTRAINT `FK_oficina_central` FOREIGN KEY (`Central`) REFERENCES `oficina` (`Numero de Oficina`);

--
-- Filtros para la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD CONSTRAINT `Ubicacion_Ciudad` FOREIGN KEY (`Cod Ciudad`) REFERENCES `ciudad` (`Codigo ciudad`),
  ADD CONSTRAINT `ubicacion_oficina` FOREIGN KEY (`Numero de Oficina`) REFERENCES `oficina` (`Numero de Oficina`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
