-- Host: root    Database: Hospital_management
-- ------------------------------------------------------

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
-- Table structure for table `Appointment`
--

DROP TABLE IF EXISTS `Appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Appointment` (
  `Appointment_no` varchar(255) NOT NULL,
  `Patient_id` varchar(255) NOT NULL,
  `Doctor_id` varchar(255) NOT NULL,
  `Problem` varchar(600) NOT NULL,
  `Time` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL,
  PRIMARY KEY (`Appointment_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Appointment`
--

LOCK TABLES `Appointment` WRITE;
/*!40000 ALTER TABLE `Appointment` DISABLE KEYS */;
INSERT INTO `Appointment` VALUES ('1123','YH2415','DR1347','Back Pain','10:30am','14/7/21'),('1346','UJ8913','DR8081','Back Pain','2:30pm','12/7/21'),('1884','HP1355','DR6183','Hypertension','12:00pm','9/7/21'),('2356','AH2456','DR6183','Hypertension','10:00am','19/7/21'),('4512','UA1345','DR5183','swollen arm','1:30pm','21/7/21'),('5713','OW5631','DR5183','swollen arm','11:30am','4/7/21'),('6193','UI8103','DR2456','Kidney Stones','12:30pm','1/7/21'),('7134','UO2495','DR1385','Hypertension','1:00pm','13/7/21'),('7294','HO2456','DR2133','Stomach Ache','12:30pm','2/7/21'),('8081','WE1352','DR1355','Physical Checkup','10:30am','14/7/21'),('9294','OP1345','DR6834','Back Pain','2:30pm','21/7/21'),('9913','NM1234','DR1389','back pain','1:00pm','19/7/21');
/*!40000 ALTER TABLE `Appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctor_id` varchar(225) NOT NULL,
  `department` varchar(225) DEFAULT NULL,
  `status` varchar(225) DEFAULT NULL,
  `floor` int DEFAULT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES ('DR1356','Physical','Busy',1),('DR1901','Bone','Available',4),('DR1913','Kidney','Busy',3),('DR3910','Physician','Leave',1),('DR4921','Bone','Busy',4),('DR6811','Heart','Leave',2),('DR7821','Surgeon','Leave',2),('DR7913','Physician','Busy',2),('DR8822','Skin','Available',1),('DR8913','Diabetic','Available',3);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Medication`
--

DROP TABLE IF EXISTS `Medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Medication` (
  `Medicine_id` varchar(225) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Brand` varchar(255) NOT NULL,
  `Description` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`Medicine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medication`
--

LOCK TABLES `Medication` WRITE;
/*!40000 ALTER TABLE `Medication` DISABLE KEYS */;
INSERT INTO `Medication` VALUES ('A789','Nice','Cipla','Pain killer'),('B761','Metoprolol','Lopresso','chest pain'),('C481','Losartan','Proventil','high blood pressure'),('K235','Lisinopril','Prinivil','high blood pressure treatment'),('L138','Levothyroxine','Synthroid','hypothyroidism treatment'),('L689','Albuterol','Accuneb','Asthma'),('P134','Atorvastatin','Lipitor','lower low-density lipoprotein'),('Q681','Omeprazole','Prilosec','heartburn'),('Q714','Amlodipine','Norvasc','high blood pressure'),('S812','Metformin','Riomet','type 2 diabetes'),('W582','Simvastatin','Toprol','heart attack');
/*!40000 ALTER TABLE `Medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patients`
--

DROP TABLE IF EXISTS `Patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Patients` (
  `Patient_id` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Age` int NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phone_no` int NOT NULL,
  PRIMARY KEY (`Patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patients`
--

LOCK TABLES `Patients` WRITE;
/*!40000 ALTER TABLE `Patients` DISABLE KEYS */;
INSERT INTO `Patients` VALUES ('BD3409','David','Male',40,'B-24',134458039),('BG8008','Chad','Male',27,'X-420',420698008),('CK1345','Jenifer','Female',38,'W-241',782057492),('HJ1245','Austin','Male',25,'J-134',849190238),('HK2144','Danny','Male',32,'I-135',458829207),('HQ2344','Felix','Male',30,'K-122',321486208),('LP1354','Hanna','Female',26,'R-314',738247092),('NJ2452','Daisy','Female',28,'E-245',682592860),('OP4258','Tony','Male',24,'U-792',369203869),('WK1352','Jack','Male',24,'P-384',321794028),('YI5871','Jeff','Male',69,'M-100',724989018);
/*!40000 ALTER TABLE `Patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `Room_number` int NOT NULL,
  `Status` varchar(225) NOT NULL,
  `floor` varchar(225) NOT NULL,
  `Patient_id` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`Room_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1001,'Vacant','1st Floor',NULL),(1002,'Occupied','1st Floor',NULL),(1003,'Cleaning','1st Floor',NULL),(1004,'Vacant','1st Floor',NULL),(1005,'Occupied','1st Floor',NULL),(1006,'Vacant','1st Floor',NULL),(1007,'Occupied','1st Floor',NULL),(2001,'Vacant','2nd Floor',NULL),(2002,'Vacant','2nd Floor',NULL),(2003,'Cleaning','2nd Floor',NULL),(2004,'Occupied','2nd Floor',NULL),(2005,'Vacant','2nd Floor',NULL),(2006,'Cleaning','2nd Floor',NULL),(2007,'Cleaning','2nd Floor',NULL);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stay_time`
--

DROP TABLE IF EXISTS `stay_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stay_time` (
  `Patient_id` varchar(255) NOT NULL,
  `Room_number` int DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stay_time`
--

LOCK TABLES `stay_time` WRITE;
/*!40000 ALTER TABLE `stay_time` DISABLE KEYS */;
INSERT INTO `stay_time` VALUES ('BN3910',2004,'10/5/21','15/5/21'),('KA1913',2005,'23/5/21','5/6/21'),('KJ8913',2001,'9/6/21','20/7/21'),('LK6811',1002,'19/6/21','23/6/21'),('MA7913',2003,'20/6/21','3/7/21'),('NQ8822',1007,'2/6/21','1/7/21'),('OP7821',1004,'3/5/21','9/5/21'),('OQ1901',1006,'17/6/21','20/6/21'),('QP1356',2007,'1/7/21','3/7/21'),('XK4921',1003,'31/5/21','2/6/21');
/*!40000 ALTER TABLE `stay_time` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-29  8:33:22
