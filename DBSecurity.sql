create schema universogames;

use universogames;

-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: universogames
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `compatibilita`
--

DROP TABLE IF EXISTS `compatibilita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compatibilita` (
  `idpiattaforma` int NOT NULL,
  `idvideogioco` int NOT NULL,
  PRIMARY KEY (`idpiattaforma`,`idvideogioco`),
  KEY `idvideogioco` (`idvideogioco`),
  CONSTRAINT `compatibilita_ibfk_1` FOREIGN KEY (`idpiattaforma`) REFERENCES `piattaforma` (`id`),
  CONSTRAINT `compatibilita_ibfk_2` FOREIGN KEY (`idvideogioco`) REFERENCES `videogioco` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compatibilita`
--

LOCK TABLES `compatibilita` WRITE;
/*!40000 ALTER TABLE `compatibilita` DISABLE KEYS */;
INSERT INTO `compatibilita` VALUES (1,1),(3,1),(3,2),(2,3),(3,4);
/*!40000 ALTER TABLE `compatibilita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (8);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `immagine`
--

DROP TABLE IF EXISTS `immagine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `immagine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pathimmagine` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `immagine`
--

LOCK TABLES `immagine` WRITE;
/*!40000 ALTER TABLE `immagine` DISABLE KEYS */;
INSERT INTO `immagine` VALUES (1,'../immagini_progetto/videogiochi/animal_crossing/animal-crossing1.jpg'),(2,'../immagini_progetto/videogiochi/animal_crossing/animal-crossing2.jpg'),(3,'../immagini_progetto/videogiochi/animal_crossing/animal-crossing3.png'),(4,'../immagini_progetto/videogiochi/animal_crossing/animal-crossing4.jpg'),(5,'../immagini_progetto/videogiochi/animal_crossing/animal-crossing5.jpg'),(6,'../immagini_progetto/videogiochi/assasins_creed_valhalla/A1.jpg'),(7,'../immagini_progetto/videogiochi/assasins_creed_valhalla/A2.jpg'),(8,'../immagini_progetto/videogiochi/assasins_creed_valhalla/A3.jpg'),(9,'../immagini_progetto/videogiochi/assasins_creed_valhalla/A4.jpg'),(10,'../immagini_progetto/videogiochi/assasins_creed_valhalla/A5.jpg'),(11,'../immagini_progetto/videogiochi/crash_bandicoot/cb1.jpg'),(12,'../immagini_progetto/videogiochi/crash_bandicoot/cb2.jpg'),(13,'../immagini_progetto/videogiochi/crash_bandicoot/cb3.jpg'),(14,'../immagini_progetto/videogiochi/crash_bandicoot/cb4.jpg'),(15,'../immagini_progetto/videogiochi/crash_bandicoot/cb5.png'),(16,'../immagini_progetto/videogiochi/cyberpunk77/cyberpunk1.jpg'),(17,'../immagini_progetto/videogiochi/cyberpunk77/cyberpunk2.jpg'),(18,'../immagini_progetto/videogiochi/cyberpunk77/cyberpunk3.jpg'),(19,'../immagini_progetto/videogiochi/cyberpunk77/cyberpunk4.jpg'),(20,'../immagini_progetto/videogiochi/cyberpunk77/cyberpunk5.jpg'),(21,'../immagini_progetto/videogiochi/fallout76/fallout76-1.jpg'),(22,'../immagini_progetto/videogiochi/fallout76/fallout76-2.jpg'),(23,'../immagini_progetto/videogiochi/fallout76/fallout76-3.jpg'),(24,'../immagini_progetto/videogiochi/fallout76/fallout76-4.jpg'),(25,'../immagini_progetto/videogiochi/fallout76/fallout76-5.jpg'),(26,'../immagini_progetto/videogiochi/Farcry5/F1.jpg'),(27,'../immagini_progetto/videogiochi/Farcry5/F2.jpg'),(28,'../immagini_progetto/videogiochi/Farcry5/F3.jpg'),(29,'../immagini_progetto/videogiochi/Farcry5/F4.jpg'),(30,'../immagini_progetto/videogiochi/Farcry5/F5.jpg'),(31,'../immagini_progetto/videogiochi/GranTurismo/gt1.jpg'),(32,'../immagini_progetto/videogiochi/GranTurismo/gt2.jpg'),(33,'../immagini_progetto/videogiochi/GranTurismo/gt3.jpg'),(34,'../immagini_progetto/videogiochi/GranTurismo/gt4.jpg'),(35,'../immagini_progetto/videogiochi/GranTurismo/gt5.jpg'),(36,'../immagini_progetto/videogiochi/little_nightmares_2/ln2-1.jpg'),(37,'../immagini_progetto/videogiochi/little_nightmares_2/ln2-2.jpg'),(38,'../immagini_progetto/videogiochi/little_nightmares_2/ln2-3.jpg'),(39,'../immagini_progetto/videogiochi/little_nightmares_2/ln2-4.jpg'),(40,'../immagini_progetto/videogiochi/little_nightmares_2/ln2-5.jpg'),(41,'../immagini_progetto/videogiochi/monster_hunter_rise/mhr1.jpg'),(42,'../immagini_progetto/videogiochi/monster_hunter_rise/mhr2.jpg'),(43,'../immagini_progetto/videogiochi/monster_hunter_rise/mhr3.jpg'),(44,'../immagini_progetto/videogiochi/monster_hunter_rise/mhr4.jpg'),(45,'../immagini_progetto/videogiochi/monster_hunter_rise/mhr5.jpg'),(46,'../immagini_progetto/videogiochi/monster_hunter_rise/mhr6.png'),(47,'../immagini_progetto/videogiochi/ratchet_and_clank_rift_apart/RC1.jpg'),(48,'../immagini_progetto/videogiochi/ratchet_and_clank_rift_apart/RC2.jpg'),(49,'../immagini_progetto/videogiochi/ratchet_and_clank_rift_apart/RC3.jpg'),(50,'../immagini_progetto/videogiochi/ratchet_and_clank_rift_apart/RC4.jpg'),(51,'../immagini_progetto/videogiochi/ratchet_and_clank_rift_apart/RC5.jpg'),(52,'../immagini_progetto/videogiochi/super_mario_bros/SMB1.jpg'),(53,'../immagini_progetto/videogiochi/super_mario_bros/SMB2.jpg'),(54,'../immagini_progetto/videogiochi/super_mario_bros/SMB3.jpg'),(55,'../immagini_progetto/videogiochi/super_mario_bros/SMB4.png'),(56,'../immagini_progetto/videogiochi/super_mario_bros/SMB5.jpg'),(57,'../immagini_progetto/videogiochi/the_last_of_us_2/the_last_of_us_2-1.png'),(58,'../immagini_progetto/videogiochi/the_last_of_us_2/the_last_of_us_2-2.jpg'),(59,'../immagini_progetto/videogiochi/the_last_of_us_2/the_last_of_us_2-3.png'),(60,'../immagini_progetto/videogiochi/the_last_of_us_2/the_last_of_us_2-4.jpg'),(61,'../immagini_progetto/videogiochi/the_last_of_us_2/the_last_of_us_2-5.jpg'),(62,'../immagini_progetto/videogiochi/the_legend_of_zelda/the-legend-of-zelda-breath-of-the-wild-1.jpg'),(63,'../immagini_progetto/videogiochi/the_legend_of_zelda/the-legend-of-zelda-breath-of-the-wild-2.png'),(64,'../immagini_progetto/videogiochi/the_legend_of_zelda/the-legend-of-zelda-breath-of-the-wild-3.jpg'),(65,'../immagini_progetto/videogiochi/the_legend_of_zelda/the-legend-of-zelda-breath-of-the-wild-4.jpg'),(66,'../immagini_progetto/videogiochi/the_legend_of_zelda/the-legend-of-zelda-breath-of-the-wild-5.jpg'),(67,'../immagini_progetto/videogiochi/watchdog_legion/watchdogs-legion-1.jpg'),(68,'../immagini_progetto/videogiochi/watchdog_legion/watchdogs-legion-2.jpg'),(69,'../immagini_progetto/videogiochi/watchdog_legion/watchdogs-legion-3.jpg'),(70,'../immagini_progetto/videogiochi/watchdog_legion/watchdogs-legion-4.jpg'),(71,'../immagini_progetto/videogiochi/watchdog_legion/watchdogs-legion-5.jpg');
/*!40000 ALTER TABLE `immagine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notizia`
--

DROP TABLE IF EXISTS `notizia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notizia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titolo` varchar(200) DEFAULT NULL,
  `contenuto` text,
  `datapubblicazione` date DEFAULT NULL,
  `bozza` tinyint(1) DEFAULT NULL,
  `idimmagine` int DEFAULT NULL,
  `idutente` int DEFAULT NULL,
  `idvideogioco` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idimmagine` (`idimmagine`),
  KEY `idutente` (`idutente`),
  KEY `idvideogioco` (`idvideogioco`),
  CONSTRAINT `notizia_ibfk_1` FOREIGN KEY (`idimmagine`) REFERENCES `immagine` (`id`),
  CONSTRAINT `notizia_ibfk_2` FOREIGN KEY (`idutente`) REFERENCES `utente` (`id`),
  CONSTRAINT `notizia_ibfk_3` FOREIGN KEY (`idvideogioco`) REFERENCES `videogioco` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notizia`
--

LOCK TABLES `notizia` WRITE;
/*!40000 ALTER TABLE `notizia` DISABLE KEYS */;
INSERT INTO `notizia` VALUES (1,'Cyberpunk 2077: una grande patch da 38GB compare su Epic Games Store','Sembra proprio che CD Projekt RED si stia preparando \na lanciare la prossima grande patch di Cyberpunk 2077.\nRisolto il disguido legato alla patch più grande di sempre, \nla casa di sviluppo polacca potrebbe introdurre delle novità importanti per il suo open world Sci-Fi.','2021-07-13',0,17,2,1),(2,'Watch Dogs Legion: il DLC Bloodline nasconde un easter egg di P.T. di Hideo Kojima','P.T., letteralmente Playable Teaser, è la demo di quel Silent Hills che Hideo Kojima non è mai riuscito a realizzare. \nNonostante siano ormai passati diversi anni, la demo dell\'horror game (ormai non più disponibile sul PSN)\ncontinua inesorabilmente ad influenzare giocatori e sviluppatori di tutto il mondo.','2021-07-09',1,68,3,2),(3,'Little Nightmares: 2 milioni di copie vendute, presto gratis con Stadia Pro','Bandai Namco Entertainment ha appena annunciato che Little Nightmares ha raggiunto le due milioni \ndi copie vendute in tutto il mondo su PlayStation 4, \nXbox One, PC e Nintendo Switch, piattaforme sulle quali è attualmente disponibile.','2020-05-26',0,37,2,3),(4,'Monster Hunter Rise riceve la nuova Missione Evento: ecco i bonus e le sfide da completare','Il supporto post-lancio di Monster Hunter Rise prosegue con la nuova Missione Evento organizzata da\nCapcom per spronare tutti gli appassionati dell\'ultimo kolossal action ruolistico\nsu Switch a proseguire la propria avventura.','2021-07-10',0,42,3,4);
/*!40000 ALTER TABLE `notizia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piattaforma`
--

DROP TABLE IF EXISTS `piattaforma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `piattaforma` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `produttore` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piattaforma`
--

LOCK TABLES `piattaforma` WRITE;
/*!40000 ALTER TABLE `piattaforma` DISABLE KEYS */;
INSERT INTO `piattaforma` VALUES (1,'Xbox series x','Microsoft'),(2,'Nintendo Switch ','Nintendo'),(3,'PlayStation 5','Sony Interactive Entertainment');
/*!40000 ALTER TABLE `piattaforma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recensione`
--

DROP TABLE IF EXISTS `recensione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recensione` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titolo` varchar(200) DEFAULT NULL,
  `contenuto` text,
  `valutazione` double DEFAULT NULL,
  `datapubblicazione` date DEFAULT NULL,
  `approvato` tinyint(1) DEFAULT NULL,
  `bozza` tinyint(1) DEFAULT NULL,
  `idimmagine` int DEFAULT NULL,
  `idutente` int DEFAULT NULL,
  `idvideogioco` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idimmagine` (`idimmagine`),
  KEY `idutente` (`idutente`),
  KEY `idvideogioco` (`idvideogioco`),
  CONSTRAINT `recensione_ibfk_1` FOREIGN KEY (`idimmagine`) REFERENCES `immagine` (`id`),
  CONSTRAINT `recensione_ibfk_2` FOREIGN KEY (`idutente`) REFERENCES `utente` (`id`),
  CONSTRAINT `recensione_ibfk_3` FOREIGN KEY (`idvideogioco`) REFERENCES `videogioco` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recensione`
--

LOCK TABLES `recensione` WRITE;
/*!40000 ALTER TABLE `recensione` DISABLE KEYS */;
INSERT INTO `recensione` VALUES (1,'Cyberpunk 2077 è pronto per essere quello che ha sempre promesso di essere?','Dopo 7 mesi di sofferenze costellati da \'Una serie di sfortunati eventi\' che a Lemony Snicket fa quasi un baffo, \nsembra che finalmente CD Projekt RED sia pronta a offrire al pubblico Cyberpunk 2077. Nono quella roba claudicante pubblicata su Xbox One e PlayStation 4, ma una versione riveduta, \ncorretta e migliorata di quanto abbiamo potuto giocare su PC (e Stadia) quasi sin dall\'inizio. Il grande gioco di ruolo futuristico sognato, atteso e discusso per anni.\nIl gioco che \'toglieva il fiato\' presentato da Keanu Reeves sul palco dell\'E3, il degno erede di quel The Witcher 3 \nche aveva catapultato il nome e le quotazioni dello studio polacco nell\'Olimpo dei videogiochi e nel cuore dei videogiocatori. \nSi tratta di quel gioco complesso e discusso, con tanti argomenti scottanti, basato su di un gioco da tavolo altrettanto visionario. \nUn mondo nel quale perdersi, giocare di ruolo, innamorarsi dei personaggi incontrati, affezionarsi al proprio alter ego, \nsperimentare i propri limiti ed esplorare il folle mondo della braindance.\nUn mondo vivo e pulsante che è stato nascosto sotto una scorza tecnicamente primitiva e una comunicazione al limite del truffaldino. \nEntrambe cose che però sono state prese di petto da CD Projekt RED, coi dovuti mea culpa e con un rimboccamento di maniche che ha portato a diverse patch correttive che hanno ripreso il gioco per le orecchie, \ntanto che sia Microsoft sia Sony lo hanno \'riammesso\' nei ranghi e non lo trattano più come materiale scottante. \nUna cosa che da una parte ha consentito al gioco di ri-balzare in testa alle classifiche di vendita PlayStation 4 e dall\'altra allo studio di rialzare la testa e promettere il più grande aggiornamento di sempre.\nI 38 giga che sono al vaglio dell\'Epic Games Store promettono mari e monti, nuovi contenuti in grado di dare maggiore vivacità alla città, nuove storie da raccontare e magari gli assets di nuova generazione per PS5 e Xbox Series X|S.\nSe questo arriverà, secondo voi Cyberpunk 2077 ha ancora le carte in tavola per mantenere le promesse fatte?',4,'2020-10-05',1,1,16,1,1),(2,'Watch Dogs: Legion - Bloodline - La recensione','Watch Dogs Legion è un prodotto divertente, su questo è giusto essere chiari fin da subito. \nNelle 40 ore di gioco passate tra attività principali e buona parte, ma non tutte, le attività secondarie, \nnon c\'è stata una volta in cui abbiamo sentito il peso della ripetizione. \nIl problema non è nella visione generale, effettivamente vincente, ma in un\'esecuzione che si rivela essere molto presto piuttosto ondivaga, insicura. \nQui, ogni inizio è diverso: finita l\'introduzione, il gioco ci darà modo di scegliere con chi cominciare tra quindici personaggi ad ogni nuova partita differenti. \nA seconda dell\'edizione del gioco acquistata, ci verranno anche forniti degli agenti predeterminati dalle caratteristiche superiori alla media, \nper un extra carino ma di cui si può comunque fare a meno (anzi è meglio partire quasi da zero, se volete un parere personale). \nDopo un altro paio di missioni introduttive, potremo iniziare ad arruolare nuovi agenti per rimpolpare le file del nostro gruppo di rivoluzionari informatici. \nWatch Dogs Legion è un gioco che funziona, e che saprà intrattenervi onestamente per molte ore. \nL\'idea di rendere ogni passante un possibile protagonista è davvero straordinaria ma necessiterebbe di diverse migliorie. \nÈ davvero un peccato che l\'albero delle abilità sbloccabili sia così poco fantasioso e vada in alcuni casi a rompere l\'unicità dei personaggi, \ncome lo è stato vedere gli approcci a nostra disposizione ridursi di quantità, e soprattutto in varietà, rispetto al passato. \nAlcune missioni principali sono molto ben congegnate, ma in Watch Dogs 2 si sono viste situazioni molto più complesse di quelle proposte in Watch Dogs Legion. \nFortunatamente, questo gioco potrebbe davvero rappresentare un nuovo inizio, un punto di ripartenza per costruire il primo vero capolavoro di una serie \nche solo oggi sembra aver trovato una sua identità ben precisa.',3,'2020-11-16',0,0,67,2,1),(3,'Little Nightmares 2 Recensione: una notte ancora più scura','There are many variations of passages of Lorem Ipsum available, \nbut the majority have suffered alteration in some form, by injected humour, \nor randomised words which don\'t look even slightly believable. \nIf you are going to use a passage of Lorem Ipsum, \nyou need to be sure there isn\'t anything embarrassing hidden in the middle of text. \nAll the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. \nIt uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, \ninjected humour, or non-characteristic words etc.',4,'2021-01-09',1,1,36,2,3),(4,'Monster Hunter Rise | Recensione','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, \nmaking it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, \nlooked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, \ndiscovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \'de Finibus Bonorum et Malorum\' (The Extremes of Good and Evil) by Cicero, \nwritten in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \'Lorem ipsum dolor sit amet..\', \ncomes from a line in section 1.10.32.\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. \nSections 1.10.32 and 1.10.33 from \'de Finibus Bonorum et Malorum\' by Cicero are also reproduced in their exact original form, \naccompanied by English versions from the 1914 translation by H. Rackham.',2,'2021-04-24',0,0,41,1,4);
/*!40000 ALTER TABLE `recensione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utente`
--

DROP TABLE IF EXISTS `utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utente` (
  `id` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ruolo` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_gxvq4mjswnupehxnp35vawmo2` (`email`),
  UNIQUE KEY `UK_2vq82crxh3p7upassu0k1kmte` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utente`
--

LOCK TABLES `utente` WRITE;
/*!40000 ALTER TABLE `utente` DISABLE KEYS */;
INSERT INTO `utente` VALUES (1,'emmanuele@gmail.com','$2a$10$skA6rl/Iqivai9u.IiljXuAk4apA8elxQnYPi.gpLJcmgRmtHPv8S','USER','Manu'),(2,'marco@gmail.com','$2a$10$BRbiX.sA5BBP1chPBQwKpOu81RP/CwuMuJi89/VaQ1bQsZ6dPnkKu','USER','Setheuniverse'),(3,'francesco@gmail.com','$2a$10$WegyvmMFA/xM0zSjeC1b/ucGT6ULrgjqqQqEo4njZIwyTcQpnKPJe','USER','Frankie'),(4,'daniele@gmail.com','$2a$10$u8mnTAL5gqpCvlF1Lo1sM.M0BAsHkbTwTwkaObBNUTEfBkPwAXhEq','USER','JesterJes'),(5,'nicola@gmail.com','$2a$10$mHqBbNXzXHmV5Fl3ViUtOu4YaPpZD3ANbhaTzp2VPMrhP2hCHaAg.','USER','Nico'),(6,'stefano@gmail.com','$2a$10$8CjYyO0toF3Z.gafQV8.Den.57PdeAEumOXjLFcx4r/d93rRbfbXO','ADMIN','Ste_py');
/*!40000 ALTER TABLE `utente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videogioco`
--

DROP TABLE IF EXISTS `videogioco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videogioco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titolo` varchar(200) DEFAULT NULL,
  `genere` varchar(200) DEFAULT NULL,
  `datauscita` date DEFAULT NULL,
  `casaproduttrice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videogioco`
--

LOCK TABLES `videogioco` WRITE;
/*!40000 ALTER TABLE `videogioco` DISABLE KEYS */;
INSERT INTO `videogioco` VALUES (1,'Cyberpunk 2077','Open World','2020-09-17','CD Projekt RED'),(2,'Watch Dogs: Legion','Action-Adventure','2020-10-29','Ubisoft Toronto'),(3,'Little Nightmares','Survival horror','2020-12-09','Tarsier Studios'),(4,'Monster Hunter Rise','Action RPG','2021-03-26','Capcom'),(5,'Animal Crossing','Life simulator','2020-03-20','NintendoEPD'),(6,'Assasin\'s Creed Valhalla','Action RPG','2020-11-12','Ubisoft Montreal'),(7,'Crash Bandicoot','Platform','2007-06-22','Naughty Dog'),(8,'Fallout 76','Action RPG','2018-11-14','Bethesda'),(9,'Farcry 5','Stealth','2018-03-27','Ubisoft Montreal & Toronto'),(10,'Gran Turismo 6','Simulatore','2013-12-06','Polyphony Digital'),(11,'Ratchet and Clank \'Rift Apart\'','TPS','2021-06-11','Insomniac Games'),(12,'Super Mario Bros','Platform','1987-05-15','Nintendo'),(13,'The Last of Us 2','Survival horror','2020-06-19','Naughty Dog'),(14,'The Legend of Zelda \'Breath of the Wild\'','Action adventure','2017-03-03','NintendoEPD');
/*!40000 ALTER TABLE `videogioco` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-21 11:59:07
