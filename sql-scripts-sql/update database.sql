-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.60


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema springmvctiles
--

CREATE DATABASE IF NOT EXISTS springmvctiles;
USE springmvctiles;

--
-- Definition of table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `addressOne` varchar(45) NOT NULL,
  `addressTwo` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `postcode` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `filename` varchar(45) DEFAULT NULL,
  `coursename` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`id`,`firstName`,`lastName`,`gender`,`addressOne`,`addressTwo`,`state`,`city`,`postcode`,`country`,`dateOfBirth`,`filename`,`coursename`) VALUES 
 (10,'a','b','Male','Green Park-1 Shrirampur Pusad','Karve nagr','Near Ashtwinayk Mandir','Pune','411038','India','1990-12-01','Gaurav_photo.jpg','MCA'),
 (11,'c','d','Male','Green Park-1 Shrirampur Pusad','asc','Near Ashtwinayk Mandir','Pune','411038','India','1990-12-01','Gaurav_photo.jpg','B.E'),
 (12,'e','f','Male','Green Park-1 Shrirampur Pusad','Green Park','Near Ashtwinayk Mandir','Pune','411038','India','1990-12-01','P_20181114_190341_BF_1.jpg','M.TECH'),
 (13,'g','h','Male','501, Park plaza , Karvenagar Bus Stop,','501, Park plaza , Karvenagar Bus Stop,','Karvenagar Bus Stop, Pune','PUNE','411052','India','1990-12-01','Prashant_Approved_Certificate.png','MSc Computer Science');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
