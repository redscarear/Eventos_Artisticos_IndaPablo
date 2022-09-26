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
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,'Rolo@colo.co','Rolitos','20328526545','1156279541',50000),(2,'bigger@gmail.com','Bigger','2029850215','1196325574',80000),(3,'Parte@planeta.nx','Parteplaneta','2092582624','1154859541',10000),(4,'modificacion@Empleado_Caja','Empleado_Caja','20328526545','1156279541',59590),(5,'insercion@usuario','Empleado_Caja','20328526545','1156279541',59590),(6,'marilina@connor.net','ConnorQuesta','20385226545','1153521441',150000),(7,'sickporky@terra.es','Sick Proky','20388556545','1153521152',140000),(8,'masqueuno@fiell.tk','Mas que uno','27552226545','116361441',120000),(9,'Aura@hotmail.com','Aura','2038588595','1159999441',100000),(10,'Crux@gmail.com','Crux','27352698524','1152632595',80000),(11,'reaccion@terra.es','Reaccion','20259523258','1152632595',120000);
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `emp_espec`
--

LOCK TABLES `emp_espec` WRITE;
/*!40000 ALTER TABLE `emp_espec` DISABLE KEYS */;
INSERT INTO `emp_espec` VALUES (1,'sonido'),(2,'iluminacion'),(3,'seguridad'),(4,'electricidad'),(5,'Atencion al publico');
/*!40000 ALTER TABLE `emp_espec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,1,'ramones@gmail.com','Guillermo','Gonzalez','118563547','275232552',15000),(2,2,'lean@fito.es','Leandro','Ousset','118751547','277732552',12000),(3,3,'Jorge@hotmail.com','Jorge','Lista','118441547','277785252',11000),(4,1,'machinga@gmail.com','Mario','Avalos','29413','32625212584',65000),(5,1,'carlos@lujan.net','Carlos','Lujan','29985262587','20361259525',95000),(6,4,'Maximan@sierra.tl','Maximiliano','Fernandez','2995526325','20253269524',52000),(7,5,'carlajor@hotmail.com','Carla','Gastavina','112635265','20272595214',65000),(8,5,'mtx2525@gmail.com','Martin','Righy','1152635258','202596325874',35000),(9,2,'canbu@ircap.cl','Camilo','Pont','2995263215','20326952152',85000),(10,1,'teronio@gmail.com','Alejandro','perez','1195623321','20121598856',85000);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `espacio`
--

LOCK TABLES `espacio` WRITE;
/*!40000 ALTER TABLE `espacio` DISABLE KEYS */;
INSERT INTO `espacio` VALUES (1,'Alcorta 622','Quimica@flow.com','Quimica',5000,'299256354',200000),(2,'niceto 922','niceto@terra.com','niceto',2500,'116538555',250000),(3,'Corrientes 52','Emergente@ortuzar.co','Emergente',1600,'119562541',130000),(4,'Corrientes 5890','Leveriun@gmail.com','Leverium',9500,'1152636258',200000),(5,'Gorriti 1255','luxor@gmail.com','Luxor',5000,'1152636258',15000),(6,'Av Garay 2500','turben@yahoo.com','Turbina',600,'1152636258',75000),(7,'pringles 250','Uron@gmail.com','Uron',1000,'1152636258',90000),(8,'Rivera indarte 1520','pibes@hotmail.com','Paves',6000,'1152636258',12000),(9,'Mendoza 590','Hattori@gmail.com','Hattori',3000,'1152636258',100000),(10,'gallardo 145','delviento@hotmail.com','Teatro del Viento',700,'2995526325',150000);
/*!40000 ALTER TABLE `espacio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (1,'2023-03-12','Gerard Fest',2,1,1,3,2,1200),(2,'2023-08-03','Salamuth',3,2,3,3,1,1500),(3,'2023-06-05','Freedom ice',1,1,2,2,4,2500),(5,'2022-08-12','Rucker',5,6,2,1,4,1958),(6,'2022-12-15','Goliath',1,1,1,1,1,320),(7,'2023-05-06','Musmano Fest',9,5,6,7,2,350),(8,'2022-11-25','Trapping',6,3,8,2,4,975),(9,'2023-01-25','Taruga corp',6,9,7,5,1,650),(10,'2023-06-12','Coder Fest',7,6,9,10,5,2750);
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_espacio`
--

LOCK TABLES `log_espacio` WRITE;
/*!40000 ALTER TABLE `log_espacio` DISABLE KEYS */;
INSERT INTO `log_espacio` VALUES (1,4,'corrientes 150','Magarelo@pepe.com','Taxonomi',15000,'29246354',150000,'update','espacio','root@localhost','2022-08-22 20:30:33'),(2,4,'corrientes 150','Magarelo@pepe.com','Taxonomi',15000,'29246354',150000,'delete','espacio','root@localhost','2022-08-22 20:30:34'),(3,5,'Gorriti 1255','luxor@gmail.com','Luxor',5000,'1152636258',15000,'update','espacio','root@localhost','2022-09-12 14:42:44'),(4,6,'Av Garay 2500','turben@yahoo.com','Turbina',600,'1152636258',75000,'update','espacio','root@localhost','2022-09-12 14:43:33'),(5,7,'pringles 250','Uron@gmail.com','Uron',1000,'1152636258',90000,'update','espacio','root@localhost','2022-09-12 14:44:31'),(6,8,'Rivera indarte 1520','pibes@hotmail.com','Paves',6000,'1152636258',12000,'update','espacio','root@localhost','2022-09-12 14:45:41'),(7,9,'Mendoza 590','Hattori@gmail.com','Hattori',3000,'1152636258',100000,'update','espacio','root@localhost','2022-09-12 14:46:27'),(8,10,'Corrientes 5890','Leveriun@gmail.com','Leverium',9500,'1152636258',200000,'update','espacio','root@localhost','2022-09-12 14:47:13'),(9,11,'gallardo 145','delviento@hotmail.com','Teatro del Viento',700,'2995526325',150000,'update','espacio','root@localhost','2022-09-13 12:34:57');
/*!40000 ALTER TABLE `log_espacio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_productor`
--

LOCK TABLES `log_productor` WRITE;
/*!40000 ALTER TABLE `log_productor` DISABLE KEYS */;
INSERT INTO `log_productor` VALUES (1,2,'Luciano','Villace','115982632','luciano@human.com','203269547',45000,'update','productor','root@localhost','2022-08-22 20:30:34'),(2,4,'Chengo','Gonzales','220536254','chengo@rosario.pk','254021685',42000,'insert','productor','root@localhost','2022-08-22 20:30:35'),(3,5,'Luz','Espeche','1165952315','luzespeche@gmail.com','2127256329955',50000,'insert','productor','root@localhost','2022-09-12 15:45:11'),(4,6,'Nicolas','Gandin','29415268524','nicogan@rocca.tr','23256995221',35000,'insert','productor','root@localhost','2022-09-12 15:45:59'),(5,7,'Juan','Gutierrez','029445523695','caizo@gmail.com','20369985558',45000,'insert','productor','root@localhost','2022-09-12 15:46:39'),(6,8,'Pablo','contreras','1166988521','pablocont85@urban.mx','26126958852',112000,'insert','productor','root@localhost','2022-09-12 15:48:15'),(7,9,'Miguel','gerez','24469853211','miguelger@ate.org','25186631485',95000,'insert','productor','root@localhost','2022-09-12 15:49:14'),(8,10,'Mauricio','Beltrame','2994265315','beltramemau@neuquen.gov','20158526325',125000,'insert','productor','root@localhost','2022-09-12 15:51:48');
/*!40000 ALTER TABLE `log_productor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `productor`
--

LOCK TABLES `productor` WRITE;
/*!40000 ALTER TABLE `productor` DISABLE KEYS */;
INSERT INTO `productor` VALUES (1,'Maru','Polak','119536254','maru@polak.pk','273021685',35000),(2,'Luciano','Villace','115383662','luciano@human.com','203269547',45000),(3,'Fernando','taborda','118526582','oliver@knos.com','20255652',40000),(4,'Chengo','Gonzales','220536254','chengo@rosario.pk','254021685',42000),(5,'Luz','Espeche','1165952315','luzespeche@gmail.com','2127256329955',50000),(6,'Nicolas','Gandin','29415268524','nicogan@rocca.tr','23256995221',35000),(7,'Juan','Gutierrez','029445523695','caizo@gmail.com','20369985558',45000),(8,'Pablo','contreras','1166988521','pablocont85@urban.mx','26126958852',112000),(9,'Miguel','gerez','24469853211','miguelger@ate.org','25186631485',95000),(10,'Mauricio','Beltrame','2994265315','beltramemau@neuquen.gov','20158526325',125000);
/*!40000 ALTER TABLE `productor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `prov_tipo`
--

LOCK TABLES `prov_tipo` WRITE;
/*!40000 ALTER TABLE `prov_tipo` DISABLE KEYS */;
INSERT INTO `prov_tipo` VALUES (1,'catering'),(2,'transporte'),(3,'iluminacion'),(4,'sonido'),(5,'imprenta'),(6,'merchandising');
/*!40000 ALTER TABLE `prov_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,1,'polloshermanos@fringe.tx','Pollos hermanos','1159268856','302596215',20000),(2,3,'thunder@force.jp','Thunder Force','299862354','329665834',25000),(3,2,'transoceanica@terra.es','Transoceanica','220536504','359558610',17000),(4,5,'impremax@yahoo.com','Impremax','118965324','362201479',15000),(5,4,'Ultrasound@hotmail.com','Ultra Sound','1153268852','33253652258',25000),(6,6,'martinmerc@terra.es','Martin Merch','1152632585','20259635585',85000),(7,2,'conosur@rionegro.org','Cono Sur','29416328542','30956632245',50000),(8,4,'humanoestudio@gmail.com','Estudio Humano','1144268752','30365582214',65000),(9,6,'Martinmerch@hotmail.com','Martin Merch','1152632995','20286658521',70000),(10,1,'fatimagik@hotmail.com','Fati Magik','1162415265','20419182045',40000);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-26 10:54:46
