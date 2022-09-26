CREATE DATABASE  IF NOT EXISTS `eventos_artisticos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `eventos_artisticos`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: eventos_artisticos
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artista` (
  `Id_Art` int NOT NULL AUTO_INCREMENT,
  `Art_Email` varchar(30) NOT NULL,
  `Art_Name` varchar(20) NOT NULL,
  `Art_Cuit` varchar(13) NOT NULL,
  `Art_Phone` varchar(20) NOT NULL,
  `Art_Sueldo` int NOT NULL,
  PRIMARY KEY (`Id_Art`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,'Rolo@colo.co','Rolitos','20328526545','1156279541',50000),(2,'bigger@gmail.com','Bigger','2029850215','1196325574',80000),(3,'Parte@planeta.nx','Parteplaneta','2092582624','1154859541',10000),(4,'modificacion@Empleado_Caja','Empleado_Caja','20328526545','1156279541',59590),(5,'insercion@usuario','Empleado_Caja','20328526545','1156279541',59590),(6,'marilina@connor.net','ConnorQuesta','20385226545','1153521441',150000),(7,'sickporky@terra.es','Sick Proky','20388556545','1153521152',140000),(8,'masqueuno@fiell.tk','Mas que uno','27552226545','116361441',120000),(9,'Aura@hotmail.com','Aura','2038588595','1159999441',100000),(10,'Crux@gmail.com','Crux','27352698524','1152632595',80000),(11,'reaccion@terra.es','Reaccion','20259523258','1152632595',120000);
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_espec`
--

DROP TABLE IF EXISTS `emp_espec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_espec` (
  `Id_Emp_Espec` int NOT NULL,
  `Emp_Espec_Desc` varchar(20) NOT NULL,
  PRIMARY KEY (`Id_Emp_Espec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_espec`
--

LOCK TABLES `emp_espec` WRITE;
/*!40000 ALTER TABLE `emp_espec` DISABLE KEYS */;
INSERT INTO `emp_espec` VALUES (1,'sonido'),(2,'iluminacion'),(3,'seguridad'),(4,'electricidad'),(5,'Atencion al publico');
/*!40000 ALTER TABLE `emp_espec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `Id_Emp` int NOT NULL AUTO_INCREMENT,
  `Emp_Espec` int NOT NULL,
  `Emp_Email` varchar(30) NOT NULL,
  `Emp_Name` varchar(20) NOT NULL,
  `Emp_Lastname` varchar(20) NOT NULL,
  `Emp_Phone` varchar(20) NOT NULL,
  `Emp_Cuit` varchar(13) NOT NULL,
  `Emp_Sueldo` int NOT NULL,
  PRIMARY KEY (`Id_Emp`),
  KEY `Emp_Espec` (`Emp_Espec`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`Emp_Espec`) REFERENCES `emp_espec` (`Id_Emp_Espec`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,1,'ramones@gmail.com','Guillermo','Gonzalez','118563547','275232552',15000),(2,2,'lean@fito.es','Leandro','Ousset','118751547','277732552',12000),(3,3,'Jorge@hotmail.com','Jorge','Lista','118441547','277785252',11000),(4,1,'machinga@gmail.com','Mario','Avalos','29413','32625212584',65000),(5,1,'carlos@lujan.net','Carlos','Lujan','29985262587','20361259525',95000),(6,4,'Maximan@sierra.tl','Maximiliano','Fernandez','2995526325','20253269524',52000),(7,5,'carlajor@hotmail.com','Carla','Gastavina','112635265','20272595214',65000),(8,5,'mtx2525@gmail.com','Martin','Righy','1152635258','202596325874',35000),(9,2,'canbu@ircap.cl','Camilo','Pont','2995263215','20326952152',85000),(10,1,'teronio@gmail.com','Alejandro','perez','1195623321','20121598856',85000);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `espacio`
--

DROP TABLE IF EXISTS `espacio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `espacio` (
  `Id_Esp` int NOT NULL AUTO_INCREMENT,
  `Esp_Adress` varchar(30) NOT NULL,
  `Esp_Email` varchar(30) NOT NULL,
  `Esp_Name` varchar(20) NOT NULL,
  `Esp_Capacity` int NOT NULL,
  `Esp_Phone` varchar(20) NOT NULL,
  `Esp_Alquiler` int NOT NULL,
  PRIMARY KEY (`Id_Esp`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `espacio`
--

LOCK TABLES `espacio` WRITE;
/*!40000 ALTER TABLE `espacio` DISABLE KEYS */;
INSERT INTO `espacio` VALUES (1,'Alcorta 622','Quimica@flow.com','Quimica',5000,'299256354',200000),(2,'niceto 922','niceto@terra.com','niceto',2500,'116538555',250000),(3,'Corrientes 52','Emergente@ortuzar.co','Emergente',1600,'119562541',130000),(5,'Gorriti 1255','luxor@gmail.com','Luxor',5000,'1152636258',15000),(6,'Av Garay 2500','turben@yahoo.com','Turbina',600,'1152636258',75000),(7,'pringles 250','Uron@gmail.com','Uron',1000,'1152636258',90000),(8,'Rivera indarte 1520','pibes@hotmail.com','Paves',6000,'1152636258',12000),(9,'Mendoza 590','Hattori@gmail.com','Hattori',3000,'1152636258',100000),(10,'gallardo 145','delviento@hotmail.com','Teatro del Viento',700,'2995526325',150000);
/*!40000 ALTER TABLE `espacio` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_espacio` AFTER INSERT ON `espacio` FOR EACH ROW BEGIN
insert into log_espacio (Id_Esp, Esp_Adress,Esp_Email,Esp_Name, Esp_Capacity, 
Esp_Phone, Esp_Alquiler,  NOMBRE_DE_ACCION,
NOMBRE_TABLA, USUARIO, FECHA_UPD_INS_DEL)
values (new.id_esp, new.Esp_Adress, new.Esp_Email, new.Esp_Name, new.Esp_Capacity, 
new.Esp_Phone, new.Esp_Alquiler, 'update',
'espacio', CURRENT_USER(), NOW());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_del_espacio` BEFORE DELETE ON `espacio` FOR EACH ROW BEGIN
insert into log_espacio (Id_Esp, Esp_Adress,Esp_Email,Esp_Name, Esp_Capacity, Esp_Phone,  
esp_alquiler ,NOMBRE_DE_ACCION, NOMBRE_TABLA, USUARIO, FECHA_UPD_INS_DEL)
values (old.id_esp, old.Esp_Adress, old.Esp_Email, old.Esp_Name, old.Esp_Capacity, old.Esp_Phone, 
old.Esp_alquiler, 'delete', 'espacio', CURRENT_USER(), NOW());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento` (
  `Id_Event` int NOT NULL AUTO_INCREMENT,
  `Event_Date` date NOT NULL,
  `Event_Name` varchar(15) NOT NULL,
  `Event_Prod` int NOT NULL,
  `Event_Esp` int NOT NULL,
  `Event_Art` int NOT NULL,
  `Event_Emp` int NOT NULL,
  `Event_Prov` int NOT NULL,
  `Event_Entrada` int NOT NULL,
  PRIMARY KEY (`Id_Event`),
  KEY `Event_Prod` (`Event_Prod`),
  KEY `Event_Art` (`Event_Art`),
  KEY `Event_Emp` (`Event_Emp`),
  KEY `Event_Prov` (`Event_Prov`),
  KEY `Event_Esp` (`Event_Esp`),
  CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`Event_Prod`) REFERENCES `productor` (`Id_Prod`),
  CONSTRAINT `evento_ibfk_2` FOREIGN KEY (`Event_Art`) REFERENCES `artista` (`Id_Art`),
  CONSTRAINT `evento_ibfk_3` FOREIGN KEY (`Event_Emp`) REFERENCES `empleado` (`Id_Emp`),
  CONSTRAINT `evento_ibfk_4` FOREIGN KEY (`Event_Prov`) REFERENCES `proveedor` (`Id_Prov`),
  CONSTRAINT `evento_ibfk_5` FOREIGN KEY (`Event_Esp`) REFERENCES `espacio` (`Id_Esp`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (1,'2023-03-12','Gerard Fest',2,1,1,3,2,1200),(2,'2023-08-03','Salamuth',3,2,3,3,1,1500),(3,'2023-06-05','Freedom ice',1,1,2,2,4,2500),(5,'2022-08-12','Rucker',5,6,2,1,4,1958),(6,'2022-12-15','Goliath',1,1,1,1,1,320),(7,'2023-05-06','Musmano Fest',9,5,6,7,2,350),(8,'2022-11-25','Trapping',6,3,8,2,4,975),(9,'2023-01-25','Taruga corp',6,9,7,5,1,650),(10,'2023-06-12','Coder Fest',7,6,9,10,5,2750);
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_espacio`
--

DROP TABLE IF EXISTS `log_espacio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_espacio` (
  `Id_log` int NOT NULL AUTO_INCREMENT,
  `Id_Esp` int NOT NULL,
  `Esp_Adress` varchar(30) NOT NULL,
  `Esp_Email` varchar(30) NOT NULL,
  `Esp_Name` varchar(20) NOT NULL,
  `Esp_Capacity` int NOT NULL,
  `Esp_Phone` varchar(20) NOT NULL,
  `Esp_Alquiler` int NOT NULL,
  `NOMBRE_DE_ACCION` varchar(10) DEFAULT NULL,
  `NOMBRE_TABLA` varchar(50) DEFAULT NULL,
  `USUARIO` varchar(100) DEFAULT NULL,
  `FECHA_UPD_INS_DEL` datetime DEFAULT NULL,
  PRIMARY KEY (`Id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_espacio`
--

LOCK TABLES `log_espacio` WRITE;
/*!40000 ALTER TABLE `log_espacio` DISABLE KEYS */;
INSERT INTO `log_espacio` VALUES (1,4,'corrientes 150','Magarelo@pepe.com','Taxonomi',15000,'29246354',150000,'update','espacio','root@localhost','2022-08-22 20:30:33'),(2,4,'corrientes 150','Magarelo@pepe.com','Taxonomi',15000,'29246354',150000,'delete','espacio','root@localhost','2022-08-22 20:30:34'),(3,5,'Gorriti 1255','luxor@gmail.com','Luxor',5000,'1152636258',15000,'update','espacio','root@localhost','2022-09-12 14:42:44'),(4,6,'Av Garay 2500','turben@yahoo.com','Turbina',600,'1152636258',75000,'update','espacio','root@localhost','2022-09-12 14:43:33'),(5,7,'pringles 250','Uron@gmail.com','Uron',1000,'1152636258',90000,'update','espacio','root@localhost','2022-09-12 14:44:31'),(6,8,'Rivera indarte 1520','pibes@hotmail.com','Paves',6000,'1152636258',12000,'update','espacio','root@localhost','2022-09-12 14:45:41'),(7,9,'Mendoza 590','Hattori@gmail.com','Hattori',3000,'1152636258',100000,'update','espacio','root@localhost','2022-09-12 14:46:27'),(8,10,'Corrientes 5890','Leveriun@gmail.com','Leverium',9500,'1152636258',200000,'update','espacio','root@localhost','2022-09-12 14:47:13'),(9,11,'gallardo 145','delviento@hotmail.com','Teatro del Viento',700,'2995526325',150000,'update','espacio','root@localhost','2022-09-13 12:34:57'),(10,11,'corrientes 150','Magarelo@pepe.com','Taxonomi',15000,'29246354',150000,'update','espacio','root@localhost','2022-09-26 11:09:57'),(11,4,'Corrientes 5890','Leveriun@gmail.com','Leverium',9500,'1152636258',200000,'delete','espacio','root@localhost','2022-09-26 11:09:57'),(12,12,'corrientes 150','Magarelo@pepe.com','Taxonomi',15000,'29246354',150000,'update','espacio','root@localhost','2022-09-26 11:11:22'),(13,11,'corrientes 150','Magarelo@pepe.com','Taxonomi',15000,'29246354',150000,'delete','espacio','root@localhost','2022-09-26 11:20:05'),(14,12,'corrientes 150','Magarelo@pepe.com','Taxonomi',15000,'29246354',150000,'delete','espacio','root@localhost','2022-09-26 11:20:17');
/*!40000 ALTER TABLE `log_espacio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_productor`
--

DROP TABLE IF EXISTS `log_productor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_productor` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `Id_Prod` int NOT NULL,
  `Prod_Name` varchar(20) NOT NULL,
  `Prod_LastName` varchar(20) NOT NULL,
  `Prod_Phone` varchar(20) NOT NULL,
  `Prod_Email` varchar(30) NOT NULL,
  `Prod_Cuit` varchar(13) NOT NULL,
  `Prod_Sueldo` int DEFAULT NULL,
  `NOMBRE_DE_ACCION` varchar(10) DEFAULT NULL,
  `NOMBRE_TABLA` varchar(50) DEFAULT NULL,
  `USUARIO` varchar(100) DEFAULT NULL,
  `FECHA_UPD_INS_DEL` datetime DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_productor`
--

LOCK TABLES `log_productor` WRITE;
/*!40000 ALTER TABLE `log_productor` DISABLE KEYS */;
INSERT INTO `log_productor` VALUES (1,2,'Luciano','Villace','115982632','luciano@human.com','203269547',45000,'update','productor','root@localhost','2022-08-22 20:30:34'),(2,4,'Chengo','Gonzales','220536254','chengo@rosario.pk','254021685',42000,'insert','productor','root@localhost','2022-08-22 20:30:35'),(3,5,'Luz','Espeche','1165952315','luzespeche@gmail.com','2127256329955',50000,'insert','productor','root@localhost','2022-09-12 15:45:11'),(4,6,'Nicolas','Gandin','29415268524','nicogan@rocca.tr','23256995221',35000,'insert','productor','root@localhost','2022-09-12 15:45:59'),(5,7,'Juan','Gutierrez','029445523695','caizo@gmail.com','20369985558',45000,'insert','productor','root@localhost','2022-09-12 15:46:39'),(6,8,'Pablo','contreras','1166988521','pablocont85@urban.mx','26126958852',112000,'insert','productor','root@localhost','2022-09-12 15:48:15'),(7,9,'Miguel','gerez','24469853211','miguelger@ate.org','25186631485',95000,'insert','productor','root@localhost','2022-09-12 15:49:14'),(8,10,'Mauricio','Beltrame','2994265315','beltramemau@neuquen.gov','20158526325',125000,'insert','productor','root@localhost','2022-09-12 15:51:48'),(9,2,'Luciano','Villace','115383662','luciano@human.com','203269547',45000,'update','productor','root@localhost','2022-09-26 11:09:57'),(10,11,'Chengo','Gonzales','220536254','chengo@rosario.pk','254021685',42000,'insert','productor','root@localhost','2022-09-26 11:09:58'),(11,2,'Luciano','Villace','115383662','luciano@human.com','203269547',45000,'update','productor','root@localhost','2022-09-26 11:11:23'),(12,12,'Chengo','Gonzales','220536254','chengo@rosario.pk','254021685',42000,'insert','productor','root@localhost','2022-09-26 11:11:23');
/*!40000 ALTER TABLE `log_productor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productor`
--

DROP TABLE IF EXISTS `productor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productor` (
  `Id_Prod` int NOT NULL AUTO_INCREMENT,
  `Prod_Name` varchar(20) NOT NULL,
  `Prod_LastName` varchar(20) NOT NULL,
  `Prod_Phone` varchar(20) NOT NULL,
  `Prod_Email` varchar(30) NOT NULL,
  `Prod_Cuit` varchar(13) NOT NULL,
  `Prod_Sueldo` int NOT NULL,
  PRIMARY KEY (`Id_Prod`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productor`
--

LOCK TABLES `productor` WRITE;
/*!40000 ALTER TABLE `productor` DISABLE KEYS */;
INSERT INTO `productor` VALUES (1,'Maru','Polak','119536254','maru@polak.pk','273021685',35000),(2,'Luciano','Villace','115383662','luciano@human.com','203269547',45000),(3,'Fernando','taborda','118526582','oliver@knos.com','20255652',40000),(4,'Chengo','Gonzales','220536254','chengo@rosario.pk','254021685',42000),(5,'Luz','Espeche','1165952315','luzespeche@gmail.com','2127256329955',50000),(6,'Nicolas','Gandin','29415268524','nicogan@rocca.tr','23256995221',35000),(7,'Juan','Gutierrez','029445523695','caizo@gmail.com','20369985558',45000),(8,'Pablo','contreras','1166988521','pablocont85@urban.mx','26126958852',112000),(9,'Miguel','gerez','24469853211','miguelger@ate.org','25186631485',95000),(10,'Mauricio','Beltrame','2994265315','beltramemau@neuquen.gov','20158526325',125000);
/*!40000 ALTER TABLE `productor` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_ins_productor` AFTER INSERT ON `productor` FOR EACH ROW BEGIN
insert into log_productor 
(Id_Prod, Prod_Name, Prod_LastName, Prod_Phone, Prod_Email, 
Prod_Cuit, prod_Sueldo, NOMBRE_DE_ACCION, NOMBRE_TABLA, USUARIO, FECHA_UPD_INS_DEL)
values (new.Id_Prod, new.Prod_Name, new.Prod_LastName, new.Prod_Phone, new.Prod_Email, 
new.Prod_Cuit, new.prod_sueldo, 'insert', 'productor', CURRENT_USER(), NOW());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_upd_productor` BEFORE UPDATE ON `productor` FOR EACH ROW BEGIN
insert into log_productor 
(Id_Prod, Prod_Name, Prod_LastName, Prod_Phone, Prod_Email, 
Prod_Cuit, Prod_Sueldo , NOMBRE_DE_ACCION, NOMBRE_TABLA, USUARIO, FECHA_UPD_INS_DEL)
values (old.Id_Prod, old.Prod_Name, old.Prod_LastName, old.Prod_Phone, old.Prod_Email, 
old.Prod_Cuit, old.Prod_Sueldo, 'update', 'productor', CURRENT_USER(), NOW());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `prov_tipo`
--

DROP TABLE IF EXISTS `prov_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prov_tipo` (
  `Id_Prov_Tipo` int NOT NULL,
  `Prov_Tipo_Desc` varchar(20) NOT NULL,
  PRIMARY KEY (`Id_Prov_Tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prov_tipo`
--

LOCK TABLES `prov_tipo` WRITE;
/*!40000 ALTER TABLE `prov_tipo` DISABLE KEYS */;
INSERT INTO `prov_tipo` VALUES (1,'catering'),(2,'transporte'),(3,'iluminacion'),(4,'sonido'),(5,'imprenta'),(6,'merchandising');
/*!40000 ALTER TABLE `prov_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `Id_Prov` int NOT NULL AUTO_INCREMENT,
  `Prov_Tipo` int NOT NULL,
  `Prov_Email` varchar(30) NOT NULL,
  `Prov_Name` varchar(15) NOT NULL,
  `Prov_Phone` varchar(20) NOT NULL,
  `Prov_Cuit` varchar(13) NOT NULL,
  `Prov_Costo` int NOT NULL,
  PRIMARY KEY (`Id_Prov`),
  KEY `Prov_Tipo` (`Prov_Tipo`),
  CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`Prov_Tipo`) REFERENCES `prov_tipo` (`Id_Prov_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,1,'polloshermanos@fringe.tx','Pollos hermanos','1159268856','302596215',20000),(2,3,'thunder@force.jp','Thunder Force','299862354','329665834',25000),(3,2,'transoceanica@terra.es','Transoceanica','220536504','359558610',17000),(4,5,'impremax@yahoo.com','Impremax','118965324','362201479',15000),(5,4,'Ultrasound@hotmail.com','Ultra Sound','1153268852','33253652258',25000),(6,6,'martinmerc@terra.es','Martin Merch','1152632585','20259635585',85000),(7,2,'conosur@rionegro.org','Cono Sur','29416328542','30956632245',50000),(8,4,'humanoestudio@gmail.com','Estudio Humano','1144268752','30365582214',65000),(9,6,'Martinmerch@hotmail.com','Martin Merch','1152632995','20286658521',70000),(10,1,'fatimagik@hotmail.com','Fati Magik','1162415265','20419182045',40000);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_2023_events`
--

DROP TABLE IF EXISTS `vw_2023_events`;
/*!50001 DROP VIEW IF EXISTS `vw_2023_events`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_2023_events` AS SELECT 
 1 AS `Eventos de Marzo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_activeemp_23`
--

DROP TABLE IF EXISTS `vw_activeemp_23`;
/*!50001 DROP VIEW IF EXISTS `vw_activeemp_23`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_activeemp_23` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_emails`
--

DROP TABLE IF EXISTS `vw_emails`;
/*!50001 DROP VIEW IF EXISTS `vw_emails`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_emails` AS SELECT 
 1 AS `Productores`,
 1 AS `Empleados`,
 1 AS `Proveedores`,
 1 AS `Artistas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_emp_sueldos`
--

DROP TABLE IF EXISTS `vw_emp_sueldos`;
/*!50001 DROP VIEW IF EXISTS `vw_emp_sueldos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_emp_sueldos` AS SELECT 
 1 AS `Sueldos del Personal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_prod_sueldo_max50000`
--

DROP TABLE IF EXISTS `vw_prod_sueldo_max50000`;
/*!50001 DROP VIEW IF EXISTS `vw_prod_sueldo_max50000`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_prod_sueldo_max50000` AS SELECT 
 1 AS `Nombre`,
 1 AS `Apellido`,
 1 AS `Telefono`,
 1 AS `Sueldo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_spacescapacity`
--

DROP TABLE IF EXISTS `vw_spacescapacity`;
/*!50001 DROP VIEW IF EXISTS `vw_spacescapacity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_spacescapacity` AS SELECT 
 1 AS `Nombre`,
 1 AS `Capacidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'eventos_artisticos'
--

--
-- Dumping routines for database 'eventos_artisticos'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_calculo_entrada` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_calculo_entrada`(id_evento int) RETURNS int
    DETERMINISTIC
begin
declare Calculo_entrada int ;
declare costoganancia int;
declare capacidadespacio int;
set costoganancia = (select eventos_artisticos.fn_costo_evento(id_evento)*5);
set capacidadespacio = (select Esp_Capacity from espacio 
where Id_Esp= (select event_esp from evento where id_event = id_evento));
select (costoganancia / capacidadespacio
) into Calculo_entrada ;
return Calculo_entrada ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_capacidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_capacidad`( cantidad int ) RETURNS int
    DETERMINISTIC
BEGIN 
DECLARE  NUMERO INT;
set numero = (SELECT count(esp_capacity) FROM espacio 
WHERE esp_capacity > cantidad) ;
RETURN NUMERO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_costo_evento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_costo_evento`(id_evento int) RETURNS int
    DETERMINISTIC
begin
declare Costo_Evento int ;
select (
(select Prod_Sueldo from productor where Id_Prod = (select event_prod from evento where Id_Event = id_evento))+
(select emp_sueldo from empleado where id_emp = (select event_emp from evento where Id_Event = id_evento))+
(select art_sueldo from artista where id_art = (select event_art from evento where Id_Event = id_evento))+
(select prov_costo from proveedor where id_prov = (select event_prov from evento where Id_Event = id_evento))+
(select Esp_Alquiler from espacio where Id_Esp = (select event_esp from evento where Id_Event = id_evento))
) into Costo_Evento  ;
return costo_evento ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_evento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_evento`(id int) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
begin
declare eventofecha varchar (100);
select concat(event_name,'  ', event_date) as Nombre_del_Evento_y_Fecha from evento
where id_event = id into eventofecha;
return eventofecha;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_del_artista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_del_artista`(in p_id_art int )
begin
  delete from artista where id_art = p_id_art;
  end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_artista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_artista`(
 inout p_art_Email varchar(30) ,
 inout p_art_Name varchar(20) ,
 inout p_art_Phone varchar(20) ,
 inout p_art_Cuit varchar(13),
 inout p_art_Sueldo int )
begin
  insert into artista ( art_Email, art_Name, art_Phone, art_Cuit, art_Sueldo )
  values (@p_art_Email, @p_art_Name, @p_art_Phone, @p_art_Cuit, @p_art_Sueldo);
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_empleado`(inout p_Emp_Espec int ,
 inout p_Emp_Email varchar(30) ,
 inout p_Emp_Name varchar(20) ,
 inout p_Emp_Lastname varchar(20) ,
 inout p_Emp_Phone varchar(20) ,
 inout p_Emp_Cuit varchar(13),
 inout p_Emp_Sueldo int )
begin
  insert into empleado ( Emp_Espec, Emp_Email, Emp_Name, Emp_Lastname, Emp_Phone, Emp_Cuit, Emp_Sueldo )
  values (@p_Emp_Espec, @p_Emp_Email, @p_Emp_Name, @p_Emp_Lastname , @p_Emp_Phone, @p_Emp_Cuit, @p_Emp_Sueldo);
  end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_espacio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_espacio`(inout p_esp_adress varchar (30),
 inout p_esp_Email varchar(30) ,
 inout p_esp_Name varchar(20) ,
 inout p_esp_capacity int ,
 inout p_esp_phone varchar(13),
 inout p_esp_alquiler int )
begin
  insert into espacio ( esp_adress, esp_Email, esp_Name, esp_capacity, esp_phone, esp_alquiler )
  values (@p_esp_adress, @p_esp_Email, @p_esp_Name, @p_esp_capacity, @p_esp_phone, @p_esp_alquiler );
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_evento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_evento`( inout p_Event_Date date,
 inout p_Event_Name varchar (15) ,
 inout p_Event_Prod int,
 inout p_Event_Esp int ,
 inout p_Event_Art int,
 inout p_Event_Emp int,
 inout p_Event_Prov int,
 out p_event_entrada int)
begin
   declare p_Event_Entrada int;
   set @p_Event_Entrada = ((
(select Prod_Sueldo from productor where Id_Prod = p_Event_Prod)+
(select emp_sueldo from empleado where id_emp = p_Event_Emp)+
(select art_sueldo from artista where id_art = p_Event_Art)+
(select prov_costo from proveedor where id_prov = p_Event_Prov)+
(select Esp_Alquiler from espacio where Id_Esp = p_Event_Esp)
) * 5) / (select esp_capacity from espacio where id_esp = p_Event_Esp); 
  insert into evento ( Event_Date, Event_Name, Event_Prod, Event_Esp, Event_Art, 
  Event_Emp, Event_Prov, Event_Entrada )
  values (@p_Event_Date, @p_Event_Name, @p_Event_Prod, @p_Event_Esp, 
  @p_Event_Art, @p_Event_Emp, @p_Event_Prov, @p_Event_Entrada);
  	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_productor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_productor`( inout p_prod_Name varchar(20) ,
 inout p_prod_lastname varchar (20) ,
 inout p_prod_phone varchar(13),
 inout p_prod_Email varchar(30) ,
 inout p_prod_cuit varchar (13),
 inout p_prod_sueldo int )
begin
  insert into productor ( Prod_Name, Prod_LastName, Prod_Phone, Prod_Email, Prod_Cuit, Prod_Sueldo)
  values (@p_prod_Name, @p_prod_lastname, @p_prod_phone, @p_prod_Email, @p_prod_cuit, @p_prod_sueldo );
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_proveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_proveedor`( inout p_Prov_Tipo int ,
 inout p_Prov_Email varchar (30) ,
 inout p_Prov_Name varchar(15),
 inout p_Prov_Phone varchar(20) ,
 inout p_Prov_Cuit varchar (13),
 inout p_Prov_Costo int )
begin
  insert into proveedor ( Prov_Tipo, Prov_Email, Prov_Name, Prov_Phone, Prov_Cuit, Prov_Costo)
  values (@p_Prov_Tipo, @p_Prov_Email, @p_Prov_Name, @p_Prov_Phone, @p_Prov_Cuit, @p_Prov_Costo );
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_log_prod` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_log_prod`(inout p_days int)
begin
select * from log_productor where DATE_SUB(CURDATE(),  INTERVAL @p_days DAY)  < date(fecha_upd_ins_del) ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ordenar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ordenar`(inout param_table varchar (32), inout param_order varchar (32), inout param_asc_desc varchar(32))
begin
set @t1 = concat('select * from ' , param_table, ' u order by', ' ', param_order, ' ', param_asc_desc);
prepare param_stmt from @t1;
execute param_stmt;
deallocate prepare param_stmt;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_2023_events`
--

/*!50001 DROP VIEW IF EXISTS `vw_2023_events`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_2023_events` AS select `evento`.`Event_Name` AS `Eventos de Marzo` from `evento` where (`evento`.`Event_Date` between 20230101 and 20231231) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_activeemp_23`
--

/*!50001 DROP VIEW IF EXISTS `vw_activeemp_23`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_activeemp_23` AS select `productor`.`Prod_Name` AS `nombre`,`productor`.`Prod_LastName` AS `apellido` from `productor` union select `empleado`.`Emp_Name` AS `Emp_Name`,`empleado`.`Emp_Lastname` AS `emp_lastname` from `empleado` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_emails`
--

/*!50001 DROP VIEW IF EXISTS `vw_emails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_emails` AS select `p`.`Prod_Email` AS `Productores`,`e`.`Emp_Email` AS `Empleados`,`pr`.`Prov_Email` AS `Proveedores`,`a`.`Art_Email` AS `Artistas` from (((`productor` `p` join `empleado` `e` on((`e`.`Id_Emp` = `p`.`Id_Prod`))) join `proveedor` `pr` on((`p`.`Id_Prod` = `pr`.`Id_Prov`))) join `artista` `a` on((`pr`.`Id_Prov` = `a`.`Id_Art`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_emp_sueldos`
--

/*!50001 DROP VIEW IF EXISTS `vw_emp_sueldos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_emp_sueldos` AS select sum(`empleado`.`Emp_Sueldo`) AS `Sueldos del Personal` from `empleado` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_prod_sueldo_max50000`
--

/*!50001 DROP VIEW IF EXISTS `vw_prod_sueldo_max50000`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_prod_sueldo_max50000` AS select `productor`.`Prod_Name` AS `Nombre`,`productor`.`Prod_LastName` AS `Apellido`,`productor`.`Prod_Phone` AS `Telefono`,`productor`.`Prod_Sueldo` AS `Sueldo` from `productor` where (`productor`.`Prod_Sueldo` <= 50000) order by `productor`.`Prod_Sueldo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_spacescapacity`
--

/*!50001 DROP VIEW IF EXISTS `vw_spacescapacity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_spacescapacity` AS select `espacio`.`Esp_Name` AS `Nombre`,`espacio`.`Esp_Capacity` AS `Capacidad` from `espacio` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-26 11:22:40
