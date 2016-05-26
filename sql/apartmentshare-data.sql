-- MySQL dump 10.13  Distrib 5.6.26, for Win64 (x86_64)
--
-- Host: localhost    Database: apartmentsharedb
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `auth_tokens`
--

DROP TABLE IF EXISTS `auth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_tokens` (
  `userid` binary(16) NOT NULL,
  `token` binary(16) NOT NULL,
  PRIMARY KEY (`token`),
  KEY `userid` (`userid`),
  CONSTRAINT `auth_tokens_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_tokens`
--

LOCK TABLES `auth_tokens` WRITE;
/*!40000 ALTER TABLE `auth_tokens` DISABLE KEYS */;
INSERT INTO `auth_tokens` VALUES ('�ْ�:�:\0#�l�','��:�:\0#�l�'),('uߡ���\0#�l�','WQ3��:�:\0#�l�'),('.J�\"����\0#�l�','.L�����\0#�l�'),('T��y����\0#�l�','T�Q����\0#�l�'),('���\Z�0�:\0#�l�','���خ0�:\0#�l�'),('��������\0#�l�','��U�����\0#�l�');
/*!40000 ALTER TABLE `auth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `campus_upc` VALUES ('1���X�8\0#�l�','EETAC2','Av. del Canal Olimpic, 7 08860 Castelldefels Barcelona, España',41.27210235595703,1.99207901954651),('y�I����\0#�l�','EETAC','Av. del Canal Olimpic, 7 08860 Castelldefels Barcelona, España',41.27210235595703,1.99207901954651),('���.�W�8\0#�l�','EETAC2','Av. del Canal Olimpic, 7 08860 Castelldefels Barcelona, España',41.27210235595703,1.99207901954651);
/*!40000 ALTER TABLE `campus_upc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flat`
--

DROP TABLE IF EXISTS `flat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flat` (
  `id` binary(16) NOT NULL,
  `userid` binary(16) NOT NULL,
  `campusid` binary(16) NOT NULL,
  `numpartner` int(11) NOT NULL,
  `smoker` int(11) NOT NULL,
  `pets` int(11) NOT NULL,
  `girlorboy` int(11) NOT NULL,
  `sqm` int(11) NOT NULL,
  `furnished` int(11) NOT NULL,
  `numrooms` int(11) NOT NULL,
  `numbathrooms` int(11) NOT NULL,
  `elevator` int(11) NOT NULL,
  `plantnum` int(11) NOT NULL,
  `internet` int(11) NOT NULL,
  `fianza` int(11) NOT NULL,
  `estancia` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creation_timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `campusid` (`campusid`),
  CONSTRAINT `flat_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `flat_ibfk_2` FOREIGN KEY (`campusid`) REFERENCES `campus_upc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flat`
--

LOCK TABLES `flat` WRITE;
/*!40000 ALTER TABLE `flat` DISABLE KEYS */;
INSERT INTO `flat` VALUES ('��G���4\0#�l�','.J�\"����\0#�l�','y�I����\0#�l�',4,1,2,0,82,1,3,2,1,4,1,200,3,'Pompeu Fabra 240, Castelldefels','Piso soleado de mañana a tardes, bien comunicado en tres y autobus','2015-12-29 17:56:34','2015-12-21 16:46:33'),('	kJ���\0#�l�','T��y����\0#�l�','y�I����\0#�l�',6,0,2,0,145,1,6,2,0,3,1,275,4,'Carrer Manresa, 21, Castelldefels, Barcelona','Piso reformado','2015-12-29 18:03:23','2015-12-27 16:32:28'),('$���%呸\0#�l�','.J�\"����\0#�l�','y�I����\0#�l�',4,2,2,1,82,1,3,2,1,4,1,200,3,'Pompeu Fabra 20, Castelldefels','Piso soleado de mañana a tardes, bien comunicado en tres y autobus','2015-12-29 17:57:51','2015-12-21 21:55:18'),('4�Z����\0#�l�','uߡ���\0#�l�','y�I����\0#�l�',3,2,1,0,95,1,3,1,1,2,1,215,3,'Carrer de la Coruña, 28, Castelldefels, Barcelona','Piso soleado de mañana a tardes, bien comunicado en tres y autobus','2015-12-29 17:57:51','2015-12-27 16:19:22'),('��+쬭�\0#�l�','T��y����\0#�l�','y�I����\0#�l�',2,1,1,1,45,1,2,1,0,0,0,175,6,'Carrer Molinot, 9,  Castelldefels, Barcelona','Piso soleado de mañana a tardes, bien comunicado en tres y autobus','2015-12-27 15:21:54','2015-12-27 16:21:54'),('�Z;̨%呸\0#�l�','.J�\"����\0#�l�','y�I����\0#�l�',4,2,2,0,82,1,3,2,1,4,1,200,3,'Pompeu Fabra 18, Castelldefels','Piso soleado de mañana a tardes, bien comunicado en tres y autobus','2015-12-29 17:59:31','2015-12-21 21:58:47'),('�.a���\0#�l�','uߡ���\0#�l�','y�I����\0#�l�',2,1,0,2,74,1,2,1,0,1,1,200,2,'Carrer de Joaquim Folguera, 23, Gavà, Barcelona','Piso soleado de mañana a tardes, bien comunicado en tres y autobus','2015-12-27 15:17:51','2015-12-27 16:17:51');
/*!40000 ALTER TABLE `flat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagenflat`
--

DROP TABLE IF EXISTS `imagenflat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagenflat` (
  `id` binary(16) NOT NULL,
  `flatid` binary(16) NOT NULL,
  `filename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flatid` (`flatid`),
  CONSTRAINT `imagenflat_ibfk_1` FOREIGN KEY (`flatid`) REFERENCES `flat` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenflat`
--

LOCK TABLES `imagenflat` WRITE;
/*!40000 ALTER TABLE `imagenflat` DISABLE KEYS */;
INSERT INTO `imagenflat` VALUES (')D�����\0#�l�','	kJ���\0#�l�','e0348111-4c3c-48d1-88e5-dc37f465c175.png'),('>�2����\0#�l�','��+쬭�\0#�l�','559c1eea-6a23-4c54-a2de-e1e515b50b08.png'),('q�\'��m��\0#�l�','4�Z����\0#�l�','5ef926a5-60a2-45e6-abf2-97c24b26a6fd.png'),('�L�#����\0#�l�','�Z;̨%呸\0#�l�','d37c1a20-5754-4674-962c-def191da986c.png'),('�� ����\0#�l�','��G���4\0#�l�','b7fe3c97-b18e-4f5e-a9a3-30cae2d3fb0d.png');
/*!40000 ALTER TABLE `imagenflat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagenroom`
--

DROP TABLE IF EXISTS `imagenroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagenroom` (
  `id` binary(16) NOT NULL,
  `roomid` binary(16) NOT NULL,
  `filename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roomid` (`roomid`),
  CONSTRAINT `imagenroom_ibfk_1` FOREIGN KEY (`roomid`) REFERENCES `room` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenroom`
--

LOCK TABLES `imagenroom` WRITE;
/*!40000 ALTER TABLE `imagenroom` DISABLE KEYS */;
INSERT INTO `imagenroom` VALUES ('*ck�����\0#�l�','\',̀���\0#�l�','f53b9392-af16-4a45-a6c9-fd4af7764fc2.png'),('-�\"u�=��\0#�l�','6<dJ���\0#�l�','18a56d37-5e83-45e2-84fc-262d43632457.png'),('3J�����\0#�l�','J�F=���\0#�l�','9896f30b-1683-4dd6-adea-0a235711454f.png'),('L�F�����\0#�l�','�k!6���\0#�l�','68b8fbbc-2529-46a9-861b-82c3d7ec08e0.png'),('Q��_����\0#�l�','��欱�\0#�l�','c77c9313-bb09-4ce7-af21-d72d8df5b2bb.png'),('V�X����\0#�l�','���#���\0#�l�','a0b32c35-19b3-41b3-8e81-ec420ccf8bf3.png'),('\\V�����\0#�l�','��;����\0#�l�','9a322176-0b57-411f-8522-5a6ff002e88f.png'),('s�I�����\0#�l�','�y�A���\0#�l�','258f185d-41f1-4d75-b3d6-db5b98971279.png'),('z{և����\0#�l�','���{���\0#�l�','229c66dd-5604-459e-a6f5-3d6af3c68610.png'),('{�jz�m��\0#�l�','6<dJ���\0#�l�','40e64d1a-5d42-4e45-b8f8-68449d0e8039.png'),('�7����\0#�l�','�#����\0#�l�','37f0bcdc-7818-436c-8b6b-99034c455ff1.png'),('�\'������\0#�l�','���{���\0#�l�','7077fef5-fd06-4da1-a13f-955c2b1b257f.png'),('�?����\0#�l�','������\0#�l�','29409adf-5a71-4588-87d4-349db62caccd.png');
/*!40000 ALTER TABLE `imagenroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` binary(16) NOT NULL,
  `fromuser` binary(16) NOT NULL,
  `touser` binary(16) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `creation_timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fromuser` (`fromuser`),
  KEY `touser` (`touser`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`fromuser`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`touser`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES ('?�P���~\0#�l�','.J�\"����\0#�l�','���\Z�0�:\0#�l�','Esto es un mensaje de prueba','2016-01-09 16:45:31'),('�����~\0#�l�','���\Z�0�:\0#�l�','.J�\"����\0#�l�','Esto es un mensaje de prueba','2016-01-09 16:59:59'),('\\��}��\0#�l�','T��y����\0#�l�','T��y����\0#�l�','Esto es un mensaje de prueba tb 3','2016-01-10 10:32:41'),('K~����~\0#�l�','���\Z�0�:\0#�l�','.J�\"����\0#�l�','Esto es un mensaje de prueba','2016-01-09 17:07:46'),('&n���}��\0#�l�','T��y����\0#�l�','.J�\"����\0#�l�','Esto es un mensaje de prueba tb 3','2016-01-10 10:33:04'),('K\'ȶ��~\0#�l�','���\Z�0�:\0#�l�','.J�\"����\0#�l�','Esto es un mensaje de prueba','2016-01-09 17:09:00'),('K(�D���~\0#�l�','���\Z�0�:\0#�l�','.J�\"����\0#�l�','Esto es un mensaje de prueba','2016-01-09 16:54:41'),('`�����~\0#�l�','���\Z�0�:\0#�l�','.J�\"����\0#�l�','Esto es un mensaje de prueba','2016-01-09 17:09:36'),('b:�����~\0#�l�','���\Z�0�:\0#�l�','.J�\"����\0#�l�','Esto es un mensaje de prueba','2016-01-09 16:48:10'),('d�����~\0#�l�','���\Z�0�:\0#�l�','.J�\"����\0#�l�','Esto es un mensaje de prueba','2016-01-09 16:55:23'),('q5�����\0#�l�','���\Z�0�:\0#�l�','.J�\"����\0#�l�','Esto es un mensaje de prueba de email para el replyto','2016-01-10 11:46:45'),('r����~\0#�l�','���\Z�0�:\0#�l�','.J�\"����\0#�l�','Esto es un mensaje de prueba','2016-01-09 17:10:06'),('{����\0#�l�','���\Z�0�:\0#�l�','.J�\"����\0#�l�','Esto es un mensaje de prueba de email que se grabará también como mensaje','2016-01-10 11:25:34'),('��󝷄��\0#�l�','���\Z�0�:\0#�l�','.J�\"����\0#�l�','Esto es un mensaje de prueba de email que se grabará también como mensaje','2016-01-10 11:25:47'),('�����z��\0#�l�','uߡ���\0#�l�','T��y����\0#�l�','Esto es un mensaje de prueba tb','2016-01-10 10:14:34'),('�Iw��z��\0#�l�','uߡ���\0#�l�','T��y����\0#�l�','Esto es un mensaje de prueba tb','2016-01-10 10:14:35'),('���ҷz��\0#�l�','uߡ���\0#�l�','T��y����\0#�l�','Esto es un mensaje de prueba tb','2016-01-10 10:14:36'),('��ٷz��\0#�l�','uߡ���\0#�l�','.J�\"����\0#�l�','Esto es un mensaje de prueba tb','2016-01-10 10:14:41'),('�P�\Z�z��\0#�l�','uߡ���\0#�l�','.J�\"����\0#�l�','Esto es un mensaje de prueba tb','2016-01-10 10:14:42'),('�����z��\0#�l�','T��y����\0#�l�','.J�\"����\0#�l�','Esto es un mensaje de prueba tb 2','2016-01-10 10:14:56'),('�w>�z��\0#�l�','T��y����\0#�l�','.J�\"����\0#�l�','Esto es un mensaje de prueba tb 2','2016-01-10 10:14:56'),('�P?>�z��\0#�l�','T��y����\0#�l�','.J�\"����\0#�l�','Esto es un mensaje de prueba tb 2','2016-01-10 10:14:57'),('��筷y��\0#�l�','���\Z�0�:\0#�l�','T��y����\0#�l�','Esto es un mensaje de prueba tb','2016-01-10 10:07:53'),('����z��\0#�l�','T��y����\0#�l�','T��y����\0#�l�','Esto es un mensaje de prueba tb 3','2016-01-10 10:15:03'),('�����z��\0#�l�','T��y����\0#�l�','T��y����\0#�l�','Esto es un mensaje de prueba tb 3','2016-01-10 10:15:04'),('��B8�z��\0#�l�','T��y����\0#�l�','T��y����\0#�l�','Esto es un mensaje de prueba tb 3','2016-01-10 10:15:05'),('�^y����~\0#�l�','���\Z�0�:\0#�l�','.J�\"����\0#�l�','Esto es un mensaje de prueba','2016-01-09 16:51:30'),('�<Y�����\0#�l�','���\Z�0�:\0#�l�','.J�\"����\0#�l�','Esto es un mensaje de prueba de email que se grabará también como mensaje','2016-01-10 11:29:05');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id` binary(16) NOT NULL,
  `flatid` binary(16) NOT NULL,
  `userid` binary(16) NOT NULL,
  `girlorboy` int(11) NOT NULL,
  `sqm` int(11) NOT NULL,
  `furnished` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creation_timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `flatid` (`flatid`),
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `room_ibfk_2` FOREIGN KEY (`flatid`) REFERENCES `flat` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES ('	K�����\0#�l�','�.a���\0#�l�','uߡ���\0#�l�',2,9,0,1,200,'Cerca de la playa','2015-12-29 18:13:25','2015-12-27 16:46:47'),('\',̀���\0#�l�','4�Z����\0#�l�','uߡ���\0#�l�',1,12,1,1,275,'Vistas amplias','2015-12-27 15:47:37','2015-12-27 16:47:37'),('0�nO���\0#�l�','$���%呸\0#�l�','.J�\"����\0#�l�',1,16,1,1,350,'Muy iluminado en verano','2015-12-27 15:38:25','2015-12-22 15:56:32'),('6<dJ���\0#�l�','4�Z����\0#�l�','uߡ���\0#�l�',1,10,1,0,215,'Habitación bien distribuida','2015-12-27 15:48:03','2015-12-27 16:48:03'),('<=▨��\0#�l�','$���%呸\0#�l�','.J�\"����\0#�l�',1,10,1,1,300,'Muy iluminado en verano','2015-12-29 18:14:07','2015-12-22 15:56:52'),('J�F=���\0#�l�','4�Z����\0#�l�','uߡ���\0#�l�',1,8,0,1,200,'Silenciosa y confortable','2015-12-27 15:48:37','2015-12-27 16:48:37'),('e������\0#�l�','��+쬭�\0#�l�','T��y����\0#�l�',1,18,1,1,350,'Paraiso','2015-12-29 18:13:51','2015-12-27 16:49:23'),('u��⬱�\0#�l�','��+쬭�\0#�l�','T��y����\0#�l�',1,15,1,1,325,'Paraiso terrenal','2015-12-29 18:13:51','2015-12-27 16:49:49'),('���#���\0#�l�','	kJ���\0#�l�','T��y����\0#�l�',1,9,1,1,225,'Acogedora','2015-12-27 15:50:55','2015-12-27 16:50:55'),('��;����\0#�l�','	kJ���\0#�l�','T��y����\0#�l�',2,7,1,1,235,'Encantadora','2015-12-27 15:51:20','2015-12-27 16:51:20'),('��欱�\0#�l�','	kJ���\0#�l�','T��y����\0#�l�',1,9,1,1,255,'Ideal estudiantes, muy silenciosa','2015-12-27 15:51:51','2015-12-27 16:51:51'),('�#����\0#�l�','�Z;̨%呸\0#�l�','.J�\"����\0#�l�',1,8,1,0,275,'Muy iluminado en verano','2015-12-22 15:43:50','2015-12-22 16:43:50'),('�y�A���\0#�l�','�Z;̨%呸\0#�l�','.J�\"����\0#�l�',1,8,1,1,275,'Muy iluminado en verano','2015-12-27 15:40:59','2015-12-22 16:43:53'),('�k!6���\0#�l�','	kJ���\0#�l�','T��y����\0#�l�',1,9,1,0,300,'Vistas al mar y montaña','2015-12-27 15:52:18','2015-12-27 16:52:18'),('���{���\0#�l�','�Z;̨%呸\0#�l�','.J�\"����\0#�l�',1,8,1,1,275,'Muy iluminado en verano','2015-12-27 15:41:16','2015-12-22 16:43:55'),('�WB���\0#�l�','��G���4\0#�l�','.J�\"����\0#�l�',1,8,1,1,275,'Muy iluminado en verano','2015-12-27 15:41:33','2015-12-22 16:43:56'),('������\0#�l�','��G���4\0#�l�','.J�\"����\0#�l�',1,9,1,0,275,'Muy iluminado en verano','2015-12-27 15:39:55','2015-12-22 16:29:41'),('�pX2���\0#�l�','	kJ���\0#�l�','T��y����\0#�l�',2,14,1,1,400,'Con terraza individual','2015-12-27 15:52:57','2015-12-27 16:52:57'),('� �֬��\0#�l�','�.a���\0#�l�','uߡ���\0#�l�',2,5,0,1,150,'Cerca de la playa','2015-12-29 18:13:25','2015-12-27 16:46:20');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `userid` binary(16) NOT NULL,
  `role` enum('registered','administrator') NOT NULL DEFAULT 'registered',
  PRIMARY KEY (`userid`,`role`),
  CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES ('�ْ�:�:\0#�l�','registered'),('uߡ���\0#�l�','registered'),('.J�\"����\0#�l�','registered'),('T��y����\0#�l�','registered'),('���\Z�0�:\0#�l�','registered'),('��������\0#�l�','administrator');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` binary(16) NOT NULL,
  `loginid` varchar(15) NOT NULL,
  `password` binary(16) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loginid` (`loginid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('�ْ�:�:\0#�l�','Pedro','�ܛ�R�M�\06��1>�U','Pedro Sanchez','pedro@apartmentshare.eetac.upc.edu','222333777'),('uߡ���\0#�l�','jordi','�ܛ�R�M�\06��1>�U','Jordi López','jordi@apartmentshare.eetac.upc.edu','666555444'),('.J�\"����\0#�l�','marcelus','�ܛ�R�M�\06��1>�U','Marcelus Zeron','marcelus@apartmentshare.eetac.upc.edu','777888999'),('T��y����\0#�l�','Ruben','�ܛ�R�M�\06��1>�U','Ruben Molina','ruben@apartmentshare.eetac.upc.edu','666555111'),('���\Z�0�:\0#�l�','Victor','�ܛ�R�M�\06��1>�U','Victor Perez','victor@apartmentshare.eetac.upc.edu','543987561'),('��������\0#�l�','admin','�ܛ�R�M�\06��1>�U','admin','admin@apartmentshare.eetac,upc.edu','666666666');
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

-- Dump completed on 2016-01-12 19:55:26
