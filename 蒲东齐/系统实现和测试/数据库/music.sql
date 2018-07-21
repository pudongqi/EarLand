-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: music
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) DEFAULT NULL,
  `pwd` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin'),(2,'123','123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(30) NOT NULL,
  `s_name` varchar(30) NOT NULL,
  `song` varchar(30) NOT NULL,
  `c_m_id` int(11) DEFAULT NULL,
  `c_u_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
INSERT INTO `collection` VALUES (139,'猛犸','后海大鲨鱼','试听',6,7),(141,'华中师范大学校歌','群星','试听',1,7),(142,'王牌冤家','李荣浩','试听',16,7),(143,'AMH','王子异','试听',42,7);
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musicmangertable`
--

DROP TABLE IF EXISTS `musicmangertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musicmangertable` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(50) NOT NULL,
  `m_size` varchar(30) NOT NULL,
  `album_name` varchar(50) NOT NULL,
  `file_type` varchar(30) NOT NULL,
  `m_url` varchar(100) NOT NULL,
  `m_type` varchar(30) NOT NULL,
  `m_language` varchar(30) NOT NULL,
  `m_count` int(11) DEFAULT NULL,
  `load_count` int(11) DEFAULT NULL,
  `m_time` varchar(30) DEFAULT NULL,
  `m_s_id` int(11) NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musicmangertable`
--

LOCK TABLES `musicmangertable` WRITE;
/*!40000 ALTER TABLE `musicmangertable` DISABLE KEYS */;
INSERT INTO `musicmangertable` VALUES (1,'华中师范大学校歌','4.23M','各大高校校歌','mp3','http://www.iooy.com/music/华中师范大学校歌.mp3','other','Chinese',7,0,NULL,1),(2,'Ei Ei','4.1M','Idol students','mp3','http://www.iooy.com/music/Ei_Ei.mp3','other','Chinese',12,0,'2018-07-11 18:57:413',2),(3,'GOOD NIGHT','4.2M','GOOD NIGHT','mp3','http://www.iooy.com/music/GOOD_NIGHT.mp3','other','English',1,0,'2018-07-11 19:57:413',3),(4,'Lemon','4.3M','Lemon','mp3','http://www.iooy.com/music/Lemon.mp3','other','Japanese',15,0,'2018-07-11 20:57:413',4),(5,'绅士','11.7M','绅士','mp3','http://www.iooy.com/music/%E7%BB%85%E5%A3%AB.mp3','pop','Chinese',4,0,'2018-07-13 19:12:413',5),(6,'猛犸','12.4M','心要野','mp3','http://www.iooy.com/music/%E7%8C%9B%E7%8A%B8.mp3','rock','Chinese',9,0,'2018-07-13 19:12:413',6),(7,'那是爱情','11m','那是爱情','mp3','http://www.iooy.com/music/%E9%82%A3%E6%98%AF%E7%88%B1%E6%83%85.mp3','folk','Chinese',6,0,'2018-07-13 19:12:413',7),(8,'pianissimo','16.7m','illune','mp3','http://www.iooy.com/music/pianissimo.mp3','light','Japanese',6,0,'2018-07-13 19:12:413',8),(9,'I MUST CHANGE MY LIFE & LOVE FOR ME','11.8m','I MUST CHANGE MY LIFE & LOVE FOR ME','mp3','http://www.iooy.com/music/IMUSTCHANGE%20MYLIFE&LOVEFORME.mp3','other','Japanese',4,0,'2018-07-13 19:12:413',9),(10,'一夜','3.6M','一夜','mp3','http://www.iooy.com/music/陈楚生-一夜.mp3','pop','Chinese',11,0,NULL,10),(11,'同时','4.2M','同时','mp3','http://www.iooy.com/music/戴荃-同时.mp3','other','Chinese',12,0,NULL,11),(12,'搭错车','4.2M','搭错车','mp3','http://www.iooy.com/music/丁当-搭错车.mp3','pop','Chinese',4,0,NULL,12),(13,'爱我的就拍拍手','4.2M','爱我的就拍拍手','mp3','http://www.iooy.com/music/胡彦斌-爱我的就拍拍手.mp3','pop','Chinese',8,0,NULL,13),(14,'爱如意','3.8M','爱如意','mp3','http://iooy.com/music/G.E.M. 邓紫棋-爱如意.mp3','pop','Chinese',1,0,NULL,14),(15,'和你在一起','4.2M','和你在一起','mp3','http://www.iooy.com/music/李克勤-和你在一起.mp3','light','Chinese',5,0,NULL,15),(16,'王牌冤家','3.9M','王牌冤家','mp3','http://www.iooy.com/music/李荣浩-王牌冤家.mp3','pop','Chinese',5,0,NULL,16),(17,'夜是秋月明','3.9M','夜是秋月明','mp3','http://www.iooy.com/music/罗大佑-夜是秋月明.mp3','rock','Chinese',3,0,NULL,17),(18,'扶摇','4.1M','扶摇','mp3','http://www.iooy.com/music/莫文蔚-扶摇.mp3','type1','Chinese',5,0,NULL,18),(19,'怪咖','4M','怪咖','mp3','http://www.iooy.com/music/薛之谦-怪咖.mp3','pop','Chinese',5,0,NULL,19),(20,'血如墨','3.9M','血如墨','mp3','http://www.iooy.com/music/张碧晨-血如墨.mp3','pop','Chinese',11,0,NULL,20),(21,'中国魂','3M','中国魂','mp3','http://www.iooy.com/music/中国魂-吴亦凡.mp3','light','Chinese',13,0,NULL,21),(22,'For U','7.37M','4U.','mp3','http://www.iooy.com/music/For%20U.mp3','pop','Chinese',6,0,NULL,22),(23,'短发','7.58M','短发','mp3','http://www.iooy.com/music/%E7%9F%AD%E5%8F%91.mp3','pop','Chinese',1,0,NULL,23),(24,'想起2.0','7.99M','想起','mp3','http://www.iooy.com/music/%E6%83%B3%E8%B5%B7.mp3','pop','Chinese',2,0,NULL,24),(25,'Empty House','8.21M','Empty House','mp3','http://www.iooy.com/music/Empty%20House.mp3','pop','English',2,0,NULL,25),(26,'一个人去巴黎','9.74M','一个人去巴黎','mp3','http://www.iooy.com/music/%E4%B8%80%E4%B8%AA%E4%BA%BA%E5%8E%BB%E5%B7%B4%E9%BB%8E.mp3','pop','Chinese',2,0,NULL,26),(27,'Bruce Lee 李小龙','7.13M','Bruce Lee 李小龙','mp3','http://www.iooy.com/music/李小龙.mp3','pop','English',4,0,NULL,27),(28,'只要平凡 《我不是药神》电影主题曲','9.56','只要平凡','mp3','http://www.iooy.com/music/%E5%8F%AA%E8%A6%81%E5%B9%B3%E5%87%A1.mp3','pop','Chinese',2,0,NULL,28),(29,'儿子娃娃','2.35M','中国新说唱 第1期','mp3','http://www.iooy.com/music/%E5%84%BF%E5%AD%90%E5%A8%83%E5%A8%83.mp3','pop','Chinese',1,0,NULL,29),(30,'superhero','9.18M','超级英雄','mp3','http://www.iooy.com/music/superhero.mp3','pop','Chinese',1,0,NULL,30),(31,'差生','10.01','差生','mp3','http://www.iooy.com/music/%E5%B7%AE%E7%94%9F.mp3','pop','Chinese',2,0,NULL,31),(32,'诗人与月亮','7.17M','诗人与月亮','mp3','http://www.iooy.com/music/%E8%AF%97%E4%BA%BA%E4%B8%8E%E6%9C%88%E4%BA%AE.mp3','pop','Chinese',1,0,NULL,32),(33,'像艳遇一样忧伤','11.3M','像艳遇一样忧伤','mp3','http://www.iooy.com/music/%E5%83%8F%E8%89%B3%E9%81%87%E4%B8%80%E6%A0%B7%E5%BF%A7%E4%BC%A4.mp3','pop','Chinese',1,0,NULL,33),(34,'私奔','14.2M','私奔','mp3','http://www.iooy.com/music/%E7%A7%81%E5%A5%94.mp3','light','Chinese',1,0,NULL,34),(35,'盗将行','7.63M','粥请客（二）','mp3','http://www.iooy.com/music/%E7%9B%97%E5%B0%86%E8%A1%8C.mp3','pop','Chinese',3,0,NULL,35),(36,'讲真的','9.25M','不要你为难','mp3','http://www.iooy.com/music/%E8%AE%B2%E7%9C%9F%E7%9A%84.mp3','pop','Chinese',1,0,NULL,36),(37,'口音','4.2M','口音','mp3','http://www.iooy.com/music/李宇春-口音.mp3','pop','Chinese',2,0,NULL,37),(38,'星空下的陀螺','15.8M','星空下的陀螺','mp3','http://www.iooy.com/music/李峙-星空下的陀螺.mp3','pop','Chinese',3,0,NULL,38),(39,'爱','3.2M','爱','mp3','http://www.iooy.com/music/莫文蔚-爱.mp3','pop','Chinese',3,0,NULL,18),(40,'Stay With Me','3.1M','Stay_With_Me','mp3','http://www.iooy.com/music/朴灿烈-Stay_With_Me.mp3','other','Korea',7,0,NULL,40),(41,'画外音','3.5M','画外音','mp3','http://www.iooy.com/music/王凯-画外音.mp3','other','China',7,0,NULL,41),(42,'AMH','4M','AMH','mp3','http://www.iooy.com/music/AMH-王子异.mp3','rock','China',3,0,NULL,42);
/*!40000 ALTER TABLE `musicmangertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `picture` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pic_name` varchar(50) NOT NULL,
  `album_name` varchar(50) DEFAULT NULL,
  `recommend` varchar(30) NOT NULL,
  `p_m_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `album_name` (`album_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picture`
--

LOCK TABLES `picture` WRITE;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `singermangertable`
--

DROP TABLE IF EXISTS `singermangertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `singermangertable` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(30) NOT NULL,
  `s_sex` varchar(30) NOT NULL,
  `s_area` varchar(40) NOT NULL,
  `s_type` varchar(50) NOT NULL,
  `s_team` varchar(50) NOT NULL,
  `s_img` varchar(50) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `singermangertable`
--

LOCK TABLES `singermangertable` WRITE;
/*!40000 ALTER TABLE `singermangertable` DISABLE KEYS */;
INSERT INTO `singermangertable` VALUES (1,'群星','boy','China','other','华中师范大学校歌','华中师范大学校歌'),(2,'偶像练习生','boy','China','type1','偶像练习生','偶像练习生'),(3,'Lil Ghost小鬼','girl','China','type1','Lil Ghost小鬼','LilGhost小鬼'),(4,'米津玄师','boy','Japan','type1','米津玄师','米津玄师'),(5,'薛之谦','boy','China','pop','薛之谦','薛之谦'),(6,'后海大鲨鱼','boy','China','rock','后海大鲨鱼','后海大鲨鱼'),(7,'崔磊','boy','China','folk','崔磊','崔磊'),(8,'けったろ','boy','Japan','light','けったろ','けったろ'),(9,'角松敏生','boy','Japan','other','角松敏生','角松敏生'),(10,'陈楚生','boy','China','pop','陈楚生','陈楚生'),(11,'戴荃','boy','China','other','戴荃','戴荃'),(12,'丁当','girl','China','pop','丁当','丁当'),(13,'胡彦斌','girl','China','other','胡彦斌','胡彦斌'),(14,'邓紫棋','girl','China','pop','邓紫棋','邓紫棋'),(15,'李克勤','boy','China','light','李克勤','李克勤'),(16,'李荣浩','boy','China','pop','李荣浩','李荣浩'),(17,'罗大佑','boy','China','rock','罗大佑','罗大佑'),(18,'莫文蔚','girl','China','type1','莫文蔚','莫文蔚'),(19,'薛之谦','boy','China','pop','薛之谦','薛之谦'),(20,'张碧晨','girl','China','pop','张碧晨','张碧晨'),(21,'吴亦凡','boy','China','pop','吴亦凡','吴亦凡'),(22,'switch godLe$','girl','China','pop','switch godLe$','switchgodLe$'),(23,'Lamp猴子','boy','China','pop','Lamp猴子','Lamp猴子'),(24,'孟大宝','boy','China','pop','孟大宝','孟大宝'),(25,'LU2VYK','boy','France','pop','LU2VYK','LU2VYK'),(26,'董又霖','boy','China','pop','董又霖','董又霖'),(27,'Al Rocco / 王嘉尔','boy','China','pop','Al Rocco / 王嘉尔','AlRocco王嘉尔'),(28,'张杰/张碧晨','boy','China','pop','张杰/张碧晨','张杰张碧晨'),(29,'那吾克热LIL-EM','boy','China','pop','那吾克热LIL-EM','那吾克热LIL-EM'),(30,'Mc光光','boy','China','pop','Mc光光','Mc光光'),(31,'乌糟兽','boy','China','pop','乌糟兽','乌糟兽'),(32,'张力夫','boy','China','pop','张力夫','张力夫'),(33,'钟立风','boy','China','pop','钟立风','钟立风'),(34,'曾轶可','boy','China','light','曾轶可','曾轶可'),(35,'花粥 / 马雨阳','girl','China','pop','花粥 / 马雨阳','花粥马雨阳'),(36,'曾惜','girl','China','pop','曾惜','曾惜'),(37,'李宇春','girl','China','pop','李宇春','李宇春'),(38,'李峙','boy','China','pop','李峙','李峙'),(40,'朴灿烈','boy','China','other','朴灿烈','朴灿烈'),(41,'王凯','boy','China','other','王凯','王凯'),(42,'王子异','boy','China','rock','王子异','王子异');
/*!40000 ALTER TABLE `singermangertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) DEFAULT NULL,
  `pwd` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `sex` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userName` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'jerry','123456','maxiong123@qq.com','1'),(2,'haoren','250','haoren@qq.com','2'),(3,'1','1','1@qq.com','1'),(5,'c316578388','c9631264','316578388@qq.com','male'),(7,'123456','123456','123456@qq.com','male');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-20 16:12:01
