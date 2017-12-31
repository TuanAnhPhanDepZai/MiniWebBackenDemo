-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: toeic
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `catgorymember`
--

DROP TABLE IF EXISTS `catgorymember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catgorymember` (
  `idcatgorymember` int(11) NOT NULL,
  `catgorymembername` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcatgorymember`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catgorymember`
--

LOCK TABLES `catgorymember` WRITE;
/*!40000 ALTER TABLE `catgorymember` DISABLE KEYS */;
INSERT INTO `catgorymember` VALUES (1,'Người dùng'),(2,'Admin');
/*!40000 ALTER TABLE `catgorymember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmtgrammar`
--

DROP TABLE IF EXISTS `cmtgrammar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmtgrammar` (
  `idcmtgrammar` int(11) NOT NULL AUTO_INCREMENT,
  `cmtgrammarcontent` longtext,
  `idgrammarguideline` int(11) DEFAULT NULL,
  `idmember` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcmtgrammar`),
  KEY `FK_cmtgr_grammarguide_idx` (`idgrammarguideline`),
  KEY `FK_cmtgr_member1_idx` (`idmember`),
  CONSTRAINT `FK_cmtgr_grammarguide` FOREIGN KEY (`idgrammarguideline`) REFERENCES `grammarguideline` (`idgrammarguideline`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cmtgr_member1` FOREIGN KEY (`idmember`) REFERENCES `member1` (`idmember`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmtgrammar`
--

LOCK TABLES `cmtgrammar` WRITE;
/*!40000 ALTER TABLE `cmtgrammar` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmtgrammar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grammarguideline`
--

DROP TABLE IF EXISTS `grammarguideline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grammarguideline` (
  `idgrammarguideline` int(11) NOT NULL AUTO_INCREMENT,
  `grammarname` longtext CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `grammarimage` longtext CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `context` longtext CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  PRIMARY KEY (`idgrammarguideline`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grammarguideline`
--

LOCK TABLES `grammarguideline` WRITE;
/*!40000 ALTER TABLE `grammarguideline` DISABLE KEYS */;
INSERT INTO `grammarguideline` VALUES (61,'Chúng tôi cung cấp cho ban những phương pháp học tiếng anh tốt nhất.','ImageForProject/106112-no inter.bmp','Tháº­t lÃ  má»t má»i khi lÃ m bÃ i táº­p TOEIC Reading mÃ  pháº£i ngá»i dá»ch tá»«ng cÃ¢u ÄÃºng khÃ´ng cÃ¡c em? Tá»« vá»±ng Tiáº¿ng Anh lÃ  má»t kho tÃ ng khÃ´ng bao giá» háº¿t, nÃªn cÃ´ chÆ°a bao giá» khuyáº¿n khÃ­ch há»c viÃªn cá»§a mÃ¬nh dá»ch nghÄ©a má»t cÃ¢u Äá» cÃ³ thá» chá»n ÄÆ°á»£c ÄÃ¡p Ã¡n ÄÃºng. LÃºc nÃ o cÅ©ng tháº¿, cÃ´ muá»n cÃ¡c báº¡n thá»­ dÃ¹ng ngá»¯ phÃ¡p Äá» giáº£i quyáº¿t váº¥n Äá» trÆ°á»c tiÃªn. HÃ´m nay cÃ´ trÃ² mÃ¬nh cÃ¹ng tÆ° duy má»t sá» loáº¡i cÃ¢u há»i thÃº vá» trong Äá» thi TOEIC nhÃ© cÃ¡c em.\r\n**\r\nThe team members have the same opinions on the matter â¦.they shared the same information**\r\n\r\na)following\r\nb)more than\r\nc)because\r\nd)unless\r\nCÃ¡c em chÃº Ã½ nhÃ©, ÄÃ¡p Ã¡n cáº§n Äiá»n lÃ  ÄÃ¡p Ã¡n cÃ³ thá» ná»i hai má»nh Äá» vá»i nhau, ngay láº­p tá»©c cÃ´ loáº¡i A vÃ  B. LÃºc nÃ y cÃ´ cÃ¢n nháº¯c hai ÄÃ¡p Ã¡n C vÃ  D. Cáº§n dá»ch chÆ°a nhá»? ChÆ°a ÄÃ¢u em nhÃ© :)\r\n\r\nUnless tá»©c lÃ  If not ÄÃºng khÃ´ng cÃ¡c em? ChÃºng ta nhá» láº¡i kiáº¿n thá»©c cÃ¢u Äiá»u kiá»n xem. KhÃ´ng cÃ³ cÃ¢u Äiá»u kiá»n nÃ o má»nh Äá» If chia thÃ¬ quÃ¡ khá»© ÄÆ¡n (shared) trong khi má»nh Äá» chÃ­nh chia hiá»n táº¡i ÄÆ¡n (have ) cáº£, nÃªn ÄÃ¡p Ã¡n cÃ¢u nÃ y lÃ  C ÄÃºng khÃ´ng nÃ o?                                '),(63,'Học ngữ pháp thật đơn giản qua các ví dụ thực tế ','ImageForProject/slide1.jpg',NULL),(65,'gfgfgfgfg','ImageForProject/thumb_100x100_14313255969339.jpg','                Unit 56: CÃ¡ch Äá»c PhÃ¢n sá» báº±ng tiáº¿ng Anh\r\nHÃ´m nay cÃ¹ng Ms Hoa TOEIC há»c cach há»c PhÃ¢n sá» báº±ng tiáº¿ng Anh ráº¥t hay xuáº¥t hiá»n trong Äá» thi TOEIC vÃ  tiáº¿ng Anh giao tiáº¿p hÃ ng ngÃ y cáº£ nhÃ  nhÃ©.\r\n\r\n1. Tá»­ sá»:\r\nLuÃ´n dÃ¹ng sá» Äáº¿m: one, two, three, four, fiveâ¦.\r\n- 1/5 = one / fifth\r\n- 1/2 = one (a) half\r\n\r\n2. Máº«u sá»:\r\nCÃ³ hai trÆ°á»ng há»£p:\r\n* Náº¿u tá»­ sá» lÃ  má»t chá»¯ sá» vÃ  máº«u sá» tá»« 2 chá»¯ sá» trá» xuá»ng thÃ¬ máº«u sá» dÃ¹ng sá» thá»© tá»± (náº¿u tá»­ sá» lá»n hÆ¡n 1 thÃ¬ máº«u sá» ta thÃªm s)\r\n- 2/6 : two sixths\r\n- 3/4 = three quarters\r\n* Náº¿u tá»­ sá» lÃ  hai chá»¯ sá» trá» lÃªn hoáº·c máº«u sá» tá»« 3 chá»¯ sá» trá» lÃªn thÃ¬ máº«u sá» sáº½ ÄÆ°á»£c viáº¿t tá»«ng chá»¯ má»t vÃ  dÃ¹ng sá» Äáº¿m, giá»¯a tá»­ sá» vÃ  máº«u sá» cÃ³ chá»¯ over.\r\n- 3/462 = three over four six two\r\n- 22/16 : twenty-two over one six (tá»­ sá» cÃ³ 2 chá»¯ sá» )\r\n                                '),(67,'Unit 55: Thành ngữ về thời gian ','ImageForProject/thumb_100x100_14218135215751.jpg','               1. Time is money, so no one can put back the clock: Thá»i gian lÃ  vÃ ng nÃªn khÃ´ng thá» xoay ngÆ°á»£c kim cá»§a nÃ³ \r\n\r\n2. Time flies like an arrow: Thá»i gian thoÃ¡t thoÃ¡t thoi ÄÆ°a \r\n\r\n3. Time and tide waits for no man: Thá»i gian cÃ³ chá» Äá»£i ai\r\n\r\n4. Time is the great healer: Thá»i gian chá»¯a lÃ nh má»i váº¿t thÆ°Æ¡ng \r\n\r\n5. Every minute seem like a thousand: Má»i giÃ¢y dÃ i tá»¥a thiÃªn thu \r\n\r\n6. Let bygones be bygones: Äá»«ng nhÃ¡c láº¡i chuyá»n quÃ¡ khá»©\r\n\r\n7. Time is the rider that breaks youth: Thá»i gian tÃ n phÃ¡ tuá»i tráº» \r\n\r\n8. Better late than never: ThÃ  trá» con hÆ¡n khÃ´ng bao giá» \r\n\r\n9. Time, which strengthens friendship, weakens love: Thá»i gian lÃ m tÃ¬nh báº¡n tháº¯m thiáº¿t, nhÆ°ng láº¡i hao mÃ²n tÃ¬nh yÃªu \r\n\r\n10. Slow and steady wins the race: Cháº­m mÃ  cháº¯c                                 ');
/*!40000 ALTER TABLE `grammarguideline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informember`
--

DROP TABLE IF EXISTS `informember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informember` (
  `idinformember` int(11) NOT NULL,
  `bietdanh` longtext,
  `gmail` longtext,
  `noicongtac` longtext,
  `nghenghiep` longtext,
  `muctieu` longtext,
  PRIMARY KEY (`idinformember`),
  CONSTRAINT `idmember` FOREIGN KEY (`idinformember`) REFERENCES `member1` (`idmember`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informember`
--

LOCK TABLES `informember` WRITE;
/*!40000 ALTER TABLE `informember` DISABLE KEYS */;
INSERT INTO `informember` VALUES (1,'Chu Tuoc','phantuananhlaanh@gmail.com','Dai Hoc Bach Khoa Ha Noi','Sinh Vien','');
/*!40000 ALTER TABLE `informember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member1`
--

DROP TABLE IF EXISTS `member1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member1` (
  `idmember` int(11) NOT NULL AUTO_INCREMENT,
  `membername` varchar(45) NOT NULL,
  `memberpass` varchar(45) DEFAULT NULL,
  `catgorymemberid` int(11) DEFAULT NULL,
  `fullname` varchar(45) DEFAULT NULL,
  `memberimage` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmember`,`membername`),
  KEY `FK_catgory_idx` (`catgorymemberid`),
  CONSTRAINT `FK_catgory` FOREIGN KEY (`catgorymemberid`) REFERENCES `catgorymember` (`idcatgorymember`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member1`
--

LOCK TABLES `member1` WRITE;
/*!40000 ALTER TABLE `member1` DISABLE KEYS */;
INSERT INTO `member1` VALUES (1,'tuananh','27121997',1,'Phan Tuan Anh','ImageForProject/tuananh.jpg'),(2,'dangars','15011997',1,'Ha The Dang',NULL),(4,'dung97bn','dung',1,'Mai Tien Dung',NULL),(18,'dang','1997',1,'Tuan Anh',NULL),(20,'admin','1234567',2,'admin',NULL);
/*!40000 ALTER TABLE `member1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slidebanner`
--

DROP TABLE IF EXISTS `slidebanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slidebanner` (
  `idslidebanner` int(11) NOT NULL AUTO_INCREMENT,
  `slidename` longtext,
  `slidecontent` longtext,
  `slideimage` longtext,
  PRIMARY KEY (`idslidebanner`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slidebanner`
--

LOCK TABLES `slidebanner` WRITE;
/*!40000 ALTER TABLE `slidebanner` DISABLE KEYS */;
INSERT INTO `slidebanner` VALUES (1,'Cung cấp dạng bài thi Toeic ','Chúng tôi cung cấp cho bạn những dạng bài thi Toeic sát với thực tế nhất','slide2_1.jpg'),(2,'Thi thử Toeic','Thi thử Toeic, sau khi có kiến thức cơ bản rồi, bạn hãy kiểm chứng nó bằng việc làm một bài thi đơn giản nhé','slide3_1.png');
/*!40000 ALTER TABLE `slidebanner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'toeic'
--

--
-- Dumping routines for database 'toeic'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-30 20:55:39
