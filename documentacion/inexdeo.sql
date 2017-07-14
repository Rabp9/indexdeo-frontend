-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: robertobocanegra.com    Database: rabp99_inexdeo
-- ------------------------------------------------------
-- Server version	5.5.51-38.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asesorias`
--

DROP TABLE IF EXISTS `asesorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asesorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `resumen` varchar(300) NOT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_asesorias_estados1_idx` (`estado_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asesorias`
--

LOCK TABLES `asesorias` WRITE;
/*!40000 ALTER TABLE `asesorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `asesorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(100) NOT NULL,
  `ruc` varchar(11) NOT NULL,
  `latitud` varchar(100) DEFAULT NULL,
  `longitud` varchar(100) DEFAULT NULL,
  `ciudad` varchar(60) DEFAULT NULL,
  `rubro` varchar(60) NOT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  UNIQUE KEY `ruc_UNIQUE` (`ruc`),
  KEY `fk_clientes_estados1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'DWP GRUPO S.R.L.','20477241809',NULL,NULL,NULL,'RUBRO X',1);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controller_roles`
--

DROP TABLE IF EXISTS `controller_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controller_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rol_id` int(11) NOT NULL,
  `controller_id` int(11) NOT NULL,
  `permiso` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`,`rol_id`,`controller_id`),
  KEY `fk_controller_roles_roles1_idx` (`rol_id`),
  KEY `fk_controller_roles_controllers1_idx` (`controller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controller_roles`
--

LOCK TABLES `controller_roles` WRITE;
/*!40000 ALTER TABLE `controller_roles` DISABLE KEYS */;
INSERT INTO `controller_roles` VALUES (1,1,1,1),(2,1,2,1),(3,1,3,1),(4,1,4,1),(5,1,5,1),(6,1,6,1),(7,1,7,1),(8,1,8,1),(9,1,9,1),(10,1,10,1),(11,1,11,1);
/*!40000 ALTER TABLE `controller_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controllers`
--

DROP TABLE IF EXISTS `controllers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controllers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) NOT NULL,
  `controller_name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controllers`
--

LOCK TABLES `controllers` WRITE;
/*!40000 ALTER TABLE `controllers` DISABLE KEYS */;
INSERT INTO `controllers` VALUES (1,'Información General','infoGeneral'),(2,'Slider','slider'),(3,'Nosotros','nosotros'),(4,'Productos','productos'),(5,'Clientes','clientes'),(6,'Obras','obras'),(7,'Páginas','pages'),(8,'Convocatorias','convocatorias'),(9,'Tipo de Sugerencias','tipoSugerencias'),(10,'Roles','roles'),(11,'Usuarios','users'),(12,'Asesorías','asesorias');
/*!40000 ALTER TABLE `controllers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convocatorias`
--

DROP TABLE IF EXISTS `convocatorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `convocatorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `documentacion` varchar(100) NOT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_convocatorais_estados1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convocatorias`
--

LOCK TABLES `convocatorias` WRITE;
/*!40000 ALTER TABLE `convocatorias` DISABLE KEYS */;
INSERT INTO `convocatorias` VALUES (1,'Convocatoria 1','2017-04-19','doc-RB5rzb',1);
/*!40000 ALTER TABLE `convocatorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_sugerencias`
--

DROP TABLE IF EXISTS `detalle_sugerencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_sugerencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_sugerencia_id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  PRIMARY KEY (`id`,`tipo_sugerencia_id`),
  KEY `fk_detale_sugerencias_tipo_sugerencias1_idx` (`tipo_sugerencia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_sugerencias`
--

LOCK TABLES `detalle_sugerencias` WRITE;
/*!40000 ALTER TABLE `detalle_sugerencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_sugerencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'activo'),(2,'inactivo');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infos`
--

DROP TABLE IF EXISTS `infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(60) DEFAULT NULL,
  `value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infos`
--

LOCK TABLES `infos` WRITE;
/*!40000 ALTER TABLE `infos` DISABLE KEYS */;
INSERT INTO `infos` VALUES (1,'nuestraHistoria','<p>Hace 6 a&ntilde;os, El Sr. Guillermo Vel&aacute;squez Castro en su af&aacute;n de realizar Negocios emprendedores y dar respuesta a la necesidad de mejorar el saneamiento y agua de la poblaci&oacute;n crea en conjunto con su socio la planta de fabrica...'),(2,'vision','<p class=\"MsoNormal\">Que nuestra instituci&oacute;n sea reconocida como una empresa l&iacute;der en el mercado local, nacional y mundial en el rubro de la construcci&oacute;n y miner&iacute;a, a trav&eacute;s de compromisos con responsabilidad social y respeto por el medio ambiente; y valores de &eacute;tica profesional.&nbsp;</p>'),(3,'mision','<p class=\"MsoNormal\" style=\"text-align: justify;\">Sobrepasar las expectativas de todos los requerimientos de nuestros clientes tanto en el rubro de la construcci&oacute;n de obras civiles como en la extracci&oacute;n de minerales, a trav&eacute;s de la implementaci&oacute;n de procesos de calidad en nuestros productos y servicios.</p>'),(4,'valor1','Trabajo en equipo'),(5,'valor2','Unidad'),(6,'valor3','Profesionalismo'),(7,'valor4','Lealtad'),(8,'valor5','Acción'),(9,'valor6','Servicio'),(10,'valor7','Tenacidad'),(11,'resumen_tuplast','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean a finibus sapien, vel tristique nulla. Cras a velit tincidunt, euismod dolor non, posuere nulla. Nam blandit id massa ac maximus. Nam vel justo augue. Proin pharetra nunc lacus, laoreet posu...'),(12,'mensaje_clientes_1','Nuestros clientes confian en la calidad de nuestros productos'),(13,'mensaje_clientes_2','Son más de 40 empresas con las que trabajamos conjuntamente'),(14,'facebook_link','http://www.facebook.com/inexcelsisdeosa/'),(15,'linkedin_link','linkedin_link'),(16,'telf_oficina','044-659230'),(17,'email','in.excelsis.deo@outlook.es'),(18,'email_2','info@tuberiasplasticas.com'),(19,'telf_area_tecnica','982579831'),(20,'brochure','brochure'),(21,'telf','044-278699'),(22,'promo_inexdeo','Somos la empresa líder en Minería y Construcción del norte del país'),(23,'quienes_somos','Somos una empresa fundada desde el 2011 dedica al rubro de minería y construcción de obras civiles en todo el territorio nacional. Contamos con un staff de experimentados colaboradores que diseñan, ejecutan y dirigen nuestros proyectos; además nos dedicamos a la extracción de minerales metálicos y no metálicos.'),(24,'direccion','Jr. Diego de Almagro 270 Int. 101 Centro Cívico de Trujillo'),(25,'historia','<p class=\"MsoNormal\">Nuestra instituci&oacute;n empez&oacute; sus operaciones en el a&ntilde;o 2011, fundada por la familia Rodr&iacute;guez Ruiz. Conformada en sus inicios por diez socios se comenz&oacute; a trabajar en el rubro de la miner&iacute;a en la sierra liberte&ntilde;a, para luego en el 2014 incursionar en el rubro de la construcci&oacute;n de obras civiles.</p>\n<p class=\"MsoNormal\">Observando la demanda de los servicios de construcci&oacute;n, la empresa decidi&oacute; ampliar sus operaciones en el a&ntilde;o 2014 a varias regiones del norte del pa&iacute;s, entre ellas las regiones de Cajamarca, Ancash&nbsp;y La Libertad.</p>\n<p>&nbsp;En la actualidad nuestra empresa viene evolucionando sus procesos de mejora continua para brindar servicios y productos de la mejor calidad y consolidarnos como una empresa de prestigio en la regi&oacute;n.</p>'),(26,'productos_mensaje','<p class=\"MsoNormal\"><span style=\"font-size: 16pt;\">Dedicados a la exploraci&oacute;n y explotaci&oacute;n de oro, comercializamos el mineral cumpliendo todas las normas y pol&iacute;ticas de la gerencia de energ&iacute;a y minas.</span></p>'),(27,'servicios_mensaje','<p class=\"MsoNormal\"><span style=\"font-size: 16pt;\">Nuestra instituci&oacute;n cuenta con un staff de profesionales dedicados a la formulaci&oacute;n y elaboraci&oacute;n de proyectos de todo tipo de envergadura.</span></p>'),(28,'proyectos_mensaje','<p class=\"MsoNormal\"><span style=\"font-size: 16pt;\">A lo largo del tiempo vamos construyendo sue&ntilde;os de familias y comunidades, por ello ponemos a su disposici&oacute;n toda nuestra experiencia, log&iacute;stica y conocimiento para la realizaci&oacute;n de esos proyectos que tanto anhelan.</span></p>');
/*!40000 ALTER TABLE `infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `menu` char(2) NOT NULL,
  `body` longtext NOT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_pages_estados1_idx` (`estado_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `politicas`
--

DROP TABLE IF EXISTS `politicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `politicas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `body` longtext,
  `url` varchar(100) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_politicas_estados1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `politicas`
--

LOCK TABLES `politicas` WRITE;
/*!40000 ALTER TABLE `politicas` DISABLE KEYS */;
INSERT INTO `politicas` VALUES (1,'Política de Calidad','<p class=\"MsoListParagraph\" style=\"text-align: justify; line-height: 150%;\"><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Arial\',sans-serif;\">Tuplast se compromete a fabricar y comercializar tuber&iacute;as de PVC-U de calidad para proyectos de agua y saneamiento, comercio, industria y miner&iacute;a; mediante la planificaci&oacute;n, seguimiento y control de todas las etapas; orientados siempre a la mejora continua de nuestros procesos; del sistema de gesti&oacute;n de la calidad, cumpliendo los requisitos de los clientes, legales y normativos; logrando su satisfacci&oacute;n.&nbsp;</span></p>',NULL,1),(2,'Política de Seguridad Salud Ocupacional y medio ambiente','<p class=\"MsoNormal\" style=\"text-align: justify; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Tuplast tiene como prioridad la seguridad y salud de sus colaboradores, proveedores, clientes, terceros y la de sus subcontratistas. Nuestra filosof&iacute;a se basa en el cuidado del principal recurso que tenemos, nuestro capital humano. Por tal motivo nos comprometemos a:</span></p>\n<p class=\"MsoListParagraphCxSpFirst\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">1.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Implementar y desarrollar el sistema de gesti&oacute;n de seguridad y salud ocupacional en todos sus procesos y ambiente de trabajo.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">2.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Cumplir con la normatividad y legislaci&oacute;n nacional vigente y aplicable, as&iacute; como los est&aacute;ndares de calidad a nuestra actividad econ&oacute;mica relacionada con la seguridad y salud ocupacional</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">3.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Promover y elevar la concientizaci&oacute;n por la seguridad y el medio ambiente realizando programas de capacitaci&oacute;n con el objetivo de elevar nuestra cultura de seguridad y ecol&oacute;gica.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">4.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Elaborar, aplicar, mantener est&aacute;ndares y procedimientos de trabajo seguro.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">5.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Establecer un sistema de controles y auditorias que permitan mejorar continuamente su sistema de gesti&oacute;n de seguridad y salud ocupacional.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">6.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Incentivar la participaci&oacute;n activa de los colaboradores en forma eficaz y segura a emergencias y/o accidentes relacionados a la seguridad y salud ocupacional.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p>&nbsp;</p>\n<p class=\"MsoListParagraphCxSpLast\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">7.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Difundir la presente pol&iacute;tica a todos sus colaboradores y&nbsp; mantenerla a disposici&oacute;n y vista de todos sus visitantes, siendo actualizada seg&uacute;n las necesidades de la empresa y las leyes vigentes.</span></p>',NULL,1),(3,'Política de Seguridad Integral','<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">En Tuplast cuidamos la integridad de nuestros colaboradores por lo que consideramos lo siguiente:</span></p>\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraph\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\">&Oslash;<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">Todo colaborador de la empresa que vea amenazado su integridad f&iacute;sica o su vida ante un peligro inminente (sea en una actividad que constituya un riesgo importante o intolerable para su seguridad y salud); podr&aacute; tener la faculta de interrumpir sus actividades y si fuera necesario abandonar de forma inmediata el lugar o &aacute;rea donde se desarrollan sus labores, hasta que el riesgo se haya reducido o controlado.</span></p>\n<p>&nbsp;</p>\n<p class=\"MsoNormal\" style=\"margin-left: 35.45pt; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">La presente pol&iacute;tica se ha establecido para dar cumplimiento con la Ley de Seguridad y Salud en el Trabajo Ley N&deg; 29783 Articulo 63 y su modificatoria de Ley N&deg; 30222 sobre la <strong>Interrupci&oacute;n de actividades en caso inminente de peligro,&nbsp;</strong></span></p>',NULL,1);
/*!40000 ALTER TABLE `politicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_images`
--

DROP TABLE IF EXISTS `producto_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producto_id` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `title` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`,`producto_id`),
  KEY `fk_images_productos1_idx` (`producto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_images`
--

LOCK TABLES `producto_images` WRITE;
/*!40000 ALTER TABLE `producto_images` DISABLE KEYS */;
INSERT INTO `producto_images` VALUES (1,1,'producto-111111',''),(2,1,'producto-222222',''),(5,1,'producto-333333',NULL);
/*!40000 ALTER TABLE `producto_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(60) DEFAULT NULL,
  `body` longtext NOT NULL,
  `resumen` varchar(300) NOT NULL,
  `brochure` varchar(60) DEFAULT NULL,
  `img_portada` varchar(90) DEFAULT NULL,
  `portada` tinyint(1) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_productos_estados1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Productos',NULL,'<p>Dedicados a la exploración y explotación de oro, comercializamos el mineral  cumpliendo todas las normas y políticas de la gerencia de energía y minas. Por lo cual puede contratar acciones comerciales con nosotros, todo bajo el estricto orden de las leyes vigentes. Para Mayor información contáctenos en nuestras múltiples plataformas digitales o visítenos en nuestra oficina principal que gustosamente le atenderemos.</p>','<p>Dedicados a la exploración y explotación de oro, comercializamos el mineral  cumpliendo todas las normas y políticas de la gerencia de energía y minas. </p>',NULL,'producto-123456',1,1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto_images`
--

DROP TABLE IF EXISTS `proyecto_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyecto_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proyecto_id` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`proyecto_id`),
  KEY `fk_proyecto_images_proyectos1_idx` (`proyecto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto_images`
--

LOCK TABLES `proyecto_images` WRITE;
/*!40000 ALTER TABLE `proyecto_images` DISABLE KEYS */;
INSERT INTO `proyecto_images` VALUES (1,1,'proyecto-111111'),(2,1,'proyecto-222222'),(3,2,'proyecto-333333'),(4,2,'proyecto-444444'),(5,4,'proyecto-555555'),(6,4,'proyecto-666666'),(7,4,'proyecto-777777'),(8,4,'proyecto-888888'),(9,4,'proyecto-999999'),(10,4,'proyecto-111112'),(11,4,'proyecto-111113'),(12,4,'proyecto-111114');
/*!40000 ALTER TABLE `proyecto_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(60) DEFAULT NULL,
  `body` longtext NOT NULL,
  `resumen` varchar(300) NOT NULL,
  `brochure` varchar(60) DEFAULT NULL,
  `img_portada` varchar(90) DEFAULT NULL,
  `portada` tinyint(1) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_obras_estados1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectos`
--

LOCK TABLES `proyectos` WRITE;
/*!40000 ALTER TABLE `proyectos` DISABLE KEYS */;
INSERT INTO `proyectos` VALUES (1,'Mejoramiento vial comunidad de San Ignacio, Jaén, Cajamarca',NULL,'','',NULL,'proyecto-123456',0,1),(2,'Oficina Administrativa Urb. California',NULL,'','',NULL,'proyecto-654321',0,1),(3,'Viviendas Unifamiliares',NULL,'','',NULL,'proyecto-457824',1,1),(4,'Proyecto de habilitación urbana “La Colina”',NULL,'<p>Conjunto habitacional de más de 250 casas de 3 pisos cada una, perímetro cercado, vigilado las 24 horas y control de acceso biométrico; entre otros beneficios que le brindará nuestro proyecto, el más moderno de la región norte del país.</p><p><h3>Ubicación del Proyecto</h3><dl><dt>Distrito</dt><dd>Nuevo Chimbote</dd><dt>Provincia</dt><dd>Santa</dd><dt>Región</dt><dd>Ancash</dd></dl></p>','<p>Conjunto habitacional de más de 250 casas de 3 pisos cada una, perímetro cercado, vigilado las 24 horas y control de acceso biométrico</p>',NULL,'proyecto-456785',0,1);
/*!40000 ALTER TABLE `proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_roles_estados1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador',1);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio_images`
--

DROP TABLE IF EXISTS `servicio_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicio_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `servicio_id` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`servicio_id`),
  KEY `fk_servicio_images_servicios1_idx` (`servicio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio_images`
--

LOCK TABLES `servicio_images` WRITE;
/*!40000 ALTER TABLE `servicio_images` DISABLE KEYS */;
INSERT INTO `servicio_images` VALUES (1,1,'servicio-111111'),(2,1,'servicio-222222'),(3,1,'servicio-333333'),(4,1,'servicio-444444');
/*!40000 ALTER TABLE `servicio_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(60) DEFAULT NULL,
  `body` longtext NOT NULL,
  `resumen` varchar(300) NOT NULL,
  `brochure` varchar(60) DEFAULT NULL,
  `img_portada` varchar(90) DEFAULT NULL,
  `portada` tinyint(1) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_obras_estados1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,'Servicios',NULL,'<p>Nuestra institución cuenta con un staff de profesionales dedicados a la formulación y elaboración de proyectos de todo tipo de envergadura. Formulamos el sustento técnico de obras civiles así como el diseño arquitectónico de los proyectos solicitados por nuestros clientes. Visite nuestra galería para conocer un poco más de nuestros trabajos.</p>','<p>Nuestra institución cuenta con un staff de profesionales dedicados a la formulación y elaboración de proyectos de todo tipo de envergadura.</p>',NULL,'servicio-123456',NULL,1);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `contenido` text,
  `orden` int(11) DEFAULT NULL,
  `color` varchar(6) DEFAULT NULL,
  `color_bg` varchar(6) DEFAULT NULL,
  `portada` tinyint(1) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_slides_estados_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` VALUES (1,'Slide 1','img-YIARgG','Slide 1',NULL,NULL,NULL,NULL,1),(2,NULL,'img-NaBazb',NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_sugerencias`
--

DROP TABLE IF EXISTS `tipo_sugerencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_sugerencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) NOT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_tipo_sugerencias_estados1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_sugerencias`
--

LOCK TABLES `tipo_sugerencias` WRITE;
/*!40000 ALTER TABLE `tipo_sugerencias` DISABLE KEYS */;
INSERT INTO `tipo_sugerencias` VALUES (1,'Ventas',1);
/*!40000 ALTER TABLE `tipo_sugerencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rol_id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(120) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`rol_id`,`estado_id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `fk_users_estados1_idx` (`estado_id`),
  KEY `fk_users_roles1_idx` (`rol_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'admin','$2y$10$d9jEoXrUzl3xw6mJQEbZcOEMjnSXH17P6un4atIiHQzz1.t0fhEhG','admin@tuplast.com',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-13 12:32:20
