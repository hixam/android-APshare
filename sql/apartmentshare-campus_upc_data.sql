-- MySQL dump 10.13  Distrib 5.6.25, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: apartmentsharedb
-- ------------------------------------------------------
-- Server version	5.6.25-0ubuntu0.15.04.1

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
-- Table structure for table `campus_upc`
--

DROP TABLE IF EXISTS `campus_upc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campus_upc` (
  `id` binary(16) NOT NULL,
  `campusname` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `longitud` float(17,14) NOT NULL,
  `latitud` float(17,14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campus_upc`
--

LOCK TABLES `campus_upc` WRITE;
/*!40000 ALTER TABLE `campus_upc` DISABLE KEYS */;
INSERT INTO `campus_upc` VALUES ('�j�V�|��0[','FIB','Carrer Jordi Girona, 1-3, 08034 Barcelona',2.11404061317444,41.38759994506836),('$1�޹Q�|��0[','EPSEM','Av. de les Bases de Manresa, 61-73 ,  08240 Manresa, Barcelona',1.82898998260498,41.73680114746094),(')����S�|��0[','ETSAB','Av. Diagonal, 649, 08028 Barcelona',2.11403894424438,41.38432312011719),('5Y3�U�|��0[','ETSEIB','Av. Diagonal, 647, 08028 Barcelona',2.11524629592896,41.38487243652344),('5/���W�|��0[','EEI','Pla de la Massa, 8, 08700 Igualada',1.59245598316193,41.58333587646484),('Mb(��V�|��0[','FME','Carrer Pau Gargallo, 5, 08028 Barcelona',2.11391282081604,41.38319015502930),('j}>1�W�|��0[','EUETIB','Carrer Comte d\'Urgell, 187, 08036 Barcelona',2.14910960197449,41.38883972167969),('m1���S�|��0[','ETSAV','Carrer Pere Serra, 1-15, 08173, Sant Cugat del Vallès',2.07026004791260,41.47040176391602),('tzkU�Q�|��0[','EET','Carrer Colom 1 ,  08222 Terrassa, Barcelona',2.02231621742249,41.56409835815430),('y�I����\0#�l�','EETAC','Av. del Canal Olimpic, 7 08860 Castelldefels Barcelona, España',1.99207901954651,41.27210235595703),('��ڹV�|��0[','FNB','Plaça Pla de Palau, 18, 08003 Barcelona',2.18832373619080,41.62305450439453),('�����T�|��0[','ETSEIAT','Carrer Colom, 11 08222, Terrassa',2.02269768714905,41.56263732910156),('�&���L�|��0[','EPSEB','Av. Doctor Marañón, 44-50, 08028 Barcelona, España',2.11277484893799,41.38390731811523),('��jx�U�|��0[','ETSETB','Carrer Jordi Girona, 1-3, 08034 Barcelona',2.11317563056946,41.38738250732422),('�D��S�|��0[','ETSECCPB','Carrer Jordi Girona, 1-3, 08034 Barcelona',2.11365699768066,41.38761138916016),('�s�Q�|��0[','EPSEVG','Av. Víctor Balaguer, 1, 08800, Vilanova i la Geltrú',1.72980999946594,41.22145080566406),('����V�|��0[','CFIS','Carrer Pau Gargallo, 5, 08028 Barcelona',2.11537456512451,41.38359832763672),('����U�|��0[','FOOT','Carrer Violinista Vellsolà, 37, 08222 Terrassa',2.02391290664673,41.56849670410156),('�ͪE�R�|��0[','ESAB','Carrer ESteve Terradas, 8, 08860 Castelldefels, Barcelona',1.98691999912262,41.27616119384766),('��v�V�|��0[','CITM','Carrer de la Igualtat, 33, 08222 Terrassa',2.01957583427429,41.56215667724609);
/*!40000 ALTER TABLE `campus_upc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-12 19:44:22
