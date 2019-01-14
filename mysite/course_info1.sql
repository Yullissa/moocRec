-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `course_info1`
--

DROP TABLE IF EXISTS `course_info1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_info1` (
  `cid` varchar(10) NOT NULL,
  `c_schoolid` varchar(10) DEFAULT NULL,
  `c_platid` varchar(10) DEFAULT NULL,
  `c_langid` varchar(10) DEFAULT NULL,
  `c_scoreid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_info1`
--

LOCK TABLES `course_info1` WRITE;
/*!40000 ALTER TABLE `course_info1` DISABLE KEYS */;
INSERT INTO `course_info1` VALUES ('10','0','1','2','9'),('1016','19','1','2','8'),('1017','40','1','2','8'),('1018','2','1','2','7'),('1020','18','1','2','7'),('1021','1','2','2','8'),('103','17','1','2','8'),('1030','7','1','1','8'),('1044','69','1','2','8'),('1045','0','8','2','0'),('1051','0','0','1','0'),('1076','1','2','2','0'),('1077','4','1','2','0'),('1081','9','2','2','0'),('1083','68','4','2','8'),('1086','9','2','2','8'),('1087','42','2','2','0'),('1089','68','2','2','0'),('1094','30','1','2','0'),('1095','1','2','2','7'),('1097','1','2','2','8'),('1099','66','2','2','8'),('1103','34','2','2','6'),('1104','1','2','2','7'),('1113','0','2','2','8'),('1115','70','2','2','7'),('1116','1','2','2','7'),('1118','0','2','2','7'),('1119','72','1','2','7'),('1122','1','2','2','7'),('1124','18','1','2','8'),('1126','46','4','1','8'),('1133','17','1','2','9'),('1135','0','1','2','8'),('1137','0','1','2','0'),('1138','17','1','2','8'),('1140','46','4','2','8'),('1141','13','1','2','0'),('1144','9','2','2','8'),('1147','6','1','2','7'),('1158','3','1','2','8'),('116','1','2','2','9'),('1166','68','2','2','0'),('118','0','0','2','0'),('1188','6','1','2','6'),('1189','44','16','2','6'),('1190','1','2','2','6'),('1205','15','1','2','8'),('1206','1','2','2','9'),('1207','1','2','2','9'),('1208','11','1','2','8'),('1209','1','2','2','7'),('1243','1','2','2','8'),('1244','22','1','2','8'),('1246','38','9','2','7'),('1247','69','1','2','9'),('1258','16','1','2','8'),('1259','6','1','2','0'),('126','48','7','2','7'),('1265','5','1','2','8'),('1266','0','1','2','0'),('127','0','2','2','0'),('128','0','1','2','9'),('1280','53','1','1','8'),('1283','46','4','1','8'),('1284','0','7','1','8'),('1285','46','4','1','7'),('1287','46','4','1','8'),('1288','9','2','2','0'),('1290','6','1','2','7'),('1292','5','1','2','7'),('1293','0','2','2','0'),('1294','69','1','2','8'),('1295','24','1','2','8'),('1298','1','2','2','7'),('1299','49','7','1','9'),('1300','45','5','1','7'),('1301','0','7','1','9'),('1303','49','7','1','8'),('1304','27','1','1','9'),('1307','0','7','1','9'),('1308','0','1','2','8'),('1310','46','4','1','8'),('1315','56','2','2','8'),('1333','0','7','1','8'),('1340','69','1','2','0'),('1348','0','1','2','8'),('1353','0','0','2','7'),('1357','0','1','2','8'),('1363','0','1','2','7'),('1365','0','1','2','0'),('1384','44','16','2','8'),('1387','0','1','2','7'),('1403','0','0','2','0'),('1408','69','1','1','8'),('1412','69','1','1','0'),('1413','0','17','2','8'),('1415','55','10','1','0'),('1416','63','1','2','0'),('1417','0','0','2','0'),('1418','63','1','2','0'),('1419','12','0','2','7'),('1422','56','2','2','8'),('1426','8','1','2','7'),('1427','0','0','1','6'),('1428','1','2','1','6'),('1429','0','0','1','6'),('1430','1','2','1','6'),('1431','0','0','1','6'),('1432','0','0','1','6'),('1434','0','0','2','7'),('1437','0','1','2','0'),('1441','12','0','2','8'),('1447','0','0','2','0'),('1449','0','8','2','7'),('145','14','2','2','8'),('1452','1','2','2','7'),('146','0','0','2','0'),('1460','69','1','2','7'),('1463','0','1','2','9'),('1466','17','1','2','0'),('1469','0','8','2','0'),('1477','0','18','2','0'),('148','69','1','2','7'),('1483','46','4','1','7'),('1484','8','1','2','8'),('1485','53','1','1','7'),('1492','27','1','2','8'),('1499','48','7','1','9'),('150','47','1','2','8'),('1503','0','6','2','7'),('1507','63','1','1','9'),('1508','27','1','1','7'),('1509','63','1','1','9'),('151','0','2','2','0'),('1510','27','1','1','9'),('1511','44','16','2','6'),('1512','0','18','2','0'),('1513','44','16','2','6'),('1517','46','4','1','8'),('1519','45','7','1','8'),('1524','70','2','1','8'),('1529','0','1','2','0'),('153','0','2','2','8'),('1536','70','2','2','8'),('1539','45','1','1','5'),('1540','50','1','1','8'),('1541','45','1','2','7'),('1544','59','4','1','8'),('1545','45','3','1','8'),('1549','48','7','1','9'),('1555','22','1','2','0'),('1557','25','1','2','0'),('1559','15','1','2','9'),('1564','8','1','2','7'),('1565','12','1','2','8'),('1568','0','0','2','8'),('1569','1','2','2','8'),('157','12','1','2','9'),('1571','45','2','1','9'),('1572','0','0','1','7'),('1573','45','2','1','8'),('1574','0','0','1','8'),('1575','1','2','2','0'),('1578','26','1','1','7'),('158','46','4','2','7'),('1580','38','1','1','9'),('1585','3','2','2','0'),('1586','15','1','2','0'),('1588','49','7','1','8'),('1590','57','7','1','7'),('1591','52','7','1','8'),('1592','46','4','1','7'),('1593','49','7','1','7'),('1594','17','1','1','9'),('16','12','1','2','9'),('160','66','2','2','7'),('1609','0','1','2','0'),('161','16','1','2','7'),('1611','37','1','2','0'),('1612','48','7','1','8'),('1613','0','1','2','7'),('1615','52','7','1','7'),('1617','0','7','1','8'),('1618','11','1','1','7'),('1619','12','1','2','7'),('1624','0','1','2','6'),('1625','45','7','1','8'),('1626','51','7','1','8'),('1630','0','1','2','0'),('1632','57','7','1','8'),('1634','48','7','1','0'),('1635','59','4','1','9'),('1650','1','2','2','0'),('1656','1','2','2','9'),('1659','0','2','2','0'),('1660','66','2','2','8'),('1662','66','2','2','8'),('1668','52','7','1','7'),('167','0','1','2','8'),('1670','53','1','1','7'),('1675','17','1','2','0'),('1678','0','2','2','7'),('1679','14','4','2','8'),('168','16','1','2','8'),('1681','0','10','1','0'),('1684','51','7','1','0'),('1689','58','7','1','8'),('169','2','1','2','9'),('1691','54','1','1','8'),('1698','58','7','1','8'),('1699','48','7','1','8'),('1700','53','1','1','7'),('1708','0','0','1','7'),('1710','50','1','1','0'),('1712','46','4','1','8'),('1719','0','1','2','0'),('1728','16','1','2','0'),('173','62','1','2','7'),('1732','0','1','2','7'),('1733','12','1','2','0'),('1737','0','2','2','8'),('1743','54','4','1','8'),('1744','5','1','2','0'),('1746','56','2','2','0'),('1747','47','1','1','8'),('176','0','9','2','0'),('1764','2','1','2','0'),('1767','45','1','1','8'),('1774','58','7','1','7'),('1776','0','2','2','7'),('1777','0','7','1','7'),('1781','0','2','2','0'),('1783','5','1','2','8'),('1788','0','17','2','0'),('1789','0','1','2','0'),('179','45','2','1','0'),('1790','1','2','2','8'),('1791','42','2','2','0'),('1792','59','4','2','0'),('1795','0','10','1','0'),('1799','16','1','2','0'),('180','16','1','2','6'),('1803','0','10','1','8'),('1806','46','4','1','0'),('1809','0','7','1','0'),('1810','8','1','1','6'),('1817','0','7','1','7'),('1819','57','7','1','7'),('1821','49','7','1','8'),('1822','0','10','1','7'),('1826','50','5','1','7'),('1828','12','1','2','0'),('183','13','1','2','0'),('1830','1','2','2','7'),('1832','0','7','1','8'),('1834','12','1','2','0'),('1843','63','1','1','8'),('1851','46','4','1','8'),('1855','48','7','1','8'),('186','46','10','1','9'),('1865','57','7','1','7'),('1874','48','7','1','8'),('1876','5','1','2','0'),('1880','45','7','1','8'),('1882','58','7','1','7'),('1883','57','7','1','8'),('1889','1','2','2','9'),('1898','46','2','2','7'),('190','45','3','2','8'),('1902','66','2','2','0'),('1904','4','1','2','0'),('1907','0','2','2','7'),('191','4','1','2','8'),('195','27','1','2','8'),('196','12','1','2','8'),('198','53','1','2','8'),('2006','12','5','1','7'),('2007','9','2','2','8'),('201','5','1','2','8'),('203','0','1','2','7'),('2039','3','2','2','0'),('204','47','7','2','8'),('2040','0','2','2','0'),('2041','0','0','2','8'),('2045','0','17','1','7'),('2048','45','1','2','7'),('2049','19','1','2','9'),('2054','48','7','1','0'),('2056','2','1','2','0'),('2058','5','1','2','0'),('2061','9','2','2','0'),('2062','40','1','2','8'),('2071','55','7','1','7'),('2079','8','1','2','0'),('2083','0','1','2','8'),('2084','12','1','2','7'),('2085','0','0','2','7'),('2086','0','0','2','8'),('2087','0','8','2','0'),('2089','0','8','2','0'),('2097','46','4','1','8'),('2099','46','4','1','8'),('2100','0','7','1','8'),('2104','0','18','2','0'),('2129','0','0','2','0'),('213','15','1','2','9'),('2158','0','9','2','0'),('2167','1','2','2','8'),('2169','0','2','2','0'),('2175','0','2','2','0'),('2181','46','4','1','8'),('2183','46','4','1','6'),('2190','68','4','1','7'),('2191','46','4','1','7'),('2194','48','7','1','0'),('2196','46','4','1','8'),('220','70','1','2','8'),('2208','47','1','1','0'),('2217','66','2','2','8'),('222','12','1','2','8'),('2222','0','2','2','7'),('2227','1','2','2','0'),('2228','1','2','2','7'),('2230','1','2','2','0'),('2231','32','2','2','0'),('2237','0','2','2','0'),('2238','4','1','2','8'),('2242','0','1','2','0'),('225','15','1','2','8'),('2251','22','1','2','7'),('2259','70','1','2','8'),('2265','11','2','2','0'),('2287','0','1','2','0'),('2288','0','7','1','8'),('2289','8','1','2','7'),('2291','46','4','1','7'),('2292','69','1','2','8'),('2306','0','10','1','7'),('2308','0','7','1','0'),('231','12','1','2','8'),('2311','49','7','1','0'),('2312','68','4','1','8'),('2357','0','1','2','0'),('236','13','1','2','9'),('237','8','1','2','8'),('2382','0','1','2','0'),('2392','47','1','2','0'),('2395','56','2','2','7'),('2409','46','4','1','9'),('241','1','2','2','8'),('2410','5','1','2','8'),('242','69','1','2','9'),('2420','47','7','1','8'),('244','1','2','2','9'),('2451','2','1','2','7'),('2465','0','10','1','0'),('247','22','1','2','7'),('2470','0','9','2','0'),('2476','0','1','2','7'),('2488','40','1','2','8'),('250','3','1','2','8'),('251','61','1','2','5'),('253','12','1','2','8'),('254','0','1','2','0'),('255','20','1','2','8'),('256','0','1','2','9'),('259','18','1','2','7'),('260','5','1','2','8'),('2628','9','2','1','7'),('264','12','1','2','8'),('265','0','1','2','8'),('267','70','1','2','9'),('2670','8','1','1','0'),('269','30','1','2','8'),('270','0','2','2','7'),('2729','1','2','2','8'),('274','12','1','2','6'),('275','0','1','2','0'),('276','69','1','2','8'),('2762','0','1','1','0'),('283','24','1','2','0'),('2844','42','2','2','8'),('2845','15','1','2','0'),('2846','0','1','2','0'),('2847','28','1','2','8'),('2854','66','2','2','0'),('2855','0','2','2','0'),('2856','63','1','2','0'),('2857','0','2','2','0'),('2859','45','1','1','8'),('2863','54','7','1','8'),('2865','51','7','1','6'),('287','0','1','2','0'),('2873','51','7','1','8'),('2874','46','4','1','0'),('2875','51','7','1','8'),('2877','51','7','1','8'),('2882','46','4','1','0'),('2883','45','2','1','0'),('2884','1','2','2','0'),('2896','0','1','2','0'),('290','21','9','2','8'),('2910','0','1','2','0'),('2913','42','2','2','7'),('2918','8','5','1','7'),('2921','0','1','2','0'),('2922','22','1','1','7'),('293','19','1','2','9'),('2938','13','1','2','8'),('294','63','1','2','8'),('2950','1','2','2','7'),('2960','26','1','2','8'),('2961','24','1','2','6'),('2962','68','2','2','6'),('2963','24','1','2','0'),('2971','0','2','2','0'),('2985','14','4','2','6'),('2986','1','2','2','7'),('2990','0','0','1','0'),('2991','43','2','2','0'),('2993','26','1','2','6'),('2996','0','1','2','0'),('2998','15','1','2','0'),('2999','14','2','2','7'),('3000','15','1','2','0'),('3001','70','2','2','0'),('3006','56','2','2','0'),('3007','46','2','1','0'),('3008','68','2','2','0'),('3015','0','2','2','0'),('303','0','1','2','7'),('3041','46','4','1','7'),('3063','48','7','1','7'),('309','5','1','2','9'),('3095','50','1','1','8'),('3096','63','0','1','6'),('3098','45','2','1','0'),('3099','0','1','2','8'),('3111','0','1','2','7'),('3113','47','7','1','8'),('3134','0','1','2','7'),('3139','1','2','2','8'),('314','12','1','2','7'),('3140','0','1','2','8'),('318','0','8','2','8'),('3208','28','1','2','0'),('3248','4','1','2','0'),('325','16','1','2','8'),('3259','53','1','1','7'),('326','45','1','2','8'),('3262','45','2','1','0'),('3265','46','10','1','7'),('327','0','1','2','0'),('3279','0','8','2','8'),('329','73','1','2','6'),('3333','30','1','2','0'),('3336','45','7','1','0'),('334','5','1','2','9'),('3347','0','2','2','0'),('3351','32','2','2','0'),('3359','45','1','1','7'),('3367','63','1','1','8'),('3376','0','2','2','0'),('340','2','2','2','8'),('3405','18','1','2','6'),('3406','2','1','2','0'),('3407','8','1','2','0'),('341','20','1','2','8'),('344','70','1','2','7'),('345','15','1','2','9'),('3461','0','4','1','7'),('3463','0','1','2','7'),('3466','15','1','2','0'),('347','35','1','2','8'),('3471','0','7','1','0'),('3475','26','1','2','0'),('3476','24','1','2','7'),('3477','24','1','2','0'),('3478','26','1','2','0'),('3535','0','0','2','0'),('354','0','1','2','8'),('3543','0','0','2','0'),('3548','0','7','1','8'),('3550','1','2','2','8'),('3552','46','4','1','0'),('3554','0','2','2','7'),('356','12','1','2','8'),('357','0','1','2','8'),('3580','0','1','2','7'),('3581','0','1','2','0'),('359','12','1','2','8'),('360','47','1','2','9'),('3632','9','2','2','0'),('3636','1','2','2','0'),('3638','9','2','2','0'),('3640','1','2','2','0'),('3641','0','1','2','6'),('3642','2','1','2','7'),('3643','8','1','2','0'),('3645','8','1','2','7'),('365','1','2','2','7'),('3651','13','1','2','0'),('3653','15','1','2','7'),('3664','4','1','2','0'),('3680','48','7','2','7'),('3689','0','8','2','0'),('3695','0','8','2','0'),('3696','0','8','2','0'),('3697','0','8','2','0'),('3702','14','2','2','0'),('378','15','1','2','7'),('3794','0','2','2','7'),('3795','26','1','2','0'),('3796','2','1','2','0'),('380','12','5','2','8'),('381','12','1','2','8'),('382','5','1','2','8'),('3826','1','2','2','0'),('3860','63','3','2','0'),('3877','9','2','2','0'),('389','7','1','2','8'),('3894','46','4','2','0'),('3901','0','2','2','0'),('3902','9','2','2','0'),('3906','0','2','2','0'),('3912','0','2','2','0'),('395','11','1','2','9'),('398','12','1','2','0'),('3990','47','7','2','0'),('3995','0','2','2','0'),('4014','47','7','2','0'),('402','0','0','2','8'),('403','10','1','2','8'),('4030','46','4','1','8'),('4031','0','12','1','0'),('404','10','1','2','9'),('4043','57','7','1','0'),('4045','51','7','1','8'),('4058','0','1','2','0'),('406','34','2','2','8'),('407','12','1','2','8'),('411','17','1','2','0'),('4127','41','1','2','0'),('4128','21','9','2','6'),('415','0','1','2','8'),('4168','12','1','2','0'),('4172','1','2','2','0'),('4173','1','2','2','0'),('4174','1','2','2','0'),('4175','1','2','2','0'),('4176','1','2','2','0'),('4177','1','2','2','0'),('4178','46','10','2','0'),('4179','1','2','2','0'),('4183','0','0','2','6'),('4184','49','7','2','7'),('4187','68','2','2','0'),('419','27','1','2','6'),('4198','24','1','2','0'),('420','70','1','2','9'),('4200','0','2','2','0'),('4201','66','2','2','0'),('422','19','1','2','0'),('4250','0','12','1','8'),('4255','0','0','1','7'),('426','15','1','2','7'),('4261','0','2','2','0'),('4264','58','7','1','0'),('4270','48','7','1','8'),('4278','47','1','2','0'),('428','0','1','2','8'),('4280','12','1','2','0'),('4298','1','2','2','0'),('4320','9','2','2','0'),('4340','8','1','2','0'),('4347','9','2','2','0'),('435','0','1','2','0'),('4353','48','0','1','7'),('4354','55','7','1','0'),('4359','0','1','2','0'),('4382','63','1','1','0'),('439','18','1','2','0'),('440','15','1','2','8'),('4408','8','1','2','0'),('4412','0','0','2','0'),('445','0','1','2','8'),('447','25','1','2','8'),('448','45','2','2','8'),('453','22','1','2','8'),('461','63','3','1','9'),('466','34','2','2','9'),('468','61','1','2','9'),('470','20','1','2','8'),('474','0','1','2','8'),('475','0','1','2','8'),('476','0','1','2','8'),('477','73','1','2','7'),('478','16','1','2','9'),('481','22','1','2','6'),('482','45','1','2','9'),('484','46','4','2','0'),('485','30','1','2','8'),('492','0','1','2','7'),('493','5','1','2','8'),('4986','46','4','1','7'),('4995','46','4','1','0'),('4997','46','4','1','8'),('4999','46','4','1','8'),('5001','46','4','1','8'),('5006','51','7','1','0'),('501','62','1','2','0'),('5021','46','4','1','8'),('5023','46','4','1','9'),('503','18','1','2','8'),('5063','46','4','1','0'),('507','8','1','2','7'),('509','5','1','2','8'),('5100','15','1','2','0'),('5110','46','4','1','7'),('512','62','1','2','7'),('518','2','1','1','9'),('521','8','1','2','7'),('523','0','1','2','8'),('524','0','1','2','0'),('527','61','1','2','8'),('529','0','1','2','0'),('531','8','1','2','7'),('533','73','1','2','7'),('534','12','1','2','7'),('5399','17','1','2','0'),('541','4','1','2','7'),('543','0','1','2','8'),('5451','13','1','2','0'),('546','30','1','2','9'),('5469','0','1','2','0'),('5479','15','1','2','0'),('548','22','1','2','7'),('549','2','1','2','8'),('55','16','1','2','8'),('5501','0','1','2','0'),('5502','45','2','1','0'),('551','7','1','2','8'),('5521','0','1','2','0'),('5527','46','4','1','8'),('5542','46','4','1','0'),('5573','0','4','1','7'),('5574','46','4','1','0'),('5575','46','4','1','0'),('5587','0','6','1','7'),('559','3','1','2','8'),('56','15','1','2','8'),('560','24','1','2','8'),('563','45','3','1','7'),('564','1','2','1','7'),('567','45','2','1','8'),('568','1','2','1','8'),('569','0','1','2','9'),('571','0','1','2','8'),('5728','2','0','2','7'),('573','45','1','1','8'),('5733','0','1','2','0'),('574','14','4','1','9'),('5740','0','7','1','0'),('5742','0','10','1','0'),('5744','0','12','1','8'),('5748','0','7','1','8'),('575','45','1','1','8'),('578','9','2','2','8'),('5799','20','1','2','0'),('580','33','9','2','9'),('5801','20','1','2','0'),('5808','12','1','2','0'),('581','15','1','2','8'),('582','0','1','1','8'),('5824','63','3','2','0'),('5833','8','1','2','0'),('5838','0','2','2','0'),('5841','2','1','2','0'),('585','27','1','2','8'),('5866','51','7','1','7'),('588','0','2','2','8'),('591','18','1','2','8'),('592','0','1','2','8'),('5922','42','2','2','0'),('593','15','1','2','7'),('5942','0','0','2','0'),('5947','0','2','2','0'),('5951','9','2','2','0'),('5959','0','2','2','0'),('596','53','1','2','8'),('5965','45','2','1','0'),('597','45','1','1','8'),('5995','1','2','2','0'),('6014','0','2','2','0'),('602','63','1','1','9'),('6026','0','2','2','0'),('6028','1','2','2','0'),('603','63','1','1','9'),('6030','47','7','2','0'),('6031','38','1','2','8'),('604','0','0','1','9'),('605','46','4','1','9'),('606','9','2','1','9'),('607','12','0','2','8'),('6071','0','2','2','0'),('6079','0','2','2','0'),('610','49','0','1','9'),('6108','0','5','1','7'),('612','53','1','2','8'),('6139','0','1','2','0'),('614','0','9','2','7'),('615','53','12','1','8'),('6153','0','2','2','0'),('6157','46','4','1','7'),('6158','0','2','1','0'),('617','53','12','1','8'),('6191','0','1','2','0'),('6193','0','12','2','7'),('6197','71','1','2','0'),('6234','9','4','2','0'),('624','29','9','2','8'),('6342','0','2','2','0'),('6353','0','2','2','0'),('6358','46','4','1','9'),('636','38','9','1','9'),('637','0','9','2','8'),('638','2','1','2','7'),('639','21','9','2','7'),('640','21','9','2','7'),('641','38','9','2','8'),('642','0','8','2','7'),('643','21','9','2','8'),('6443','0','1','2','0'),('646','0','9','2','7'),('6469','0','1','2','0'),('647','0','9','2','8'),('648','0','9','2','7'),('6483','17','1','2','7'),('649','0','9','2','8'),('6492','8','1','2','0'),('6493','8','1','2','0'),('6494','8','1','2','0'),('6499','37','1','2','0'),('650','36','9','2','8'),('6504','68','2','2','0'),('651','0','9','2','7'),('6514','9','2','2','0'),('652','2','1','2','8'),('6520','9','2','2','0'),('653','29','9','2','8'),('6539','0','2','2','0'),('654','38','9','2','0'),('6544','47','7','1','0'),('6549','0','2','2','0'),('655','36','9','2','7'),('6551','55','7','1','0'),('6556','1','2','1','0'),('6557','55','7','1','0'),('656','36','9','2','0'),('6567','9','4','2','0'),('657','0','9','2','0'),('658','0','9','2','7'),('6581','0','0','2','0'),('6588','0','10','1','0'),('659','0','9','2','7'),('6594','12','1','2','0'),('66','39','1','2','7'),('660','48','7','2','8'),('6606','1','2','2','0'),('6609','0','7','1','7'),('661','0','9','2','8'),('6610','0','5','1','0'),('6611','0','7','1','7'),('662','36','9','2','7'),('6628','0','2','2','0'),('663','0','9','2','8'),('664','0','9','2','7'),('665','0','9','2','7'),('666','15','2','2','8'),('667','36','9','2','8'),('668','46','0','2','8'),('669','0','9','2','7'),('67','27','1','2','9'),('670','51','7','2','7'),('671','63','1','1','9'),('6716','46','4','1','0'),('6717','46','4','1','0'),('6719','46','4','1','0'),('6773','58','7','1','0'),('678','45','1','1','8'),('6786','45','1','1','7'),('68','17','1','2','8'),('681','0','8','2','8'),('6825','0','2','2','0'),('6834','1','2','2','0'),('684','1','2','2','6'),('6840','9','2','2','0'),('6844','2','1','2','0'),('6845','50','7','1','8'),('6850','46','4','1','0'),('6851','46','4','1','7'),('6861','47','7','1','0'),('6870','0','1','2','0'),('69','16','1','2','8'),('6921','46','4','1','0'),('698','0','1','2','8'),('70','47','1','2','8'),('7052','1','2','2','0'),('7056','32','2','2','8'),('71','27','1','2','7'),('7154','46','4','1','0'),('7156','46','4','1','0'),('7158','53','1','1','0'),('7162','0','10','1','0'),('7173','0','10','1','0'),('7175','0','10','1','0'),('72','0','1','2','7'),('7239','0','2','2','0'),('7273','46','4','1','0'),('7274','65','7','1','0'),('7275','46','4','1','0'),('7283','46','4','1','0'),('7285','46','4','1','0'),('7286','46','4','1','0'),('7308','1','2','2','0'),('731','65','7','1','8'),('7320','58','7','1','0'),('7322','46','4','1','0'),('734','0','1','1','9'),('7348','46','4','1','0'),('735','0','8','2','7'),('7357','48','7','1','7'),('7366','46','4','1','0'),('737','0','8','2','0'),('7374','1','2','2','0'),('7375','1','2','2','0'),('7381','1','2','2','0'),('7395','9','2','2','0'),('7439','65','7','1','8'),('7440','34','2','2','0'),('7452','51','7','1','0'),('7458','45','1','2','0'),('750','69','1','1','7'),('7570','46','4','1','0'),('7583','0','7','1','0'),('7584','1','2','1','8'),('76','5','1','2','9'),('765','24','1','2','7'),('7662','47','7','2','0'),('767','0','9','2','7'),('770','0','0','2','9'),('771','12','1','2','7'),('7747','45','1','2','0'),('776','0','1','2','8'),('777','3','1','2','8'),('7800','46','4','1','0'),('791','0','2','2','7'),('7911','0','1','2','0'),('792','4','1','2','7'),('793','0','2','2','8'),('7947','0','7','1','7'),('795','0','2','2','0'),('7950','0','10','1','0'),('7958','70','1','2','0'),('797','2','2','2','8'),('798','0','9','2','7'),('7984','0','7','1','0'),('799','29','9','2','7'),('8','12','1','2','7'),('80','27','1','2','0'),('800','0','9','2','7'),('8005','0','0','1','0'),('8010','1','2','2','0'),('802','0','9','2','0'),('803','21','9','2','7'),('805','29','9','2','7'),('806','0','2','2','7'),('807','0','9','2','7'),('8077','9','2','2','0'),('81','17','1','2','8'),('810','24','1','1','8'),('812','2','1','1','9'),('8151','15','2','2','0'),('8193','0','1','2','0'),('82','0','10','2','8'),('8215','32','2','2','0'),('8221','52','7','1','0'),('8226','50','7','1','7'),('823','0','0','2','0'),('8237','1','2','2','0'),('824','0','0','2','0'),('8246','50','7','1','7'),('825','0','0','2','0'),('8258','0','7','1','0'),('826','0','2','2','0'),('8269','46','4','1','0'),('828','38','9','2','0'),('829','47','1','1','7'),('830','8','1','2','6'),('831','8','1','2','7'),('8318','0','7','1','0'),('832','8','1','2','7'),('833','8','1','2','7'),('834','46','4','2','7'),('8344','52','7','1','0'),('835','8','1','2','6'),('836','8','1','2','6'),('8360','45','2','2','0'),('837','8','1','2','7'),('8370','68','4','1','0'),('838','33','9','2','7'),('840','0','1','2','8'),('841','2','1','2','9'),('847','5','1','2','9'),('848','63','3','2','9'),('849','11','1','2','9'),('850','69','1','2','7'),('857','16','1','2','8'),('858','5','1','2','0'),('86','15','1','2','9'),('861','18','1','2','8'),('864','12','1','2','8'),('866','5','1','2','9'),('872','8','1','1','8'),('875','45','1','1','8'),('876','0','2','2','7'),('878','1','2','1','7'),('88','0','8','2','8'),('880','9','2','1','9'),('881','9','2','2','8'),('882','63','1','1','9'),('884','1','2','2','8'),('892','9','2','2','0'),('894','0','7','1','9'),('895','46','4','1','9'),('9','5','1','2','9'),('90','24','1','2','8'),('903','33','9','2','7'),('904','0','9','2','8'),('905','0','9','2','7'),('906','0','9','2','7'),('907','0','9','2','7'),('912','0','8','2','8'),('914','45','3','2','8'),('915','0','8','2','8'),('916','9','0','1','8'),('917','1','2','2','9'),('918','58','7','1','8'),('924','1','2','2','9'),('926','22','1','2','8'),('928','47','1','2','8'),('933','40','1','2','0'),('935','9','2','2','9'),('937','0','1','2','8'),('939','0','0','2','8'),('940','2','1','2','7'),('942','46','4','2','9'),('943','42','2','2','8'),('95','0','1','2','7'),('950','12','1','2','8'),('951','46','4','1','8'),('959','13','1','2','8'),('960','2','1','2','0'),('964','12','1','2','7'),('965','53','12','1','7'),('967','39','1','2','7'),('969','68','2','2','8'),('972','0','0','2','8'),('975','0','2','2','0'),('976','0','2','2','8'),('977','66','2','2','8'),('979','0','2','2','0'),('981','0','2','1','0'),('983','11','2','2','8'),('987','9','2','2','8'),('994','16','1','2','0'),('997','0','8','2','0');
/*!40000 ALTER TABLE `course_info1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-04 10:52:42
