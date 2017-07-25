-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 25-07-2017 a las 22:51:45
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hoteldruid`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anni`
--

CREATE TABLE `anni` (
  `idanni` int(11) NOT NULL,
  `tipo_periodi` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `anni`
--

INSERT INTO `anni` (`idanni`, `tipo_periodi`) VALUES
(2017, 'g');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appartamenti`
--

CREATE TABLE `appartamenti` (
  `idappartamenti` varchar(100) NOT NULL,
  `numpiano` text,
  `maxoccupanti` int(11) DEFAULT NULL,
  `numcasa` text,
  `app_vicini` text,
  `priorita` int(11) DEFAULT NULL,
  `priorita2` int(11) DEFAULT NULL,
  `letto` varchar(1) DEFAULT NULL,
  `commento` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `appartamenti`
--

INSERT INTO `appartamenti` (`idappartamenti`, `numpiano`, `maxoccupanti`, `numcasa`, `app_vicini`, `priorita`, `priorita2`, `letto`, `commento`) VALUES
('01', NULL, 2, 'La Porteña', NULL, NULL, NULL, NULL, NULL),
('02', NULL, 4, 'La Porteña', NULL, NULL, NULL, NULL, NULL),
('03', NULL, 2, 'La Porteña', NULL, NULL, NULL, NULL, NULL),
('04', NULL, 2, 'La Porteña', NULL, NULL, NULL, NULL, NULL),
('05', NULL, 2, 'La Porteña', NULL, NULL, NULL, NULL, NULL),
('06', NULL, 3, 'La Porteña', NULL, NULL, NULL, NULL, NULL),
('07', NULL, 5, 'La Porteña', NULL, NULL, NULL, NULL, NULL),
('08', NULL, 2, 'La Porteña', NULL, NULL, NULL, NULL, NULL),
('09', NULL, 4, 'La Porteña', NULL, NULL, NULL, NULL, NULL),
('10', NULL, 4, 'La Porteña', NULL, NULL, NULL, NULL, NULL),
('11', NULL, 2, 'La Porteña', NULL, NULL, NULL, NULL, NULL),
('12', NULL, 2, 'La Porteña', NULL, NULL, NULL, NULL, NULL),
('13', NULL, 5, 'Cabaña Elvira', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beniinventario`
--

CREATE TABLE `beniinventario` (
  `idbeniinventario` int(11) NOT NULL,
  `nome_bene` varchar(70) DEFAULT NULL,
  `codice_bene` varchar(50) DEFAULT NULL,
  `descrizione_bene` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `beniinventario`
--

INSERT INTO `beniinventario` (`idbeniinventario`, `nome_bene`, `codice_bene`, `descrizione_bene`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(1, 'Ventilador', '', 'Ventilador de pie, unitario.', '2017-07-24 15:36:40', 'localhost', 1),
(2, 'caloventor', '', 'caloventor individual para habitación', '2017-07-24 15:46:28', 'localhost', 1),
(3, 'Limpieza', '', 'Limpiar el piso, baño, tirar lisoform, controlar las toallas, y accesorios del baño.', '2017-07-24 16:18:04', 'localhost', 1),
(4, 'toalla simple individual', '', 'toalla de mano, individual por cliente.', '2017-07-24 17:01:41', 'localhost', 1),
(5, 'Toalla Grande individual', '', 'Toalla grande, individual por cliente.', '2017-07-24 17:02:20', 'localhost', 1),
(6, 'cama simple', '', 'cama simple, individual. con colchon de sommier comprado en 2016.', '2017-07-24 17:05:18', 'localhost', 1),
(7, 'Cama Doble', '', 'Cama doble, matrimonial, con colchon de sommier comprado en 2016.', '2017-07-24 17:05:41', 'localhost', 1),
(8, 'Llave de tubo.', '', 'Llave de tubo de 8 pulgadas.', '2017-07-24 17:06:15', 'localhost', 1),
(9, 'Cucheta', '', 'cucheta, heredada de la dinastia roberto, son feas.', '2017-07-24 17:10:57', 'localhost', 1),
(10, 'Heladera común vieja', '', 'Tiene una parte de freezer pero no tiene verdadero freezer.\r\nes vieja, regalada por aurora.', '2017-07-24 17:17:15', 'localhost', 1),
(11, 'Horno eléctrico', '', 'Horno eléctrico, para cocinar.', '2017-07-24 17:18:25', 'localhost', 1),
(12, 'Cocina común.', '', 'Cocina común, el horno dicen que no funciona', '2017-07-24 17:19:29', 'localhost', 1),
(13, 'Copas', '', 'Copa individual para brindar. ', '2017-07-24 17:20:16', 'localhost', 1),
(14, 'Televisor sony lcd 32 &quot;', '', 'Televisor sony 32 pulgadas.  ', '2017-07-24 17:21:43', 'localhost', 1),
(15, 'Televisor phillips 42 &quot;', '', 'Televisor Phillips 42 pulgadas, con soporte para pared.\r\nla base fue usada para estante, no tiene más base.', '2017-07-24 17:23:33', 'localhost', 1),
(16, 'Ensalada', '', 'Ensalada indivisual, con tomate lechuga, huevo, zanahoria, cebolla.', '2017-07-24 17:57:16', 'localhost', 1),
(17, 'milanesas con papas fritas', '', 'plato individual de milanesas con papas fritas.', '2017-07-25 17:06:59', 'localhost', 1),
(18, 'Ravioles con salsa roja', '', 'Plato individual de ravioles con salsa roja.', '2017-07-25 17:12:45', 'localhost', 1),
(19, 'coca de 1,15 L.', '', 'Coca Cola de 1,15 litros con envase retornable', '2017-07-25 17:13:50', 'localhost', 1),
(20, 'Vaso de fernet grande', '', 'Vaso grande de fernet preparado.', '2017-07-25 17:14:57', 'localhost', 1),
(21, 'Whisky Criadores', '', 'medida individual de whisky nacional (criadores) ', '2017-07-25 17:16:08', 'localhost', 1),
(22, 'Aire frio/calor de 2000 w', '', 'aire frio/calor de Cabaña Elvira. ', '2017-07-25 18:08:05', 'localhost', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `numero` int(11) DEFAULT NULL,
  `tipo` varchar(8) DEFAULT NULL,
  `testo` mediumtext,
  `data_modifica` datetime DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casse`
--

CREATE TABLE `casse` (
  `idcasse` int(11) NOT NULL,
  `nome_cassa` varchar(70) DEFAULT NULL,
  `stato` varchar(8) DEFAULT NULL,
  `codice_cassa` varchar(50) DEFAULT NULL,
  `descrizione_cassa` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `casse`
--

INSERT INTO `casse` (`idcasse`, `nome_cassa`, `stato`, `codice_cassa`, `descrizione_cassa`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(1, NULL, NULL, NULL, NULL, '2017-07-24 15:24:39', 'localhost', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citta`
--

CREATE TABLE `citta` (
  `idcitta` int(11) NOT NULL,
  `nome_citta` varchar(70) DEFAULT NULL,
  `codice_citta` varchar(50) DEFAULT NULL,
  `codice2_citta` varchar(50) DEFAULT NULL,
  `codice3_citta` varchar(50) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clienti`
--

CREATE TABLE `clienti` (
  `idclienti` int(11) NOT NULL,
  `cognome` varchar(70) NOT NULL,
  `nome` varchar(70) DEFAULT NULL,
  `soprannome` varchar(70) DEFAULT NULL,
  `sesso` char(1) DEFAULT NULL,
  `titolo` varchar(30) DEFAULT NULL,
  `lingua` varchar(14) DEFAULT NULL,
  `datanascita` date DEFAULT NULL,
  `cittanascita` varchar(70) DEFAULT NULL,
  `regionenascita` varchar(70) DEFAULT NULL,
  `nazionenascita` varchar(70) DEFAULT NULL,
  `documento` varchar(70) DEFAULT NULL,
  `scadenzadoc` date DEFAULT NULL,
  `tipodoc` varchar(70) DEFAULT NULL,
  `cittadoc` varchar(70) DEFAULT NULL,
  `regionedoc` varchar(70) DEFAULT NULL,
  `nazionedoc` varchar(70) DEFAULT NULL,
  `nazionalita` varchar(70) DEFAULT NULL,
  `nazione` varchar(70) DEFAULT NULL,
  `regione` varchar(70) DEFAULT NULL,
  `citta` varchar(70) DEFAULT NULL,
  `via` varchar(70) DEFAULT NULL,
  `numcivico` varchar(30) DEFAULT NULL,
  `cap` varchar(30) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `telefono2` varchar(50) DEFAULT NULL,
  `telefono3` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `email` text,
  `cod_fiscale` varchar(50) DEFAULT NULL,
  `partita_iva` varchar(50) DEFAULT NULL,
  `commento` text,
  `max_num_ordine` int(11) DEFAULT NULL,
  `idclienti_compagni` text,
  `doc_inviati` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clienti`
--

INSERT INTO `clienti` (`idclienti`, `cognome`, `nome`, `soprannome`, `sesso`, `titolo`, `lingua`, `datanascita`, `cittanascita`, `regionenascita`, `nazionenascita`, `documento`, `scadenzadoc`, `tipodoc`, `cittadoc`, `regionedoc`, `nazionedoc`, `nazionalita`, `nazione`, `regione`, `citta`, `via`, `numcivico`, `cap`, `telefono`, `telefono2`, `telefono3`, `fax`, `email`, `cod_fiscale`, `partita_iva`, `commento`, `max_num_ordine`, `idclienti_compagni`, `doc_inviati`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(1, 'Cuello', 'Juan Pablo', NULL, 'm', NULL, 'es', '1990-03-21', 'Capital', 'Córdoba', 'Argentina', '35054822', NULL, NULL, 'Capital', 'Córdoba', 'Argentina', 'Argentina', 'Argentina', 'Córdoba', 'Capital', 'Calle Charcas', '1636', '5000', '3513220999', '4522524', NULL, NULL, 'cuello.juanpablo@gmail.com', '35054822', NULL, NULL, 1, ',', NULL, '2017-07-24 15:31:41', 'localhost', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratti`
--

CREATE TABLE `contratti` (
  `numero` int(11) DEFAULT NULL,
  `tipo` varchar(8) DEFAULT NULL,
  `testo` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contratti`
--

INSERT INTO `contratti` (`numero`, `tipo`, `testo`) VALUES
(1, 'vett2', 'iva_porc_vect_fact;num_iva_fact'),
(2, 'vett2', 'iva_porc_exist_fact;var_tmp_fact'),
(428, 'var7', 'apellido_csv'),
(429, 'var7', 'nombre_csv'),
(430, 'var7', 'apodo_csv'),
(431, 'var7', 'titulo_csv'),
(432, 'var7', 'email_csv'),
(433, 'var7', 'telefono_csv'),
(434, 'var7', 'fax_csv'),
(435, 'var7', 'nacion_csv'),
(436, 'var7', 'region_csv'),
(437, 'var7', 'ciudad_csv'),
(438, 'var7', 'direccion_csv'),
(439, 'var7', 'codigo_postal_csv'),
(440, 'var7', 'nacionalidad_csv'),
(441, 'var7', 'fecha_nacimiento_csv'),
(442, 'var7', 'certificado_indentificacion_fiscal_csv'),
(443, 'var7', 'tmp_csv'),
(305, 'var6', 'apellido_ec'),
(306, 'var6', 'apel_no_esp_ec'),
(102, 'var5', 'apellido_eml_disp'),
(68, 'var4', 'linea_ciudad_recibo'),
(69, 'var4', 'linea_nacion_recibo'),
(73, 'var4', 'cod_fisc_estruc_recibo'),
(74, 'var4', 'nombre_recibo'),
(75, 'var4', 'apellido_recibo'),
(76, 'var4', 'telefono_estruc_recibo'),
(98, 'var4', 'numero_calle_recibo'),
(421, 'var4', 'mostrar_metodo_recibo'),
(325, 'var2', 'linea_ciudad_fact'),
(326, 'var2', 'linea_nacion_fact'),
(330, 'var2', 'cod_fisc_estruc_fact'),
(331, 'var2', 'nombre_fact'),
(332, 'var2', 'apellido_fact'),
(333, 'var2', 'telefono_estruc_fact'),
(336, 'var2', 'var_tmp_fact'),
(337, 'var2', 'tarifa_no_iva_fact'),
(339, 'var2', 'ultima_reserva_fact'),
(342, 'var2', 'nombre_coste_agn_fact'),
(343, 'var2', 'tot_no_iva_fact'),
(347, 'var2', 'coste_tot_fact'),
(348, 'var2', 'coste_tot_fact_p'),
(349, 'var2', 'iva_fact_p'),
(350, 'var2', 'tot_no_iva_fact_p'),
(351, 'var2', 'coste_agn_no_iva_fact_p'),
(352, 'var2', 'descuento_no_iva_fact_p'),
(353, 'var2', 'tarifa_no_iva_fact_p'),
(355, 'var2', 'numero_calle_fact'),
(405, 'var2', 'codigo_fiscal_fact'),
(406, 'var2', 'num_identificacion_fiscal_fact'),
(407, 'var2', 'calle_fact'),
(408, 'var2', 'num_iva_fact'),
(409, 'var2', 'ens_tarifa_fact'),
(410, 'var2', 'ens_descuento_fact'),
(411, 'var2', 'ens_coste_agn_fact'),
(412, 'var2', 'num_ripeticion_fact'),
(413, 'var2', 'tot_parc_no_iva_fact'),
(414, 'var2', 'tot_parc_iva_fact'),
(415, 'var2', 'tot_parc_no_iva_fact_p'),
(416, 'var2', 'tot_parc_iva_fact_p'),
(417, 'var2', 'max_num_iva_fact'),
(418, 'var2', 'frase_personas_fact'),
(419, 'var2', 'une_descuento_a_tarifa'),
(420, 'var2', 'logo_fact'),
(422, 'var2', 'nombre_coste_tasa_fact'),
(423, 'var2', 'ens_coste_tasa_fact'),
(424, 'var2', 'iva_fact'),
(425, 'var2', 'tot_costes_tasa_fact'),
(426, 'var2', 'ens_coste_como_tasas_fact'),
(427, 'var2', 'ens_subtotal_fact'),
(1, 'var', 'Mr'),
(3, 'var', 'il'),
(4, 'var', 'Il_'),
(5, 'var', 'al'),
(6, 'var', 'e'),
(7, 'var', 'o'),
(13, 'var', 'el'),
(14, 'var', 'El_'),
(15, 'var', 'al3'),
(16, 'var', 'a'),
(17, 'var', 'o3'),
(5, 'opzeml', ';;'),
(6, 'opzeml', ';SI;'),
(5, 'oggetto', 'Disponibilidad'),
(6, 'oggetto', 'Confirmación reserva'),
(3, 'nomefile', 'Factura'),
(5, 'mln_es', 'Estimad[o] Señor[a] [apellido_eml_disp],\nle confirmo la disponibilidad de un apartamento[c num_personas_tot!=\"\"] para [num_personas_tot] personas[/c] para el período desde el [fecha_inicial] hasta el [fecha_final]. El precio para dicho período es de [coste_tot_p] [nombre_divisa] (incluyendo costes asociados).\n\nEn el caso de que desee reservar le ruego me envie su confirmación respondiendo a este correo electrónico.\n\nEstaré a su disposición para cualquier otra información que necesite.\n\nSaludos,\n[nombre_contacto_estructura]\n\n[nombre_estructura]\n[sitio_web_estructura]\n\n\n[texto_citado_email_pedido]\n'),
(6, 'mln_es', 'Estimad[o] Señor[a] [apellido_ec],\nle confirmo que he reservado a su nombre un apartamento[c num_personas_tot!=\"\"] para [num_personas_tot] personas[/c] para el período desde el [fecha_inicial] hasta el [fecha_final]. El precio para dicho período es de [coste_tot_p] [nombre_divisa] (incluyendo costes asociados). Para completar la reserva es necesario pagar por adelantado [fianza_p] [nombre_divisa], puede efectuar este pago siguiendo este enlace:\n\nhttp://recorrido-modelo-confirma-reserva/mdl_confirma_reserva.php?cn=[apel_no_esp_ec]&cp=[codigo_reserva]\n\nSi el enlace no funcionara correctamente puede intentar utilizar este otro:\n\nhttp://recorrido-modelo-confirma-reserva/mdl_confirma_reserva.php\n\ne insertar después:\n\nApellido: [apellido]\nCódigo reserva: [codigo_reserva]\n\nEstaré a su disposición para cualquier otra información que necesite.\n\nSaludos,\n[nombre_contacto_estructura]\n\n[nombre_estructura]\n[sitio_web_estructura]\n'),
(5, 'mln_en', 'Dear Mr[Mr] [apellido_eml_disp],\nI confirm you the availability of an apartment[c people_num_tot!=\"\"] for [people_num_tot] people[/c] in the period from [starting_date] to [ending_date]. The price for this period is [price_tot_p] [currency_name] (including cleaning and utilities).\n\nIf you are interested in reserving the apartment you can contact me by replaying to this email.\n\nPlease let me know if you have any question.\n\nBest regards,\n[structure_contact_name]\n\n[structure_name]\n[structure_website]\n\n\n[enquiry_email_quoted_text]\n'),
(6, 'mln_en', 'Dear Mr[Mr] [apellido_ec],\nI confirm you that I have reserved you an apartment[c people_num_tot!=\"\"] for [people_num_tot] people[/c] in the period from [starting_date] to [ending_date]. The price for this period is [price_tot_p] [currency_name] (including cleaning and utilities). In order to complete the reservation you must send a down-payment of [deposit_p] [currency_name], you can pay it following this link:\n\nhttp://path-confirm-reservation-template/confirm_reservation_tpl.php?cn=[apel_no_esp_ec]&cp=[codigo_reserva]\n\nIf the above link does not work properly for you, try this other one:\n\nhttp://path-confirm-reservation-template/confirm_reservation_tpl.php\n\nand then insert:\n\nSurname: [apellido]\nReservation code: [codigo_reserva]\n\nPlease let me know if you have any other question.\n\nBest regards,\n[structure_contact_name]\n\n[structure_name]\n[structure_website]\n'),
(3, 'impor_vc', '2'),
(7, 'est_txt', 'csv'),
(2, 'dir', '~'),
(3, 'dir', '~'),
(7, 'contrtxt', 'Apellido,Nombre,Apodo,Título,Sexo,Email,Teléfono,Fax,Lingua,Nación de Residencia,Región de Residencia,Ciudad de Residencia,Dirección,Código Postal,Nacionalidad,Fecha de Nacimiento,CIF\n[r][apellido_csv],[nombre_csv],[apodo_csv],[titulo_csv],[sexo],[email_csv],[telefono_csv],[fax_csv],[codice_lingua],[nacion_csv],[region_csv],[ciudad_csv],[direccion_csv],[codigo_postal_csv],[nacionalidad_csv],[fecha_nacimiento_csv],[certificado_indentificacion_fiscal_csv]\n[/r]'),
(2, 'contrrtf', '{\\rtf1\\ansi\\deff1\\adeflang1025[r][r3][/r3] [/r]\n{\\fonttbl{\\f0\\froman\\fprq2\\fcharset0 Times New Roman;}{\\f1\\froman\\fprq2\\fcharset0 Times New Roman;}{\\f2\\fswiss\\fprq2\\fcharset0 Arial;}{\\f3\\fswiss\\fprq2\\fcharset0 Arial;}{\\f4\\fswiss\\fprq2\\fcharset0 Bitstream Vera Sans;}{\\f5\\fswiss\\fprq2\\fcharset0 Tahoma;}{\\f6\\froman\\fprq2\\fcharset0 Garamond;}{\\f7\\froman\\fprq2\\fcharset0 Times New Roman;}{\\f8\\fnil\\fprq2\\fcharset0 Bitstream Vera Sans;}}\n{\\colortbl;\\red0\\green0\\blue0;\\red230\\green230\\blue230;\\red255\\green255\\blue255;\\red204\\green204\\blue204;\\red128\\green128\\blue128;}\n{\\stylesheet{\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\snext1 Normal;}\n{\\s2\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af8\\afs28\\lang255\\ltrch\\dbch\\af8\\langfe255\\hich\\f2\\fs28\\lang1040\\loch\\f2\\fs28\\lang1040\\sbasedon1\\snext3 Heading;}\n{\\s3\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon1\\snext3 Body Text;}\n{\\s4{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon3\\snext4 List;}\n{\\s5\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext5 caption;}\n{\\s6{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext6 Index;}\n{\\s7\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 Heading;}\n{\\s8\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext8 caption;}\n{\\s9{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext9 Index;}\n{\\s10\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading;}\n{\\s11\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext11 WW-caption;}\n{\\s12{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext12 WW-Index;}\n{\\s13\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading1;}\n{\\s14\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext14 WW-caption1;}\n{\\s15{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext15 WW-Index1;}\n{\\s16\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading11;}\n{\\s17\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext17 WW-caption11;}\n{\\s18{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext18 WW-Index11;}\n{\\s19\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading111;}\n{\\s20\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext20 WW-caption111;}\n{\\s21{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext21 WW-Index111;}\n{\\s22\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading1111;}\n{\\s23\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext23 WW-caption1111;}\n{\\s24{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext24 WW-Index1111;}\n{\\s25\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading11111;}\n{\\s26\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext26 WW-caption11111;}\n{\\s27{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext27 WW-Index11111;}\n{\\s28\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading111111;}\n{\\s29\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext29 WW-caption111111;}\n{\\s30{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext30 WW-Index111111;}\n{\\s31\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading1111111;}\n{\\s32\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext32 WW-caption1111111;}\n{\\s33{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext33 WW-Index1111111;}\n{\\s34\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af4\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f4\\fs28\\lang1040\\loch\\f4\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading11111111;}\n{\\s35\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext35 WW-caption11111111;}\n{\\s36{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon1\\snext36 WW-Index11111111;}\n{\\s37\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs20\\lang255\\ai\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs20\\lang1033\\i\\loch\\f1\\fs20\\lang1033\\i\\sbasedon1\\snext37 Dicitura;}\n{\\s38{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af5\\afs16\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f5\\fs16\\lang1033\\loch\\f5\\fs16\\lang1033\\sbasedon1\\snext38 WW-Testo fumetto;}\n{\\s39{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon3\\snext39 Frame contents;}\n{\\s40{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon3\\snext40 Table Contents;}\n{\\s41\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ab\\ltrch\\dbch\\langfe255\\hich\\f1\\fs24\\lang1033\\i\\b\\loch\\f1\\fs24\\lang1033\\i\\b\\sbasedon40\\snext41 Table Heading;}\n{\\s42{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext42 WW-Table Contents;}\n{\\s43\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon42\\snext43 WW-Table Heading;}\n{\\s44{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext44 WW-Table Contents1;}\n{\\s45\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon44\\snext45 WW-Table Heading1;}\n{\\s46{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext46 WW-Table Contents12;}\n{\\s47\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon46\\snext47 WW-Table Heading12;}\n{\\s48{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext48 WW-Table Contents123;}\n{\\s49\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon48\\snext49 WW-Table Heading123;}\n{\\s50{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext50 WW-Table Contents1234;}\n{\\s51\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon50\\snext51 WW-Table Heading1234;}\n{\\s52{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext52 WW-Table Contents12345;}\n{\\s53\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon52\\snext53 WW-Table Heading12345;}\n{\\s54{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext54 WW-Table Contents123456;}\n{\\s55\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon54\\snext55 WW-Table Heading123456;}\n{\\s56{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext56 WW-Table Contents1234567;}\n{\\s57\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon56\\snext57 WW-Table Heading1234567;}\n{\\s58{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext58 WW-Table Contents12345678;}\n{\\s59\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon58\\snext59 WW-Table Heading12345678;}\n{\\s60{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext60 Table Contents;}\n{\\s61\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon60\\snext61 Table Heading;}\n{\\*\\cs63\\cf0\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 WW-Car. predefinito paragrafo;}\n}\n{\\info{\\creatim\\yr2007\\mo9\\dy28\\hr15\\min45}{\\revtim\\yr1601\\mo1\\dy1\\hr0\\min0}{\\printim\\yr1601\\mo1\\dy1\\hr0\\min0}{\\comment StarWriter}{\\vern3000}}\\deftab708\n{\\*\\pgdsctbl\n{\\pgdsc0\\pgdscuse195\\pgwsxn11905\\pghsxn16837\\marglsxn1134\\margrsxn1134\\margtsxn885\\margbsxn1012\\pgdscnxt0 Standard;}}\n{\\*\\pgdscno0}\\paperh16837\\paperw11905\\margl1134\\margr1134\\margt885\\margb1012\\sectd\\sbknone\\pgwsxn11905\\pghsxn16837\\marglsxn1134\\margrsxn1134\\margtsxn885\\margbsxn1012\\ftnbj\\ftnstart1\\ftnrstcont\\ftnnar\\aenddoc\\aftnrstcont\\aftnstart1\\aftnnrlc\n\\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs28\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs28\\lang1040\\b\\loch\\f6\\fs28\\lang1040\\b {\\rtlch \\ltrch\\loch\\f6\\fs28\\lang1040\\i0\\b [tipo_estructura] [nombre_estructura]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [razon_social_estructura]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [direccion_estructura] - [ciudad_estructura]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [codigo_postal_estructura] [nacion_estructura]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 C.I.F. [certificado_identificacion_fiscal_estructura] [cod_fisc_estruc_fact]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [telefono_estruc_fact]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\li5370\\ri0\\lin5370\\rin0\\fi0\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 Cliente [nombre_fact] [apellido_fact] }\n[c calle_fact!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab [calle_fact][numero_calle_fact]}\n[/c][c linea_ciudad_fact!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab [linea_ciudad_fact]}\n[/c][c linea_nacion_fact!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab [linea_nacion_fact]}\n[/c][c codigo_fiscal_fact!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab C.I.F. [codigo_fiscal_fact]}\n[/c][c num_identificacion_fiscal_fact!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab D.N.I. / N.I.F. [num_identificacion_fiscal_fact]}\n[/c]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\brdrb\\brdrs\\brdrw20\\brdrcf1\\brsp20{\\*\\brdrb\\brdlncol1\\brdlnin0\\brdlnout20\\brdlndist0}\\brsp20\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1\\tx3540{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 \\tab }\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 Factura n. [numero_progresivo_documento] del [hoy]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\trowd\\trql\\trleft276\\trrh-119\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\cellx7792\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clvertalb\\cellx9637\n[r4 array=\"iva_porc_vect_fact\"]\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\cbpat3\\ql\\rtlch\\afs12\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs12\\lang1040\\loch\\fs12\\lang1040 \n\\cell\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\ql\\rtlch\\afs24\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\loch\\fs24\\lang1040 \n[r]\n[c ens_tarifa_fact=\"1\"]\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Estancia desde el [fecha_inicial] al [fecha_final][frase_personas_fact]}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [nombre_divisa] [tarifa_no_iva_fact_p]}\n[/c][c ens_descuento_fact=\"1\"]\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Descuento}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [nombre_divisa] [descuento_no_iva_fact_p]}\n[/c]\n[r3][c ens_coste_agn_fact=\"1\"]\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Extra: \\\'93[nombre_coste_agna]\\\'94}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [nombre_divisa] [coste_agn_no_iva_fact_p]}\n[/c][c ens_coste_como_tasas_fact=\"1\"]\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Tasa: \\\'93[nombre_coste_agna]\\\'94}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [nombre_divisa] [tasas_coste_agna_p]}\n[/c][/r3][/r]\n[c ens_subtotal_fact=\"1\"]\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Imponible al [iva_porc_vect_fact(num_iva_fact)]%}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [nombre_divisa] [tot_parc_no_iva_fact_p]}\n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Iva al [iva_porc_vect_fact(num_iva_fact)]%}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [nombre_divisa] [tot_parc_iva_fact_p]}\n[/c]\\cell\\row\\pard \\trowd\\trql\\trleft276\\trrh-119\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat3\\cellx7792\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat3\\clvertalb\\cellx9637\n[/r4]\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs12\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs12\\lang1040\\loch\\f1\\fs12\\lang1040 \n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Total Imponible}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [nombre_divisa] [tot_no_iva_fact_p]}\n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Total Impuestos[c num_iva_fact=\"1\"] al [iva_porc_vect_fact(num_iva_fact)]%[/c]}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [nombre_divisa] [iva_fact_p]}\n[r][r3][c ens_coste_tasa_fact=\"1\"]\n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [nombre_coste_agna]}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [nombre_divisa] [coste_agn_no_iva_fact_p]}\n[/c][/r3][/r]\n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trrh-119\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat3\\cellx7792\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat3\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs12\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs12\\lang1040\\loch\\f1\\fs12\\lang1040 \n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat4\\cellx7792\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat4\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\ql\\rtlch\\afs24\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\loch\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Total Factura}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\qr\\rtlch\\afs24\\lang255\\ab\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\b\\loch\\fs24\\lang1040\\b {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b [nombre_divisa] [coste_tot_fact_p]}\n\\cell\\row\\pard \\pard\\plain \\ltrpar\\s1\\cf0\\ql\\rtlch\\afs24\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\loch\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\brdrb\\brdrs\\brdrw20\\brdrcf1\\brsp20{\\*\\brdrb\\brdlncol1\\brdlnin0\\brdlnout20\\brdlndist0}\\brsp20\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par }');
INSERT INTO `contratti` (`numero`, `tipo`, `testo`) VALUES
(4, 'contrrtf', '{\\rtf1\\ansi\\deff1\\adeflang1025\n{\\fonttbl{\\f0\\froman\\fprq2\\fcharset0 Times New Roman;}{\\f1\\froman\\fprq2\\fcharset0 Times New Roman;}{\\f2\\fswiss\\fprq2\\fcharset0 Arial;}{\\f3\\fswiss\\fprq2\\fcharset0 Arial;}{\\f4\\fswiss\\fprq2\\fcharset0 Bitstream Vera Sans;}{\\f5\\fswiss\\fprq2\\fcharset0 Tahoma;}{\\f6\\froman\\fprq2\\fcharset0 Garamond;}{\\f7\\froman\\fprq2\\fcharset0 Times New Roman;}{\\f8\\fnil\\fprq2\\fcharset0 Bitstream Vera Sans;}}\n{\\colortbl;\\red0\\green0\\blue0;\\red230\\green230\\blue230;\\red255\\green255\\blue255;\\red204\\green204\\blue204;\\red128\\green128\\blue128;}\n{\\stylesheet{\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\snext1 Normal;}\n{\\s2\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af8\\afs28\\lang255\\ltrch\\dbch\\af8\\langfe255\\hich\\f2\\fs28\\lang1040\\loch\\f2\\fs28\\lang1040\\sbasedon1\\snext3 Heading;}\n{\\s3\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon1\\snext3 Body Text;}\n{\\s4{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon3\\snext4 List;}\n{\\s5\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext5 caption;}\n{\\s6{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext6 Index;}\n{\\s7\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 Heading;}\n{\\s8\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext8 caption;}\n{\\s9{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext9 Index;}\n{\\s10\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading;}\n{\\s11\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext11 WW-caption;}\n{\\s12{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext12 WW-Index;}\n{\\s13\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading1;}\n{\\s14\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext14 WW-caption1;}\n{\\s15{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext15 WW-Index1;}\n{\\s16\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading11;}\n{\\s17\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext17 WW-caption11;}\n{\\s18{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext18 WW-Index11;}\n{\\s19\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading111;}\n{\\s20\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext20 WW-caption111;}\n{\\s21{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext21 WW-Index111;}\n{\\s22\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading1111;}\n{\\s23\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext23 WW-caption1111;}\n{\\s24{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext24 WW-Index1111;}\n{\\s25\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading11111;}\n{\\s26\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext26 WW-caption11111;}\n{\\s27{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext27 WW-Index11111;}\n{\\s28\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading111111;}\n{\\s29\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext29 WW-caption111111;}\n{\\s30{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext30 WW-Index111111;}\n{\\s31\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading1111111;}\n{\\s32\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext32 WW-caption1111111;}\n{\\s33{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext33 WW-Index1111111;}\n{\\s34\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af4\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f4\\fs28\\lang1040\\loch\\f4\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading11111111;}\n{\\s35\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext35 WW-caption11111111;}\n{\\s36{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon1\\snext36 WW-Index11111111;}\n{\\s37\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs20\\lang255\\ai\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs20\\lang1033\\i\\loch\\f1\\fs20\\lang1033\\i\\sbasedon1\\snext37 Dicitura;}\n{\\s38{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af5\\afs16\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f5\\fs16\\lang1033\\loch\\f5\\fs16\\lang1033\\sbasedon1\\snext38 WW-Testo fumetto;}\n{\\s39{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon3\\snext39 Frame contents;}\n{\\s40{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon3\\snext40 Table Contents;}\n{\\s41\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ab\\ltrch\\dbch\\langfe255\\hich\\f1\\fs24\\lang1033\\i\\b\\loch\\f1\\fs24\\lang1033\\i\\b\\sbasedon40\\snext41 Table Heading;}\n{\\s42{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext42 WW-Table Contents;}\n{\\s43\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon42\\snext43 WW-Table Heading;}\n{\\s44{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext44 WW-Table Contents1;}\n{\\s45\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon44\\snext45 WW-Table Heading1;}\n{\\s46{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext46 WW-Table Contents12;}\n{\\s47\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon46\\snext47 WW-Table Heading12;}\n{\\s48{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext48 WW-Table Contents123;}\n{\\s49\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon48\\snext49 WW-Table Heading123;}\n{\\s50{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext50 WW-Table Contents1234;}\n{\\s51\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon50\\snext51 WW-Table Heading1234;}\n{\\s52{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext52 WW-Table Contents12345;}\n{\\s53\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon52\\snext53 WW-Table Heading12345;}\n{\\s54{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext54 WW-Table Contents123456;}\n{\\s55\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon54\\snext55 WW-Table Heading123456;}\n{\\s56{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext56 WW-Table Contents1234567;}\n{\\s57\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon56\\snext57 WW-Table Heading1234567;}\n{\\s58{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext58 WW-Table Contents12345678;}\n{\\s59\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon58\\snext59 WW-Table Heading12345678;}\n{\\s60{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext60 Table Contents;}\n{\\s61\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon60\\snext61 Table Heading;}\n{\\*\\cs63\\cf0\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 WW-Car. predefinito paragrafo;}\n}\n{\\info{\\creatim\\yr2007\\mo9\\dy28\\hr15\\min45}{\\revtim\\yr1601\\mo1\\dy1\\hr0\\min0}{\\printim\\yr1601\\mo1\\dy1\\hr0\\min0}{\\comment StarWriter}{\\vern3000}}\\deftab708\n{\\*\\pgdsctbl\n{\\pgdsc0\\pgdscuse195\\pgwsxn11905\\pghsxn16837\\marglsxn1134\\margrsxn1134\\margtsxn885\\margbsxn1012\\pgdscnxt0 Standard;}}\n{\\*\\pgdscno0}\\paperh16837\\paperw11905\\margl1134\\margr1134\\margt885\\margb1012\\sectd\\sbknone\\pgwsxn11905\\pghsxn16837\\marglsxn1134\\margrsxn1134\\margtsxn885\\margbsxn1012\\ftnbj\\ftnstart1\\ftnrstcont\\ftnnar\\aenddoc\\aftnrstcont\\aftnstart1\\aftnnrlc\n[r][c numero_ripetizione_prenotazioni!=\"1\"]\\par \\page [/c]\\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs28\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs28\\lang1040\\b\\loch\\f6\\fs28\\lang1040\\b {\\rtlch \\ltrch\\loch\\f6\\fs28\\lang1040\\i0\\b [tipo_estructura] [nombre_estructura]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [razon_social_estructura]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [direccion_estructura] - [ciudad_estructura]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [codigo_postal_estructura] [nacion_estructura]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 C.I.F. [certificado_identificacion_fiscal_estructura] [cod_fisc_estruc_recibo]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [telefono_estruc_recibo]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\li5370\\ri0\\lin5370\\rin0\\fi0\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [c apellido_recibo!=\"\"]Cliente  [nombre_recibo] [apellido_recibo][/c] }\n[c via!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab [via][numero_calle_recibo]}\n[/c][c linea_ciudad_recibo!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab [linea_ciudad_recibo]}\n[/c][c linea_nacion_recibo!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab [linea_nacion_recibo]}\n[/c][c certificado_identificacion_fiscal!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab C.I.F. [certificado_identificacion_fiscal]}\n[/c][c num_identificacion_fiscal!=\"\"]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab N.I.F. / D.N.I. [num_identificacion_fiscal]}\n[/c]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\brdrb\\brdrs\\brdrw20\\brdrcf1\\brsp20{\\*\\brdrb\\brdlncol1\\brdlnin0\\brdlnout20\\brdlndist0}\\brsp20\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1\\tx3540{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 \\tab }\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 Recibo[c numero_progresivo_documento!=\"\"] n. [numero_progresivo_documento][/c] del [hoy]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\trowd\\trql\\trleft276\\trrh-119\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\cellx7792\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\cbpat3\\ql\\rtlch\\afs12\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs12\\lang1040\\loch\\fs12\\lang1040 \n\\cell\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\ql\\rtlch\\afs24\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\loch\\fs24\\lang1040 \n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [c fecha_inicial!=\"\"]Reserva desde [fecha_inicial] hasta [fecha_final][/c][c num_personas_tot!=\"\"] para [num_personas_tot] personas[/c][c fecha_inicial=\"\"][metodo_ultimo_pago][/c]}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [c mostrar_metodo_recibo=\"1\"][nombre_divisa] [valor_ultimo_pago_p][/c]}\n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trrh-119\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat3\\cellx7792\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat3\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs12\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs12\\lang1040\\loch\\f1\\fs12\\lang1040 \n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat4\\cellx7792\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat4\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\ql\\rtlch\\afs24\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\loch\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Total Pago}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\qr\\rtlch\\afs24\\lang255\\ab\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\b\\loch\\fs24\\lang1040\\b {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b [nombre_divisa] [valor_ultimo_pago_p]}\n\\cell\\row\\pard \\pard\\plain \\ltrpar\\s1\\cf0\\ql\\rtlch\\afs24\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\loch\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\brdrb\\brdrs\\brdrw20\\brdrcf1\\brsp20{\\*\\brdrb\\brdlncol1\\brdlnin0\\brdlnout20\\brdlndist0}\\brsp20\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n[/r]\\par }'),
(1, 'contrhtm', '<B><U><FONT FACE=\"Times\" SIZE=4><P ALIGN=\"CENTER\">EJEMPLO DE CONTRATO PARA HOTELDRUID</P>\n</U></B></FONT><FONT FACE=\"Times\"><P ALIGN=\"JUSTIFY\"></P>\n<P ALIGN=\"JUSTIFY\">&nbsp;</P><P ALIGN=\"JUSTIFY\">\n[El_] señor[a] [nombre] [apellido] nacid[o3] el [fecha_nacimiento] residente en [ciudad] [calle2] n \n[numero_calle] tel [telefono] alqilará un apartamento en hoteldruid\ncon su familia de [num_personas_tot] personas desde [fecha_inicial] hasta [fecha_final].\nEl precio será de [coste_tot_p]. Ha dejado una fianza de [fianza_p].\n</P>\n<P ALIGN=\"JUSTIFY\">\nNign sitio, [hoy].\n</P>\n<P ALIGN=\"JUSTIFY\"></P><P ALIGN=\"JUSTIFY\">\nEl cliente&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\nEl proprietario</P>\n<P ALIGN=\"JUSTIFY\"></P>\n<P ALIGN=\"JUSTIFY\"> \n__________&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;____________</P>\n<P ALIGN=\"JUSTIFY\"></P>\n</FONT>'),
(3, 'contrhtm', '<div class=\"cuadro_factura\" style=\"width: 780px; margin: 10px; border: solid 1px black; padding: 30px; font-size: 12px; page-break-after: always\">\n[r][r3][/r3] [/r]\n\n<div class=\"datos_estructura\">\n[logo_fact]\n<div class=\"nombre_estructura\" style=\"font-size: large;\">[tipo_estructura] [nombre_estructura]</div>\n[razon_social_estructura]<br>\n[direccion_estructura] - [ciudad_estructura]<br>\n[codigo_postal_estructura] [nacion_estructura]<br>\nC.I.F. [certificado_identificacion_fiscal_estructura] [cod_fisc_estruc_fact]<br>\n[telefono_estruc_fact]<br>\n</div>\n\n<div class=\"datos_cliente\" style=\"padding: 18px 0 8px 440px;\">\nCliente [nombre_fact] [apellido_fact]<br>\n[c calle_fact!=\"\"][calle_fact][numero_calle_fact]<br>\n[/c][c linea_ciudad_fact!=\"\"][linea_ciudad_fact]<br>\n[/c][c linea_nacion_fact!=\"\"][linea_nacion_fact]<br>\n[/c][c codigo_fiscal_fact!=\"\"]C.I.F. [codigo_fiscal_fact]<br>\n[/c][c num_identificacion_fiscal_fact!=\"\"]D.N.I. / N.I.F. [num_identificacion_fiscal_fact]<br>\n[/c]\n</div>\n\n<hr style=\"width: 100%; border: 1px solid black;\">\n\n<div class=\"numero_factura\" style=\"padding: 24px 0 8px 0\">\nFactura n. [numero_progresivo_documento] del [hoy]\n</div>\n\n\n[r4 array=\"iva_porc_vect_fact\"]\n<table class=\"lista_factura\" border=\"1\" cellpadding=\"5\" style=\"border: 1px black solid; width: 740px; margin-left: auto; margin-right: 5px; margin-top: 8px; border-collapse: collapse; background-color: #e6e6e6;\">\n[r]\n[c ens_tarifa_fact=\"1\"]<tr><td style=\"border-color: black;\">Estancia desde el [fecha_inicial] al [fecha_final][frase_personas_fact]</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[nombre_divisa] [tarifa_no_iva_fact_p]</td></tr>\n[/c][c ens_descuento_fact=\"1\"]<tr><td style=\"border-color: black;\">Descuento</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[nombre_divisa] [descuento_no_iva_fact_p]</td></tr>\n[/c]\n[r3][c ens_coste_agn_fact=\"1\"]<tr><td style=\"border-color: black;\">Extra: \"[nombre_coste_agna]\"</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[nombre_divisa] [coste_agn_no_iva_fact_p]</td></tr>\n[/c][c ens_coste_como_tasas_fact=\"1\"]<tr><td style=\"border-color: black;\">Tasa: \"[nombre_coste_agna]\"</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[nombre_divisa] [tasas_coste_agna_p]</td></tr>\n[/c][/r3][/r]\n[c ens_subtotal_fact=\"1\"]<tr><td style=\"border-color: black;\">Imponible al [iva_porc_vect_fact(num_iva_fact)]%</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[nombre_divisa] [tot_parc_no_iva_fact_p]</td></tr>\n<tr><td style=\"border-color: black;\">Iva al [iva_porc_vect_fact(num_iva_fact)]%</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[nombre_divisa] [tot_parc_iva_fact_p]</td></tr>\n[/c]\n</table>\n[/r4]\n\n<table class=\"imponible_factura\" border=\"1\" cellpadding=\"5\" style=\"border: 1px black solid; width: 740px; margin-left: auto; margin-right: 5px; margin-top: 8px; border-collapse: collapse; background-color: #e6e6e6;\">\n<tr><td style=\"border-color: black;\">Total Imponible</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[nombre_divisa] [tot_no_iva_fact_p]</td></tr>\n<tr><td style=\"border-color: black;\">Total Impuestos[c num_iva_fact=\"1\"] al [iva_porc_vect_fact(num_iva_fact)]%[/c]</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[nombre_divisa] [iva_fact_p]</td></tr>\n[r][r3][c ens_coste_tasa_fact=\"1\"]\n<tr><td style=\"border-color: black;\">[nombre_coste_agna]</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[nombre_divisa] [coste_agn_no_iva_fact_p]</td></tr>\n[/c][/r3][/r]\n</table>\n\n<table class=\"total_factura\" border=\"1\" cellpadding=\"5\" style=\"border: 1px black solid; width: 740px; margin-left: auto; margin-right: 5px; margin-top: 8px; border-collapse: collapse; background-color: #cccccc;\">\n<tr><td style=\"border-color: black;\">Total Factura</td>\n<td style=\"width: 120px; text-align: right; border-color: black;\">[nombre_divisa] [coste_tot_fact_p]</td></tr>\n</table>\n\n\n<br>\n<hr style=\"width: 100%; border: 1px solid black;\">\n<br>\n\n\n</div>'),
(8, 'contrhtm', NULL),
(9, 'contrhtm', NULL),
(10, 'contrhtm', NULL),
(5, 'contreml', '#!mln!#es'),
(6, 'contreml', '#!mln!#es'),
(1, 'cond7', 'rpt#@?#@?set#%?428#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(2, 'cond7', 'rpt#@?or#$?cognome#%?{}#%?txt#%?&quot;#$?cognome#%?{}#%?txt#%?,#@?set#%?428#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(3, 'cond7', 'rpt#@?#@?set#%?428#%?.=#%?var#%?cognome#%?txt#%?&quot;#%?txt#%?\"\"'),
(4, 'cond7', 'rpt#@?or#$?cognome#%?{}#%?txt#%?&quot;#$?cognome#%?{}#%?txt#%?,#@?set#%?428#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(5, 'cond7', 'rpt#@?#@?set#%?429#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(6, 'cond7', 'rpt#@?or#$?nome#%?{}#%?txt#%?&quot;#$?nome#%?{}#%?txt#%?,#@?set#%?429#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(7, 'cond7', 'rpt#@?#@?set#%?429#%?.=#%?var#%?nome#%?txt#%?&quot;#%?txt#%?\"\"'),
(8, 'cond7', 'rpt#@?or#$?nome#%?{}#%?txt#%?&quot;#$?nome#%?{}#%?txt#%?,#@?set#%?429#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(9, 'cond7', 'rpt#@?#@?set#%?430#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(10, 'cond7', 'rpt#@?or#$?soprannome#%?{}#%?txt#%?&quot;#$?soprannome#%?{}#%?txt#%?,#@?set#%?430#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(11, 'cond7', 'rpt#@?#@?set#%?430#%?.=#%?var#%?soprannome#%?txt#%?&quot;#%?txt#%?\"\"'),
(12, 'cond7', 'rpt#@?or#$?soprannome#%?{}#%?txt#%?&quot;#$?soprannome#%?{}#%?txt#%?,#@?set#%?430#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(13, 'cond7', 'rpt#@?#@?set#%?431#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(14, 'cond7', 'rpt#@?or#$?titolo#%?{}#%?txt#%?&quot;#$?titolo#%?{}#%?txt#%?,#@?set#%?431#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(15, 'cond7', 'rpt#@?#@?set#%?431#%?.=#%?var#%?titolo#%?txt#%?&quot;#%?txt#%?\"\"'),
(16, 'cond7', 'rpt#@?or#$?titolo#%?{}#%?txt#%?&quot;#$?titolo#%?{}#%?txt#%?,#@?set#%?431#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(17, 'cond7', 'rpt#@?#@?set#%?432#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(18, 'cond7', 'rpt#@?or#$?email#%?{}#%?txt#%?&quot;#$?email#%?{}#%?txt#%?,#@?set#%?432#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(19, 'cond7', 'rpt#@?#@?set#%?432#%?.=#%?var#%?email#%?txt#%?&quot;#%?txt#%?\"\"'),
(20, 'cond7', 'rpt#@?or#$?email#%?{}#%?txt#%?&quot;#$?email#%?{}#%?txt#%?,#@?set#%?432#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(21, 'cond7', 'rpt#@?#@?set#%?433#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(22, 'cond7', 'rpt#@?or#$?telefono#%?{}#%?txt#%?&quot;#$?telefono#%?{}#%?txt#%?,#@?set#%?433#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(23, 'cond7', 'rpt#@?#@?set#%?433#%?.=#%?var#%?telefono#%?txt#%?&quot;#%?txt#%?\"\"'),
(24, 'cond7', 'rpt#@?or#$?telefono#%?{}#%?txt#%?&quot;#$?telefono#%?{}#%?txt#%?,#@?set#%?433#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(25, 'cond7', 'rpt#@?#@?set#%?434#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(26, 'cond7', 'rpt#@?or#$?fax#%?{}#%?txt#%?&quot;#$?fax#%?{}#%?txt#%?,#@?set#%?434#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(27, 'cond7', 'rpt#@?#@?set#%?434#%?.=#%?var#%?fax#%?txt#%?&quot;#%?txt#%?\"\"'),
(28, 'cond7', 'rpt#@?or#$?fax#%?{}#%?txt#%?&quot;#$?fax#%?{}#%?txt#%?,#@?set#%?434#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(29, 'cond7', 'rpt#@?#@?set#%?435#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(30, 'cond7', 'rpt#@?or#$?nazione#%?{}#%?txt#%?&quot;#$?nazione#%?{}#%?txt#%?,#@?set#%?435#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(31, 'cond7', 'rpt#@?#@?set#%?435#%?.=#%?var#%?nazione#%?txt#%?&quot;#%?txt#%?\"\"'),
(32, 'cond7', 'rpt#@?or#$?nazione#%?{}#%?txt#%?&quot;#$?nazione#%?{}#%?txt#%?,#@?set#%?435#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(33, 'cond7', 'rpt#@?#@?set#%?436#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(34, 'cond7', 'rpt#@?or#$?regione#%?{}#%?txt#%?&quot;#$?regione#%?{}#%?txt#%?,#@?set#%?436#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(35, 'cond7', 'rpt#@?#@?set#%?436#%?.=#%?var#%?regione#%?txt#%?&quot;#%?txt#%?\"\"'),
(36, 'cond7', 'rpt#@?or#$?regione#%?{}#%?txt#%?&quot;#$?regione#%?{}#%?txt#%?,#@?set#%?436#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(37, 'cond7', 'rpt#@?#@?set#%?437#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(38, 'cond7', 'rpt#@?or#$?citta#%?{}#%?txt#%?&quot;#$?citta#%?{}#%?txt#%?,#@?set#%?437#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(39, 'cond7', 'rpt#@?#@?set#%?437#%?.=#%?var#%?citta#%?txt#%?&quot;#%?txt#%?\"\"'),
(40, 'cond7', 'rpt#@?or#$?citta#%?{}#%?txt#%?&quot;#$?citta#%?{}#%?txt#%?,#@?set#%?437#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(41, 'cond7', 'rpt#@?#@?set#%?443#%?=#%?var#%?via#%?txt#%?#%?txt#%?'),
(42, 'cond7', 'rpt#@?#$?numcivico#%?!=#%?txt#%?#@?set#%?443#%?.=#%?txt#%? #%?txt#%?#%?txt#%?'),
(43, 'cond7', 'rpt#@?#$?numcivico#%?!=#%?txt#%?#@?set#%?443#%?.=#%?var#%?numcivico#%?txt#%?#%?txt#%?'),
(44, 'cond7', 'rpt#@?#@?set#%?438#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(45, 'cond7', 'rpt#@?or#$?tmp_csv#%?{}#%?txt#%?&quot;#$?tmp_csv#%?{}#%?txt#%?,#@?set#%?438#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(46, 'cond7', 'rpt#@?#@?set#%?438#%?.=#%?var#%?tmp_csv#%?txt#%?&quot;#%?txt#%?\"\"'),
(47, 'cond7', 'rpt#@?or#$?tmp_csv#%?{}#%?txt#%?&quot;#$?tmp_csv#%?{}#%?txt#%?,#@?set#%?438#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(48, 'cond7', 'rpt#@?#@?set#%?439#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(49, 'cond7', 'rpt#@?or#$?cap#%?{}#%?txt#%?&quot;#$?cap#%?{}#%?txt#%?,#@?set#%?439#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(50, 'cond7', 'rpt#@?#@?set#%?439#%?.=#%?var#%?cap#%?txt#%?&quot;#%?txt#%?\"\"'),
(51, 'cond7', 'rpt#@?or#$?cap#%?{}#%?txt#%?&quot;#$?cap#%?{}#%?txt#%?,#@?set#%?439#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(52, 'cond7', 'rpt#@?#@?set#%?440#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(53, 'cond7', 'rpt#@?or#$?cittadinanza#%?{}#%?txt#%?&quot;#$?cittadinanza#%?{}#%?txt#%?,#@?set#%?440#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(54, 'cond7', 'rpt#@?#@?set#%?440#%?.=#%?var#%?cittadinanza#%?txt#%?&quot;#%?txt#%?\"\"'),
(55, 'cond7', 'rpt#@?or#$?cittadinanza#%?{}#%?txt#%?&quot;#$?cittadinanza#%?{}#%?txt#%?,#@?set#%?440#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(56, 'cond7', 'rpt#@?#@?set#%?441#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(57, 'cond7', 'rpt#@?#@?date#%?441#%?data_nascita#%?da#%?0#%?g'),
(58, 'cond7', 'rpt#@?#@?set#%?442#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(59, 'cond7', 'rpt#@?or#$?partita_iva#%?{}#%?txt#%?&quot;#$?partita_iva#%?{}#%?txt#%?,#@?set#%?442#%?=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(60, 'cond7', 'rpt#@?#@?set#%?442#%?.=#%?var#%?partita_iva#%?txt#%?&quot;#%?txt#%?\"\"'),
(61, 'cond7', 'rpt#@?or#$?partita_iva#%?{}#%?txt#%?&quot;#$?partita_iva#%?{}#%?txt#%?,#@?set#%?442#%?.=#%?txt#%?\"#%?txt#%?#%?txt#%?'),
(1, 'cond6', 'rpt#@?#@?set#%?305#%?=#%?var#%?cognome#%?txt#%?#%?txt#%?'),
(2, 'cond6', 'rpt#@?#@?set#%?306#%?=#%?var#%?cognome#%?txt#%? #%?txt#%?'),
(1, 'cond5', 'rpt#@?#@?set#%?102#%?=#%?var#%?cognome#%?txt#%?#%?txt#%?'),
(87, 'cond4', 'rpt#@?#$?codice_fiscale_struttura#%?!=#%?txt#%?#@?set#%?73#%?=#%?txt#%?- N.I.F. #%?txt#%?#%?txt#%?'),
(88, 'cond4', 'rpt#@?#$?codice_fiscale_struttura#%?!=#%?txt#%?#@?set#%?73#%?.=#%?var#%?codice_fiscale_struttura#%?txt#%?#%?txt#%?'),
(89, 'cond4', 'rpt#@?#@?set#%?76#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(92, 'cond4', 'rpt#@?#$?telefono_struttura#%?!=#%?txt#%?#@?set#%?76#%?=#%?txt#%?Tel. #%?txt#%?#%?txt#%?'),
(94, 'cond4', 'rpt#@?#$?telefono_struttura#%?!=#%?txt#%?#@?set#%?76#%?.=#%?var#%?telefono_struttura#%?txt#%?#%?txt#%?'),
(97, 'cond4', 'rpt#@?and#$?telefono_struttura#%?!=#%?txt#%?#$?sito_web_struttura#%?!=#%?txt#%?#@?set#%?76#%?.=#%?txt#%? - #%?txt#%?#%?txt#%?'),
(98, 'cond4', 'rpt#@?#$?sito_web_struttura#%?!=#%?txt#%?#@?set#%?76#%?.=#%?var#%?sito_web_struttura#%?txt#%?#%?txt#%?'),
(99, 'cond4', 'rpt#@?#@?set#%?74#%?=#%?var#%?nome#%?txt#%?#%?txt#%?'),
(100, 'cond4', 'rpt#@?#@?set#%?75#%?=#%?var#%?cognome#%?txt#%?#%?txt#%?'),
(101, 'cond4', 'rpt#@?#@?set#%?98#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(102, 'cond4', 'rpt#@?#$?numcivico#%?!=#%?txt#%?#@?set#%?98#%?=#%?txt#%?, #%?txt#%?#%?txt#%?'),
(103, 'cond4', 'rpt#@?#$?numcivico#%?!=#%?txt#%?#@?set#%?98#%?.=#%?var#%?numcivico#%?txt#%?#%?txt#%?'),
(104, 'cond4', 'rpt#@?#@?set#%?68#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(105, 'cond4', 'rpt#@?#$?citta#%?!=#%?txt#%?#@?set#%?68#%?.=#%?var#%?citta#%?txt#%?#%?txt#%?'),
(107, 'cond4', 'rpt#@?#$?regione#%?!=#%?txt#%?#@?set#%?68#%?.=#%?txt#%? (#%?txt#%?#%?txt#%?'),
(108, 'cond4', 'rpt#@?#$?regione#%?!=#%?txt#%?#@?set#%?68#%?.=#%?var#%?regione#%?txt#%?#%?txt#%?'),
(109, 'cond4', 'rpt#@?#$?regione#%?!=#%?txt#%?#@?set#%?68#%?.=#%?txt#%?)#%?txt#%?#%?txt#%?'),
(110, 'cond4', 'rpt#@?#@?set#%?69#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(111, 'cond4', 'rpt#@?#$?cap#%?!=#%?txt#%?#@?set#%?69#%?.=#%?var#%?cap#%?txt#%?#%?txt#%?'),
(112, 'cond4', 'rpt#@?and#$?cap#%?!=#%?txt#%?#$?nazione#%?!=#%?txt#%?#@?set#%?69#%?.=#%?txt#%? #%?txt#%?#%?txt#%?'),
(113, 'cond4', 'rpt#@?#$?nazione#%?!=#%?txt#%?#@?set#%?69#%?.=#%?var#%?nazione#%?txt#%?#%?txt#%?'),
(114, 'cond4', 'rpt#@?#@?set#%?421#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(115, 'cond4', 'rpt#@?and#$?data_inizio#%?=#%?txt#%?#$?metodo_ultimo_pagamento#%?!=#%?txt#%?#@?set#%?421#%?=#%?txt#%?1#%?txt#%?#%?txt#%?'),
(25, 'cond2', 'rpt#@?#@?set#%?409#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(26, 'cond2', 'rpt#@?and#$?iva_porc_vect_fact(num_iva_fact)#%?=#%?var#%?percentuale_tasse_tariffa#$?num_ripeticion_fact#%?>#%?txt#%?1#@?set#%?409#%?=#%?txt#%?1#%?txt#%?#%?txt#%?'),
(27, 'cond2', 'rpt#@?#@?set#%?410#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(30, 'cond2', 'rpt#@?and#$?ens_tarifa_fact#%?=#%?txt#%?1#$?sconto#%?!=#%?txt#%?0#@?set#%?410#%?=#%?txt#%?1#%?txt#%?#%?txt#%?'),
(31, 'cond2', 'rpt#@?#@?set#%?411#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(32, 'cond2', 'rpt#@?#@?set#%?426#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(36, 'cond2', 'rpt#@?#@?set#%?427#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(38, 'cond2', 'rpt#@?#@?set#%?423#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(39, 'cond2', 'rpt#@?#$?nome_costo_agg#%?=#%?var#%?nombre_coste_tasa_fact#@?set#%?423#%?=#%?txt#%?1#%?txt#%?#%?txt#%?'),
(40, 'cond2', 'rpt#@?and#$?iva_porc_vect_fact(num_iva_fact)#%?=#%?var#%?percentuale_tasse_costo_agg#$?valore_costo_agg#%?!=#%?txt#%?0#$?num_ripeticion_fact#%?>#%?txt#%?1#$?ens_coste_tasa_fact#%?!=#%?txt#%?1#@?set#%?411#%?=#%?txt#%?1#%?txt#%?#%?txt#%?'),
(42, 'cond2', 'rpt#@?#@?set#%?336#%?=#%?var#%?percentuale_tasse_tariffa#%?txt#%?#%?txt#%?'),
(43, 'cond2', 'rpt#@?#$?var_tmp_fact#%?=#%?txt#%?#@?set#%?336#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(44, 'cond2', 'rpt#@?#$?iva_porc_exist_fact(var_tmp_fact)#%?=#%?txt#%?1#@?break#%?cont'),
(46, 'cond2', 'rpt#@?#@?oper#%?408#%?num_iva_fact#%?+#%?txt#%?1#%?'),
(48, 'cond2', 'rpt#@?#@?set#%?417#%?=#%?var#%?num_iva_fact#%?txt#%?#%?txt#%?'),
(52, 'cond2', 'rpt#@?#@?set#%?a1#%?=#%?var#%?var_tmp_fact#%?txt#%?#%?txt#%?'),
(60, 'cond2', 'rpt#@?#@?set#%?a2#%?=#%?txt#%?1#%?txt#%?#%?txt#%?'),
(61, 'cond2', 'rpt#@?#@?cont'),
(65, 'cond2', 'rpt#@?or#$?valore_costo_agg#%?=#%?txt#%?0#$?valore_costo_agg#%?=#%?txt#%?#$?ens_coste_tasa_fact#%?=#%?txt#%?1#@?break#%?cont'),
(75, 'cond2', 'rpt#@?#@?set#%?336#%?=#%?var#%?percentuale_tasse_costo_agg#%?txt#%?#%?txt#%?'),
(76, 'cond2', 'rpt#@?#$?var_tmp_fact#%?=#%?txt#%?#@?set#%?336#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(81, 'cond2', 'rpt#@?#$?iva_porc_exist_fact(var_tmp_fact)#%?=#%?txt#%?1#@?break#%?cont'),
(83, 'cond2', 'rpt#@?#@?oper#%?408#%?num_iva_fact#%?+#%?txt#%?1#%?'),
(84, 'cond2', 'rpt#@?#@?set#%?417#%?=#%?var#%?num_iva_fact#%?txt#%?#%?txt#%?'),
(86, 'cond2', 'rpt#@?#@?set#%?a1#%?=#%?var#%?var_tmp_fact#%?txt#%?#%?txt#%?'),
(87, 'cond2', 'rpt#@?#@?set#%?a2#%?=#%?txt#%?1#%?txt#%?#%?txt#%?'),
(88, 'cond2', 'rpt#@?#@?cont'),
(89, 'cond2', 'rpt#@?#@?oper#%?351#%?valore_costo_agg_senza_tasse#%?+#%?txt#%?0#%?'),
(90, 'cond2', 'rpt#@?#$?ens_coste_tasa_fact#%?=#%?txt#%?1#@?oper#%?351#%?valore_costo_agg#%?+#%?txt#%?0#%?'),
(91, 'cond2', 'rpt#@?#@?set#%?342#%?=#%?var#%?nome_costo_agg#%?txt#%?#%?txt#%?'),
(95, 'cond2', 'rpt#@?#$?ens_coste_agn_fact#%?=#%?txt#%?1#@?oper#%?343#%?tot_no_iva_fact#%?+#%?var#%?valore_costo_agg_senza_tasse#%?'),
(100, 'cond2', 'rpt#@?#$?ens_coste_agn_fact#%?=#%?txt#%?1#@?oper#%?413#%?tot_parc_no_iva_fact#%?+#%?var#%?valore_costo_agg_senza_tasse#%?'),
(103, 'cond2', 'rpt#@?#$?ens_coste_agn_fact#%?=#%?txt#%?1#@?oper#%?414#%?tot_parc_iva_fact#%?+#%?var#%?tasse_costo_agg#%?'),
(105, 'cond2', 'rpt#@?#$?ens_coste_tasa_fact#%?=#%?txt#%?1#@?oper#%?425#%?tot_costes_tasa_fact#%?+#%?var#%?valore_costo_agg#%?'),
(106, 'cond2', 'rpt#@?#@?oper#%?350#%?tot_no_iva_fact#%?+#%?txt#%?0#%?'),
(108, 'cond2', 'rpt#@?#@?oper#%?415#%?tot_parc_no_iva_fact#%?+#%?txt#%?0#%?'),
(110, 'cond2', 'rpt#@?#@?oper#%?416#%?tot_parc_iva_fact#%?+#%?txt#%?0#%?'),
(111, 'cond2', 'rpt#@?#@?oper#%?424#%?coste_tot_fact#%?-#%?var#%?tot_no_iva_fact#%?'),
(112, 'cond2', 'rpt#@?#@?oper#%?424#%?iva_fact#%?-#%?var#%?tot_costes_tasa_fact#%?'),
(113, 'cond2', 'rpt#@?#@?oper#%?349#%?iva_fact#%?+#%?txt#%?0#%?'),
(114, 'cond2', 'rpt#@?or#$?ens_coste_agn_fact#%?!=#%?txt#%?1#$?percentuale_tasse_costo_agg#%?!=#%?txt#%?-1#@?break#%?cont'),
(115, 'cond2', 'rpt#@?#@?set#%?426#%?=#%?txt#%?1#%?txt#%?#%?txt#%?'),
(116, 'cond2', 'rpt#@?#@?set#%?411#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(117, 'cond2', 'rpt#@?#@?cont'),
(118, 'cond2', 'rpt#@?and#$?max_num_iva_fact#%?!=#%?txt#%?1#$?ens_coste_agn_fact#%?=#%?txt#%?1#@?set#%?427#%?=#%?txt#%?1#%?txt#%?#%?txt#%?'),
(119, 'cond2', 'rpt#@?#$?ultima_reserva_fact#%?=#%?var#%?numero_prenotazione#@?break#%?'),
(120, 'cond2', 'rpt#@?#@?set#%?339#%?=#%?var#%?numero_prenotazione#%?txt#%?#%?txt#%?'),
(121, 'cond2', 'rpt#@?#$?ens_tarifa_fact#%?=#%?txt#%?1#@?oper#%?343#%?tot_no_iva_fact#%?+#%?var#%?costo_tariffa_senza_tasse#%?'),
(122, 'cond2', 'rpt#@?#$?ens_tarifa_fact#%?=#%?txt#%?1#@?oper#%?413#%?tot_parc_no_iva_fact#%?+#%?var#%?costo_tariffa_senza_tasse#%?'),
(123, 'cond2', 'rpt#@?#$?ens_tarifa_fact#%?=#%?txt#%?1#@?oper#%?414#%?tot_parc_iva_fact#%?+#%?var#%?tasse_tariffa#%?'),
(124, 'cond2', 'rpt#@?#$?ens_descuento_fact#%?=#%?txt#%?1#@?oper#%?343#%?tot_no_iva_fact#%?-#%?var#%?sconto_senza_tasse#%?'),
(125, 'cond2', 'rpt#@?#$?ens_descuento_fact#%?=#%?txt#%?1#@?oper#%?413#%?tot_parc_no_iva_fact#%?-#%?var#%?sconto_senza_tasse#%?'),
(126, 'cond2', 'rpt#@?#$?ens_descuento_fact#%?=#%?txt#%?1#@?oper#%?414#%?tot_parc_iva_fact#%?-#%?var#%?tasse_sconto#%?'),
(128, 'cond2', 'rpt#@?#@?oper#%?353#%?costo_tariffa_senza_tasse#%?+#%?txt#%?0#%?'),
(129, 'cond2', 'rpt#@?#@?oper#%?352#%?sconto_senza_tasse#%?*#%?txt#%?-1#%?'),
(130, 'cond2', 'rpt#@?#@?oper#%?350#%?tot_no_iva_fact#%?+#%?txt#%?0#%?'),
(131, 'cond2', 'rpt#@?#@?oper#%?415#%?tot_parc_no_iva_fact#%?+#%?txt#%?0#%?'),
(132, 'cond2', 'rpt#@?#@?oper#%?416#%?tot_parc_iva_fact#%?+#%?txt#%?0#%?'),
(133, 'cond2', 'rpt#@?#@?oper#%?424#%?coste_tot_fact#%?-#%?var#%?tot_no_iva_fact#%?'),
(134, 'cond2', 'rpt#@?#@?oper#%?424#%?iva_fact#%?-#%?var#%?tot_costes_tasa_fact#%?'),
(135, 'cond2', 'rpt#@?#@?oper#%?349#%?iva_fact#%?+#%?txt#%?0#%?'),
(136, 'cond2', 'rpt#@?#$?une_descuento_a_tarifa#%?=#%?txt#%?SI#@?oper#%?353#%?costo_tariffa_senza_tasse#%?-#%?var#%?sconto_senza_tasse#%?'),
(137, 'cond2', 'rpt#@?#$?une_descuento_a_tarifa#%?=#%?txt#%?SI#@?set#%?410#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(138, 'cond2', 'rpt#@?#@?set#%?418#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(139, 'cond2', 'rpt#@?and#$?num_persone_tot#%?!=#%?txt#%?#$?num_persone_tot#%?!=#%?txt#%?0#@?set#%?418#%?=#%?txt#%? para x personas#%?txt#%?x#%?var#%?num_persone_tot'),
(140, 'cond2', 'rpt#@?#$?num_ripeticion_fact#%?>#%?txt#%?1#@?break#%?'),
(141, 'cond2', 'rpt#@?#@?oper#%?347#%?coste_tot_fact#%?+#%?var#%?costo_tot#%?'),
(142, 'cond2', 'rpt#@?#@?oper#%?348#%?coste_tot_fact#%?+#%?txt#%?0#%?'),
(143, 'cond2', 'rpt#@?#$?codice_fiscale_struttura#%?!=#%?txt#%?#@?set#%?330#%?=#%?txt#%?- N.I.F. #%?txt#%?#%?txt#%?'),
(144, 'cond2', 'rpt#@?#$?codice_fiscale_struttura#%?!=#%?txt#%?#@?set#%?330#%?.=#%?var#%?codice_fiscale_struttura#%?txt#%?#%?txt#%?'),
(145, 'cond2', 'rpt#@?#$?telefono_struttura#%?!=#%?txt#%?#@?set#%?333#%?=#%?txt#%?Tel. #%?txt#%?#%?txt#%?'),
(146, 'cond2', 'rpt#@?#$?telefono_struttura#%?!=#%?txt#%?#@?set#%?333#%?.=#%?var#%?telefono_struttura#%?txt#%?#%?txt#%?'),
(147, 'cond2', 'inr#@?#@?set#%?339#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(148, 'cond2', 'inr#@?#@?oper#%?412#%?num_ripeticion_fact#%?+#%?txt#%?1#%?'),
(149, 'cond2', 'ind#@?#@?set#%?419#%?=#%?txt#%?SI#%?txt#%?#%?txt#%?'),
(150, 'cond2', 'ind#@?#@?set#%?422#%?=#%?txt#%?nombre del coste a cosiderar como tasa#%?txt#%?#%?txt#%?'),
(151, 'cond2', 'ind#@?#@?set#%?347#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(152, 'cond2', 'rpt#@?and#$?telefono_struttura#%?!=#%?txt#%?#$?sito_web_struttura#%?!=#%?txt#%?#@?set#%?333#%?.=#%?txt#%? - #%?txt#%?#%?txt#%?'),
(153, 'cond2', 'rpt#@?#$?sito_web_struttura#%?!=#%?txt#%?#@?set#%?333#%?.=#%?var#%?sito_web_struttura#%?txt#%?#%?txt#%?'),
(154, 'cond2', 'ind#@?#@?set#%?343#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(155, 'cond2', 'rpt#@?#@?set#%?331#%?=#%?var#%?nome#%?txt#%?#%?txt#%?'),
(156, 'cond2', 'rpt#@?#@?set#%?332#%?=#%?var#%?cognome#%?txt#%?#%?txt#%?'),
(157, 'cond2', 'rpt#@?#@?set#%?355#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(158, 'cond2', 'rpt#@?#$?numcivico#%?!=#%?txt#%?#@?set#%?355#%?=#%?txt#%?, #%?txt#%?#%?txt#%?'),
(159, 'cond2', 'rpt#@?#$?numcivico#%?!=#%?txt#%?#@?set#%?355#%?.=#%?var#%?numcivico#%?txt#%?#%?txt#%?'),
(160, 'cond2', 'rpt#@?#@?set#%?325#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(161, 'cond2', 'rpt#@?#$?citta#%?!=#%?txt#%?#@?set#%?325#%?.=#%?var#%?citta#%?txt#%?#%?txt#%?'),
(162, 'cond2', 'rpt#@?#$?regione#%?!=#%?txt#%?#@?set#%?325#%?.=#%?txt#%? (#%?txt#%?#%?txt#%?'),
(163, 'cond2', 'rpt#@?#$?regione#%?!=#%?txt#%?#@?set#%?325#%?.=#%?var#%?regione#%?txt#%?#%?txt#%?'),
(164, 'cond2', 'rpt#@?#$?regione#%?!=#%?txt#%?#@?set#%?325#%?.=#%?txt#%?)#%?txt#%?#%?txt#%?'),
(165, 'cond2', 'rpt#@?#@?set#%?326#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(166, 'cond2', 'rpt#@?#$?cap#%?!=#%?txt#%?#@?set#%?326#%?.=#%?var#%?cap#%?txt#%?#%?txt#%?'),
(167, 'cond2', 'rpt#@?and#$?cap#%?!=#%?txt#%?#$?nazione#%?!=#%?txt#%?#@?set#%?326#%?.=#%?txt#%? #%?txt#%?#%?txt#%?'),
(168, 'cond2', 'rpt#@?#$?nazione#%?!=#%?txt#%?#@?set#%?326#%?.=#%?var#%?nazione#%?txt#%?#%?txt#%?'),
(169, 'cond2', 'rpt#@?#@?set#%?405#%?=#%?var#%?partita_iva#%?txt#%?#%?txt#%?'),
(170, 'cond2', 'rpt#@?#@?set#%?406#%?=#%?var#%?codice_fiscale#%?txt#%?#%?txt#%?'),
(171, 'cond2', 'rpt#@?#@?set#%?407#%?=#%?var#%?via#%?txt#%?#%?txt#%?'),
(172, 'cond2', 'ind#@?#@?set#%?408#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(173, 'cond2', 'ind#@?#@?set#%?412#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(174, 'cond2', 'inr#@?#@?set#%?413#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(175, 'cond2', 'inr#@?#@?set#%?414#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(176, 'cond2', 'rpt#@?#$?logo_struttura#%?!=#%?txt#%?#@?set#%?420#%?=#%?txt#%?<img src=\"#%?txt#%?#%?txt#%?'),
(177, 'cond2', 'rpt#@?#$?logo_struttura#%?!=#%?txt#%?#@?set#%?420#%?.=#%?var#%?logo_struttura#%?txt#%?#%?txt#%?'),
(178, 'cond2', 'rpt#@?#$?logo_struttura#%?!=#%?txt#%?#@?set#%?420#%?.=#%?txt#%?\" alt=\"Logo\" style=\"float: right;\">#%?txt#%?#%?txt#%?'),
(179, 'cond2', 'inr#@?#@?set#%?425#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(1, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?1#%?=#%?txt#%?s#%?txt#%?#%?txt#%?'),
(3, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?3#%?=#%?txt#%?il#%?txt#%?#%?txt#%?'),
(4, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?3#%?=#%?txt#%?la#%?txt#%?#%?txt#%?'),
(5, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?4#%?=#%?txt#%?Il#%?txt#%?#%?txt#%?'),
(6, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?4#%?=#%?txt#%?La#%?txt#%?#%?txt#%?'),
(7, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?5#%?=#%?txt#%?al#%?txt#%?#%?txt#%?'),
(8, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?5#%?=#%?txt#%?alla#%?txt#%?#%?txt#%?'),
(9, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?6#%?=#%?txt#%?e#%?txt#%?#%?txt#%?'),
(10, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?6#%?=#%?txt#%?a#%?txt#%?#%?txt#%?'),
(11, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?7#%?=#%?txt#%?o#%?txt#%?#%?txt#%?'),
(12, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?7#%?=#%?txt#%?a#%?txt#%?#%?txt#%?'),
(23, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?13#%?=#%?txt#%?el#%?txt#%?#%?txt#%?'),
(24, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?13#%?=#%?txt#%?la#%?txt#%?#%?txt#%?'),
(25, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?14#%?=#%?txt#%?El#%?txt#%?#%?txt#%?'),
(26, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?14#%?=#%?txt#%?La#%?txt#%?#%?txt#%?'),
(27, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?15#%?=#%?txt#%?al#%?txt#%?#%?txt#%?'),
(28, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?15#%?=#%?txt#%?a la#%?txt#%?#%?txt#%?'),
(29, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?16#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(30, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?16#%?=#%?txt#%?a#%?txt#%?#%?txt#%?'),
(31, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?17#%?=#%?txt#%?o#%?txt#%?#%?txt#%?'),
(32, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?17#%?=#%?txt#%?a#%?txt#%?#%?txt#%?'),
(2, 'compress', 'gz');
INSERT INTO `contratti` (`numero`, `tipo`, `testo`) VALUES
(3, 'compress', 'gz'),
(5, 'allegato', '0'),
(6, 'allegato', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costi2017`
--

CREATE TABLE `costi2017` (
  `idcosti` int(11) DEFAULT NULL,
  `nome_costo` text,
  `val_costo` double DEFAULT NULL,
  `tipo_costo` text,
  `nome_cassa` varchar(70) DEFAULT NULL,
  `persona_costo` text,
  `provenienza_costo` text,
  `metodo_pagamento` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `costi2017`
--

INSERT INTO `costi2017` (`idcosti`, `nome_costo`, `val_costo`, `tipo_costo`, `nome_cassa`, `persona_costo`, `provenienza_costo`, `metodo_pagamento`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 'venta de torta casera', 100, 'e', '', '', '', '', '2017-07-24 17:38:57', 'localhost', 1),
(2, 'rotura de muro de cochera.', 4000, 's', '', 'juan pablo', '', '', '2017-07-24 17:39:27', 'localhost', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costiprenota2017`
--

CREATE TABLE `costiprenota2017` (
  `idcostiprenota` int(11) NOT NULL,
  `idprenota` int(11) DEFAULT NULL,
  `tipo` varchar(2) DEFAULT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `valore` double DEFAULT NULL,
  `valore_perc` double DEFAULT NULL,
  `arrotonda` float DEFAULT NULL,
  `tasseperc` float DEFAULT NULL,
  `associasett` varchar(1) DEFAULT NULL,
  `settimane` text,
  `moltiplica` text,
  `categoria` text,
  `letto` varchar(1) DEFAULT NULL,
  `numlimite` int(11) DEFAULT NULL,
  `idntariffe` int(11) DEFAULT NULL,
  `variazione` varchar(10) DEFAULT NULL,
  `varmoltiplica` text,
  `varnumsett` varchar(20) DEFAULT NULL,
  `varperiodipermessi` text,
  `varbeniinv` text,
  `varappincompatibili` text,
  `vartariffeassociate` varchar(10) DEFAULT NULL,
  `vartariffeincomp` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `costiprenota2017`
--

INSERT INTO `costiprenota2017` (`idcostiprenota`, `idprenota`, `tipo`, `nome`, `valore`, `valore_perc`, `arrotonda`, `tasseperc`, `associasett`, `settimane`, `moltiplica`, `categoria`, `letto`, `numlimite`, `idntariffe`, `variazione`, `varmoltiplica`, `varnumsett`, `varperiodipermessi`, `varbeniinv`, `varappincompatibili`, `vartariffeassociate`, `vartariffeincomp`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descrizioni`
--

CREATE TABLE `descrizioni` (
  `nome` text NOT NULL,
  `tipo` varchar(16) DEFAULT NULL,
  `lingua` varchar(3) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `testo` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentiid`
--

CREATE TABLE `documentiid` (
  `iddocumentiid` int(11) NOT NULL,
  `nome_documentoid` varchar(70) DEFAULT NULL,
  `codice_documentoid` varchar(50) DEFAULT NULL,
  `codice2_documentoid` varchar(50) DEFAULT NULL,
  `codice3_documentoid` varchar(50) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gruppi`
--

CREATE TABLE `gruppi` (
  `idgruppi` int(11) NOT NULL,
  `nome_gruppo` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interconnessioni`
--

CREATE TABLE `interconnessioni` (
  `idlocale` int(11) DEFAULT NULL,
  `idremoto1` text,
  `idremoto2` text,
  `tipoid` varchar(12) DEFAULT NULL,
  `nome_ic` varchar(24) DEFAULT NULL,
  `anno` int(11) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `magazzini`
--

CREATE TABLE `magazzini` (
  `idmagazzini` int(11) NOT NULL,
  `nome_magazzino` varchar(70) DEFAULT NULL,
  `codice_magazzino` varchar(50) DEFAULT NULL,
  `descrizione_magazzino` text,
  `numpiano` text,
  `numcasa` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `magazzini`
--

INSERT INTO `magazzini` (`idmagazzini`, `nome_magazzino`, `codice_magazzino`, `descrizione_magazzino`, `numpiano`, `numcasa`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(1, 'Almacen Herramientas de Hostería', '', 'Almacen de herramientas esenciales la hostería La Porteña', NULL, NULL, '2017-07-24 16:23:32', 'localhost', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messaggi`
--

CREATE TABLE `messaggi` (
  `idmessaggi` int(11) NOT NULL,
  `tipo_messaggio` varchar(8) DEFAULT NULL,
  `stato` varchar(8) DEFAULT NULL,
  `idutenti` text,
  `idutenti_visto` text,
  `datavisione` datetime DEFAULT NULL,
  `mittente` text,
  `testo` text,
  `dati_messaggio1` text,
  `dati_messaggio2` text,
  `dati_messaggio3` text,
  `dati_messaggio4` text,
  `dati_messaggio5` text,
  `dati_messaggio6` text,
  `dati_messaggio7` text,
  `dati_messaggio8` text,
  `dati_messaggio9` text,
  `dati_messaggio10` text,
  `dati_messaggio11` text,
  `dati_messaggio12` text,
  `dati_messaggio13` text,
  `dati_messaggio14` text,
  `dati_messaggio15` text,
  `dati_messaggio16` text,
  `dati_messaggio17` text,
  `dati_messaggio18` text,
  `dati_messaggio19` text,
  `dati_messaggio20` text,
  `datainserimento` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `messaggi`
--

INSERT INTO `messaggi` (`idmessaggi`, `tipo_messaggio`, `stato`, `idutenti`, `idutenti_visto`, `datavisione`, `mittente`, `testo`, `dati_messaggio1`, `dati_messaggio2`, `dati_messaggio3`, `dati_messaggio4`, `dati_messaggio5`, `dati_messaggio6`, `dati_messaggio7`, `dati_messaggio8`, `dati_messaggio9`, `dati_messaggio10`, `dati_messaggio11`, `dati_messaggio12`, `dati_messaggio13`, `dati_messaggio14`, `dati_messaggio15`, `dati_messaggio16`, `dati_messaggio17`, `dati_messaggio18`, `dati_messaggio19`, `dati_messaggio20`, `datainserimento`) VALUES
(1, 'sistema', NULL, ',1,', ',1,', '2017-07-24 15:29:07', '1', '<div style=\"max-width: 600px; line-height: 1.1;\"><h4>Bienvenido a HotelDruid!</h4><br>Estos son algunos simples pasos a seguir para configurar las funciones de base de HotelDruid:<br>\n<ul style=\"line-height: 1.2;\">\n<li>Insertar las informaciones sobre las habitaciones desde la\n <em><b><a href=\"./visualizza_tabelle.php?tipo_tabella=appartamenti&amp;<sessione>\">tabla habitaciones</a></b></em>, \n utilizando el botón que está debajo de ella. Las habitaciones pueden ser creadas, borradas y cambiadas de nombre. \n Se aconseja insertar por lo menos la capacidad máxima para cada habitación.<br><br></li>\n<li>Insertar el número de tarifas, un nombre para cada una de ellas y los precios correspondientes desde la \n <em><b><a href=\"./creaprezzi.php?<sessione>\">página de inserción de precios</a></b></em>.\n Considerar que las tarifas de HotelDruid actuan también como tipologías de habitaciones (mirar el paso siguiente).<br><br></li>\n<li>Asociar una lista de habitaciones para cada tarifa, insertando una regla de asignación 2 para cada una de ellas, desde la \n <em><b><a href=\"./crearegole.php?<sessione>#regola2\">página de inserción de reglas</a></b></em>.\n Cada habitación puede estar asociada a más tarifas.<br><br></li>\n<li>Si este servidor web es público se puede habilitar el login y crear nuevos usuarios desde la\n <em><b><a href=\"./gestione_utenti.php?<sessione>\">página de gestión de usuarios</a></b></em>.<br><br></li>\n<li>Ir a la página\n \"<em><b><a href=\"./personalizza.php?<sessione>\">configurar y personalizar</a></b></em>\"\n para cambiar el nombre de la divisa, habilitar el registro de entradas, insertar los métodos de pago, y configurar muchas otras opciones.<br><br></li>\n</ul></div>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-24 15:29:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nazioni`
--

CREATE TABLE `nazioni` (
  `idnazioni` int(11) NOT NULL,
  `nome_nazione` varchar(70) DEFAULT NULL,
  `codice_nazione` varchar(50) DEFAULT NULL,
  `codice2_nazione` varchar(50) DEFAULT NULL,
  `codice3_nazione` varchar(50) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nazioni`
--

INSERT INTO `nazioni` (`idnazioni`, `nome_nazione`, `codice_nazione`, `codice2_nazione`, `codice3_nazione`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(1, 'Austria', '', 'AT', '', NULL, NULL, NULL),
(2, 'Bélgica', '', 'BE', '', NULL, NULL, NULL),
(3, 'República Checa', '', 'CZ', '', NULL, NULL, NULL),
(4, 'Chipre', '', 'CY', '', NULL, NULL, NULL),
(5, 'Dinamarca', '', 'DK', '', NULL, NULL, NULL),
(6, 'Estonia', '', 'EE', '', NULL, NULL, NULL),
(7, 'Finlandia', '', 'FI', '', NULL, NULL, NULL),
(8, 'Francia', '', 'FR', '', NULL, NULL, NULL),
(9, 'Alemania', '', 'DE', '', NULL, NULL, NULL),
(10, 'Grecia', '', 'GR', '', NULL, NULL, NULL),
(11, 'Irlanda', '', 'IE', '', NULL, NULL, NULL),
(12, 'Letonia', '', 'LV', '', NULL, NULL, NULL),
(13, 'Lituania', '', 'LT', '', NULL, NULL, NULL),
(14, 'Luxemburgo', '', 'LU', '', NULL, NULL, NULL),
(15, 'Malta', '', 'MT', '', NULL, NULL, NULL),
(16, 'Países Bajos', '', 'NL', '', NULL, NULL, NULL),
(17, 'Polonia', '', 'PL', '', NULL, NULL, NULL),
(18, 'Portugal', '', 'PT', '', NULL, NULL, NULL),
(19, 'Reino Unido', '', 'GB', '', NULL, NULL, NULL),
(20, 'Eslovaquia', '', 'SK', '', NULL, NULL, NULL),
(21, 'Eslovenia', '', 'SI', '', NULL, NULL, NULL),
(22, 'España', '', 'ES', '', NULL, NULL, NULL),
(23, 'Suecia', '', 'SE', '', NULL, NULL, NULL),
(24, 'Hungría', '', 'HU', '', NULL, NULL, NULL),
(25, 'Albania', '', 'AL', '', NULL, NULL, NULL),
(26, 'Andorra', '', 'AD', '', NULL, NULL, NULL),
(27, 'Belarús', '', 'BY', '', NULL, NULL, NULL),
(28, 'Bosnia Y Herzegovina', '', 'BA', '', NULL, NULL, NULL),
(29, 'Bulgaria', '', 'BG', '', NULL, NULL, NULL),
(30, 'Croacia', '', 'HR', '', NULL, NULL, NULL),
(31, 'Islanda', '', 'IS', '', NULL, NULL, NULL),
(32, 'Liechtenstein', '', 'LI', '', NULL, NULL, NULL),
(33, 'Macedonia', '', 'MK', '', NULL, NULL, NULL),
(34, 'Moldova', '', 'MD', '', NULL, NULL, NULL),
(35, 'Mónaco', '', 'MC', '', NULL, NULL, NULL),
(36, 'Montenegro', '', 'ME', '', NULL, NULL, NULL),
(37, 'Noruega', '', 'NO', '', NULL, NULL, NULL),
(38, 'Rumania', '', 'RO', '', NULL, NULL, NULL),
(39, 'Rusia', '', 'RU', '', NULL, NULL, NULL),
(40, 'San Marino', '', 'SM', '', NULL, NULL, NULL),
(41, 'Santa Sede', '', 'VA', '', NULL, NULL, NULL),
(42, 'Serbia', '', 'YU', '', NULL, NULL, NULL),
(43, 'Suiza', '', 'CH', '', NULL, NULL, NULL),
(44, 'Turquía', '', 'TR', '', NULL, NULL, NULL),
(45, 'Ucrania', '', 'UA', '', NULL, NULL, NULL),
(46, 'Afganistán', '', 'AF', '', NULL, NULL, NULL),
(47, 'Arabia Saudita', '', 'SA', '', NULL, NULL, NULL),
(48, 'Armenia', '', 'AM', '', NULL, NULL, NULL),
(49, 'Azerbaiyán', '', 'AZ', '', NULL, NULL, NULL),
(50, 'Bahrein', '', 'BH', '', NULL, NULL, NULL),
(51, 'Bangladesh', '', 'BD', '', NULL, NULL, NULL),
(52, 'Bhután', '', 'BT', '', NULL, NULL, NULL),
(53, 'Brunei', '', 'BN', '', NULL, NULL, NULL),
(54, 'Camboya', '', 'KH', '', NULL, NULL, NULL),
(55, 'China', '', 'CN', '', NULL, NULL, NULL),
(56, 'Corea Del Sur', '', 'KR', '', NULL, NULL, NULL),
(57, 'Corea Del Norte', '', 'KP', '', NULL, NULL, NULL),
(58, 'Emiratos Arabes Unidos', '', 'AE', '', NULL, NULL, NULL),
(59, 'Filipinas', '', 'PH', '', NULL, NULL, NULL),
(60, 'Georgia', '', 'GE', '', NULL, NULL, NULL),
(61, 'Japón', '', 'JP', '', NULL, NULL, NULL),
(62, 'Jordania', '', 'JO', '', NULL, NULL, NULL),
(63, 'India', '', 'IN', '', NULL, NULL, NULL),
(64, 'Indonesia', '', 'ID', '', NULL, NULL, NULL),
(65, 'Irán', '', 'IR', '', NULL, NULL, NULL),
(66, 'Iraq', '', 'IQ', '', NULL, NULL, NULL),
(67, 'Israel', '', 'IL', '', NULL, NULL, NULL),
(68, 'Kazajstán', '', 'KZ', '', NULL, NULL, NULL),
(69, 'Kirguistán', '', 'KG', '', NULL, NULL, NULL),
(70, 'Kuwait', '', 'KW', '', NULL, NULL, NULL),
(71, 'Lao', '', 'LA', '', NULL, NULL, NULL),
(72, 'Líbano', '', 'LB', '', NULL, NULL, NULL),
(73, 'Malasia', '', 'MY', '', NULL, NULL, NULL),
(74, 'Maldivas', '', 'MV', '', NULL, NULL, NULL),
(75, 'Mongolia', '', 'MN', '', NULL, NULL, NULL),
(76, 'Myanmar', '', 'MM', '', NULL, NULL, NULL),
(77, 'Nepal', '', 'NP', '', NULL, NULL, NULL),
(78, 'Omán', '', 'OM', '', NULL, NULL, NULL),
(79, 'Pakistán', '', 'PK', '', NULL, NULL, NULL),
(80, 'Qatar', '', 'QA', '', NULL, NULL, NULL),
(81, 'Singapur', '', 'SG', '', NULL, NULL, NULL),
(82, 'Siria', '', 'SY', '', NULL, NULL, NULL),
(83, 'Sri Lanka', '', 'LK', '', NULL, NULL, NULL),
(84, 'Tayikistán', '', 'TJ', '', NULL, NULL, NULL),
(85, 'Taiwan', '', 'TW', '', NULL, NULL, NULL),
(86, 'Palestina', '', 'PS', '', NULL, NULL, NULL),
(87, 'Tailandia', '', 'TH', '', NULL, NULL, NULL),
(88, 'Timor-Leste', '', 'TL', '', NULL, NULL, NULL),
(89, 'Turkmenistán', '', 'TM', '', NULL, NULL, NULL),
(90, 'Uzbekistán', '', 'UZ', '', NULL, NULL, NULL),
(91, 'Viet Nam', '', 'VN', '', NULL, NULL, NULL),
(92, 'Yemen', '', 'YE', '', NULL, NULL, NULL),
(93, 'Argelia', '', 'DZ', '', NULL, NULL, NULL),
(94, 'Angola', '', 'AO', '', NULL, NULL, NULL),
(95, 'Benin', '', 'BJ', '', NULL, NULL, NULL),
(96, 'Botswana', '', 'BW', '', NULL, NULL, NULL),
(97, 'Burkina Faso', '', 'BF', '', NULL, NULL, NULL),
(98, 'Burundi', '', 'BI', '', NULL, NULL, NULL),
(99, 'Camerún', '', 'CM', '', NULL, NULL, NULL),
(100, 'Cabo Verde', '', 'CV', '', NULL, NULL, NULL),
(101, 'República Centroafricana', '', 'CF', '', NULL, NULL, NULL),
(102, 'Chad', '', 'TD', '', NULL, NULL, NULL),
(103, 'Comoras', '', 'KM', '', NULL, NULL, NULL),
(104, 'Congo', '', 'CG', '', NULL, NULL, NULL),
(105, 'Rep. Dem. Del Congo', '', 'CD', '', NULL, NULL, NULL),
(106, 'Côte D\'Ivoire', '', 'CI', '', NULL, NULL, NULL),
(107, 'Egipto', '', 'EG', '', NULL, NULL, NULL),
(108, 'Eritrea', '', 'ER', '', NULL, NULL, NULL),
(109, 'Etiopía', '', 'ET', '', NULL, NULL, NULL),
(110, 'Gabón', '', 'GA', '', NULL, NULL, NULL),
(111, 'Gambia', '', 'GM', '', NULL, NULL, NULL),
(112, 'Ghana', '', 'GH', '', NULL, NULL, NULL),
(113, 'Djibouti', '', 'DJ', '', NULL, NULL, NULL),
(114, 'Guinea', '', 'GN', '', NULL, NULL, NULL),
(115, 'Guinea-Bissau', '', 'GW', '', NULL, NULL, NULL),
(116, 'Guinea Ecuatorial', '', 'GQ', '', NULL, NULL, NULL),
(117, 'Kenya', '', 'KE', '', NULL, NULL, NULL),
(118, 'Lesotho', '', 'LS', '', NULL, NULL, NULL),
(119, 'Liberia', '', 'LR', '', NULL, NULL, NULL),
(120, 'Libia', '', 'LY', '', NULL, NULL, NULL),
(121, 'Madagascar', '', 'MG', '', NULL, NULL, NULL),
(122, 'Malawi', '', 'MW', '', NULL, NULL, NULL),
(123, 'Malí', '', 'ML', '', NULL, NULL, NULL),
(124, 'Marruecos', '', 'MA', '', NULL, NULL, NULL),
(125, 'Mauritania', '', 'MR', '', NULL, NULL, NULL),
(126, 'Mauricio', '', 'MU', '', NULL, NULL, NULL),
(127, 'Mozambique', '', 'MZ', '', NULL, NULL, NULL),
(128, 'Namibia', '', 'NA', '', NULL, NULL, NULL),
(129, 'Níger', '', 'NE', '', NULL, NULL, NULL),
(130, 'Nigeria', '', 'NG', '', NULL, NULL, NULL),
(131, 'Rwanda', '', 'RW', '', NULL, NULL, NULL),
(132, 'Santo Tomé Y Príncipe', '', 'ST', '', NULL, NULL, NULL),
(133, 'Senegal', '', 'SN', '', NULL, NULL, NULL),
(134, 'Seychelles', '', 'SC', '', NULL, NULL, NULL),
(135, 'Sierra Leona', '', 'SL', '', NULL, NULL, NULL),
(136, 'Somalia', '', 'SO', '', NULL, NULL, NULL),
(137, 'Sudáfrica', '', 'ZA', '', NULL, NULL, NULL),
(138, 'Sudán', '', 'SD', '', NULL, NULL, NULL),
(139, 'Swazilandia', '', 'SZ', '', NULL, NULL, NULL),
(140, 'Tanzanía', '', 'TZ', '', NULL, NULL, NULL),
(141, 'Togo', '', 'TG', '', NULL, NULL, NULL),
(142, 'Túnez', '', 'TN', '', NULL, NULL, NULL),
(143, 'Uganda', '', 'UG', '', NULL, NULL, NULL),
(144, 'Zambia', '', 'ZM', '', NULL, NULL, NULL),
(145, 'Zimbabwe', '', 'ZW', '', NULL, NULL, NULL),
(146, 'Antigua Y Barbuda', '', 'AG', '', NULL, NULL, NULL),
(147, 'Argentina', '', 'AR', '', NULL, NULL, NULL),
(148, 'Bahamas', '', 'BS', '', NULL, NULL, NULL),
(149, 'Barbados', '', 'BB', '', NULL, NULL, NULL),
(150, 'Belice', '', 'BZ', '', NULL, NULL, NULL),
(151, 'Bolivia', '', 'BO', '', NULL, NULL, NULL),
(152, 'Brasil', '', 'BR', '', NULL, NULL, NULL),
(153, 'Canadá', '', 'CA', '', NULL, NULL, NULL),
(154, 'Chile', '', 'CL', '', NULL, NULL, NULL),
(155, 'Colombia', '', 'CO', '', NULL, NULL, NULL),
(156, 'Costa Rica', '', 'CR', '', NULL, NULL, NULL),
(157, 'Cuba', '', 'CU', '', NULL, NULL, NULL),
(158, 'Dominica', '', 'DM', '', NULL, NULL, NULL),
(159, 'República Dominicana', '', 'DO', '', NULL, NULL, NULL),
(160, 'Ecuador', '', 'EC', '', NULL, NULL, NULL),
(161, 'El Salvador', '', 'SV', '', NULL, NULL, NULL),
(162, 'Jamaica', '', 'JM', '', NULL, NULL, NULL),
(163, 'Granada', '', 'GD', '', NULL, NULL, NULL),
(164, 'Guatemala', '', 'GT', '', NULL, NULL, NULL),
(165, 'Guyana', '', 'GY', '', NULL, NULL, NULL),
(166, 'Haití', '', 'HT', '', NULL, NULL, NULL),
(167, 'Honduras', '', 'HN', '', NULL, NULL, NULL),
(168, 'México', '', 'MX', '', NULL, NULL, NULL),
(169, 'Nicaragua', '', 'NI', '', NULL, NULL, NULL),
(170, 'Panamá', '', 'PA', '', NULL, NULL, NULL),
(171, 'Paraguay', '', 'PY', '', NULL, NULL, NULL),
(172, 'Perú', '', 'PE', '', NULL, NULL, NULL),
(173, 'Saint Kitts Y Nevis', '', 'KN', '', NULL, NULL, NULL),
(174, 'Santa Lucía', '', 'LC', '', NULL, NULL, NULL),
(175, 'San Vicente Y Granadinas', '', 'VC', '', NULL, NULL, NULL),
(176, 'Estados Unidos De América', '', 'US', '', NULL, NULL, NULL),
(177, 'Suriname', '', 'SR', '', NULL, NULL, NULL),
(178, 'Trinidad Y Tabago', '', 'TT', '', NULL, NULL, NULL),
(179, 'Uruguay', '', 'UY', '', NULL, NULL, NULL),
(180, 'Venezuela', '', 'VE', '', NULL, NULL, NULL),
(181, 'Australia', '', 'AU', '', NULL, NULL, NULL),
(182, 'Fiji', '', 'FJ', '', NULL, NULL, NULL),
(183, 'Kiribati', '', 'KI', '', NULL, NULL, NULL),
(184, 'Islas Marshall', '', 'MH', '', NULL, NULL, NULL),
(185, 'Micronesia', '', 'FM', '', NULL, NULL, NULL),
(186, 'Nauru', '', 'NR', '', NULL, NULL, NULL),
(187, 'Nueva Zelandia', '', 'NZ', '', NULL, NULL, NULL),
(188, 'Palau', '', 'PW', '', NULL, NULL, NULL),
(189, 'Papua Nueva Guinea', '', 'PG', '', NULL, NULL, NULL),
(190, 'Islas Salomón', '', 'SB', '', NULL, NULL, NULL),
(191, 'Samoa', '', 'WS', '', NULL, NULL, NULL),
(192, 'Tonga', '', 'TO', '', NULL, NULL, NULL),
(193, 'Tuvalu', '', 'TV', '', NULL, NULL, NULL),
(194, 'Vanuatu', '', 'VU', '', NULL, NULL, NULL),
(195, 'Italia', '', 'IT', '', NULL, NULL, NULL),
(196, 'Kosovo', '', 'XK', '', NULL, NULL, NULL),
(197, 'Sudán Del Sur', '', 'SS', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ntariffe2017`
--

CREATE TABLE `ntariffe2017` (
  `idntariffe` int(11) DEFAULT NULL,
  `nomecostoagg` varchar(40) DEFAULT NULL,
  `tipo_ca` varchar(2) DEFAULT NULL,
  `valore_ca` double DEFAULT NULL,
  `valore_perc_ca` double DEFAULT NULL,
  `arrotonda_ca` float DEFAULT NULL,
  `tasseperc_ca` float DEFAULT NULL,
  `associasett_ca` varchar(1) DEFAULT NULL,
  `numsett_ca` varchar(20) DEFAULT NULL,
  `moltiplica_ca` text,
  `periodipermessi_ca` text,
  `beniinv_ca` text,
  `appincompatibili_ca` text,
  `variazione_ca` varchar(20) DEFAULT NULL,
  `mostra_ca` varchar(10) DEFAULT NULL,
  `categoria_ca` text,
  `letto_ca` varchar(1) DEFAULT NULL,
  `numlimite_ca` int(11) DEFAULT NULL,
  `regoleassegna_ca` varchar(30) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  `tariffa1` varchar(40) DEFAULT NULL,
  `tariffa2` varchar(40) DEFAULT NULL,
  `tariffa3` varchar(40) DEFAULT NULL,
  `tariffa4` varchar(40) DEFAULT NULL,
  `tariffa5` varchar(40) DEFAULT NULL,
  `tariffa6` varchar(40) DEFAULT NULL,
  `tariffa7` varchar(40) DEFAULT NULL,
  `tariffa8` varchar(40) DEFAULT NULL,
  `tariffa9` varchar(40) DEFAULT NULL,
  `tariffa10` varchar(40) DEFAULT NULL,
  `tariffa11` varchar(40) DEFAULT NULL,
  `tariffa12` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ntariffe2017`
--

INSERT INTO `ntariffe2017` (`idntariffe`, `nomecostoagg`, `tipo_ca`, `valore_ca`, `valore_perc_ca`, `arrotonda_ca`, `tasseperc_ca`, `associasett_ca`, `numsett_ca`, `moltiplica_ca`, `periodipermessi_ca`, `beniinv_ca`, `appincompatibili_ca`, `variazione_ca`, `mostra_ca`, `categoria_ca`, `letto_ca`, `numlimite_ca`, `regoleassegna_ca`, `utente_inserimento`, `tariffa1`, `tariffa2`, `tariffa3`, `tariffa4`, `tariffa5`, `tariffa6`, `tariffa7`, `tariffa8`, `tariffa9`, `tariffa10`, `tariffa11`, `tariffa12`) VALUES
(1, '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, 'tarifa de La Porteña', 'tarifa de Cabaña Elvira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p', 's', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Limpieza', 'uf', 0, NULL, NULL, NULL, NULL, NULL, 'cx0,', NULL, 'app;3,1', NULL, 'nnnnnnsnn', 'nsns', NULL, 'n', NULL, ';', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Ensalada', 'uf', 50, NULL, NULL, NULL, NULL, NULL, 'cx0,', NULL, 'mag1;16,1', NULL, 'nnnnnnsnn', 'nsns', NULL, 'n', NULL, ';', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'milanesas con papas fritas', 'uf', 100, NULL, NULL, NULL, NULL, NULL, 'cx0,', NULL, 'mag1;17,1', NULL, 'nnnnnnsnn', 'nsns', NULL, 'n', NULL, ';', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Ravioles con salsa roja', 'uf', 90, NULL, NULL, NULL, NULL, NULL, 'cx0,', NULL, 'mag1;18,1', NULL, 'nnnnnnsnn', 'nsns', NULL, 'n', NULL, ';', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Vaso de fernet grande', 'uf', 75, NULL, NULL, NULL, NULL, NULL, 'cx0,', NULL, 'mag1;20,1', NULL, 'nnnnnnsnn', 'nsns', NULL, 'n', NULL, ';', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Whisky Criadores', 'uf', 60, NULL, NULL, NULL, NULL, NULL, 'cx0,', NULL, 'mag1;21,1', NULL, 'nnnnnnsnn', 'nsns', NULL, 'n', NULL, ';', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parentele`
--

CREATE TABLE `parentele` (
  `idparentele` int(11) NOT NULL,
  `nome_parentela` varchar(70) DEFAULT NULL,
  `codice_parentela` varchar(50) DEFAULT NULL,
  `codice2_parentela` varchar(50) DEFAULT NULL,
  `codice3_parentela` varchar(50) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodi2017`
--

CREATE TABLE `periodi2017` (
  `idperiodi` int(11) NOT NULL,
  `datainizio` date NOT NULL,
  `datafine` date DEFAULT NULL,
  `tariffa1` double DEFAULT NULL,
  `tariffa1p` double DEFAULT NULL,
  `tariffa2` double DEFAULT NULL,
  `tariffa2p` double DEFAULT NULL,
  `tariffa3` double DEFAULT NULL,
  `tariffa3p` double DEFAULT NULL,
  `tariffa4` double DEFAULT NULL,
  `tariffa4p` double DEFAULT NULL,
  `tariffa5` double DEFAULT NULL,
  `tariffa5p` double DEFAULT NULL,
  `tariffa6` double DEFAULT NULL,
  `tariffa6p` double DEFAULT NULL,
  `tariffa7` double DEFAULT NULL,
  `tariffa7p` double DEFAULT NULL,
  `tariffa8` double DEFAULT NULL,
  `tariffa8p` double DEFAULT NULL,
  `tariffa9` double DEFAULT NULL,
  `tariffa9p` double DEFAULT NULL,
  `tariffa10` double DEFAULT NULL,
  `tariffa10p` double DEFAULT NULL,
  `tariffa11` double DEFAULT NULL,
  `tariffa11p` double DEFAULT NULL,
  `tariffa12` double DEFAULT NULL,
  `tariffa12p` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `periodi2017`
--

INSERT INTO `periodi2017` (`idperiodi`, `datainizio`, `datafine`, `tariffa1`, `tariffa1p`, `tariffa2`, `tariffa2p`, `tariffa3`, `tariffa3p`, `tariffa4`, `tariffa4p`, `tariffa5`, `tariffa5p`, `tariffa6`, `tariffa6p`, `tariffa7`, `tariffa7p`, `tariffa8`, `tariffa8p`, `tariffa9`, `tariffa9p`, `tariffa10`, `tariffa10p`, `tariffa11`, `tariffa11p`, `tariffa12`, `tariffa12p`) VALUES
(1, '2017-01-01', '2017-01-02', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2017-01-02', '2017-01-03', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2017-01-03', '2017-01-04', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2017-01-04', '2017-01-05', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2017-01-05', '2017-01-06', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2017-01-06', '2017-01-07', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2017-01-07', '2017-01-08', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2017-01-08', '2017-01-09', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2017-01-09', '2017-01-10', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2017-01-10', '2017-01-11', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2017-01-11', '2017-01-12', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2017-01-12', '2017-01-13', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2017-01-13', '2017-01-14', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2017-01-14', '2017-01-15', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2017-01-15', '2017-01-16', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2017-01-16', '2017-01-17', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2017-01-17', '2017-01-18', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2017-01-18', '2017-01-19', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2017-01-19', '2017-01-20', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2017-01-20', '2017-01-21', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2017-01-21', '2017-01-22', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2017-01-22', '2017-01-23', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2017-01-23', '2017-01-24', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2017-01-24', '2017-01-25', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2017-01-25', '2017-01-26', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2017-01-26', '2017-01-27', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2017-01-27', '2017-01-28', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2017-01-28', '2017-01-29', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2017-01-29', '2017-01-30', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '2017-01-30', '2017-01-31', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '2017-01-31', '2017-02-01', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '2017-02-01', '2017-02-02', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '2017-02-02', '2017-02-03', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '2017-02-03', '2017-02-04', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '2017-02-04', '2017-02-05', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '2017-02-05', '2017-02-06', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '2017-02-06', '2017-02-07', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '2017-02-07', '2017-02-08', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '2017-02-08', '2017-02-09', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '2017-02-09', '2017-02-10', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '2017-02-10', '2017-02-11', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '2017-02-11', '2017-02-12', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '2017-02-12', '2017-02-13', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '2017-02-13', '2017-02-14', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '2017-02-14', '2017-02-15', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '2017-02-15', '2017-02-16', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '2017-02-16', '2017-02-17', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '2017-02-17', '2017-02-18', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '2017-02-18', '2017-02-19', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '2017-02-19', '2017-02-20', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '2017-02-20', '2017-02-21', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '2017-02-21', '2017-02-22', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '2017-02-22', '2017-02-23', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '2017-02-23', '2017-02-24', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '2017-02-24', '2017-02-25', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '2017-02-25', '2017-02-26', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '2017-02-26', '2017-02-27', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '2017-02-27', '2017-02-28', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '2017-02-28', '2017-03-01', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '2017-03-01', '2017-03-02', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '2017-03-02', '2017-03-03', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '2017-03-03', '2017-03-04', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '2017-03-04', '2017-03-05', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '2017-03-05', '2017-03-06', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '2017-03-06', '2017-03-07', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '2017-03-07', '2017-03-08', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '2017-03-08', '2017-03-09', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '2017-03-09', '2017-03-10', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '2017-03-10', '2017-03-11', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '2017-03-11', '2017-03-12', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '2017-03-12', '2017-03-13', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '2017-03-13', '2017-03-14', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '2017-03-14', '2017-03-15', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, '2017-03-15', '2017-03-16', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, '2017-03-16', '2017-03-17', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '2017-03-17', '2017-03-18', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, '2017-03-18', '2017-03-19', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, '2017-03-19', '2017-03-20', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '2017-03-20', '2017-03-21', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '2017-03-21', '2017-03-22', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, '2017-03-22', '2017-03-23', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '2017-03-23', '2017-03-24', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '2017-03-24', '2017-03-25', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '2017-03-25', '2017-03-26', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '2017-03-26', '2017-03-27', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '2017-03-27', '2017-03-28', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '2017-03-28', '2017-03-29', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '2017-03-29', '2017-03-30', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '2017-03-30', '2017-03-31', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '2017-03-31', '2017-04-01', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, '2017-04-01', '2017-04-02', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, '2017-04-02', '2017-04-03', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, '2017-04-03', '2017-04-04', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, '2017-04-04', '2017-04-05', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, '2017-04-05', '2017-04-06', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, '2017-04-06', '2017-04-07', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, '2017-04-07', '2017-04-08', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, '2017-04-08', '2017-04-09', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, '2017-04-09', '2017-04-10', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, '2017-04-10', '2017-04-11', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, '2017-04-11', '2017-04-12', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, '2017-04-12', '2017-04-13', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, '2017-04-13', '2017-04-14', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '2017-04-14', '2017-04-15', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, '2017-04-15', '2017-04-16', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, '2017-04-16', '2017-04-17', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, '2017-04-17', '2017-04-18', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, '2017-04-18', '2017-04-19', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, '2017-04-19', '2017-04-20', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, '2017-04-20', '2017-04-21', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, '2017-04-21', '2017-04-22', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, '2017-04-22', '2017-04-23', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, '2017-04-23', '2017-04-24', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, '2017-04-24', '2017-04-25', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, '2017-04-25', '2017-04-26', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, '2017-04-26', '2017-04-27', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, '2017-04-27', '2017-04-28', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, '2017-04-28', '2017-04-29', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, '2017-04-29', '2017-04-30', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, '2017-04-30', '2017-05-01', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, '2017-05-01', '2017-05-02', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, '2017-05-02', '2017-05-03', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, '2017-05-03', '2017-05-04', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, '2017-05-04', '2017-05-05', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, '2017-05-05', '2017-05-06', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, '2017-05-06', '2017-05-07', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, '2017-05-07', '2017-05-08', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, '2017-05-08', '2017-05-09', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, '2017-05-09', '2017-05-10', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, '2017-05-10', '2017-05-11', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, '2017-05-11', '2017-05-12', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, '2017-05-12', '2017-05-13', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, '2017-05-13', '2017-05-14', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, '2017-05-14', '2017-05-15', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, '2017-05-15', '2017-05-16', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, '2017-05-16', '2017-05-17', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, '2017-05-17', '2017-05-18', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, '2017-05-18', '2017-05-19', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, '2017-05-19', '2017-05-20', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, '2017-05-20', '2017-05-21', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, '2017-05-21', '2017-05-22', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, '2017-05-22', '2017-05-23', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, '2017-05-23', '2017-05-24', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, '2017-05-24', '2017-05-25', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, '2017-05-25', '2017-05-26', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, '2017-05-26', '2017-05-27', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, '2017-05-27', '2017-05-28', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, '2017-05-28', '2017-05-29', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, '2017-05-29', '2017-05-30', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, '2017-05-30', '2017-05-31', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, '2017-05-31', '2017-06-01', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, '2017-06-01', '2017-06-02', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, '2017-06-02', '2017-06-03', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, '2017-06-03', '2017-06-04', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, '2017-06-04', '2017-06-05', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, '2017-06-05', '2017-06-06', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, '2017-06-06', '2017-06-07', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, '2017-06-07', '2017-06-08', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, '2017-06-08', '2017-06-09', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, '2017-06-09', '2017-06-10', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, '2017-06-10', '2017-06-11', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, '2017-06-11', '2017-06-12', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, '2017-06-12', '2017-06-13', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, '2017-06-13', '2017-06-14', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, '2017-06-14', '2017-06-15', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, '2017-06-15', '2017-06-16', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, '2017-06-16', '2017-06-17', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, '2017-06-17', '2017-06-18', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, '2017-06-18', '2017-06-19', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, '2017-06-19', '2017-06-20', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, '2017-06-20', '2017-06-21', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, '2017-06-21', '2017-06-22', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, '2017-06-22', '2017-06-23', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, '2017-06-23', '2017-06-24', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, '2017-06-24', '2017-06-25', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, '2017-06-25', '2017-06-26', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, '2017-06-26', '2017-06-27', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, '2017-06-27', '2017-06-28', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, '2017-06-28', '2017-06-29', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, '2017-06-29', '2017-06-30', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, '2017-06-30', '2017-07-01', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, '2017-07-01', '2017-07-02', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, '2017-07-02', '2017-07-03', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, '2017-07-03', '2017-07-04', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, '2017-07-04', '2017-07-05', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, '2017-07-05', '2017-07-06', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, '2017-07-06', '2017-07-07', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, '2017-07-07', '2017-07-08', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, '2017-07-08', '2017-07-09', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, '2017-07-09', '2017-07-10', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, '2017-07-10', '2017-07-11', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, '2017-07-11', '2017-07-12', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, '2017-07-12', '2017-07-13', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, '2017-07-13', '2017-07-14', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, '2017-07-14', '2017-07-15', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, '2017-07-15', '2017-07-16', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, '2017-07-16', '2017-07-17', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, '2017-07-17', '2017-07-18', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, '2017-07-18', '2017-07-19', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, '2017-07-19', '2017-07-20', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, '2017-07-20', '2017-07-21', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, '2017-07-21', '2017-07-22', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, '2017-07-22', '2017-07-23', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, '2017-07-23', '2017-07-24', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, '2017-07-24', '2017-07-25', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, '2017-07-25', '2017-07-26', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, '2017-07-26', '2017-07-27', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, '2017-07-27', '2017-07-28', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, '2017-07-28', '2017-07-29', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, '2017-07-29', '2017-07-30', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, '2017-07-30', '2017-07-31', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, '2017-07-31', '2017-08-01', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, '2017-08-01', '2017-08-02', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, '2017-08-02', '2017-08-03', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, '2017-08-03', '2017-08-04', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, '2017-08-04', '2017-08-05', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, '2017-08-05', '2017-08-06', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, '2017-08-06', '2017-08-07', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, '2017-08-07', '2017-08-08', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, '2017-08-08', '2017-08-09', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, '2017-08-09', '2017-08-10', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, '2017-08-10', '2017-08-11', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, '2017-08-11', '2017-08-12', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, '2017-08-12', '2017-08-13', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, '2017-08-13', '2017-08-14', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, '2017-08-14', '2017-08-15', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, '2017-08-15', '2017-08-16', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, '2017-08-16', '2017-08-17', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, '2017-08-17', '2017-08-18', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, '2017-08-18', '2017-08-19', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, '2017-08-19', '2017-08-20', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, '2017-08-20', '2017-08-21', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, '2017-08-21', '2017-08-22', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, '2017-08-22', '2017-08-23', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, '2017-08-23', '2017-08-24', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, '2017-08-24', '2017-08-25', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, '2017-08-25', '2017-08-26', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, '2017-08-26', '2017-08-27', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, '2017-08-27', '2017-08-28', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, '2017-08-28', '2017-08-29', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, '2017-08-29', '2017-08-30', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, '2017-08-30', '2017-08-31', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, '2017-08-31', '2017-09-01', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, '2017-09-01', '2017-09-02', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, '2017-09-02', '2017-09-03', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, '2017-09-03', '2017-09-04', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, '2017-09-04', '2017-09-05', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, '2017-09-05', '2017-09-06', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, '2017-09-06', '2017-09-07', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, '2017-09-07', '2017-09-08', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, '2017-09-08', '2017-09-09', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, '2017-09-09', '2017-09-10', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, '2017-09-10', '2017-09-11', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, '2017-09-11', '2017-09-12', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, '2017-09-12', '2017-09-13', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, '2017-09-13', '2017-09-14', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, '2017-09-14', '2017-09-15', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, '2017-09-15', '2017-09-16', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, '2017-09-16', '2017-09-17', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, '2017-09-17', '2017-09-18', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, '2017-09-18', '2017-09-19', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, '2017-09-19', '2017-09-20', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, '2017-09-20', '2017-09-21', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, '2017-09-21', '2017-09-22', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, '2017-09-22', '2017-09-23', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, '2017-09-23', '2017-09-24', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, '2017-09-24', '2017-09-25', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, '2017-09-25', '2017-09-26', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, '2017-09-26', '2017-09-27', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, '2017-09-27', '2017-09-28', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, '2017-09-28', '2017-09-29', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, '2017-09-29', '2017-09-30', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, '2017-09-30', '2017-10-01', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, '2017-10-01', '2017-10-02', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, '2017-10-02', '2017-10-03', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, '2017-10-03', '2017-10-04', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, '2017-10-04', '2017-10-05', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, '2017-10-05', '2017-10-06', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, '2017-10-06', '2017-10-07', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, '2017-10-07', '2017-10-08', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, '2017-10-08', '2017-10-09', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, '2017-10-09', '2017-10-10', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `periodi2017` (`idperiodi`, `datainizio`, `datafine`, `tariffa1`, `tariffa1p`, `tariffa2`, `tariffa2p`, `tariffa3`, `tariffa3p`, `tariffa4`, `tariffa4p`, `tariffa5`, `tariffa5p`, `tariffa6`, `tariffa6p`, `tariffa7`, `tariffa7p`, `tariffa8`, `tariffa8p`, `tariffa9`, `tariffa9p`, `tariffa10`, `tariffa10p`, `tariffa11`, `tariffa11p`, `tariffa12`, `tariffa12p`) VALUES
(283, '2017-10-10', '2017-10-11', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, '2017-10-11', '2017-10-12', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, '2017-10-12', '2017-10-13', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, '2017-10-13', '2017-10-14', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, '2017-10-14', '2017-10-15', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, '2017-10-15', '2017-10-16', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, '2017-10-16', '2017-10-17', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, '2017-10-17', '2017-10-18', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, '2017-10-18', '2017-10-19', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, '2017-10-19', '2017-10-20', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, '2017-10-20', '2017-10-21', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, '2017-10-21', '2017-10-22', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, '2017-10-22', '2017-10-23', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, '2017-10-23', '2017-10-24', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, '2017-10-24', '2017-10-25', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, '2017-10-25', '2017-10-26', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, '2017-10-26', '2017-10-27', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, '2017-10-27', '2017-10-28', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, '2017-10-28', '2017-10-29', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, '2017-10-29', '2017-10-30', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, '2017-10-30', '2017-10-31', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, '2017-10-31', '2017-11-01', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, '2017-11-01', '2017-11-02', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, '2017-11-02', '2017-11-03', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, '2017-11-03', '2017-11-04', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, '2017-11-04', '2017-11-05', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, '2017-11-05', '2017-11-06', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, '2017-11-06', '2017-11-07', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, '2017-11-07', '2017-11-08', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, '2017-11-08', '2017-11-09', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, '2017-11-09', '2017-11-10', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, '2017-11-10', '2017-11-11', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, '2017-11-11', '2017-11-12', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, '2017-11-12', '2017-11-13', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, '2017-11-13', '2017-11-14', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, '2017-11-14', '2017-11-15', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, '2017-11-15', '2017-11-16', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, '2017-11-16', '2017-11-17', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, '2017-11-17', '2017-11-18', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, '2017-11-18', '2017-11-19', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, '2017-11-19', '2017-11-20', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, '2017-11-20', '2017-11-21', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, '2017-11-21', '2017-11-22', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, '2017-11-22', '2017-11-23', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, '2017-11-23', '2017-11-24', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, '2017-11-24', '2017-11-25', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, '2017-11-25', '2017-11-26', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, '2017-11-26', '2017-11-27', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, '2017-11-27', '2017-11-28', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, '2017-11-28', '2017-11-29', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, '2017-11-29', '2017-11-30', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, '2017-11-30', '2017-12-01', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, '2017-12-01', '2017-12-02', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, '2017-12-02', '2017-12-03', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, '2017-12-03', '2017-12-04', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, '2017-12-04', '2017-12-05', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, '2017-12-05', '2017-12-06', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, '2017-12-06', '2017-12-07', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, '2017-12-07', '2017-12-08', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, '2017-12-08', '2017-12-09', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, '2017-12-09', '2017-12-10', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, '2017-12-10', '2017-12-11', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, '2017-12-11', '2017-12-12', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, '2017-12-12', '2017-12-13', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, '2017-12-13', '2017-12-14', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, '2017-12-14', '2017-12-15', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, '2017-12-15', '2017-12-16', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, '2017-12-16', '2017-12-17', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, '2017-12-17', '2017-12-18', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, '2017-12-18', '2017-12-19', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, '2017-12-19', '2017-12-20', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, '2017-12-20', '2017-12-21', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, '2017-12-21', '2017-12-22', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, '2017-12-22', '2017-12-23', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, '2017-12-23', '2017-12-24', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, '2017-12-24', '2017-12-25', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, '2017-12-25', '2017-12-26', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, '2017-12-26', '2017-12-27', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, '2017-12-27', '2017-12-28', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, '2017-12-28', '2017-12-29', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, '2017-12-29', '2017-12-30', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, '2017-12-30', '2017-12-31', NULL, 450, 1800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, '2017-12-31', '2018-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personalizza`
--

CREATE TABLE `personalizza` (
  `idpersonalizza` varchar(50) NOT NULL,
  `idutente` int(11) DEFAULT NULL,
  `valpersonalizza` text,
  `valpersonalizza_num` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `personalizza`
--

INSERT INTO `personalizza` (`idpersonalizza`, `idutente`, `valpersonalizza`, `valpersonalizza_num`) VALUES
('col_tab_tutte_prenota', 1, 'nu#@&cg#@&in#@&fi#@&tc#@&ca#@&pa#@&ap#@&pe#@&co', NULL),
('rig_tab_tutte_prenota', 1, 'to#@&ta#@&ca#@&pc', NULL),
('maschera_email', 1, 'SI', NULL),
('dati_struttura', 1, '#@&#@&#@&#@&#@&#@&#@&#@&#@&#@&#@&', NULL),
('valuta', 1, 'Pesos', NULL),
('arrotond_predef', 1, '1', NULL),
('arrotond_tasse', 1, '0.01', NULL),
('stile_soldi', 1, 'europa', NULL),
('costi_agg_in_tab_prenota', 1, '', NULL),
('aggiunta_tronca_nomi_tab1', 1, NULL, -2),
('linee_ripeti_date_tab_mesi', 1, NULL, 25),
('mostra_giorni_tab_mesi', 1, 'SI', NULL),
('colori_tab_mesi', 1, '#70C6D4,#FFD800,#FF9900,#FF3115', NULL),
('num_linee_tab2_prenota', 1, NULL, 30),
('nomi_contratti', 1, '1#?&Ejemplo#@&2#?&Factura#@&3#?&Factura - html#@&4#?&Recibo último pago#@&5#?&Email disponibilidad#@&6#?&Email confirmación#@&7#?&Exportar datos clientes', NULL),
('num_righe_tab_tutte_prenota', 1, NULL, 200),
('selezione_tab_tutte_prenota', 1, 'tutte', NULL),
('num_righe_tab_tutti_clienti', 1, NULL, 200),
('num_righe_tab_casse', 1, NULL, 50),
('tot_giornalero_tab_casse', 1, 'gior,mens,tab', NULL),
('num_righe_tab_messaggi', 1, NULL, 80),
('num_righe_tab_doc_salvati', 1, NULL, 100),
('num_righe_tab_storia_soldi', 1, NULL, 200),
('stile_data', 1, 'europa', NULL),
('minuti_durata_sessione', 1, NULL, 90),
('minuti_durata_insprenota', 1, NULL, 10),
('ore_anticipa_periodo_corrente', 1, NULL, 0),
('tutti_fissi', 1, '10', NULL),
('auto_crea_anno', 1, 'SI', NULL),
('metodi_pagamento', 1, '', NULL),
('origini_prenota', 1, '', NULL),
('attiva_checkin', 1, 'NO', NULL),
('mostra_quadro_disp', 1, '', NULL),
('subordinazione', 1, 'NO', NULL),
('percorso_cartella_modello', 1, './dati', NULL),
('gest_cvc', 1, 'NO', NULL),
('ordine_inventario', 1, 'alf', NULL),
('tasti_pos', 1, 'x2;x10;s;+1;+2;+3;+4;+5;+6;+7;+8;+9;s;-1', NULL),
('ultime_sel_ins_prezzi', 1, '8,2017,2017-01-01,2017-12-31,2018-01-01,,2017-01-01,2017-01-01,2017-01-01,2017-01-01,2017-01-01,2017-01-01,2017-01-01,2017-01-01,2017-01-01,2017-01-01,2017-01-01,2017-01-01', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prenota2017`
--

CREATE TABLE `prenota2017` (
  `idprenota` int(11) NOT NULL,
  `idclienti` int(11) DEFAULT NULL,
  `idappartamenti` varchar(100) DEFAULT NULL,
  `iddatainizio` int(11) DEFAULT NULL,
  `iddatafine` int(11) DEFAULT NULL,
  `assegnazioneapp` varchar(4) DEFAULT NULL,
  `app_assegnabili` text,
  `num_persone` int(11) DEFAULT NULL,
  `idprenota_compagna` text,
  `tariffa` text,
  `tariffesettimanali` text,
  `incompatibilita` text,
  `sconto` double DEFAULT NULL,
  `tariffa_tot` double DEFAULT NULL,
  `caparra` double DEFAULT NULL,
  `commissioni` double DEFAULT NULL,
  `tasseperc` float DEFAULT NULL,
  `pagato` double DEFAULT NULL,
  `metodo_pagamento` text,
  `codice` varchar(10) DEFAULT NULL,
  `origine` varchar(70) DEFAULT NULL,
  `commento` text,
  `conferma` varchar(4) DEFAULT NULL,
  `checkin` datetime DEFAULT NULL,
  `checkout` datetime DEFAULT NULL,
  `id_anni_prec` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `data_modifica` datetime DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `privilegi`
--

CREATE TABLE `privilegi` (
  `idutente` int(11) DEFAULT NULL,
  `anno` int(11) DEFAULT NULL,
  `regole1_consentite` text,
  `tariffe_consentite` text,
  `costi_agg_consentiti` text,
  `contratti_consentiti` text,
  `casse_consentite` text,
  `cassa_pagamenti` varchar(70) DEFAULT NULL,
  `priv_ins_prenota` varchar(20) DEFAULT NULL,
  `priv_mod_prenota` varchar(35) DEFAULT NULL,
  `priv_mod_pers` varchar(15) DEFAULT NULL,
  `priv_ins_clienti` varchar(5) DEFAULT NULL,
  `prefisso_clienti` text,
  `priv_ins_costi` varchar(10) DEFAULT NULL,
  `priv_vedi_tab` varchar(30) DEFAULT NULL,
  `priv_ins_tariffe` varchar(10) DEFAULT NULL,
  `priv_ins_regole` varchar(10) DEFAULT NULL,
  `priv_messaggi` varchar(10) DEFAULT NULL,
  `priv_inventario` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rclientiprenota2017`
--

CREATE TABLE `rclientiprenota2017` (
  `idprenota` int(11) DEFAULT NULL,
  `idclienti` int(11) DEFAULT NULL,
  `num_ordine` int(11) DEFAULT NULL,
  `parentela` varchar(70) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regioni`
--

CREATE TABLE `regioni` (
  `idregioni` int(11) NOT NULL,
  `nome_regione` varchar(70) DEFAULT NULL,
  `codice_regione` varchar(50) DEFAULT NULL,
  `codice2_regione` varchar(50) DEFAULT NULL,
  `codice3_regione` varchar(50) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regole2017`
--

CREATE TABLE `regole2017` (
  `idregole` int(11) DEFAULT NULL,
  `app_agenzia` varchar(100) DEFAULT NULL,
  `tariffa_chiusa` text,
  `tariffa_per_app` text,
  `tariffa_per_utente` text,
  `tariffa_per_persone` text,
  `tariffa_commissioni` int(11) DEFAULT NULL,
  `iddatainizio` int(11) DEFAULT NULL,
  `iddatafine` int(11) DEFAULT NULL,
  `motivazione` text,
  `motivazione2` text,
  `motivazione3` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `regole2017`
--

INSERT INTO `regole2017` (`idregole`, `app_agenzia`, `tariffa_chiusa`, `tariffa_per_app`, `tariffa_per_utente`, `tariffa_per_persone`, `tariffa_commissioni`, `iddatainizio`, `iddatafine`, `motivazione`, `motivazione2`, `motivazione3`) VALUES
(1, NULL, NULL, 'tariffa1', NULL, NULL, NULL, NULL, NULL, '01,02,03,04,05,06,07,08,09,10,11,12', NULL, NULL),
(2, NULL, NULL, 'tariffa2', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relclienti`
--

CREATE TABLE `relclienti` (
  `idclienti` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `tipo` varchar(12) DEFAULT NULL,
  `testo1` text,
  `testo2` text,
  `testo3` text,
  `testo4` text,
  `testo5` text,
  `testo6` text,
  `testo7` text,
  `testo8` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relgruppi`
--

CREATE TABLE `relgruppi` (
  `idutente` int(11) NOT NULL,
  `idgruppo` int(11) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relinventario`
--

CREATE TABLE `relinventario` (
  `idbeneinventario` int(11) NOT NULL,
  `idappartamento` varchar(100) DEFAULT NULL,
  `idmagazzino` int(11) DEFAULT NULL,
  `quantita` int(11) DEFAULT NULL,
  `quantita_min_predef` int(11) DEFAULT NULL,
  `richiesto_checkin` varchar(2) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `relinventario`
--

INSERT INTO `relinventario` (`idbeneinventario`, `idappartamento`, `idmagazzino`, `quantita`, `quantita_min_predef`, `richiesto_checkin`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(1, '01', NULL, 0, 0, 'n', '2017-07-25 18:03:19', 'localhost', 1),
(3, '01', NULL, 1, 1, 'n', '2017-07-24 16:22:02', 'localhost', 1),
(7, '06', NULL, 1, 1, 'n', '2017-07-24 17:12:19', 'localhost', 1),
(6, '01', NULL, 2, 2, 'n', '2017-07-24 17:09:34', 'localhost', 1),
(7, '02', NULL, 1, 1, 'n', '2017-07-24 17:09:49', 'localhost', 1),
(9, '02', NULL, 1, 1, 'n', '2017-07-24 17:11:13', 'localhost', 1),
(7, '03', NULL, 1, 1, 'n', '2017-07-24 17:11:23', 'localhost', 1),
(7, '04', NULL, 1, 1, 'n', '2017-07-24 17:11:45', 'localhost', 1),
(7, '05', NULL, 1, 1, 'n', '2017-07-24 17:11:58', 'localhost', 1),
(6, '06', NULL, 1, 1, 'n', '2017-07-24 17:12:24', 'localhost', 1),
(6, '07', NULL, 1, 1, 'n', '2017-07-24 17:12:34', 'localhost', 1),
(7, '07', NULL, 1, 1, 'n', '2017-07-24 17:12:39', 'localhost', 1),
(9, '07', NULL, 1, 1, 'n', '2017-07-24 17:12:45', 'localhost', 1),
(7, '08', NULL, 1, 1, 'n', '2017-07-24 17:12:58', 'localhost', 1),
(7, '09', NULL, 1, 1, 'n', '2017-07-24 17:13:32', 'localhost', 1),
(9, '09', NULL, 1, 1, 'n', '2017-07-24 17:13:44', 'localhost', 1),
(7, '10', NULL, 1, 1, 'n', '2017-07-24 17:14:02', 'localhost', 1),
(9, '10', NULL, 1, 1, 'n', '2017-07-24 17:14:08', 'localhost', 1),
(7, '13', NULL, 1, 1, 'n', '2017-07-24 17:15:17', 'localhost', 1),
(6, '13', NULL, 2, 2, 'n', '2017-07-24 17:15:44', 'localhost', 1),
(10, '13', NULL, 1, 1, 'n', '2017-07-24 17:17:25', 'localhost', 1),
(11, '13', NULL, 1, 1, 'n', '2017-07-24 17:18:36', 'localhost', 1),
(12, '13', NULL, 1, 1, 'n', '2017-07-24 17:19:35', 'localhost', 1),
(13, '13', NULL, 5, 5, 'n', '2017-07-24 17:20:24', 'localhost', 1),
(14, '13', NULL, 1, 1, 'n', '2017-07-24 17:21:53', 'localhost', 1),
(16, NULL, 1, 10, 4, 'n', '2017-07-24 17:57:46', 'localhost', 1),
(3, '06', NULL, 1, 1, 'n', '2017-07-25 16:55:38', 'localhost', 1),
(3, '11', NULL, 0, 1, 'n', '2017-07-25 16:57:47', 'localhost', 1),
(3, '04', NULL, 1, 1, 'n', '2017-07-25 17:00:15', 'localhost', 1),
(3, '03', NULL, 0, 1, 'n', '2017-07-25 17:04:28', 'localhost', 1),
(3, '13', NULL, 1, 1, 'n', '2017-07-25 17:05:48', 'localhost', 1),
(17, NULL, 1, 5, 5, 'n', '2017-07-25 17:07:23', 'localhost', 1),
(18, NULL, 1, 5, 5, 'n', '2017-07-25 17:13:08', 'localhost', 1),
(19, NULL, 1, 40, 40, 'n', '2017-07-25 17:14:01', 'localhost', 1),
(20, NULL, 1, 90, 90, 'n', '2017-07-25 17:15:28', 'localhost', 1),
(21, NULL, 1, 50, 50, 'n', '2017-07-25 17:17:09', 'localhost', 1),
(1, '03', NULL, 1, 0, 'n', '2017-07-25 17:31:38', 'localhost', 1),
(1, '09', NULL, 1, 0, 'n', '2017-07-25 17:49:11', 'localhost', 1),
(1, '07', NULL, 1, 0, 'n', '2017-07-25 18:05:46', 'localhost', 1),
(22, '13', NULL, 1, 1, 'n', '2017-07-25 18:08:19', 'localhost', 1),
(3, '07', NULL, 0, 1, 'n', '2017-07-25 19:00:43', 'localhost', 1),
(1, '02', NULL, 1, 0, 'n', '2017-07-25 19:00:59', 'localhost', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relutenti`
--

CREATE TABLE `relutenti` (
  `idutente` int(11) NOT NULL,
  `idnazione` int(11) DEFAULT NULL,
  `idregione` int(11) DEFAULT NULL,
  `idcitta` int(11) DEFAULT NULL,
  `iddocumentoid` int(11) DEFAULT NULL,
  `idparentela` int(11) DEFAULT NULL,
  `idsup` int(11) DEFAULT NULL,
  `predef` int(11) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `relutenti`
--

INSERT INTO `relutenti` (`idutente`, `idnazione`, `idregione`, `idcitta`, `iddocumentoid`, `idparentela`, `idsup`, `predef`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 187, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessioni`
--

CREATE TABLE `sessioni` (
  `idsessioni` varchar(30) NOT NULL,
  `idutente` int(11) DEFAULT NULL,
  `indirizzo_ip` text,
  `tipo_conn` varchar(12) DEFAULT NULL,
  `user_agent` text,
  `ultimo_accesso` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soldi2017`
--

CREATE TABLE `soldi2017` (
  `idsoldi` int(11) DEFAULT NULL,
  `motivazione` text,
  `id_pagamento` text,
  `metodo_pagamento` text,
  `saldo_prenota` double DEFAULT NULL,
  `saldo_cassa` double DEFAULT NULL,
  `soldi_prima` double DEFAULT NULL,
  `data_inserimento` datetime DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `soldi2017`
--

INSERT INTO `soldi2017` (`idsoldi`, `motivazione`, `id_pagamento`, `metodo_pagamento`, `saldo_prenota`, `saldo_cassa`, `soldi_prima`, `data_inserimento`, `utente_inserimento`) VALUES
(1, 'soldi_prenotazioni_cancellate', NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transazioni`
--

CREATE TABLE `transazioni` (
  `idtransazioni` varchar(30) NOT NULL,
  `idsessione` varchar(30) DEFAULT NULL,
  `tipo_transazione` varchar(5) DEFAULT NULL,
  `anno` int(11) DEFAULT NULL,
  `spostamenti` text,
  `dati_transazione1` text,
  `dati_transazione2` text,
  `dati_transazione3` text,
  `dati_transazione4` text,
  `dati_transazione5` text,
  `dati_transazione6` text,
  `dati_transazione7` text,
  `dati_transazione8` text,
  `dati_transazione9` text,
  `dati_transazione10` text,
  `dati_transazione11` text,
  `dati_transazione12` text,
  `dati_transazione13` text,
  `dati_transazione14` text,
  `dati_transazione15` text,
  `dati_transazione16` text,
  `dati_transazione17` text,
  `dati_transazione18` text,
  `dati_transazione19` text,
  `dati_transazione20` text,
  `ultimo_accesso` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transazioniweb`
--

CREATE TABLE `transazioniweb` (
  `idtransazioni` varchar(30) NOT NULL,
  `idsessione` varchar(30) DEFAULT NULL,
  `tipo_transazione` varchar(5) DEFAULT NULL,
  `anno` int(11) DEFAULT NULL,
  `spostamenti` text,
  `dati_transazione1` text,
  `dati_transazione2` text,
  `dati_transazione3` text,
  `dati_transazione4` text,
  `dati_transazione5` text,
  `dati_transazione6` text,
  `dati_transazione7` text,
  `dati_transazione8` text,
  `dati_transazione9` text,
  `dati_transazione10` text,
  `dati_transazione11` text,
  `dati_transazione12` text,
  `dati_transazione13` text,
  `dati_transazione14` text,
  `dati_transazione15` text,
  `dati_transazione16` text,
  `dati_transazione17` text,
  `dati_transazione18` text,
  `dati_transazione19` text,
  `dati_transazione20` text,
  `ultimo_accesso` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `transazioniweb`
--

INSERT INTO `transazioniweb` (`idtransazioni`, `idsessione`, `tipo_transazione`, `anno`, `spostamenti`, `dati_transazione1`, `dati_transazione2`, `dati_transazione3`, `dati_transazione4`, `dati_transazione5`, `dati_transazione6`, `dati_transazione7`, `dati_transazione8`, `dati_transazione9`, `dati_transazione10`, `dati_transazione11`, `dati_transazione12`, `dati_transazione13`, `dati_transazione14`, `dati_transazione15`, `dati_transazione16`, `dati_transazione17`, `dati_transazione18`, `dati_transazione19`, `dati_transazione20`, `ultimo_accesso`) VALUES
('2', NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `utenti`
--

CREATE TABLE `utenti` (
  `idutenti` int(11) NOT NULL,
  `nome_utente` text,
  `password` text,
  `salt` text,
  `tipo_pass` varchar(1) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `utenti`
--

INSERT INTO `utenti` (`idutenti`, `nome_utente`, `password`, `salt`, `tipo_pass`, `datainserimento`, `hostinserimento`) VALUES
(1, 'admin', NULL, NULL, 'n', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `versioni`
--

CREATE TABLE `versioni` (
  `idversioni` int(11) NOT NULL,
  `num_versione` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `versioni`
--

INSERT INTO `versioni` (`idversioni`, `num_versione`) VALUES
(1, 2.2),
(2, 100);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anni`
--
ALTER TABLE `anni`
  ADD PRIMARY KEY (`idanni`);

--
-- Indices de la tabla `appartamenti`
--
ALTER TABLE `appartamenti`
  ADD PRIMARY KEY (`idappartamenti`);

--
-- Indices de la tabla `beniinventario`
--
ALTER TABLE `beniinventario`
  ADD PRIMARY KEY (`idbeniinventario`);

--
-- Indices de la tabla `casse`
--
ALTER TABLE `casse`
  ADD PRIMARY KEY (`idcasse`);

--
-- Indices de la tabla `citta`
--
ALTER TABLE `citta`
  ADD PRIMARY KEY (`idcitta`);

--
-- Indices de la tabla `clienti`
--
ALTER TABLE `clienti`
  ADD PRIMARY KEY (`idclienti`);

--
-- Indices de la tabla `costi2017`
--
ALTER TABLE `costi2017`
  ADD UNIQUE KEY `idcosti` (`idcosti`);

--
-- Indices de la tabla `costiprenota2017`
--
ALTER TABLE `costiprenota2017`
  ADD PRIMARY KEY (`idcostiprenota`),
  ADD KEY `iidpcostiprenota2017` (`idprenota`);

--
-- Indices de la tabla `documentiid`
--
ALTER TABLE `documentiid`
  ADD PRIMARY KEY (`iddocumentiid`);

--
-- Indices de la tabla `gruppi`
--
ALTER TABLE `gruppi`
  ADD PRIMARY KEY (`idgruppi`);

--
-- Indices de la tabla `magazzini`
--
ALTER TABLE `magazzini`
  ADD PRIMARY KEY (`idmagazzini`);

--
-- Indices de la tabla `messaggi`
--
ALTER TABLE `messaggi`
  ADD PRIMARY KEY (`idmessaggi`);

--
-- Indices de la tabla `nazioni`
--
ALTER TABLE `nazioni`
  ADD PRIMARY KEY (`idnazioni`);

--
-- Indices de la tabla `parentele`
--
ALTER TABLE `parentele`
  ADD PRIMARY KEY (`idparentele`);

--
-- Indices de la tabla `periodi2017`
--
ALTER TABLE `periodi2017`
  ADD PRIMARY KEY (`idperiodi`);

--
-- Indices de la tabla `prenota2017`
--
ALTER TABLE `prenota2017`
  ADD PRIMARY KEY (`idprenota`);

--
-- Indices de la tabla `rclientiprenota2017`
--
ALTER TABLE `rclientiprenota2017`
  ADD KEY `iidprclientiprenota2017` (`idprenota`);

--
-- Indices de la tabla `regioni`
--
ALTER TABLE `regioni`
  ADD PRIMARY KEY (`idregioni`);

--
-- Indices de la tabla `relclienti`
--
ALTER TABLE `relclienti`
  ADD KEY `iidprelclienti` (`idclienti`);

--
-- Indices de la tabla `relgruppi`
--
ALTER TABLE `relgruppi`
  ADD KEY `iidprelgruppi` (`idutente`);

--
-- Indices de la tabla `relinventario`
--
ALTER TABLE `relinventario`
  ADD KEY `iidprelinventario` (`idbeneinventario`);

--
-- Indices de la tabla `relutenti`
--
ALTER TABLE `relutenti`
  ADD KEY `iidprelutenti` (`idutente`);

--
-- Indices de la tabla `sessioni`
--
ALTER TABLE `sessioni`
  ADD PRIMARY KEY (`idsessioni`);

--
-- Indices de la tabla `soldi2017`
--
ALTER TABLE `soldi2017`
  ADD UNIQUE KEY `idsoldi` (`idsoldi`);

--
-- Indices de la tabla `transazioni`
--
ALTER TABLE `transazioni`
  ADD PRIMARY KEY (`idtransazioni`);

--
-- Indices de la tabla `transazioniweb`
--
ALTER TABLE `transazioniweb`
  ADD PRIMARY KEY (`idtransazioni`);

--
-- Indices de la tabla `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`idutenti`);

--
-- Indices de la tabla `versioni`
--
ALTER TABLE `versioni`
  ADD PRIMARY KEY (`idversioni`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
