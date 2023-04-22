CREATE DATABASE  IF NOT EXISTS `library` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `library`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `book_image`
--

DROP TABLE IF EXISTS `book_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_image` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `book_code` varchar(45) NOT NULL,
  `save_name` varchar(100) NOT NULL,
  `origin_name` varchar(100) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_image`
--

LOCK TABLES `book_image` WRITE;
/*!40000 ALTER TABLE `book_image` DISABLE KEYS */;
INSERT INTO `book_image` VALUES (2,'소록-999','가짜이름2.png','진짜이름2.png'),(3,'소록-999','가짜이름3.png','진짜이름3.png'),(4,'소록-999','가짜이름4.png','진짜이름4.png'),(13,'소록-990','78942fb9f06342dcb1b10e980a27723f.jpg','sample.jpg'),(14,'소록-27','9c6fa1a5f3bb4b9689d457f5200c161b.jpg','main_background.jpg');
/*!40000 ALTER TABLE `book_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_like`
--

DROP TABLE IF EXISTS `book_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_like` (
  `like_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`like_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_like`
--

LOCK TABLES `book_like` WRITE;
/*!40000 ALTER TABLE `book_like` DISABLE KEYS */;
INSERT INTO `book_like` VALUES (1,1,1),(3,2,1),(4,3,1),(5,4,1),(7,1,2),(8,481,1),(9,481,2),(10,481,3),(11,481,4),(12,473,1),(13,473,2),(14,473,3),(15,473,4),(16,473,5),(17,473,6),(18,473,6),(19,473,6),(20,473,6);
/*!40000 ALTER TABLE `book_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_mst`
--

DROP TABLE IF EXISTS `book_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_mst` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `book_code` varchar(45) NOT NULL,
  `book_name` varchar(45) NOT NULL,
  `author` varchar(45) DEFAULT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  `publication_date` date DEFAULT NULL,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`book_id`),
  UNIQUE KEY `book_code_UNIQUE` (`book_code`)
) ENGINE=InnoDB AUTO_INCREMENT=482 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_mst`
--

LOCK TABLES `book_mst` WRITE;
/*!40000 ALTER TABLE `book_mst` DISABLE KEYS */;
INSERT INTO `book_mst` VALUES (27,'소록-27','김종욱 찾기','전아리','노블마인','2010-11-22','소설'),(28,'소록-28','멈추지마 다시 꿈부터 써봐','김수영','웅진지식하우스','2010-04-30','시/에세이'),(29,'소록-29','스토리 건배사','김미경','21세기북스','2010-11-15','자기계발'),(30,'소록-30','홀로 사는 즐거움','법정','샘터사','2004-05-01','시/에세이'),(31,'소록-31','말과 침묵','법정','샘터사','2010-02-25','시/에세이'),(32,'소록-32','FBI 행동의 심리학','조 내버로','리더스북','2010-09-13','자기계발'),(33,'소록-33','버리고 떠나기','법정','샘터사','2001-08-05','시/에세이'),(34,'소록-34','대화(한 지식인의 삶과 사상)','리영희','한길사','2005-03-10','정치/사회'),(35,'소록-35','텅빈 충만','법정','샘터사','2001-10-27','시/에세이'),(36,'소록-36','그물에 걸리지 않는 바람처럼','법정','샘터사','2002-10-22','종교'),(37,'소록-37','종이 여자','기욤 뮈소','밝은세상','2010-12-21','소설'),(38,'소록-38','지성에서 영성으로','이어령','열림원','2010-05-13','종교'),(39,'소록-39','꿈이 나에게 묻는 열 가지 질문(선물용 특별한정판)(드림노트포함)','존 맥스웰','비즈니스맵','2010-12-17','자기계발'),(40,'소록-40','산방한담','법정','샘터사','2001-10-17','시/에세이'),(41,'소록-41','아웃라이어(OUTLIERS)','말콤 글래드웰','김영사','2009-01-27','자기계발'),(42,'소록-42','스프링','닉 태슬러','흐름출판','2010-11-01','경제/경영'),(43,'소록-43','원피스. 59','EIICHIRO ODA','대원씨아이(주)','2010-11-30','만화'),(44,'소록-44','진보집권플랜: 오연호가 묻고 조국이 답하다','조국','오마이북','2010-11-05','정치/사회'),(45,'소록-45','흑집사. 10','YANA TOBOSO','학산문화사','2010-11-29','만화'),(46,'소록-46','반성','김용택','더숲','2010-11-23','시/에세이'),(47,'소록-47','리영희 평전','김삼웅','책보세','2010-12-10','정치/사회'),(48,'소록-48','인도기행(개정판)','법정','샘터','2006-06-15','여행/기행'),(49,'소록-49','아름다운 마무리','법정','문학의숲','2008-11-15','시/에세이'),(50,'소록-50','오두막 편지(개정판)','법정','이레','2009-07-22','시/에세이'),(51,'소록-51','전환시대의 논리(창비신서 4)','리영희','창작과비평사','2006-03-02','역사/문화'),(52,'소록-52','서 있는 사람들','법정','샘터사','2003-02-28','시/에세이'),(53,'소록-53','영혼의 모음','법정','샘터사','2002-01-25','시/에세이'),(54,'소록-54','압구정 소년들','이재익','황소북스','2010-12-01','소설'),(55,'소록-55','수학도둑. 19(코믹 메이플스토리','송도수','서울문화사','2010-11-20','아동'),(56,'소록-56','오두막','윌리엄 폴 영','세계사','2009-03-16','소설'),(57,'소록-57','서른살이 심리학에게 묻다','김혜남','갤리온','2008-02-18','인문'),(58,'소록-58','언더그라운드','무라카미 하루키','문학동네','2010-11-24','시/에세이'),(59,'소록-59','못 가본 길이 더 아름답다','박완서','현대문학','2010-08-02','시/에세이'),(60,'소록-60','같이 걷기','이용규','규장','2010-11-26','종교'),(61,'소록-61','우리는 천국으로 출근한다','김종훈','21세기북스','2010-11-15','시/에세이'),(62,'소록-62','탐정클럽','히가시노 게이고','노블마인','2010-10-12','소설'),(63,'소록-63','매일 읽는 긍정의 한 줄','린다 피콘','책이있는풍경','2008-12-28','시/에세이'),(64,'소록-64','2011 세계경제대전망(이코노미스트)(25주년 특별판)','THE ECONOMIST','한국경제신문사','2010-12-05','경제/경영'),(65,'소록-65','너를 만나 행복해','나라 요시토모','살림어린이','2010-11-20','유아'),(66,'소록-66','꿈꾸는 다락방','이지성','국일미디어','2007-05-28','자기계발'),(67,'소록-67','내일은 실험왕. 15: 지진의 대결(실험키트 포함)','곰돌이 CO','아이세움','2010-10-22','아동'),(68,'소록-68','메이플 스토리 오프라인 RPG. 42','송도수','서울문화사','2010-10-20','아동'),(69,'소록-69','혼 창 통','이지훈','쌤앤파커스','2010-02-01','경제/경영'),(70,'소록-70','노빈손의 사건만발 독일 여행(신나는 노빈손 세계 역사탐험 시리즈 9)','김성중','뜨인돌출판사','2010-11-30','시/에세이'),(71,'소록-71','시크릿','론다 번','살림Biz','2007-06-18','자기계발'),(72,'소록-72','위로','이시형','생각속의집','2010-11-15','시/에세이'),(73,'소록-73','일기일회(一期一會)(법정 스님 법문집 1)','법정','문학의숲','2009-05-27','시/에세이'),(74,'소록-74','생각이 나서','황경신','소담출판사','2010-11-05','시/에세이'),(75,'소록-75','그들에게 있었다(당신이 알아야 할 모든 것은)','앨런 웨버','엘도라도','2010-11-29','경제/경영'),(76,'소록-76','클린(CLEAN): 씻어내고 새롭게 태어나는 내 몸 혁명','알레한드로 융거','쌤앤파커스','2010-09-20','건강'),(77,'소록-77','병원 직원의 감염관리','김준명','군자출판','2007-10-10','기술/공학'),(78,'소록-78','심리학이 서른 살에게 답하다','김혜남','걷는나무','2009-05-11','인문'),(79,'소록-79','성균관 유생들의 나날. 1(개정판)','정은궐','파란미디어','2009-07-27','소설'),(80,'소록-80','규장각 각신들의 나날. 1','정은궐','파란미디어','2009-07-20','소설'),(81,'소록-81','20대 경제생활 첫걸음','양석조','북스토리','2010-09-20','경제/경영'),(82,'소록-82','어디선가 나를 찾는 전화벨이 울리고','신경숙','문학동네','2010-05-19','소설'),(84,'소록-84','더블 (상)','박민규','창비','2010-11-11','소설'),(85,'소록-85','더블 (하)','박민규','창비','2010-11-11','소설'),(86,'소록-86','하나님의 대사','김하중','규장','2010-01-25','종교'),(87,'소록-87','행복은 전염된다','니컬러스 크리스태키스 외','김영사','2010-11-12','자기계발'),(88,'소록-88','가슴속을 누가 걸어가고 있다','홍영철','문학과지성사','1995-10-05','시/에세이'),(89,'소록-89','페이스 쇼퍼','정수현','자음과모음','2010-11-08','소설'),(90,'소록-90','심리학 콘서트','다고 아키라','스타북스','2006-09-25','인문'),(91,'소록-91','소설 무소유: 법정스님 이야기','정찬주','열림원','2010-04-20','소설'),(92,'소록-92','바보처럼 공부하고 천재처럼 꿈꿔라','신웅진','명진','2007-01-03','시/에세이'),(93,'소록-93','보수는 어떻게 지배하는가','앨버트 O. 허시먼','웅진지식하우스','2010-11-22','정치/사회'),(94,'소록-94','잠들기 전에 읽는 긍정의 한줄','스티브 디거','책이있는풍경','2009-12-07','시/에세이'),(95,'소록-95','퍼니퍼니 학원 앨리스. 22','TACHIBANA HIGUCHI','대원씨아이(주)','2011-01-15','만화'),(96,'소록-96','트렌드 코리아 2011','김난도','미래의창','2010-11-28','경제/경영'),(97,'소록-97','생각을 선물하는 남자','김태원','21세기북스','2010-12-06','자기계발'),(98,'소록-98','그 후에','기욤 뮈소','밝은세상','2010-06-03','소설'),(99,'소록-99','네가 어떤 삶을 살든 나는 너를 응원할 것이다(양장본)','공지영','오픈하우스','2008-03-24','시/에세이'),(101,'소록-101','구해줘','기욤 뮈소','밝은세상','2010-09-13','소설'),(102,'소록-102','4천만이 검색한 오늘의 요리','이혜영','중앙북스','2010-02-17','요리'),(103,'소록-103','W : 세계를 보는 새로운 창','MBC W 제작팀','삼성출판사','2008-11-15','정치/사회'),(104,'소록-104','제4의 불','정지훈','열음사','2010-01-18','경제/경영'),(105,'소록-105','어떻게 살인자를 변호할 수 있을까','페르디난트 폰 쉬라크','갤리온','2010-11-01','정치/사회'),(106,'소록-106','아무렇지도 않게 맑은 날(문학과지성시인선 230)','진동규','문학과지성사','1999-10-11','시/에세이'),(107,'소록-107','위험한 심리학','송형석','청림출판','2009-11-10','인문'),(108,'소록-108','삐뽀삐뽀 119소아과(삐뽀삐뽀 시리즈 1)','하정훈','그린비','2010-02-25','가정/생활'),(109,'소록-109','2010 마음의 소리 VER. 2','조석','코리아하우스','2010-11-23','만화'),(110,'소록-110','아깝다 학원비(CD1장포함)','사교육걱정없는세상','비아북','2010-11-21','가정/생활'),(111,'소록-111','주식투자는 두뇌게임이다(세계 최강의 승부사 이태혁의)','이태혁','카르페디엠','2010-11-20','경제/경영'),(112,'소록-112','정글에서 살아남기. 5','코믹컴','코믹컴','2010-11-23','아동'),(113,'소록-113','머니랩','케이윳 첸','타임비즈','2010-11-01','경제/경영'),(114,'소록-114','나만 위로할 것','김동영','달','2010-10-08','여행/기행'),(115,'소록-115','위대한 설계','스티븐 홍킹','까치','2010-10-05','시/에세이'),(116,'소록-116','인연 이야기(개정판)','법정','문학의숲','2009-07-15','시/에세이'),(117,'소록-117','세계사를 움직이는 다섯 가지 힘','사이토 다카시','뜨인돌출판사','2009-10-26','역사/문화'),(118,'소록-118','사랑해 사랑해 사랑해(아기 그림책 보물창고 1)','버나뎃 로제티 슈스탁','보물창고','2006-12-20','유아'),(119,'소록-119','2011 업계지도','이데일리','리더스하우스','2010-11-29','경제/경영'),(120,'소록-120','사회적 원자','마크 뷰캐넌','사이언스북스','2010-08-14','정치/사회'),(121,'소록-121','일본의 작은 마을','서순정','살림LIFE','2009-10-23','여행/기행'),(122,'소록-122','그램그램 영문법 원정대. 15: 현재완료','장영준','사회평론','2010-11-26','아동'),(123,'소록-123','용의자 X의 헌신','히가시노 게이고','현대문학','2006-08-10','소설'),(124,'소록-124','빌리뱃. 2','우라사와 나오키','학산문화사','2010-11-25','만화'),(125,'소록-125','미래산업전망대','삼성경제연구소','삼성경제연구소','2010-11-12','경제/경영'),(126,'소록-126','월든','헨리 데이빗 소로우','이레','2006-05-20','시/에세이'),(127,'소록-127','우연에 기댈 때도 있었따','황동규','문학과지성사','2003-02-10','시/에세이'),(128,'소록-128','행복의 조건','조지 베일런트','프런티어','2010-01-20','인문'),(129,'소록-129','일본 재발견','이우광','삼성경제연구소','2010-03-19','경제/경영'),(130,'소록-130','인생사전: 당신의 운명을 바꿔줄 위대한 질문100','좌우명연구회','토네이도','2010-11-30','자기계발'),(131,'소록-131','스웨이(사람의 마음을 흔드는 선택의 비밀)','오리 브래프먼','리더스북','2009-10-19','자기계발'),(132,'소록-132','조선 왕을 말하다','이덕일','역사의아침','2010-06-10','역사/문화'),(133,'소록-133','긍정의 한 줄(이야기 속에 담긴)','양태석','책이있는풍경','2010-11-29','시/에세이'),(134,'소록-134','지하 100층짜리 집','이와이 도시오','북뱅크','2010-11-10','유아'),(135,'소록-135','내몸 사용설명서','마이클 로이젠','김영사','2007-03-25','건강'),(136,'소록-136','내 영혼이 따뜻했던 날들','포리스트 카터','아름드리미디어','2009-03-27','소설'),(137,'소록-137','그 청년 바보 의사','안수현','아름다운사람들(이상순)','2009-07-20','종교'),(138,'소록-138','하나님의 타이밍','오스 힐먼','생명의말씀사','2010-09-30','종교'),(139,'소록-139','싸드','김진명','새움','2014-08-15','소설'),(140,'소록-140','유진S 뷰티 시크릿','유진','시드페이퍼','2009-12-21','건강'),(141,'소록-141','스토리텔링의 비밀','마이클 티어노','아우라','2008-11-01','예술/대중문화'),(142,'소록-142','구름빵(마음씨앗 그림책 2)','백희나','한솔수북(한솔교육)','2007-02-05','유아'),(143,'소록-143','서울대 명품 강의','최무영','글항아리','2010-12-01','인문'),(144,'소록-144','회사가 붙잡는 사람들의 1% 비밀','신현만','위즈덤하우스','2009-02-13','자기계발'),(145,'소록-145','삐뽀삐뽀 119 이유식','하정훈','그린비','2006-09-15','요리'),(146,'소록-146','삶이 자꾸 아프다고 말할 때','김재진','시와','2012-07-02','시/에세이'),(147,'소록-147','행복 유전자','제임스 베어드','베이직북스','2010-11-25','자기계발'),(148,'소록-148','사랑하라 한번도 상처받지 않은 것처럼','류시화','오래된미래','2008-10-24','시/에세이'),(149,'소록-149','비즈니스를 위한 명언상식','박영수','추수밭','2010-12-01','자기계발'),(150,'소록-150','프로이트의 환자들','김서영','프로네시스','2010-12-01','인문'),(151,'소록-151','마켓 3.0','필립 코틀러','타임비즈','2010-05-11','경제/경영'),(152,'소록-152','왜 나는 너를 사랑하는가(개정판)','알랭 드 보통','청미래','2007-07-30','소설'),(153,'소록-153','3불전략','이병주','가디언','2010-11-30','자기계발'),(154,'소록-154','감정을 다스리는 사람 감정에 휘둘리는 사람','함규정','청림출판','2010-07-05','자기계발'),(155,'소록-155','세로토닌하라','이시형','중앙북스','2010-07-15','자기계발'),(156,'소록-156','다잉 아이','히가시노 게이고','재인','2010-07-30','소설'),(157,'소록-157','서두르다 잃어버린 머뭇거리다 놓쳐버린','고든 리빙스턴','리더스북','2010-06-10','시/에세이'),(158,'소록-158','상실의 시대:원제 노르웨이의 숲','무라카미 하루키','문학사상사','2010-07-20','소설'),(159,'소록-159','내 인생에 힘이 되어준 한마디','정호승','비채','2006-03-08','시/에세이'),(160,'소록-160','천국의 열쇠','아취볼트 조셉 클로닌','섬앤섬','2005-04-10','소설'),(161,'소록-161','바람과 함께 사라지다 1(양장)','마가렛 미첼','동서문화사','2010-08-01','소설'),(162,'소록-162','바람과 함께 사라지다 2(양장)','마가렛 미첼','동서문화사','2010-08-01','소설'),(163,'소록-163','안네 카레니나(상권)','레프 니콜라예비치 톨스톨이','작가정신','2010-12-07','소설'),(164,'소록-164','안네 카레니나(하권)','레프 니콜라예비치 톨스톨이','작가정신','2010-12-07','소설'),(165,'소록-165','잔양(殘陽)','이정호','계간문예','2009-06-05','소설'),(166,'소록-166','마그마','이정호','계간문예','2009-06-05','소설'),(167,'소록-167','안개','이정호','계간문예','2009-06-05','소설'),(168,'소록-168','늪과바람','이정호','계간문예','2009-06-05','소설'),(169,'소록-169','노인정산조','이정호','계간문예','2009-06-05','소설'),(170,'소록-170','파종기','이정호','계간문예','2009-06-05','소설'),(171,'소록-171','움직이는 벽','이정호','계간문예','2009-06-05','소설'),(172,'소록-172','그들은 왜 갔을까','이정호','계간문예','2009-06-05','소설'),(173,'소록-173','화려한 울음','이정호','계간문예','2009-06-05','소설'),(174,'소록-174','또 얼마나 기다려야 하나','이정호','계간문예','2009-06-05','소설'),(175,'소록-175','장희빈(1)','박종화','범우사','1988-02-25','소설'),(176,'소록-176','장희빈(2)','박종화','범우사','1988-02-25','소설'),(177,'소록-177','장희빈(3)','박종화','범우사','1988-02-25','소설'),(178,'소록-178','장희빈(4)','박종화','범우사','1988-02-25','소설'),(179,'소록-179','무인시대(상)','정완기','범우사','2003-02-05','소설'),(180,'소록-180','무인시대(중)','정완기','범우사','2003-02-05','소설'),(181,'소록-181','무인시대(하)','정완기','범우사','2003-02-05','소설'),(182,'소록-182','여인천하(상)','박종화','범우사','1985-03-30','소설'),(183,'소록-183','여인천하(중)','박종화','범우사','1985-03-30','소설'),(184,'소록-184','여인천하(하)','박종화','범우사','1985-03-30','소설'),(185,'소록-185','월간 다리(1)','범우사','범우사','2002-04-19','역사/문화'),(186,'소록-186','월간 다리(2)','범우사','범우사','2002-04-19','역사/문화'),(187,'소록-187','월간 다리(3)','범우사','범우사','2002-04-19','역사/문화'),(188,'소록-188','월간 다리(4)','범우사','범우사','2002-04-19','역사/문화'),(189,'소록-189','월간 다리(5)','범우사','범우사','2002-04-19','역사/문화'),(190,'소록-190','월간 다리(6)','범우사','범우사','2002-04-19','역사/문화'),(191,'소록-191','월간 다리(7)','범우사','범우사','2002-04-19','역사/문화'),(192,'소록-192','월간 다리(8)','범우사','범우사','2002-04-19','역사/문화'),(193,'소록-193','월간 다리(9)','범우사','범우사','2002-04-19','역사/문화'),(194,'소록-194','월간 다리(10)','범우사','범우사','2002-04-19','역사/문화'),(195,'소록-195','수목원 가는 길','백시종','문예바다','2014-06-25','소설'),(197,'소록-197','황색인','이상문','책만드는집','2012-11-07','소설'),(200,'소록-200','계간문예','서정환','계간문예','2010-09-15','소설'),(201,'소록-201','내손 안의 풍경','이지윤','새얼문화재단','1999-06-25','시/에세이'),(202,'소록-202','바람 속에서','엄지희','새얼문화재단','2008-06-16','시/에세이'),(203,'소록-203','문학교실','서울시교육청 문학교육센터','한국서설가협회','2012-04-05','소설'),(204,'소록-204','낙타의 시간','김성달','도화','2013-11-19','소설'),(205,'소록-205','낙타의 시간','김성달','도화','2013-11-19','소설'),(207,'소록-207','불멸의 꽃','김명희','문예바다','2014-12-15','소설'),(208,'소록-208','불멸의 꽃','김명희','문예바다','2014-12-15','소설'),(211,'소록-211','하찮은 초콜릿 한덩이','임서인','노트북','2013-02-20','소설'),(213,'소록-213','신데렐라의 아침','이건숙','문학나무','2013-06-05','소설'),(215,'소록-215','사랑해 미안해','송양의','월파출판','2013-04-20','시/에세이'),(216,'소록-216','사랑은 누구에게도 머물지않는다','황인수','시한울','2013-08-25','소설'),(217,'소록-217','외나무다리','권이삼','문예바다','2013-08-01','소설'),(218,'소록-218','물한실','최문경','문예바다','2013-08-15','소설'),(219,'소록-219','세상에 말을 걸다','이정은','청어','2014-05-18','소설'),(220,'소록-220','큰놈이 나타났다','안영실','문학나무','2013-09-10','소설'),(222,'소록-222','천운(상)','이운정','범우사','1997-01-20','역사/문화'),(223,'소록-223','천운(중)','이운정','범우사','1997-01-21','역사/문화'),(224,'소록-224','천운(하)','이운정','범우사','1997-01-22','역사/문화'),(225,'소록-225','그리고 마루타에게 묻다(상)','정현웅','아이프렌드','2011-07-01','소설'),(226,'소록-226','그리고 마루타에게 묻다(하)','정현웅','아이프렌드','2011-07-02','소설'),(227,'소록-227','이 시대의 봉이','박희주','책마루','2013-12-15','소설'),(228,'소록-228','늙은 고기잡이의 노래','하유상','미리내','2013-10-25','시/에세이'),(229,'소록-229','스핑크스도 모른다','송하춘','현대문학','2012-07-10','소설'),(230,'소록-230','덕수궁 돌담길','연규호','문학나무','2014-08-11','소설'),(231,'소록-231','그녀들만의 도미요리','노수민','아라','2013-07-15','소설'),(232,'소록-232','젊은 아빠, 엄마에게 주는 72통의 편지','조경훈','범우사','2003-03-10','가정/생활'),(233,'소록-233','우리 소리의 고향','김동준','범우사','2004-07-15','여행/기행'),(234,'소록-234','또하나의 三國志','김용장','범우사','1997-01-30','역사/문화'),(235,'소록-235','누구를 위하여 사랑하는가','스노','아야꼬','1979-09-15','시/에세이'),(236,'소록-236','사로잡힘에 대하여','임헌영','범우사','1998-09-20','소설'),(237,'소록-237','진경산수','채정운','범우','2010-11-10','소설'),(238,'소록-238','탁류(상)','채만식','범우사','1991-06-25','소설'),(239,'소록-239','탁류(하)','채만식','범우사','1991-06-25','소설'),(240,'소록-240','서울역','이청로','문예촌','2012-02-15','소설'),(241,'소록-241','별보다 무거운 바람','최성배','북치는마을','2014-08-22','소설'),(242,'소록-242','응답하라! 사랑아! 결혼아!','이은집','인간과문학사','2014-06-25','소설'),(243,'소록-243','DJ와 책','김삼웅','범우사','2000-10-16','시/에세이'),(244,'소록-244','홀로 견디기','이철호','신아출판사','2014-10-30','시/에세이'),(245,'소록-245','그녀의 검은 가터벨트','이수정','화남','2012-01-31','소설'),(246,'소록-246','2011 신춘문예 당선소설집','이용규','한국소설가협회','2011-01-25','소설'),(247,'소록-247','2013 신춘문예 당선소설집','백시종','한국소설가협회','2013-02-04','소설'),(248,'소록-248','눈덩이처럼 불어나는 행복순환의 법칙','정광호','로대','2009-09-14','시/에세이'),(249,'소록-249','시간의 주름','매들렌 렝글','이숲','2014-02-28','만화'),(250,'소록-250','동티','박충훈','국학자료원','2010-08-04','소설'),(251,'소록-251','무당벌레는 꼭대기에서 난다','박찬순','문학과지성사','2013-11-22','소설'),(252,'소록-252','나에게 꽃을 다오 시간이 흘린 눈물을 다오','윤후명','중앙북스','2010-05-20','소설'),(253,'소록-253','소설직지','김미수','문예바다','2013-12-12','소설'),(254,'소록-254','국민대통령누구없소','박동주','소네트','2012-07-20','시/에세이'),(255,'소록-255','러브스토리','에릭 시갈','범우사','1979-10-01','소설'),(256,'소록-256','황금연못','에네스트 톰프슨','범우사','1987-04-25','소설'),(257,'소록-257','데미안','헤르만 헤세','범우사','1981-12-15','소설'),(258,'소록-258','영혼의 도시락','김옥교','범우사','1999-06-25','소설'),(259,'소록-259','크스트다운 법칙','파킨스','범우사','1980-05-15','경제/경영'),(260,'소록-260','슬픔이여 안녕 마음의 파수꾼','프랑수아즈 사강','범우사','1978-09-05','소설'),(261,'소록-261','동백꽃 소나기','김유정','범우사','1983-07-30','소설'),(262,'소록-262','메밀꽃필 무렵','이효석','범우사','1982-02-25','소설'),(263,'소록-263','탤리 가의 빈집(외)','랜퍼드 윌슨','범우사','1994-10-20','소설'),(264,'소록-264','추월색 자유종 설중매','최찬식','범우사','1984-07-30','소설'),(265,'소록-265','감자 배따라기(외)','김동인','범우사','1982-12-30','소설'),(266,'소록-266','탈출기 홈염(외)','최학송','범우사','1995-08-30','소설'),(267,'소록-267','단재 신채호 문지','신채호','범우사','1999-07-30','시/에세이'),(268,'소록-268','예술가의 명언','연기호','범우사','1982-12-20','시/에세이'),(269,'소록-269','철학 사상이야기(상)','현대사상연구회','범우사','1976-03-05','정치/사회'),(270,'소록-270','철학 사상이야기(하)','현대사상연구회','범우사','1976-03-05','정치/사회'),(271,'소록-271','역사의 연구(1)','A. J. 토인비','범우사','1982-08-20','역사/문화'),(272,'소록-272','역사의 연구(2)','A. J. 토인비','범우사','1982-08-21','역사/문화'),(273,'소록-273','생채식 건강법','고오다 미쓰오','범우사','1999-09-20','건강'),(274,'소록-274','생채식 건강법','고오다 미쓰오','범우사','1999-09-20','건강'),(275,'소록-275','양치는 언덕','미우라 아야꼬','범우사','1983-06-30','소설'),(276,'소록-276','전인목회를 위한 가정사역','김희일','종려가지','2014-09-01','종교'),(277,'소록-277','만해 한용운','임중빈','범우사','1995-06-30','시/에세이'),(278,'소록-278','함께 부르는 노래','유재건','범우','2009-02-25','시/에세이'),(279,'소록-279','윤봉길의사 일대기','임중빈','범우사','1993-05-10','인문'),(280,'소록-280','예언자 영가','칼리지브란','범우사','1982-10-30','시/에세이'),(281,'소록-281','천사의 분노','시드니 셸던','범우사','1989-07-20','소설'),(282,'소록-282','천사의 분노','시드니 셸던','범우사','1989-07-20','소설'),(283,'소록-283','생명경영학','정숙','범우사','1984-05-10','건강'),(284,'소록-284','자화상을 그리듯이','전택부','범우사','1997-11-30','시/에세이'),(285,'소록-285','아름다움을 생각한다','김문환','범우사','2004-09-15','시/에세이'),(286,'소록-286','나의 애송시','이응백','범우','2008-01-20','시/에세이'),(287,'소록-287','쇼팽의음악과 사랑','송숙영','범우사','1981-04-05','인문'),(288,'소록-288','새로운 세계사','마르크 페로','범우사','1994-01-20','역사/문화'),(289,'소록-289','천국의 새(상)','하련생','범우사','2002-05-01','인문'),(290,'소록-290','천국의 새(하)','하련생','범우사','2002-05-01','인문'),(291,'소록-291','밤과 안개','빅토르 프랑클','범우사','1987-10-20','시/에세이'),(292,'소록-292','유태인의 상술','후지다 덴','범우사','1979-12-25','시/에세이'),(293,'소록-293','타인의 피','시몬느 드 보봐르','범우사','1973-05-25','소설'),(294,'소록-294','바다와 사르디니아','D. H. 로렌스','범우사','2000-10-10','소설'),(295,'소록-295','한 출판인의 초상','윤형두','범우사','1995-12-27','시/에세이'),(296,'소록-296','한 출판인의 초상','윤형두','범우사','1995-12-27','시/에세이'),(297,'소록-297','지나온 세월속의 편린들','윤형두','범우사','2009-01-15','시/에세이'),(298,'소록-298','정경조 재미 유공 동포의 반세기','김선미','범우사','2004-01-10','인문'),(299,'소록-299','늪텃집 처녀','라게를뢰프','범우사','1977-02-25','소설'),(300,'소록-300','재미있는 북경 중국어','강영매','범우사','1996-03-05','자기계발'),(301,'소록-301','신약성서 이야기','펄벅','범우사','1984-12-30','종교'),(302,'소록-302','한국소설','백수남','한국소설가협회','2013-12-01','소설'),(303,'소록-303','한국소설','백수남','한국소설가협회','2013-12-01','소설'),(306,'소록-306','부모와 청소년','하임 G. 기너트','범우사','1984-07-30','가정/생활'),(307,'소록-307','중국변형 신화의 세계','김선자','범우사','2001-10-05','역사/문화'),(308,'소록-308','달을 삼킨 아이','김중상','문학나무','2013-10-07','소설'),(309,'소록-309','이래도 될까 지구촌환경','미래환경연수고','범우사','1994-11-30','과학/공학'),(310,'소록-310','나는 왕이로 소이다(외)','홍사용','범우','2005-01-11','소설'),(312,'소록-312','책의 길 나의 길','윤형두','범우사','1990-09-30','시/에세이'),(313,'소록-313','하나되는 한국사','고준환','범우사','1992-01-20','역사/문화'),(314,'소록-314','진정한 기쁨','마라벨 몰간','범우사','1978-01-15','시/에세이'),(315,'소록-315','녹색경전','김욱동','범우사','2001-11-15','시/에세이'),(316,'소록-316','적극적 사고방식','노만 V.필','범우사','1976-11-10','자기계발'),(317,'소록-317','첫사랑','투르게네프','범우사','1983-12-10','소설'),(318,'소록-318','속죄양(외)','루이제린저','범우사','1975-10-01','소설'),(319,'소록-319','버스드라이버','김미선','개미','2013-11-11','소설'),(320,'소록-320','내사랑 내님은',NULL,'순수','2014-02-05','시/에세이'),(321,'소록-321','歸天의 길목','이재욱','한국소설가협회','2009-09-20','소설'),(322,'소록-322','2012 소설창작반 작품집','남산도서관','남산도서관','2012-12-20','시/에세이'),(323,'소록-323','한국소설','한국소설가협회','한국소설가협회','2015-01-01','소설'),(326,'소록-326','엄마 목소리 ','정수희','새얼문화재단','2006-06-30','시/에세이'),(327,'소록-327','아빠의 웃음','이지혜','새얼문화재단','2002-06-20','시/에세이'),(328,'소록-328','송파문학',NULL,'송파문인협회','2010-11-19','시/에세이'),(329,'소록-329','계간문예','서정환','계간문예','2012-06-15','시/에세이'),(330,'소록-330','꽁치를 굽는다','이목연','청어','2009-02-10','소설'),(331,'소록-331','그 사막에는 야생화가 있다','김채형','청어','2013-04-20','소설'),(332,'소록-332','권력과 지식인','전덕규','지식산업사','2011-09-10','정치/사회'),(333,'소록-333','퀼트 탑','홍영숙','문이당','2014-07-10','소설'),(334,'소록-334','시조에 깃든 우리 얼','최승범','범우사','1997-05-20','시/에세이'),(335,'소록-335','믿나라','김리박','범우사','2005-09-22','시/에세이'),(336,'소록-336','아프리카의 별','송양의','월파출판','2013-09-30','소설'),(337,'소록-337','잊지 못할 일','김미연','새얼문화재단','2014-06-15','시/에세이'),(338,'소록-338','붓다, 유혹하다','강준','문화의식','2014-11-22','시/에세이'),(339,'소록-339','꽃비 내리다','김선주','개미','2014-12-10','소설'),(340,'소록-340','히말라야바위취','강명희','청어','2013-11-20','소설'),(341,'소록-341','그 바람의 행적','김외숙','나눔사','2013-11-05','소설'),(342,'소록-342','金氏의 뿌리(상)','김준식','범우사','1996-07-20','소설'),(343,'소록-343','金氏의 뿌리(중)','김준식','범우사','1996-07-20','소설'),(344,'소록-344','카나리아 군도','A. J. 크로닌','범우사','1988-08-20','소설'),(345,'소록-345','독립운동사의 제간제','윤동주','범우사','1992-05-20','역사/문화'),(346,'소록-346','꽃보다 붉은 울음','김성리','알렙','2013-11-19','시/에세이'),(347,'소록-347','꽃보다 붉은 울음','김성리','알렙','2013-11-19','시/에세이'),(348,'소록-348','꽃보다 붉은 울음','김성리','알렙','2013-11-19','시/에세이'),(349,'소록-349','꽃보다 붉은 울음','김성리','알렙','2013-11-19','시/에세이'),(350,'소록-350','꽃보다 붉은 울음','김성리','알렙','2013-11-19','시/에세이'),(351,'소록-351','꽃보다 붉은 울음','김성리','알렙','2013-11-19','시/에세이'),(352,'소록-352','사랑하지 말자','도올','통나무','2012-08-25','시/에세이'),(353,'소록-353','행복마에스트로 1','정혜주','로대','2012-05-18','시/에세이'),(354,'소록-354','행복마에스트로 2','정혜주','로대','2012-05-18','시/에세이'),(355,'소록-355','잿빛달','시가 나오야','소화','2011-11-20','소설'),(356,'소록-356','햇살이 그려준 얼굴','김묘순','천우','2010-12-13','시/에세이'),(357,'소록-357','내 삶을 기쁘게 하는 모든 것들','이정하','고려문화사','2002-12-05','시/에세이'),(358,'소록-358','신인의 뜰에부는 바람','이설영','다온애드','2012-12-11','시/에세이'),(359,'소록-359','가출','김문수','답게','1997-05-20','소설'),(360,'소록-360','산다는 것의 의미 1','피에르 쌍소','동문','2001-12-25','시/에세이'),(361,'소록-361','느리게 산다는 것의 의미 2','피에르 쌍소','동문','2001-05-25','시/에세이'),(362,'소록-362','느리게 산다는 것의 의미 3','피에르 쌍소','동문','2002-07-30','시/에세이'),(363,'소록-363','느리게 산다는 것의 의미 4','피에르 쌍소','동문','2007-01-10','시/에세이'),(364,'소록-364','혼창통(당신의 이 셋을 가졌는가?)','이지훈','샘앤파커스','2010-02-01','시/에세이'),(365,'소록-365','생태도시 아바나의 탄생','요시다 타로','들녘','2004-02-09','시/에세이'),(366,'소록-366','톡톡 튀는 한방이야기','최현','세계문예','1997-08-20','건강'),(367,'소록-367','김교신의 신앙과 저항','나이호리 구니지','익두스','2012-08-10','종교'),(368,'소록-368','김교신의 신앙과 저항','나이호리 구니지','익두스','2012-08-10','종교'),(369,'소록-369','세상이 하나 뿐인','올댓스토리, 허성훈','특허청','2010-12-01','소설'),(370,'소록-370','바람에게','안초근','문경출판사','2010-07-15','시/에세이'),(371,'소록-371','8년의 동행','미치 앨봄','살림','2010-03-15','시/에세이'),(372,'소록-372','가을동화 1','오수연','생각의나무','2001-01-10','소설'),(373,'소록-373','우리집 손님들','최현','세계문예','2004-02-02','시/에세이'),(374,'소록-374','사람을 살리는 생채식','장두석','정신세계사','2004-02-09','건강'),(375,'소록-375','인도 찾아나섰던 콜럼버스를 기억하며','윤대희','국정홍보처','2006-08-31','정치/사회'),(376,'소록-376','같은 하늘 다른 세상','홍용표','LI Networks','2011-12-30','시/에세이'),(377,'소록-377','같은 하늘 다른 세상','홍용표','LI Networks','2011-12-30','시/에세이'),(378,'소록-378','인생의 고난에 고개 숙이지 마라','마크 피셔','진성북스','2012-07-01','소설'),(379,'소록-379','하루 15분 정리의 힘','윤선현','위즈덤하우스','2000-05-23','자기계발'),(380,'소록-380','시와 함께 살아요','권오웅','LI Networks','2011-12-30','시/에세이'),(381,'소록-381','시와 함께 살아요','권오웅','LI Networks','2011-12-30','시/에세이'),(382,'소록-382','나의 아픈것은 강이 되고 산이 되어','김선호','LI Networks','2011-12-30','시/에세이'),(383,'소록-383','나의 아픈것은 강이 되고 산이 되어','김선호','LI Networks','2011-12-30','시/에세이'),(384,'소록-384','그냥 꽃이면 된다','김승기','LI Networks','2011-12-30','시/에세이'),(385,'소록-385','그냥 꽃이면 된다','김승기','LI Networks','2011-12-30','시/에세이'),(386,'소록-386','들꽃','김옥미','LI Networks','2011-12-30','시/에세이'),(387,'소록-387','들꽃','김옥미','LI Networks','2011-12-30','시/에세이'),(388,'소록-388','감사하라 내영혼아','김윤진','LI Networks','2011-12-30','시/에세이'),(389,'소록-389','감사하라 내영혼아','김윤지','LI Networks','2011-12-30','시/에세이'),(390,'소록-390','그늘 아래에서','김준엽','LI Networks','2011-12-30','시/에세이'),(391,'소록-391','그늘 아래에서','김준엽','LI Networks','2011-12-30','시/에세이'),(392,'소록-392','한 많은 어머니 눈물','김찬현','LI Networks','2011-12-30','시/에세이'),(393,'소록-393','한 많은 어머니 눈물','김창현','LI Networks','2011-12-30','시/에세이'),(394,'소록-394','전선의 여명','문용덕','LI Networks','2011-12-30','시/에세이'),(395,'소록-395','전선의 여명','문용덕','LI Networks','2011-12-30','시/에세이'),(396,'소록-396','물그림자','박재홍','LI Networks','2011-12-30','시/에세이'),(397,'소록-397','물그림자','박재홍','LI Networks','2011-12-30','시/에세이'),(398,'소록-398','내안에 뜨는 상현달','백국호','LI Networks','2011-12-30','시/에세이'),(399,'소록-399','내안에 뜨는 상현달','백국호','LI Networks','2011-12-30','시/에세이'),(400,'소록-400','하늘바라기','서경구','LI Networks','2011-12-30','시/에세이'),(401,'소록-401','하늘바라기','서경구','LI Networks','2011-12-30','시/에세이'),(402,'소록-402','보이는 것들에 대한 단상','송은애','LI Networks','2011-12-30','시/에세이'),(403,'소록-403','보이는 것들에 대한 단상','송은애','LI Networks','2011-12-30','시/에세이'),(404,'소록-404','엄마 목소리 ','위수연','LI Networks','2011-12-30','시/에세이'),(405,'소록-405','엄마 목소리 ','위수연','LI Networks','2011-12-30','시/에세이'),(406,'소록-406','나의 인생','이계천','LI Networks','2011-12-30','시/에세이'),(407,'소록-407','나의 인생','이계천','LI Networks','2011-12-30','시/에세이'),(408,'소록-408','내 어린날의 추억','이남로','LI Networks','2011-12-30','시/에세이'),(409,'소록-409','내 어린날의 추억','이남로','LI Networks','2011-12-30','시/에세이'),(410,'소록-410','자연은 나를 품으려 한다','이내윤','LI Networks','2011-12-30','시/에세이'),(411,'소록-411','자연은 나를 품으려 한다','이내윤','LI Networks','2011-12-30','시/에세이'),(412,'소록-412','지상의 빈 의자','이봉명','LI Networks','2011-12-30','시/에세이'),(413,'소록-413','지상의 빈 의자','이봉명','LI Networks','2011-12-30','시/에세이'),(414,'소록-414','그대보다 더 사랑스런 이대','조재훈','LI Networks','2011-12-30','시/에세이'),(415,'소록-415','그대보다 더 사랑스런 이대','조재훈','LI Networks','2011-12-30','시/에세이'),(416,'소록-416','동백꽃 사랑','최경선','LI Networks','2011-12-30','시/에세이'),(417,'소록-417','동백꽃 사랑','최경선','LI Networks','2011-12-30','시/에세이'),(418,'소록-418','눈물 그대로 꽃이 되어','최종진','LI Networks','2011-12-30','시/에세이'),(419,'소록-419','눈물 그대로 꽃이 되어','최종진','LI Networks','2011-12-30','시/에세이'),(420,'소록-420','바다와 소년','설미희','LI Networks','2011-12-30','소설'),(421,'소록-421','바다와 소년','설미희','LI Networks','2011-12-30','소설'),(422,'소록-422','너에게로 가는길','이설영','소리숲','2013-12-11','시/에세이'),(423,'소록-423','너에게로 가는길','이설영','소리숲','2013-12-11','시/에세이'),(424,'소록-424','바다를 찾아 떠나는 돌','김태우','LI Networks','2011-12-30','소설'),(425,'소록-425','바다를 찾아 떠나는 돌','김태우','LI Networks','2011-12-30','소설'),(427,'소록-427','소나무','고규홍','다산기획','2010-12-10','여행/기행'),(428,'소록-428','은행나무','고규홍','다산기획','2010-12-10','여행/기행'),(429,'소록-429','느티나무','고규홍','다산기획','2010-12-10','여행/기행'),(430,'소록-430','사소한것에 목숨 걸지마라(직장인 편)','리처드 칼슨','도솔','2005-03-25','시/에세이'),(431,'소록-431','아홉살 인생','정서현','청년사','1991-12-20','소설'),(432,'소록-432','괭이부리말 아이들','김중미','차작과비평사','2001-10-30','소설'),(433,'소록-433','아무도 네 인생을 대신 살아주지 않는다','필립 체스터필드','뜨란','2003-05-20','시/에세이'),(434,'소록-434','남자처럼 일하고 여자처럼 승리하라','게일 에반스','해냄','2000-07-30','시/에세이'),(435,'소록-435','나에게 딱 좋은 남자','아키모토 야스시','동방미디어','2002-03-15','시/에세이'),(436,'소록-436','세상소리','서림','동서고금','2000-08-16','시/에세이'),(437,'소록-437','우리들의 행복한 시간','공지영','푸른숲','2005-04-18','소설'),(438,'소록-438','성철스님 시봉이야기 1','원택','김영사','2001-12-01','시/에세이'),(439,'소록-439','성철스님 시봉이야기 2','원택','김영사','2001-12-01','시/에세이'),(440,'소록-440','서리꽃 1','김순지','자음과모음','2001-11-24','소설'),(441,'소록-441','서리꽃 2','김순지','자음과모음','2001-11-24','소설'),(442,'소록-442','서리꽃 3','김순지','자음과모음','2001-11-24','소설'),(443,'소록-443','다빈치 코드 1','댄 브라운','베텔스만','2004-07-05','소설'),(444,'소록-444','다빈치 코드 2','댄 브라운','베텔스만','2004-07-05','소설'),(445,'소록-445','마당깊은 집','김원일','문학과지성사','1988-11-01','소설'),(446,'소록-446','내 몸은 너무 오래 서 있거나 걸어왔다','이문구','문학동네','2000-06-15','소설'),(447,'소록-447','야생초 편지','황대권','도솔','2002-10-01','시/에세이'),(448,'소록-448','일본은 없다 ','전여옥','서진','1993-11-15','시/에세이'),(449,'소록-449','일본은 없다 2','전여옥','서진','1993-11-15','시/에세이'),(450,'소록-450','일본은 있다','서현섭','고려원','1994-11-20','시/에세이'),(451,'소록-451','남산의 부장들 1','김충식','동아일보사','1992-11-14','시/에세이'),(452,'소록-452','남산의 부장들 2','김충식','동아일보사','1992-11-07','시/에세이'),(453,'소록-453','남산의 부장들 3','이도성','동아일보사','1993-11-30','시/에세이'),(454,'소록-454','세계 현대사 1','폴 존슨','한마음사','1993-08-10','역사/문화'),(455,'소록-455','세계 현대사 2','폴 존슨','한마음사','1993-08-10','역사/문화'),(456,'소록-456','세계 현대사 3','폴 존슨','한마음사','1993-08-10','역사/문화'),(457,'소록-457','최후의 계염령 1','고원정','범조사','1991-07-10','소설'),(458,'소록-458','최후의 계염령 2','고원정','범조사','1991-07-10','소설'),(459,'소록-459','최후의 계염령 3','고원정','범조사','1991-07-10','소설'),(460,'소록-460','뇌(상)','베르나르 베르베르','열린책들','2002-07-10','소설'),(461,'소록-461','뇌(하)','베르나르 베르베르','열린책들','2002-07-10','소설'),(462,'소록-462','타나토 노트(상)','베르나르 베르베르','열린책들','1994-09-20','소설'),(463,'소록-463','타나토 노트(하)','베르나르 베르베르','열린책들','1994-09-20','소설'),(464,'소록-464','외딴방 1','신경숙','문학동네','1995-10-10','소설'),(465,'소록-465','외딴방 2','신경숙','문학동네','1995-10-10','소설'),(466,'소록-466','애무새 죽이기','하퍼 리','한겨레','1992-10-20','소설'),(467,'소록-467','지식인들(상)','폴 존슨','한언','1993-08-05','역사/문화'),(468,'소록-468','지식인들(하)','폴 존슨','한언','1993-08-05','역사/문화'),(469,'소록-469','권력이동','앨빈 토플러','한국경제신문사','1990-12-01','경제/경영'),(470,'소록-470','아라비안 나이트 1','리처 F.버턴','범우사','1992-12-30','소설'),(471,'소록-471','대한제국 일본 침략사','고원정','현암사','1994-02-01','소설'),(472,'소록-472','호남죽이기 정면돌파','김환태','쟁기','1993-08-20','시/에세이'),(473,'소록-473','고등어','공지영','웅진','1994-06-25','소설'),(474,'소록-999','테스트 도서명','테스터222','테스트 출판사','2023-01-01','가정/생활'),(475,'소록-998','ㅁㅁㅁㅁ','ㅁㅁㅁㅁ','',NULL,'기술/공학'),(476,'소록-997','ㄴㄴㄴ','ㄴㄴ','ㄴㄴㄴ',NULL,'가정/생활'),(477,'소록-996','ㅇㅇㅇ','ㅇㅇㅇ','ㅇㅇㅇ','2023-01-31','아동'),(478,'소록-995','ㄹㄹㄹㄹ','ㄹㄹㄹ','',NULL,'자기계발'),(479,'소록-994','ㅎㅎㅎ','ㅎㅎㅎ','',NULL,'요리'),(481,'소록-990','스프링 부트와 AWS로 혼자 구현하는 웹 서비스','이동욱','프리렉','2023-01-31','기술/공학');
/*!40000 ALTER TABLE `book_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `category_view`
--

DROP TABLE IF EXISTS `category_view`;
/*!50001 DROP VIEW IF EXISTS `category_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `category_view` AS SELECT 
 1 AS `category_id`,
 1 AS `category`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `rental_dtl`
--

DROP TABLE IF EXISTS `rental_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_dtl` (
  `rental_dtl_id` int NOT NULL AUTO_INCREMENT,
  `rental_id` int NOT NULL,
  `book_id` int NOT NULL,
  `return_date` date DEFAULT NULL,
  PRIMARY KEY (`rental_dtl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_dtl`
--

LOCK TABLES `rental_dtl` WRITE;
/*!40000 ALTER TABLE `rental_dtl` DISABLE KEYS */;
INSERT INTO `rental_dtl` VALUES (1,1,472,'2023-01-17'),(2,1,473,NULL),(3,1,474,NULL),(4,2,400,NULL),(5,3,472,NULL),(6,4,450,'2023-01-19'),(7,5,451,NULL),(8,6,27,NULL);
/*!40000 ALTER TABLE `rental_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental_mst`
--

DROP TABLE IF EXISTS `rental_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_mst` (
  `rental_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `rental_date` date NOT NULL,
  `fixed_date` date NOT NULL,
  PRIMARY KEY (`rental_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_mst`
--

LOCK TABLES `rental_mst` WRITE;
/*!40000 ALTER TABLE `rental_mst` DISABLE KEYS */;
INSERT INTO `rental_mst` VALUES (1,1,'2023-01-17','2023-01-31'),(2,1,'2023-01-18','2023-02-01'),(3,2,'2023-01-19','2023-02-02'),(4,2,'2023-01-19','2023-02-02'),(5,2,'2023-01-19','2023-02-02'),(6,2,'2023-01-19','2023-02-02');
/*!40000 ALTER TABLE `rental_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_dtl`
--

DROP TABLE IF EXISTS `role_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_dtl` (
  `role_dtl_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`role_dtl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_dtl`
--

LOCK TABLES `role_dtl` WRITE;
/*!40000 ALTER TABLE `role_dtl` DISABLE KEYS */;
INSERT INTO `role_dtl` VALUES (7,1,1,'2023-01-10 20:23:00','2023-01-10 20:23:00'),(8,1,2,'2023-01-10 20:23:00','2023-01-10 20:23:00'),(9,2,1,'2023-01-18 21:30:19','2023-01-18 21:30:19');
/*!40000 ALTER TABLE `role_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_mst`
--

DROP TABLE IF EXISTS `role_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_mst` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_mst`
--

LOCK TABLES `role_mst` WRITE;
/*!40000 ALTER TABLE `role_mst` DISABLE KEYS */;
INSERT INTO `role_mst` VALUES (1,'ROLE_USER','2023-01-05 20:51:43','2023-01-05 20:51:43'),(2,'ROLE_ADMIN','2023-01-05 20:51:43','2023-01-05 20:51:43'),(3,'ROLE_USER','2023-01-05 20:51:52','2023-01-05 20:51:52'),(4,'ROLE_ADMIN','2023-01-05 20:51:52','2023-01-05 20:51:52');
/*!40000 ALTER TABLE `role_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_mst`
--

DROP TABLE IF EXISTS `user_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_mst` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_mst`
--

LOCK TABLES `user_mst` WRITE;
/*!40000 ALTER TABLE `user_mst` DISABLE KEYS */;
INSERT INTO `user_mst` VALUES (1,'aaa','$2a$10$PT9mK60XHYNuNycCF/wNse6ZsIabyKzSNf3/wBMtWpQNbrC1aWkyG','김준일','abcd@gmail.com','2023-01-10 20:23:00','2023-01-10 20:23:00'),(2,'bbb','$2a$10$dTpQEZF/h/e5lnMvfAgxlOf79akJUcTSJAS9PAXHX/8JkQwqCc8Uq','김준이','bbb@gmail.com','2023-01-18 21:30:19','2023-01-18 21:30:19');
/*!40000 ALTER TABLE `user_mst` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `user_mst_BEFORE_DELETE` BEFORE DELETE ON `user_mst` FOR EACH ROW BEGIN
	delete
    from
		role_dtl
	where
		user_id = old.user_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'library'
--

--
-- Dumping routines for database 'library'
--

--
-- Final view structure for view `category_view`
--

/*!50001 DROP VIEW IF EXISTS `category_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `category_view` AS select row_number() OVER (ORDER BY `book_mst`.`category` )  AS `category_id`,`book_mst`.`category` AS `category` from `book_mst` group by `book_mst`.`category` */;
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

-- Dump completed on 2023-02-09 19:07:56
