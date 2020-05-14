-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: p_bank
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `add_faculty`
--

DROP TABLE IF EXISTS `add_faculty`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;


CREATE TABLE `add_faculty` (
  `faculty_id` int(11) DEFAULT NULL,
  `faculty_name` varchar(30) DEFAULT NULL,
  `qualification` varchar(30) DEFAULT NULL,
  `subject` varchar(30) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `experience` varchar(30) DEFAULT NULL,
  `phone_no` varchar(10) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_faculty`
--

LOCK TABLES `add_faculty` WRITE;
/*!40000 ALTER TABLE `add_faculty` DISABLE KEYS */;
INSERT INTO `add_faculty` VALUES (1001,'Sachin nayak','M.TECH','CS','Computer Engg','5 yrs','1234564567','sachine@gmail.com',NULL,'nagarpura'),(1002,'Sanjay Tripathi','B.TECH','C++','CS','7 Years','9233450533','sanjay@gmail.com','sanjay123','3100 Maple Height');
/*!40000 ALTER TABLE `add_faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','admin'),('devam','devam123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_cs`
--

DROP TABLE IF EXISTS `course_cs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `course_cs` (
  `sub_1` varchar(40) DEFAULT NULL,
  `sub_2` varchar(20) DEFAULT NULL,
  `sub_3` varchar(20) DEFAULT NULL,
  `sub_4` varchar(20) DEFAULT NULL,
  `sub_5` varchar(20) DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_cs`
--

LOCK TABLES `course_cs` WRITE;
/*!40000 ALTER TABLE `course_cs` DISABLE KEYS */;
INSERT INTO `course_cs` VALUES ('Theory of Computation','Machine Learning','Discrete Mathematics','Micro Processor','DBMS','CS');
/*!40000 ALTER TABLE `course_cs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email_id` varchar(30) NOT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `course` varchar(10) DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email_id` (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('devam','devam12','Devam Tripathi','devam@gmail.com','34567890788','jaipur','B.TECH','CS','V SEM'),('himanshu','5678','himan','himanshu@gmail.com','123456789','Gandhi Nagar','B.TECH','CS','V SEM'),('lamboo','lamboo123','lamboo','asdfghjk@gmail.com','234567890','bikaner','B.TECH','CS','V SEM'),('sanjay','sanjay123','sanjay nayak','sanjayn@gmail.com','9567456277','gopal pura','M.TECH','IT','VI SEM');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `marks` (
  `s_username` varchar(30) DEFAULT NULL,
  `Project_marks` varchar(20) DEFAULT NULL,
  `Attendance_marks` varchar(20) DEFAULT NULL,
  `DECA_marks` varchar(20) DEFAULT NULL,
  `Semester_marks` varchar(20) DEFAULT NULL,
  KEY `s_username` (`s_username`),
  CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`s_username`) REFERENCES `customer` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES ('devam','100','100','90','70%');
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_table`
--

DROP TABLE IF EXISTS `time_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `time_table` (
  `first` varchar(40) DEFAULT NULL,
  `second` varchar(40) DEFAULT NULL,
  `third` varchar(40) DEFAULT NULL,
  `fourth` varchar(40) DEFAULT NULL,
  `fifth` varchar(40) DEFAULT NULL,
  `sixth` varchar(40) DEFAULT NULL,
  `seventh` varchar(40) DEFAULT NULL,
  `eight` varchar(40) DEFAULT NULL,
  `ninth` varchar(40) DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_table`
--

LOCK TABLES `time_table` WRITE;
/*!40000 ALTER TABLE `time_table` DISABLE KEYS */;
INSERT INTO `time_table` VALUES ('theory of computation','machine learning','mathematics','micro processor','DBMS','Software Engg','compiler Design','Graphics Design','Operating system','CS'),('Digital Networking','Probability','Theory of computation','Artifical Intelligence','Internet and Web Tech','Micro Processor','Analog Communication','Principal of Manag','Control System','IT'));
/*!40000 ALTER TABLE `time_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
