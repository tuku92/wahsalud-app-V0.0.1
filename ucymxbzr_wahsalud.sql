-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2015 a las 13:52:53
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ucymxbzr_wahsalud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE IF NOT EXISTS `clases` (
  `IDclases` int(255) NOT NULL,
  `nombreDeLaClaseES` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nombreDeLaClaseEN` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `IDpagina` int(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`IDclases`, `nombreDeLaClaseES`, `nombreDeLaClaseEN`, `IDpagina`) VALUES
(1, 'Readaptacion Fisica', 'Physical Rehabilitation', 2),
(2, 'Gimnasio', 'Gym', 2),
(5, 'Entrenamiento', 'Training', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasetieneservicio`
--

CREATE TABLE IF NOT EXISTS `clasetieneservicio` (
  `IDclases` int(255) NOT NULL,
  `IDservicio` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clasetieneservicio`
--

INSERT INTO `clasetieneservicio` (`IDclases`, `IDservicio`) VALUES
(1, 17),
(1, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigoobtienebeneficio`
--

CREATE TABLE IF NOT EXISTS `codigoobtienebeneficio` (
  `IDcodigo` int(255) NOT NULL,
  `IDlogro` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigos`
--

CREATE TABLE IF NOT EXISTS `codigos` (
  `IDcodigo` int(255) NOT NULL,
  `IDusuario` int(255) NOT NULL,
  `numeroCodigo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `IDestado` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descuentos`
--

CREATE TABLE IF NOT EXISTS `descuentos` (
  `IDdescuentos` int(255) NOT NULL,
  `nombreDesc` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `IDpagina` int(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `descuentos`
--

INSERT INTO `descuentos` (`IDdescuentos`, `nombreDesc`, `IDpagina`) VALUES
(11, 'Sin Descuento', 2),
(12, '10 %', 2),
(13, '20 %', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenador`
--

CREATE TABLE IF NOT EXISTS `entrenador` (
  `IDentrenador` int(255) NOT NULL,
  `nombreEntrenador` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fotoEntrenador` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fechaDeCumpleanos` date NOT NULL,
  `experienciaLaboral` int(10) NOT NULL,
  `breveDescripcionES` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `breveDescripcionEN` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `habilidadesES` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `habilidadesEN` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `IDpagina` int(255) NOT NULL,
  `URLImagen` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='le tengo que agregar el IDusuario a ENTRENADOR , CLASES, SER';

--
-- Volcado de datos para la tabla `entrenador`
--

INSERT INTO `entrenador` (`IDentrenador`, `nombreEntrenador`, `fotoEntrenador`, `fechaDeCumpleanos`, `experienciaLaboral`, `breveDescripcionES`, `breveDescripcionEN`, `habilidadesES`, `habilidadesEN`, `IDpagina`, `URLImagen`) VALUES
(63, 'asd', 'upload/asd201510065835.png', '2015-10-09', 2, '', '', '', '', 3, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenadorpertenececlase`
--

CREATE TABLE IF NOT EXISTS `entrenadorpertenececlase` (
  `IDentrenador` int(255) NOT NULL,
  `IDclases` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `entrenadorpertenececlase`
--

INSERT INTO `entrenadorpertenececlase` (`IDentrenador`, `IDclases`) VALUES
(63, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenadortieneredsocial`
--

CREATE TABLE IF NOT EXISTS `entrenadortieneredsocial` (
  `IDentrenador` int(255) NOT NULL,
  `IDredSocial` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
  `IDestado` int(255) NOT NULL,
  `nombreEstado` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `footer`
--

CREATE TABLE IF NOT EXISTS `footer` (
  `IDfooter` int(255) NOT NULL,
  `nombreEmpresa` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `derechosReservadosES` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `derechosReservadosEN` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `mantenteEnContactoES` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `mantenteEnContactoEN` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `desarrolladorWeb` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `direccionCompletaES` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `direccionCompletaEN` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `telefonoES` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefonoEN` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `footer`
--

INSERT INTO `footer` (`IDfooter`, `nombreEmpresa`, `derechosReservadosES`, `derechosReservadosEN`, `mantenteEnContactoES`, `mantenteEnContactoEN`, `desarrolladorWeb`, `direccionCompletaES`, `direccionCompletaEN`, `telefonoES`, `telefonoEN`, `email`) VALUES
(1, 'Wellness & Healt ', 'Derechos Reservados © 2015 ', 'Copyright © 2015', 'Mantente en contacto: Te enviaremos la información necesaria para tu salud.\r\n', 'Mantente en contacto: Te enviaremos la información necesaria para tu salud.', 'Diseñado y desarrollado por AH | Desarrollador Multimedial', 'Av. Mitre 1800, Avellaneda, GABA, Argentina', 'Av. Mitre 1800, Avellaneda, GABA, Argentina', 'Telefono: +5411 4204 8293', 'Phone: +5411 4204 8293', 'wah.centrosalud@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `footertieneredsocial`
--

CREATE TABLE IF NOT EXISTS `footertieneredsocial` (
  `IDfooter` int(255) NOT NULL,
  `IDredSocial` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `footertieneredsocial`
--

INSERT INTO `footertieneredsocial` (`IDfooter`, `IDredSocial`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fresesmotivacionales`
--

CREATE TABLE IF NOT EXISTS `fresesmotivacionales` (
  `IDfrases` int(255) NOT NULL,
  `descripcionDeFrase` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `fresesmotivacionales`
--

INSERT INTO `fresesmotivacionales` (`IDfrases`, `descripcionDeFrase`) VALUES
(1, 'CREE EN TI Y ABRE LA PUERTA DE LO IMPOSIBLE'),
(5, 'asda asa asa'),
(7, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `header`
--

CREATE TABLE IF NOT EXISTS `header` (
  `IDheader` tinyint(2) NOT NULL,
  `contactoLlamanosES` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `contactoLlamanosEN` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `horariosES` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `horariosEN` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `logoEmpresa` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `header`
--

INSERT INTO `header` (`IDheader`, `contactoLlamanosES`, `contactoLlamanosEN`, `horariosES`, `horariosEN`, `logoEmpresa`) VALUES
(1, 'Llamanos: 4204 - 4293 2', 'Call us: 4204 - 4293 211', 'DÍAS DE LA SEMANA: 07:00 - 22:00 / SABADOS: 07:00 - 18:00 / DOMINGOS: CERRADO 2', 'asd\r\n', 'upload/201510063401.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE IF NOT EXISTS `imagenes` (
  `IDimagen` int(255) NOT NULL,
  `nombreDeLaImagenES` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nombreDeLaImagenEN` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `altES` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `altEN` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `URLimagen` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`IDimagen`, `nombreDeLaImagenES`, `nombreDeLaImagenEN`, `altES`, `altEN`, `URLimagen`) VALUES
(1, 'banner', 'banner', 'alt de la imagen del banner', 'alt de la imagen del banner', 'url de la imagen del banner '),
(2, 'imagen de las clases de gym', 'imagen de las clases de gym', 'alt de las clases de gym', 'alt de las clases de gym', 'url de las clases de gym'),
(3, 'imagen de las clases de entrenamiento', 'imagen de las clases de entrenamiento', 'alt de las clases de entrenamiento', 'alt de las clases de entrenamiento', 'url de las clases de entrenamiento'),
(4, 'imagen de las clases de readaptacion', 'imagen de las clases de readaptacion', 'alt de las clases de readaptacion', '', 'URL de las clases de readaptacion'),
(5, 'NOMBRE banner del fondo de la app ', 'NOMBRE banner del fondo de la app ', 'ALT banner del fondo de la app ', 'ALT banner del fondo de la app ', 'URL banner del fondo de la app '),
(6, 'NOMBRE telefono de la app ', 'NOMBRE telefono de la app ', 'ALT telefono de la app ', 'ALT telefono de la app ', 'URL telefono de la app '),
(7, 'SPONSOR 1', 'SPONSOR 1', 'ALT SPONSOR 1', 'ALT SPONSOR 1', 'upload/SPONSOR 1201510264226.png'),
(8, 'SPONSOR 2', 'SPONSOR 2', 'ALT SPONSOR 2', 'ALT SPONSOR 2', 'upload/SPONSOR 2201510131034.PNG'),
(9, 'pepe', '', '', NULL, 'url'),
(11, 'appNormalWebOver.png', '', '', NULL, 'imagenes/appNormalWebOver.png'),
(12, 'iconoEventosTecnomom.png', 'iconoEventosTecnomom.png', '<p>ICONO&nbsp;normal ESPA&Ntilde;OL</p>', '<p>icono&nbsp;normal INGLES</p>', 'imagenes/iconoEventosTecnomom.png'),
(13, 'iconoProducto.png', 'iconoProducto.png', '<p>ICONO&nbsp;normal ESPA&Ntilde;OL</p>', '<p>icono&nbsp;normal INGLES</p>', 'imagenes/iconoProducto.png'),
(14, 'iconoEmpresa.png', 'iconoEmpresa.png', '<p>ICONO&nbsp;normal ESPA&Ntilde;OL</p>', '<p>icono&nbsp;normal INGLES</p>', 'imagenes/iconoEmpresa.png'),
(15, 'logoFooterWeb.png', 'logoFooterWeb.png', '<p>ICONO&nbsp;normal ESPA&Ntilde;OL</p>', '<p>icono&nbsp;normal INGLES</p>', 'imagenes/logoFooterWeb.png'),
(16, 'menuResponsiveImg-03.png', 'menuResponsiveImg-03.png', '<p>ICONO&nbsp;normal ESPA&Ntilde;OL</p>', '<p>icono&nbsp;normal INGLES</p>', 'imagenes/menuResponsiveImg-03.png'),
(17, 'facebook.png', 'facebook.png', '<p>facebook</p>', '<p>faceboo english</p>', 'imagenes/facebook.png'),
(18, 'facebook-over-01.png', 'facebook-over-01.png', '<p>facebook</p>', '<p>faceboo english</p>', 'imagenes/facebook-over-01.png'),
(19, 'you_tube-Over-01.png', 'you_tube-Over-01.png', '<p>ssdfs</p>', '<p>sadfsadfsaf</p>', 'imagenes/you_tube-Over-01.png'),
(20, 'google-over-01.png', 'google-over-01.png', '', '', 'imagenes/google-over-01.png'),
(21, 'googdadadadle.png', 'googldae.png', 'asd', 'asdasd', ''),
(22, 'banner3DResponsive.png', 'banner3DResponsive.png', '<p>sadfdsafsadfsad</p>', '<p>nuevo</p>', 'imagenes/banner3DResponsive.png'),
(23, 'banner3DResponsive.png', 'banner3DResponsive.png', '<p>sadfdsafsadfsad</p>', '<p>nuevo</p>', 'imagenes/banner3DResponsive.png'),
(24, 'banner3DResponsive - copia.png', 'banner3DResponsive - copia.png', 'sasd', '<p>nuevo</p>', 'imagenes/banner3DResponsive - copia.png'),
(29, '', '', '<p>logo ESPAÃ‘OL</p>', '<p>logo INGLES</p>', 'imagenes/logoResponsive.png'),
(31, 'menuResponsiveImg-03.png', 'menuResponsiveImg-03.png', '<p>lksjdflskadfjasl&ntilde; fjaskldfjslkfj slj lj slkdjf&ntilde;slkfj salk&nbsp;</p>', '<p>slkdfjs alsj lsjkf lsdkj lsjf sj sljsljflsfj&ntilde;lsakjf salkjs lskjf lksdfj &ntilde;slfjsl jfk', 'imagenes/menuResponsiveImg-03.png'),
(33, 'asd', 'asd', 'asd', 'asd', 'asd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logroybeneficios`
--

CREATE TABLE IF NOT EXISTS `logroybeneficios` (
  `IDlogro` int(255) NOT NULL,
  `nombreLogroES` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombreLogroEN` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fotoLogro` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `logroybeneficios`
--

INSERT INTO `logroybeneficios` (`IDlogro`, `nombreLogroES`, `nombreLogroEN`, `fotoLogro`) VALUES
(1, 'Cumpleanos', 'Happy ', 'upload/Cumpleanos201510271235.png'),
(2, 'Asistencia', 'Asist', 'upload/Asistencia201510271221.png'),
(3, 'Entranamiento', 'Plan entrenamiento i', 'upload/Plan Entranamiento201510271153.png'),
(4, 'PlanAmigo', 'Friendly Plan', 'upload/Plan amigo201510270936.png'),
(5, 'PagoSemestral', '', 'upload/Pago Semestral201510285806.png'),
(6, 'PagoAnual', 'Anual Payment', 'upload/Pago Anual201510275037.png'),
(7, 'CumpleanosObt', '', 'upload/Cumpleanos Obtenido201510282340.png'),
(8, 'AsistenciaObt', '', 'upload/Asistencia Obtenida201510282348.png'),
(9, 'EntranamientoObte', '', 'upload/Plan Entranamiento O201510282357.png'),
(10, 'PlanAmigoObte', '', 'upload/Plan amigo Obtenida201510282405.png'),
(11, 'PlanSemestralObte', '', 'upload/Plan Semestral Obten201510282414.png'),
(12, 'PlanAnualObte', '', 'upload/Plan anual obtenida201510282421.png'),
(13, 'PagoSemestralVen', '', 'upload/Semestral Vence201510281510.png'),
(14, 'PlanAnualVen', '', 'upload/Anual Vence201510281501.png'),
(15, 'PlanAmigoVen', '', 'upload/Plan amigo Vecen201510281501.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagina`
--

CREATE TABLE IF NOT EXISTS `pagina` (
  `IDpagina` int(255) NOT NULL,
  `urlPagina` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `tituloES` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tituloEN` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `descripcionES` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `descripcionEN` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `keywordsES` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `keywordsEN` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `metatagES` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `metatagEN` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `IDfrases` int(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pagina`
--

INSERT INTO `pagina` (`IDpagina`, `urlPagina`, `tituloES`, `tituloEN`, `descripcionES`, `descripcionEN`, `keywordsES`, `keywordsEN`, `metatagES`, `metatagEN`, `IDfrases`) VALUES
(1, '', 'inicio', 'Home', 'lalalalla \r\n', '', '', '', '', '', 1),
(2, '', 'clases', '', '\r\n', '', '', '', '', '', 7),
(3, '', 'Entrenadores', 'Trainers', '\r\n', '', '', '', '', '', 7),
(4, '', 'Testimonios', 'Schudle', '\r\n', '', '', '', '', '', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paginatieneimagen`
--

CREATE TABLE IF NOT EXISTS `paginatieneimagen` (
  `IDpagina` int(255) NOT NULL,
  `IDimagen` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `paginatieneimagen`
--

INSERT INTO `paginatieneimagen` (`IDpagina`, `IDimagen`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paginatienetexto`
--

CREATE TABLE IF NOT EXISTS `paginatienetexto` (
  `IDpagina` int(255) NOT NULL,
  `IDtexto` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `paginatienetexto`
--

INSERT INTO `paginatienetexto` (`IDpagina`, `IDtexto`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(2, 54),
(2, 108),
(4, 117);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paginatienevideo`
--

CREATE TABLE IF NOT EXISTS `paginatienevideo` (
  `IDpagina` int(255) NOT NULL,
  `IDvideo` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `porcentajedegrasa`
--

CREATE TABLE IF NOT EXISTS `porcentajedegrasa` (
  `IDporcentajeGrasa` int(255) NOT NULL,
  `edad` tinyint(4) NOT NULL,
  `altura` tinyint(4) NOT NULL,
  `cuello` tinyint(4) NOT NULL,
  `cintura` tinyint(4) DEFAULT NULL,
  `fechaYhora` datetime NOT NULL,
  `resultado` int(255) NOT NULL,
  `IDusurio` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redsocial`
--

CREATE TABLE IF NOT EXISTS `redsocial` (
  `IDredSocial` int(255) NOT NULL,
  `nombreRedSocial` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `URLredSocial` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `redsocial`
--

INSERT INTO `redsocial` (`IDredSocial`, `nombreRedSocial`, `URLredSocial`) VALUES
(1, 'facebook', 'https://www.facebook.com/wahsalud'),
(2, 'YouTube', 'https://www.youtube.com/'),
(3, 'GooglePlus', 'https://plus.google.com/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE IF NOT EXISTS `secciones` (
  `IDseccion` int(255) NOT NULL,
  `IDusuario` int(255) NOT NULL,
  `nombreSeccionES` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nombreDeSeccionEN` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`IDseccion`, `IDusuario`, `nombreSeccionES`, `nombreDeSeccionEN`) VALUES
(1, 1, 'Inicio', 'Home');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciontienepagina`
--

CREATE TABLE IF NOT EXISTS `secciontienepagina` (
  `IDseccion` int(255) NOT NULL,
  `IDpagina` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `secciontienepagina`
--

INSERT INTO `secciontienepagina` (`IDseccion`, `IDpagina`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE IF NOT EXISTS `servicios` (
  `IDservicio` int(255) NOT NULL,
  `precioMensualES` smallint(10) NOT NULL,
  `precioMensualEN` smallint(10) NOT NULL,
  `precioAnualES` mediumint(50) NOT NULL,
  `precioAnualEN` mediumint(50) NOT NULL,
  `IDpagina` int(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='esto son los precios de las clases';

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`IDservicio`, `precioMensualES`, `precioMensualEN`, `precioAnualES`, `precioAnualEN`, `IDpagina`) VALUES
(14, 11, 0, 60, 60, 2),
(15, 122, 12, 12, 12, 2),
(16, 60, 5, 3, 3, 2),
(17, 90, 90, 90, 90, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serviciotienedescuento`
--

CREATE TABLE IF NOT EXISTS `serviciotienedescuento` (
  `IDservicio` int(255) NOT NULL,
  `IDdescuentos` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `serviciotienedescuento`
--

INSERT INTO `serviciotienedescuento` (`IDservicio`, `IDdescuentos`) VALUES
(17, 11),
(17, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonios`
--

CREATE TABLE IF NOT EXISTS `testimonios` (
  `IDtestimonios` int(255) NOT NULL,
  `nombreUsuario` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fechaYhora` datetime NOT NULL,
  `mensaje` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `IDpagina` int(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `testimonios`
--

INSERT INTO `testimonios` (`IDtestimonios`, `nombreUsuario`, `fechaYhora`, `mensaje`, `IDpagina`) VALUES
(3, 'Carlos', '2015-09-09 00:00:00', 'hola todo bien', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `texto`
--

CREATE TABLE IF NOT EXISTS `texto` (
  `iDtexto` int(255) NOT NULL,
  `textoES` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `textoEN` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `texto`
--

INSERT INTO `texto` (`iDtexto`, `textoES`, `textoEN`) VALUES
(1, 'Centro de salud y entrenamiento', 'Health and fitness center'),
(2, 'Prueba una clase', 'Try a class'),
(3, 'GIMNASIO', 'GYM'),
(4, 'Comenzá a estar en forma', 'Start to be fit'),
(5, 'ENTRENAMIENTO', 'TRAINING'),
(6, 'Mantente en forma', 'Stay fit'),
(7, 'READAPTACIÓN FISICA', 'PHYSICAL REHABILITATION'),
(8, 'Volver a estar\r\nen forma', 'Getting back fit'),
(9, 'Más Info', 'More info'),
(10, 'TITULO DE LA APP', 'APP TITTLE'),
(11, 'Texto de la app', 'app text'),
(12, 'DESCARGAR', 'DOWNLOAD'),
(13, 'COMIENZA TU ENTRENAMIENTO HOY ', 'START YOUR TRAINING TODAY'),
(14, 'sadasd', 'asdasd'),
(15, '', 'sad asd asd asd asd asd asd'),
(19, '<p>asdasd</p>', '<p>asdasdasdadasd2</p>'),
(20, '<p>prueba nuevo</p>', '<p>new test</p>'),
(23, '<p>nuevo&nbsp;</p>', '<p>nuevo ingles</p>'),
(24, '<p>sadfasdfasdfasdf</p>', '<p>sadfasdfsadfasdfas</p>'),
(25, '<p>sadfasdfasdfasdf</p>', '<p>sadfasdfsadfasdfas</p>'),
(27, '<p>sadfasdfasdfasdf</p>', '<p>sadfasdfsadfasdfas</p>'),
(28, '<p>dasdsadf</p>', '<p>sadfsadfsafsdfsadfsadfsa</p>'),
(29, '<p>sdfafdsafsdfsafdsfdsf</p>', '<p>sdfsadfasfsafadsfasdfasddfsadfsadfsadfadsf</p>'),
(30, '<p>algo nose si se mete</p>', '<p>ni idea</p>'),
(31, '<p>ultima prueba</p>', '<p>the last test</p>'),
(32, '<p>ultima prueba</p>', '<p>the last test</p>'),
(33, '<p>ultima prueba</p>', '<p>the last test</p>'),
(34, '<p>asdasdadads15132161321165</p>', '<p>32132123131313213131321321</p>'),
(35, '<p>asdasd123123123</p>', '<p>123123123</p>'),
(36, '<p>asdasd123123123</p>', '<p>123123123</p>'),
(38, '<p>lalal ejejej jejejej jejej</p>', '<p>lsakfjskladj l&ntilde;skjfsalkdjf &ntilde;lskdfjsadkl&ntilde;fj &nbsp;s&ntilde;adlkfjdsaklf&ntilde;j sal&ntilde;dkfjasdfkj sad fl&ntilde;kjsdafk s&ntilde;adlkfjsdlakfj&nbsp;</p>'),
(39, '<p>lalal ejejej jejejej jejej</p>', '<p>lsakfjskladj l&ntilde;skjfsalkdjf &ntilde;lskdfjsadkl&ntilde;fj &nbsp;s&ntilde;adlkfjdsaklf&ntilde;j sal&ntilde;dkfjasdfkj sad fl&ntilde;kjsdafk s&ntilde;adlkfjsdlakfj &nbsp;as dasdasdasda ad asda&nbsp;</p>'),
(40, '<p>lalal ejejej jejejej jejej</p>', '<p>lsakfjskladj l&ntilde;skjfsalkdjf &ntilde;lskdfjsadkl&ntilde;fj &nbsp;s&ntilde;adlkfjdsaklf&ntilde;j sal&ntilde;dkfjasdfkj sad fl&ntilde;kjsdafk s&ntilde;adlkfjsdlakfj &nbsp;as dasdasdasda ad asda&nbsp;</p>'),
(41, '<p>lalal ejejej jejejej jejej</p>', '<p>lsakfjskladj l&ntilde;skjfsalkdjf &ntilde;lskdfjsadkl&ntilde;fj &nbsp;s&ntilde;adlkfjdsaklf&ntilde;j sal&ntilde;dkfjasdfkj sad fl&ntilde;kjsdafk s&ntilde;adlkfjsdlakfj &nbsp;as dasdasdasda ad asda&nbsp;</p>'),
(42, '<p>lalal ejejej jejejej jejej</p>', '<p>lsakfjskladj l&ntilde;skjfsalkdjf &ntilde;lskdfjsadkl&ntilde;fj &nbsp;s&ntilde;adlkfjdsaklf&ntilde;j sal&ntilde;dkfjasdfkj sad fl&ntilde;kjsdafk s&ntilde;adlkfjsdlakfj &nbsp;as dasdasdasda ad asda&nbsp;</p>'),
(43, '<p>lalal ejejej jejejej jejej</p>', '<p>lsakfjskladj l&ntilde;skjfsalkdjf &ntilde;lskdfjsadkl&ntilde;fj &nbsp;s&ntilde;adlkfjdsaklf&ntilde;j sal&ntilde;dkfjasdfkj sad fl&ntilde;kjsdafk s&ntilde;adlkfjsdlakfj &nbsp;as dasdasdasda ad asda&nbsp;</p>'),
(44, '<p>lalal ejejej jejejej jejej</p>', '<p>lsakfjskladj l&ntilde;skjfsalkdjf &ntilde;lskdfjsadkl&ntilde;fj &nbsp;s&ntilde;adlkfjdsaklf&ntilde;j sal&ntilde;dkfjasdfkj sad fl&ntilde;kjsdafk s&ntilde;adlkfjsdlakfj &nbsp;as dasdasdasda ad asda&nbsp;</p>'),
(45, '<p>prueba del ID</p>', '<p>asdasd asd asd asd asd asd</p>'),
(46, '<p>prueba del ID</p>', '<p>asdasd asd asd asd asd asd</p>'),
(47, '<p>prueba del ID</p>', '<p>asdasd asd asd asd asd asd</p>'),
(49, '<p>inserta en los weas</p>', '<p>inserta en los weas x2</p>'),
(50, '<p>PRUEBA FINAL</p>', '<p>THE FINAL TEST</p>'),
(51, 'nuevo EspaÃ±ol', 'Nuevo Ingles'),
(52, 'nuevo EspaÃ±ol', 'Nuevo Ingles'),
(53, 'asdasd', ''),
(54, '<p>asdasdadsdf sdf saf asf2 323 23  </p>', '<p>r qwrqwer sdf </p>'),
(55, '<p>e23</p>', '<p>a</p>'),
(56, '<p>sdf</p>', ''),
(57, 'nuevo Español', 'Nuevo Ingles'),
(58, 'lo agrego ahora', 'lo agrego en ingles ahora'),
(60, '434', '09'),
(61, 'nuevo Español', 'Nuevo Ingles'),
(62, 'dwdas', ' adsasdas d as dasd '),
(63, '32323232', ' 23 23 2323 23 '),
(64, 'erew ', ' we'),
(65, 'erew ', ' we'),
(66, ' sda', ' asdsa d'),
(67, 'agrega ahora', 'insert now'),
(68, '323 modificado', ' 234 23 324 234 234'),
(69, 'wda', ' asd '),
(70, '3', ''),
(71, 'agregado con el $txt', '$txt'),
(72, 'asd', ''),
(73, 'a', ''),
(74, '211232', ''),
(75, 'as', ''),
(76, '2', ''),
(77, '232532563', ''),
(78, '36', ''),
(79, 'hola', 'hi'),
(80, 'ads', ''),
(81, 'ads', ''),
(82, '323', '32'),
(83, '323', '32'),
(84, 'dsa', ' asd asd asd a'),
(85, 'dsa', ' asd asd asd a'),
(86, 'agrega al coso', 'agrega'),
(87, 'agrega al coso', 'agrega'),
(88, 'sadsad', 'dasdada'),
(89, 'sadsad', 'dasdada'),
(90, 'belu', 'bel'),
(91, 'belu', 'bel'),
(92, 'bebe', 'bebeb'),
(93, 'dada', 'dadadad'),
(94, 'dadadad', 'dadadadad'),
(95, 'dsa ', 'dadad'),
(96, 'df', 'fd'),
(97, ' asd', 'a sdasd'),
(98, 'sd asda dasd', 'a asdasdas asda sd ad'),
(99, 'das', ' asd'),
(100, 'asdd jjj', 'modificado'),
(101, 'asdasdasdasd', 'as dasdasdasd asd asdasda dsa '),
(102, 'sadds das d as adsdsa ', ' asdsa asdas dadasddsasd '),
(103, 'ads', ' asd'),
(104, 'sd', 'sd'),
(105, 'LO PUDE PONER', 'YEAH'),
(106, 'lalalala', 'lelelele'),
(107, 'leooelelele', 'leleleoleoeloelolololololol'),
(108, 'para la 22', 'for the 2'),
(109, 'pepep', 'lololo'),
(110, 'trainers', 'Entrenadores'),
(111, 'flowtime', 'sympho'),
(112, 'a la 2', 'a la two'),
(113, 'español', 'ingles'),
(114, 'raul22', 'raul ingles'),
(115, 'nuevo texto', 'new text'),
(116, 'hola pa 2', 'hi dad 2'),
(117, 'prueba', 'prueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE IF NOT EXISTS `tipousuario` (
  `IDtipoUsuario` int(1) NOT NULL,
  `nombreTipoUsuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`IDtipoUsuario`, `nombreTipoUsuario`) VALUES
(1, 'admin'),
(2, 'usuarioNormal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE IF NOT EXISTS `ubicacion` (
  `IDubicacion` int(255) NOT NULL,
  `direccionCompletaES` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `direccionCompletaEN` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefonoES` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefonoEN` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`IDubicacion`, `direccionCompletaES`, `direccionCompletaEN`, `telefonoES`, `telefonoEN`, `email`) VALUES
(1, 'Av. Mitre 1800, Avellaneda, GABA, Argentina', 'Av. Mitre 1800, Avellaneda, GABA, Argentina', 'Telefono: +5411 4204 8293', 'Phone: +5411 4204 8293', 'Email: wahsalud@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `IDusurio` int(255) NOT NULL,
  `IDtipoUsuario` int(1) NOT NULL,
  `nombreUsuario` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `nombreGenero` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IDusurio`, `IDtipoUsuario`, `nombreUsuario`, `password`, `email`, `nombreGenero`) VALUES
(1, 1, 'alan', '123alan', 'alan_hindle@hotmail.com', 'M'),
(2, 2, 'walter', '123walter', 'walter_hindle@hotmail.com', 'M'),
(3, 2, 'silvina', '123silvina', 'silvina@hotmail.com', 'F'),
(4, 2, 'modiFICADO', 'modiFICADO', 'modiFICADO.com', 'F'),
(6, 2, '2', '2', '2.com', 'M'),
(8, 2, 'mica', '123mica', 'mica@live.com', 'F');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariocreatestimonio`
--

CREATE TABLE IF NOT EXISTS `usuariocreatestimonio` (
  `IDusurio` int(255) NOT NULL,
  `IDtestimonios` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariotienelogro`
--

CREATE TABLE IF NOT EXISTS `usuariotienelogro` (
  `IDusuario` int(255) NOT NULL,
  `IDlogro` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuariotienelogro`
--

INSERT INTO `usuariotienelogro` (`IDusuario`, `IDlogro`) VALUES
(2, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `IDvideo` int(255) NOT NULL,
  `nombreDelVideoES` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nombreDelVideoEN` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `descripcionES` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `descripcionEN` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `video`
--

INSERT INTO `video` (`IDvideo`, `nombreDelVideoES`, `nombreDelVideoEN`, `url`, `descripcionES`, `descripcionEN`) VALUES
(6, 'asd', 'asd', 'asd', 'asd', 'asd'),
(7, 'adsasd 1', 'asdasd 1', 'asdasd 1', 'asdasd 1', 'asdasd 1'),
(8, 'asd', 'asd', 'asd', 'asd', 'asd'),
(9, 'asd', 'asd', 'asd', 'asdasd', 'asdasdasdasdasdasdasd');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`IDclases`), ADD KEY `IDpagina` (`IDpagina`);

--
-- Indices de la tabla `clasetieneservicio`
--
ALTER TABLE `clasetieneservicio`
  ADD KEY `IDclases` (`IDclases`), ADD KEY `IDservicio` (`IDservicio`);

--
-- Indices de la tabla `codigoobtienebeneficio`
--
ALTER TABLE `codigoobtienebeneficio`
  ADD KEY `IDcodigo` (`IDcodigo`), ADD KEY `IDlogro` (`IDlogro`);

--
-- Indices de la tabla `codigos`
--
ALTER TABLE `codigos`
  ADD PRIMARY KEY (`IDcodigo`), ADD KEY `IDusuario` (`IDusuario`), ADD KEY `IDestado` (`IDestado`);

--
-- Indices de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  ADD PRIMARY KEY (`IDdescuentos`), ADD KEY `IDpagina` (`IDpagina`);

--
-- Indices de la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD PRIMARY KEY (`IDentrenador`), ADD KEY `IDpagina` (`IDpagina`);

--
-- Indices de la tabla `entrenadorpertenececlase`
--
ALTER TABLE `entrenadorpertenececlase`
  ADD KEY `IDentrenador` (`IDentrenador`), ADD KEY `IDclases` (`IDclases`);

--
-- Indices de la tabla `entrenadortieneredsocial`
--
ALTER TABLE `entrenadortieneredsocial`
  ADD KEY `IDentrenador` (`IDentrenador`), ADD KEY `IDredSocial` (`IDredSocial`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`IDestado`);

--
-- Indices de la tabla `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`IDfooter`);

--
-- Indices de la tabla `footertieneredsocial`
--
ALTER TABLE `footertieneredsocial`
  ADD KEY `IDfooter` (`IDfooter`), ADD KEY `IDredSocial` (`IDredSocial`);

--
-- Indices de la tabla `fresesmotivacionales`
--
ALTER TABLE `fresesmotivacionales`
  ADD PRIMARY KEY (`IDfrases`);

--
-- Indices de la tabla `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`IDheader`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`IDimagen`);

--
-- Indices de la tabla `logroybeneficios`
--
ALTER TABLE `logroybeneficios`
  ADD PRIMARY KEY (`IDlogro`);

--
-- Indices de la tabla `pagina`
--
ALTER TABLE `pagina`
  ADD PRIMARY KEY (`IDpagina`), ADD KEY `IDfrases` (`IDfrases`);

--
-- Indices de la tabla `paginatieneimagen`
--
ALTER TABLE `paginatieneimagen`
  ADD KEY `IDpagina` (`IDpagina`), ADD KEY `IDimagen` (`IDimagen`);

--
-- Indices de la tabla `paginatienetexto`
--
ALTER TABLE `paginatienetexto`
  ADD KEY `IDpagina` (`IDpagina`), ADD KEY `IDtexto` (`IDtexto`);

--
-- Indices de la tabla `paginatienevideo`
--
ALTER TABLE `paginatienevideo`
  ADD KEY `IDpagina` (`IDpagina`), ADD KEY `IDvideo` (`IDvideo`);

--
-- Indices de la tabla `porcentajedegrasa`
--
ALTER TABLE `porcentajedegrasa`
  ADD PRIMARY KEY (`IDporcentajeGrasa`), ADD KEY `IDusurio` (`IDusurio`);

--
-- Indices de la tabla `redsocial`
--
ALTER TABLE `redsocial`
  ADD PRIMARY KEY (`IDredSocial`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`IDseccion`), ADD KEY `IDusuario` (`IDusuario`);

--
-- Indices de la tabla `secciontienepagina`
--
ALTER TABLE `secciontienepagina`
  ADD KEY `IDseccion` (`IDseccion`), ADD KEY `IDpagina` (`IDpagina`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`IDservicio`), ADD KEY `IDpagina` (`IDpagina`);

--
-- Indices de la tabla `serviciotienedescuento`
--
ALTER TABLE `serviciotienedescuento`
  ADD KEY `IDservicio` (`IDservicio`), ADD KEY `IDdescuentos` (`IDdescuentos`);

--
-- Indices de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  ADD PRIMARY KEY (`IDtestimonios`), ADD KEY `IDpagina` (`IDpagina`);

--
-- Indices de la tabla `texto`
--
ALTER TABLE `texto`
  ADD PRIMARY KEY (`iDtexto`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`IDtipoUsuario`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`IDubicacion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IDusurio`), ADD KEY `IDtipoUsuario` (`IDtipoUsuario`);

--
-- Indices de la tabla `usuariocreatestimonio`
--
ALTER TABLE `usuariocreatestimonio`
  ADD KEY `IDusurio` (`IDusurio`), ADD KEY `IDtestimonios` (`IDtestimonios`);

--
-- Indices de la tabla `usuariotienelogro`
--
ALTER TABLE `usuariotienelogro`
  ADD KEY `IDlogro` (`IDlogro`), ADD KEY `IDusuario` (`IDusuario`);

--
-- Indices de la tabla `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`IDvideo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `IDclases` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `codigos`
--
ALTER TABLE `codigos`
  MODIFY `IDcodigo` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  MODIFY `IDdescuentos` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `entrenador`
--
ALTER TABLE `entrenador`
  MODIFY `IDentrenador` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `IDestado` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `footer`
--
ALTER TABLE `footer`
  MODIFY `IDfooter` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `fresesmotivacionales`
--
ALTER TABLE `fresesmotivacionales`
  MODIFY `IDfrases` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `header`
--
ALTER TABLE `header`
  MODIFY `IDheader` tinyint(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `IDimagen` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `logroybeneficios`
--
ALTER TABLE `logroybeneficios`
  MODIFY `IDlogro` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `pagina`
--
ALTER TABLE `pagina`
  MODIFY `IDpagina` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `porcentajedegrasa`
--
ALTER TABLE `porcentajedegrasa`
  MODIFY `IDporcentajeGrasa` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `redsocial`
--
ALTER TABLE `redsocial`
  MODIFY `IDredSocial` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `IDseccion` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `IDservicio` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  MODIFY `IDtestimonios` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `texto`
--
ALTER TABLE `texto`
  MODIFY `iDtexto` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `IDtipoUsuario` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `IDubicacion` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IDusurio` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `video`
--
ALTER TABLE `video`
  MODIFY `IDvideo` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
ADD CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`IDpagina`) REFERENCES `pagina` (`IDpagina`),
ADD CONSTRAINT `clases_ibfk_3` FOREIGN KEY (`IDpagina`) REFERENCES `pagina` (`IDpagina`);

--
-- Filtros para la tabla `clasetieneservicio`
--
ALTER TABLE `clasetieneservicio`
ADD CONSTRAINT `clasetieneservicio_ibfk_1` FOREIGN KEY (`IDclases`) REFERENCES `clases` (`IDclases`),
ADD CONSTRAINT `clasetieneservicio_ibfk_2` FOREIGN KEY (`IDservicio`) REFERENCES `servicios` (`IDservicio`),
ADD CONSTRAINT `clasetieneservicio_ibfk_3` FOREIGN KEY (`IDclases`) REFERENCES `clases` (`IDclases`),
ADD CONSTRAINT `clasetieneservicio_ibfk_4` FOREIGN KEY (`IDservicio`) REFERENCES `servicios` (`IDservicio`);

--
-- Filtros para la tabla `codigoobtienebeneficio`
--
ALTER TABLE `codigoobtienebeneficio`
ADD CONSTRAINT `codigoobtienebeneficio_ibfk_1` FOREIGN KEY (`IDcodigo`) REFERENCES `codigos` (`IDcodigo`),
ADD CONSTRAINT `codigoobtienebeneficio_ibfk_2` FOREIGN KEY (`IDcodigo`) REFERENCES `codigos` (`IDcodigo`),
ADD CONSTRAINT `codigoobtienebeneficio_ibfk_3` FOREIGN KEY (`IDlogro`) REFERENCES `logroybeneficios` (`IDlogro`);

--
-- Filtros para la tabla `codigos`
--
ALTER TABLE `codigos`
ADD CONSTRAINT `codigos_ibfk_1` FOREIGN KEY (`IDusuario`) REFERENCES `usuario` (`IDusurio`),
ADD CONSTRAINT `codigos_ibfk_2` FOREIGN KEY (`IDusuario`) REFERENCES `usuario` (`IDusurio`),
ADD CONSTRAINT `codigos_ibfk_3` FOREIGN KEY (`IDusuario`) REFERENCES `usuario` (`IDusurio`),
ADD CONSTRAINT `codigos_ibfk_4` FOREIGN KEY (`IDusuario`) REFERENCES `usuario` (`IDusurio`),
ADD CONSTRAINT `codigos_ibfk_5` FOREIGN KEY (`IDusuario`) REFERENCES `usuario` (`IDusurio`),
ADD CONSTRAINT `codigos_ibfk_6` FOREIGN KEY (`IDestado`) REFERENCES `estado` (`IDestado`);

--
-- Filtros para la tabla `descuentos`
--
ALTER TABLE `descuentos`
ADD CONSTRAINT `descuentos_ibfk_1` FOREIGN KEY (`IDpagina`) REFERENCES `pagina` (`IDpagina`);

--
-- Filtros para la tabla `entrenador`
--
ALTER TABLE `entrenador`
ADD CONSTRAINT `entrenador_ibfk_1` FOREIGN KEY (`IDpagina`) REFERENCES `pagina` (`IDpagina`),
ADD CONSTRAINT `entrenador_ibfk_3` FOREIGN KEY (`IDpagina`) REFERENCES `pagina` (`IDpagina`);

--
-- Filtros para la tabla `entrenadorpertenececlase`
--
ALTER TABLE `entrenadorpertenececlase`
ADD CONSTRAINT `entrenadorpertenececlase_ibfk_1` FOREIGN KEY (`IDentrenador`) REFERENCES `entrenador` (`IDentrenador`),
ADD CONSTRAINT `entrenadorpertenececlase_ibfk_2` FOREIGN KEY (`IDclases`) REFERENCES `clases` (`IDclases`),
ADD CONSTRAINT `entrenadorpertenececlase_ibfk_3` FOREIGN KEY (`IDentrenador`) REFERENCES `entrenador` (`IDentrenador`),
ADD CONSTRAINT `entrenadorpertenececlase_ibfk_4` FOREIGN KEY (`IDclases`) REFERENCES `clases` (`IDclases`);

--
-- Filtros para la tabla `entrenadortieneredsocial`
--
ALTER TABLE `entrenadortieneredsocial`
ADD CONSTRAINT `entrenadortieneredsocial_ibfk_1` FOREIGN KEY (`IDentrenador`) REFERENCES `entrenador` (`IDentrenador`),
ADD CONSTRAINT `entrenadortieneredsocial_ibfk_2` FOREIGN KEY (`IDredSocial`) REFERENCES `redsocial` (`IDredSocial`),
ADD CONSTRAINT `entrenadortieneredsocial_ibfk_3` FOREIGN KEY (`IDentrenador`) REFERENCES `entrenador` (`IDentrenador`),
ADD CONSTRAINT `entrenadortieneredsocial_ibfk_4` FOREIGN KEY (`IDredSocial`) REFERENCES `redsocial` (`IDredSocial`);

--
-- Filtros para la tabla `footertieneredsocial`
--
ALTER TABLE `footertieneredsocial`
ADD CONSTRAINT `footertieneredsocial_ibfk_1` FOREIGN KEY (`IDfooter`) REFERENCES `footer` (`IDfooter`),
ADD CONSTRAINT `footertieneredsocial_ibfk_2` FOREIGN KEY (`IDredSocial`) REFERENCES `redsocial` (`IDredSocial`);

--
-- Filtros para la tabla `pagina`
--
ALTER TABLE `pagina`
ADD CONSTRAINT `pagina_ibfk_1` FOREIGN KEY (`IDfrases`) REFERENCES `fresesmotivacionales` (`IDfrases`);

--
-- Filtros para la tabla `paginatieneimagen`
--
ALTER TABLE `paginatieneimagen`
ADD CONSTRAINT `paginatieneimagen_ibfk_1` FOREIGN KEY (`IDpagina`) REFERENCES `pagina` (`IDpagina`),
ADD CONSTRAINT `paginatieneimagen_ibfk_2` FOREIGN KEY (`IDimagen`) REFERENCES `imagenes` (`IDimagen`),
ADD CONSTRAINT `paginatieneimagen_ibfk_3` FOREIGN KEY (`IDpagina`) REFERENCES `pagina` (`IDpagina`),
ADD CONSTRAINT `paginatieneimagen_ibfk_4` FOREIGN KEY (`IDimagen`) REFERENCES `imagenes` (`IDimagen`);

--
-- Filtros para la tabla `paginatienetexto`
--
ALTER TABLE `paginatienetexto`
ADD CONSTRAINT `paginatienetexto_ibfk_1` FOREIGN KEY (`IDpagina`) REFERENCES `pagina` (`IDpagina`),
ADD CONSTRAINT `paginatienetexto_ibfk_2` FOREIGN KEY (`IDtexto`) REFERENCES `texto` (`iDtexto`),
ADD CONSTRAINT `paginatienetexto_ibfk_3` FOREIGN KEY (`IDpagina`) REFERENCES `pagina` (`IDpagina`),
ADD CONSTRAINT `paginatienetexto_ibfk_4` FOREIGN KEY (`IDtexto`) REFERENCES `texto` (`iDtexto`);

--
-- Filtros para la tabla `paginatienevideo`
--
ALTER TABLE `paginatienevideo`
ADD CONSTRAINT `paginatienevideo_ibfk_1` FOREIGN KEY (`IDpagina`) REFERENCES `pagina` (`IDpagina`),
ADD CONSTRAINT `paginatienevideo_ibfk_2` FOREIGN KEY (`IDvideo`) REFERENCES `video` (`IDvideo`),
ADD CONSTRAINT `paginatienevideo_ibfk_3` FOREIGN KEY (`IDpagina`) REFERENCES `pagina` (`IDpagina`),
ADD CONSTRAINT `paginatienevideo_ibfk_4` FOREIGN KEY (`IDvideo`) REFERENCES `video` (`IDvideo`);

--
-- Filtros para la tabla `porcentajedegrasa`
--
ALTER TABLE `porcentajedegrasa`
ADD CONSTRAINT `porcentajedegrasa_ibfk_1` FOREIGN KEY (`IDusurio`) REFERENCES `usuario` (`IDusurio`),
ADD CONSTRAINT `porcentajedegrasa_ibfk_2` FOREIGN KEY (`IDusurio`) REFERENCES `usuario` (`IDusurio`);

--
-- Filtros para la tabla `secciones`
--
ALTER TABLE `secciones`
ADD CONSTRAINT `secciones_ibfk_1` FOREIGN KEY (`IDusuario`) REFERENCES `usuario` (`IDusurio`),
ADD CONSTRAINT `secciones_ibfk_2` FOREIGN KEY (`IDusuario`) REFERENCES `usuario` (`IDusurio`),
ADD CONSTRAINT `secciones_ibfk_3` FOREIGN KEY (`IDusuario`) REFERENCES `usuario` (`IDusurio`),
ADD CONSTRAINT `secciones_ibfk_4` FOREIGN KEY (`IDusuario`) REFERENCES `usuario` (`IDusurio`);

--
-- Filtros para la tabla `secciontienepagina`
--
ALTER TABLE `secciontienepagina`
ADD CONSTRAINT `secciontienepagina_ibfk_1` FOREIGN KEY (`IDseccion`) REFERENCES `secciones` (`IDseccion`),
ADD CONSTRAINT `secciontienepagina_ibfk_2` FOREIGN KEY (`IDpagina`) REFERENCES `pagina` (`IDpagina`),
ADD CONSTRAINT `secciontienepagina_ibfk_3` FOREIGN KEY (`IDseccion`) REFERENCES `secciones` (`IDseccion`),
ADD CONSTRAINT `secciontienepagina_ibfk_4` FOREIGN KEY (`IDpagina`) REFERENCES `pagina` (`IDpagina`);

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
ADD CONSTRAINT `servicios_ibfk_1` FOREIGN KEY (`IDpagina`) REFERENCES `pagina` (`IDpagina`);

--
-- Filtros para la tabla `serviciotienedescuento`
--
ALTER TABLE `serviciotienedescuento`
ADD CONSTRAINT `serviciotienedescuento_ibfk_1` FOREIGN KEY (`IDservicio`) REFERENCES `servicios` (`IDservicio`),
ADD CONSTRAINT `serviciotienedescuento_ibfk_2` FOREIGN KEY (`IDdescuentos`) REFERENCES `descuentos` (`IDdescuentos`),
ADD CONSTRAINT `serviciotienedescuento_ibfk_3` FOREIGN KEY (`IDservicio`) REFERENCES `servicios` (`IDservicio`),
ADD CONSTRAINT `serviciotienedescuento_ibfk_4` FOREIGN KEY (`IDdescuentos`) REFERENCES `descuentos` (`IDdescuentos`);

--
-- Filtros para la tabla `testimonios`
--
ALTER TABLE `testimonios`
ADD CONSTRAINT `testimonios_ibfk_1` FOREIGN KEY (`IDpagina`) REFERENCES `pagina` (`IDpagina`),
ADD CONSTRAINT `testimonios_ibfk_2` FOREIGN KEY (`IDpagina`) REFERENCES `pagina` (`IDpagina`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`IDtipoUsuario`) REFERENCES `tipousuario` (`IDtipoUsuario`),
ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`IDtipoUsuario`) REFERENCES `tipousuario` (`IDtipoUsuario`),
ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`IDtipoUsuario`) REFERENCES `tipousuario` (`IDtipoUsuario`),
ADD CONSTRAINT `usuario_ibfk_4` FOREIGN KEY (`IDtipoUsuario`) REFERENCES `tipousuario` (`IDtipoUsuario`);

--
-- Filtros para la tabla `usuariocreatestimonio`
--
ALTER TABLE `usuariocreatestimonio`
ADD CONSTRAINT `usuariocreatestimonio_ibfk_1` FOREIGN KEY (`IDusurio`) REFERENCES `usuario` (`IDusurio`),
ADD CONSTRAINT `usuariocreatestimonio_ibfk_2` FOREIGN KEY (`IDtestimonios`) REFERENCES `testimonios` (`IDtestimonios`),
ADD CONSTRAINT `usuariocreatestimonio_ibfk_3` FOREIGN KEY (`IDusurio`) REFERENCES `usuario` (`IDusurio`),
ADD CONSTRAINT `usuariocreatestimonio_ibfk_4` FOREIGN KEY (`IDtestimonios`) REFERENCES `testimonios` (`IDtestimonios`);

--
-- Filtros para la tabla `usuariotienelogro`
--
ALTER TABLE `usuariotienelogro`
ADD CONSTRAINT `usuariotienelogro_ibfk_1` FOREIGN KEY (`IDlogro`) REFERENCES `logroybeneficios` (`IDlogro`),
ADD CONSTRAINT `usuariotienelogro_ibfk_2` FOREIGN KEY (`IDusuario`) REFERENCES `usuario` (`IDusurio`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
